void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t Counter, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v393 = *MEMORY[0x1E69E9840];
  v306 = type metadata accessor for OSSignpostID();
  v303 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v301 = &v285 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v285 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v304 = (&v285 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v297 = &v285 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v305 = &v285 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v296 = &v285 - v21;
  if (*(a4 + 128))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(Counter + 240) = 1;
  }

  else if (*(Counter + 240) != 1)
  {
    goto LABEL_123;
  }

  v25 = &v314;
  v26 = *(Counter + 8);
  v27 = *(Counter + 192);
  v376 = *(Counter + 176);
  v377 = v27;
  v28 = *(Counter + 224);
  v378 = *(Counter + 208);
  v379 = v28;
  v29 = *(Counter + 128);
  v372 = *(Counter + 112);
  v373 = v29;
  v30 = *(Counter + 160);
  v374 = *(Counter + 144);
  v375 = v30;
  v31 = *(Counter + 64);
  v368 = *(Counter + 48);
  v369 = v31;
  v32 = *(Counter + 96);
  v370 = *(Counter + 80);
  v371 = v32;
  v33 = *(Counter + 32);
  v366 = *(Counter + 16);
  v367 = v33;
  CornerMaskingConfiguration.animatableData.getter(&v344);
  if (*(a4 + 120))
  {
    goto LABEL_122;
  }

  v5 = *(a4 + 16);
  v34 = *(a4 + 72);
  v382 = *(a4 + 56);
  v383 = v34;
  v35 = *(a4 + 104);
  v384 = *(a4 + 88);
  v385 = v35;
  v36 = *(a4 + 40);
  v380 = *(a4 + 24);
  v381 = v36;
  if (v26 == v5)
  {
    v350[2] = v346;
    v350[3] = v347;
    v350[4] = v348;
    v350[5] = v349;
    v350[0] = v344;
    v350[1] = v345;
    v37 = *(a4 + 72);
    v351[2] = *(a4 + 56);
    v351[3] = v37;
    v38 = *(a4 + 104);
    v351[4] = *(a4 + 88);
    v351[5] = v38;
    v39 = *(a4 + 40);
    v351[0] = *(a4 + 24);
    v351[1] = v39;
    if (_s7SwiftUI16AnimatableValuesV2eeoiySbACyxxQp_QPG_AEtFZ12CoreGraphics7CGFloatV_A11HQP_Tt1g5(v350, v351))
    {
      goto LABEL_122;
    }
  }

  v307 = *&a2;
  v285 = v13;
  v294 = Counter;
  AGGraphClearUpdate();
  v40 = *(a4 + 96);
  v41 = *(a4 + 112);
  v42 = *(a4 + 64);
  v364[5] = *(a4 + 80);
  v364[6] = v40;
  v365[0] = v41;
  *(v365 + 12) = *(a4 + 124);
  v43 = *(a4 + 48);
  v364[2] = *(a4 + 32);
  v364[3] = v43;
  v364[4] = v42;
  v44 = *(a4 + 16);
  v364[0] = *a4;
  v364[1] = v44;
  v4 = lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v364, &v357, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
  v45 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v364, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v288 = v45;
  v46 = Transaction.effectiveAnimation.getter(v45);
  v287 = a3;
  v289 = v46;
  if (v46)
  {
    v295 = a4;
  }

  else
  {
    if (v307 == 0.0)
    {

      Counter = v294;
      v25 = &v314;
      goto LABEL_122;
    }

    v295 = a4;
  }

  v340 = v346;
  v341 = v347;
  v342 = v348;
  v343 = v349;
  v338 = v344;
  v339 = v345;
  v323 = v347;
  v324 = v348;
  v325 = v349;
  v321 = v345;
  v322 = v346;
  v316 = v382;
  v317 = v383;
  v318 = v384;
  LODWORD(v292) = DWORD1(v364[0]);
  v293 = *&v365[1];
  v47 = v26 - v5;
  v319 = v385;
  v320 = v344;
  v314 = v380;
  v315 = v381;
  v48 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v291 = &v285;
  v49 = MEMORY[0x1E69E7DE0];
  v50 = *(MEMORY[0x1E69E7DE0] - 8);
  v51 = v50[8];
  v52 = MEMORY[0x1EEE9AC00](v48);
  v307 = v51;
  v53 = (*&v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = *(v50 + 2);
  v55 = v54(&v285 - v53, &v320, v49, v52);
  v290 = &v285;
  v56 = MEMORY[0x1EEE9AC00](v55);
  v54(&v285 - v53, &v314, v49, v56);
  v300 = *(v48 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v57 = *(v50 + 1);
  v57(&v285 - v53, v49);
  v58 = (v57)(&v285 - v53, v49);
  v291 = &v285;
  v356[0] = &v326;
  v59 = MEMORY[0x1EEE9AC00](v58);
  v299 = v53;
  v60 = v54(&v285 - v53, (&v320 + 8), v49, v59);
  v290 = &v285;
  v61 = MEMORY[0x1EEE9AC00](v60);
  v302 = *&v54;
  v54(&v285 - v53, (&v314 + 8), v49, v61);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v57(&v285 - v53, v49);
  v62 = (v57)(&v285 - v53, v49);
  v291 = &v285;
  v356[1] = &v327;
  v286 = &v328;
  v63 = MEMORY[0x1EEE9AC00](v62);
  v64 = v299;
  v65 = v54(&v285 - v299, &v321, v49, v63);
  v290 = &v285;
  v66 = MEMORY[0x1EEE9AC00](v65);
  v54(&v285 - v64, &v315, v49, v66);
  v67 = v286;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v57(&v285 - v64, v49);
  v68 = (v57)(&v285 - v64, v49);
  v291 = &v285;
  v356[2] = v67;
  v286 = &v329;
  v69 = MEMORY[0x1EEE9AC00](v68);
  v70 = v299;
  v71 = v302;
  v72 = (*&v302)(&v285 - v299, &v321 + 8, v49, v69);
  v290 = &v285;
  v73 = MEMORY[0x1EEE9AC00](v72);
  (*&v71)(&v285 - v70, &v315 + 8, v49, v73);
  v74 = v286;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v57(&v285 - v70, v49);
  v75 = (v57)(&v285 - v70, v49);
  v291 = &v285;
  v356[3] = v74;
  v76 = MEMORY[0x1EEE9AC00](v75);
  v77 = v299;
  v78 = v302;
  v79 = (*&v302)(&v285 - v299, &v322, v49, v76);
  v290 = &v285;
  v80 = MEMORY[0x1EEE9AC00](v79);
  (*&v78)(&v285 - v77, &v316, v49, v80);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v298 = v57;
  v57(&v285 - v77, v49);
  v81 = (v57)(&v285 - v77, v49);
  v291 = &v285;
  v356[4] = &v330;
  v286 = &v331;
  v82 = MEMORY[0x1EEE9AC00](v81);
  v83 = v299;
  v84 = v302;
  v85 = (*&v302)(&v285 - v299, &v322 + 8, v49, v82);
  v290 = &v285;
  v86 = MEMORY[0x1EEE9AC00](v85);
  (*&v84)(&v285 - v83, &v316 + 8, v49, v86);
  v87 = v286;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v88 = v298;
  v298(&v285 - v83, v49);
  v89 = v88(&v285 - v83, v49);
  v291 = &v285;
  v356[5] = v87;
  v90 = MEMORY[0x1EEE9AC00](v89);
  v91 = v299;
  v92 = v302;
  v93 = (*&v302)(&v285 - v299, &v323, v49, v90);
  v290 = &v285;
  v94 = MEMORY[0x1EEE9AC00](v93);
  (*&v92)(&v285 - v91, &v317, v49, v94);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v95 = v298;
  v298(&v285 - v91, v49);
  v96 = v95(&v285 - v91, v49);
  v291 = &v285;
  v356[6] = &v332;
  v97 = MEMORY[0x1EEE9AC00](v96);
  v98 = v302;
  v99 = (*&v302)(&v285 - v91, &v323 + 8, v49, v97);
  v290 = &v285;
  v100 = MEMORY[0x1EEE9AC00](v99);
  (*&v98)(&v285 - v91, &v317 + 8, v49, v100);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v95(&v285 - v91, v49);
  v101 = v95(&v285 - v91, v49);
  v291 = &v285;
  v356[7] = &v333;
  v286 = &v334;
  v102 = MEMORY[0x1EEE9AC00](v101);
  v103 = &v285 - v91;
  v104 = v91;
  v105 = &v285 - v91;
  v106 = v302;
  v107 = (*&v302)(v105, &v324, v49, v102);
  v290 = &v285;
  v108 = MEMORY[0x1EEE9AC00](v107);
  (*&v106)(&v285 - v104, &v318, v49, v108);
  v109 = v286;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v110 = &v285 - v104;
  v111 = v298;
  v298(v110, v49);
  v112 = v111(v103, v49);
  v291 = &v285;
  v356[8] = v109;
  v113 = MEMORY[0x1EEE9AC00](v112);
  v114 = v299;
  v115 = (*&v106)(&v285 - v299, &v324 + 8, v49, v113);
  v290 = &v285;
  v116 = MEMORY[0x1EEE9AC00](v115);
  (*&v106)(&v285 - v114, &v318 + 8, v49, v116);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v117 = v298;
  v298(&v285 - v114, v49);
  v118 = v117(&v285 - v114, v49);
  v291 = &v285;
  v356[9] = &v335;
  v119 = MEMORY[0x1EEE9AC00](v118);
  v120 = v299;
  v121 = v302;
  v122 = (*&v302)(&v285 - v299, &v325, v49, v119);
  v290 = &v285;
  v123 = MEMORY[0x1EEE9AC00](v122);
  (*&v121)(&v285 - v120, &v319, v49, v123);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v124 = v298;
  v298(&v285 - v120, v49);
  v125 = v124(&v285 - v120, v49);
  v291 = &v285;
  v356[10] = &v336;
  v126 = MEMORY[0x1EEE9AC00](v125);
  v127 = v302;
  v128 = (*&v302)(&v285 - v120, &v325 + 8, v49, v126);
  v290 = &v285;
  v129 = MEMORY[0x1EEE9AC00](v128);
  (*&v127)(&v285 - v120, &v319 + 8, v49, v129);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v124(&v285 - v120, v49);
  v130 = v49;
  v131 = v293;
  v124(&v285 - v120, v130);
  v356[11] = &v337;
  _s7SwiftUI16AnimatableValuesVyACyxxQp_QPGxxQpcfC12CoreGraphics7CGFloatV_A11GQP_Tt1g5(v356, &v338);
  v24 = *AGGraphGetValue();
  if (!v131)
  {
    v357 = v47;
    v360 = v340;
    v361 = v341;
    v362 = v342;
    v363 = v343;
    v358 = v338;
    v359 = v339;
    v313 = COERCE_DOUBLE(&type metadata for PartialContainerRelativeShape);
    type metadata accessor for PartialContainerRelativeShape.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>.Type, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
    v151 = swift_dynamicCast();
    if (v151)
    {
      v152 = v312[0];
    }

    else
    {
      v152 = 0;
    }

    if (v151)
    {
      v153 = v312[1];
    }

    else
    {
      v153 = 0;
    }

    type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>();
    swift_allocObject();
    a4 = v288;

    v154 = v289;

    v293 = specialized AnimatorState.init(animation:interval:at:in:finishingDefinition:)(v155, &v357, a4, v152, v153, v24);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v157 = CurrentAttribute;
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v158 = 0;
    }

    else
    {
      v158 = CurrentAttribute;
    }

    (*(*v154 + 96))(&v352);
    v159 = *&v352;
    v160 = v353;
    v25 = *(&v354 + 1);
    v161 = v354;
    v162 = v355;
    v310 = NAN;
    *&v311 = NAN;
    v308 = 0x7FF8000000000000;
    v309 = 1.0;
    v386 = v352;
    v387 = v353;
    v388 = v354;
    LOBYTE(v389) = v355;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v386, &v311, &v310, &v309, &v308);
    v163 = v310;
    v5 = *&v311;
    v164 = v308;
    v165 = v309;
    if (one-time initialization token for enabledCategories != -1)
    {
      v307 = v310;
      v302 = v309;
      v304 = v308;
      swift_once();
      v164 = v304;
      v165 = v302;
      v163 = v307;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_193;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v166 = v158;
      v167 = v161;
      v168 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v169 = v157 == a4;
        v304 = v25;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        LODWORD(v307) = a4;
        v170 = v162;
        v171 = *(v168 + 16);
        LODWORD(v386) = v166;
        BYTE4(v386) = v169;
        *&v387 = &type metadata for PartialContainerRelativeShape;
        *(&v387 + 1) = v5;
        *&v388 = v163;
        *(&v388 + 1) = v165;
        *&v389 = v164;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v302 = v172;

        v173 = v171;
        AGGraphAddTraceEvent();
        v174 = v170;
        LODWORD(a4) = LODWORD(v307);
        outlined consume of Animation.Function(v159, v160, *(&v160 + 1), v167, v304, v174);

        goto LABEL_85;
      }

      v180 = v159;
      v182 = *(&v160 + 1);
      v181 = v160;
      v183 = v167;
    }

    else
    {
      v180 = v159;
      v182 = *(&v160 + 1);
      v181 = v160;
      v183 = v161;
    }

    outlined consume of Animation.Function(v180, v181, v182, v183, v25, v162);
LABEL_85:
    v213 = one-time initialization token for animationState;

    v25 = &v314;
    if (v213 == -1)
    {
LABEL_86:
      v185 = *(&static Signpost.animationState + 1);
      v184 = *&static Signpost.animationState;
      v4 = word_1ED5283E8;
      LOBYTE(Counter) = HIBYTE(word_1ED5283E8);
      v214 = byte_1ED5283EA;
      LODWORD(v137) = static os_signpost_type_t.begin.getter();
      v386 = v184;
      *&v387 = v185;
      BYTE8(v387) = v4;
      BYTE9(v387) = Counter;
      BYTE10(v387) = v214;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v225 = v293;

        goto LABEL_93;
      }

      v215 = one-time initialization token for _signpostLog;

      if (v215 != -1)
      {
        goto LABEL_196;
      }

      goto LABEL_88;
    }

LABEL_193:
    swift_once();
    goto LABEL_86;
  }

  v386 = v47;
  v389 = v340;
  v390 = v341;
  v391 = v342;
  v392 = v343;
  v387 = v338;
  v388 = v339;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v364, &v357, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v357) = 0;
  v132 = v289;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v289, &v386, v288, v24);
  v133 = AGGraphGetCurrentAttribute();
  LODWORD(v134) = v133;
  LODWORD(a4) = *MEMORY[0x1E698D3F8];
  if (v133 == *MEMORY[0x1E698D3F8])
  {
    LODWORD(v135) = 0;
  }

  else
  {
    LODWORD(v135) = v133;
  }

  (*(*v132 + 96))(&v352);
  v4 = *&v352;
  v136 = *(&v353 + 1);
  v137 = v353;
  v138 = *(&v354 + 1);
  Counter = v354;
  LOBYTE(v132) = v355;
  v313 = NAN;
  *&v311 = 1.0;
  v312[0] = 0x7FF8000000000000;
  v310 = NAN;
  v357 = v352;
  v358 = v353;
  v359 = v354;
  LOBYTE(v360) = v355;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v357, v312, &v313, &v311, &v310);
  v139 = v311;
  v5 = *v312;
  v140 = v313;
  v141 = v310;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_189;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v142 = v135;
        v143 = v138;
        v144 = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v145 = v134 == a4;
          v302 = *(static CustomEventTrace.recorder + 24);
          *(*&v302 + 4) = 1602;
          LODWORD(v307) = a4;
          v146 = v132;
          v147 = *(v144 + 16);
          LODWORD(v357) = v142;
          BYTE4(v357) = v145;
          *&v358 = &type metadata for PartialContainerRelativeShape;
          *(&v358 + 1) = v5;
          *&v359 = v140;
          *(&v359 + 1) = v139;
          *&v360 = v141;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v301 = v148;

          v149 = v147;
          AGGraphAddTraceEvent();
          v150 = v146;
          LODWORD(a4) = LODWORD(v307);
          outlined consume of Animation.Function(v4, v137, v136, Counter, v143, v150);

          goto LABEL_45;
        }

        v175 = v4;
        v176 = v137;
        v177 = v136;
        v178 = Counter;
        v179 = v143;
      }

      else
      {
        v175 = v4;
        v176 = v137;
        v177 = v136;
        v178 = Counter;
        v179 = v138;
      }

      outlined consume of Animation.Function(v175, v176, v177, v178, v179, v132);
LABEL_45:
      outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v364, &v357, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
      Counter = v294;
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_191;
    }

    __break(1u);
LABEL_191:
    swift_once();
LABEL_46:
    v184 = *(&static Signpost.animationState + 1);
    v185 = *&static Signpost.animationState;
    v4 = word_1ED5283E8;
    v186 = HIBYTE(word_1ED5283E8);
    v187 = byte_1ED5283EA;
    v188 = static os_signpost_type_t.event.getter();
    v357 = v185;
    *&v358 = v184;
    BYTE8(v358) = v4;
    BYTE9(v358) = v186;
    BYTE10(v358) = v187;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v364, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v364, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
LABEL_82:
      a4 = v295;
      v25 = &v314;
      goto LABEL_121;
    }

    LODWORD(v307) = v188;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(v364, &v357, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v189 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v190 = COERCE_DOUBLE(swift_allocObject());
    *(v190 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == a4)
    {
      __break(1u);
    }

    else
    {
      v137 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v191 = MEMORY[0x1E69E6870];
      *(v190 + 56) = MEMORY[0x1E69E6810];
      *(v190 + 64) = v191;
      *(v190 + 32) = Counter;
      v192 = AGGraphGetCurrentAttribute();
      if (v192 != a4)
      {
        v193 = MEMORY[0x1E69E76D0];
        *(v190 + 96) = MEMORY[0x1E69E7668];
        *(v190 + 104) = v193;
        *(v190 + 72) = v192;
        *(v190 + 136) = MEMORY[0x1E69E6158];
        *(v190 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v190 + 112) = 0xD00000000000001DLL;
        *(v190 + 120) = 0x800000018DD78E50;
        if (v186)
        {
          LOBYTE(v310) = LOBYTE(v307);
          v311 = v190;
          v312[0] = &dword_18D018000;
          v313 = *&v189;
          v357 = v185;
          *&v358 = v184;
          BYTE8(v358) = v4;
          v352 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ updated");
          *&v353 = 39;
          BYTE8(v353) = 2;
          v194 = v297;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v364, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v364, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
          (*(v303 + 8))(v194, v306);
        }

        else
        {
          a4 = LOBYTE(v185);
          if (LOBYTE(v185) == 20)
          {
            v195 = 3;
          }

          else
          {
            v195 = 4;
          }

          Counter = bswap32(LOWORD(v185)) | (4 * HIWORD(LODWORD(v185)));
          LODWORD(v307) = LOBYTE(v307);
          v196 = (v303 + 16);
          v290 = *(v303 + 16);
          v197 = (v290)(v304, v297, v306);
          v198 = 0;
          LOBYTE(v352) = 1;
          v302 = *&v195;
          v291 = v196;
          v292 = a4;
          v299 = 16 * v195;
          v300 = (v196 - 1);
          v298 = (v190 + 32);
          v4 = v190;
          do
          {
            v301 = &v285;
            MEMORY[0x1EEE9AC00](v197);
            v201 = &v285 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
            v202 = v201 + 8;
            v203 = v302;
            v204 = v201 + 8;
            do
            {
              *(v204 - 1) = 0;
              *v204 = 0;
              v204 += 16;
              --*&v203;
            }

            while (v203 != 0.0);
            v137 = v298 + 40 * v198;
            v25 = *&v302;
            while (1)
            {
              v205 = *(v4 + 16);
              if (v198 == v205)
              {
                break;
              }

              if (v198 >= v205)
              {
                goto LABEL_180;
              }

              ++v198;
              outlined init with copy of AnyTrackedValue(v137, &v357);
              v206 = v359;
              LODWORD(a4) = v4;
              __swift_project_boxed_opaque_existential_1(&v357, v359);
              *(v202 - 1) = CVarArg.kdebugValue(_:)(Counter | LODWORD(v307), v206);
              *v202 = v207 & 1;
              v202 += 16;
              v199 = __swift_destroy_boxed_opaque_existential_1(&v357);
              v137 += 40;
              if (!--v25)
              {
                goto LABEL_66;
              }
            }

            LOBYTE(v352) = 0;
LABEL_66:
            a4 = v292;
            if (v292 == 20)
            {
              OSSignpostID.rawValue.getter();
            }

            kdebug_trace();
            if (v201[8] == 1)
            {
              kdebug_trace_string();
            }

            if (v201[24] == 1)
            {
              kdebug_trace_string();
            }

            if (v201[40] == 1)
            {
              kdebug_trace_string();
            }

            if (a4 != 20 && v201[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v208 = *v300;
            v209 = v304;
            v210 = v306;
            (*v300)(v304, v306);
            v211 = __swift_project_value_buffer(v210, static OSSignpostID.continuation);
            v197 = (v290)(v209, v211, v210);
          }

          while ((LOBYTE(v352) & 1) != 0);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v364, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v364, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
          v212 = v306;
          v208(v304, v306);
          v208(v297, v212);
        }

        Counter = v294;
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_196:
    swift_once();
LABEL_88:
    LODWORD(v307) = v137;
    v216 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v217 = COERCE_DOUBLE(swift_allocObject());
    *(v217 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == a4)
    {
      __break(1u);
LABEL_198:
      __break(1u);
    }

    v218 = AGGraphGetAttributeGraph();
    v219 = AGGraphGetCounter();

    v220 = MEMORY[0x1E69E6870];
    *(v217 + 56) = MEMORY[0x1E69E6810];
    *(v217 + 64) = v220;
    *(v217 + 32) = v219;
    v221 = AGGraphGetCurrentAttribute();
    if (v221 == a4)
    {
      goto LABEL_198;
    }

    v222 = *&v217;
    v223 = MEMORY[0x1E69E76D0];
    *(v217 + 96) = MEMORY[0x1E69E7668];
    *(v217 + 104) = v223;
    *(v217 + 72) = v221;
    *(v217 + 136) = MEMORY[0x1E69E6158];
    *(v217 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v217 + 112) = 0xD00000000000001DLL;
    *(v217 + 120) = 0x800000018DD78E50;
    v25 = &v314;
    if (Counter)
    {
      LOBYTE(v308) = LOBYTE(v307);
      v310 = v216;
      *&v311 = COERCE_DOUBLE(&dword_18D018000);
      v386 = v184;
      *&v387 = v185;
      BYTE8(v387) = v4;
      v352 = COERCE_DOUBLE("Animation: (%p) [%d] %{public}@ started");
      *&v353 = 39;
      BYTE8(v353) = 2;
      v309 = *&v217;
      v224 = v285;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v225 = v293;

      (*(v303 + 8))(v224, v306);

LABEL_93:
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v364, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
      Counter = v294;
      a4 = v295;
      *(v295 + 128) = v225;
    }

    else
    {
      v226 = LOBYTE(v184);
      v227 = LOBYTE(v184) == 20 ? 3 : 4;
      LODWORD(v198) = bswap32(LOWORD(v184)) | (4 * HIWORD(LODWORD(v184)));
      v4 = LOBYTE(v307);
      v228 = v303 + 16;
      v291 = *(v303 + 16);
      v229 = (v291)(v301, v285, v306);
      v202 = 0;
      LOBYTE(v352) = 1;
      v304 = v227;
      v292 = v228;
      v299 = 16 * v227;
      v300 = (v228 - 8);
      v307 = v222;
      v297 = v226;
      v298 = (*&v222 + 32);
      do
      {
        v302 = COERCE_DOUBLE(&v285);
        MEMORY[0x1EEE9AC00](v229);
        Counter = &v285 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = Counter + 8;
        v231 = v304;
        v232 = (Counter + 8);
        do
        {
          *(v232 - 1) = 0;
          *v232 = 0;
          v232 += 16;
          --v231;
        }

        while (v231);
        v137 = v298 + 40 * v202;
        v233 = v304;
        while (1)
        {
          v234 = *(*&v307 + 16);
          if (v202 == v234)
          {
            break;
          }

          if (v202 >= v234)
          {
            goto LABEL_181;
          }

          ++v202;
          outlined init with copy of AnyTrackedValue(v137, &v386);
          v25 = *(&v388 + 1);
          v235 = v388;
          __swift_project_boxed_opaque_existential_1(&v386, v388);
          *(a4 - 8) = CVarArg.kdebugValue(_:)(v198 | v4, v235);
          *a4 = v236 & 1;
          a4 += 16;
          v199 = __swift_destroy_boxed_opaque_existential_1(&v386);
          v137 += 40;
          if (!--v233)
          {
            goto LABEL_106;
          }
        }

        LOBYTE(v352) = 0;
LABEL_106:
        v237 = v297;
        if (v297 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v25 = &v314;
        if (*(Counter + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(Counter + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(Counter + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v237 != 20 && *(Counter + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v238 = v301;
        v239 = *v300;
        v240 = v306;
        (*v300)(v301, v306);
        v241 = __swift_project_value_buffer(v240, static OSSignpostID.continuation);
        v229 = (v291)(v238, v241, v240);
      }

      while ((LOBYTE(v352) & 1) != 0);
      v242 = v293;

      v243 = v306;
      v239(v301, v306);
      v239(v285, v243);

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v364, &lazy cache variable for type metadata for AnimatableAttributeHelper<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatableAttributeHelper);
      Counter = v294;
      a4 = v295;
      *(v295 + 128) = v242;
    }

LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v288);

    a3 = v287;
LABEL_122:
    *(a4 + 16) = v26;
    v244 = *(v25 + 432);
    *(a4 + 56) = *(v25 + 416);
    *(a4 + 72) = v244;
    v245 = *(v25 + 464);
    *(a4 + 88) = *(v25 + 448);
    *(a4 + 104) = v245;
    v246 = *(v25 + 400);
    *(a4 + 24) = *(v25 + 384);
    LOBYTE(v364[0]) = 0;
    *(a4 + 40) = v246;
    *(a4 + 120) = 0;
LABEL_123:
    v137 = *(a4 + 128);
    if (!v137)
    {
      return;
    }

    v295 = a4;
    v26 = *(Counter + 8);
    v247 = *(Counter + 192);
    v376 = *(Counter + 176);
    v377 = v247;
    v248 = *(Counter + 224);
    v378 = *(Counter + 208);
    v379 = v248;
    v249 = *(Counter + 128);
    v372 = *(Counter + 112);
    v373 = v249;
    v250 = *(Counter + 160);
    v374 = *(Counter + 144);
    v375 = v250;
    v251 = *(Counter + 64);
    v368 = *(Counter + 48);
    v369 = v251;
    v252 = *(Counter + 96);
    v370 = *(Counter + 80);
    v371 = v252;
    v253 = *(Counter + 32);
    v25 = v364;
    v366 = *(Counter + 16);
    v367 = v253;

    CornerMaskingConfiguration.animatableData.getter((v364 + 8));
    *v364 = v26;
    LOBYTE(v380) = 0;
    v254 = specialized AnimatorState.update(_:at:environment:)(v364, a3, v24);
    v199 = AGGraphGetCurrentAttribute();
    LODWORD(a4) = *MEMORY[0x1E698D3F8];
    if (v199 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v198) = 0;
    }

    else
    {
      LODWORD(v198) = v199;
    }

    v202 = &type metadata instantiation cache for TupleTypeDescription;
    if (v254)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_182;
      }

      goto LABEL_129;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_184;
    }

LABEL_142:
    v264 = *(v202 + 77);
    if (*(v264 + 16) >= 0x43uLL)
    {
      if (*(v264 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v380) = v198;
        BYTE4(v380) = v199 == a4;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_177;
    }

    __break(1u);
LABEL_186:
    swift_once();
LABEL_134:
    v132 = *(&static Signpost.animationState + 1);
    v135 = static Signpost.animationState;
    v136 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v257 = byte_1ED5283EA;
    v258 = static os_signpost_type_t.end.getter();
    v380 = __PAIR128__(v132, v135);
    LOBYTE(v381) = v136;
    BYTE1(v381) = Counter;
    BYTE2(v381) = v257;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_176;
    }

    LODWORD(v307) = v258;
    v259 = one-time initialization token for _signpostLog;

    if (v259 != -1)
    {
      swift_once();
    }

    v138 = _signpostLog;
    v293 = v137;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v134 = swift_allocObject();
    *(v134 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != a4)
    {
      break;
    }

    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    v307 = v140;
    v301 = v139;
    v302 = v141;
    swift_once();
    v139 = v301;
    v141 = v302;
    v140 = v307;
  }

  v137 = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v260 = MEMORY[0x1E69E6870];
  *(v134 + 56) = MEMORY[0x1E69E6810];
  *(v134 + 64) = v260;
  *(v134 + 32) = v4;
  v261 = AGGraphGetCurrentAttribute();
  if (v261 == a4)
  {
    goto LABEL_188;
  }

  v4 = v134;
  v262 = MEMORY[0x1E69E76D0];
  *(v134 + 96) = MEMORY[0x1E69E7668];
  *(v134 + 104) = v262;
  *(v134 + 72) = v261;
  *(v134 + 136) = MEMORY[0x1E69E6158];
  *(v134 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(v134 + 112) = 0xD00000000000001DLL;
  *(v134 + 120) = 0x800000018DD78E50;
  if (Counter)
  {
    LOBYTE(v314) = LOBYTE(v307);
    v356[0] = &dword_18D018000;
    v326 = v138;
    *&v380 = v135;
    *(&v380 + 1) = v132;
    LOBYTE(v381) = v136;
    *&v338 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v338 + 1) = 37;
    LOBYTE(v339) = 2;
    *&v320 = v134;
    v263 = v296;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v303 + 8))(v263, v306);
    goto LABEL_175;
  }

  v25 = v135;
  if (v135 == 20)
  {
    v265 = 3;
  }

  else
  {
    v265 = 4;
  }

  LODWORD(v198) = bswap32(v135) | (4 * WORD1(v135));
  LODWORD(v307) = LOBYTE(v307);
  v266 = v303 + 16;
  v297 = *(v303 + 16);
  v267 = (v297)(v305, v296, v306);
  v202 = 0;
  LOBYTE(v338) = 1;
  v303 = v266;
  v301 = (16 * v265);
  *&v302 = v266 - 8;
  v299 = v25;
  v300 = (v4 + 32);
  v298 = v265;
  do
  {
    v304 = &v285;
    MEMORY[0x1EEE9AC00](v267);
    Counter = &v285 - ((v268 + 15) & 0xFFFFFFFFFFFFFFF0);
    a4 = Counter + 8;
    v269 = v265;
    v270 = (Counter + 8);
    do
    {
      *(v270 - 1) = 0;
      *v270 = 0;
      v270 += 16;
      --v269;
    }

    while (v269);
    v137 = &v300[5 * v202];
    while (1)
    {
      v271 = *(v4 + 16);
      if (v202 == v271)
      {
        break;
      }

      if (v202 >= v271)
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        v283 = v199;
        swift_once();
        v199 = v283;
LABEL_129:
        v255 = *(v202 + 77);
        if (*(v255 + 16) >= 0x43uLL)
        {
          if (*(v255 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v380) = v198;
            BYTE4(v380) = v199 == a4;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v294 = Counter;
          v256 = one-time initialization token for animationState;

          if (v256 != -1)
          {
            goto LABEL_186;
          }

          goto LABEL_134;
        }

        __break(1u);
LABEL_184:
        v284 = v199;
        swift_once();
        v199 = v284;
        goto LABEL_142;
      }

      ++v202;
      outlined init with copy of AnyTrackedValue(v137, &v380);
      v272 = *(&v381 + 1);
      v25 = v4;
      __swift_project_boxed_opaque_existential_1(&v380, *(&v381 + 1));
      *(a4 - 8) = CVarArg.kdebugValue(_:)(v198 | LODWORD(v307), v272);
      *a4 = v273 & 1;
      a4 += 16;
      v199 = __swift_destroy_boxed_opaque_existential_1(&v380);
      v137 += 40;
      if (!--v265)
      {
        goto LABEL_160;
      }
    }

    LOBYTE(v338) = 0;
LABEL_160:
    v25 = v299;
    if (v299 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    v265 = v298;
    if (*(Counter + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(Counter + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(Counter + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v25 != 20 && *(Counter + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v274 = **&v302;
    v276 = v305;
    v275 = v306;
    (**&v302)(v305, v306);
    v277 = __swift_project_value_buffer(v275, static OSSignpostID.continuation);
    v267 = (v297)(v276, v277, v275);
  }

  while ((v338 & 1) != 0);

  v278 = v306;
  v274(v305, v306);
  v274(v296, v278);
LABEL_175:

LABEL_176:
  specialized AnimatorState.removeListeners()();

  Counter = v294;
  *(v295 + 128) = 0;
  v25 = v364;
LABEL_177:
  v279 = *v364;
  v280 = *(v25 + 56);
  v382 = *(v25 + 40);
  v383 = v280;
  v281 = *(v25 + 88);
  v384 = *(v25 + 72);
  v385 = v281;
  v282 = *(v25 + 24);
  v380 = *(v25 + 8);
  v381 = v282;
  *(Counter + 8) = *&v364[0];
  *Counter = v279 == 1.0;
  CornerMaskingConfiguration.animatableData.setter(&v380);

  *(Counter + 240) = 1;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, char *Counter)
{
  v209 = *MEMORY[0x1E69E9840];
  v191 = type metadata accessor for OSSignpostID();
  v188 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v14 = (&v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v168 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v168 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v168 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v190 = &v168 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v181 = &v168 - v27;
  if (*(Counter + 7))
  {
    Value = AGGraphGetValue();
    if (v29)
    {
      v30 = *Value;
    }

    else
    {
      v30 = -INFINITY;
    }
  }

  else
  {
    v30 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 64) = 1;
  }

  else if (*(a1 + 64) != 1)
  {
    goto LABEL_124;
  }

  *&v32 = *(a1 + 16);
  v34 = *(a1 + 24);
  *&v33 = *(a1 + 56);
  if (Counter[48])
  {
    goto LABEL_123;
  }

  v35 = *(Counter + 2);
  v36.f64[0] = *(a1 + 16);
  v36.f64[1] = *(a1 + 56);
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v36, *(Counter + 1)), vceqq_f64(v34, v35)))))
  {
    goto LABEL_123;
  }

  v185 = *(Counter + 1);
  v189 = v35;
  v186 = v20;
  v168 = v17;
  v174 = v33;
  v175 = v34;
  v176 = v32;
  v179 = a1;
  AGGraphClearUpdate();
  v37 = *(Counter + 1);
  v204 = *Counter;
  v205 = v37;
  v38 = *(Counter + 3);
  v206 = *(Counter + 2);
  v207 = v38;
  v180 = Counter;
  v208 = *(Counter + 16);
  v4 = &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v204, &v200, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
  v39 = &type metadata for Edge.Corner.Style;
  v40 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v41 = Transaction.effectiveAnimation.getter(v40);
  if (v41)
  {
    v42 = v41;
    v187 = v14;
    v169 = v23;
  }

  else
  {
    if (!a2)
    {

      a1 = v179;
      Counter = v180;
      goto LABEL_122;
    }

    v187 = v14;
    v169 = v23;

    v42 = a2;
  }

  v43 = *(&v207 + 1);
  v44 = *&v176 - *&v185;
  v45 = *&v174 - *(&v185 + 1);
  v46 = v175.f64[0] - v189.f64[0];
  v47 = v175.f64[1] - v189.f64[1];
  v30 = *AGGraphGetValue();
  v172 = a3;
  v171 = v40;
  v170 = v42;
  if (!v43)
  {
    *&v196.f64[0] = &type metadata for Edge.Corner.Style;
    type metadata accessor for Edge.Corner.Style.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == Edge.Corner.Style.AnimatableData>.Type);
    v60 = swift_dynamicCast();
    if (v60)
    {
      v61 = v200;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = *(&v200 + 1);
    }

    else
    {
      v62 = 0;
    }

    v173 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA4EdgeOAAE6CornerO5StyleV14AnimatableDataV_Tt4B5(v63, v40, v61, v62, v44, v45, v46, v47, v30);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v65 = CurrentAttribute;
    LODWORD(v40) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v66 = 0;
    }

    else
    {
      v66 = CurrentAttribute;
    }

    LODWORD(v185) = v66;
    (*(*v42 + 96))(&v196);
    v67 = v196;
    v68 = *(&v197 + 1);
    v69 = v198;
    v195 = 0x7FF8000000000000;
    v194 = NAN;
    v193 = 1.0;
    v192 = NAN;
    v200 = v196;
    v186 = v197;
    v201 = v197;
    v202 = v198;
    LODWORD(v189.f64[0]) = v199;
    LOBYTE(v203) = v199;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v200, &v195, &v194, &v193, &v192);
    v5 = v195;
    v6 = v194;
    v7 = v193;
    v8 = v192;
    a1 = v179;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_196;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v184 = v69;
      v70 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v71 = *(v70 + 16);
        LODWORD(v200) = v185;
        BYTE4(v200) = v65 == v40;
        *(&v200 + 1) = &type metadata for Edge.Corner.Style;
        *&v201 = v5;
        *(&v201 + 1) = v6;
        v202 = *&v7;
        v203 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v72 = v71;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v67.f64[0], *&v67.f64[1], v186, v68, v184, LOBYTE(v189.f64[0]));

        a1 = v179;
        goto LABEL_84;
      }

      v74 = *&v67.f64[1];
      v73 = *&v67.f64[0];
      v75 = v186;
      v76 = v68;
      v77 = v184;
    }

    else
    {
      v74 = *&v67.f64[1];
      v73 = *&v67.f64[0];
      v75 = v186;
      v76 = v68;
      v77 = v69;
    }

    outlined consume of Animation.Function(v73, v74, v75, v76, v77, LOBYTE(v189.f64[0]));
LABEL_84:
    v109 = one-time initialization token for animationState;
    v39 = v173;

    if (v109 == -1)
    {
LABEL_85:
      v78 = *(&static Signpost.animationState + 1);
      *&v79 = static Signpost.animationState;
      LOBYTE(Counter) = word_1ED5283E8;
      v4 = HIBYTE(word_1ED5283E8);
      v110 = byte_1ED5283EA;
      v82 = static os_signpost_type_t.begin.getter();
      v200 = __PAIR128__(*&v78, *&v79);
      LOBYTE(v201) = Counter;
      BYTE1(v201) = v4;
      BYTE2(v201) = v110;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {

        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
        Counter = v180;
        *(v180 + 7) = v39;
        goto LABEL_120;
      }

      v111 = one-time initialization token for _signpostLog;

      if (v111 != -1)
      {
        goto LABEL_199;
      }

      goto LABEL_87;
    }

LABEL_196:
    swift_once();
    goto LABEL_85;
  }

  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v204, &v200, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v200) = 0;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v42, v40, v44, v45, v46, v47, v30);
  v48 = AGGraphGetCurrentAttribute();
  a1 = v48;
  v49 = *MEMORY[0x1E698D3F8];
  if (v48 == v49)
  {
    v50 = 0;
  }

  else
  {
    v50 = v48;
  }

  LODWORD(v187) = v50;
  (*(*v42 + 96))(&v196);
  v4 = *&v196.f64[1];
  v51 = v196.f64[0];
  v52 = v197;
  v195 = 0x7FF8000000000000;
  v194 = NAN;
  v193 = 1.0;
  v192 = NAN;
  v200 = v196;
  v201 = v197;
  v53 = *(&v197 + 1);
  v54 = v198;
  v202 = v198;
  LODWORD(v189.f64[0]) = v199;
  LOBYTE(v203) = v199;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v200, &v195, &v194, &v193, &v192);
  v5 = v195;
  v6 = v194;
  v7 = v193;
  v8 = v192;
  Counter = v180;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_192;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_194:
      swift_once();
      goto LABEL_45;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v55 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v56 = a1 == v49;
        LODWORD(v185) = v49;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v57 = *(v55 + 16);
        LODWORD(v200) = v187;
        BYTE4(v200) = v56;
        *(&v200 + 1) = &type metadata for Edge.Corner.Style;
        *&v201 = v5;
        *(&v201 + 1) = v6;
        v202 = *&v7;
        v203 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v187 = v58;

        v59 = v57;
        v49 = v185;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v51, v4, v52, v53, v54, LOBYTE(v189.f64[0]));
      }

      else
      {
        outlined consume of Animation.Function(*&v51, v4, v52, v53, v54, LOBYTE(v189.f64[0]));
      }

      Counter = v180;
    }

    else
    {
      outlined consume of Animation.Function(*&v51, v4, v52, v53, v54, LOBYTE(v189.f64[0]));
    }

    v173 = v43;
    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v204, &v200, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
    a1 = v179;
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_194;
    }

LABEL_45:
    v78 = *(&static Signpost.animationState + 1);
    v40 = static Signpost.animationState;
    *&v79 = word_1ED5283E8;
    v80 = HIBYTE(word_1ED5283E8);
    v81 = byte_1ED5283EA;
    v82 = static os_signpost_type_t.event.getter();
    v200 = __PAIR128__(*&v78, v40);
    LOBYTE(v201) = LOBYTE(v79);
    BYTE1(v201) = v80;
    BYTE2(v201) = v81;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
LABEL_81:
      v108 = v171;
      goto LABEL_121;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v204, &v200, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v83 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v49)
    {
      __break(1u);
    }

    else
    {
      v4 = v49;
      v84 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v85 = MEMORY[0x1E69E6870];
      *(a1 + 56) = MEMORY[0x1E69E6810];
      *(a1 + 64) = v85;
      *(a1 + 32) = Counter;
      v86 = AGGraphGetCurrentAttribute();
      if (v86 != v4)
      {
        v87 = MEMORY[0x1E69E76D0];
        *(a1 + 96) = MEMORY[0x1E69E7668];
        *(a1 + 104) = v87;
        *(a1 + 72) = v86;
        *(a1 + 136) = MEMORY[0x1E69E6158];
        *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(a1 + 112) = 0x656C797453;
        *(a1 + 120) = 0xE500000000000000;
        Counter = v180;
        if (v80)
        {
          LOBYTE(v192) = v82;
          v195 = &dword_18D018000;
          v194 = v83;
          *&v200 = v40;
          *(&v200 + 1) = v78;
          LOBYTE(v201) = LOBYTE(v79);
          *&v196.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v196.f64[1] = 39;
          LOBYTE(v197) = 2;
          v193 = *&a1;
          v88 = v169;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
          (*(v188 + 8))(v88, v191);

          a1 = v179;
        }

        else
        {
          v49 = v40;
          if (v40 == 20)
          {
            v89 = 3;
          }

          else
          {
            v89 = 4;
          }

          v90 = bswap32(v40) | (4 * (v40 >> 16));
          v91 = v82;
          v92 = v188 + 16;
          v177 = *(v188 + 16);
          v93 = v177(v186, v169, v191);
          v94 = 0;
          LOBYTE(v196.f64[0]) = 1;
          *&v189.f64[0] = v89;
          v184 = 16 * v89;
          v178 = v92;
          *&v185 = v92 - 8;
          v183 = a1 + 32;
          v182 = v49;
          do
          {
            v187 = &v168;
            MEMORY[0x1EEE9AC00](v93);
            Counter = &v168 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
            v53 = (Counter + 8);
            v97 = v189.f64[0];
            v98 = Counter + 8;
            do
            {
              *(v98 - 1) = 0;
              *v98 = 0;
              v98 += 16;
              --*&v97;
            }

            while (v97 != 0.0);
            v4 = v183 + 40 * v94;
            v99 = *&v189.f64[0];
            while (1)
            {
              v100 = *(a1 + 16);
              if (v94 == v100)
              {
                break;
              }

              if (v94 >= v100)
              {
                goto LABEL_183;
              }

              ++v94;
              outlined init with copy of AnyTrackedValue(v4, &v200);
              v101 = *(&v201 + 1);
              v49 = v202;
              __swift_project_boxed_opaque_existential_1(&v200, *(&v201 + 1));
              *(v53 - 8) = CVarArg.kdebugValue(_:)(v90 | v91, v101);
              *v53 = v102 & 1;
              v53 += 16;
              v95 = __swift_destroy_boxed_opaque_existential_1(&v200);
              v4 += 40;
              if (!--v99)
              {
                goto LABEL_65;
              }
            }

            LOBYTE(v196.f64[0]) = 0;
LABEL_65:
            v49 = v182;
            if (v182 == 20)
            {
              v103 = v186;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              v103 = v186;
            }

            if (Counter[8] == 1)
            {
              kdebug_trace_string();
            }

            if (Counter[24] == 1)
            {
              kdebug_trace_string();
            }

            if (Counter[40] == 1)
            {
              kdebug_trace_string();
            }

            if (v49 != 20 && Counter[56] == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v104 = *v185;
            v105 = v191;
            (*v185)(v103, v191);
            v106 = __swift_project_value_buffer(v105, static OSSignpostID.continuation);
            v93 = v177(v103, v106, v105);
          }

          while ((LOBYTE(v196.f64[0]) & 1) != 0);
          v4 = &type metadata for Edge.Corner.Style;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
          v107 = v191;
          v104(v103, v191);
          v104(v169, v107);

          a1 = v179;
          Counter = v180;
        }

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_199:
    swift_once();
LABEL_87:
    v112 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v113 = COERCE_DOUBLE(swift_allocObject());
    *(v113 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v40)
    {
      __break(1u);
LABEL_201:
      __break(1u);
    }

    v114 = AGGraphGetAttributeGraph();
    v115 = AGGraphGetCounter();

    v116 = MEMORY[0x1E69E6870];
    *(v113 + 56) = MEMORY[0x1E69E6810];
    *(v113 + 64) = v116;
    *(v113 + 32) = v115;
    v117 = AGGraphGetCurrentAttribute();
    if (v117 == v40)
    {
      goto LABEL_201;
    }

    v118 = MEMORY[0x1E69E76D0];
    *(v113 + 96) = MEMORY[0x1E69E7668];
    *(v113 + 104) = v118;
    *(v113 + 72) = v117;
    *(v113 + 136) = MEMORY[0x1E69E6158];
    *(v113 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(v113 + 112) = 0x656C797453;
    *(v113 + 120) = 0xE500000000000000;
    v119 = v168;
    if (v4)
    {
      LOBYTE(v192) = v82;
      v195 = &dword_18D018000;
      v194 = v112;
      *&v200 = v79;
      *(&v200 + 1) = v78;
      LOBYTE(v201) = Counter;
      *&v196.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v196.f64[1] = 39;
      LOBYTE(v197) = 2;
      v193 = *&v113;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v120 = v173;

      (*(v188 + 8))(v119, v191);
    }

    else
    {
      v49 = LOBYTE(v79);
      v99 = LOBYTE(v79) == 20 ? 3 : 4;
      a1 = bswap32(LOWORD(v79)) | (4 * HIWORD(LODWORD(v79)));
      v91 = v82;
      v121 = v188 + 16;
      v177 = *(v188 + 16);
      v122 = v177(v187, v168, v191);
      v53 = 0;
      LOBYTE(v196.f64[0]) = 1;
      *&v185 = 16 * v99;
      v178 = v121;
      v186 = (v121 - 8);
      v184 = v113 + 32;
      v183 = v49;
      v182 = v99;
      do
      {
        *&v189.f64[0] = &v168;
        MEMORY[0x1EEE9AC00](v122);
        v4 = &v168 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
        Counter = (v4 + 8);
        v124 = v99;
        v125 = (v4 + 8);
        do
        {
          *(v125 - 1) = 0;
          *v125 = 0;
          v125 += 16;
          --v124;
        }

        while (v124);
        v126 = v184 + 40 * v53;
        while (1)
        {
          v127 = *(v113 + 16);
          if (v53 == v127)
          {
            break;
          }

          if (v53 >= v127)
          {
            goto LABEL_184;
          }

          ++v53;
          outlined init with copy of AnyTrackedValue(v126, &v200);
          v128 = *(&v201 + 1);
          v49 = v202;
          __swift_project_boxed_opaque_existential_1(&v200, *(&v201 + 1));
          *(Counter - 1) = CVarArg.kdebugValue(_:)(a1 | v91, v128);
          *Counter = v129 & 1;
          Counter += 16;
          v95 = __swift_destroy_boxed_opaque_existential_1(&v200);
          v126 += 40;
          if (!--v99)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v196.f64[0]) = 0;
LABEL_104:
        v49 = v183;
        if (v183 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v49 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v130 = *v186;
        v131 = v187;
        v132 = v191;
        (*v186)(v187, v191);
        v133 = __swift_project_value_buffer(v132, static OSSignpostID.continuation);
        v122 = v177(v131, v133, v132);
        v99 = v182;
      }

      while ((LOBYTE(v196.f64[0]) & 1) != 0);
      v120 = v173;

      v134 = v191;
      v130(v187, v191);
      v130(v168, v134);
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v204, &lazy cache variable for type metadata for AnimatableAttributeHelper<Edge.Corner.Style>, lazy protocol witness table accessor for type Edge.Corner.Style and conformance Edge.Corner.Style, &type metadata for Edge.Corner.Style, type metadata accessor for AnimatableAttributeHelper);
    Counter = v180;
    *(v180 + 7) = v120;
    a1 = v179;
LABEL_120:
    v108 = v171;
LABEL_121:
    specialized AnimatorState.addListeners(transaction:)(v108);

    a3 = v172;
LABEL_122:
    *&v32 = v176;
    v34 = v175;
    *&v33 = v174;
LABEL_123:
    *(&v32 + 1) = v33;
    *(Counter + 1) = v32;
    *(Counter + 2) = v34;
    Counter[48] = 0;
LABEL_124:
    v49 = *(Counter + 7);
    if (!v49)
    {
      return result;
    }

    v135 = *(a1 + 56);
    *&v200 = *(a1 + 16);
    *(&v200 + 1) = v135;
    v201 = *(a1 + 24);

    LOBYTE(v204) = 0;
    v136 = specialized AnimatorState.update(_:at:environment:)(&v200, a3, v30);
    v95 = AGGraphGetCurrentAttribute();
    v53 = *MEMORY[0x1E698D3F8];
    if (v95 == v53)
    {
      v91 = 0;
    }

    else
    {
      v91 = v95;
    }

    v99 = &type metadata instantiation cache for TupleTypeDescription;
    if (v136)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_185;
      }

      goto LABEL_130;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_187;
    }

LABEL_143:
    v146 = *(v99 + 616);
    if (*(v146 + 16) >= 0x43uLL)
    {
      if (*(v146 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v204) = v91;
        BYTE4(v204) = v95 == v53;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_178;
    }

    __break(1u);
LABEL_189:
    swift_once();
LABEL_135:
    v54 = *(&static Signpost.animationState + 1);
    v139 = static Signpost.animationState;
    v52 = word_1ED5283E8;
    v43 = HIBYTE(word_1ED5283E8);
    v140 = byte_1ED5283EA;
    v49 = static os_signpost_type_t.end.getter();
    v204 = __PAIR128__(v54, v139);
    LOBYTE(v205) = v52;
    BYTE1(v205) = v43;
    BYTE2(v205) = v140;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_177;
    }

    v179 = a1;
    v141 = one-time initialization token for _signpostLog;

    if (v141 != -1)
    {
      swift_once();
    }

    v180 = Counter;
    v51 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v53)
    {
      break;
    }

    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    swift_once();
  }

  Counter = AGGraphGetAttributeGraph();
  v4 = AGGraphGetCounter();

  v142 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v142;
  *(a1 + 32) = v4;
  v143 = AGGraphGetCurrentAttribute();
  if (v143 == v53)
  {
    goto LABEL_191;
  }

  v144 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v144;
  *(a1 + 72) = v143;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0x656C797453;
  *(a1 + 120) = 0xE500000000000000;
  if (v43)
  {
    LOBYTE(v192) = v49;
    v195 = &dword_18D018000;
    v194 = v51;
    *&v204 = v139;
    *(&v204 + 1) = v54;
    LOBYTE(v205) = v52;
    *&v196.f64[0] = "Animation: (%p) [%d] %{public}@ ended";
    *&v196.f64[1] = 37;
    LOBYTE(v197) = 2;
    v193 = *&a1;
    v145 = v181;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v188 + 8))(v145, v191);
    goto LABEL_176;
  }

  v147 = v139;
  if (v139 == 20)
  {
    v99 = 3;
  }

  else
  {
    v99 = 4;
  }

  v53 = bswap32(v139) | (4 * WORD1(v139));
  v91 = v49;
  v148 = v188 + 16;
  v182 = *(v188 + 16);
  v149 = v182(v190, v181, v191);
  v150 = 0;
  LOBYTE(v196.f64[0]) = 1;
  v186 = (16 * v99);
  v188 = v148;
  v187 = (v148 - 8);
  *&v185 = a1 + 32;
  v184 = v147;
  v183 = v99;
  do
  {
    *&v189.f64[0] = &v168;
    MEMORY[0x1EEE9AC00](v149);
    Counter = &v168 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
    v152 = Counter + 8;
    v153 = v99;
    v154 = Counter + 8;
    do
    {
      *(v154 - 1) = 0;
      *v154 = 0;
      v154 += 16;
      --v153;
    }

    while (v153);
    v4 = v185 + 40 * v150;
    while (1)
    {
      v155 = *(a1 + 16);
      if (v150 == v155)
      {
        break;
      }

      if (v150 >= v155)
      {
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        v166 = v95;
        swift_once();
        v95 = v166;
LABEL_130:
        v137 = *(v99 + 616);
        if (*(v137 + 16) >= 0x43uLL)
        {
          if (*(v137 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v204) = v91;
            BYTE4(v204) = v95 == v53;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v138 = one-time initialization token for animationState;
          v178 = v49;

          if (v138 != -1)
          {
            goto LABEL_189;
          }

          goto LABEL_135;
        }

        __break(1u);
LABEL_187:
        v167 = v95;
        swift_once();
        v95 = v167;
        goto LABEL_143;
      }

      ++v150;
      outlined init with copy of AnyTrackedValue(v4, &v204);
      v156 = *(&v205 + 1);
      v49 = v206;
      __swift_project_boxed_opaque_existential_1(&v204, *(&v205 + 1));
      *(v152 - 1) = CVarArg.kdebugValue(_:)(v53 | v91, v156);
      *v152 = v157 & 1;
      v152 += 16;
      v95 = __swift_destroy_boxed_opaque_existential_1(&v204);
      v4 += 40;
      if (!--v99)
      {
        goto LABEL_161;
      }
    }

    LOBYTE(v196.f64[0]) = 0;
LABEL_161:
    v158 = v184;
    if (v184 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (Counter[8] == 1)
    {
      kdebug_trace_string();
    }

    if (Counter[24] == 1)
    {
      kdebug_trace_string();
    }

    if (Counter[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v158 != 20 && Counter[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v159 = *v187;
    v49 = v190;
    v160 = v191;
    (*v187)(v190, v191);
    v161 = __swift_project_value_buffer(v160, static OSSignpostID.continuation);
    v149 = v182(v49, v161, v160);
    v99 = v183;
  }

  while ((LOBYTE(v196.f64[0]) & 1) != 0);

  v162 = v191;
  v159(v190, v191);
  v159(v181, v162);
LABEL_176:

  a1 = v179;
  Counter = v180;
LABEL_177:
  specialized AnimatorState.removeListeners()();

  *(Counter + 7) = 0;
LABEL_178:
  v163 = v200;
  v164 = v201;
  *(a1 + 16) = v200;
  *(a1 + 24) = v164;
  *(a1 + 56) = v163.f64[1];
  v165 = *(&v164 + 1) == 1.0;
  if (*&v164 != 1.0)
  {
    v165 = *&v163.f64[0];
  }

  *a1 = v165;
  *(a1 + 8) = *&v164 == 1.0;
  *(a1 + 32) = *(&v164 + 1);
  *(a1 + 40) = v163.f64[1];
  *(a1 + 48) = 0;
  *(a1 + 64) = 1;
  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, ValueMetadata *a4)
{
  v226 = *MEMORY[0x1E69E9840];
  v201 = type metadata accessor for OSSignpostID();
  v197 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v14 = (&v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v177 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v177 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v177 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v200 = (&v177 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v191 = &v177 - v27;
  if (a4[2].Description)
  {
    Value = AGGraphGetValue();
    if (v29)
    {
      v30 = *Value;
    }

    else
    {
      v30 = -INFINITY;
    }
  }

  else
  {
    v30 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()(specialized AnimatorState.removeListeners());
  if (result)
  {
    *(a1 + 24) = 1;
  }

  else if (*(a1 + 24) != 1)
  {
    goto LABEL_139;
  }

  v34 = *a1;
  v35 = *(a1 + 4);
  v36 = *(a1 + 20);
  v34.i32[1] = *(a1 + 8);
  v35.i32[1] = *(a1 + 12);
  *&v33 = vmul_f32(v34, 0x4300000043000000);
  *&v32 = vmul_f32(v35, 0x4300000043000000);
  v37 = *(a1 + 16) * 128.0;
  v38 = v36 * 128.0;
  if ((a4[2].Kind & 0x100000000) != 0)
  {
    goto LABEL_138;
  }

  v199 = v30;
  LODWORD(v8) = HIDWORD(a4->Description);
  v39 = *&a4[1].Kind;
  v40 = *(&a4[1].Kind + 1);
  v41 = *&a4[1].Description;
  v42 = *(&a4[1].Description + 1);
  v5.i32[0] = a4[2].Kind;
  LODWORD(v6) = DWORD1(v33);
  LODWORD(v7) = DWORD1(v32);
  v43 = *&v33 == *&v8 && *&v32 == v39;
  if (v43 && *(&v33 + 1) == v40 && *(&v32 + 1) == v41 && v37 == v42 && v38 == v5.f32[0])
  {
    v30 = v199;
    goto LABEL_138;
  }

  v186 = a3;
  v198 = v14;
  v196 = v20;
  v182 = v37;
  v183 = v36 * 128.0;
  v184 = v32;
  v185 = v33;
  v189 = a1;
  AGGraphClearUpdate();
  v48 = a4[1];
  v222 = *a4;
  v223 = v48;
  v224 = a4[2];
  v190 = a4;
  Kind = a4[3].Kind;
  v4 = &type metadata for Color.ResolvedDuotone;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v222, &v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
  v49 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v50 = Transaction.effectiveAnimation.getter(v49);
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    a3 = v186;
    if (!a2)
    {

      a1 = v189;
      a4 = v190;
      v30 = v199;
      goto LABEL_137;
    }

    v51 = a2;
  }

  Description = v224.Description;
  v53 = *&v185 - *&v8;
  v54 = *&v184 - v39;
  v55 = *&v6 - v40;
  v56 = *&v7 - v41;
  v57 = v182 - v42;
  v58 = v183 - v5.f32[0];
  v30 = *AGGraphGetValue();
  v180 = v49;
  v181 = v51;
  if (!Description)
  {
    v178 = v17;
    v212.i64[0] = &type metadata for Color.ResolvedDuotone;
    type metadata accessor for Color.ResolvedDuotone.Type();
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Type, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
    v71 = swift_dynamicCast();
    if (v71)
    {
      v72 = v217;
    }

    else
    {
      v72 = 0;
    }

    if (v71)
    {
      v73 = *(&v217 + 1);
    }

    else
    {
      v73 = 0;
    }

    v206 = v53;
    v207 = v54;
    v208 = v55;
    v209 = v56;
    v210 = v57;
    v211 = v58;

    *&v75 = COERCE_DOUBLE(_s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVySfAVyS2fGGGGG_Tt4B5Tm(v74, &v206, v49, v72, v73, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, v30));
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v77 = CurrentAttribute;
    LODWORD(v199) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == LODWORD(v199))
    {
      v78 = 0;
    }

    else
    {
      v78 = CurrentAttribute;
    }

    (*(*v51 + 96))(&v212);
    v79 = v212;
    v205 = 0x7FF8000000000000;
    v204 = 0x7FF8000000000000;
    v203 = 1.0;
    v202 = NAN;
    v217 = v212;
    v80 = v213;
    v218 = v213;
    v194 = v214;
    v219 = v214;
    v195 = v215;
    v220 = *&v215;
    LODWORD(v196) = v216;
    LOBYTE(v221) = v216;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v217, &v205, &v204, &v203, &v202);
    v5 = v205;
    v6 = v204;
    v7 = v203;
    v8 = v202;
    a4 = v190;
    if (one-time initialization token for enabledCategories != -1)
    {
      swift_once();
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
    }

    else
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v81 = static CustomEventTrace.recorder) != 0)
      {
        v82 = v77 == LODWORD(v199);
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v83 = *(v81 + 16);
        LODWORD(v217) = v78;
        BYTE4(v217) = v82;
        *(&v217 + 1) = &type metadata for Color.ResolvedDuotone;
        v218 = v5;
        v219 = v6;
        v220 = v7;
        v221 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();

        v84 = v83;
        a4 = v190;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v79.i64[0], v79.i64[1], v80, v194, v195, v196);
      }

      else
      {
        outlined consume of Animation.Function(v79.i64[0], v79.i64[1], v80, v194, v195, v196);
      }

      v85 = one-time initialization token for animationState;

      if (v85 == -1)
      {
        goto LABEL_58;
      }
    }

    swift_once();
LABEL_58:
    v87 = *(&static Signpost.animationState + 1);
    v86 = static Signpost.animationState;
    LOBYTE(a1) = word_1ED5283E8;
    v4 = HIBYTE(word_1ED5283E8);
    v88 = byte_1ED5283EA;
    v89 = static os_signpost_type_t.begin.getter();
    v217 = __PAIR128__(v87, v86);
    v218.i8[0] = a1;
    v218.i8[1] = v4;
    v218.i8[2] = v88;
    v90 = Signpost.isEnabled.getter();
    LODWORD(v91) = LODWORD(v199);
    if ((v90 & 1) == 0)
    {

      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
      goto LABEL_135;
    }

    v92 = one-time initialization token for _signpostLog;

    if (v92 != -1)
    {
      goto LABEL_212;
    }

    goto LABEL_60;
  }

  v206 = v53;
  v207 = v54;
  v208 = v55;
  v209 = v56;
  v210 = v57;
  v211 = v58;
  a4 = &type metadata for Color.ResolvedDuotone;
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v222, &v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
  LOBYTE(v217) = 0;
  v179 = Description;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v51, &v206, v49, v30);
  v59 = AGGraphGetCurrentAttribute();
  v60 = v59;
  LODWORD(v199) = *MEMORY[0x1E698D3F8];
  if (v59 == LODWORD(v199))
  {
    v61 = 0;
  }

  else
  {
    v61 = v59;
  }

  LODWORD(v195) = v61;
  (*(*v51 + 96))(&v212);
  v4 = v212.i64[1];
  v62 = v212.i64[0];
  v63 = v213;
  v205 = 0x7FF8000000000000;
  v204 = 0x7FF8000000000000;
  v203 = 1.0;
  v202 = NAN;
  v217 = v212;
  v218 = v213;
  v64 = *&v214;
  v219 = v214;
  v65 = v215;
  v220 = *&v215;
  LODWORD(v198) = v216;
  LOBYTE(v221) = v216;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v217, &v205, &v204, &v203, &v202);
  v5 = v205;
  v6 = v204;
  v7 = v203;
  v8 = v202;
  a1 = v189;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_205;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_207:
      swift_once();
      goto LABEL_69;
    }

    v43 = *(static CustomEventTrace.enabledCategories + 98) == 1;
    v178 = v23;
    if (v43)
    {
      v66 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v67 = v60 == LODWORD(v199);
        *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
        v68 = *(v66 + 16);
        LODWORD(v217) = v195;
        BYTE4(v217) = v67;
        *(&v217 + 1) = a4;
        v218 = v5;
        v219 = v6;
        v220 = v7;
        v221 = v8;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v195 = v69;

        v70 = v68;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v62, v4, v63, *&v64, v65, v198);
      }

      else
      {
        outlined consume of Animation.Function(v62, v4, v63, *&v64, v65, v198);
      }

      a1 = v189;
    }

    else
    {
      outlined consume of Animation.Function(v62, v4, v63, *&v64, v65, v198);
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v222, &v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for animationState != -1)
    {
      goto LABEL_207;
    }

LABEL_69:
    v91 = *(&static Signpost.animationState + 1);
    v86 = static Signpost.animationState;
    v87 = word_1ED5283E8;
    v89 = HIBYTE(word_1ED5283E8);
    v99 = byte_1ED5283EA;
    v4 = static os_signpost_type_t.event.getter();
    v217 = __PAIR128__(v91, v86);
    v218.i8[0] = v87;
    v218.i8[1] = v89;
    v218.i8[2] = v99;
    v100 = Signpost.isEnabled.getter();
    v101 = LODWORD(v199);
    if ((v100 & 1) == 0)
    {
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
      outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
LABEL_106:
      a4 = v190;
      v126 = v180;
      goto LABEL_136;
    }

    outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v222, &v217, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v102 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&v75 = COERCE_DOUBLE(swift_allocObject());
    *(v75 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v101)
    {
      __break(1u);
    }

    else
    {
      a4 = AGGraphGetAttributeGraph();
      *&a1 = COERCE_DOUBLE(AGGraphGetCounter());

      v103 = MEMORY[0x1E69E6870];
      *(v75 + 56) = MEMORY[0x1E69E6810];
      *(v75 + 64) = v103;
      *(v75 + 32) = *&a1;
      v104 = AGGraphGetCurrentAttribute();
      if (v104 != v101)
      {
        v105 = MEMORY[0x1E69E76D0];
        *(v75 + 96) = MEMORY[0x1E69E7668];
        *(v75 + 104) = v105;
        *(v75 + 72) = v104;
        *(v75 + 136) = MEMORY[0x1E69E6158];
        *(v75 + 144) = lazy protocol witness table accessor for type String and conformance String();
        *(v75 + 112) = 0x6465766C6F736552;
        *(v75 + 120) = 0xEF656E6F746F7544;
        if (v89)
        {
          LOBYTE(v202) = v4;
          v205 = &dword_18D018000;
          v204 = v102;
          *&v217 = v86;
          *(&v217 + 1) = v91;
          v218.i8[0] = v87;
          v212.i64[0] = "Animation: (%p) [%d] %{public}@ updated";
          v212.i64[1] = 39;
          v213.i8[0] = 2;
          v203 = *&v75;
          v106 = v178;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
          (*(v197 + 8))(v106, v201);
        }

        else
        {
          v107 = v86;
          if (v86 == 20)
          {
            v108 = 3;
          }

          else
          {
            v108 = 4;
          }

          v109 = bswap32(v86) | (4 * WORD1(v86));
          v110 = v4;
          v111 = (v197 + 16);
          v187 = *(v197 + 16);
          v112 = v187(v196, v178, v201);
          v113 = 0;
          v212.i8[0] = 1;
          v199 = *&v108;
          v194 = 16 * v108;
          v188 = *&v111;
          v195 = (v111 - 8);
          v193 = (v75 + 32);
          v192 = v107;
          do
          {
            v198 = &v177;
            MEMORY[0x1EEE9AC00](v112);
            a1 = &v177 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
            *&v64 = a1 + 8;
            v116 = v199;
            v117 = (a1 + 8);
            do
            {
              *(v117 - 1) = 0;
              *v117 = 0;
              v117 += 16;
              --*&v116;
            }

            while (v116 != 0.0);
            v4 = &v193[40 * v113];
            v65 = *&v199;
            while (1)
            {
              v118 = *(v75 + 16);
              if (v113 == v118)
              {
                break;
              }

              if (v113 >= v118)
              {
                goto LABEL_196;
              }

              ++v113;
              outlined init with copy of AnyTrackedValue(v4, &v217);
              v119 = v219;
              a4 = *&v220;
              __swift_project_boxed_opaque_existential_1(&v217, v219);
              *(*&v64 - 8) = CVarArg.kdebugValue(_:)(v109 | v110, v119);
              **&v64 = v120 & 1;
              *&v64 += 16;
              v114 = __swift_destroy_boxed_opaque_existential_1(&v217);
              v4 += 40;
              if (!--v65)
              {
                goto LABEL_89;
              }
            }

            v212.i8[0] = 0;
LABEL_89:
            v121 = v192;
            if (v192 == 20)
            {
              a4 = v196;
              OSSignpostID.rawValue.getter();
              kdebug_trace();
            }

            else
            {
              kdebug_trace();
              a4 = v196;
            }

            if (*(a1 + 8) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 24) == 1)
            {
              kdebug_trace_string();
            }

            if (*(a1 + 40) == 1)
            {
              kdebug_trace_string();
            }

            if (v121 != 20 && *(a1 + 56) == 1)
            {
              kdebug_trace_string();
            }

            if (one-time initialization token for continuation != -1)
            {
              swift_once();
            }

            v122 = *v195;
            v123 = v201;
            (*v195)(a4, v201);
            v124 = __swift_project_value_buffer(v123, static OSSignpostID.continuation);
            v112 = v187(a4, v124, v123);
          }

          while ((v212.i8[0] & 1) != 0);
          v4 = &type metadata for Color.ResolvedDuotone;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
          v125 = v201;
          v122(a4, v201);
          v122(v178, v125);
        }

        a1 = v189;
        goto LABEL_106;
      }
    }

    __break(1u);
LABEL_212:
    swift_once();
LABEL_60:
    v93 = _signpostLog;
    v179 = v75;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v64 = COERCE_DOUBLE(swift_allocObject());
    *(*&v64 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v91)
    {
      __break(1u);
LABEL_214:
      __break(1u);
    }

    a4 = AGGraphGetAttributeGraph();
    Counter = AGGraphGetCounter();

    v95 = MEMORY[0x1E69E6870];
    *(*&v64 + 56) = MEMORY[0x1E69E6810];
    *(*&v64 + 64) = v95;
    *(*&v64 + 32) = Counter;
    v96 = AGGraphGetCurrentAttribute();
    if (v96 == v91)
    {
      goto LABEL_214;
    }

    v97 = MEMORY[0x1E69E76D0];
    *(*&v64 + 96) = MEMORY[0x1E69E7668];
    *(*&v64 + 104) = v97;
    *(*&v64 + 72) = v96;
    *(*&v64 + 136) = MEMORY[0x1E69E6158];
    *(*&v64 + 144) = lazy protocol witness table accessor for type String and conformance String();
    *(*&v64 + 112) = 0x6465766C6F736552;
    *(*&v64 + 120) = 0xEF656E6F746F7544;
    if (v4)
    {
      LOBYTE(v202) = v89;
      v205 = &dword_18D018000;
      v204 = v93;
      *&v217 = v86;
      *(&v217 + 1) = v87;
      v218.i8[0] = a1;
      v212.i64[0] = "Animation: (%p) [%d] %{public}@ started";
      v212.i64[1] = 39;
      v213.i8[0] = 2;
      v203 = v64;
      v98 = v178;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v75 = v179;

      (*(v197 + 8))(v98, v201);
    }

    else
    {
      v192 = v86;
      v127 = v86 == 20 ? 3 : 4;
      a1 = bswap32(v86) | (4 * WORD1(v86));
      v110 = v89;
      v128 = (v197 + 16);
      v187 = *(v197 + 16);
      v129 = v187(v198, v178, v201);
      v130 = 0;
      v212.i8[0] = 1;
      v199 = *&v127;
      v194 = 16 * v127;
      v188 = *&v128;
      v195 = (v128 - 8);
      v193 = (*&v64 + 32);
      do
      {
        v196 = &v177;
        MEMORY[0x1EEE9AC00](v129);
        v4 = &v177 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
        v113 = v4 + 8;
        v132 = v199;
        v133 = (v4 + 8);
        do
        {
          *(v133 - 1) = 0;
          *v133 = 0;
          v133 += 16;
          --*&v132;
        }

        while (v132 != 0.0);
        v134 = &v193[40 * v130];
        v65 = *&v199;
        while (1)
        {
          v135 = *(*&v64 + 16);
          if (v130 == v135)
          {
            break;
          }

          if (v130 >= v135)
          {
            goto LABEL_197;
          }

          ++v130;
          outlined init with copy of AnyTrackedValue(v134, &v217);
          v136 = v219;
          a4 = *&v220;
          __swift_project_boxed_opaque_existential_1(&v217, v219);
          *(v113 - 8) = CVarArg.kdebugValue(_:)(a1 | v110, v136);
          *v113 = v137 & 1;
          v113 += 16;
          v114 = __swift_destroy_boxed_opaque_existential_1(&v217);
          v134 += 40;
          if (!--v65)
          {
            goto LABEL_119;
          }
        }

        v212.i8[0] = 0;
LABEL_119:
        v138 = v192;
        if (v192 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (*(v4 + 8) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 24) == 1)
        {
          kdebug_trace_string();
        }

        if (*(v4 + 40) == 1)
        {
          kdebug_trace_string();
        }

        if (v138 != 20 && *(v4 + 56) == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v139 = *v195;
        v140 = v198;
        v141 = v201;
        (*v195)(v198, v201);
        v142 = __swift_project_value_buffer(v141, static OSSignpostID.continuation);
        v129 = v187(v140, v142, v141);
      }

      while ((v212.i8[0] & 1) != 0);
      v75 = v179;

      v143 = v201;
      v139(v140, v201);
      v139(v178, v143);
    }

    outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v222, &lazy cache variable for type metadata for AnimatableAttributeHelper<Color.ResolvedDuotone>, lazy protocol witness table accessor for type Color.ResolvedDuotone and conformance Color.ResolvedDuotone, &type metadata for Color.ResolvedDuotone, type metadata accessor for AnimatableAttributeHelper);
    a4 = v190;
LABEL_135:
    a4[2].Description = v75;
    a1 = v189;
    v126 = v180;
LABEL_136:
    specialized AnimatorState.addListeners(transaction:)(v126);

    a3 = v186;
LABEL_137:
    *&v33 = v185;
    *&v32 = v184;
    v38 = v183;
    v37 = v182;
LABEL_138:
    v144.i64[0] = v33;
    v144.i64[1] = DWORD1(v33);
    *(&a4->Description + 4) = vorrq_s8(vshll_n_s32(*&v32, 0x20uLL), v144);
    *(&a4[1].Description + 4) = (LODWORD(v37) | (LODWORD(v38) << 32));
    BYTE4(a4[2].Kind) = 0;
LABEL_139:
    v64 = *&a4[2].Description;
    if (v64 == 0.0)
    {
      return result;
    }

    v145.i64[0] = 0x4300000043000000;
    v145.i64[1] = 0x4300000043000000;
    v217 = vmulq_f32(*a1, v145);
    v218 = vmul_f32(*(a1 + 16), 0x4300000043000000);

    LOBYTE(v222) = 0;
    v146 = specialized AnimatorState.update(_:at:environment:)(&v217, a3, v30);
    v114 = AGGraphGetCurrentAttribute();
    v65 = *MEMORY[0x1E698D3F8];
    if (v114 == v65)
    {
      LODWORD(v113) = 0;
    }

    else
    {
      LODWORD(v113) = v114;
    }

    v110 = &type metadata instantiation cache for TupleTypeDescription;
    if (v146)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_198;
      }

      goto LABEL_145;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_200;
    }

LABEL_158:
    v156 = *(v110 + 616);
    if (*(v156 + 16) >= 0x43uLL)
    {
      if (*(v156 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v222) = v113;
        BYTE4(v222) = v114 == v65;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_193;
    }

    __break(1u);
LABEL_202:
    swift_once();
LABEL_150:
    v149 = *(&static Signpost.animationState + 1);
    v23 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v60 = HIBYTE(word_1ED5283E8);
    v150 = byte_1ED5283EA;
    a4 = static os_signpost_type_t.end.getter();
    v222 = __PAIR128__(v149, v23);
    LOBYTE(v223.Kind) = v63;
    BYTE1(v223.Kind) = v60;
    BYTE2(v223.Kind) = v150;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_192;
    }

    v189 = a1;
    v151 = one-time initialization token for _signpostLog;

    if (v151 != -1)
    {
      swift_once();
    }

    v62 = _signpostLog;
    v188 = v64;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    *&a1 = COERCE_DOUBLE(swift_allocObject());
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v65)
    {
      break;
    }

    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    swift_once();
  }

  v64 = COERCE_DOUBLE(AGGraphGetAttributeGraph());
  v4 = AGGraphGetCounter();

  v152 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v152;
  *(a1 + 32) = v4;
  v153 = AGGraphGetCurrentAttribute();
  if (v153 == v65)
  {
    goto LABEL_204;
  }

  v154 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v154;
  *(a1 + 72) = v153;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  *(a1 + 112) = 0x6465766C6F736552;
  *(a1 + 120) = 0xEF656E6F746F7544;
  if (v60)
  {
    LOBYTE(v202) = a4;
    v205 = &dword_18D018000;
    v204 = v62;
    *&v222 = v23;
    *(&v222 + 1) = v149;
    LOBYTE(v223.Kind) = v63;
    v212.i64[0] = "Animation: (%p) [%d] %{public}@ ended";
    v212.i64[1] = 37;
    v213.i8[0] = 2;
    v203 = *&a1;
    v155 = v191;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v197 + 8))(v155, v201);
    goto LABEL_191;
  }

  v157 = v23;
  if (v23 == 20)
  {
    v158 = 3;
  }

  else
  {
    v158 = 4;
  }

  v110 = bswap32(v23) | (4 * (v23 >> 16));
  LODWORD(v113) = a4;
  v159 = v197 + 16;
  v192 = *(v197 + 16);
  v160 = (v192)(v200, v191, v201);
  v161 = 0;
  v212.i8[0] = 1;
  v199 = *&v158;
  v195 = (16 * v158);
  v197 = v159;
  v196 = (v159 - 8);
  v194 = a1 + 32;
  v193 = v157;
  do
  {
    v198 = &v177;
    MEMORY[0x1EEE9AC00](v160);
    *&v64 = &v177 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
    v163 = (*&v64 + 8);
    v164 = v199;
    v165 = (*&v64 + 8);
    do
    {
      *(v165 - 1) = 0;
      *v165 = 0;
      v165 += 16;
      --*&v164;
    }

    while (v164 != 0.0);
    v4 = v194 + 40 * v161;
    v65 = *&v199;
    while (1)
    {
      v166 = *(a1 + 16);
      if (v161 == v166)
      {
        break;
      }

      if (v161 >= v166)
      {
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        v175 = v114;
        swift_once();
        v114 = v175;
LABEL_145:
        v147 = *(v110 + 616);
        if (*(v147 + 16) >= 0x43uLL)
        {
          if (*(v147 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v222) = v113;
            BYTE4(v222) = v114 == v65;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v190 = a4;
          v148 = one-time initialization token for animationState;

          if (v148 != -1)
          {
            goto LABEL_202;
          }

          goto LABEL_150;
        }

        __break(1u);
LABEL_200:
        v176 = v114;
        swift_once();
        v114 = v176;
        goto LABEL_158;
      }

      ++v161;
      outlined init with copy of AnyTrackedValue(v4, &v222);
      v167 = v223.Description;
      a4 = v224.Kind;
      __swift_project_boxed_opaque_existential_1(&v222, v223.Description);
      *(v163 - 1) = CVarArg.kdebugValue(_:)(v110 | v113, v167);
      *v163 = v168 & 1;
      v163 += 16;
      v114 = __swift_destroy_boxed_opaque_existential_1(&v222);
      v4 += 40;
      if (!--v65)
      {
        goto LABEL_176;
      }
    }

    v212.i8[0] = 0;
LABEL_176:
    v169 = v193;
    if (v193 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (*(*&v64 + 8) == 1)
    {
      kdebug_trace_string();
    }

    if (*(*&v64 + 24) == 1)
    {
      kdebug_trace_string();
    }

    if (*(*&v64 + 40) == 1)
    {
      kdebug_trace_string();
    }

    if (v169 != 20 && *(*&v64 + 56) == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v170 = v196->Kind;
    a4 = v200;
    v171 = v201;
    (v196->Kind)(v200, v201);
    v172 = __swift_project_value_buffer(v171, static OSSignpostID.continuation);
    v160 = (v192)(a4, v172, v171);
  }

  while ((v212.i8[0] & 1) != 0);

  v173 = v201;
  v170(v200, v201);
  v170(v191, v173);
LABEL_191:

  a1 = v189;
LABEL_192:
  specialized AnimatorState.removeListeners()();

  v190[2].Description = 0;
LABEL_193:
  v174.i64[0] = 0x3C0000003C000000;
  v174.i64[1] = 0x3C0000003C000000;
  *a1 = vmulq_f32(v217, v174);
  *(a1 + 16) = vmul_f32(v218, 0x3C0000003C000000);
  *(a1 + 24) = 1;
  return result;
}

void specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t *a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, unint64_t a6, void (*a7)(uint64_t, float, float, float, float), unint64_t *a8, uint64_t (*a9)(void), uint64_t a10, void (*a11)(void))
{
  v203 = a8;
  v196 = a7;
  LODWORD(v20) = a3;
  v226 = *MEMORY[0x1E69E9840];
  v206 = type metadata accessor for OSSignpostID();
  v202 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  Counter = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v178 - v26;
  MEMORY[0x1EEE9AC00](v28);
  *&v204 = &v178 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v178 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v205 = &v178 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v195 = &v178 - v36;
  if (*(a4 + 32))
  {
    Value = AGGraphGetValue();
    if (v38)
    {
      v39 = *Value;
    }

    else
    {
      v39 = -INFINITY;
    }
  }

  else
  {
    v39 = -INFINITY;
  }

  v40 = &static Color.Resolved.legacyInterpolation;
  if (specialized AnimatableAttributeHelper.checkReset()())
  {
    *(a1 + 16) = 1;
    goto LABEL_9;
  }

  if (*(a1 + 16) == 1)
  {
LABEL_9:
    LODWORD(v15) = *a1;
    LODWORD(v14) = *(a1 + 1);
    LODWORD(v13) = *(a1 + 2);
    LODWORD(v12) = *(a1 + 3);
    if (one-time initialization token for legacyInterpolation != -1)
    {
      goto LABEL_192;
    }

    goto LABEL_10;
  }

LABEL_127:
  v144 = *(a4 + 32);
  if (!v144)
  {
    return;
  }

  v204 = *a1;
  v145 = one-time initialization token for legacyInterpolation;

  if (v145 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v146 = *v40;
  v199 = a5;
  if (v146)
  {
    v147 = &v226;
  }

  else
  {
    v218.i8[0] = 2;
    ResolvedGradient.ColorSpace.convertIn(_:)(&v212, *&v204, DWORD1(v204), *(&v204 + 2), *(&v204 + 3));
    v147 = &v227;
  }

  v148.i64[0] = 0x4300000043000000;
  v148.i64[1] = 0x4300000043000000;
  v211 = vmulq_f32(v147[-16], v148);
  LOBYTE(v212) = 0;
  v149 = specialized AnimatorState.update(_:at:environment:)(&v211, LODWORD(v20), v39);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v60 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v151 = 0;
  }

  else
  {
    v151 = CurrentAttribute;
  }

  if (v149)
  {
    if (one-time initialization token for enabledCategories != -1)
    {
      v176 = CurrentAttribute;
      swift_once();
      CurrentAttribute = v176;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
        LODWORD(v212) = v151;
        BYTE4(v212) = CurrentAttribute == v60;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      v193 = a4;
      v194 = a1;
      v152 = one-time initialization token for animationState;
      v192 = v144;

      if (v152 == -1)
      {
        goto LABEL_144;
      }

      goto LABEL_196;
    }

    __break(1u);
    goto LABEL_194;
  }

  if (one-time initialization token for enabledCategories != -1)
  {
LABEL_194:
    v177 = CurrentAttribute;
    swift_once();
    CurrentAttribute = v177;
  }

  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
  {
    if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
      LODWORD(v212) = v151;
      BYTE4(v212) = CurrentAttribute == v60;
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
      AGGraphAddTraceEvent();
    }

    v162 = specialized AnimatorState.nextUpdate()();
    goto LABEL_187;
  }

  __break(1u);
LABEL_196:
  swift_once();
LABEL_144:
  v59 = *(&static Signpost.animationState + 1);
  v58 = static Signpost.animationState;
  v153 = word_1ED5283E8;
  v154 = HIBYTE(word_1ED5283E8);
  v155 = byte_1ED5283EA;
  v55 = static os_signpost_type_t.end.getter();
  v212 = v58;
  v213 = v59;
  LOBYTE(v214) = v153;
  BYTE1(v214) = v154;
  BYTE2(v214) = v155;
  if ((Signpost.isEnabled.getter() & 1) == 0)
  {

    goto LABEL_186;
  }

  v156 = one-time initialization token for _signpostLog;

  if (v156 != -1)
  {
    swift_once();
  }

  v197 = a6;
  v57 = _signpostLog;
  OSSignpostID.init(log:object:)();
  type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
  v20 = COERCE_DOUBLE(swift_allocObject());
  *(*&v20 + 16) = xmmword_18DDAF080;
  if (AGGraphGetCurrentAttribute() == v60)
  {
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    swift_once();
    goto LABEL_27;
  }

  a6 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  v157 = MEMORY[0x1E69E6870];
  *(*&v20 + 56) = MEMORY[0x1E69E6810];
  *(*&v20 + 64) = v157;
  *(*&v20 + 32) = Counter;
  v158 = AGGraphGetCurrentAttribute();
  if (v158 == v60)
  {
    goto LABEL_198;
  }

  v159 = MEMORY[0x1E69E76D0];
  *(*&v20 + 96) = MEMORY[0x1E69E7668];
  *(*&v20 + 104) = v159;
  *(*&v20 + 72) = v158;
  *(*&v20 + 136) = MEMORY[0x1E69E6158];
  *(*&v20 + 144) = lazy protocol witness table accessor for type String and conformance String();
  v160 = v197;
  *(*&v20 + 112) = v199;
  *(*&v20 + 120) = v160;
  if (v154)
  {
    v210 = v55;
    v209 = &dword_18D018000;
    v208 = *&v57;
    v212 = v58;
    v213 = v59;
    LOBYTE(v214) = v153;
    v218 = "Animation: (%p) [%d] %{public}@ ended";
    v219 = 37;
    LOBYTE(v220) = 2;
    v207 = v20;
    v161 = v195;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v202 + 8))(v161, v206);
    goto LABEL_185;
  }

  if (v58 == 20)
  {
    v40 = 3;
  }

  else
  {
    v40 = 4;
  }

  a5 = bswap32(v58) | (4 * WORD1(v58));
  a4 = v55;
  a2 = v202 + 16;
  v197 = *(v202 + 16);
  v163 = v197(v205, v195, v206);
  a6 = 0;
  v218.i8[0] = 1;
  *&v204 = v40;
  v200 = (16 * v40);
  v202 = a2;
  v201 = (a2 - 8);
  v199 = (*&v20 + 32);
  v198 = v58;
  do
  {
    v203 = &v178;
    MEMORY[0x1EEE9AC00](v163);
    v27 = &v178 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = v27 + 8;
    v165 = v204;
    v166 = v27 + 8;
    do
    {
      *(v166 - 1) = 0;
      *v166 = 0;
      v166 += 16;
      --v165;
    }

    while (v165);
    Counter = &v199[40 * a6];
    a1 = v204;
    while (1)
    {
      v167 = *(*&v20 + 16);
      if (a6 == v167)
      {
        break;
      }

      if (a6 >= v167)
      {
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        swift_once();
LABEL_10:
        swift_beginAccess();
        v41 = *v40;
        v201 = a2;
        if ((v41 & 1) == 0)
        {
          LOBYTE(v224) = 2;
          ResolvedGradient.ColorSpace.convertIn(_:)(&v212, *&v15, LODWORD(v14), *&v13, *&v12);
          LODWORD(v14) = HIDWORD(v212);
          LODWORD(v15) = v212;
          LODWORD(v12) = HIDWORD(v213);
          LODWORD(v13) = v213;
        }

        v11 = *&v15 * 128.0;
        v16 = *&v14 * 128.0;
        v42 = *&v13 * 128.0;
        *&v15 = *&v12 * 128.0;
        if (*(a4 + 28))
        {
          goto LABEL_126;
        }

        v14 = v39;
        LODWORD(v12) = *(a4 + 12);
        LODWORD(v13) = *(a4 + 16);
        v43 = *(a4 + 20);
        v44 = *(a4 + 24);
        if (v11 == *&v12 && v16 == *&v13 && v42 == v43 && *&v15 == v44)
        {
          v39 = v14;
          goto LABEL_126;
        }

        v200 = Counter;
        v178 = v27;
        v179 = v32;
        v197 = a6;
        LODWORD(v198) = LODWORD(v20);
        v184 = v42;
        AGGraphClearUpdate();
        v45 = *(a4 + 16);
        v224 = *a4;
        *v225 = v45;
        *&v225[12] = *(a4 + 28);
        v46 = v203;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v224, &v212, v203, a9, a10, type metadata accessor for AnimatableAttributeHelper);
        v47 = *AGGraphGetValue();

        v185 = a9;
        v192 = a10;
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v46, a9, a10, type metadata accessor for AnimatableAttributeHelper);
        AGGraphSetUpdate();
        v183 = v47;
        v48 = Transaction.effectiveAnimation.getter(v47);
        if (v48)
        {
          Counter = v48;
          v182 = *&v15;
          LODWORD(v20) = v198;
          goto LABEL_22;
        }

        v40 = &static Color.Resolved.legacyInterpolation;
        LODWORD(v20) = v198;
        Counter = v201;
        if (!v201)
        {

          v39 = v14;
          v42 = v184;
          a6 = v197;
          goto LABEL_126;
        }

        v182 = *&v15;

LABEL_22:
        v199 = a5;
        v49 = *&v225[16];
        v50 = v11 - *&v12;
        v51 = v16 - *&v13;
        v52 = v184 - v43;
        v53 = v182 - v44;
        v39 = *AGGraphGetValue();
        v194 = a1;
        v193 = a4;
        v180 = Counter;
        if (!v49)
        {
          v218 = v192;
          a11(0);
          type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>.Type, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>);
          v65 = swift_dynamicCast();
          if (v65)
          {
            v66 = v212;
          }

          else
          {
            v66 = 0;
          }

          if (v65)
          {
            v67 = v213;
          }

          else
          {
            v67 = 0;
          }

          v68 = v183;

          v181 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVyS2fGGG_Tt4B5(v69, v68, v66, v67, v50, v51, v52, v53, v39);
          v70 = AGGraphGetCurrentAttribute();
          v71 = v70;
          v72.i32[0] = *MEMORY[0x1E698D3F8];
          if (v70 == *MEMORY[0x1E698D3F8])
          {
            v73 = 0;
          }

          else
          {
            v73 = v70;
          }

          LODWORD(v201) = v73;
          (*(*Counter + 96))(&v218);
          v74 = v218;
          v75 = v219;
          v76 = v221;
          v77 = v222;
          v211.i64[0] = 0x7FF8000000000000;
          v209 = 0x7FF8000000000000;
          v208 = 1.0;
          v207 = NAN;
          v212 = v218;
          v213 = v219;
          v78 = v220;
          v214 = v220;
          v215 = v221;
          v216 = v222;
          LODWORD(v204) = v223;
          LOBYTE(v217) = v223;
          static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v212, &v211, &v209, &v208, &v207);
          v12 = v211.i64[0];
          v13 = v209;
          v14 = v208;
          v15 = v207;
          if (one-time initialization token for enabledCategories != -1)
          {
            swift_once();
          }

          if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
          {
            __break(1u);
          }

          else
          {
            if (*(static CustomEventTrace.enabledCategories + 98) == 1 && (v79 = static CustomEventTrace.recorder) != 0)
            {
              LODWORD(v191) = v72.i32[0];
              *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
              v20 = *(v79 + 16);
              LODWORD(v212) = v201;
              BYTE4(v212) = v71 == v72.i32[0];
              v213 = v192;
              v214 = v12;
              v215 = v13;
              v216 = *&v14;
              v217 = v15;
              type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
              v201 = v80;

              v81 = *&v20;
              LODWORD(v20) = v198;
              v82 = v81;
              AGGraphAddTraceEvent();
              v72.i32[0] = v191;
              outlined consume of Animation.Function(v74, v75, v78, v76, v77, v204);
            }

            else
            {
              outlined consume of Animation.Function(v74, v75, v78, v76, v77, v204);
            }

            v88 = one-time initialization token for animationState;
            v74 = v181;

            *&v15 = v182;
            if (v88 == -1)
            {
              goto LABEL_49;
            }
          }

          swift_once();
LABEL_49:
          v90 = *(&static Signpost.animationState + 1);
          v89 = static Signpost.animationState;
          LOBYTE(Counter) = word_1ED5283E8;
          v91 = HIBYTE(word_1ED5283E8);
          v92 = byte_1ED5283EA;
          v93 = static os_signpost_type_t.begin.getter();
          v212 = v89;
          v213 = v90;
          LOBYTE(v214) = Counter;
          BYTE1(v214) = v91;
          BYTE2(v214) = v92;
          if (Signpost.isEnabled.getter())
          {
            v94 = one-time initialization token for _signpostLog;

            if (v94 != -1)
            {
              goto LABEL_206;
            }

            goto LABEL_51;
          }

          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v203, v185, v192, type metadata accessor for AnimatableAttributeHelper);
          a4 = v193;
          *(v193 + 32) = v74;
          goto LABEL_123;
        }

        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v224, &v212, v203, v185, v192, type metadata accessor for AnimatableAttributeHelper);
        LOBYTE(v212) = 0;
        v181 = v49;
        specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(Counter, v183, v50, v51, v52, v53, v39);
        v54 = AGGraphGetCurrentAttribute();
        LODWORD(v20) = v54;
        v55 = *MEMORY[0x1E698D3F8];
        if (v54 == *MEMORY[0x1E698D3F8])
        {
          v56 = 0;
        }

        else
        {
          v56 = v54;
        }

        LODWORD(v201) = v56;
        (*(*Counter + 96))(&v218);
        v57 = v218;
        v58 = v219;
        Counter = v220;
        v59 = v221;
        a6 = v222;
        v60 = v223;
        v211.i64[0] = 0x7FF8000000000000;
        v209 = 0x7FF8000000000000;
        v208 = 1.0;
        v207 = NAN;
        v212 = v218;
        v213 = v219;
        v214 = v220;
        v215 = v221;
        v216 = v222;
        LOBYTE(v217) = v223;
        static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v212, &v211, &v209, &v208, &v207);
        v12 = v211.i64[0];
        v13 = v209;
        v14 = v208;
        v15 = v207;
        if (one-time initialization token for enabledCategories != -1)
        {
          goto LABEL_199;
        }

LABEL_27:
        if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
        {
          __break(1u);
LABEL_201:
          swift_once();
          goto LABEL_60;
        }

        if (*(static CustomEventTrace.enabledCategories + 98) == 1)
        {
          v200 = a6;
          v61 = static CustomEventTrace.recorder;
          if (static CustomEventTrace.recorder)
          {
            LODWORD(v191) = v60;
            *(*(static CustomEventTrace.recorder + 24) + 4) = 1602;
            v62 = *(v61 + 16);
            LODWORD(v212) = v201;
            BYTE4(v212) = LODWORD(v20) == v55;
            v213 = v192;
            v214 = v12;
            v215 = v13;
            v216 = *&v14;
            v217 = v15;
            type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
            v201 = v63;

            v64 = v62;
            AGGraphAddTraceEvent();
            outlined consume of Animation.Function(v57, v58, Counter, v59, v200, v191);

            goto LABEL_59;
          }

          v83 = v57;
          v84 = v58;
          v85 = Counter;
          v86 = v59;
          v87 = v200;
        }

        else
        {
          v83 = v57;
          v84 = v58;
          v85 = Counter;
          v86 = v59;
          v87 = a6;
        }

        outlined consume of Animation.Function(v83, v84, v85, v86, v87, v60);
LABEL_59:
        LODWORD(v58) = v55;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v224, &v212, v203, v185, v192, type metadata accessor for AnimatableAttributeHelper);
        LODWORD(v20) = v198;
        *&v15 = v182;
        Counter = v180;
        if (one-time initialization token for animationState != -1)
        {
          goto LABEL_201;
        }

LABEL_60:
        v89 = *(&static Signpost.animationState + 8);
        v72 = static Signpost.animationState;
        v90 = word_1ED5283E8;
        v91 = HIBYTE(word_1ED5283E8);
        v104 = byte_1ED5283EA;
        v93 = static os_signpost_type_t.event.getter();
        v212 = v72;
        v213 = v89;
        LOBYTE(v214) = v90;
        BYTE1(v214) = v91;
        BYTE2(v214) = v104;
        if ((Signpost.isEnabled.getter() & 1) == 0)
        {
          v116 = v203;
          v117 = v185;
          v118 = v192;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v203, v185, v192, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v116, v117, v118, type metadata accessor for AnimatableAttributeHelper);
          a4 = v193;
          a5 = v199;
LABEL_68:
          a6 = v197;
          goto LABEL_125;
        }

        LODWORD(v201) = v93;
        outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(&v224, &v212, v203, v185, v192, type metadata accessor for AnimatableAttributeHelper);
        if (one-time initialization token for _signpostLog != -1)
        {
          swift_once();
        }

        v105 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v20 = COERCE_DOUBLE(swift_allocObject());
        *(*&v20 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v58)
        {
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          swift_once();
LABEL_51:
          LODWORD(v204) = v93;
          v95 = _signpostLog;
          OSSignpostID.init(log:object:)();
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
          v32 = swift_allocObject();
          *(v32 + 1) = xmmword_18DDAF080;
          if (AGGraphGetCurrentAttribute() == v72.i32[0])
          {
            __break(1u);
          }

          else
          {
            v96 = AGGraphGetAttributeGraph();
            v97 = AGGraphGetCounter();

            v98 = MEMORY[0x1E69E6870];
            *(v32 + 7) = MEMORY[0x1E69E6810];
            *(v32 + 8) = v98;
            *(v32 + 4) = v97;
            v99 = AGGraphGetCurrentAttribute();
            if (v99 != v72.i32[0])
            {
              v100 = MEMORY[0x1E69E76D0];
              *(v32 + 12) = MEMORY[0x1E69E7668];
              *(v32 + 13) = v100;
              *(v32 + 18) = v99;
              *(v32 + 17) = MEMORY[0x1E69E6158];
              *(v32 + 18) = lazy protocol witness table accessor for type String and conformance String();
              a5 = v199;
              v101 = v197;
              *(v32 + 14) = v199;
              *(v32 + 15) = v101;
              if (v91)
              {
                LOBYTE(v207) = v204;
                v211.i64[0] = &dword_18D018000;
                v209 = v95;
                v212 = v89;
                v213 = v90;
                LOBYTE(v214) = Counter;
                v218 = "Animation: (%p) [%d] %{public}@ started";
                v219 = 39;
                LOBYTE(v220) = 2;
                v208 = *&v32;
                v102 = v178;
                specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
                v103 = v181;

                (*(v202 + 8))(v102, v206);

                outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v203, v185, v192, type metadata accessor for AnimatableAttributeHelper);
                a4 = v193;
                *(v193 + 32) = v103;
                a6 = v197;
LABEL_124:
                Counter = v180;
                goto LABEL_125;
              }

              v132 = v89.u8[0];
              if (v89.u8[0] == 20)
              {
                a2 = 3;
              }

              else
              {
                a2 = 4;
              }

              Counter = bswap32(v89.u16[0]) | (4 * HIWORD(v89.i32[0]));
              a5 = v204;
              v40 = v202 + 16;
              v186 = *(v202 + 16);
              v133 = v186(v200, v178, v206);
              a4 = 0;
              v218.i8[0] = 1;
              *&v204 = a2;
              v190 = 16 * a2;
              v187 = v40;
              v191 = (v40 - 8);
              v189 = v32 + 32;
              v188 = v132;
              do
              {
                v201 = &v178;
                MEMORY[0x1EEE9AC00](v133);
                v27 = &v178 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
                a1 = (v27 + 8);
                v135 = v204;
                v136 = v27 + 8;
                do
                {
                  *(v136 - 1) = 0;
                  *v136 = 0;
                  v136 += 16;
                  --v135;
                }

                while (v135);
                a6 = &v189[40 * a4];
                v20 = *&v204;
                while (1)
                {
                  v137 = *(v32 + 2);
                  if (a4 == v137)
                  {
                    break;
                  }

                  if (a4 >= v137)
                  {
                    goto LABEL_191;
                  }

                  ++a4;
                  outlined init with copy of AnyTrackedValue(a6, &v212);
                  a2 = v215;
                  v40 = __swift_project_boxed_opaque_existential_1(&v212, v215);
                  *(a1 - 1) = CVarArg.kdebugValue(_:)(Counter | a5, a2);
                  *a1 = v138 & 1;
                  a1 += 2;
                  __swift_destroy_boxed_opaque_existential_1(&v212);
                  a6 += 40;
                  --*&v20;
                  if (v20 == 0.0)
                  {
                    goto LABEL_108;
                  }
                }

                v218.i8[0] = 0;
LABEL_108:
                v139 = v188;
                if (v188 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                LODWORD(v20) = v198;
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

                if (v139 != 20 && v27[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                a2 = *v191;
                v140 = v200;
                v40 = v206;
                (*v191)(v200, v206);
                v141 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
                v133 = v186(v140, v141, v40);
              }

              while ((v218.i8[0] & 1) != 0);
              v142 = v181;

              v143 = v206;
              (a2)(v200, v206);
              (a2)(v178, v143);

              outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v203, v185, v192, type metadata accessor for AnimatableAttributeHelper);
              a4 = v193;
              *(v193 + 32) = v142;
LABEL_123:
              a6 = v197;
              a5 = v199;
              goto LABEL_124;
            }
          }

          __break(1u);
        }

        v93 = v58;
        v106 = AGGraphGetAttributeGraph();
        v107 = AGGraphGetCounter();

        v108 = MEMORY[0x1E69E6870];
        *(*&v20 + 56) = MEMORY[0x1E69E6810];
        *(*&v20 + 64) = v108;
        *(*&v20 + 32) = v107;
        v109 = AGGraphGetCurrentAttribute();
        if (v109 == v93)
        {
          goto LABEL_205;
        }

        v110 = MEMORY[0x1E69E76D0];
        *(*&v20 + 96) = MEMORY[0x1E69E7668];
        *(*&v20 + 104) = v110;
        *(*&v20 + 72) = v109;
        *(*&v20 + 136) = MEMORY[0x1E69E6158];
        *(*&v20 + 144) = lazy protocol witness table accessor for type String and conformance String();
        v111 = v197;
        *(*&v20 + 112) = v199;
        *(*&v20 + 120) = v111;
        if (v91)
        {
          LOBYTE(v207) = v201;
          v211.i64[0] = &dword_18D018000;
          v209 = v105;
          v212 = v72;
          v213 = v89;
          LOBYTE(v214) = v90;
          v218 = "Animation: (%p) [%d] %{public}@ updated";
          v219 = 39;
          LOBYTE(v220) = 2;
          v208 = v20;
          v112 = v179;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          v113 = v203;
          v114 = v185;
          v115 = v192;
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v203, v185, v192, type metadata accessor for AnimatableAttributeHelper);
          outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v113, v114, v115, type metadata accessor for AnimatableAttributeHelper);
          (*(v202 + 8))(v112, v206);

          a4 = v193;
          a5 = v199;
          LODWORD(v20) = v198;
          goto LABEL_68;
        }

        if (v72.u8[0] == 20)
        {
          a2 = 3;
        }

        else
        {
          a2 = 4;
        }

        v27 = (bswap32(v72.u16[0]) | (4 * HIWORD(v72.i32[0])));
        a6 = v201;
        v40 = v202 + 16;
        v186 = *(v202 + 16);
        v119 = v186(v204, v179, v206);
        a4 = 0;
        v218.i8[0] = 1;
        v201 = a2;
        v190 = 16 * a2;
        v187 = v40;
        v191 = (v40 - 8);
        v189 = (*&v20 + 32);
        v188 = v72.u8[0];
        do
        {
          v200 = &v178;
          MEMORY[0x1EEE9AC00](v119);
          Counter = &v178 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
          a5 = Counter + 8;
          v121 = v201;
          v122 = (Counter + 8);
          do
          {
            *(v122 - 1) = 0;
            *v122 = 0;
            v122 += 16;
            v121 = (v121 - 1);
          }

          while (v121);
          v32 = &v189[40 * a4];
          a1 = v201;
          while (1)
          {
            v123 = *(*&v20 + 16);
            if (a4 == v123)
            {
              break;
            }

            if (a4 >= v123)
            {
              goto LABEL_190;
            }

            ++a4;
            outlined init with copy of AnyTrackedValue(v32, &v212);
            a2 = v215;
            v40 = __swift_project_boxed_opaque_existential_1(&v212, v215);
            *(a5 - 8) = CVarArg.kdebugValue(_:)(v27 | a6, a2);
            *a5 = v124 & 1;
            a5 += 16;
            __swift_destroy_boxed_opaque_existential_1(&v212);
            v32 += 40;
            a1 = (a1 - 1);
            if (!a1)
            {
              goto LABEL_81;
            }
          }

          v218.i8[0] = 0;
LABEL_81:
          v125 = v188;
          if (v188 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          if (*(Counter + 8) == 1)
          {
            kdebug_trace_string();
          }

          if (*(Counter + 24) == 1)
          {
            kdebug_trace_string();
          }

          if (*(Counter + 40) == 1)
          {
            kdebug_trace_string();
          }

          if (v125 != 20 && *(Counter + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v40 = *v191;
          v126 = v204;
          a2 = v206;
          (*v191)(v204, v206);
          v127 = __swift_project_value_buffer(a2, static OSSignpostID.continuation);
          v119 = v186(v126, v127, a2);
        }

        while ((v218.i8[0] & 1) != 0);
        v128 = v203;
        v129 = v185;
        v130 = v192;
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v203, v185, v192, type metadata accessor for AnimatableAttributeHelper);
        outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v224, v128, v129, v130, type metadata accessor for AnimatableAttributeHelper);
        v131 = v206;
        (v40)(v204, v206);
        (v40)(v179, v131);

        a4 = v193;
        a6 = v197;
        a5 = v199;
        LODWORD(v20) = v198;
        Counter = v180;
LABEL_125:
        specialized AnimatorState.addListeners(transaction:)(v183);

        a1 = v194;
        v40 = &static Color.Resolved.legacyInterpolation;
        v42 = v184;
LABEL_126:
        *(a4 + 12) = LODWORD(v11) | (LODWORD(v16) << 32);
        *(a4 + 20) = LODWORD(v42) | (LODWORD(v15) << 32);
        *(a4 + 28) = 0;
        goto LABEL_127;
      }

      ++a6;
      outlined init with copy of AnyTrackedValue(Counter, &v212);
      v168 = v215;
      a2 = v216;
      v169 = __swift_project_boxed_opaque_existential_1(&v212, v215);
      v170 = v168;
      v40 = v169;
      *(v32 - 1) = CVarArg.kdebugValue(_:)(a5 | a4, v170);
      *v32 = v171 & 1;
      v32 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v212);
      Counter += 40;
      a1 = (a1 - 1);
      if (!a1)
      {
        goto LABEL_170;
      }
    }

    v218.i8[0] = 0;
LABEL_170:
    v172 = v198;
    if (v198 == 20)
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

    if (v172 != 20 && v27[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    a2 = *v201;
    v173 = v205;
    v40 = v206;
    (*v201)(v205, v206);
    v174 = __swift_project_value_buffer(v40, static OSSignpostID.continuation);
    v163 = v197(v173, v174, v40);
  }

  while ((v218.i8[0] & 1) != 0);

  v175 = v206;
  (a2)(v205, v206);
  (a2)(v195, v175);
LABEL_185:

LABEL_186:
  specialized AnimatorState.removeListeners()();

  *(v193 + 32) = 0;
  a1 = v194;
LABEL_187:
  v196(v162, v211.f32[0], v211.f32[1], v211.f32[2], v211.f32[3]);

  *(a1 + 16) = 1;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x657A69534743, 0xE600000000000000, outlined init with copy of AnimatableAttributeHelper<CGSize>, outlined destroy of AnimatableAttributeHelper<CGSize>, type metadata accessor for CGSize, &lazy cache variable for type metadata for CGSize.Type, type metadata accessor for CGSize);
}

{
  return specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(a1, a2, a3, a4, 0x746E696F504743, 0xE700000000000000, outlined init with copy of AnimatableAttributeHelper<CGPoint>, outlined destroy of AnimatableAttributeHelper<CGPoint>, type metadata accessor for CGPoint, &lazy cache variable for type metadata for CGPoint.Type, type metadata accessor for CGPoint);
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, unint64_t a6, char *a7, void (*a8)(unsigned __int128 *), uint64_t (*a9)(void), unint64_t *a10, void (*a11)(uint64_t))
{
  v207 = a8;
  v231 = *MEMORY[0x1E69E9840];
  v212 = type metadata accessor for OSSignpostID();
  v208 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v209 = v190 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  Counter = v190 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v210 = v190 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v190 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v211 = v190 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v202 = v190 - v34;
  if (*(a4 + 40))
  {
    Value = AGGraphGetValue();
    if (v36)
    {
      v37 = *Value;
    }

    else
    {
      v37 = -INFINITY;
    }
  }

  else
  {
    v37 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 16) = 1;
  }

  else if (*(a1 + 16) != 1)
  {
    goto LABEL_122;
  }

  v13 = *a1;
  v14 = *(a1 + 8);
  if (*(a4 + 32))
  {
    goto LABEL_121;
  }

  v12 = *(a4 + 16);
  v11 = *(a4 + 24);
  if (v13 == v12 && v14 == v11)
  {
    goto LABEL_121;
  }

  v192 = v30;
  AGGraphClearUpdate();
  v39 = *(a4 + 16);
  v227 = *a4;
  v228 = v39;
  v229 = *(a4 + 32);
  v230 = *(a4 + 48);
  (a7)(&v227, &v222);
  v40 = *AGGraphGetValue();

  v207(&v227);
  AGGraphSetUpdate();
  v194 = v40;
  v41 = Transaction.effectiveAnimation.getter(v40);
  if (v41)
  {
    v42 = v41;
    v204 = a6;
  }

  else
  {
    if (!a2)
    {

      goto LABEL_121;
    }

    v204 = a6;

    v42 = a2;
  }

  v205 = a5;
  v43 = v13 - v12;
  v44 = v14 - v11;
  v45 = *(&v229 + 1);
  v37 = *AGGraphGetValue();
  v196 = a1;
  v195 = a4;
  v191 = a3;
  v190[1] = v42;
  if (!v45)
  {
    v61 = a9(0);
    *&v217.f64[0] = v61;
    type metadata accessor for CGRect.Type(0, a10, a11);
    type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == AnimatablePair<CGFloat, CGFloat>>.Type, type metadata accessor for AnimatablePair<CGFloat, CGFloat>);
    v62 = swift_dynamicCast();
    if (v62)
    {
      v63 = v222;
    }

    else
    {
      v63 = 0;
    }

    if (v62)
    {
      v64 = *(&v222 + 1);
    }

    else
    {
      v64 = 0;
    }

    v54 = v194;

    v193 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(v65, v54, v63, v64, v43, v44, v37);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v67 = CurrentAttribute;
    LODWORD(v54) = *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v68 = 0;
    }

    else
    {
      v68 = CurrentAttribute;
    }

    (*(*v42 + 96))(&v217);
    v69 = v217;
    v70 = v218;
    v71 = v219;
    v72 = v220;
    *&v216 = NAN;
    v215 = NAN;
    v214 = 0x3FF0000000000000;
    v213 = NAN;
    v222 = v217;
    v223 = *&v218;
    v224 = *&v219;
    v225 = v220;
    LODWORD(v210) = v221;
    LOBYTE(v226) = v221;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v222, &v216, &v215, &v214, &v213);
    v11 = *&v216;
    v12 = v215;
    v73 = v214;
    v74 = v213;
    if (one-time initialization token for enabledCategories != -1)
    {
      v206 = v214;
      *&v203 = v213;
      swift_once();
      v74 = *&v203;
      v73 = v206;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
      goto LABEL_192;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v206 = v71;
      v75 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v76 = v61;
        v77 = *(v75 + 16);
        LODWORD(v222) = v68;
        BYTE4(v222) = v67 == v54;
        *(&v222 + 1) = v76;
        v223 = v11;
        v224 = v12;
        v225 = v73;
        v226 = v74;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
        v203 = v78;

        v79 = v72;
        v80 = v77;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(*&v69.f64[0], *&v69.f64[1], v70, v206, v79, v210);

        goto LABEL_84;
      }

      v87 = *&v69.f64[1];
      v86 = *&v69.f64[0];
      v88 = v70;
      v89 = v206;
    }

    else
    {
      v87 = *&v69.f64[1];
      v86 = *&v69.f64[0];
      v88 = v70;
      v89 = v71;
    }

    outlined consume of Animation.Function(v86, v87, v88, v89, v72, v210);
LABEL_84:
    v126 = one-time initialization token for animationState;

    if (v126 == -1)
    {
LABEL_85:
      v91 = *(&static Signpost.animationState + 1);
      v90 = static Signpost.animationState;
      v93 = word_1ED5283E8;
      v95 = HIBYTE(word_1ED5283E8);
      v127 = byte_1ED5283EA;
      LODWORD(v97) = static os_signpost_type_t.begin.getter();
      v222 = __PAIR128__(v91, v90);
      LOBYTE(v223) = v93;
      BYTE1(v223) = v95;
      BYTE2(v223) = v127;
      if ((Signpost.isEnabled.getter() & 1) == 0)
      {
        v137 = v193;

        v207(&v227);
        a4 = v195;
        *(v195 + 5) = v137;
        goto LABEL_119;
      }

      v128 = one-time initialization token for _signpostLog;

      if (v128 != -1)
      {
        goto LABEL_195;
      }

      goto LABEL_87;
    }

LABEL_192:
    swift_once();
    goto LABEL_85;
  }

  (a7)(&v227, &v222);
  LOBYTE(v222) = 0;
  v46 = v42;
  v193 = v45;
  specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v42, v194, v43, v44, v37);
  v47 = AGGraphGetCurrentAttribute();
  v48 = v47;
  LODWORD(v209) = *MEMORY[0x1E698D3F8];
  if (v47 == v209)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  LODWORD(v206) = v49;
  *&v203 = COERCE_DOUBLE(a9(0));
  (*(*v46 + 96))(&v217);
  v50 = *&v217.f64[1];
  v51 = v217.f64[0];
  v52 = v219;
  Counter = v220;
  LODWORD(v53) = v221;
  *&v216 = NAN;
  v215 = NAN;
  v214 = 0x3FF0000000000000;
  v213 = NAN;
  v222 = v217;
  v223 = *&v218;
  v54 = v218;
  v224 = *&v219;
  v225 = v220;
  LOBYTE(v226) = v221;
  static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v222, &v216, &v215, &v214, &v213);
  v11 = *&v216;
  v12 = v215;
  v55 = v214;
  v56 = v213;
  if (one-time initialization token for enabledCategories != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    if (*(static CustomEventTrace.enabledCategories + 2) >= 0x43uLL)
    {
      if (*(static CustomEventTrace.enabledCategories + 98) == 1)
      {
        v201 = Counter;
        Counter = static CustomEventTrace.recorder;
        if (static CustomEventTrace.recorder)
        {
          v57 = v48 == v209;
          v199 = *(static CustomEventTrace.recorder + 24);
          *(v199 + 4) = 1602;
          LODWORD(v200) = v53;
          v58 = *(Counter + 16);
          LODWORD(v222) = v206;
          BYTE4(v222) = v57;
          *(&v222 + 1) = v203;
          v223 = v11;
          v224 = v12;
          v225 = v55;
          v226 = v56;
          type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)();
          v206 = v59;

          v60 = v58;
          AGGraphAddTraceEvent();
          outlined consume of Animation.Function(*&v51, v50, v54, v52, v201, LOBYTE(v200));

          goto LABEL_45;
        }

        v81 = *&v51;
        v82 = v50;
        v83 = v54;
        v84 = v52;
        v85 = v201;
      }

      else
      {
        v81 = *&v51;
        v82 = v50;
        v83 = v54;
        v84 = v52;
        v85 = Counter;
      }

      outlined consume of Animation.Function(v81, v82, v83, v84, v85, v53);
LABEL_45:
      (a7)(&v227, &v222);
      if (one-time initialization token for animationState == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_190;
    }

    __break(1u);
LABEL_190:
    swift_once();
LABEL_46:
    v91 = *(&static Signpost.animationState + 1);
    v90 = static Signpost.animationState;
    v92 = word_1ED5283E8;
    v93 = HIBYTE(word_1ED5283E8);
    v94 = byte_1ED5283EA;
    v95 = static os_signpost_type_t.event.getter();
    v222 = __PAIR128__(v91, v90);
    LOBYTE(v223) = v92;
    BYTE1(v223) = v93;
    BYTE2(v223) = v94;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      v105 = v207;
      v207(&v227);
      v105(&v227);
      goto LABEL_81;
    }

    (a7)(&v227, &v222);
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    v96 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v209)
    {
      __break(1u);
    }

    else
    {
      v98 = AGGraphGetAttributeGraph();
      Counter = AGGraphGetCounter();

      v99 = MEMORY[0x1E69E6870];
      *(v97 + 56) = MEMORY[0x1E69E6810];
      *(v97 + 64) = v99;
      *(v97 + 32) = Counter;
      v100 = AGGraphGetCurrentAttribute();
      if (v100 != v209)
      {
        v101 = MEMORY[0x1E69E76D0];
        *(v97 + 96) = MEMORY[0x1E69E7668];
        *(v97 + 104) = v101;
        *(v97 + 72) = v100;
        *(v97 + 136) = MEMORY[0x1E69E6158];
        *(v97 + 144) = lazy protocol witness table accessor for type String and conformance String();
        a5 = v205;
        v102 = v204;
        *(v97 + 112) = v205;
        *(v97 + 120) = v102;
        if (v93)
        {
          LOBYTE(v213) = v95;
          *&v216 = COERCE_DOUBLE(&dword_18D018000);
          v215 = v96;
          *&v222 = v90;
          *(&v222 + 1) = v91;
          LOBYTE(v223) = v92;
          *&v217.f64[0] = "Animation: (%p) [%d] %{public}@ updated";
          *&v217.f64[1] = 39;
          LOBYTE(v218) = 2;
          v214 = v97;
          v103 = v192;
          specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
          v104 = v207;
          v207(&v227);
          v104(&v227);
          (*(v208 + 8))(v103, v212);

          a4 = v195;
          goto LABEL_120;
        }

        v106 = v90;
        if (v90 == 20)
        {
          v107 = 3;
        }

        else
        {
          v107 = 4;
        }

        v54 = bswap32(v90) | (4 * WORD1(v90));
        a6 = v95;
        v108 = v208 + 16;
        v197 = *(v208 + 16);
        v109 = v197(v210, v192, v212);
        v52 = 0;
        LOBYTE(v217.f64[0]) = 1;
        v209 = v107;
        v201 = (16 * v107);
        v198 = v108;
        v203 = v108 - 8;
        *&v200 = v97 + 32;
        v199 = v106;
        do
        {
          v206 = v190;
          MEMORY[0x1EEE9AC00](v109);
          a4 = v190 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
          a7 = (a4 + 8);
          v112 = v209;
          v113 = (a4 + 8);
          do
          {
            *(v113 - 1) = 0;
            *v113 = 0;
            v113 += 16;
            --v112;
          }

          while (v112);
          v114 = *&v200 + 40 * v52;
          a1 = v209;
          while (1)
          {
            v115 = *(v97 + 16);
            if (v52 == v115)
            {
              break;
            }

            if (v52 >= v115)
            {
              goto LABEL_179;
            }

            ++v52;
            outlined init with copy of AnyTrackedValue(v114, &v222);
            v116 = *&v224;
            v117 = __swift_project_boxed_opaque_existential_1(&v222, *&v224);
            v118 = v116;
            v107 = v117;
            *(a7 - 1) = CVarArg.kdebugValue(_:)(v54 | a6, v118);
            *a7 = v119 & 1;
            a7 += 16;
            v110 = __swift_destroy_boxed_opaque_existential_1(&v222);
            v114 += 40;
            if (!--a1)
            {
              goto LABEL_66;
            }
          }

          LOBYTE(v217.f64[0]) = 0;
LABEL_66:
          v120 = v199;
          if (v199 == 20)
          {
            OSSignpostID.rawValue.getter();
          }

          kdebug_trace();
          if (*(a4 + 8) == 1)
          {
            kdebug_trace_string();
          }

          if (*(a4 + 24) == 1)
          {
            kdebug_trace_string();
          }

          if (*(a4 + 40) == 1)
          {
            kdebug_trace_string();
          }

          if (v120 != 20 && *(a4 + 56) == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v121 = *v203;
          v122 = v210;
          v107 = v212;
          (*v203)(v210, v212);
          v123 = __swift_project_value_buffer(v107, static OSSignpostID.continuation);
          v109 = v197(v122, v123, v107);
        }

        while ((LOBYTE(v217.f64[0]) & 1) != 0);
        v124 = v207;
        v207(&v227);
        v124(&v227);
        v125 = v212;
        v121(v210, v212);
        v121(v192, v125);

LABEL_81:
        a4 = v195;
        a5 = v205;
        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_195:
    swift_once();
LABEL_87:
    LODWORD(v210) = v97;
    v129 = COERCE_DOUBLE(_signpostLog);
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() == v54)
    {
      __break(1u);
LABEL_197:
      __break(1u);
    }

    v130 = AGGraphGetAttributeGraph();
    v131 = AGGraphGetCounter();

    v132 = MEMORY[0x1E69E6870];
    *(a1 + 56) = MEMORY[0x1E69E6810];
    *(a1 + 64) = v132;
    *(a1 + 32) = v131;
    v133 = AGGraphGetCurrentAttribute();
    if (v133 == v54)
    {
      goto LABEL_197;
    }

    v134 = MEMORY[0x1E69E76D0];
    *(a1 + 96) = MEMORY[0x1E69E7668];
    *(a1 + 104) = v134;
    *(a1 + 72) = v133;
    *(a1 + 136) = MEMORY[0x1E69E6158];
    *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
    a5 = v205;
    v135 = v204;
    *(a1 + 112) = v205;
    *(a1 + 120) = v135;
    if (v95)
    {
      LOBYTE(v213) = v210;
      *&v216 = COERCE_DOUBLE(&dword_18D018000);
      v215 = v129;
      *&v222 = v90;
      *(&v222 + 1) = v91;
      LOBYTE(v223) = v93;
      *&v217.f64[0] = "Animation: (%p) [%d] %{public}@ started";
      *&v217.f64[1] = 39;
      LOBYTE(v218) = 2;
      v214 = a1;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();
      v136 = v193;

      (*(v208 + 8))(Counter, v212);

      v207(&v227);
      a4 = v195;
      *(v195 + 5) = v136;
    }

    else
    {
      v138 = v90;
      v139 = v90 == 20 ? 3 : 4;
      v54 = bswap32(v90) | (4 * WORD1(v90));
      a6 = v210;
      v107 = v208 + 16;
      v192 = *(v208 + 16);
      v140 = v192(v209, Counter, v212);
      v52 = 0;
      LOBYTE(v217.f64[0]) = 1;
      v210 = v139;
      v201 = (16 * v139);
      v197 = v107;
      v203 = v107 - 8;
      *&v200 = a1 + 32;
      v199 = Counter;
      v198 = v138;
      do
      {
        v206 = v190;
        MEMORY[0x1EEE9AC00](v140);
        a7 = v190 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
        a4 = (a7 + 8);
        v142 = v210;
        v143 = a7 + 8;
        do
        {
          *(v143 - 1) = 0;
          *v143 = 0;
          v143 += 16;
          --v142;
        }

        while (v142);
        v144 = *&v200 + 40 * v52;
        v145 = v210;
        while (1)
        {
          v146 = *(a1 + 16);
          if (v52 == v146)
          {
            break;
          }

          if (v52 >= v146)
          {
            goto LABEL_180;
          }

          ++v52;
          outlined init with copy of AnyTrackedValue(v144, &v222);
          v147 = *&v224;
          v148 = __swift_project_boxed_opaque_existential_1(&v222, *&v224);
          v149 = v147;
          v107 = v148;
          *(a4 - 8) = CVarArg.kdebugValue(_:)(v54 | a6, v149);
          *a4 = v150 & 1;
          a4 += 16;
          v110 = __swift_destroy_boxed_opaque_existential_1(&v222);
          v144 += 40;
          if (!--v145)
          {
            goto LABEL_104;
          }
        }

        LOBYTE(v217.f64[0]) = 0;
LABEL_104:
        v151 = v198;
        if (v198 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        v152 = v199;
        if (a7[8] == 1)
        {
          kdebug_trace_string();
        }

        if (a7[24] == 1)
        {
          kdebug_trace_string();
        }

        if (a7[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v151 != 20 && a7[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v153 = *v203;
        v154 = v209;
        v107 = v212;
        (*v203)(v209, v212);
        v155 = __swift_project_value_buffer(v107, static OSSignpostID.continuation);
        v140 = v192(v154, v155, v107);
      }

      while ((LOBYTE(v217.f64[0]) & 1) != 0);
      v156 = v193;

      v157 = v212;
      v153(v209, v212);
      v153(v152, v157);

      v207(&v227);
      a4 = v195;
      *(v195 + 5) = v156;
LABEL_119:
      a5 = v205;
    }

LABEL_120:
    specialized AnimatorState.addListeners(transaction:)(v194);

    a1 = v196;
    a6 = v204;
    a3 = v191;
LABEL_121:
    *(a4 + 16) = v13;
    *(a4 + 24) = v14;
    *(a4 + 32) = 0;
LABEL_122:
    a7 = *(a4 + 40);
    if (!a7)
    {
      return result;
    }

    v205 = a5;
    v217 = *a1;

    LOBYTE(v227) = 0;
    v158 = specialized AnimatorState.update(_:at:environment:)(&v217, a3, v37);
    v110 = AGGraphGetCurrentAttribute();
    v54 = *MEMORY[0x1E698D3F8];
    if (v110 == v54)
    {
      LODWORD(v52) = 0;
    }

    else
    {
      LODWORD(v52) = v110;
    }

    v107 = &type metadata instantiation cache for TupleTypeDescription;
    if (v158)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_181;
      }

      goto LABEL_128;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_183;
    }

LABEL_141:
    v169 = *(v107 + 616);
    if (*(v169 + 16) >= 0x43uLL)
    {
      if (*(v169 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v227) = v52;
        BYTE4(v227) = v110 == v54;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();

      goto LABEL_176;
    }

    __break(1u);
LABEL_185:
    swift_once();
LABEL_133:
    v53 = *(&static Signpost.animationState + 1);
    v52 = static Signpost.animationState;
    v48 = word_1ED5283E8;
    Counter = HIBYTE(word_1ED5283E8);
    v161 = byte_1ED5283EA;
    v50 = static os_signpost_type_t.end.getter();
    v227 = __PAIR128__(v53, v52);
    LOBYTE(v228) = v48;
    BYTE1(v228) = Counter;
    BYTE2(v228) = v161;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_175;
    }

    v162 = one-time initialization token for _signpostLog;

    if (v162 != -1)
    {
      swift_once();
    }

    v195 = a4;
    v196 = a1;
    v51 = COERCE_DOUBLE(_signpostLog);
    v201 = a7;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    a1 = swift_allocObject();
    *(a1 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v54)
    {
      break;
    }

    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v201 = v55;
    v200 = v56;
    swift_once();
    v56 = v200;
    v55 = v201;
  }

  a7 = AGGraphGetAttributeGraph();
  v163 = AGGraphGetCounter();

  v164 = MEMORY[0x1E69E6870];
  *(a1 + 56) = MEMORY[0x1E69E6810];
  *(a1 + 64) = v164;
  *(a1 + 32) = v163;
  v165 = AGGraphGetCurrentAttribute();
  if (v165 == v54)
  {
    goto LABEL_187;
  }

  v166 = MEMORY[0x1E69E76D0];
  *(a1 + 96) = MEMORY[0x1E69E7668];
  *(a1 + 104) = v166;
  *(a1 + 72) = v165;
  *(a1 + 136) = MEMORY[0x1E69E6158];
  *(a1 + 144) = lazy protocol witness table accessor for type String and conformance String();
  v167 = v204;
  *(a1 + 112) = v205;
  *(a1 + 120) = v167;
  if (Counter)
  {
    LOBYTE(v213) = v50;
    *&v216 = COERCE_DOUBLE(&dword_18D018000);
    v215 = v51;
    *&v227 = v52;
    *(&v227 + 1) = v53;
    LOBYTE(v228) = v48;
    *&v222 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v222 + 1) = 37;
    LOBYTE(v223) = 2;
    v214 = a1;
    v168 = v202;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()();

    (*(v208 + 8))(v168, v212);
    goto LABEL_174;
  }

  v170 = v52;
  if (v52 == 20)
  {
    v107 = 3;
  }

  else
  {
    v107 = 4;
  }

  v54 = bswap32(v52) | (4 * WORD1(v52));
  LODWORD(v52) = v50;
  v171 = v208 + 16;
  v203 = *(v208 + 16);
  v172 = (v203)(v211, v202, v212);
  a4 = 0;
  LOBYTE(v222) = 1;
  v210 = v107;
  v206 = 16 * v107;
  v208 = v171;
  v207 = (v171 - 8);
  v205 = a1 + 32;
  v204 = v170;
  do
  {
    v209 = v190;
    MEMORY[0x1EEE9AC00](v172);
    a7 = v190 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
    v174 = a7 + 8;
    v175 = v210;
    v176 = a7 + 8;
    do
    {
      *(v176 - 1) = 0;
      *v176 = 0;
      v176 += 16;
      --v175;
    }

    while (v175);
    v177 = v205 + 40 * a4;
    a6 = v210;
    while (1)
    {
      v178 = *(a1 + 16);
      if (a4 == v178)
      {
        break;
      }

      if (a4 >= v178)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        v188 = v110;
        swift_once();
        v110 = v188;
LABEL_128:
        v159 = *(v107 + 616);
        if (*(v159 + 16) >= 0x43uLL)
        {
          if (*(v159 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v227) = v52;
            BYTE4(v227) = v110 == v54;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v204 = a6;
          v160 = one-time initialization token for animationState;

          if (v160 != -1)
          {
            goto LABEL_185;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_183:
        v189 = v110;
        swift_once();
        v110 = v189;
        goto LABEL_141;
      }

      ++a4;
      outlined init with copy of AnyTrackedValue(v177, &v227);
      v179 = *(&v228 + 1);
      v180 = __swift_project_boxed_opaque_existential_1(&v227, *(&v228 + 1));
      v181 = v179;
      v107 = v180;
      *(v174 - 1) = CVarArg.kdebugValue(_:)(v54 | v52, v181);
      *v174 = v182 & 1;
      v174 += 16;
      v110 = __swift_destroy_boxed_opaque_existential_1(&v227);
      v177 += 40;
      if (!--a6)
      {
        goto LABEL_159;
      }
    }

    LOBYTE(v222) = 0;
LABEL_159:
    v183 = v204;
    if (v204 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a7[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a7[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a7[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v183 != 20 && a7[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v184 = *v207;
    v185 = v211;
    v107 = v212;
    (*v207)(v211, v212);
    v186 = __swift_project_value_buffer(v107, static OSSignpostID.continuation);
    v172 = (v203)(v185, v186, v107);
  }

  while ((v222 & 1) != 0);

  v187 = v212;
  v184(v211, v212);
  v184(v202, v187);
LABEL_174:

  a1 = v196;
  a4 = v195;
LABEL_175:
  specialized AnimatorState.removeListeners()();

  *(a4 + 40) = 0;
LABEL_176:
  *a1 = v217;
  *(a1 + 16) = 1;
  return result;
}

Swift::Void __swiftcall AnimatableFrameAttributeVFD.destroy()()
{
  if (*(v0 + 72))
  {
    specialized AnimatorState.removeListeners()();
  }
}

_DWORD *AnimatableAttributeHelper.phase.getter@<X0>(_DWORD *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = *result;
  return result;
}

uint64_t (*AnimatableAttributeHelper.phase.modify(_DWORD *a1))(_DWORD *a1)
{
  a1[2] = *v1;
  *a1 = *AGGraphGetValue();
  return GraphHost.Data.phase.modify;
}

uint64_t (*AnimatableAttributeHelper.$phase.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return DefaultLayoutResponderFilter.$children.modify;
}

double AnimatableAttributeHelper.time.getter@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  *a1 = *Value;
  return result;
}

uint64_t (*AnimatableAttributeHelper.time.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = *(v1 + 4);
  *a1 = *AGGraphGetValue();
  return GraphHost.Data.time.modify;
}

_DWORD *(*AnimatableAttributeHelper.$time.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return SecondaryLayerGeometryQuery.$layoutDirection.modify;
}

uint64_t AnimatableAttributeHelper.transaction.getter()
{
  specialized AnimatableAttributeHelper.transaction.getter();
}

uint64_t key path getter for AnimatableAttributeHelper.transaction : <A>AnimatableAttributeHelper<A>@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AnimatableAttributeHelper();
  *a1 = specialized AnimatableAttributeHelper.transaction.getter();
}

uint64_t key path setter for AnimatableAttributeHelper.transaction : <A>AnimatableAttributeHelper<A>()
{
  type metadata accessor for AnimatableAttributeHelper();

  specialized AnimatableAttributeHelper.transaction.setter();
}

uint64_t AnimatableAttributeHelper.transaction.setter()
{
  specialized AnimatableAttributeHelper.transaction.setter();
}

uint64_t (*AnimatableAttributeHelper.transaction.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = *(v1 + 8);
  *a1 = *AGGraphGetValue();

  return GraphHost.Data.transaction.modify;
}

_DWORD *(*AnimatableAttributeHelper.$transaction.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return _ViewInputs.time.modify;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA20KeyedAnimatableArrayVyAA16_ShapeStyle_PackV3KeyVAA0V4PairVyAX4FillO0V4DataOA0_ySfAA0vW0VyA0_ySfAX6EffectV4KindOA3_OGGGGG_Tt4B5(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  type metadata accessor for AnimatorState<KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>>();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v14 + 32) = v15;
  *(v14 + 40) = 1;
  *(v14 + 80) = 1;
  *(v14 + 88) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = v15;
  *(v14 + 84) = 0;
  *(v14 + 96) = v15;
  *(v14 + 104) = v15;
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  *(v14 + 136) = v15;
  *(v14 + 16) = a1;
  *(v14 + 24) = v16;
  swift_beginAccess();
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;

  *(v14 + 120) = a5;
  *(v14 + 128) = a6;
  *(v14 + 48) = a7;
  *(v14 + 64) = a7;
  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v14 + 56) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v14 + 56) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v14 + 56) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v14 + 84) = v19;
  *(v14 + 88) = v20;
  return v14;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVy12CoreGraphics7CGFloatVAYG_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  type metadata accessor for AnimatorState<AnimatablePair<CGFloat, CGFloat>>();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v14 + 40) = 0;
  *(v14 + 92) = 1;
  *(v14 + 32) = 0;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 64) = 0;
  *(v14 + 88) = 0;
  *(v14 + 96) = v15;
  *(v14 + 104) = v15;
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  *(v14 + 136) = v15;
  *(v14 + 16) = a1;
  *(v14 + 24) = v16;
  swift_beginAccess();
  *(v14 + 32) = a5;
  *(v14 + 120) = a3;
  *(v14 + 128) = a4;
  *(v14 + 40) = a6;
  *(v14 + 48) = a7;
  *(v14 + 64) = a7;

  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v14 + 56) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v14 + 56) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v14 + 56) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v14 + 88) = v19;
  *(v14 + 92) = v20;
  return v14;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCSd_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimatorState<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = 0;
  *(v12 + 76) = 1;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = v13;
  *(v12 + 88) = v13;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  *(v12 + 32) = a5;
  *(v12 + 104) = a3;
  *(v12 + 112) = a4;
  *(v12 + 40) = a6;
  *(v12 + 56) = a6;

  v15 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v16 & 1) == 0)
  {
    if (v15 <= 0.0)
    {
      *(v12 + 48) = 0;
    }

    else
    {
      v19 = log2(v15 * 240.0);
      v20 = exp2(floor(v19 + 0.01)) * 0.00416666667;
      *(v12 + 48) = v20;
      if (v20 >= 0.0166666667)
      {

        v17 = 0;
        goto LABEL_3;
      }
    }

    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v17 = v21;
    v18 = HIDWORD(v21) & 1;

    goto LABEL_9;
  }

  v17 = 0;
  *(v12 + 48) = 0;
LABEL_3:
  LOBYTE(v18) = 1;
LABEL_9:
  *(v12 + 72) = v17;
  *(v12 + 76) = v18;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14 = type metadata accessor for ZeroVTable();
  v15 = MEMORY[0x1E69E7CA8] + 8;
  *(v12 + 64) = MEMORY[0x1E69E7CA8] + 8;
  *(v12 + 32) = v14;
  *(v12 + 128) = v15;
  *(v12 + 88) = 0;
  *(v12 + 96) = v14;
  *(v12 + 136) = 0;
  *(v12 + 140) = 1;
  *(v12 + 144) = v13;
  *(v12 + 152) = v13;
  *(v12 + 160) = 0;
  *(v12 + 168) = 0;
  *(v12 + 176) = 0;
  *(v12 + 184) = v13;
  *(v12 + 16) = a1;
  swift_beginAccess();

  outlined assign with copy of _AnyAnimatableData(a2, v12 + 32);
  swift_endAccess();
  *(v12 + 168) = a4;
  *(v12 + 176) = a5;
  *(v12 + 72) = a6;
  *(v12 + 88) = a6;
  v16 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v17 & 1) == 0)
  {
    if (v16 <= 0.0)
    {
      *(v12 + 80) = 0;
    }

    else
    {
      v20 = log2(v16 * 240.0);
      v21 = exp2(floor(v20 + 0.01)) * 0.00416666667;
      *(v12 + 80) = v21;
      if (v21 >= 0.0166666667)
      {
        outlined destroy of _AnyAnimatableData(a2);

        v18 = 0;
        goto LABEL_3;
      }
    }

    v22 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v18 = v22;
    v19 = HIDWORD(v22) & 1;

    outlined destroy of _AnyAnimatableData(a2);

    goto LABEL_9;
  }

  outlined destroy of _AnyAnimatableData(a2);

  v18 = 0;
  *(v12 + 80) = 0;
LABEL_3:
  LOBYTE(v19) = 1;
LABEL_9:
  *(v12 + 136) = v18;
  *(v12 + 140) = v19;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAA05KeyedU5ArrayVySiAA04_AnyU4DataVG12CoreGraphics7CGFloatVG_Tt4B5(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  type metadata accessor for AnimatorState<AnimatablePair<KeyedAnimatableArray<Int, _AnyAnimatableData>, CGFloat>>();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v16 + 40) = 1;
  *(v16 + 88) = 1;
  *(v16 + 108) = 1;
  *(v16 + 32) = v17;
  *(v16 + 48) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = v17;
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  *(v16 + 112) = v17;
  *(v16 + 120) = v17;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 152) = v17;
  *(v16 + 16) = a1;
  *(v16 + 24) = v18;
  swift_beginAccess();
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = a7;

  *(v16 + 136) = a5;
  *(v16 + 144) = a6;
  *(v16 + 56) = a8;
  *(v16 + 72) = a8;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v16 + 64) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v16 + 64) = v24;
      if (v24 >= 0.0166666667)
      {

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a4);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    goto LABEL_9;
  }

  v21 = 0;
  *(v16 + 64) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v16 + 104) = v21;
  *(v16 + 108) = v22;
  return v16;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAVyAyVyAyVyAVyA2YGAZGGGGG_Tt4B5(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>>>();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 188) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 144) = 0u;
  *(v12 + 160) = 0u;
  *(v12 + 172) = 0u;
  *(v12 + 192) = v13;
  *(v12 + 200) = v13;
  *(v12 + 208) = 0;
  *(v12 + 216) = 0;
  *(v12 + 224) = 0;
  *(v12 + 232) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = a2[1];
  *(v12 + 32) = *a2;
  v16 = a2[2];
  v17 = a2[3];
  *(v12 + 48) = v15;
  *(v12 + 64) = v16;
  *(v12 + 80) = v17;
  *(v12 + 216) = a4;
  *(v12 + 224) = a5;
  *(v12 + 96) = a6;
  *(v12 + 112) = a6;

  v18 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v19 & 1) == 0)
  {
    if (v18 <= 0.0)
    {
      *(v12 + 104) = 0;
    }

    else
    {
      v22 = log2(v18 * 240.0);
      v23 = exp2(floor(v22 + 0.01)) * 0.00416666667;
      *(v12 + 104) = v23;
      if (v23 >= 0.0166666667)
      {

        v20 = 0;
        goto LABEL_3;
      }
    }

    v24 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v20 = v24;
    v21 = HIDWORD(v24) & 1;

    goto LABEL_9;
  }

  v20 = 0;
  *(v12 + 104) = 0;
LABEL_3:
  LOBYTE(v21) = 1;
LABEL_9:
  *(v12 + 184) = v20;
  *(v12 + 188) = v21;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfC12CoreGraphics7CGFloatV_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = 0;
  *(v12 + 76) = 1;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = v13;
  *(v12 + 88) = v13;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  *(v12 + 32) = a5;
  *(v12 + 104) = a3;
  *(v12 + 112) = a4;
  *(v12 + 40) = a6;
  *(v12 + 56) = a6;

  v15 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v16 & 1) == 0)
  {
    if (v15 <= 0.0)
    {
      *(v12 + 48) = 0;
    }

    else
    {
      v19 = log2(v15 * 240.0);
      v20 = exp2(floor(v19 + 0.01)) * 0.00416666667;
      *(v12 + 48) = v20;
      if (v20 >= 0.0166666667)
      {

        v17 = 0;
        goto LABEL_3;
      }
    }

    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v17 = v21;
    v18 = HIDWORD(v21) & 1;

    goto LABEL_9;
  }

  v17 = 0;
  *(v12 + 48) = 0;
LABEL_3:
  LOBYTE(v18) = 1;
LABEL_9:
  *(v12 + 72) = v17;
  *(v12 + 76) = v18;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16ShaderVectorDataV_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<ShaderVectorData>, lazy protocol witness table accessor for type ShaderVectorData and conformance ShaderVectorData, &type metadata for ShaderVectorData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = v13;
  *(v12 + 76) = 1;
  *(v12 + 56) = 0;
  *(v12 + 64) = v13;
  *(v12 + 72) = 0;
  *(v12 + 80) = v13;
  *(v12 + 88) = v13;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  *(v12 + 32) = a2;

  *(v12 + 104) = a4;
  *(v12 + 112) = a5;
  *(v12 + 40) = a6;
  *(v12 + 56) = a6;
  v15 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v16 & 1) == 0)
  {
    if (v15 <= 0.0)
    {
      *(v12 + 48) = 0;
    }

    else
    {
      v19 = log2(v15 * 240.0);
      v20 = exp2(floor(v19 + 0.01)) * 0.00416666667;
      *(v12 + 48) = v20;
      if (v20 >= 0.0166666667)
      {

        v17 = 0;
        goto LABEL_3;
      }
    }

    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v17 = v21;
    v18 = HIDWORD(v21) & 1;

    goto LABEL_9;
  }

  v17 = 0;
  *(v12 + 48) = 0;
LABEL_3:
  LOBYTE(v18) = 1;
LABEL_9:
  *(v12 + 72) = v17;
  *(v12 + 76) = v18;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVy12CoreGraphics7CGFloatVAYGAZG_Tt4B5Tm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), double a6, double a7, double a8, double a9, double a10)
{
  a5(0);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E7CC0];
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v19 + 124) = 1;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 108) = 0u;
  *(v19 + 128) = v20;
  *(v19 + 136) = v20;
  *(v19 + 144) = 0;
  *(v19 + 152) = 0;
  *(v19 + 160) = 0;
  *(v19 + 168) = v20;
  *(v19 + 16) = a1;
  *(v19 + 24) = v21;
  swift_beginAccess();
  *(v19 + 32) = a6;
  *(v19 + 40) = a7;
  *(v19 + 48) = a8;
  *(v19 + 152) = a3;
  *(v19 + 160) = a4;
  *(v19 + 56) = a9;
  *(v19 + 64) = a10;
  *(v19 + 80) = a10;

  v22 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v23 & 1) == 0)
  {
    if (v22 <= 0.0)
    {
      *(v19 + 72) = 0;
    }

    else
    {
      v26 = log2(v22 * 240.0);
      v27 = exp2(floor(v26 + 0.01)) * 0.00416666667;
      *(v19 + 72) = v27;
      if (v27 >= 0.0166666667)
      {

        v24 = 0;
        goto LABEL_3;
      }
    }

    v28 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v24 = v28;
    v25 = HIDWORD(v28) & 1;

    goto LABEL_9;
  }

  v24 = 0;
  *(v19 + 72) = 0;
LABEL_3:
  LOBYTE(v25) = 1;
LABEL_9:
  *(v19 + 120) = v24;
  *(v19 + 124) = v25;
  return v19;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySdAVy12CoreGraphics7CGFloatVAYGG_Tt4B5Tm(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), double a6, double a7, double a8, double a9)
{
  a5(0);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 108) = 1;
  *(v17 + 32) = 0;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0;
  *(v17 + 112) = v18;
  *(v17 + 120) = v18;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = 0;
  *(v17 + 152) = v18;
  *(v17 + 16) = a1;
  *(v17 + 24) = v19;
  swift_beginAccess();
  *(v17 + 32) = a6;
  *(v17 + 40) = a7;
  *(v17 + 48) = a8;
  *(v17 + 136) = a3;
  *(v17 + 144) = a4;
  *(v17 + 56) = a9;
  *(v17 + 72) = a9;

  v20 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v21 & 1) == 0)
  {
    if (v20 <= 0.0)
    {
      *(v17 + 64) = 0;
    }

    else
    {
      v24 = log2(v20 * 240.0);
      v25 = exp2(floor(v24 + 0.01)) * 0.00416666667;
      *(v17 + 64) = v25;
      if (v25 >= 0.0166666667)
      {

        v22 = 0;
        goto LABEL_3;
      }
    }

    v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v22 = v26;
    v23 = HIDWORD(v26) & 1;

    goto LABEL_9;
  }

  v22 = 0;
  *(v17 + 64) = 0;
LABEL_3:
  LOBYTE(v23) = 1;
LABEL_9:
  *(v17 + 104) = v22;
  *(v17 + 108) = v23;
  return v17;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAZGAA22ResolvedGradientVectorVG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 80) = 1;
  *(v12 + 160) = 1;
  *(v12 + 168) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 64) = v13;
  *(v12 + 72) = 0;
  *(v12 + 76) = 0;
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0;
  *(v12 + 144) = v13;
  *(v12 + 152) = 0;
  *(v12 + 156) = 0;
  *(v12 + 164) = 0;
  *(v12 + 176) = v13;
  *(v12 + 184) = v13;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 216) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  v28[0] = *(v12 + 32);
  v28[1] = v15;
  v28[2] = v16;
  v29 = *(v12 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v27, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  v17 = *(a2 + 16);
  *(v12 + 32) = *a2;
  v18 = *(a2 + 32);
  *(v12 + 48) = v17;
  *(v12 + 64) = v18;
  *(v12 + 80) = *(a2 + 48);
  outlined destroy of Slice<IndexSet>(v28, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  *(v12 + 200) = a4;
  *(v12 + 208) = a5;
  *(v12 + 88) = a6;
  *(v12 + 104) = a6;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v12 + 96) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v12 + 96) = v24;
      if (v24 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

    goto LABEL_9;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);

  v21 = 0;
  *(v12 + 96) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v12 + 164) = v21;
  *(v12 + 168) = v22;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAA22ResolvedGradientVectorVGAZG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = 0;
  *(v12 + 64) = 1;
  *(v12 + 144) = 1;
  *(v12 + 172) = 1;
  *(v12 + 40) = 0;
  *(v12 + 48) = v13;
  *(v12 + 56) = 0;
  *(v12 + 60) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *(v12 + 128) = v13;
  *(v12 + 136) = 0;
  *(v12 + 140) = 0;
  *(v12 + 168) = 0;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 176) = v13;
  *(v12 + 184) = v13;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 216) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  v28[0] = *(v12 + 32);
  v28[1] = v15;
  v28[2] = v16;
  v29 = *(v12 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v27, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  v17 = *(a2 + 16);
  *(v12 + 32) = *a2;
  v18 = *(a2 + 32);
  *(v12 + 48) = v17;
  *(v12 + 64) = v18;
  *(v12 + 80) = *(a2 + 48);
  outlined destroy of Slice<IndexSet>(v28, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  *(v12 + 200) = a4;
  *(v12 + 208) = a5;
  *(v12 + 88) = a6;
  *(v12 + 104) = a6;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v12 + 96) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v12 + 96) = v24;
      if (v24 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

    goto LABEL_9;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);

  v21 = 0;
  *(v12 + 96) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v12 + 168) = v21;
  *(v12 + 172) = v22;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVyAVy12CoreGraphics7CGFloatVAYGAA22ResolvedGradientVectorVGAVyS2dGG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 32) = 0;
  *(v12 + 64) = 1;
  *(v12 + 144) = 1;
  *(v12 + 172) = 1;
  *(v12 + 40) = 0;
  *(v12 + 48) = v13;
  *(v12 + 56) = 0;
  *(v12 + 60) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0;
  *(v12 + 128) = v13;
  *(v12 + 136) = 0;
  *(v12 + 140) = 0;
  *(v12 + 168) = 0;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 176) = v13;
  *(v12 + 184) = v13;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 216) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  v28[0] = *(v12 + 32);
  v28[1] = v15;
  v28[2] = v16;
  v29 = *(v12 + 80);

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v27, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  v17 = *(a2 + 16);
  *(v12 + 32) = *a2;
  v18 = *(a2 + 32);
  *(v12 + 48) = v17;
  *(v12 + 64) = v18;
  *(v12 + 80) = *(a2 + 48);
  outlined destroy of Slice<IndexSet>(v28, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  *(v12 + 200) = a4;
  *(v12 + 208) = a5;
  *(v12 + 88) = a6;
  *(v12 + 104) = a6;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v12 + 96) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v12 + 96) = v24;
      if (v24 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

    goto LABEL_9;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);

  v21 = 0;
  *(v12 + 96) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v12 + 168) = v21;
  *(v12 + 172) = v22;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA22ResolvedGradientVectorV_Tt4B5(uint64_t a1, uint64_t a2, unint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, double a8)
{
  v12 = a3;
  v15 = HIDWORD(a3);
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimatorState);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v16 + 48) = 1;
  *(v16 + 96) = 1;
  *(v16 + 104) = 1;
  *(v16 + 32) = v17;
  *(v16 + 40) = 0;
  *(v16 + 44) = 0;
  *(v16 + 72) = 0;
  *(v16 + 80) = v17;
  *(v16 + 88) = 0;
  *(v16 + 92) = 0;
  *(v16 + 100) = 0;
  *(v16 + 112) = v17;
  *(v16 + 120) = v17;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 152) = v17;
  *(v16 + 16) = a1;
  *(v16 + 24) = v18;
  swift_beginAccess();
  *(v16 + 32) = a2;
  *(v16 + 40) = v12;
  *(v16 + 44) = v15;
  *(v16 + 48) = a4 & 1;

  *(v16 + 136) = a6;
  *(v16 + 144) = a7;
  *(v16 + 56) = a8;
  *(v16 + 72) = a8;
  v19 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a5));
  if ((v20 & 1) == 0)
  {
    if (v19 <= 0.0)
    {
      *(v16 + 64) = 0;
    }

    else
    {
      v23 = log2(v19 * 240.0);
      v24 = exp2(floor(v23 + 0.01)) * 0.00416666667;
      *(v16 + 64) = v24;
      if (v24 >= 0.0166666667)
      {

        v21 = 0;
        goto LABEL_3;
      }
    }

    v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a5);
    v21 = v25;
    v22 = HIDWORD(v25) & 1;

    goto LABEL_9;
  }

  v21 = 0;
  *(v16 + 64) = 0;
LABEL_3:
  LOBYTE(v22) = 1;
LABEL_9:
  *(v16 + 100) = v21;
  *(v16 + 104) = v22;
  return v16;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAA16_ShapeStyle_PackV4FillO0U4DataOAVySfAA0U5ArrayVyAVySfAX6EffectV4KindOA_OGGGG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 9;
  *(v12 + 240) = 9;
  *(v12 + 268) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 120) = 0;
  *(v12 + 128) = v13;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0u;
  *(v12 + 232) = 0;
  *(v12 + 248) = 0;
  *(v12 + 256) = v13;
  *(v12 + 264) = 0;
  *(v12 + 272) = v13;
  *(v12 + 280) = v13;
  *(v12 + 288) = 0;
  *(v12 + 296) = 0;
  *(v12 + 304) = 0;
  *(v12 + 312) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 80);
  v16 = *(v12 + 112);
  v32[4] = *(v12 + 96);
  v32[5] = v16;
  v33 = *(v12 + 128);
  v17 = *(v12 + 48);
  v18 = *(v12 + 64);
  v32[0] = *(v12 + 32);
  v32[1] = v17;
  v32[2] = v18;
  v32[3] = v15;

  _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(a2, v31, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v21 = *(a2 + 32);
  *(v12 + 80) = *(a2 + 48);
  *(v12 + 96) = v19;
  *(v12 + 112) = v20;
  *(v12 + 128) = *(a2 + 96);
  v22 = *(a2 + 16);
  *(v12 + 32) = *a2;
  *(v12 + 48) = v22;
  *(v12 + 64) = v21;
  outlined destroy of Slice<IndexSet>(v32, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  *(v12 + 296) = a4;
  *(v12 + 304) = a5;
  *(v12 + 136) = a6;
  *(v12 + 152) = a6;
  v23 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v24 & 1) == 0)
  {
    if (v23 <= 0.0)
    {
      *(v12 + 144) = 0;
    }

    else
    {
      v27 = log2(v23 * 240.0);
      v28 = exp2(floor(v27 + 0.01)) * 0.00416666667;
      *(v12 + 144) = v28;
      if (v28 >= 0.0166666667)
      {
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

        v25 = 0;
        goto LABEL_3;
      }
    }

    v29 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v25 = v29;
    v26 = HIDWORD(v29) & 1;

    outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

    goto LABEL_9;
  }

  outlined destroy of Slice<IndexSet>(a2, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);

  v25 = 0;
  *(v12 + 144) = 0;
LABEL_3:
  LOBYTE(v26) = 1;
LABEL_9:
  *(v12 + 264) = v25;
  *(v12 + 268) = v26;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16_ShapeStyle_PackV4FillO14AnimatableDataO_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 9;
  *(v12 + 224) = 9;
  *(v12 + 232) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 184) = 0u;
  *(v12 + 200) = 0u;
  *(v12 + 216) = 0;
  *(v12 + 228) = 0;
  *(v12 + 240) = v13;
  *(v12 + 248) = v13;
  *(v12 + 256) = 0;
  *(v12 + 264) = 0;
  *(v12 + 272) = 0;
  *(v12 + 280) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(v12 + 96);
  v29[3] = *(v12 + 80);
  v29[4] = v15;
  v30 = *(v12 + 112);
  v29[0] = *(v12 + 32);
  v16 = *(v12 + 64);
  v29[1] = *(v12 + 48);
  v29[2] = v16;

  outlined init with copy of _ShapeStyle_Pack.Fill.AnimatableData(a2, v28);
  v17 = *(a2 + 32);
  v18 = *(a2 + 64);
  *(v12 + 80) = *(a2 + 48);
  *(v12 + 96) = v18;
  *(v12 + 112) = *(a2 + 80);
  v19 = *(a2 + 16);
  *(v12 + 32) = *a2;
  *(v12 + 48) = v19;
  *(v12 + 64) = v17;
  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(v29);
  *(v12 + 264) = a4;
  *(v12 + 272) = a5;
  *(v12 + 120) = a6;
  *(v12 + 136) = a6;
  v20 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v21 & 1) == 0)
  {
    if (v20 <= 0.0)
    {
      *(v12 + 128) = 0;
    }

    else
    {
      v24 = log2(v20 * 240.0);
      v25 = exp2(floor(v24 + 0.01)) * 0.00416666667;
      *(v12 + 128) = v25;
      if (v25 >= 0.0166666667)
      {
        outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(a2);

        v22 = 0;
        goto LABEL_3;
      }
    }

    v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v22 = v26;
    v23 = HIDWORD(v26) & 1;

    outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(a2);

    goto LABEL_9;
  }

  outlined destroy of _ShapeStyle_Pack.Fill.AnimatableData(a2);

  v22 = 0;
  *(v12 + 128) = 0;
LABEL_3:
  LOBYTE(v23) = 1;
LABEL_9:
  *(v12 + 228) = v22;
  *(v12 + 232) = v23;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16_ShapeStyle_PackV6EffectV4KindO14AnimatableDataO_Tt4B5(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 144) = 1;
  *(v12 + 152) = 1;
  *(v12 + 32) = 0u;
  *(v12 + 96) = 0u;
  *(v12 + 112) = 0u;
  *(v12 + 128) = 0u;
  *(v12 + 148) = 0;
  *(v12 + 160) = v13;
  *(v12 + 168) = v13;
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  *(v12 + 200) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v15;
  *(v12 + 57) = *(a2 + 25);
  *(v12 + 184) = a4;
  *(v12 + 192) = a5;
  *(v12 + 80) = a6;
  *(v12 + 96) = a6;

  v16 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v17 & 1) == 0)
  {
    if (v16 <= 0.0)
    {
      *(v12 + 88) = 0;
    }

    else
    {
      v20 = log2(v16 * 240.0);
      v21 = exp2(floor(v20 + 0.01)) * 0.00416666667;
      *(v12 + 88) = v21;
      if (v21 >= 0.0166666667)
      {

        v18 = 0;
        goto LABEL_3;
      }
    }

    v22 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v18 = v22;
    v19 = HIDWORD(v22) & 1;

    goto LABEL_9;
  }

  v18 = 0;
  *(v12 + 88) = 0;
LABEL_3:
  LOBYTE(v19) = 1;
LABEL_9:
  *(v12 + 148) = v18;
  *(v12 + 152) = v19;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAA16_ShapeStyle_PackV6EffectV4KindO0U4DataOG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 80) = 1;
  *(v12 + 160) = 1;
  *(v12 + 168) = 1;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = 0;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0;
  *(v12 + 164) = 0;
  *(v12 + 176) = v13;
  *(v12 + 184) = v13;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0;
  *(v12 + 208) = 0;
  *(v12 + 216) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  v15 = *(a2 + 16);
  *(v12 + 32) = *a2;
  v16 = *(a2 + 32);
  *(v12 + 48) = v15;
  *(v12 + 64) = v16;
  *(v12 + 80) = *(a2 + 48);
  *(v12 + 200) = a4;
  *(v12 + 208) = a5;
  *(v12 + 88) = a6;
  *(v12 + 104) = a6;

  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v12 + 96) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v12 + 96) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v12 + 96) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v12 + 164) = v19;
  *(v12 + 168) = v20;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA19ConcentricRectangleV14AnimatableDataV_Tt4B5(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14 = static ConcentricRectangle.Uniformity.zero.getter(v52);
  static RoundedRectangularShapeCorners.AnimatableData.zero.getter(v53, v14);
  v15 = v52[5];
  *(v12 + 96) = v52[4];
  *(v12 + 112) = v15;
  v16 = v52[7];
  *(v12 + 128) = v52[6];
  *(v12 + 144) = v16;
  v17 = v52[1];
  *(v12 + 32) = v52[0];
  *(v12 + 48) = v17;
  v18 = v52[3];
  *(v12 + 64) = v52[2];
  *(v12 + 80) = v18;
  v19 = v53[0];
  v20 = v53[1];
  v21 = v53[3];
  *(v12 + 192) = v53[2];
  *(v12 + 208) = v21;
  *(v12 + 160) = v19;
  *(v12 + 176) = v20;
  v22 = v53[4];
  v23 = v53[5];
  v24 = v53[7];
  *(v12 + 256) = v53[6];
  *(v12 + 272) = v24;
  *(v12 + 224) = v22;
  *(v12 + 240) = v23;
  *(v12 + 304) = 0;
  v25 = static ConcentricRectangle.Uniformity.zero.getter(v54);
  static RoundedRectangularShapeCorners.AnimatableData.zero.getter(v55, v25);
  v26 = v54[5];
  *(v12 + 376) = v54[4];
  *(v12 + 392) = v26;
  v27 = v54[7];
  *(v12 + 408) = v54[6];
  *(v12 + 424) = v27;
  v28 = v54[1];
  *(v12 + 312) = v54[0];
  *(v12 + 328) = v28;
  v29 = v54[3];
  *(v12 + 344) = v54[2];
  *(v12 + 360) = v29;
  v30 = v55[0];
  v31 = v55[1];
  v32 = v55[3];
  *(v12 + 472) = v55[2];
  *(v12 + 488) = v32;
  *(v12 + 440) = v30;
  *(v12 + 456) = v31;
  v33 = v55[4];
  v34 = v55[5];
  v35 = v55[7];
  *(v12 + 536) = v55[6];
  *(v12 + 552) = v35;
  *(v12 + 504) = v33;
  *(v12 + 520) = v34;
  *(v12 + 568) = 0;
  *(v12 + 572) = 1;
  *(v12 + 576) = v13;
  *(v12 + 584) = v13;
  *(v12 + 592) = 0;
  *(v12 + 600) = 0u;
  *(v12 + 616) = v13;
  *(v12 + 16) = a1;
  swift_beginAccess();
  v36 = a2[13];
  *(v12 + 224) = a2[12];
  *(v12 + 240) = v36;
  v37 = a2[15];
  *(v12 + 256) = a2[14];
  *(v12 + 272) = v37;
  v38 = a2[9];
  *(v12 + 160) = a2[8];
  *(v12 + 176) = v38;
  v39 = a2[11];
  *(v12 + 192) = a2[10];
  *(v12 + 208) = v39;
  v40 = a2[5];
  *(v12 + 96) = a2[4];
  *(v12 + 112) = v40;
  v41 = a2[7];
  *(v12 + 128) = a2[6];
  *(v12 + 144) = v41;
  v42 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v42;
  v43 = a2[3];
  *(v12 + 64) = a2[2];
  *(v12 + 80) = v43;
  *(v12 + 600) = a4;
  *(v12 + 608) = a5;
  *(v12 + 288) = a6;
  *(v12 + 304) = a6;

  v44 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v45 & 1) == 0)
  {
    if (v44 <= 0.0)
    {
      *(v12 + 296) = 0;
    }

    else
    {
      v48 = log2(v44 * 240.0);
      v49 = exp2(floor(v48 + 0.01)) * 0.00416666667;
      *(v12 + 296) = v49;
      if (v49 >= 0.0166666667)
      {

        v46 = 0;
        goto LABEL_3;
      }
    }

    v50 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v46 = v50;
    v47 = HIDWORD(v50) & 1;

    goto LABEL_9;
  }

  v46 = 0;
  *(v12 + 296) = 0;
LABEL_3:
  LOBYTE(v47) = 1;
LABEL_9:
  *(v12 + 568) = v46;
  *(v12 + 572) = v47;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVyS2fGGG_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, float a8, double a9)
{
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v18 + 40) = 0;
  *(v18 + 92) = 1;
  *(v18 + 32) = 0;
  *(v18 + 72) = 0;
  *(v18 + 80) = 0;
  *(v18 + 64) = 0;
  *(v18 + 88) = 0;
  *(v18 + 96) = v19;
  *(v18 + 104) = v19;
  *(v18 + 112) = 0;
  *(v18 + 120) = 0;
  *(v18 + 128) = 0;
  *(v18 + 136) = v19;
  *(v18 + 16) = a1;
  *(v18 + 24) = v20;
  swift_beginAccess();
  *(v18 + 32) = a5;
  *(v18 + 36) = a6;
  *(v18 + 40) = a7;
  *(v18 + 44) = a8;
  *(v18 + 120) = a3;
  *(v18 + 128) = a4;
  *(v18 + 48) = a9;
  *(v18 + 64) = a9;

  v21 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v22 & 1) == 0)
  {
    if (v21 <= 0.0)
    {
      *(v18 + 56) = 0;
    }

    else
    {
      v25 = log2(v21 * 240.0);
      v26 = exp2(floor(v25 + 0.01)) * 0.00416666667;
      *(v18 + 56) = v26;
      if (v26 >= 0.0166666667)
      {

        v23 = 0;
        goto LABEL_3;
      }
    }

    v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v23 = v27;
    v24 = HIDWORD(v27) & 1;

    goto LABEL_9;
  }

  v23 = 0;
  *(v18 + 56) = 0;
LABEL_3:
  LOBYTE(v24) = 1;
LABEL_9:
  *(v18 + 88) = v23;
  *(v18 + 92) = v24;
  return v18;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVyS2fGGGG_Tt4B5(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimatorState<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 40) = 0;
  *(v12 + 104) = 1;
  *(v12 + 32) = 0;
  *(v12 + 48) = 0;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 112) = v13;
  *(v12 + 120) = v13;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 152) = v13;
  *(v12 + 16) = a1;
  *(v12 + 24) = v14;
  swift_beginAccess();
  *(v12 + 32) = *a2;
  *(v12 + 48) = *(a2 + 16);
  *(v12 + 136) = a4;
  *(v12 + 144) = a5;
  *(v12 + 56) = a6;
  *(v12 + 72) = a6;

  v15 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v16 & 1) == 0)
  {
    if (v15 <= 0.0)
    {
      *(v12 + 64) = 0;
    }

    else
    {
      v19 = log2(v15 * 240.0);
      v20 = exp2(floor(v19 + 0.01)) * 0.00416666667;
      *(v12 + 64) = v20;
      if (v20 >= 0.0166666667)
      {

        v17 = 0;
        goto LABEL_3;
      }
    }

    v21 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v17 = v21;
    v18 = HIDWORD(v21) & 1;

    goto LABEL_9;
  }

  v17 = 0;
  *(v12 + 64) = 0;
LABEL_3:
  LOBYTE(v18) = 1;
LABEL_9:
  *(v12 + 100) = v17;
  *(v12 + 104) = v18;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVyAVySfAVySfAVyS2fGGGAVy12CoreGraphics7CGFloatVAVyA0_A0_GGG_Tt4B5Tm(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), double a7)
{
  a6(0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0;
  *(v13 + 140) = 1;
  *(v13 + 32) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0;
  *(v13 + 144) = v14;
  *(v13 + 152) = v14;
  *(v13 + 160) = 0;
  *(v13 + 168) = 0;
  *(v13 + 176) = 0;
  *(v13 + 184) = v14;
  *(v13 + 16) = a1;
  *(v13 + 24) = v15;
  swift_beginAccess();
  v16 = *(a2 + 16);
  *(v13 + 32) = *a2;
  *(v13 + 48) = v16;
  *(v13 + 64) = *(a2 + 32);
  *(v13 + 168) = a4;
  *(v13 + 176) = a5;
  *(v13 + 72) = a7;
  *(v13 + 88) = a7;

  v17 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v18 & 1) == 0)
  {
    if (v17 <= 0.0)
    {
      *(v13 + 80) = 0;
    }

    else
    {
      v21 = log2(v17 * 240.0);
      v22 = exp2(floor(v21 + 0.01)) * 0.00416666667;
      *(v13 + 80) = v22;
      if (v22 >= 0.0166666667)
      {

        v19 = 0;
        goto LABEL_3;
      }
    }

    v23 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v19 = v23;
    v20 = HIDWORD(v23) & 1;

    goto LABEL_9;
  }

  v19 = 0;
  *(v13 + 80) = 0;
LABEL_3:
  LOBYTE(v20) = 1;
LABEL_9:
  *(v13 + 136) = v19;
  *(v13 + 140) = v20;
  return v13;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA16AnimatableValuesVy12CoreGraphics7CGFloatV_A2YQPG_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC0];
  *(v15 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v17 = MEMORY[0x1E69E7DE0];
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v19 = v38;
  v18 = v39;
  v20 = v37;
  v21 = *(*(v17 - 8) + 8);
  v21(&v37, v17);
  v21(&v38, v17);
  v21(&v39, v17);
  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  *(v15 + 48) = v20;
  *(v15 + 72) = 0;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v23 = v35;
  v22 = v36;
  v24 = v34;
  v21(&v34, v17);
  v21(&v35, v17);
  v21(&v36, v17);
  *(v15 + 80) = v22;
  *(v15 + 88) = v23;
  *(v15 + 96) = v24;
  *(v15 + 104) = 0;
  *(v15 + 108) = 1;
  *(v15 + 112) = v16;
  *(v15 + 120) = v16;
  *(v15 + 128) = 0;
  *(v15 + 136) = 0;
  *(v15 + 144) = 0;
  *(v15 + 152) = v16;
  *(v15 + 16) = a1;
  swift_beginAccess();
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  *(v15 + 48) = a7;
  *(v15 + 136) = a3;
  *(v15 + 144) = a4;
  *(v15 + 56) = a8;
  *(v15 + 72) = a8;

  v25 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v26 & 1) == 0)
  {
    if (v25 <= 0.0)
    {
      *(v15 + 64) = 0;
    }

    else
    {
      v29 = log2(v25 * 240.0);
      v30 = exp2(floor(v29 + 0.01)) * 0.00416666667;
      *(v15 + 64) = v30;
      if (v30 >= 0.0166666667)
      {

        v27 = 0;
        goto LABEL_3;
      }
    }

    v31 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v27 = v31;
    v28 = HIDWORD(v31) & 1;

    goto LABEL_9;
  }

  v27 = 0;
  *(v15 + 64) = 0;
LABEL_3:
  LOBYTE(v28) = 1;
LABEL_9:
  *(v15 + 104) = v27;
  *(v15 + 108) = v28;
  return v15;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA30RoundedRectangularShapeCornersV14AnimatableDataV_Tt4B5(uint64_t a1, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimatorState);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static RoundedRectangularShapeCorners.AnimatableData.zero.getter((v12 + 32), v14);
  *(v12 + 176) = 0;
  static RoundedRectangularShapeCorners.AnimatableData.zero.getter((v12 + 184), v15);
  *(v12 + 312) = 0;
  *(v12 + 316) = 1;
  *(v12 + 320) = v13;
  *(v12 + 328) = v13;
  *(v12 + 336) = 0;
  *(v12 + 344) = 0;
  *(v12 + 352) = 0;
  *(v12 + 360) = v13;
  *(v12 + 16) = a1;
  swift_beginAccess();
  v16 = a2[5];
  *(v12 + 96) = a2[4];
  *(v12 + 112) = v16;
  v17 = a2[7];
  *(v12 + 128) = a2[6];
  *(v12 + 144) = v17;
  v18 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v18;
  v19 = a2[3];
  *(v12 + 64) = a2[2];
  *(v12 + 80) = v19;
  *(v12 + 344) = a4;
  *(v12 + 352) = a5;
  *(v12 + 160) = a6;
  *(v12 + 176) = a6;

  v20 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v21 & 1) == 0)
  {
    if (v20 <= 0.0)
    {
      *(v12 + 168) = 0;
    }

    else
    {
      v24 = log2(v20 * 240.0);
      v25 = exp2(floor(v24 + 0.01)) * 0.00416666667;
      *(v12 + 168) = v25;
      if (v25 >= 0.0166666667)
      {

        v22 = 0;
        goto LABEL_3;
      }
    }

    v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v22 = v26;
    v23 = HIDWORD(v26) & 1;

    goto LABEL_9;
  }

  v22 = 0;
  *(v12 + 168) = 0;
LABEL_3:
  LOBYTE(v23) = 1;
LABEL_9:
  *(v12 + 312) = v22;
  *(v12 + 316) = v23;
  return v12;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA4EdgeOAAE6CornerO5StyleV14AnimatableDataV_Tt4B5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimatorState<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimatorState);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v18 + 124) = 1;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 108) = 0u;
  *(v18 + 128) = v19;
  *(v18 + 136) = v19;
  *(v18 + 144) = 0;
  *(v18 + 152) = 0;
  *(v18 + 160) = 0;
  *(v18 + 168) = v19;
  *(v18 + 16) = a1;
  *(v18 + 24) = v20;
  swift_beginAccess();
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a7;
  *(v18 + 152) = a3;
  *(v18 + 160) = a4;
  *(v18 + 56) = a8;
  *(v18 + 64) = a9;
  *(v18 + 80) = a9;

  v21 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2));
  if ((v22 & 1) == 0)
  {
    if (v21 <= 0.0)
    {
      *(v18 + 72) = 0;
    }

    else
    {
      v25 = log2(v21 * 240.0);
      v26 = exp2(floor(v25 + 0.01)) * 0.00416666667;
      *(v18 + 72) = v26;
      if (v26 >= 0.0166666667)
      {

        v23 = 0;
        goto LABEL_3;
      }
    }

    v27 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a2);
    v23 = v27;
    v24 = HIDWORD(v27) & 1;

    goto LABEL_9;
  }

  v23 = 0;
  *(v18 + 72) = 0;
LABEL_3:
  LOBYTE(v24) = 1;
LABEL_9:
  *(v18 + 120) = v23;
  *(v18 + 124) = v24;
  return v18;
}

uint64_t _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA14AnimatablePairVySfAVySfAVySfAVySfAVyS2fGGGGG_Tt4B5Tm(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), double a7)
{
  a6(0);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 108) = 1;
  *(v13 + 32) = 0;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  *(v13 + 112) = v14;
  *(v13 + 120) = v14;
  *(v13 + 128) = 0;
  *(v13 + 136) = 0;
  *(v13 + 144) = 0;
  *(v13 + 152) = v14;
  *(v13 + 16) = a1;
  *(v13 + 24) = v15;
  swift_beginAccess();
  *(v13 + 32) = *a2;
  *(v13 + 48) = *(a2 + 16);
  *(v13 + 136) = a4;
  *(v13 + 144) = a5;
  *(v13 + 56) = a7;
  *(v13 + 72) = a7;

  v16 = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v17 & 1) == 0)
  {
    if (v16 <= 0.0)
    {
      *(v13 + 64) = 0;
    }

    else
    {
      v20 = log2(v16 * 240.0);
      v21 = exp2(floor(v20 + 0.01)) * 0.00416666667;
      *(v13 + 64) = v21;
      if (v21 >= 0.0166666667)
      {

        v18 = 0;
        goto LABEL_3;
      }
    }

    v22 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3);
    v18 = v22;
    v19 = HIDWORD(v22) & 1;

    goto LABEL_9;
  }

  v18 = 0;
  *(v13 + 64) = 0;
LABEL_3:
  LOBYTE(v19) = 1;
LABEL_9:
  *(v13 + 104) = v18;
  *(v13 + 108) = v19;
  return v13;
}

Swift::Void __swiftcall AnimatorState.removeListeners()()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for AnimatorState.Fork();
  v39 = *(v3 - 8);
  v36 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v35 - v4;
  v6 = *(v2 + 168);
  swift_beginAccess();
  v7 = *&v6[v1];
  if (v7 >> 62)
  {
    goto LABEL_58;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = v1;
    v11 = *&v6[v1];
    if (v11 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_6:
        if (v12 < 1)
        {
          __break(1u);
          goto LABEL_66;
        }

        for (i = 0; i != v12; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x193AC03C0](i, v11);
          }

          else
          {
            v14 = *(v11 + 8 * i + 32);
          }

          (*(*v14 + 96))();
        }
      }
    }

    v1 = v10;
    *&v6[v10] = v9;
  }

  v15 = *(*v1 + 176);
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (v16 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_26;
    }

LABEL_16:
    v17 = v1;
    v18 = *(v1 + v15);
    if (v18 >> 62)
    {
      v19 = __CocoaSet.count.getter();
      if (v19)
      {
LABEL_18:
        if (v19 >= 1)
        {

          for (j = 0; j != v19; ++j)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x193AC03C0](j, v18);
            }

            else
            {
              v21 = *(v18 + 8 * j + 32);
            }

            (*(*v21 + 96))();
          }

          goto LABEL_25;
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    v1 = v17;
    *(v17 + v15) = v9;

    goto LABEL_26;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_26:
  if (one-time initialization token for v7_1 != -1)
  {
    swift_once();
  }

  v22 = static Semantics.v7_1;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      return;
    }
  }

  else if (static Semantics.forced < v22)
  {
    return;
  }

  v23 = *(*v1 + 200);
  swift_beginAccess();
  v40[0] = *(v1 + v23);
  v24 = type metadata accessor for Array();
  swift_getWitnessTable();
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    v35[1] = v24;
    v35[2] = v23;
    v35[3] = v1;
    v25 = *(v1 + v23);

    if (MEMORY[0x193ABF2C0](v26, v3))
    {
      v27 = 0;
      v37 = *(v3 + 48);
      v38 = (v39 + 16);
      v6 = (v39 + 8);
      do
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v39 + 16))(v5, v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27, v3);
          v29 = __OFADD__(v27++, 1);
          if (v29)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v34 = _ArrayBuffer._getElementSlowPath(_:)();
          if (v36 != 8)
          {
            goto LABEL_67;
          }

          v40[0] = v34;
          (*v38)(v5, v40, v3);
          swift_unknownObjectRelease();
          v29 = __OFADD__(v27++, 1);
          if (v29)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            v8 = __CocoaSet.count.getter();
            goto LABEL_3;
          }
        }

        v30 = *&v5[v37];
        v31 = *v6;

        v31(v5, v3);
        if (v30 >> 62)
        {
          v1 = __CocoaSet.count.getter();
          if (!v1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v1 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v1)
          {
            goto LABEL_37;
          }
        }

        if (v1 < 1)
        {
          goto LABEL_57;
        }

        for (k = 0; k != v1; ++k)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x193AC03C0](k, v30);
          }

          else
          {
            v33 = *(v30 + 8 * k + 32);
          }

          (*(*v33 + 96))();
        }

LABEL_37:
      }

      while (v27 != MEMORY[0x193ABF2C0](v25, v3));
    }

    swift_beginAccess();
    Array.removeAll(keepingCapacity:)(0);
    swift_endAccess();
  }
}

uint64_t specialized AnimatorState.Fork.update(time:environment:)(double a1)
{
  v2 = v1;
  v4 = v1[1];

  v31[0] = v4;
  v31[1] = AGCreateWeakAttribute();
  v32 = 0;
  v5 = v2[7];
  if (v5)
  {
    v6 = v2[8];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>();
    v8 = v7;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>>, MEMORY[0x1E69E6720]);
    v30[3] = v9;
    v30[0] = v5;
    v30[1] = v6;
    specialized Dictionary.subscript.setter(v30, v8);
  }

  v10 = *v2;
  v11 = v2[2];
  v12 = v2[3];
  v13 = *(v2 + 12);
  v27[0] = v11;
  v27[1] = v12;
  v28 = *(v2 + 2);
  v29 = v13;
  type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>();
  if (v14 == MEMORY[0x1E69E63B0])
  {
    v25[0] = v11;
    (*(*v10 + 120))(v30, v25, v31, MEMORY[0x1E69E63B0], &protocol witness table for Double, a1);
    v19 = v30[0];
  }

  else
  {
    v15 = v14;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v15 == v16)
    {
      v20 = v16;
      v25[0] = v11;
      v25[1] = v12;
      v26 = v28;
      v21 = *(*v10 + 120);
      v22 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v21(v30, v25, v31, v20, v22, a1);
    }

    else
    {
      v17 = *(*v10 + 120);
      v18 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatableArray<Float>, AnimatablePair<AnimatableArray<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, Color.ResolvedHDR._Animatable>>);
      v17(v30, v27, v31, v15, v18, a1);
    }

    v19 = v30[0];
  }

  if (v19)
  {
    outlined consume of ScrapeableContent?(v19);
    v23 = HIBYTE(v32);
  }

  else
  {
    outlined consume of ScrapeableContent?(0);
    v23 = 1;
  }

  return v23;
}

{
  v2 = v1;
  v4 = v1[1];

  v31[0] = v4;
  v31[1] = AGCreateWeakAttribute();
  v32 = 0;
  v5 = v2[7];
  if (v5)
  {
    v6 = v2[8];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>();
    v8 = v7;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
    v29[3] = v9;
    v29[0] = v5;
    v29[1] = v6;
    specialized Dictionary.subscript.setter(v29, v8);
  }

  v10 = *v2;
  v11 = v2[4];
  v26 = *(v2 + 1);
  v27 = v11;
  v22 = *(v2 + 5);
  v28 = v22;
  type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>();
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *&v23 = v26;
    (*(*v10 + 120))(v29, &v23, v31, MEMORY[0x1E69E63B0], &protocol witness table for Double, a1);
  }

  else
  {
    v13 = v12;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v13 == v14)
    {
      v17 = v14;
      v23 = v26;
      v24 = v11;
      v25 = v22;
      v18 = *(*v10 + 120);
      v19 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v18(v29, &v23, v31, v17, v19, a1);
    }

    else
    {
      v15 = *(*v10 + 120);
      v16 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>);
      v15(v29, &v26, v31, v13, v16, a1);
    }
  }

  v20 = v30 | HIBYTE(v32);

  return v20 & 1;
}

{
  v2 = v1;
  v4 = v1[1];

  v29[0] = v4;
  v29[1] = AGCreateWeakAttribute();
  v30 = 0;
  v5 = v2[9];
  if (v5)
  {
    v6 = v2[10];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>();
    v8 = v7;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>>, MEMORY[0x1E69E6720]);
    v27[3] = v9;
    v27[0] = v5;
    v27[1] = v6;
    specialized Dictionary.subscript.setter(v27, v8);
  }

  v10 = *v2;
  v11 = *(v2 + 2);
  v23 = *(v2 + 1);
  v24 = v11;
  v25 = *(v2 + 3);
  v26 = *(v2 + 64);
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>();
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *&v22[0] = v23;
    (*(*v10 + 120))(v27, v22, v29, MEMORY[0x1E69E63B0], &protocol witness table for Double, a1);
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_10:

    v17 = 1;
    goto LABEL_11;
  }

  v13 = v12;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v13 == v14)
  {
    v18 = v14;
    v22[0] = v23;
    v22[1] = v24;
    v19 = *(*v10 + 120);
    v20 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v19(v27, v22, v29, v18, v20, a1);
    if (v28)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v15 = *(*v10 + 120);
  v16 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, ResolvedGradientVector>);
  v15(v27, &v23, v29, v13, v16, a1);
  if (!v28)
  {
    goto LABEL_10;
  }

LABEL_8:

  v17 = HIBYTE(v30);
LABEL_11:

  return v17;
}

{
  v2 = v1;
  v4 = v1[1];

  v30[0] = v4;
  v30[1] = AGCreateWeakAttribute();
  v31 = 0;
  v5 = v2[9];
  if (v5)
  {
    v6 = v2[10];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>();
    v8 = v7;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
    v29 = v9;
    v27[0] = v5;
    v27[1] = v6;
    specialized Dictionary.subscript.setter(v27, v8);
  }

  v10 = *v2;
  v11 = *(v2 + 2);
  v23 = *(v2 + 1);
  v24 = v11;
  v25 = *(v2 + 3);
  v26 = v2[8];
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>();
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *&v22[0] = v23;
    (*(*v10 + 120))(v27, v22, v30, MEMORY[0x1E69E63B0], &protocol witness table for Double, a1);
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_10:

    v17 = 1;
    goto LABEL_11;
  }

  v13 = v12;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v13 == v14)
  {
    v18 = v14;
    v22[0] = v23;
    v22[1] = v24;
    v19 = *(*v10 + 120);
    v20 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v19(v27, v22, v30, v18, v20, a1);
    if (v28)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v15 = *(*v10 + 120);
  v16 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<CGFloat, CGFloat>>);
  v15(v27, &v23, v30, v13, v16, a1);
  if (!v28)
  {
    goto LABEL_10;
  }

LABEL_8:

  v17 = HIBYTE(v31);
LABEL_11:

  return v17;
}

{
  v2 = v1;
  v4 = v1[1];

  v30[0] = v4;
  v30[1] = AGCreateWeakAttribute();
  v31 = 0;
  v5 = v2[9];
  if (v5)
  {
    v6 = v2[10];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>();
    v8 = v7;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>>, MEMORY[0x1E69E6720]);
    v29 = v9;
    v27[0] = v5;
    v27[1] = v6;
    specialized Dictionary.subscript.setter(v27, v8);
  }

  v10 = *v2;
  v11 = *(v2 + 2);
  v23 = *(v2 + 1);
  v24 = v11;
  v25 = *(v2 + 3);
  v26 = v2[8];
  type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>();
  if (v12 == MEMORY[0x1E69E63B0])
  {
    *&v22[0] = v23;
    (*(*v10 + 120))(v27, v22, v30, MEMORY[0x1E69E63B0], &protocol witness table for Double, a1);
    if (v28)
    {
      goto LABEL_8;
    }

LABEL_10:

    v17 = 1;
    goto LABEL_11;
  }

  v13 = v12;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v13 == v14)
  {
    v18 = v14;
    v22[0] = v23;
    v22[1] = v24;
    v19 = *(*v10 + 120);
    v20 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v19(v27, v22, v30, v18, v20, a1);
    if (v28)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v15 = *(*v10 + 120);
  v16 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, ResolvedGradientVector>, AnimatablePair<Double, Double>>);
  v15(v27, &v23, v30, v13, v16, a1);
  if (!v28)
  {
    goto LABEL_10;
  }

LABEL_8:

  v17 = HIBYTE(v31);
LABEL_11:

  return v17;
}

{
  v2 = v1;
  v4 = v1[1];

  v28[0] = v4;
  v28[1] = AGCreateWeakAttribute();
  v29 = 0;
  v5 = v2[5];
  if (v5)
  {
    v6 = v2[6];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector, type metadata accessor for AnimationFinishingDefinitionKey);
    v8 = v7;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ResolvedGradientVector>, lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector, &type metadata for ResolvedGradientVector);
    v25[3] = v9;
    v25[0] = v5;
    v25[1] = v6;
    specialized Dictionary.subscript.setter(v25, v8);
  }

  v10 = *v2;
  v11 = v2[2];
  v12 = *(v2 + 24);
  v13 = *(v2 + 7);
  v14 = *(v2 + 32);
  v26 = v11;
  LOBYTE(v27) = v12;
  DWORD1(v27) = v13;
  BYTE8(v27) = v14;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v15 == &type metadata for ResolvedGradientVector)
  {
    v22 = v11;
    v23 = v27;
    v24 = v28[0];
    v19 = *(*v10 + 120);
    v20 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v19(v25, &v22, v28, &type metadata for ResolvedGradientVector, v20, a1);
    if (v25[0])
    {
      goto LABEL_5;
    }

LABEL_7:

    v18 = 1;
    goto LABEL_8;
  }

  v16 = *(*v10 + 120);
  v17 = lazy protocol witness table accessor for type ResolvedGradientVector and conformance ResolvedGradientVector();
  v16(v25, &v26, v28, &type metadata for ResolvedGradientVector, v17, a1);
  if (!v25[0])
  {
    goto LABEL_7;
  }

LABEL_5:

  v18 = HIBYTE(v29);
LABEL_8:

  return v18;
}

{
  v2 = v1;
  v4 = v1[1];

  v45[0] = v4;
  v45[1] = AGCreateWeakAttribute();
  v46 = 0;
  v5 = v2[15];
  if (v5)
  {
    v6 = v2[16];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>();
    v8 = v7;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>, MEMORY[0x1E69E6720]);
    *(&v39 + 1) = v9;
    *&v38 = v5;
    *(&v38 + 1) = v6;
    specialized Dictionary.subscript.setter(&v38, v8);
  }

  v10 = *v2;
  v11 = *(v2 + 6);
  v35 = *(v2 + 5);
  v36 = v11;
  v37 = v2[14];
  v12 = *(v2 + 2);
  v31 = *(v2 + 1);
  v32 = v12;
  v13 = *(v2 + 4);
  v33 = *(v2 + 3);
  v34 = v13;
  type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>();
  if (v14 == MEMORY[0x1E69E63B0])
  {
    *&v24 = v31;
    (*(*v10 + 120))(&v38, &v24, v45, MEMORY[0x1E69E63B0], &protocol witness table for Double, a1);
    if (v44)
    {
      goto LABEL_8;
    }

LABEL_10:
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    outlined destroy of Slice<IndexSet>(&v24, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
    v19 = 1;
    goto LABEL_11;
  }

  v15 = v14;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v15 == v16)
  {
    v20 = v16;
    v24 = v31;
    v25 = v32;
    v21 = *(*v10 + 120);
    v22 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v21(&v38, &v24, v45, v20, v22, a1);
    if (v44)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v17 = *(*v10 + 120);
  v18 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>);
  v17(&v38, &v31, v45, v15, v18, a1);
  if (!v44)
  {
    goto LABEL_10;
  }

LABEL_8:
  v28 = v42;
  v29 = v43;
  v30 = v44;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  outlined destroy of Slice<IndexSet>(&v24, type metadata accessor for AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>?);
  v19 = HIBYTE(v46);
LABEL_11:

  return v19;
}

{
  v2 = v1;
  v4 = v1[1];

  v38[0] = v4;
  v38[1] = AGCreateWeakAttribute();
  v39 = 0;
  v5 = v2[13];
  if (v5)
  {
    v6 = v2[14];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v8 = v7;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Fill.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData);
    *(&v33 + 1) = v9;
    *&v32 = v5;
    *(&v32 + 1) = v6;
    specialized Dictionary.subscript.setter(&v32, v8);
  }

  v10 = *v2;
  v11 = *(v2 + 4);
  v28 = *(v2 + 3);
  v29 = v11;
  v30 = *(v2 + 5);
  v31 = *(v2 + 96);
  v12 = *(v2 + 2);
  v26 = *(v2 + 1);
  v27 = v12;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v13 == &type metadata for _ShapeStyle_Pack.Fill.AnimatableData)
  {
    v20 = v26;
    v21 = v27;
    v16 = *(*v10 + 120);
    v17 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v16(&v32, &v20, v38, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v17, a1);
  }

  else
  {
    v14 = *(*v10 + 120);
    v15 = lazy protocol witness table accessor for type _ShapeStyle_Pack.Fill.AnimatableData and conformance _ShapeStyle_Pack.Fill.AnimatableData();
    v14(&v32, &v26, v38, &type metadata for _ShapeStyle_Pack.Fill.AnimatableData, v15, a1);
  }

  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v20 = v32;
  v21 = v33;
  if (v37 == 255)
  {
    outlined destroy of HitTestableEvent?(&v20, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?);
    v18 = 1;
  }

  else
  {
    outlined destroy of HitTestableEvent?(&v20, &lazy cache variable for type metadata for _ShapeStyle_Pack.Fill.AnimatableData?);
    v18 = HIBYTE(v39);
  }

  return v18;
}

{
  v2 = v1;
  v4 = v1[1];

  v29[0] = v4;
  v29[1] = AGCreateWeakAttribute();
  v30 = 0;
  v5 = v2[8];
  if (v5)
  {
    v6 = v2[9];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v8 = v7;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_ShapeStyle_Pack.Effect.Kind.AnimatableData>, lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData);
    v27[3] = v9;
    v27[0] = v5;
    v27[1] = v6;
    specialized Dictionary.subscript.setter(v27, v8);
  }

  v10 = *v2;
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  v14 = *(v2 + 56);
  v24[0] = v11;
  v24[1] = v12;
  v24[2] = v13;
  v22 = *(v2 + 5);
  v25 = v22;
  v26 = v14;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v15 == &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData)
  {
    v23[0] = v11;
    v23[1] = v12;
    v23[2] = v13;
    v23[3] = v22;
    v18 = *(*v10 + 120);
    v19 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v18(v27, v23, v29, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v19, a1);
  }

  else
  {
    v16 = *(*v10 + 120);
    v17 = lazy protocol witness table accessor for type _ShapeStyle_Pack.Effect.Kind.AnimatableData and conformance _ShapeStyle_Pack.Effect.Kind.AnimatableData();
    v16(v27, v24, v29, &type metadata for _ShapeStyle_Pack.Effect.Kind.AnimatableData, v17, a1);
  }

  v20 = v28 | HIBYTE(v30);

  return v20 & 1;
}

{
  v2 = v1;
  v4 = v1[1];

  v33[0] = v4;
  v33[1] = AGCreateWeakAttribute();
  v34 = 0;
  v5 = v2[9];
  if (v5)
  {
    v6 = v2[10];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>();
    v8 = v7;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>, MEMORY[0x1E69E6720]);
    v31[3] = v9;
    v31[0] = v5;
    v31[1] = v6;
    specialized Dictionary.subscript.setter(v31, v8);
  }

  v10 = *v2;
  v11 = v2[3];
  v12 = v2[4];
  v13 = v2[7];
  v14 = *(v2 + 64);
  LODWORD(v27[0]) = *(v2 + 4);
  v27[1] = v11;
  v27[2] = v12;
  v25 = *(v2 + 5);
  v28 = v25;
  v29 = v13;
  v30 = v14;
  type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>();
  if (v15 == MEMORY[0x1E69E63B0])
  {
    v26[0] = v27[0];
    (*(*v10 + 120))(v31, v26, v33, MEMORY[0x1E69E63B0], &protocol witness table for Double, a1);
  }

  else
  {
    v16 = v15;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v16 == v17)
    {
      v20 = v17;
      v26[0] = v27[0];
      v26[1] = v11;
      v26[2] = v12;
      v26[3] = v25;
      v21 = *(*v10 + 120);
      v22 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v21(v31, v26, v33, v20, v22, a1);
    }

    else
    {
      v18 = *(*v10 + 120);
      v19 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>);
      v18(v31, v27, v33, v16, v19, a1);
    }
  }

  v23 = v32 | HIBYTE(v34);

  return v23 & 1;
}

{
  v2 = v1;
  v4 = v1[1];

  v45[0] = v4;
  v45[1] = AGCreateWeakAttribute();
  v46 = 0;
  v5 = v2[34];
  if (v5)
  {
    v6 = v2[35];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v8 = v7;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<ConcentricRectangle.AnimatableData>, lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData, &type metadata for ConcentricRectangle.AnimatableData);
    *&__src[24] = v9;
    *__src = v5;
    *&__src[8] = v6;
    specialized Dictionary.subscript.setter(__src, v8);
  }

  v10 = *v2;
  v11 = *(v2 + 14);
  v40 = *(v2 + 13);
  v41 = v11;
  v12 = *(v2 + 16);
  v42 = *(v2 + 15);
  v43 = v12;
  v13 = *(v2 + 10);
  v36 = *(v2 + 9);
  v37 = v13;
  v14 = *(v2 + 12);
  v38 = *(v2 + 11);
  v39 = v14;
  v15 = *(v2 + 6);
  v32 = *(v2 + 5);
  v33 = v15;
  v16 = *(v2 + 8);
  v34 = *(v2 + 7);
  v35 = v16;
  v17 = *(v2 + 2);
  v28 = *(v2 + 1);
  v29 = v17;
  v18 = *(v2 + 4);
  v30 = *(v2 + 3);
  v31 = v18;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v19 == &type metadata for ConcentricRectangle.AnimatableData)
  {
    v27[0] = v28;
    v27[1] = v29;
    v22 = *(*v10 + 120);
    v23 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v22(__src, v27, v45, &type metadata for ConcentricRectangle.AnimatableData, v23, a1);
  }

  else
  {
    v20 = *(*v10 + 120);
    v21 = lazy protocol witness table accessor for type ConcentricRectangle.AnimatableData and conformance ConcentricRectangle.AnimatableData();
    v20(__src, &v28, v45, &type metadata for ConcentricRectangle.AnimatableData, v21, a1);
  }

  memcpy(v27, __src, 0x101uLL);
  v24 = _s7SwiftUI19ConcentricRectangleV14AnimatableDataVSgWOg(v27) == 1;
  v25 = v24 | HIBYTE(v46);

  return v25 & 1;
}

{
  v2 = v1;
  v4 = v1[1];

  v33[0] = v4;
  v33[1] = AGCreateWeakAttribute();
  v34 = 0;
  v5 = v2[14];
  if (v5)
  {
    v6 = v2[15];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
    v8 = v7;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
    v31[3] = v9;
    v31[0] = v5;
    v31[1] = v6;
    specialized Dictionary.subscript.setter(v31, v8);
  }

  v10 = *v2;
  v11 = *(v2 + 4);
  v27 = *(v2 + 3);
  v28 = v11;
  v12 = *(v2 + 6);
  v29 = *(v2 + 5);
  v30 = v12;
  v13 = *(v2 + 2);
  v25 = *(v2 + 1);
  v26 = v13;
  type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>();
  if (v14 == MEMORY[0x1E69E63B0])
  {
    *&v24[0] = v25;
    (*(*v10 + 120))(v31, v24, v33, MEMORY[0x1E69E63B0], &protocol witness table for Double, a1);
  }

  else
  {
    v15 = v14;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v15 == v16)
    {
      v19 = v16;
      v24[0] = v25;
      v24[1] = v26;
      v20 = *(*v10 + 120);
      v21 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v20(v31, v24, v33, v19, v21, a1);
    }

    else
    {
      v17 = *(*v10 + 120);
      v18 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>);
      v17(v31, &v25, v33, v15, v18, a1);
    }
  }

  v22 = v32 | HIBYTE(v34);

  return v22 & 1;
}

{
  v2 = v1;
  v4 = v1[1];

  v34[0] = v4;
  v34[1] = AGCreateWeakAttribute();
  v35 = 0;
  v5 = v2[15];
  if (v5)
  {
    v6 = v2[16];
    type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>();
    v8 = v7;
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>>, MEMORY[0x1E69E6720]);
    v32[3] = v9;
    v32[0] = v5;
    v32[1] = v6;
    specialized Dictionary.subscript.setter(v32, v8);
  }

  v10 = *v2;
  v11 = *(v2 + 6);
  v29 = *(v2 + 5);
  v30 = v11;
  v31 = v2[14];
  v12 = *(v2 + 2);
  v25 = *(v2 + 1);
  v26 = v12;
  v13 = *(v2 + 4);
  v27 = *(v2 + 3);
  v28 = v13;
  type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>();
  if (v14 == MEMORY[0x1E69E63B0])
  {
    *&v24[0] = v25;
    (*(*v10 + 120))(v32, v24, v34, MEMORY[0x1E69E63B0], &protocol witness table for Double, a1);
  }

  else
  {
    v15 = v14;
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v15 == v16)
    {
      v19 = v16;
      v24[0] = v25;
      v24[1] = v26;
      v20 = *(*v10 + 120);
      v21 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      v20(v32, v24, v34, v19, v21, a1);
    }

    else
    {
      v17 = *(*v10 + 120);
      v18 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatableValues<Pack{CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat, CGFloat}>>);
      v17(v32, &v25, v34, v15, v18, a1);
    }
  }

  v22 = v33 | HIBYTE(v35);

  return v22 & 1;
}

{
  v2 = v1;
  v4 = v1[1];

  v49[0] = v4;
  v49[1] = AGCreateWeakAttribute();
  v50 = 0;
  v5 = v2[18];
  if (v5)
  {
    v6 = v2[19];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v8 = v7;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<RoundedRectangularShapeCorners.AnimatableData>, lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData, &type metadata for RoundedRectangularShapeCorners.AnimatableData);
    *(&v41 + 1) = v9;
    *&v40 = v5;
    *(&v40 + 1) = v6;
    specialized Dictionary.subscript.setter(&v40, v8);
  }

  v10 = *v2;
  v11 = *(v2 + 6);
  v36 = *(v2 + 5);
  v37 = v11;
  v12 = *(v2 + 8);
  v38 = *(v2 + 7);
  v39 = v12;
  v13 = *(v2 + 2);
  v32 = *(v2 + 1);
  v33 = v13;
  v14 = *(v2 + 4);
  v34 = *(v2 + 3);
  v35 = v14;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v15 == &type metadata for RoundedRectangularShapeCorners.AnimatableData)
  {
    v23 = v32;
    v24 = v33;
    v18 = *(*v10 + 120);
    v19 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v18(&v40, &v23, v49, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v19, a1);
  }

  else
  {
    v16 = *(*v10 + 120);
    v17 = lazy protocol witness table accessor for type RoundedRectangularShapeCorners.AnimatableData and conformance RoundedRectangularShapeCorners.AnimatableData();
    v16(&v40, &v32, v49, &type metadata for RoundedRectangularShapeCorners.AnimatableData, v17, a1);
  }

  v29 = v46;
  v30 = v47;
  v31 = v48;
  v25 = v42;
  v26 = v43;
  v27 = v44;
  v28 = v45;
  v23 = v40;
  v24 = v41;
  v20 = _s7SwiftUI30RoundedRectangularShapeCornersV14AnimatableDataVSgWOg(&v23) == 1;
  v21 = v20 | HIBYTE(v50);

  return v21 & 1;
}

{
  v2 = v1;
  v4 = v1[1];

  v26[0] = v4;
  v26[1] = AGCreateWeakAttribute();
  v27 = 0;
  v5 = v2[6];
  if (v5)
  {
    v6 = v2[7];
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v8 = v7;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Edge.Corner.Style.AnimatableData>, lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData, &type metadata for Edge.Corner.Style.AnimatableData);
    v24[3] = v9;
    v24[0] = v5;
    v24[1] = v6;
    specialized Dictionary.subscript.setter(v24, v8);
  }

  v10 = *v2;
  v11 = v2[2];
  v12 = v2[3];
  v13 = v2[4];
  v14 = v2[5];
  v23[0] = v11;
  v23[1] = v12;
  v23[2] = v13;
  v23[3] = v14;
  type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
  if (v15 == &type metadata for Edge.Corner.Style.AnimatableData)
  {
    v22[0] = v11;
    v22[1] = v12;
    v22[2] = v13;
    v22[3] = v14;
    v18 = *(*v10 + 120);
    v19 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
    v18(v24, v22, v26, &type metadata for Edge.Corner.Style.AnimatableData, v19, a1);
  }

  else
  {
    v16 = *(*v10 + 120);
    v17 = lazy protocol witness table accessor for type Edge.Corner.Style.AnimatableData and conformance Edge.Corner.Style.AnimatableData();
    v16(v24, v23, v26, &type metadata for Edge.Corner.Style.AnimatableData, v17, a1);
  }

  v20 = v25 | HIBYTE(v27);

  return v20 & 1;
}

uint64_t AnimatorState.Fork.update(time:environment:)(double a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v20 = v3[1];
  v11 = *(a3 + 24);

  AnimationContext.init(state:environment:isLogicallyComplete:)(&v20, 0, v21);
  v12 = (v3 + *(a3 + 44));
  v13 = *v12;
  if (*v12)
  {
    v14 = v12[1];
    v15 = type metadata accessor for AnimationContext();
    AnimationContext.finishingDefinition.setter(v13, v14, v15);
  }

  Animation.animate<A>(value:time:context:)(v3 + *(a3 + 40), v21, *v3, v6, v11, v10, a1);
  v16 = (*(*(v6 - 8) + 48))(v10, 1, v6) == 1;
  v17 = v16 | v22;
  (*(v8 + 8))(v10, v7);

  return v17 & 1;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((*(v4 + 112) & 1) == 0)
  {
    v8 = result;
    swift_beginAccess();
    v9 = *(v4 + 104);
    if (v9 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v10 = *(v4 + 128);
    v18 = *(v4 + 120);
    v11 = a4 & 1;
    v12 = *(v4 + 104);
    swift_beginAccess();
    v13 = *(v4 + 136);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 136) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      *(v4 + 136) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[7 * v16];
    v17[4] = v8;
    v17[5] = a2;
    v17[6] = a3;
    *(v17 + 56) = v11;
    v17[8] = v18;
    v17[9] = v10;
    v17[10] = v12;
    *(v4 + 136) = v13;
    swift_endAccess();
    *(v4 + 104) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, double a3, double a4)
{
  if ((*(v4 + 112) & 1) == 0)
  {
    v8 = result;
    swift_beginAccess();
    v9 = *(v4 + 104);
    if (v9 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v10 = *(v4 + 120);
    v11 = *(v4 + 128);
    v12 = *(v4 + 104);
    swift_beginAccess();
    v13 = *(v4 + 136);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 136) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      *(v4 + 136) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[7 * v16];
    *(v17 + 4) = v8;
    *(v17 + 5) = a2;
    v17[6] = a3;
    v17[7] = a4;
    *(v17 + 8) = v10;
    *(v17 + 9) = v11;
    *(v17 + 10) = v12;
    *(v4 + 136) = v13;
    swift_endAccess();
    *(v4 + 104) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, double a3)
{
  if ((*(v3 + 96) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 88);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = *(v3 + 88);
    swift_beginAccess();
    v11 = *(v3 + 120);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 120) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *(v3 + 120) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[6 * v14];
    *(v15 + 4) = v6;
    *(v15 + 5) = a2;
    v15[6] = a3;
    *(v15 + 7) = v8;
    *(v15 + 8) = v9;
    *(v15 + 9) = v10;
    *(v3 + 120) = v11;
    swift_endAccess();
    *(v3 + 88) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

{
  if ((*(v3 + 96) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 88);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = *(v3 + 88);
    swift_beginAccess();
    v11 = *(v3 + 120);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 120) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
      *(v3 + 120) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[6 * v14];
    *(v15 + 4) = v6;
    *(v15 + 5) = a2;
    v15[6] = a3;
    *(v15 + 7) = v8;
    *(v15 + 8) = v9;
    *(v15 + 9) = v10;
    *(v3 + 120) = v11;
    swift_endAccess();
    *(v3 + 88) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, double a3, double a4, double a5)
{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    *&v24 = v10;
    *(&v24 + 1) = a2;
    *&v25 = a3;
    *(&v25 + 1) = a4;
    *&v26 = a5;
    *(&v26 + 1) = v12;
    *&v27 = v13;
    *(&v27 + 1) = v14;
    swift_beginAccess();
    v15 = *(v5 + 152);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v24, v23, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 152) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      *(v5 + 152) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    v19 = &v15[8 * v18];
    v20 = v24;
    v21 = v25;
    v22 = v27;
    v19[4] = v26;
    v19[5] = v22;
    v19[2] = v20;
    v19[3] = v21;
    *(v5 + 152) = v15;
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v23[0] = v10;
    v23[1] = a2;
    *&v23[2] = a3;
    *&v23[3] = a4;
    *&v23[4] = a5;
    v23[5] = v12;
    v23[6] = v13;
    v23[7] = v14;
    return outlined destroy of Slice<IndexSet>(v23, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>.Fork);
  }

  return result;
}

{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    *&v24 = v10;
    *(&v24 + 1) = a2;
    *&v25 = a3;
    *(&v25 + 1) = a4;
    *&v26 = a5;
    *(&v26 + 1) = v12;
    *&v27 = v13;
    *(&v27 + 1) = v14;
    swift_beginAccess();
    v15 = *(v5 + 152);

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(&v24, v23, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 152) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
      *(v5 + 152) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    v19 = &v15[8 * v18];
    v20 = v24;
    v21 = v25;
    v22 = v27;
    v19[4] = v26;
    v19[5] = v22;
    v19[2] = v20;
    v19[3] = v21;
    *(v5 + 152) = v15;
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v23[0] = v10;
    v23[1] = a2;
    *&v23[2] = a3;
    *&v23[3] = a4;
    *&v23[4] = a5;
    v23[5] = v12;
    v23[6] = v13;
    v23[7] = v14;
    return outlined destroy of Slice<IndexSet>(v23, type metadata accessor for AnimatorState<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>.Fork);
  }

  return result;
}

{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    v16[0] = v10;
    v16[1] = a2;
    *&v16[2] = a3;
    *&v16[3] = a4;
    *&v16[4] = a5;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v14;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v16, v15, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
    specialized Array.append(_:)(v16);
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v15[0] = v10;
    v15[1] = a2;
    *&v15[2] = a3;
    *&v15[3] = a4;
    *&v15[4] = a5;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>.Fork);
  }

  return result;
}

{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    v16[0] = v10;
    v16[1] = a2;
    *&v16[2] = a3;
    *&v16[3] = a4;
    *&v16[4] = a5;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v14;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v16, v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
    specialized Array.append(_:)(v16);
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v15[0] = v10;
    v15[1] = a2;
    *&v15[2] = a3;
    *&v15[3] = a4;
    *&v15[4] = a5;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>.Fork);
  }

  return result;
}

{
  if ((*(v5 + 128) & 1) == 0)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(v5 + 120);
    if (v11 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    v12 = *(v5 + 136);
    v13 = *(v5 + 144);
    v14 = *(v5 + 120);
    v16[0] = v10;
    v16[1] = a2;
    *&v16[2] = a3;
    *&v16[3] = a4;
    *&v16[4] = a5;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v14;
    swift_beginAccess();

    _s7SwiftUI13AnimatorStateC4Fork33_35ADF281214A25133F1A6DF28858952DLLVyAA14AnimatablePairVyAA05KeyedK5ArrayVySiAA04_AnyK4DataVG12CoreGraphics7CGFloatVG_GWOcTm_0(v16, v15, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
    specialized Array.append(_:)(v16);
    swift_endAccess();
    *(v5 + 120) = MEMORY[0x1E69E7CC0];

    v15[0] = v10;
    v15[1] = a2;
    *&v15[2] = a3;
    *&v15[3] = a4;
    *&v15[4] = a5;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    return outlined destroy of Slice<IndexSet>(v15, type metadata accessor for AnimatorState<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>.Fork);
  }

  return result;
}
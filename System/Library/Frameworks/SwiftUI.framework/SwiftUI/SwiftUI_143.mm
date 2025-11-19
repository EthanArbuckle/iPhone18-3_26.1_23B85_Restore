uint64_t storeEnumTagSinglePayload for NavigationStackProxy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 616) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 616) = 0;
    }

    if (a2)
    {
      *(result + 504) = a2;
    }
  }

  return result;
}

uint64_t StepperStyleConfiguration.onIncrement.getter()
{
  v1 = *(v0 + 8);
  outlined copy of AppIntentExecutor?(v1);
  return v1;
}

uint64_t StepperStyleConfiguration.onDecrement.getter()
{
  v1 = *(v0 + 24);
  outlined copy of AppIntentExecutor?(v1);
  return v1;
}

uint64_t StepperStyleConfiguration.onEditingChanged.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t instantiation function for generic protocol witness table for StepperStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type StepperBody and conformance StepperBody()
{
  result = lazy protocol witness table cache variable for type StepperBody and conformance StepperBody;
  if (!lazy protocol witness table cache variable for type StepperBody and conformance StepperBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepperBody and conformance StepperBody);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StepperBody and conformance StepperBody;
  if (!lazy protocol witness table cache variable for type StepperBody and conformance StepperBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepperBody and conformance StepperBody);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StepperStyleModifier<DefaultStepperStyle> and conformance StepperStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type StepperStyleModifier<DefaultStepperStyle> and conformance StepperStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type StepperStyleModifier<DefaultStepperStyle> and conformance StepperStyleModifier<A>)
  {
    type metadata accessor for StepperStyleModifier<DefaultStepperStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepperStyleModifier<DefaultStepperStyle> and conformance StepperStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for StepperStyleModifier<DefaultStepperStyle>()
{
  if (!lazy cache variable for type metadata for StepperStyleModifier<DefaultStepperStyle>)
  {
    lazy protocol witness table accessor for type DefaultStepperStyle and conformance DefaultStepperStyle();
    v0 = type metadata accessor for StepperStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StepperStyleModifier<DefaultStepperStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultStepperStyle and conformance DefaultStepperStyle()
{
  result = lazy protocol witness table cache variable for type DefaultStepperStyle and conformance DefaultStepperStyle;
  if (!lazy protocol witness table cache variable for type DefaultStepperStyle and conformance DefaultStepperStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultStepperStyle and conformance DefaultStepperStyle);
  }

  return result;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance StepperBody@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;

  outlined copy of AppIntentExecutor?(v3);
  outlined copy of AppIntentExecutor?(v5);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance StepperBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type StepperBody and conformance StepperBody();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance StepperBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type StepperBody and conformance StepperBody();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t StepperStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = *(a1 + 32);
  v13 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v13;
  v18 = v12;
  v19 = *(a1 + 40);
  (*(v3 + 24))(v17, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = *(v6 + 8);
  v15(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v15)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance StepperStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance StepperStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

SwiftUI::TextEditorModification __swiftcall TextAttributeResolver.potentiallyEffectfulModifications()()
{
  TextAttributeResolver.potentiallyEffectfulControls()(v0);
  v2 = *(v1 + 16);
  if (v2)
  {
    if (v2 > 4)
    {
      v5 = *(v1 + 16) & 3;
      if ((v2 & 3) == 0)
      {
        v5 = 4;
      }

      v4 = v2 - v5;
      v6 = (v1 + 96);
      v7 = 0uLL;
      v8 = v4;
      v9 = 0uLL;
      do
      {
        v10 = v6 - 6;
        v11 = vld3q_f64(v10);
        v12 = vld3q_f64(v6);
        v7 = vorrq_s8(v11, v7);
        v9 = vorrq_s8(v12, v9);
        v6 += 12;
        v8 -= 4;
      }

      while (v8);
      v13 = vorrq_s8(v9, v7);
      v3.rawValue = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
    }

    else
    {
      v3.rawValue = 0;
      v4 = 0;
    }

    v14 = v2 - v4;
    v15 = (v1 + 24 * v4 + 48);
    do
    {
      v16 = *v15;
      v15 += 3;
      v3.rawValue |= v16;
      --v14;
    }

    while (v14);
  }

  else
  {
    v3.rawValue = 0;
  }

  return v3;
}

uint64_t specialized Set<>.init(_:)(unint64_t a1)
{
  if (one-time initialization token for allControls != -1)
  {
LABEL_25:
    swift_once();
  }

  v2 = 0;
  v3 = static TextFormattingControl.allControls;
  v4 = *(static TextFormattingControl.allControls + 16);
  v5 = static TextFormattingControl.allControls + 48;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v7 = (v5 + 24 * v2);
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    ++v2;
    v8 = v7 + 3;
    v9 = *v7;
    v7 += 3;
    if ((v9 & ~a1) == 0)
    {
      v10 = *(v8 - 4);
      v11 = *(v8 - 5);
      v12 = v10;
      v24 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1);
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v6 + 16) = v14 + 1;
      v15 = (v6 + 24 * v14);
      v15[4] = v11;
      v15[5] = v12;
      v15[6] = v9;
      v5 = v24;
      goto LABEL_3;
    }
  }

  v16 = *(v6 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (v6 + 32);
    v19 = MEMORY[0x1E69E7CC0];
    while (v17 < *(v6 + 16))
    {
      a1 = *v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
      }

      v21 = v19[2];
      v20 = v19[3];
      if (v21 >= v20 >> 1)
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v19);
      }

      ++v17;
      v19[2] = v21 + 1;
      v19[v21 + 4] = a1;
      v18 += 3;
      if (v16 == v17)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_24;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_22:

  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo42UITextFormattingViewControllerComponentKeya_SayAEGTt0g5Tf4g_n(v19);

  return v22;
}

uint64_t specialized static UITextFormattingViewController.standardComponents.getter()
{
  if (one-time initialization token for allControls != -1)
  {
    swift_once();
  }

  v0 = static TextFormattingControl.allControls;
  v1 = *(static TextFormattingControl.allControls + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v7 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for UITextFormattingViewControllerComponent();
    v3 = (v0 + 40);
    do
    {
      v4 = *v3;
      v5 = *(v3 - 1);
      v6 = v4;
      static UITextFormattingViewControllerComponent.component(_:_:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 3;
      --v1;
    }

    while (v1);
    return v7;
  }

  return result;
}

unint64_t type metadata accessor for UITextFormattingViewControllerComponent()
{
  result = lazy cache variable for type metadata for UITextFormattingViewControllerComponent;
  if (!lazy cache variable for type metadata for UITextFormattingViewControllerComponent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITextFormattingViewControllerComponent);
  }

  return result;
}

char *PanGesture.init(allowedDirections:minimumDistance:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  *a2 = a3;
  *(a2 + 8) = v3;
  return result;
}

char *PanGesture.init(allowedDirections:minimumDistance:requiresTwoFingerTouch:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  *a2 = a3;
  *(a2 + 8) = v3;
  return result;
}

double protocol witness for GestureStateProtocol.init() in conformance RawPanGesture.StateType@<D0>(uint64_t a1@<X8>)
{
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC13RawPanGestureV9StateTypeV0E4Info33_B91FD4B193E991093C77979850E18C8FLLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 8) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t closure #1 in RawPanGesture.body.getter(uint64_t a1, uint64_t *a2, char a3, double a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v10 = a4;
  v11 = a3;
  v8 = v5;
  v9 = v6;
  RawPanGesture.update(state:childPhase:)(a1, &v8);
  LOWORD(v10) = *(a1 + 8);
  type metadata accessor for GesturePhase<()>();
  return GesturePhase.withValue<A>(_:)();
}

uint64_t RawPanGesture.update(state:childPhase:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5 == 3 && v4 == 0)
  {
LABEL_76:
    *(v3 + 8) = 768;
  }

  else
  {
    v7 = *v2;
    if ((v5 - 1) < 2 || (!v5 ? (v8 = v4 == 0) : (v8 = 1), !v8))
    {
      v114 = *(v2 + 8);
      v9 = v4 + 64;
      v10 = 1 << *(v4 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v4 + 64);
      outlined copy of GesturePhase<[EventID : PanEvent]>(v4, v5);
      v117 = 0;
      v118 = 0;
      v119 = v4;
      v13 = 0;
      v14 = (v10 + 63) >> 6;
      v15 = 0.0;
      v16 = 0.0;
      v115 = 0.0;
      v116 = 0.0;
      v17 = 0.0;
      while (v12)
      {
LABEL_18:
        v19 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v20 = v19 | (v13 << 6);
        v21 = (*(v4 + 48) + 16 * v20);
        v23 = *v21;
        v22 = v21[1];
        v24 = (*(v4 + 56) + 112 * v20);
        v26 = v24[1];
        v25 = v24[2];
        v127 = *v24;
        v128 = v26;
        v129 = v25;
        v28 = v24[4];
        v27 = v24[5];
        v29 = v24[3];
        *(v132 + 9) = *(v24 + 89);
        v131 = v28;
        v132[0] = v27;
        v130 = v29;
        if (v129 >= 2u)
        {
          if (v129 == 3)
          {
            *(v3 + 8) = 768;
          }

          else
          {
            if (*(*v3 + 16))
            {
              specialized __RawDictionaryStorage.find<A>(_:)(v23, v22);
              if (v81)
              {
                if (*(&v129 + 1) >= v17)
                {
                  v17 = *(&v129 + 1);
                }

                v82 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v22);
                if (v83)
                {
                  v84 = v82;
                  outlined init with copy of PanEvent(&v127, &v121);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v86 = *v3;
                  *&v121 = *v3;
                  if (!isUniquelyReferenced_nonNull_native)
                  {
                    specialized _NativeDictionary.copy()();
                    v86 = v121;
                  }

                  specialized _NativeDictionary._delete(at:)(v84, v86);
                  outlined destroy of PanEvent(&v127);
                  *v3 = v86;
                }
              }
            }

            v117 = 1;
          }
        }

        else
        {
          v30 = *v3;
          if (*(*v3 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v22), (v32 & 1) != 0))
          {
            v59 = (*(v30 + 56) + 32 * v31);
            v112 = v59[1];
            v113 = *v59;
            v110 = v59[3];
            v111 = v59[2];
            if (*(&v129 + 1) >= v17)
            {
              v17 = *(&v129 + 1);
            }

            v125 = v131;
            v126[0] = v132[0];
            *(v126 + 9) = *(v132 + 9);
            v121 = v127;
            v122 = v128;
            v123 = v129;
            v124 = v130;
            outlined init with copy of PanEvent(&v127, v120);
            PanEvent.translation.getter();
            v108 = v61;
            v109 = v60;
            v125 = v131;
            v126[0] = v132[0];
            *(v126 + 9) = *(v132 + 9);
            v121 = v127;
            v122 = v128;
            v123 = v129;
            v124 = v130;
            PanEvent.globalTranslation.getter();
            v106 = v63;
            v107 = v62;
            v125 = v131;
            v126[0] = v132[0];
            *(v126 + 9) = *(v132 + 9);
            v121 = v127;
            v122 = v128;
            v123 = v129;
            v124 = v130;
            outlined init with copy of PanEvent(&v127, v120);
            PanEvent.globalTranslation.getter();
            v65 = v64;
            v67 = v66;
            v125 = v131;
            v126[0] = v132[0];
            *(v126 + 9) = *(v132 + 9);
            v121 = v127;
            v122 = v128;
            v123 = v129;
            v124 = v130;
            PanEvent.translation.getter();
            v69 = v68;
            v71 = v70;
            outlined destroy of PanEvent(&v127);
            v72 = swift_isUniquelyReferenced_nonNull_native();
            *&v121 = *v3;
            v73 = v121;
            v74 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v22);
            v76 = *(v73 + 16);
            v77 = (v75 & 1) == 0;
            v47 = __OFADD__(v76, v77);
            v78 = v76 + v77;
            if (v47)
            {
              goto LABEL_83;
            }

            v79 = v75;
            if (*(v73 + 24) >= v78)
            {
              if ((v72 & 1) == 0)
              {
                v94 = v74;
                specialized _NativeDictionary.copy()();
                v74 = v94;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v78, v72);
              v74 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v22);
              if ((v79 & 1) != (v80 & 1))
              {
                goto LABEL_86;
              }
            }

            v87 = v121;
            if (v79)
            {
              v88 = (*(v121 + 56) + 32 * v74);
              *v88 = v65;
              v88[1] = v67;
              v88[2] = v69;
              v88[3] = v71;
              outlined destroy of PanEvent(&v127);
            }

            else
            {
              *(v121 + 8 * (v74 >> 6) + 64) |= 1 << v74;
              v89 = (v87[6] + 16 * v74);
              *v89 = v23;
              v89[1] = v22;
              v90 = (v87[7] + 32 * v74);
              *v90 = v65;
              v90[1] = v67;
              v90[2] = v69;
              v90[3] = v71;
              outlined destroy of PanEvent(&v127);
              v91 = v87[2];
              v47 = __OFADD__(v91, 1);
              v92 = v91 + 1;
              if (v47)
              {
                goto LABEL_85;
              }

              v87[2] = v92;
            }

            v4 = v119;
            *v3 = v87;
            v47 = __OFADD__(v118++, 1);
            if (v47)
            {
              goto LABEL_84;
            }

            v115 = v115 + v108 - v110;
            v116 = v116 + v109 - v111;
            v15 = v15 + v107 - v113;
            v16 = v16 + v106 - v112;
          }

          else
          {
            v125 = v131;
            v126[0] = v132[0];
            *(v126 + 9) = *(v132 + 9);
            v121 = v127;
            v122 = v128;
            v123 = v129;
            v124 = v130;
            outlined init with copy of PanEvent(&v127, v120);
            outlined init with copy of PanEvent(&v127, v120);
            PanEvent.globalTranslation.getter();
            v34 = v33;
            v36 = v35;
            v125 = v131;
            v126[0] = v132[0];
            *(v126 + 9) = *(v132 + 9);
            v121 = v127;
            v122 = v128;
            v123 = v129;
            v124 = v130;
            PanEvent.translation.getter();
            v38 = v37;
            v40 = v39;
            outlined destroy of PanEvent(&v127);
            v41 = swift_isUniquelyReferenced_nonNull_native();
            *&v121 = *v3;
            v42 = v121;
            v43 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v22);
            v45 = *(v42 + 16);
            v46 = (v44 & 1) == 0;
            v47 = __OFADD__(v45, v46);
            v48 = v45 + v46;
            if (v47)
            {
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v49 = v44;
            if (*(v42 + 24) >= v48)
            {
              if ((v41 & 1) == 0)
              {
                v93 = v43;
                specialized _NativeDictionary.copy()();
                v43 = v93;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, v41);
              v43 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v22);
              if ((v49 & 1) != (v50 & 1))
              {
                goto LABEL_86;
              }
            }

            v51 = v121;
            if (v49)
            {
              v52 = (*(v121 + 56) + 32 * v43);
              *v52 = v34;
              v52[1] = v36;
              v52[2] = v38;
              v52[3] = v40;
            }

            else
            {
              *(v121 + 8 * (v43 >> 6) + 64) |= 1 << v43;
              v53 = (v51[6] + 16 * v43);
              *v53 = v23;
              v53[1] = v22;
              v54 = (v51[7] + 32 * v43);
              *v54 = v34;
              v54[1] = v36;
              v54[2] = v38;
              v54[3] = v40;
              v55 = v51[2];
              v47 = __OFADD__(v55, 1);
              v56 = v55 + 1;
              if (v47)
              {
                goto LABEL_82;
              }

              v51[2] = v56;
            }

            *v3 = v51;
            v57 = *(v3 + 9);
            outlined destroy of PanEvent(&v127);
            v4 = v119;
            if (!v57)
            {
              v58 = BYTE8(v132[0]);
              *(v3 + 16) = *(&v129 + 1);
              *(v3 + 24) = 0;
              *(v3 + 32) = 0;
              *(v3 + 40) = v58;
              *(v3 + 48) = 0;
              *(v3 + 56) = 0;
              if (v7 == 0.0)
              {
                *(v3 + 8) = 256;
              }
            }
          }
        }
      }

      while (1)
      {
        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_81;
        }

        if (v18 >= v14)
        {
          break;
        }

        v12 = *(v9 + 8 * v18);
        ++v13;
        if (v12)
        {
          v13 = v18;
          goto LABEL_18;
        }
      }

      if (v118)
      {
        v95 = 1.0 / v118;
        v96 = v16 * v95 + *(v3 + 72);
        *(v3 + 64) = v15 * v95 + *(v3 + 64);
        *(v3 + 72) = v96;
        if (!*(v3 + 9))
        {
          if (!v114)
          {
            goto LABEL_76;
          }

          result = CGSize.magnitude.getter();
          if (v7 <= v104)
          {
            LOBYTE(v127) = v114;
            result = CGSize.withinRange(axes:rangeCosine:)(&v127, 0.5);
            *(v3 + 8) = 0;
            if (result)
            {
              v105 = 1;
            }

            else
            {
              v105 = 3;
            }

            *(v3 + 9) = v105;
          }
        }

        v97 = v116 * v95;
        v98 = v115 * v95;
        v99 = v17 - *(v3 + 16);
        if (v99 > 0.0)
        {
          *(v3 + 16) = v17;
          v100 = 1.0 / v99;
          *(v3 + 48) = v97 * v100;
          *(v3 + 56) = v98 * v100;
        }

        v101 = v98 + *(v3 + 32);
        *(v3 + 24) = v97 + *(v3 + 24);
        *(v3 + 32) = v101;
      }

      if ((v117 & 1) != 0 && !*(*v3 + 16))
      {
        if (v17 - *(v3 + 16) > 0.2)
        {
          *(v3 + 16) = v17;
          *(v3 + 48) = 0;
          *(v3 + 56) = 0;
        }

        v102 = *(v3 + 9);
        *(v3 + 8) = 0;
        if (v102 == 1)
        {
          v103 = 2;
        }

        else
        {
          v103 = 3;
        }

        *(v3 + 9) = v103;
      }
    }
  }

  return result;
}

uint64_t protocol witness for Gesture.body.getter in conformance RawPanGesture@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v4;
  *a1 = 1;
  *(a1 + 8) = partial apply for closure #1 in RawPanGesture.body.getter;
  *(a1 + 16) = result;
  return result;
}

BOOL specialized static PanGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type RawPanGesture and conformance RawPanGesture()
{
  result = lazy protocol witness table cache variable for type RawPanGesture and conformance RawPanGesture;
  if (!lazy protocol witness table cache variable for type RawPanGesture and conformance RawPanGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RawPanGesture and conformance RawPanGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PanGesture and conformance PanGesture()
{
  result = lazy protocol witness table cache variable for type PanGesture and conformance PanGesture;
  if (!lazy protocol witness table cache variable for type PanGesture and conformance PanGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PanGesture and conformance PanGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PanGesture and conformance PanGesture;
  if (!lazy protocol witness table cache variable for type PanGesture and conformance PanGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PanGesture and conformance PanGesture);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PanGesture.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 48))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PanGesture.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
  }

  return result;
}

__n128 partial apply for implicit closure #1 in closure #1 in RawPanGesture.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *a1 = *(v2 + 16);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  result = *(v2 + 48);
  *(a1 + 32) = result;
  return result;
}

void type metadata accessor for GesturePhase<()>()
{
  if (!lazy cache variable for type metadata for GesturePhase<()>)
  {
    v0 = type metadata accessor for GesturePhase();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GesturePhase<()>);
    }
  }
}

uint64_t initializeWithCopy for RawPanGesture.StateType(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;

  return a1;
}

uint64_t assignWithCopy for RawPanGesture.StateType(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for RawPanGesture.StateType(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for RawPanGesture.StateType(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for RawPanGesture.StateType(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type RawPanGesture.StateType and conformance RawPanGesture.StateType()
{
  result = lazy protocol witness table cache variable for type RawPanGesture.StateType and conformance RawPanGesture.StateType;
  if (!lazy protocol witness table cache variable for type RawPanGesture.StateType and conformance RawPanGesture.StateType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RawPanGesture.StateType and conformance RawPanGesture.StateType);
  }

  return result;
}

void type metadata accessor for MultiEventListener<PanEvent>()
{
  if (!lazy cache variable for type metadata for MultiEventListener<PanEvent>)
  {
    v0 = type metadata accessor for MultiEventListener();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MultiEventListener<PanEvent>);
    }
  }
}

uint64_t View.equatableProxy<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return EquatableProxyView.init(content:token:)(v14, v10, a2, a3, a4);
}

uint64_t static EquatableView._makeView(view:inputs:)()
{
  type metadata accessor for EquatableView();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for EquatableView.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t EquatableView.Child.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EquatableView();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t EquatableView.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EquatableView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  EquatableView.Child.view.getter(&v8 - v5);
  return (*(*(a1 - 8) + 32))(a2, v6, a1);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance EquatableView<A>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t static EquatableProxyView._makeView(view:inputs:)(_DWORD *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v21 - v13;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v15 = type metadata accessor for EquatableProxyView.Child();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  LODWORD(v16) = *a1;
  v18 = a2[3];
  v28 = a2[2];
  v29 = v18;
  v30 = a2[4];
  v31 = *(a2 + 20);
  v19 = a2[1];
  v26 = *a2;
  v27 = v19;
  v21[3] = v16;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  type metadata accessor for EquatableProxyView();
  type metadata accessor for _GraphValue();
  LODWORD(a2) = _GraphValue.value.getter();
  (*(*(a4 - 8) + 56))(v14, 1, 1, a4);
  EquatableProxyView.Child.init(view:lastToken:)(a2, v14, v17);
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t EquatableProxyView.Child.init(view:lastToken:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for EquatableProxyView.Child() + 52);
  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 32))(&a3[v5], a2, v6);
}

uint64_t EquatableProxyView.Child.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EquatableProxyView();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t EquatableProxyView.Child.updateValue()(uint64_t a1)
{
  v1 = a1;
  v93 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  v84 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v83 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 24);
  v86 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v80 = &v67 - v9;
  *&v10 = v2;
  *(&v10 + 1) = v5;
  v73 = *(v1 + 32);
  v91 = v10;
  v92 = v73;
  v11 = type metadata accessor for EquatableProxyView();
  v87 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  v90 = v7;
  v89 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - v25;
  v85 = v2;
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_8;
  }

  v70 = v20;
  v27 = *(v1 + 52);
  v28 = v11;
  v29 = v1;
  v30 = v86;
  v79 = TupleTypeMetadata2;
  v75 = *(v89 + 16);
  v31 = v5;
  v32 = v90;
  v75(v26, v88 + v27, v90);
  v72 = v29;
  EquatableProxyView.Child.view.getter(v15);
  (*(v30 + 16))(v23, &v15[*(v28 + 52)], v31);
  v33 = *(v87 + 8);
  v71 = v28;
  v33(v15, v28);
  (*(v30 + 56))(v23, 0, 1, v31);
  v34 = v80;
  v35 = *(v79 + 48);
  v36 = v75;
  v75(v80, v26, v32);
  v76 = v35;
  v37 = v32;
  v38 = v30;
  v39 = v36;
  v36(&v34[v35], v23, v37);
  v40 = *(v38 + 48);
  v41 = v26;
  if (v40(v34, 1, v31) == 1)
  {
    v42 = v90;
    v43 = *(v89 + 8);
    v43(v23, v90);
    v43(v41, v42);
    v44 = v31;
    if (v40(&v34[v76], 1, v31) == 1)
    {
      return (v43)(v34, v42);
    }

    goto LABEL_7;
  }

  v68 = v23;
  v69 = v26;
  v46 = v70;
  v39(v70, v34, v90);
  v47 = v76;
  if (v40(&v34[v76], 1, v31) == 1)
  {
    v48 = v90;
    v49 = *(v89 + 8);
    v49(v68, v90);
    v49(v69, v48);
    v50 = v46;
    v44 = v31;
    (*(v38 + 8))(v50, v31);
LABEL_7:
    (*(v77 + 8))(v34, v79);
    v1 = v72;
    v5 = v44;
    v11 = v71;
LABEL_8:
    v78 = v5;
    v51 = v82;
    v52 = v88;
    EquatableProxyView.Child.view.getter(v82);
    v53 = v83;
    v54 = v84;
    v55 = v85;
    (*(v84 + 16))(v83, v51, v85);
    v87 = *(v87 + 8);
    v56 = (v87)(v51, v11);
    v80 = &v67;
    MEMORY[0x1EEE9AC00](v56);
    *(&v67 - 2) = v1;
    *(&v67 - 1) = swift_getWitnessTable();
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v53, partial apply for closure #1 in StatefulRule.value.setter, (&v67 - 4), v55, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v57);
    (*(v54 + 8))(v53, v55);
    EquatableProxyView.Child.view.getter(v51);
    v58 = v86;
    v59 = v81;
    v60 = v78;
    (*(v86 + 16))(v81, v51 + *(v11 + 52), v78);
    (v87)(v51, v11);
    (*(v58 + 56))(v59, 0, 1, v60);
    return (*(v89 + 40))(v52 + *(v1 + 52), v59, v90);
  }

  v61 = &v34[v47];
  v62 = v46;
  v63 = v74;
  (*(v38 + 32))(v74, v61, v31);
  LODWORD(v79) = dispatch thunk of static Equatable.== infix(_:_:)();
  v64 = *(v38 + 8);
  v64(v63, v31);
  v5 = v31;
  v65 = v90;
  v66 = *(v89 + 8);
  v66(v68, v90);
  v66(v69, v65);
  v64(v62, v31);
  result = (v66)(v34, v65);
  v1 = v72;
  v11 = v71;
  if ((v79 & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t EquatableProxyView.init(content:token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for EquatableProxyView();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance EquatableProxyView<A, B>.Child(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance EquatableProxyView<A, B>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t View<>.equatable()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t type metadata completion function for EquatableProxyView.Child()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for EquatableProxyView.Child(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 <= 7 && v10 == 0 && ((-5 - v8) | v8) - v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v14 = a1 + v8 + 4;
    v15 = a2 + v8 + 4;
    if ((*(v5 + 48))(v15 & ~v8, 1, v4))
    {
      memcpy((v14 & ~v8), (v15 & ~v8), v9);
    }

    else
    {
      (*(v6 + 16))(v14 & ~v8, v15 & ~v8, v4);
      (*(v6 + 56))(v14 & ~v8, 0, 1, v4);
    }
  }

  else
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  return v3;
}

uint64_t destroy for EquatableProxyView.Child(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = a1 + v3 + 4;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

_DWORD *initializeWithCopy for EquatableProxyView.Child(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  if ((*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 16))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

_DWORD *assignWithCopy for EquatableProxyView.Child(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  v9 = *(v5 + 48);
  v10 = v9(v7 & ~v6, 1, v4);
  v11 = v9(v8 & ~v6, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 16))(v7 & ~v6, v8 & ~v6, v4);
      (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
      return a1;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 24))(v7 & ~v6, v8 & ~v6, v4);
      return a1;
    }

    v15 = *(v5 + 8);
    v14 = v5 + 8;
    v15(v7 & ~v6, v4);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v16);
  return a1;
}

_DWORD *initializeWithTake for EquatableProxyView.Child(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  if ((*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 32))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

_DWORD *assignWithTake for EquatableProxyView.Child(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  v9 = *(v5 + 48);
  v10 = v9(v7 & ~v6, 1, v4);
  v11 = v9(v8 & ~v6, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 32))(v7 & ~v6, v8 & ~v6, v4);
      (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
      return a1;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 40))(v7 & ~v6, v8 & ~v6, v4);
      return a1;
    }

    v15 = *(v5 + 8);
    v14 = v5 + 8;
    v15(v7 & ~v6, v4);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for EquatableProxyView.Child(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 4) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((a1 + v7 + 4) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for EquatableProxyView.Child(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 4) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = &a1[v10 + 4] & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

uint64_t destroy for ListTableCellModifier(uint64_t a1)
{
  if (*(a1 + 72) != 1)
  {
  }

  v2 = *(a1 + 174);
  if (*(a1 + 174))
  {
    if (v2 == 1)
    {
      goto LABEL_9;
    }

    if (v2 != 2)
    {
      goto LABEL_10;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 104);
LABEL_9:

LABEL_10:
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);

  return outlined consume of Environment<Bool>.Content(v3, v4);
}

uint64_t initializeWithCopy for ListTableCellModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 72);
  if (v5 == 1)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *(a1 + 72) = v5;
    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 174);
  if (v6 == 2)
  {
    v7 = *(a2 + 128);
    *(a1 + 128) = v7;
    (**(v7 - 8))(a1 + 104, a2 + 104);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
  }

  else if (v6 == 1)
  {
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    v8 = *(a2 + 128);
    *(a1 + 128) = v8;
    (**(v8 - 8))(a1 + 104, a2 + 104);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 172) = *(a2 + 172);
  }

  *(a1 + 174) = v6;

  v9 = *(a2 + 176);
  v10 = *(a2 + 184);
  outlined copy of Environment<Bool>.Content(v9, v10);
  *(a1 + 176) = v9;
  *(a1 + 184) = v10;
  return a1;
}

uint64_t assignWithCopy for ListTableCellModifier(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v5 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v5;
  v6 = a2[4];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v6;
  v7 = a2[6];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v7;
  *(a1 + 64) = a2[8];
  v8 = a1 + 72;
  v9 = *(a1 + 72);
  v11 = a2 + 9;
  v10 = a2[9];
  if (v9 == 1)
  {
    if (v10 == 1)
    {
      v12 = *v11;
      *(v8 + 8) = *(a2 + 80);
      *v8 = v12;
    }

    else
    {
      *(a1 + 72) = v10;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v10 == 1)
  {
    outlined destroy of ListItemTint(v8);
    v13 = *(v11 + 8);
    *v8 = *v11;
    *(v8 + 8) = v13;
  }

  else
  {
    *(a1 + 72) = v10;

    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 88) = a2[11];
  *(a1 + 96) = *(a2 + 96);
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 104);
    v14 = *(a2 + 174);
    if (v14 == 2)
    {
      v15 = a2[16];
      *(a1 + 128) = v15;
      *(a1 + 136) = a2[17];
      (**(v15 - 8))(a1 + 104, (a2 + 13));
      *(a1 + 144) = *(a2 + 36);
      *(a1 + 148) = *(a2 + 37);
      *(a1 + 152) = a2[19];
    }

    else if (v14 == 1)
    {
      *(a1 + 104) = *(a2 + 26);
      *(a1 + 108) = *(a2 + 27);
      *(a1 + 112) = a2[14];
    }

    else
    {
      v16 = a2[16];
      *(a1 + 128) = v16;
      *(a1 + 136) = a2[17];
      (**(v16 - 8))(a1 + 104, (a2 + 13));
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 38);
      *(a1 + 156) = *(a2 + 39);
      *(a1 + 160) = a2[20];
      v17 = *(a2 + 42);
      *(a1 + 172) = *(a2 + 86);
      *(a1 + 168) = v17;
    }

    *(a1 + 174) = v14;
  }

  v18 = a2[22];
  v19 = *(a2 + 184);
  outlined copy of Environment<Bool>.Content(v18, v19);
  v20 = *(a1 + 176);
  v21 = *(a1 + 184);
  *(a1 + 176) = v18;
  *(a1 + 184) = v19;
  outlined consume of Environment<Bool>.Content(v20, v21);
  return a1;
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for ListTableCellModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  v5 = a1 + 72;
  v4 = *(a1 + 72);
  *(v5 - 8) = *(a2 + 64);
  v7 = a2 + 72;
  v6 = *(a2 + 72);
  if (v4 == 1)
  {
    goto LABEL_4;
  }

  if (v6 == 1)
  {
    outlined destroy of ListItemTint(v5);
LABEL_4:
    *v5 = *v7;
    *(v5 + 8) = *(v7 + 8);
    goto LABEL_6;
  }

  *(a1 + 72) = v6;

  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 167) = *(a2 + 167);
    *(a1 + 104) = *(a2 + 104);
  }

  v8 = *(a2 + 184);
  v9 = *(a1 + 176);
  v10 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListTableCellModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 185))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 72);
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

uint64_t storeEnumTagSinglePayload for ListTableCellModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 184) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 185) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 185) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

void ListTableCellModifier.effectiveInsets.getter()
{
  OptionalEdgeInsets.top.getter();
  OptionalEdgeInsets.leading.getter();
  if (v1)
  {
    specialized Environment.wrappedValue.getter(*(v0 + 176), *(v0 + 184));
  }

  OptionalEdgeInsets.bottom.getter();
  OptionalEdgeInsets.trailing.getter();
  if (v2)
  {
    specialized Environment.wrappedValue.getter(*(v0 + 176), *(v0 + 184));
  }
}

uint64_t ListTableCellModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v23 = *v1;
  v24 = v1[1];
  *v25 = v1[2];
  *&v25[9] = *(v1 + 41);
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  v5 = *(v1 + 11);
  v6 = *(v1 + 96);
  v7 = *(v1 + 80);
  outlined init with copy of AccessibilityScrollableContext(v1 + 104, a1 + 104);
  *a1 = v23;
  *(a1 + 16) = v24;
  *(a1 + 32) = *v25;
  *(a1 + 41) = *&v25[9];
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 80) = v7;
  *(a1 + 88) = v5;
  *(a1 + 96) = v6;
  v8 = type metadata accessor for IOSMultiColumnModifier(0);
  v9 = *(v8 + 40);
  *(a1 + v9) = swift_getKeyPath();
  type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v10 = a1 + *(v8 + 44);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  outlined copy of Transaction?(v4);
  ListTableCellModifier.effectiveInsets.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>();
  v20 = (a1 + *(v19 + 44));
  outlined init with copy of AccessibilityScrollableContext(v1 + 104, (v20 + 5));
  *v20 = v12;
  v20[1] = v14;
  v20[2] = v16;
  v20[3] = v18;
  v20[4] = v5;
  v21 = *(type metadata accessor for LegacyModifier(0) + 28);
  *(v20 + v21) = swift_getKeyPath();

  return swift_storeEnumTagMultiPayload();
}

double key path getter for EnvironmentValues.horizontalListMargin : EnvironmentValues@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.horizontalListMargin : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t LegacyModifier.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CellConfiguration();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22[-v8];
  KeyPath = swift_getKeyPath();
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v23 = static Edge.Set.all.getter();
  v58[72] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v59[3] + 7) = *(&v59[10] + 8);
  *(&v59[4] + 7) = *(&v59[11] + 8);
  *(&v59[5] + 7) = *(&v59[12] + 8);
  *(&v59[6] + 7) = *(&v59[13] + 8);
  *(v59 + 7) = *(&v59[7] + 8);
  *(&v59[1] + 7) = *(&v59[8] + 8);
  *(&v59[2] + 7) = *(&v59[9] + 8);
  type metadata accessor for LegacyModifier(0);
  specialized Environment.wrappedValue.getter(v6);
  outlined init with copy of UICellConfigurationState?(v6, v9);
  outlined destroy of CellConfiguration(v6, type metadata accessor for CellConfiguration);
  v14 = type metadata accessor for UICellConfigurationState();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Environment<CellConfiguration>.Content(v9, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
    v16 = 0;
  }

  else
  {
    v16 = UICellConfigurationState.isSelected.getter();
    (*(v15 + 8))(v9, v14);
  }

  outlined init with copy of AccessibilityScrollableContext((v2 + 5), v58);
  v57[0] = v16 & 1;
  if (v16)
  {
    v17 = 4;
  }

  else
  {
    v17 = 0;
  }

  outlined init with copy of AccessibilityScrollableContext(v58, v54);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v48 = 0;
  v49 = 0;
  v43 = v17;
  v44 = v17;
  v45 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v35 = 0;
  v36 = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v46);
  v31 = v46[6];
  v32 = v46[7];
  v33 = v46[8];
  v34 = v47;
  v27 = v46[2];
  v28 = v46[3];
  v29 = v46[4];
  v30 = v46[5];
  v25 = v46[0];
  v26 = v46[1];
  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v53);
  v56[2] = v54[2];
  v56[3] = *v55;
  *(&v56[3] + 15) = *&v55[15];
  v56[0] = v54[0];
  v56[1] = v54[1];
  *a1 = KeyPath;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = 768;
  *(a1 + 48) = v23;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = 0;
  v18 = v59[5];
  *(a1 + 153) = v59[4];
  *(a1 + 169) = v18;
  *(a1 + 185) = v59[6];
  *(a1 + 200) = *(&v59[6] + 15);
  v19 = v59[1];
  *(a1 + 89) = v59[0];
  *(a1 + 105) = v19;
  v20 = v59[3];
  *(a1 + 121) = v59[2];
  *(a1 + 137) = v20;
  memcpy((a1 + 208), v56, 0x170uLL);
  return outlined destroy of CellConfiguration(v57, type metadata accessor for AccessibilityListCoreCellModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>>);
}

uint64_t key path getter for EnvironmentValues.cellConfiguration : EnvironmentValues(uint64_t a1)
{
  if (*(a1 + 8))
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CellConfigurationKey>, &type metadata for CellConfigurationKey, &protocol witness table for CellConfigurationKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<CellConfigurationKey>, &type metadata for CellConfigurationKey, &protocol witness table for CellConfigurationKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<CellConfigurationKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t key path setter for EnvironmentValues.cellConfiguration : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for CellConfiguration();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CellConfiguration(a1, v4);
  return EnvironmentValues.cellConfiguration.setter(v4);
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_1(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
    type metadata accessor for IOSMultiColumnModifier(255);
    type metadata accessor for LegacyModifier(255);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for LegacyModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = v9 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = a2[4];
    v8 = *(a2 + 110);
    if (v8 == 2)
    {
      v10 = *(a2 + 4);
      *(a1 + 64) = v10;
      (**(v10 - 8))(a1 + 40, (a2 + 5));
      *(v4 + 80) = a2[10];
      *(v4 + 88) = a2[11];
    }

    else if (v8 == 1)
    {
      *(a1 + 40) = a2[5];
      *(a1 + 48) = a2[6];
    }

    else
    {
      v11 = *(a2 + 4);
      *(a1 + 64) = v11;
      (**(v11 - 8))(a1 + 40, (a2 + 5));
      *(v4 + 80) = *(a2 + 80);
      *(v4 + 88) = a2[11];
      *(v4 + 96) = a2[12];
      *(v4 + 104) = *(a2 + 26);
      *(v4 + 108) = *(a2 + 54);
    }

    *(v4 + 110) = v8;

    v12 = *(a3 + 28);
    v13 = (v4 + v12);
    v14 = (a2 + v12);
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for UICellConfigurationState();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v14, 1, v15))
      {
        type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
        memcpy(v13, v14, *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 16))(v13, v14, v15);
        (*(v16 + 56))(v13, 0, 1, v15);
      }

      v18 = type metadata accessor for CellConfiguration();
      *(v13 + v18[5]) = *(v14 + v18[5]);
      *(v13 + v18[6]) = *(v14 + v18[6]);
      *(v13 + v18[7]) = *(v14 + v18[7]);
      *(v13 + v18[8]) = *(v14 + v18[8]);
      v19 = v18[9];
      v20 = v13 + v19;
      v21 = v14 + v19;
      v22 = *(v21 + 1);
      *v20 = *v21;
      *(v20 + 1) = v22;
      *(v20 + 2) = *(v21 + 2);
      *(v20 + 24) = *(v21 + 24);
      *(v20 + 40) = *(v21 + 40);
      *(v20 + 7) = *(v21 + 7);
    }

    else
    {
      *v13 = *v14;
    }

    swift_storeEnumTagMultiPayload();
  }

  return v4;
}

void type metadata accessor for Environment<CellConfiguration>.Content(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t destroy for LegacyModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 110);
  if (*(a1 + 110))
  {
    if (v4 == 1)
    {
      goto LABEL_7;
    }

    if (v4 != 2)
    {
      goto LABEL_8;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 40);
LABEL_7:

LABEL_8:
  v5 = a1 + *(a2 + 28);
  type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UICellConfigurationState();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v5, 1, v6))
    {
      (*(v7 + 8))(v5, v6);
    }

    type metadata accessor for CellConfiguration();
  }
}

uint64_t initializeWithCopy for LegacyModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 110);
  if (v7 == 2)
  {
    v8 = *(a2 + 64);
    *(a1 + 64) = v8;
    (**(v8 - 8))(a1 + 40, a2 + 40);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
  }

  else if (v7 == 1)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v9 = *(a2 + 64);
    *(a1 + 64) = v9;
    (**(v9 - 8))(a1 + 40, a2 + 40);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
  }

  *(a1 + 110) = v7;

  v10 = *(a3 + 28);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UICellConfigurationState();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13))
    {
      type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
      memcpy(v11, v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(v11, v12, v13);
      (*(v14 + 56))(v11, 0, 1, v13);
    }

    v16 = type metadata accessor for CellConfiguration();
    *(v11 + v16[5]) = *(v12 + v16[5]);
    *(v11 + v16[6]) = *(v12 + v16[6]);
    *(v11 + v16[7]) = *(v12 + v16[7]);
    *(v11 + v16[8]) = *(v12 + v16[8]);
    v17 = v16[9];
    v18 = v11 + v17;
    v19 = v12 + v17;
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    *(v18 + 2) = *(v19 + 2);
    *(v18 + 24) = *(v19 + 24);
    *(v18 + 40) = *(v19 + 40);
    *(v18 + 7) = *(v19 + 7);
  }

  else
  {
    *v11 = *v12;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for LegacyModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 40);
    v6 = *(a2 + 110);
    if (v6 == 2)
    {
      v7 = *(a2 + 64);
      *(a1 + 64) = v7;
      *(a1 + 72) = *(a2 + 72);
      (**(v7 - 8))(a1 + 40, a2 + 40);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 84) = *(a2 + 84);
      *(a1 + 88) = *(a2 + 88);
    }

    else if (v6 == 1)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      v8 = *(a2 + 64);
      *(a1 + 64) = v8;
      *(a1 + 72) = *(a2 + 72);
      (**(v8 - 8))(a1 + 40, a2 + 40);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 92) = *(a2 + 92);
      *(a1 + 96) = *(a2 + 96);
      v9 = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 104) = v9;
    }

    *(a1 + 110) = v6;

    v10 = *(a3 + 28);
    v11 = (a1 + v10);
    v12 = (a2 + v10);
    v13 = MEMORY[0x1E697DCB8];
    outlined destroy of Environment<CellConfiguration>.Content(a1 + v10, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for UICellConfigurationState();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v12, 1, v14))
      {
        type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
        memcpy(v11, v12, *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v15 + 16))(v11, v12, v14);
        (*(v15 + 56))(v11, 0, 1, v14);
      }

      v17 = type metadata accessor for CellConfiguration();
      *(v11 + v17[5]) = *(v12 + v17[5]);
      *(v11 + v17[6]) = *(v12 + v17[6]);
      *(v11 + v17[7]) = *(v12 + v17[7]);
      *(v11 + v17[8]) = *(v12 + v17[8]);
      v18 = v17[9];
      v19 = v11 + v18;
      v20 = v12 + v18;
      *v19 = *v20;
      *(v19 + 1) = *(v20 + 1);
      *(v19 + 2) = *(v20 + 2);
      v21 = *(v20 + 24);
      *(v19 + 40) = *(v20 + 40);
      *(v19 + 24) = v21;
      *(v19 + 7) = *(v20 + 7);
    }

    else
    {
      *v11 = *v12;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t initializeWithTake for LegacyModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 103) = *(a2 + 103);
  v5 = *(a3 + 28);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  *(a1 + 40) = *(a2 + 40);
  type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  v9 = v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UICellConfigurationState();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v7, 1, v10))
    {
      type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
      memcpy(v6, v7, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(v6, v7, v10);
      (*(v11 + 56))(v6, 0, 1, v10);
    }

    v13 = type metadata accessor for CellConfiguration();
    v6[v13[5]] = v7[v13[5]];
    v6[v13[6]] = v7[v13[6]];
    v6[v13[7]] = v7[v13[7]];
    *&v6[v13[8]] = *&v7[v13[8]];
    v14 = v13[9];
    v15 = &v6[v14];
    v16 = &v7[v14];
    v17 = *(v16 + 1);
    *v15 = *v16;
    *(v15 + 1) = v17;
    v18 = *(v16 + 3);
    *(v15 + 2) = *(v16 + 2);
    *(v15 + 3) = v18;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v6, v7, *(*(v9 - 8) + 64));
  }

  return a1;
}

uint64_t assignWithTake for LegacyModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 103) = *(a2 + 103);
    v7 = *(a2 + 40);
    v8 = *(a3 + 28);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    *(a1 + 40) = v7;
    v11 = MEMORY[0x1E697DCB8];
    outlined destroy of Environment<CellConfiguration>.Content(a1 + v8, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, v11);
    v13 = v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for UICellConfigurationState();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v10, 1, v14))
      {
        type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
        memcpy(v9, v10, *(*(v16 - 8) + 64));
      }

      else
      {
        (*(v15 + 32))(v9, v10, v14);
        (*(v15 + 56))(v9, 0, 1, v14);
      }

      v17 = type metadata accessor for CellConfiguration();
      v9[v17[5]] = v10[v17[5]];
      v9[v17[6]] = v10[v17[6]];
      v9[v17[7]] = v10[v17[7]];
      *&v9[v17[8]] = *&v10[v17[8]];
      v18 = v17[9];
      v19 = &v9[v18];
      v20 = &v10[v18];
      v21 = *(v20 + 1);
      *v19 = *v20;
      *(v19 + 1) = v21;
      v22 = *(v20 + 3);
      *(v19 + 2) = *(v20 + 2);
      *(v19 + 3) = v22;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v9, v10, *(*(v13 - 8) + 64));
    }
  }

  return a1;
}

void type metadata completion function for LegacyModifier()
{
  type metadata accessor for Environment<CellConfiguration>.Content(319, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for IOSMultiColumnModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = v9 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 41) = *(a2 + 41);
    *(a1 + 64) = a2[8];
    v8 = a2[9];
    if (v8 == 1)
    {
      *(v4 + 72) = a2[9];
      *(v4 + 80) = *(a2 + 80);
    }

    else
    {
      *(v4 + 72) = v8;
      *(v4 + 80) = *(a2 + 80);
    }

    *(v4 + 88) = a2[11];
    *(v4 + 96) = *(a2 + 96);
    v10 = *(a2 + 174);
    if (v10 == 2)
    {
      v11 = *(a2 + 8);
      *(v4 + 128) = v11;
      (**(v11 - 8))(v4 + 104, (a2 + 13));
      *(v4 + 144) = a2[18];
      *(v4 + 152) = a2[19];
    }

    else if (v10 == 1)
    {
      *(v4 + 104) = a2[13];
      *(v4 + 112) = a2[14];
    }

    else
    {
      v12 = *(a2 + 8);
      *(v4 + 128) = v12;
      (**(v12 - 8))(v4 + 104, (a2 + 13));
      *(v4 + 144) = *(a2 + 144);
      *(v4 + 152) = a2[19];
      *(v4 + 160) = a2[20];
      *(v4 + 168) = *(a2 + 42);
      *(v4 + 172) = *(a2 + 86);
    }

    *(v4 + 174) = v10;

    v13 = *(a3 + 40);
    v14 = (v4 + v13);
    v15 = (a2 + v13);
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for UICellConfigurationState();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v15, 1, v16))
      {
        type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
        memcpy(v14, v15, *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v17 + 16))(v14, v15, v16);
        (*(v17 + 56))(v14, 0, 1, v16);
      }

      v19 = type metadata accessor for CellConfiguration();
      *(v14 + v19[5]) = *(v15 + v19[5]);
      *(v14 + v19[6]) = *(v15 + v19[6]);
      *(v14 + v19[7]) = *(v15 + v19[7]);
      *(v14 + v19[8]) = *(v15 + v19[8]);
      v20 = v19[9];
      v21 = v14 + v20;
      v22 = v15 + v20;
      v23 = *(v22 + 1);
      *v21 = *v22;
      *(v21 + 1) = v23;
      *(v21 + 2) = *(v22 + 2);
      *(v21 + 24) = *(v22 + 24);
      *(v21 + 40) = *(v22 + 40);
      *(v21 + 7) = *(v22 + 7);
    }

    else
    {
      *v14 = *v15;
    }

    swift_storeEnumTagMultiPayload();
    v24 = *(a3 + 44);
    v25 = v4 + v24;
    v26 = (a2 + v24);
    v27 = *v26;
    v28 = *(v26 + 8);
    outlined copy of Environment<Bool>.Content(*v26, v28);
    *v25 = v27;
    *(v25 + 8) = v28;
  }

  return v4;
}

uint64_t destroy for IOSMultiColumnModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) != 1)
  {
  }

  v4 = *(a1 + 174);
  if (*(a1 + 174))
  {
    if (v4 == 1)
    {
      goto LABEL_9;
    }

    if (v4 != 2)
    {
      goto LABEL_10;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 104);
LABEL_9:

LABEL_10:
  v5 = a1 + *(a2 + 40);
  type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UICellConfigurationState();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v5, 1, v6))
    {
      (*(v7 + 8))(v5, v6);
    }

    type metadata accessor for CellConfiguration();
  }

  v8 = (a1 + *(a2 + 44));
  v9 = *v8;
  v10 = *(v8 + 8);

  return outlined consume of Environment<Bool>.Content(v9, v10);
}

uint64_t initializeWithCopy for IOSMultiColumnModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 72);
  if (v7 == 1)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *(a1 + 72) = v7;
    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v8 = *(a2 + 174);
  if (v8 == 2)
  {
    v9 = *(a2 + 128);
    *(a1 + 128) = v9;
    (**(v9 - 8))(a1 + 104, a2 + 104);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
  }

  else if (v8 == 1)
  {
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
  }

  else
  {
    v10 = *(a2 + 128);
    *(a1 + 128) = v10;
    (**(v10 - 8))(a1 + 104, a2 + 104);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 172) = *(a2 + 172);
  }

  *(a1 + 174) = v8;

  v11 = *(a3 + 40);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UICellConfigurationState();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v13, 1, v14))
    {
      type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
      memcpy(v12, v13, *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(v12, v13, v14);
      (*(v15 + 56))(v12, 0, 1, v14);
    }

    v17 = type metadata accessor for CellConfiguration();
    *(v12 + v17[5]) = *(v13 + v17[5]);
    *(v12 + v17[6]) = *(v13 + v17[6]);
    *(v12 + v17[7]) = *(v13 + v17[7]);
    *(v12 + v17[8]) = *(v13 + v17[8]);
    v18 = v17[9];
    v19 = v12 + v18;
    v20 = v13 + v18;
    v21 = *(v20 + 1);
    *v19 = *v20;
    *(v19 + 1) = v21;
    *(v19 + 2) = *(v20 + 2);
    *(v19 + 24) = *(v20 + 24);
    *(v19 + 40) = *(v20 + 40);
    *(v19 + 7) = *(v20 + 7);
  }

  else
  {
    *v12 = *v13;
  }

  swift_storeEnumTagMultiPayload();
  v22 = *(a3 + 44);
  v23 = a1 + v22;
  v24 = (a2 + v22);
  v25 = *v24;
  v26 = *(v24 + 8);
  outlined copy of Environment<Bool>.Content(*v24, v26);
  *v23 = v25;
  *(v23 + 8) = v26;
  return a1;
}

uint64_t assignWithCopy for IOSMultiColumnModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v6;
  v7 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v7;
  v8 = a2[4];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v8;
  v9 = a2[6];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v9;
  *(a1 + 64) = a2[8];
  v10 = a1 + 72;
  v11 = *(a1 + 72);
  v13 = a2 + 9;
  v12 = a2[9];
  if (v11 == 1)
  {
    if (v12 == 1)
    {
      v14 = *v13;
      *(v10 + 8) = *(a2 + 80);
      *v10 = v14;
    }

    else
    {
      *(a1 + 72) = v12;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v12 == 1)
  {
    outlined destroy of ListItemTint(v10);
    v15 = *(v13 + 8);
    *v10 = *v13;
    *(v10 + 8) = v15;
  }

  else
  {
    *(a1 + 72) = v12;

    *(a1 + 80) = *(a2 + 80);
  }

  *(a1 + 88) = a2[11];
  *(a1 + 96) = *(a2 + 96);
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 104);
    v16 = *(a2 + 174);
    if (v16 == 2)
    {
      v17 = a2[16];
      *(a1 + 128) = v17;
      *(a1 + 136) = a2[17];
      (**(v17 - 8))(a1 + 104, (a2 + 13));
      *(a1 + 144) = *(a2 + 36);
      *(a1 + 148) = *(a2 + 37);
      *(a1 + 152) = a2[19];
    }

    else if (v16 == 1)
    {
      *(a1 + 104) = *(a2 + 26);
      *(a1 + 108) = *(a2 + 27);
      *(a1 + 112) = a2[14];
    }

    else
    {
      v18 = a2[16];
      *(a1 + 128) = v18;
      *(a1 + 136) = a2[17];
      (**(v18 - 8))(a1 + 104, (a2 + 13));
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 38);
      *(a1 + 156) = *(a2 + 39);
      *(a1 + 160) = a2[20];
      v19 = *(a2 + 42);
      *(a1 + 172) = *(a2 + 86);
      *(a1 + 168) = v19;
    }

    *(a1 + 174) = v16;

    v20 = *(a3 + 40);
    v21 = (a1 + v20);
    v22 = (a2 + v20);
    v23 = MEMORY[0x1E697DCB8];
    outlined destroy of Environment<CellConfiguration>.Content(a1 + v20, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, v23);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = type metadata accessor for UICellConfigurationState();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v22, 1, v24))
      {
        type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
        memcpy(v21, v22, *(*(v26 - 8) + 64));
      }

      else
      {
        (*(v25 + 16))(v21, v22, v24);
        (*(v25 + 56))(v21, 0, 1, v24);
      }

      v27 = type metadata accessor for CellConfiguration();
      *(v21 + v27[5]) = *(v22 + v27[5]);
      *(v21 + v27[6]) = *(v22 + v27[6]);
      *(v21 + v27[7]) = *(v22 + v27[7]);
      *(v21 + v27[8]) = *(v22 + v27[8]);
      v28 = v27[9];
      v29 = v21 + v28;
      v30 = v22 + v28;
      *v29 = *v30;
      *(v29 + 1) = *(v30 + 1);
      *(v29 + 2) = *(v30 + 2);
      v31 = *(v30 + 24);
      *(v29 + 40) = *(v30 + 40);
      *(v29 + 24) = v31;
      *(v29 + 7) = *(v30 + 7);
    }

    else
    {
      *v21 = *v22;
    }

    swift_storeEnumTagMultiPayload();
  }

  v32 = *(a3 + 44);
  v33 = (a1 + v32);
  v34 = (a2 + v32);
  v35 = *v34;
  v36 = *(v34 + 8);
  outlined copy of Environment<Bool>.Content(*v34, v36);
  v37 = *v33;
  v38 = *(v33 + 8);
  *v33 = v35;
  *(v33 + 8) = v36;
  outlined consume of Environment<Bool>.Content(v37, v38);
  return a1;
}

uint64_t initializeWithTake for IOSMultiColumnModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 167) = *(a2 + 167);
  v8 = *(a3 + 40);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *(a1 + 104) = *(a2 + 104);
  type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  v12 = v11;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UICellConfigurationState();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13))
    {
      type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
      memcpy(v9, v10, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 32))(v9, v10, v13);
      (*(v14 + 56))(v9, 0, 1, v13);
    }

    v16 = type metadata accessor for CellConfiguration();
    v9[v16[5]] = v10[v16[5]];
    v9[v16[6]] = v10[v16[6]];
    v9[v16[7]] = v10[v16[7]];
    *&v9[v16[8]] = *&v10[v16[8]];
    v17 = v16[9];
    v18 = &v9[v17];
    v19 = &v10[v17];
    v20 = *(v19 + 1);
    *v18 = *v19;
    *(v18 + 1) = v20;
    v21 = *(v19 + 3);
    *(v18 + 2) = *(v19 + 2);
    *(v18 + 3) = v21;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v9, v10, *(*(v12 - 8) + 64));
  }

  v22 = *(a3 + 44);
  v23 = a1 + v22;
  v24 = a2 + v22;
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);
  return a1;
}

uint64_t assignWithTake for IOSMultiColumnModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  v7 = a1 + 72;
  v6 = *(a1 + 72);
  *(v7 - 8) = *(a2 + 64);
  v9 = a2 + 72;
  v8 = *(a2 + 72);
  if (v6 == 1)
  {
    goto LABEL_4;
  }

  if (v8 == 1)
  {
    outlined destroy of ListItemTint(v7);
LABEL_4:
    *v7 = *v9;
    *(v7 + 8) = *(v9 + 8);
    goto LABEL_6;
  }

  *(a1 + 72) = v8;

  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  if (a1 != a2)
  {
    outlined destroy of AccessibilityScrollableContext(a1 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 167) = *(a2 + 167);
    v10 = *(a3 + 40);
    v11 = (a1 + v10);
    v12 = (a2 + v10);
    *(a1 + 104) = *(a2 + 104);
    v13 = MEMORY[0x1E697DCB8];
    outlined destroy of Environment<CellConfiguration>.Content(a1 + v10, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, v13);
    v15 = v14;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = type metadata accessor for UICellConfigurationState();
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v12, 1, v16))
      {
        type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
        memcpy(v11, v12, *(*(v18 - 8) + 64));
      }

      else
      {
        (*(v17 + 32))(v11, v12, v16);
        (*(v17 + 56))(v11, 0, 1, v16);
      }

      v19 = type metadata accessor for CellConfiguration();
      v11[v19[5]] = v12[v19[5]];
      v11[v19[6]] = v12[v19[6]];
      v11[v19[7]] = v12[v19[7]];
      *&v11[v19[8]] = *&v12[v19[8]];
      v20 = v19[9];
      v21 = &v11[v20];
      v22 = &v12[v20];
      v23 = *(v22 + 1);
      *v21 = *v22;
      *(v21 + 1) = v23;
      v24 = *(v22 + 3);
      *(v21 + 2) = *(v22 + 2);
      *(v21 + 3) = v24;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v11, v12, *(*(v15 - 8) + 64));
    }
  }

  v25 = *(a3 + 44);
  v26 = (a1 + v25);
  v27 = (a2 + v25);
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  v29 = *v26;
  v30 = *(v26 + 8);
  *v26 = v28;
  *(v26 + 8) = v27;
  outlined consume of Environment<Bool>.Content(v29, v30);
  return a1;
}

void type metadata completion function for IOSMultiColumnModifier()
{
  type metadata accessor for Environment<CellConfiguration>.Content(319, &lazy cache variable for type metadata for Environment<CellConfiguration>.Content, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCB8]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListTableCellModifier>, StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListTableCellModifier>, StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListTableCellModifier>, StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ListTableCellModifier>, StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ListTableCellModifier>, StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>>, type metadata accessor for _ViewModifier_Content<ListTableCellModifier>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type _ViewModifier_Content<ListTableCellModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ListTableCellModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<ListTableCellModifier>);
    lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListTableCellModifier>, StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<ListTableCellModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ListTableCellModifier>)
  {
    lazy protocol witness table accessor for type ListTableCellModifier and conformance ListTableCellModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<ListTableCellModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ListTableCellModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type IOSMultiColumnModifier and conformance IOSMultiColumnModifier, type metadata accessor for IOSMultiColumnModifier);
    lazy protocol witness table accessor for type _ViewModifier_Content<ListTableCellModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type LegacyModifier and conformance LegacyModifier, type metadata accessor for LegacyModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ListTableCellModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, void (*a2)(uint64_t))
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

double IOSMultiColumnModifier.insets.getter()
{
  v1 = type metadata accessor for CellConfiguration();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IOSMultiColumnModifier(0);
  specialized Environment.wrappedValue.getter(v3);
  specialized Environment.wrappedValue.getter(*(v0 + *(v4 + 44)), *(v0 + *(v4 + 44) + 8));
  if (v3[*(v1 + 20)] - 2 >= 2)
  {
    if (v3[*(v1 + 20)])
    {
      v6 = *&v3[*(v1 + 36) + 24];
      outlined destroy of CellConfiguration(v3, type metadata accessor for CellConfiguration);
      v5 = v6 + -1.0;
    }

    else
    {
      outlined destroy of CellConfiguration(v3, type metadata accessor for CellConfiguration);
      v5 = 6.0;
    }
  }

  else
  {
    v5 = *&v3[*(v1 + 36) + 24];
    outlined destroy of CellConfiguration(v3, type metadata accessor for CellConfiguration);
  }

  v7 = v0[1];
  v17[2] = *v0;
  v17[3] = v7;
  v18[0] = v0[2];
  *(v18 + 9) = *(v0 + 41);
  v8 = COERCE_DOUBLE(OptionalEdgeInsets.top.getter());
  if ((v9 & 1) == 0)
  {
    v5 = v8;
  }

  v10 = v0[1];
  v16[2] = *v0;
  v16[3] = v10;
  v17[0] = v0[2];
  *(v17 + 9) = *(v0 + 41);
  OptionalEdgeInsets.leading.getter();
  v11 = v0[1];
  v15[2] = *v0;
  v15[3] = v11;
  v16[0] = v0[2];
  *(v16 + 9) = *(v0 + 41);
  OptionalEdgeInsets.bottom.getter();
  v12 = v0[1];
  v14[0] = *v0;
  v14[1] = v12;
  v15[0] = v0[2];
  *(v15 + 9) = *(v0 + 41);
  OptionalEdgeInsets.trailing.getter();
  return v5;
}

double IOSMultiColumnModifier.configuredHeight.getter()
{
  v1 = type metadata accessor for CellConfiguration();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 96) != 1)
  {
    return *(v0 + 88);
  }

  type metadata accessor for IOSMultiColumnModifier(0);
  specialized Environment.wrappedValue.getter(v3);
  v4 = *(v0 + 88);
  if (v3[*(v1 + 20)] == 1)
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v5 = static Solarium.isEnabled(for:)();
    outlined destroy of CellConfiguration(v3, type metadata accessor for CellConfiguration);
    v6 = v4 + -8.0;
    if (v5)
    {
      v4 = 52.0;
    }

    else
    {
      v4 = 44.0;
    }

    if (v6 > v4)
    {
      return v6;
    }
  }

  else
  {
    outlined destroy of CellConfiguration(v3, type metadata accessor for CellConfiguration);
  }

  return v4;
}

void *IOSMultiColumnModifier.body(content:)@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v48 - v4;
  v5 = type metadata accessor for CellConfiguration();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  KeyPath = swift_getKeyPath();
  v14 = *(type metadata accessor for IOSMultiColumnModifier(0) + 40);
  specialized Environment.wrappedValue.getter(v13);
  v56 = *&v13[*(v5 + 36) + 56];
  outlined destroy of CellConfiguration(v13, type metadata accessor for CellConfiguration);
  v55 = swift_getKeyPath();
  v15 = IOSMultiColumnModifier.insets.getter();
  v53 = v16;
  v54 = v15;
  v51 = v18;
  v52 = v17;
  LOBYTE(v62[0]) = 0;
  EdgeInsets.init(_all:)();
  v50 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v62[0]) = 0;
  v26 = IOSMultiColumnModifier.insets.getter();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v49 = static Edge.Set.all.getter();
  v79[72] = 0;
  IOSMultiColumnModifier.configuredHeight.getter();
  static Alignment.center.getter();
  v59 = v5;
  v33 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v80[55] = v116;
  *&v80[71] = v117;
  *&v80[87] = v118;
  *&v80[103] = v119;
  *&v80[7] = v113;
  *&v80[23] = v114;
  *&v80[39] = v115;
  v60 = swift_getKeyPath();
  v61 = v14;
  specialized Environment.wrappedValue.getter(v10);
  v34 = *&v10[*(v5 + 36) + 8];

  outlined destroy of CellConfiguration(v10, type metadata accessor for CellConfiguration);
  if (!v34)
  {
    v34 = *(v1 + 72);
    v33 = *(v1 + 80);
    outlined copy of Transaction?(v34);
  }

  v35 = v48;

  outlined copy of Transaction?(v34);

  outlined consume of ListItemTint?(v34);
  specialized Environment.wrappedValue.getter(v7);
  outlined init with copy of UICellConfigurationState?(v7, v35);
  outlined destroy of CellConfiguration(v7, type metadata accessor for CellConfiguration);
  v36 = type metadata accessor for UICellConfigurationState();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    outlined destroy of Environment<CellConfiguration>.Content(v35, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
    v38 = 0;
  }

  else
  {
    v38 = UICellConfigurationState.isSelected.getter();
    (*(v37 + 8))(v35, v36);
  }

  outlined init with copy of AccessibilityScrollableContext(v2 + 104, v79);
  v78[0] = v38 & 1;
  if (v38)
  {
    v39 = 4;
  }

  else
  {
    v39 = 0;
  }

  outlined init with copy of AccessibilityScrollableContext(v79, v74);
  v71 = 0;
  v70 = 0;
  v72 = 0;
  v68 = 0;
  v69 = 0;
  v77[0] = v39;
  v77[1] = v39;
  LOBYTE(v77[2]) = 0;
  v82 = 0;
  v81 = 0;
  v83 = 0;
  v84 = 1;
  v86 = 0;
  v85 = 0.0;
  *&v76[0] = 0;
  BYTE8(v76[0]) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v66);
  v62[6] = v66[6];
  v62[7] = v66[7];
  v62[8] = v66[8];
  v63 = v67;
  v62[2] = v66[2];
  v62[3] = v66[3];
  v62[4] = v66[4];
  v62[5] = v66[5];
  v62[0] = v66[0];
  v62[1] = v66[1];
  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v73);
  v76[2] = v74[2];
  v76[3] = *v75;
  *(&v76[3] + 15) = *&v75[15];
  v76[1] = v74[1];
  v76[0] = v74[0];
  memcpy(v77 + 7, v76, 0x170uLL);
  v81 = KeyPath;
  v82 = v56;
  LOBYTE(v83) = 0;
  v84 = v55;
  v85 = v54;
  v86 = v53;
  v87 = v52;
  v88 = v51;
  v89 = 768;
  v90 = 2;
  v91 = v50;
  v92 = v21;
  v93 = v23;
  v94 = v25;
  v95 = 0;
  v96 = v49;
  v97 = v26;
  v98 = v28;
  v99 = v30;
  v100 = v32;
  v101 = 0;
  *v108 = *&v80[96];
  v106 = *&v80[64];
  v107 = *&v80[80];
  v102 = *v80;
  v103 = *&v80[16];
  v104 = *&v80[32];
  v105 = *&v80[48];
  *&v108[15] = *&v80[111];
  v109 = v60;
  v110 = v34;
  v111 = v33;
  memcpy(v112, v77, sizeof(v112));
  outlined destroy of CellConfiguration(v78, type metadata accessor for AccessibilityListCoreCellModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>>);
  specialized Environment.wrappedValue.getter(v13);
  v40 = v59;
  v41 = v13[*(v59 + 20)];
  outlined destroy of CellConfiguration(v13, type metadata accessor for CellConfiguration);
  if (v41)
  {
    specialized Environment.wrappedValue.getter(v13);

    outlined destroy of CellConfiguration(v13, type metadata accessor for CellConfiguration);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>(0);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>();
    View.defaultForegroundColor(_:)();

    specialized Environment.wrappedValue.getter(v13);
    outlined destroy of CellConfiguration(&v81, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>);
    v42 = *&v13[*(v40 + 36) + 16];

    outlined destroy of CellConfiguration(v13, type metadata accessor for CellConfiguration);
    v64 = swift_getKeyPath();
    v65 = v42;
    v43 = v62;
    v44 = v58;
    v45 = v58;
    v46 = 704;
  }

  else
  {
    v43 = &v81;
    v44 = v58;
    v45 = v58;
    v46 = 672;
  }

  result = memcpy(v45, v43, v46);
  v44[704] = v41 != 0;
  return result;
}

uint64_t outlined destroy of Environment<CellConfiguration>.Content(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for Environment<CellConfiguration>.Content(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of CellConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AccessibilityListCoreCellModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>>()
{
  if (!lazy cache variable for type metadata for AccessibilityListCoreCellModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for AccessibilityListCoreCellModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityListCoreCellModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>)
  {
    type metadata accessor for _ViewModifier_Content<LegacyModifier>();
    type metadata accessor for _EnvironmentKeyWritingModifier<EdgeInsets>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<EdgeInsets>, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<LegacyModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<LegacyModifier>)
  {
    type metadata accessor for LegacyModifier(255);
    lazy protocol witness table accessor for type _ViewModifier_Content<ListTableCellModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type LegacyModifier and conformance LegacyModifier, type metadata accessor for LegacyModifier);
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<LegacyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ListTableCellModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<LegacyModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<LegacyModifier>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<EdgeInsets> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<EdgeInsets> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<EdgeInsets> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<EdgeInsets> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<EdgeInsets>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<EdgeInsets>, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<EdgeInsets> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for AccessibilityListCoreCellModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>>()
{
  if (!lazy cache variable for type metadata for AccessibilityListCoreCellModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListItemTint?> and conformance _EnvironmentKeyWritingModifier<A>);
    v0 = type metadata accessor for AccessibilityListCoreCellModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityListCoreCellModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListItemTint?>, &lazy cache variable for type metadata for ListItemTint?, &type metadata for ListItemTint);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>();
    type metadata accessor for _EnvironmentKeyWritingModifier<EdgeInsets>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<EdgeInsets>, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>)
  {
    type metadata accessor for _ViewModifier_Content<IOSMultiColumnModifier>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<CGFloat?>, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<IOSMultiColumnModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<IOSMultiColumnModifier>)
  {
    type metadata accessor for IOSMultiColumnModifier(255);
    lazy protocol witness table accessor for type _ViewModifier_Content<ListTableCellModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type IOSMultiColumnModifier and conformance IOSMultiColumnModifier, type metadata accessor for IOSMultiColumnModifier);
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<IOSMultiColumnModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<EdgeInsets> and conformance _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ListTableCellModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<IOSMultiColumnModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<IOSMultiColumnModifier>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListItemTint?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListItemTint?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListItemTint?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListItemTint?>, &lazy cache variable for type metadata for ListItemTint?, &type metadata for ListItemTint);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListItemTint?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListItemTint?> and conformance _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityScrollableContextModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<LegacyModifier>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _FlexFrameLayout>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ListTableCellModifier>, StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ListTableCellModifier>, StaticIf<_SemanticFeature<Semantics_v2>, IOSMultiColumnModifier, LegacyModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<IOSMultiColumnModifier>, _EnvironmentKeyWritingModifier<CGFloat?>>, _EnvironmentKeyWritingModifier<EdgeInsets>>, _AlignmentLayout>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListItemTint?>>, AccessibilityScrollableContextModifier>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<EdgeInsets>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized static Scene._makeScene(scene:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v3 = v19;
  v4 = v20;
  v5 = DWORD1(v20);
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v18[0] = a1[2];
  *(v18 + 12) = *(a1 + 44);
  outlined init with copy of _SceneInputs(a1, &v19);
  if (AGTypeID.isValueType.getter())
  {
    v19 = v3;
    LOBYTE(v20) = v4;
    DWORD1(v20) = v5;
    type metadata accessor for SceneBodyAccessor<Never>();
    lazy protocol witness table accessor for type SceneBodyAccessor<Never> and conformance SceneBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v7 = v14;
    v19 = v16;
    v20 = v17;
    v21[0] = v18[0];
    *(v21 + 12) = *(v18 + 12);
    outlined init with copy of _SceneInputs(&v19, &v13);
    specialized static Scene._makeScene(scene:inputs:)(&v13, v12, &v19);
    outlined destroy of _SceneInputs(&v19);
    v8 = v13;
    v9 = DWORD2(v13);
    if ((v7 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v13 = v16;
    v14 = v17;
    v15[0] = v18[0];
    *(v15 + 12) = *(v18 + 12);
    outlined destroy of _SceneInputs(&v13);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    *&v19 = 0xD00000000000001ALL;
    *(&v19 + 1) = 0x800000018CD53B70;
    MEMORY[0x18D00C9B0](0x726576654ELL, 0xE500000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Scene._makeScene(scene:inputs:) in conformance Never@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return specialized static Scene._makeScene(scene:inputs:)(v4, a2);
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance SceneDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance SceneDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static SceneDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance SceneDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

void specialized Scene.sceneBodyError()()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for SceneBodyAccessor<Never>()
{
  if (!lazy cache variable for type metadata for SceneBodyAccessor<Never>)
  {
    v0 = type metadata accessor for SceneBodyAccessor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SceneBodyAccessor<Never>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SceneBodyAccessor<Never> and conformance SceneBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type SceneBodyAccessor<Never> and conformance SceneBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type SceneBodyAccessor<Never> and conformance SceneBodyAccessor<A>)
  {
    type metadata accessor for SceneBodyAccessor<Never>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneBodyAccessor<Never> and conformance SceneBodyAccessor<A>);
  }

  return result;
}

uint64_t outlined init with take of _ConditionalContent<ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<LinearProgressViewStyle>>, ModifiedContent<ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, ProgressViewStyleModifier<CircularProgressViewStyle>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t _DragSession.Phase.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = v1 >> 6;
  if (v1 >> 6 > 1)
  {
    if (v2 == 2)
    {
      v5 = v1 & 0x3F;
      v6 = *v0;
      v7 = *(v0 + 8);
      MEMORY[0x18D00F6F0](2);
      if (v6 == 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v6;
      }

      MEMORY[0x18D00F730](*&v8);
      if (v7 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v7;
      }

      MEMORY[0x18D00F730](*&v9);
      if (v5 < 2)
      {
        if (v5)
        {
          v10 = 1;
        }

        else
        {
          v10 = v5;
        }

        return MEMORY[0x18D00F6F0](v10);
      }

      if (v5 <= 2)
      {
        v10 = 2;
        return MEMORY[0x18D00F6F0](v10);
      }

      if (v5 != 3)
      {
        result = _diagnoseUnavailableCodeReached()();
        __break(1u);
        return result;
      }
    }

    v10 = 3;
    return MEMORY[0x18D00F6F0](v10);
  }

  v3 = *v0;
  v4 = *(v0 + 8);
  MEMORY[0x18D00F6F0](v2 != 0);
  if (v3 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x18D00F730](*&v11);
  if (v4 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v4;
  }

  return MEMORY[0x18D00F730](*&v12);
}

uint64_t _DragSession.Phase.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  v4 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    MEMORY[0x18D00F6F0](v4 != 0);
    if (v2 == 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v2;
    }

    MEMORY[0x18D00F730](*&v9);
    if (v1 == 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v1;
    }

    MEMORY[0x18D00F730](*&v10);
    return Hasher._finalize()();
  }

  if (v4 != 2)
  {
    v8 = 3;
LABEL_22:
    MEMORY[0x18D00F6F0](v8);
    return Hasher._finalize()();
  }

  v5 = v3 & 0x3F;
  MEMORY[0x18D00F6F0](2);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x18D00F730](*&v6);
  if (v1 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v1;
  }

  MEMORY[0x18D00F730](*&v7);
  if (v5 < 2)
  {
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v5;
    }

    goto LABEL_22;
  }

  if (v5 <= 2)
  {
    v8 = 2;
    goto LABEL_22;
  }

  if (v5 == 3)
  {
    v8 = 3;
    goto LABEL_22;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance _DragSession.Phase()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  v4 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    MEMORY[0x18D00F6F0](v4 != 0);
    CGPoint.hash(into:)(v2, v1);
    return Hasher._finalize()();
  }

  if (v4 != 2)
  {
    v6 = 3;
LABEL_9:
    MEMORY[0x18D00F6F0](v6);
    return Hasher._finalize()();
  }

  v5 = v3 & 0x3F;
  MEMORY[0x18D00F6F0](2);
  CGPoint.hash(into:)(v2, v1);
  if (v5 < 2)
  {
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    goto LABEL_9;
  }

  if (v5 <= 2)
  {
    v6 = 2;
    goto LABEL_9;
  }

  if (v5 == 3)
  {
    v6 = 3;
    goto LABEL_9;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

__n128 _DragSession.phase.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t _DragSession.location.getter()
{
  if (*(v0 + 24) >> 6 == 2)
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 24) >> 6 <= 1u)
  {
    return *(v0 + 8);
  }

  else
  {
    return v1;
  }
}

uint64_t CGPoint.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x18D00F730](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x18D00F730](*&v3);
}

uint64_t specialized static _DragSession.Phase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v8 != 2)
    {
      v15 = *&v5 | *&v6;
      v16 = v7 >= 0xC0 && v15 == 0;
      return v16 && v7 == 192;
    }

    if ((v7 & 0xC0) != 0x80)
    {
      return 0;
    }

    if (v2 != v6 || v3 != v5)
    {
      return 0;
    }

    v10 = v4 & 0x3F;
    if (v10 >= 2)
    {
      if ((v4 & 0x3F) > 2)
      {
        if (v10 != 3)
        {
          _diagnoseUnavailableCodeReached()();
          __break(1u);
          goto LABEL_44;
        }

        v11 = 0;
        v12 = 0;
        v13 = 0;
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        v12 = 0;
        v13 = 0;
        v11 = 1;
      }
    }

    else if ((v4 & 0x3F) != 0)
    {
      LOBYTE(v10) = 0;
      v11 = 0;
      v13 = 0;
      v12 = 1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 1;
    }

    v17 = v7 & 0x3F;
    if (v17 < 2)
    {
      if (v17)
      {
        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v13 & 1) == 0)
      {
        return 0;
      }

      return 1;
    }

    if (v17 <= 2)
    {
      return (v11 & 1) != 0;
    }

    if (v17 == 3)
    {
      return (v10 & 1) != 0;
    }

LABEL_44:
    result = _diagnoseUnavailableCodeReached()();
    __break(1u);
    return result;
  }

  if (!v8)
  {
    if (v7 >= 0x40)
    {
      return 0;
    }

    return v3 == v5 && v2 == v6;
  }

  if ((v7 & 0xC0) != 0x40)
  {
    return 0;
  }

  return v3 == v5 && v2 == v6;
}

unint64_t lazy protocol witness table accessor for type DraggingFormation and conformance DraggingFormation()
{
  result = lazy protocol witness table cache variable for type DraggingFormation and conformance DraggingFormation;
  if (!lazy protocol witness table cache variable for type DraggingFormation and conformance DraggingFormation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DraggingFormation and conformance DraggingFormation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DragSession.Phase and conformance _DragSession.Phase()
{
  result = lazy protocol witness table cache variable for type _DragSession.Phase and conformance _DragSession.Phase;
  if (!lazy protocol witness table cache variable for type _DragSession.Phase and conformance _DragSession.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DragSession.Phase and conformance _DragSession.Phase);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _DragSession(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 25))
  {
    return (*a1 + 29);
  }

  v3 = ((*(a1 + 24) >> 1) & 0x1C | (*(a1 + 24) >> 6)) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _DragSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 29;
    if (a3 >= 0x1D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _DragSession.Phase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 17))
  {
    return (*a1 + 29);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6)) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for _DragSession.Phase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t getEnumTag for _DragSession.Phase(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t destructiveInjectEnumTag for _DragSession.Phase(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 7 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t View.swipeActions<A>(edge:allowsFullSwipe:content:)@<X0>(char a1@<W0>, int a2@<W1>, void (*a3)(double)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = 0;
  v11 = 256;
  return View.swipeActions<A>(edge:allowsFullSwipe:style:content:)(a1 & 1, a2, &v10, a3, a4, a5, a6, a7, a9, a8);
}

uint64_t View.swipeActions<A>(edge:allowsFullSwipe:style:content:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, void (*a4)(double)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v65 = a8;
  v50 = a6;
  v60 = a5;
  v61 = a4;
  v63 = a1;
  v64 = a2;
  v66 = a9;
  v62 = *(a7 - 8);
  v49 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
  v14 = type metadata accessor for ModifiedContent();
  v59 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43[-v15];
  _s7SwiftUI18StyleContextWriterVyAA012SwipeActionscD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E6980428], MEMORY[0x1E6980420], MEMORY[0x1E697F4C8]);
  v51 = v14;
  v17 = type metadata accessor for ModifiedContent();
  v57 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v43[-v18];
  v19 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>();
  v75 = a10;
  v76 = v19;
  v58 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  v21 = lazy protocol witness table accessor for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>();
  v73 = WitnessTable;
  v74 = v21;
  v48 = v17;
  swift_getWitnessTable();
  v22 = type metadata accessor for SwipeActionsModifier();
  v55 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43[-v23];
  v25 = type metadata accessor for ModifiedContent();
  v56 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v43[-v26];
  _s7SwiftUI18StyleContextWriterVyAA012SwipeActionscD0VGMaTm_0(255, &lazy cache variable for type metadata for _TraitWritingModifier<SwipeActionsArePresent>, &type metadata for SwipeActionsArePresent, &protocol witness table for SwipeActionsArePresent, MEMORY[0x1E697FDB8]);
  v46 = v28;
  v52 = type metadata accessor for ModifiedContent();
  v54 = *(v52 - 8);
  v29 = MEMORY[0x1EEE9AC00](v52);
  v31 = &v43[-v30];
  v45 = *a3;
  v44 = *(a3 + 8);
  v32 = *(a3 + 9);
  v61(v29);
  static SymbolVariants.fill.getter();
  v71 = v72;
  View.symbolVariant(_:)();
  (*(v62 + 8))(v13, a7);
  v33 = v53;
  v34 = v51;
  View.styleContext<A>(_:)();
  (*(v59 + 8))(v16, v34);
  LOBYTE(a3) = v63 & 1;
  LOBYTE(v72) = v32;
  (*(v57 + 32))(v24, v33, v48);
  v35 = &v24[*(v22 + 36)];
  *v35 = v64;
  v35[1] = a3;
  *(v35 + 1) = v45;
  v35[16] = v44;
  v35[17] = v32;
  v36 = MEMORY[0x1E69E7CC0];
  *(v35 + 4) = 0;
  *(v35 + 5) = 0;
  *(v35 + 3) = v36;
  v35[48] = 0;
  *(v35 + 56) = 0u;
  *(v35 + 72) = 0u;
  *(v35 + 88) = 0u;
  *(v35 + 13) = 0;
  v37 = v65;
  MEMORY[0x18D00A570](v24, v50, v22, v65);
  (*(v55 + 8))(v24, v22);
  LOBYTE(v72) = 1;
  v69 = v37;
  v70 = &protocol witness table for SwipeActionsModifier<A>;
  v38 = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v72, v25, v46, v38);
  (*(v56 + 8))(v27, v25);
  v39 = lazy protocol witness table accessor for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>();
  v67 = v38;
  v68 = v39;
  v40 = v52;
  v41 = swift_getWitnessTable();
  View.sharingPickerHost()(v40, v41);
  return (*(v54 + 8))(v31, v40);
}

void _s7SwiftUI18StyleContextWriterVyAA012SwipeActionscD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t View.swipeActions<A>(edge:allowsFullSwipe:isPresented:content:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void (*a6)(double)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = a8;
  v57 = a7;
  v58 = a6;
  v64 = a5;
  v62 = a3;
  v63 = a4;
  v60 = a1;
  v61 = a2;
  v66 = a9;
  v65 = a11;
  v59 = *(a10 - 8);
  v45 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
  v14 = type metadata accessor for ModifiedContent();
  v56 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v43 - v15;
  _s7SwiftUI18StyleContextWriterVyAA012SwipeActionscD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E6980428], MEMORY[0x1E6980420], MEMORY[0x1E697F4C8]);
  v46 = v14;
  v16 = type metadata accessor for ModifiedContent();
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v43 - v17;
  v18 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>();
  v75 = a12;
  v76 = v18;
  v55 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v43 = WitnessTable;
  v20 = lazy protocol witness table accessor for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>();
  v73 = WitnessTable;
  v74 = v20;
  v47 = v16;
  swift_getWitnessTable();
  v21 = type metadata accessor for SwipeActionsModifier();
  v51 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v24 = type metadata accessor for ModifiedContent();
  v52 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  _s7SwiftUI18StyleContextWriterVyAA012SwipeActionscD0VGMaTm_0(255, &lazy cache variable for type metadata for _TraitWritingModifier<SwipeActionsArePresent>, &type metadata for SwipeActionsArePresent, &protocol witness table for SwipeActionsArePresent, MEMORY[0x1E697FDB8]);
  v44 = v27;
  v28 = type metadata accessor for ModifiedContent();
  v50 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v43 - v30;
  v58(v29);
  static SymbolVariants.fill.getter();
  v71 = v72;
  v32 = v53;
  View.symbolVariant(_:)();
  (*(v59 + 8))(v13, a10);
  v33 = v49;
  v34 = v46;
  View.styleContext<A>(_:)();
  (*(v56 + 8))(v32, v34);
  LOBYTE(v13) = v60 & 1;
  LOBYTE(v72) = 1;
  (*(v54 + 32))(v23, v33, v47);
  v35 = &v23[*(v21 + 36)];
  *v35 = v61;
  v35[1] = v13;
  *(v35 + 1) = 0;
  *(v35 + 8) = 256;
  v36 = v62;
  v37 = v63;
  *(v35 + 3) = MEMORY[0x1E69E7CC0];
  *(v35 + 4) = v36;
  *(v35 + 5) = v37;
  v35[48] = v64;
  *(v35 + 56) = 0u;
  *(v35 + 72) = 0u;
  *(v35 + 88) = 0u;
  *(v35 + 13) = 0;
  outlined copy of Binding<Int>?(v36, v37);
  v38 = v65;
  MEMORY[0x18D00A570](v23, v48, v21, v65);
  (*(v51 + 8))(v23, v21);
  LOBYTE(v72) = 1;
  v69 = v38;
  v70 = &protocol witness table for SwipeActionsModifier<A>;
  v39 = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v72, v24, v44, v39);
  (*(v52 + 8))(v26, v24);
  v40 = lazy protocol witness table accessor for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>();
  v67 = v39;
  v68 = v40;
  v41 = swift_getWitnessTable();
  View.sharingPickerHost()(v28, v41);
  return (*(v50 + 8))(v31, v28);
}

uint64_t View.swipeActions<A>(edge:allowsFullSwipe:style:isPresented:resultToken:content:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t *a7@<X6>, void (*a8)(double)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v94 = a9;
  v87 = a8;
  v92 = a6;
  v90 = a4;
  v91 = a5;
  v88 = a1;
  v89 = a2;
  v85 = a10;
  v73 = a11;
  v93 = a13;
  v81 = a12;
  v86 = *(a12 - 8);
  v69 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v82 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
  v17 = type metadata accessor for ModifiedContent();
  v84 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v58[-v18];
  _s7SwiftUI18StyleContextWriterVyAA012SwipeActionscD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E6980428], MEMORY[0x1E6980420], MEMORY[0x1E697F4C8]);
  v70 = v17;
  v19 = type metadata accessor for ModifiedContent();
  v79 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v58[-v20];
  v21 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>();
  v103 = a14;
  v104 = v21;
  v83 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v67 = WitnessTable;
  v23 = lazy protocol witness table accessor for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>();
  v101 = WitnessTable;
  v102 = v23;
  v68 = v19;
  swift_getWitnessTable();
  v64 = type metadata accessor for SwipeActionsModifier();
  v77 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v25 = &v58[-v24];
  v71 = type metadata accessor for ModifiedContent();
  v80 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v66 = &v58[-v26];
  _s7SwiftUI18StyleContextWriterVyAA012SwipeActionscD0VGMaTm_0(255, &lazy cache variable for type metadata for _TraitWritingModifier<SwipeActionsArePresent>, &type metadata for SwipeActionsArePresent, &protocol witness table for SwipeActionsArePresent, MEMORY[0x1E697FDB8]);
  v72 = v27;
  v75 = type metadata accessor for ModifiedContent();
  v76 = *(v75 - 8);
  v28 = MEMORY[0x1EEE9AC00](v75);
  v65 = &v58[-v29];
  v60 = *a3;
  v59 = *(a3 + 8);
  v30 = *(a3 + 9);
  v31 = *a7;
  v32 = a7[1];
  v33 = a7[3];
  v63 = a7[2];
  v34 = a7[5];
  v62 = a7[4];
  v61 = v34;
  v35 = a7[6];
  v36 = v82;
  v87(v28);
  static SymbolVariants.fill.getter();
  v99 = v100;
  v37 = v78;
  v38 = v81;
  View.symbolVariant(_:)();
  (*(v86 + 8))(v36, v38);
  v39 = v74;
  v40 = v70;
  View.styleContext<A>(_:)();
  (*(v84 + 8))(v37, v40);
  LOBYTE(a7) = v88 & 1;
  LOBYTE(v100) = v30;
  (*(v79 + 32))(v25, v39, v68);
  v41 = v64;
  v42 = &v25[*(v64 + 36)];
  *v42 = v89;
  v42[1] = a7;
  *(v42 + 1) = v60;
  v42[16] = v59;
  v43 = MEMORY[0x1E69E7CC0];
  v42[17] = v30;
  v44 = v90;
  v45 = v91;
  *(v42 + 3) = v43;
  *(v42 + 4) = v44;
  *(v42 + 5) = v45;
  v42[48] = v92;
  *(v42 + 7) = v31;
  *(v42 + 8) = v32;
  v46 = v63;
  *(v42 + 9) = v63;
  *(v42 + 10) = v33;
  v47 = v62;
  v48 = v61;
  *(v42 + 11) = v62;
  *(v42 + 12) = v48;
  *(v42 + 13) = v35;
  outlined copy of Binding<SwipeActionResultToken?>?(v31, v32, v46, v33, v47, v48);
  outlined copy of Binding<Int>?(v44, v45);
  v49 = v66;
  v50 = v93;
  MEMORY[0x18D00A570](v25, v73, v41, v93);
  (*(v77 + 8))(v25, v41);
  LOBYTE(v100) = 1;
  v97 = v50;
  v98 = &protocol witness table for SwipeActionsModifier<A>;
  v51 = v71;
  v52 = swift_getWitnessTable();
  v53 = v65;
  MEMORY[0x18D00A570](&v100, v51, v72, v52);
  (*(v80 + 8))(v49, v51);
  v54 = lazy protocol witness table accessor for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>();
  v95 = v52;
  v96 = v54;
  v55 = v75;
  v56 = swift_getWitnessTable();
  View.sharingPickerHost()(v55, v56);
  return (*(v76 + 8))(v53, v55);
}

void outlined copy of Binding<SwipeActionResultToken?>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    outlined copy of SwipeActionResultToken?(a3, a4, a5, a6);
  }
}

void outlined copy of SwipeActionResultToken?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    outlined copy of AppIntentExecutor?(a2);

    outlined copy of AppIntentExecutor?(a4);
  }
}

uint64_t static SwipeActionsModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;
  v25 = a3;
  v46 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a2[3];
  v42 = a2[2];
  v43 = v9;
  v44 = a2[4];
  v45 = *(a2 + 20);
  v10 = a2[1];
  v40 = *a2;
  v41 = v10;
  v27 = v8;
  type metadata accessor for SwipeActionsModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a5 - 8) + 64))
  {
    closure #1 in static SwipeActionsModifier._makeView(modifier:inputs:body:)(1, a5, a6, closure #1 in static PointerOffset.of(_:)partial apply);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v36 = v42;
  v37 = v43;
  v38 = v44;
  LODWORD(v39[0]) = v45;
  v34 = v40;
  v35 = v41;
  v12 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v34, 1, &v28);
  MEMORY[0x1EEE9AC00](v12);
  *&v34 = &type metadata for AllPlatformItemListFlags;
  *(&v34 + 1) = a5;
  *&v35 = &protocol witness table for AllPlatformItemListFlags;
  *(&v35 + 1) = a6;
  v13 = type metadata accessor for PlatformItemListGenerator();
  v22 = v13;
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(&v40, &v34);
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v28, closure #1 in Attribute.init<A>(_:)partial apply, &v21, v13, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  v38 = v32;
  v39[0] = v33[0];
  *(v39 + 12) = *(v33 + 12);
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v16 = (*(*(v13 - 8) + 8))(&v34, v13);
  v17 = v26;
  MEMORY[0x1EEE9AC00](v16);
  v22 = a5;
  WitnessTable = a6;
  LODWORD(v28) = v8;
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
  v18 = _GraphValue.subscript.getter();
  v19 = v26;
  v30 = v42;
  v31 = v43;
  v32 = v44;
  LODWORD(v33[0]) = v45;
  v28 = v40;
  v29 = v41;
  v25(v18, &v28);
  *&v28 = v43;
  DWORD2(v28) = DWORD2(v43);
  MEMORY[0x1EEE9AC00](v43);
  v22 = __PAIR64__(v19, v17);

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static SwipeActionsModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type SwipeActions.MakeValueTransform and conformance SwipeActions.MakeValueTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t static SwipeActionsModifier._makeViewList(modifier:inputs:body:)@<X0>(int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  outlined init with copy of _ViewListInputs(a2, v56);
  lazy protocol witness table accessor for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput();
  PropertyList.subscript.getter();
  if (v50 == 1)
  {
    v40 = a4;
    LOBYTE(v50) = 0;
    PropertyList.subscript.setter();
    v42 = v13;
    type metadata accessor for SwipeActionsModifier();
    v37 = type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    v14 = *(*(a5 - 8) + 64);
    v38 = a7;
    v39 = a3;
    if (v14)
    {
      closure #1 in static SwipeActionsModifier._makeView(modifier:inputs:body:)(1, a5, a6, partial apply for closure #1 in static PointerOffset.of(_:));
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v16 = a2[1];
    v49[0] = *a2;
    v49[1] = v16;
    v18 = *a2;
    v17 = a2[1];
    v49[2] = a2[2];
    v43 = v18;
    v44 = v17;
    v45 = a2[2];
    outlined init with copy of _GraphInputs(v49, &v50);
    _ViewInputs.init(withoutGeometry:)();
    v19 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v50, 1, &v43);
    MEMORY[0x1EEE9AC00](v19);
    *&v50 = &type metadata for AllPlatformItemListFlags;
    *(&v50 + 1) = a5;
    *&v51 = &protocol witness table for AllPlatformItemListFlags;
    *(&v51 + 1) = a6;
    v20 = type metadata accessor for PlatformItemListGenerator();
    v35 = v20;
    WitnessTable = swift_getWitnessTable();
    _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v43, closure #1 in Attribute.init<A>(_:)partial apply, v34, v20, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
    v54 = v47;
    v55[0] = v48[0];
    *(v55 + 12) = *(v48 + 12);
    v50 = v43;
    v51 = v44;
    v52 = v45;
    v53 = v46;
    v23 = (*(*(v20 - 8) + 8))(&v50, v20);
    v24 = v41;
    MEMORY[0x1EEE9AC00](v23);
    v35 = a5;
    WitnessTable = a6;
    LODWORD(v43) = v13;
    _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
    _GraphValue.subscript.getter();
    *&v43 = __PAIR64__(v41, v24);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type SwipeActions.MakeValue and conformance SwipeActions.MakeValue();
    v25 = Attribute.init<A>(body:value:flags:update:)();
    if (v57)
    {
      *&v43 = v57;
      BYTE8(v43) = v58 & 1;
      v57 = 0;
      v58 = 0;
      specialized Set._Variant.insert(_:)(&v41, &type metadata for SwipeActions.TraitKey);
      v26 = v43;
      v27 = BYTE8(v43);

      v57 = v26;
      v58 = v27;
    }

    v28 = _ViewListInputs.traits.getter();
    v29 = *MEMORY[0x1E698D3F8];
    if ((v28 & 0x100000000) == 0)
    {
      v29 = v28;
    }

    *&v43 = __PAIR64__(v29, v25);
    MEMORY[0x1EEE9AC00](v28);
    v30 = type metadata accessor for SwipeActionsModifier.WriteTrait();
    v35 = v30;
    WitnessTable = swift_getWitnessTable();
    _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<ViewTraitCollection>, MEMORY[0x1E697F890], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v43, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_21, v34, v30, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
    LOBYTE(v43) = 0;
    _ViewListInputs.traits.setter();
  }

  type metadata accessor for SwipeActionsModifier();
  LODWORD(v50) = v13;
  static ViewModifier.makeMultiViewList(modifier:inputs:body:)();
  return outlined destroy of _ViewListInputs(v56);
}

uint64_t closure #1 in static SwipeActionsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for SwipeActionsModifier();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a4, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t closure #2 in static SwipeActionsModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SwipeActionsModifier();
  v7 = *(v6 + 36);
  v13[2] = v6;
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
  v9 = v8;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v7, a4, v13, v9, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v13[5];
}

uint64_t SwipeActionsModifier.WriteTrait.value.getter@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  TableRow.MakeList.traits.getter(a1, &v8);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    ViewTraitCollection.init()();
  }

  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  v3 = v8;
  v4 = AGCreateWeakAttribute();
  v5 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v3;
  if (!isUniquelyReferenced_nonNull_native || v5 >= *(v3 + 24) >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5 + 1, 1, v3);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v4);
  result = ViewTraitCollection.subscript.setter();
  *a2 = v9;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance SwipeActionsUseTraitKeyInput()
{
  lazy protocol witness table accessor for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput();
  PropertyList.subscript.getter();
  return v1;
}

__n128 SwipeActions.Value.reduce(_:)(uint64_t a1)
{
  v3 = *(a1 + 80);
  v48[4] = *(a1 + 64);
  v48[5] = v3;
  v4 = *(a1 + 112);
  v48[6] = *(a1 + 96);
  v49 = v4;
  v5 = *(a1 + 16);
  v48[0] = *a1;
  v48[1] = v5;
  v6 = *(a1 + 48);
  v48[2] = *(a1 + 32);
  v48[3] = v6;
  v7 = *(a1 + 144);
  v50 = *(a1 + 128);
  v51 = v7;
  v8 = *(a1 + 160);
  v9 = *(a1 + 176);
  v10 = *(a1 + 208);
  v54 = *(a1 + 192);
  v55 = v10;
  v52 = v8;
  v53 = v9;
  v11 = v1[1];
  v56[0] = *v1;
  v56[1] = v11;
  v12 = v1[6];
  v14 = v1[3];
  v13 = v1[4];
  v60 = v1[5];
  v61 = v12;
  v59 = v13;
  v15 = v1[3];
  v16 = *v1;
  v17 = v1[1];
  v57 = v1[2];
  v58 = v15;
  v79 = v13;
  v80 = v60;
  v81 = v1[6];
  v75 = v16;
  v76 = v17;
  v77 = v57;
  v78 = v14;
  _s7SwiftUI12SwipeActionsO13ConfigurationVSgWOcTm_0(v48, v74, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
  _s7SwiftUI12SwipeActionsO13ConfigurationVSgWOcTm_0(&v49, v74, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
  _s7SwiftUI12SwipeActionsO13ConfigurationVSgWOcTm_0(v56, v74, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
  static SwipeActions.Configuration.reduce(_:_:)(&v75, a1, v64);
  v18 = *(a1 + 80);
  v62[4] = *(a1 + 64);
  v62[5] = v18;
  v62[6] = *(a1 + 96);
  v19 = *(a1 + 16);
  v62[0] = *a1;
  v62[1] = v19;
  v20 = *(a1 + 48);
  v62[2] = *(a1 + 32);
  v62[3] = v20;
  v21 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVySbGWOhTm_1(v62, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
  v63[4] = v79;
  v63[5] = v80;
  v63[6] = v81;
  v63[0] = v75;
  v63[1] = v76;
  v63[2] = v77;
  v63[3] = v78;
  _s7SwiftUI7BindingVySbGWOhTm_1(v63, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v21);
  v22 = v1[5];
  v65[4] = v1[4];
  v65[5] = v22;
  v65[6] = v1[6];
  v23 = v1[1];
  v65[0] = *v1;
  v65[1] = v23;
  v24 = v1[3];
  v65[2] = v1[2];
  v65[3] = v24;
  _s7SwiftUI7BindingVySbGWOhTm_1(v65, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v21);
  v25 = v64[5];
  v1[4] = v64[4];
  v1[5] = v25;
  v1[6] = v64[6];
  v26 = v64[1];
  *v1 = v64[0];
  v1[1] = v26;
  v27 = v64[3];
  v1[2] = v64[2];
  v1[3] = v27;
  v28 = v1[8];
  v66[0] = v1[7];
  v66[1] = v28;
  v29 = v1[13];
  v31 = v1[10];
  v30 = v1[11];
  v70 = v1[12];
  v71 = v29;
  v69 = v30;
  v32 = v1[10];
  v33 = v1[7];
  v34 = v1[8];
  v67 = v1[9];
  v68 = v32;
  v79 = v30;
  v80 = v70;
  v81 = v1[13];
  v75 = v33;
  v76 = v34;
  v77 = v67;
  v78 = v31;
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v41 = v49;
  v42 = v50;
  v43 = v51;
  v44 = v52;
  _s7SwiftUI12SwipeActionsO13ConfigurationVSgWOcTm_0(v66, v74, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration);
  static SwipeActions.Configuration.reduce(_:_:)(&v75, &v41, v74);
  v72[4] = v45;
  v72[5] = v46;
  v72[6] = v47;
  v72[0] = v41;
  v72[1] = v42;
  v72[3] = v44;
  v72[2] = v43;
  _s7SwiftUI7BindingVySbGWOhTm_1(v72, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v21);
  v73[4] = v79;
  v73[5] = v80;
  v73[6] = v81;
  v73[0] = v75;
  v73[1] = v76;
  v73[3] = v78;
  v73[2] = v77;
  _s7SwiftUI7BindingVySbGWOhTm_1(v73, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v21);
  v35 = v1[12];
  v79 = v1[11];
  v80 = v35;
  v81 = v1[13];
  v36 = v1[8];
  v75 = v1[7];
  v76 = v36;
  v37 = v1[10];
  v77 = v1[9];
  v78 = v37;
  _s7SwiftUI7BindingVySbGWOhTm_1(&v75, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v21);
  v38 = v74[5];
  v1[11] = v74[4];
  v1[12] = v38;
  v1[13] = v74[6];
  v39 = v74[1];
  v1[7] = v74[0];
  v1[8] = v39;
  result = v74[3];
  v1[9] = v74[2];
  v1[10] = result;
  return result;
}

void static SwipeActions.Configuration.reduce(_:_:)(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  *&v44 = *(a1 + 16);
  *(&v44 + 1) = a1[1];
  v47 = *(a1 + 17);
  v5 = a1[3];
  v55 = a1[5];
  v56 = a1[4];
  v52 = *(a1 + 48);
  v50 = a1[8];
  v42 = a1[9];
  v43 = a1[7];
  v57 = a1[10];
  v6 = a1[11];
  v53 = a1[13];
  v54 = a1[12];
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a2 + 16);
  v10 = *(a2 + 17);
  v11 = a2[3];
  v38 = a2[5];
  v39 = a2[4];
  v37 = *(a2 + 48);
  v35 = a2[8];
  v36 = a2[7];
  v33 = a2[10];
  v34 = a2[9];
  v31 = a2[12];
  v32 = a2[11];
  v30 = a2[13];
  if (v5)
  {

    v58 = v5;
    if (v11)
    {
LABEL_3:

      goto LABEL_6;
    }
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_6:
  specialized Array.append<A>(contentsOf:)(v12);
  if (v5)
  {
    if (v4)
    {
      v49 = (v11 == 0) | v8;
    }

    else
    {
      v49 = 0;
    }

    v22 = v50;
    v13 = (v4 >> 8) & 1;
    if (v11)
    {
      v23 = v7;
    }

    else
    {
      v23 = 0;
    }

    v51 = v23;
    if (v11)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    v18 = v55;
    if ((v47 & 1) == 0)
    {
      LOBYTE(v15) = v44;
      v51 = *(&v44 + 1);
      v17 = v56;
      v21 = v53;
      v20 = v54;
      v19 = v6;
      goto LABEL_33;
    }

    v17 = v56;
    v21 = v53;
    v19 = v6;
    if (v11 && (v10 & 1) == 0)
    {
      v20 = v54;
      goto LABEL_33;
    }

    v20 = v54;
    if (v44 != 0)
    {
      v25 = 0;
      v24 = 1;
      v46 = v58;
      v51 = 1;
      goto LABEL_44;
    }

    v16 = (v11 != 0) & v10;
    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v49 = (v11 == 0) | v8;
    if (v11)
    {
      LOBYTE(v13) = BYTE1(v8) & 1;
    }

    else
    {
      LOBYTE(v13) = 1;
    }

    if (v11)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    v51 = v14;
    if (v11)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v11 != 0) & v10;
    if (v11)
    {
      v18 = v55;
      v17 = v56;
      v19 = v6;
      v21 = v53;
      v20 = v54;
      v22 = v50;
      if ((v10 & 1) == 0)
      {
LABEL_33:
        v24 = 0;
        v25 = v15 & 1;
        goto LABEL_43;
      }
    }

    else
    {
      v18 = v55;
      v17 = v56;
      v19 = v6;
      v21 = v53;
      v20 = v54;
      v22 = v50;
    }

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  if (v16 && v51 | v15)
  {
    v25 = 0;
    v51 = 1;
    v24 = 1;
    goto LABEL_43;
  }

LABEL_42:
  v51 = 0;
  v25 = 0;
  v24 = 1;
LABEL_43:
  v46 = v58;
  if (v5)
  {
LABEL_44:
    if (v18)
    {
      v48 = v13;

      v5 = v42;
      v26 = v43;
      if (!v22)
      {
        goto LABEL_46;
      }

LABEL_54:

      outlined copy of SwipeActionResultToken?(v5, v57, v19, v20);
      goto LABEL_57;
    }

    v41 = v19;
    v27 = v13;
    v28 = v17;
    v45 = v24;
    if (!v11)
    {
      goto LABEL_51;
    }

LABEL_49:
    outlined copy of Binding<Int>?(v39, v38);
    v56 = v39;
    v29 = v38;
    v52 = v37;
    goto LABEL_52;
  }

  v41 = v19;
  v27 = v13;
  v28 = 0;
  v45 = v24;
  if (v11)
  {
    goto LABEL_49;
  }

LABEL_51:
  v56 = 0;
  v29 = 0;
  v52 = 0;
LABEL_52:
  outlined consume of Binding<NavigationSplitViewColumn>?(v28, 0);
  v48 = v27;
  v55 = v29;
  if (!v5)
  {
    v26 = 0;
    v57 = 0;
    v19 = 0;
    v20 = 0;
    v24 = v45;
    if (v11)
    {
      goto LABEL_47;
    }

LABEL_56:
    outlined consume of Binding<SwipeActionResultToken?>?(v26, 0, v5, v57, v19, v20);
    v26 = 0;
    v22 = 0;
    v5 = 0;
    v57 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_57;
  }

  v22 = v50;
  v21 = v53;
  v20 = v54;
  v19 = v41;
  v24 = v45;
  v5 = v42;
  v26 = v43;
  if (v50)
  {
    goto LABEL_54;
  }

LABEL_46:
  if (!v11)
  {
    goto LABEL_56;
  }

LABEL_47:
  v22 = v35;
  v40 = v19;
  v19 = v32;
  outlined copy of Binding<SwipeActionResultToken?>?(v36, v35, v34, v33, v32, v31);
  outlined consume of Binding<SwipeActionResultToken?>?(v26, 0, v5, v57, v40, v20);
  v26 = v36;
  v5 = v34;
  v57 = v33;
  v20 = v31;
  v21 = v30;
LABEL_57:
  *a3 = v49 & 1;
  *(a3 + 1) = v48;
  *(a3 + 8) = v51;
  *(a3 + 16) = v25;
  *(a3 + 17) = v24;
  *(a3 + 24) = v46;
  *(a3 + 32) = v56;
  *(a3 + 40) = v55;
  *(a3 + 48) = v52;
  *(a3 + 56) = v26;
  *(a3 + 64) = v22;
  *(a3 + 72) = v5;
  *(a3 + 80) = v57;
  *(a3 + 88) = v19;
  *(a3 + 96) = v20;
  *(a3 + 104) = v21;
}

double (*SwipeActions.MakeValueTransform.value.getter())()
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v65[0] = *(Value + 2);
  v1 = *(Value + 80);
  v2 = *(Value + 48);
  v62 = *(Value + 64);
  v63 = v1;
  v3 = *(Value + 80);
  v64 = *(Value + 96);
  v4 = *(Value + 48);
  v60 = *(Value + 32);
  v61 = v4;
  v5 = *(Value + 24);
  *(v71 + 14) = *(Value + 16);
  v6 = *(Value + 2);
  v70 = *(Value + 96);
  v71[0] = v6;
  v68 = v62;
  v69 = v3;
  v7 = *Value;
  v8 = *(Value + 1);
  *(v65 + 14) = *(Value + 16);
  v66 = v60;
  v67 = v2;
  v9 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  if (v5)
  {
    v52[0] = v7;
    v52[1] = v8;
    *v53 = v65[0];
    *&v53[14] = *(v65 + 14);
    v54 = v5;
    v57 = v62;
    v58 = v63;
    v59 = v64;
    v55 = v60;
    v56 = v61;
    outlined init with copy of SwipeActions.Configuration(v52, v46);
    v10 = *AGGraphGetValue();

    v39[0] = v7;
    v39[1] = v8;
    *&v39[2] = v71[0];
    *&v39[16] = *(v71 + 14);
    v40 = v10;
    v41 = v66;
    v42 = v67;
    v43 = v68;
    v44 = v69;
    v45 = v70;
    if (v8)
    {
      v36 = v71[0] >> 48;
      v37 = *v39;
      v34 = v66;
      v35 = *(v71 + 14);
      v32 = v67;
      v33 = *(&v66 + 1);
      v30 = v68;
      v31 = *(&v67 + 1);
      v28 = v69;
      v29 = *(&v68 + 1);
      v26 = v70;
      v27 = *(&v69 + 1);
      v21 = *(&v70 + 1);
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      memset(v46, 0, sizeof(v46));
      outlined init with copy of SwipeActions.Configuration(v39, v38);
      _s7SwiftUI7BindingVySbGWOhTm_1(v46, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
      v25 = 0;
      v24 = 0uLL;
      v23 = 0uLL;
      v22 = 0uLL;
      v11 = 0;
      v20 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = v10;
    }

    else
    {
      v13 = *v39;
      v12 = v71[0] >> 48;
      v20 = *(v71 + 14);
      v22 = v66;
      v23 = v67;
      v24 = v68;
      v14 = *(&v69 + 1);
      v25 = v69;
      v16 = *(&v70 + 1);
      v15 = v70;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      memset(v46, 0, sizeof(v46));
      outlined init with copy of SwipeActions.Configuration(v39, v38);
      _s7SwiftUI7BindingVySbGWOhTm_1(v46, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
      v36 = 0;
      v37 = 0;
      v34 = 0;
      v35 = 0;
      v17 = 0;
      v32 = 0;
      v33 = 0;
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      v26 = 0;
      v27 = 0;
      v21 = 0;
      v11 = v10;
    }

    LOBYTE(v46[0]) = v7;
    BYTE1(v46[0]) = v8;
    *(v46 + 2) = v71[0];
    *&v46[1] = *(v71 + 14);
    *(&v46[1] + 1) = v10;
    v49 = v68;
    v50 = v69;
    v51 = v70;
    v47 = v66;
    v48 = v67;
    outlined destroy of SwipeActions.Configuration(v46);
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = v12;
    *(v18 + 32) = v20;
    *(v18 + 40) = v11;
    *(v18 + 48) = v22;
    *(v18 + 64) = v23;
    *(v18 + 80) = v24;
    *(v18 + 96) = v25;
    *(v18 + 104) = v14;
    *(v18 + 112) = v15;
    *(v18 + 120) = v16;
    *(v18 + 128) = v37;
    *(v18 + 136) = v36;
    *(v18 + 144) = v35;
    *(v18 + 152) = v17;
    *(v18 + 160) = v34;
    *(v18 + 168) = v33;
    *(v18 + 176) = v32;
    *(v18 + 184) = v31;
    *(v18 + 192) = v30;
    *(v18 + 200) = v29;
    *(v18 + 208) = v28;
    *(v18 + 216) = v27;
    *(v18 + 224) = v26;
    *(v18 + 232) = v21;
    return _s7SwiftUI12SwipeActionsO18MakeValueTransformV5valueyyAC0F0VzcvgyAHzcfU0_TA_0;
  }

  return v9;
}

uint64_t protocol witness for Rule.value.getter in conformance SwipeActions.MakeValueTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  Value = SwipeActions.MakeValueTransform.value.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = Value;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = result;
  return result;
}

uint64_t SwipeActions.MakeValue.value.getter@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v84[0] = *(Value + 2);
  v3 = *(Value + 80);
  v4 = *(Value + 48);
  v81 = *(Value + 64);
  v82 = v3;
  v5 = *(Value + 80);
  v83 = *(Value + 96);
  v6 = *(Value + 48);
  v79 = *(Value + 32);
  v80 = v6;
  v7 = *(Value + 24);
  *(v90 + 14) = *(Value + 16);
  v8 = *(Value + 2);
  v89 = *(Value + 96);
  v90[0] = v8;
  v87 = v81;
  v88 = v5;
  v9 = *Value;
  v10 = *(Value + 1);
  *(v84 + 14) = *(Value + 16);
  v85 = v79;
  v86 = v4;
  if (v7)
  {
    v73[0] = v9;
    v73[1] = v10;
    *&v73[2] = v84[0];
    *&v73[16] = *(v84 + 14);
    *&v73[24] = v7;
    v76 = v81;
    v77 = v82;
    v78 = v83;
    v74 = v79;
    v75 = v80;
    outlined init with copy of SwipeActions.Configuration(v73, v67);
    v11 = *AGGraphGetValue();

    v60[0] = v9;
    v60[1] = v10;
    *&v60[2] = v90[0];
    *&v60[16] = *(v90 + 14);
    v61 = v11;
    v62 = v85;
    v63 = v86;
    v64 = v87;
    v65 = v88;
    v66 = v89;
    if (v10)
    {
      v57 = v90[0] >> 48;
      v58 = *v60;
      v55 = v85;
      v56 = *(v90 + 14);
      v53 = v86;
      v54 = *(&v85 + 1);
      v51 = v87;
      v52 = *(&v86 + 1);
      v49 = v88;
      v50 = *(&v87 + 1);
      v47 = v89;
      v48 = *(&v88 + 1);
      v42 = *(&v89 + 1);
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      memset(v67, 0, sizeof(v67));
      outlined init with copy of SwipeActions.Configuration(v60, v59);
      _s7SwiftUI7BindingVySbGWOhTm_1(v67, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
      v46 = 0;
      v45 = 0uLL;
      v44 = 0uLL;
      v43 = 0uLL;
      v12 = 0;
      v40 = 0;
      v41 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = v11;
    }

    else
    {
      v13 = *v60;
      v40 = v90[0] >> 48;
      v41 = *(v90 + 14);
      v43 = v85;
      v44 = v86;
      v45 = v87;
      v14 = *(&v88 + 1);
      v46 = v88;
      v16 = *(&v89 + 1);
      v15 = v89;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      memset(v67, 0, sizeof(v67));
      outlined init with copy of SwipeActions.Configuration(v60, v59);
      _s7SwiftUI7BindingVySbGWOhTm_1(v67, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
      v57 = 0;
      v58 = 0;
      v55 = 0;
      v56 = 0;
      v17 = 0;
      v53 = 0;
      v54 = 0;
      v51 = 0;
      v52 = 0;
      v49 = 0;
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v42 = 0;
      v12 = v11;
    }

    LOBYTE(v67[0]) = v9;
    BYTE1(v67[0]) = v10;
    *(v67 + 2) = v90[0];
    *&v67[1] = *(v90 + 14);
    *(&v67[1] + 1) = v11;
    v70 = v87;
    v71 = v88;
    v72 = v89;
    v68 = v85;
    v69 = v86;
    result = outlined destroy of SwipeActions.Configuration(v67);
    *a1 = v13;
    *(a1 + 8) = v40;
    *(a1 + 16) = v41;
    *(a1 + 24) = v12;
    *(a1 + 32) = v43;
    *(a1 + 48) = v44;
    *(a1 + 64) = v45;
    *(a1 + 80) = v46;
    *(a1 + 88) = v14;
    *(a1 + 96) = v15;
    *(a1 + 104) = v16;
    *(a1 + 112) = v58;
    *(a1 + 120) = v57;
    *(a1 + 128) = v56;
    *(a1 + 136) = v17;
    *(a1 + 144) = v55;
    *(a1 + 152) = v54;
    *(a1 + 160) = v53;
    *(a1 + 168) = v52;
    *(a1 + 176) = v51;
    *(a1 + 184) = v50;
    *(a1 + 192) = v49;
    *(a1 + 200) = v48;
    *(a1 + 208) = v47;
    *(a1 + 216) = v42;
  }

  else
  {
    v18 = v84[0];
    *(a1 + 2) = v84[0];
    v19 = v82;
    v20 = v81;
    v21 = v82;
    *(a1 + 64) = v81;
    *(a1 + 80) = v19;
    v22 = v83;
    *(a1 + 96) = v83;
    v23 = v80;
    v25 = v79;
    v24 = v80;
    *(a1 + 32) = v79;
    *(a1 + 48) = v23;
    *(a1 + 114) = v18;
    *a1 = v9;
    *(a1 + 1) = v10;
    *(a1 + 16) = *(v84 + 14);
    *(a1 + 24) = 0;
    *(a1 + 112) = v9;
    *(a1 + 113) = v10;
    *(a1 + 128) = *(v84 + 14);
    *(a1 + 136) = 0;
    *(a1 + 176) = v20;
    *(a1 + 192) = v21;
    *(a1 + 208) = v22;
    *(a1 + 144) = v25;
    *(a1 + 160) = v24;
    v26 = *(a1 + 16);
    v67[0] = *a1;
    v67[1] = v26;
    v27 = *(a1 + 32);
    v28 = *(a1 + 48);
    v29 = *(a1 + 96);
    v71 = *(a1 + 80);
    v72 = v29;
    v30 = *(a1 + 64);
    v69 = v28;
    v70 = v30;
    v68 = v27;
    v31 = MEMORY[0x1E69E6720];
    _s7SwiftUI7BindingVySbGWOhTm_1(v67, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720]);
    *a1 = v9;
    *(a1 + 1) = v10;
    *(a1 + 2) = v84[0];
    *(a1 + 16) = *(v84 + 14);
    *(a1 + 24) = 0;
    v32 = v82;
    *(a1 + 64) = v81;
    *(a1 + 80) = v32;
    *(a1 + 96) = v83;
    v33 = v80;
    *(a1 + 32) = v79;
    *(a1 + 48) = v33;
    v34 = *(a1 + 192);
    v76 = *(a1 + 176);
    v77 = v34;
    v78 = *(a1 + 208);
    v35 = *(a1 + 128);
    *v73 = *(a1 + 112);
    *&v73[16] = v35;
    v36 = *(a1 + 160);
    v74 = *(a1 + 144);
    v75 = v36;
    result = _s7SwiftUI7BindingVySbGWOhTm_1(v73, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v31);
    *(a1 + 112) = v9;
    *(a1 + 113) = v10;
    *(a1 + 114) = v84[0];
    *(a1 + 128) = *(v84 + 14);
    *(a1 + 136) = 0;
    v38 = v82;
    *(a1 + 176) = v81;
    *(a1 + 192) = v38;
    *(a1 + 208) = v83;
    v39 = v80;
    *(a1 + 144) = v79;
    *(a1 + 160) = v39;
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance SwipeActions.MakeValue@<D0>(_OWORD *a1@<X8>)
{
  _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(v10);
  v2 = v10[11];
  a1[10] = v10[10];
  a1[11] = v2;
  v3 = v10[13];
  a1[12] = v10[12];
  a1[13] = v3;
  v4 = v10[7];
  a1[6] = v10[6];
  a1[7] = v4;
  v5 = v10[9];
  a1[8] = v10[8];
  a1[9] = v5;
  v6 = v10[3];
  a1[2] = v10[2];
  a1[3] = v6;
  v7 = v10[5];
  a1[4] = v10[4];
  a1[5] = v7;
  result = *v10;
  v9 = v10[1];
  *a1 = v10[0];
  a1[1] = v9;
  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance SwipeActions.Key(uint64_t a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v3);
  SwipeActions.Value.reduce(_:)(v3);
  v4[10] = v3[10];
  v4[11] = v3[11];
  v4[12] = v3[12];
  v4[13] = v3[13];
  v4[6] = v3[6];
  v4[7] = v3[7];
  v4[8] = v3[8];
  v4[9] = v3[9];
  v4[2] = v3[2];
  v4[3] = v3[3];
  v4[4] = v3[4];
  v4[5] = v3[5];
  v4[0] = v3[0];
  v4[1] = v3[1];
  return outlined destroy of SwipeActions.Value(v4);
}

uint64_t protocol witness for static _ViewTraitKey.defaultValue.getter in conformance SwipeActions.TraitKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static SwipeActions.TraitKey.defaultValue;
}

uint64_t closure #1 in ViewGraph.swipeActions()@<X0>(_OWORD *a1@<X8>)
{
  AGGraphClearUpdate();
  lazy protocol witness table accessor for type SwipeActions.Feature and conformance SwipeActions.Feature();
  v2 = ViewGraph.subscript.getter();
  if (v2 && (*(v2 + 8) & 1) == 0 && (WeakValue = AGGraphGetWeakValue()) != 0)
  {
    v4 = WeakValue[1];
    v33[0] = *WeakValue;
    v33[1] = v4;
    v5 = WeakValue[2];
    v6 = WeakValue[3];
    v7 = WeakValue[5];
    v33[4] = WeakValue[4];
    v33[5] = v7;
    v33[2] = v5;
    v33[3] = v6;
    v8 = WeakValue[6];
    v9 = WeakValue[7];
    v10 = WeakValue[9];
    v33[8] = WeakValue[8];
    v33[9] = v10;
    v33[6] = v8;
    v33[7] = v9;
    v11 = WeakValue[10];
    v12 = WeakValue[11];
    v13 = WeakValue[13];
    v33[12] = WeakValue[12];
    v33[13] = v13;
    v33[10] = v11;
    v33[11] = v12;
    memmove(&__dst, WeakValue, 0xE0uLL);
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&__dst, v14, v15, v16);
    v17 = v45;
    a1[10] = v44;
    a1[11] = v17;
    v18 = v47;
    a1[12] = v46;
    a1[13] = v18;
    v19 = v41;
    a1[6] = v40;
    a1[7] = v19;
    v20 = v43;
    a1[8] = v42;
    a1[9] = v20;
    v21 = v37;
    a1[2] = v36;
    a1[3] = v21;
    v22 = v39;
    a1[4] = v38;
    a1[5] = v22;
    v23 = v35;
    *a1 = __dst;
    a1[1] = v23;
    outlined init with copy of SwipeActions.Value(v33, &v32);
  }

  else
  {
    _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(&__dst);
    v24 = v45;
    a1[10] = v44;
    a1[11] = v24;
    v25 = v47;
    a1[12] = v46;
    a1[13] = v25;
    v26 = v41;
    a1[6] = v40;
    a1[7] = v26;
    v27 = v43;
    a1[8] = v42;
    a1[9] = v27;
    v28 = v37;
    a1[2] = v36;
    a1[3] = v28;
    v29 = v39;
    a1[4] = v38;
    a1[5] = v29;
    v30 = v35;
    *a1 = __dst;
    a1[1] = v30;
  }

  return AGGraphSetUpdate();
}

Swift::Void __swiftcall SwipeActionResultToken.complete()()
{
  v1 = *(v0 + 8);
  if (!v1)
  {

    JUMPOUT(0x18D009810);
  }

  if (!*v0)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      v2();
    }
  }

  v1(1);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1);
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + 24));
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
}

Swift::Void __swiftcall SwipeActionResultToken.cancel()()
{
  v1 = v0[1];
  if (!v1)
  {

    JUMPOUT(0x18D009810);
  }

  v1(0);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1);
  v0[1] = 0;
  v0[2] = 0;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v0[3]);
  v0[3] = 0;
  v0[4] = 0;
}

uint64_t destroy for SwipeActionResultToken(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
  }

  if (*(v1 + 24))
  {
  }

  return result;
}

uint64_t initializeWithCopy for SwipeActionResultToken(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    v7 = *(a2 + 32);
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

uint64_t assignWithCopy for SwipeActionResultToken(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;

    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v9)
    {
      v11 = *(a2 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v11;

      return a1;
    }

LABEL_14:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = *(a2 + 32);
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;

  return a1;
}

uint64_t assignWithTake for SwipeActionResultToken(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v5)
    {
      v7 = *(a2 + 16);
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;

      goto LABEL_8;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 16);
    *(a1 + 8) = v5;
    *(a1 + 16) = v8;
    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v9)
    {
      v11 = *(a2 + 32);
      *(a1 + 24) = v9;
      *(a1 + 32) = v11;
      return a1;
    }

LABEL_14:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = *(a2 + 32);
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;

  return a1;
}

uint64_t destructiveInjectEnumTag for SwipeActionsStyle.Storage(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

uint64_t type metadata completion function for SwipeActionsModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SwipeActionsModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 112 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
    goto LABEL_7;
  }

  (*(v4 + 16))(a1);
  v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 24) < 0xFFFFFFFFuLL)
  {
    v19 = *v11;
    v20 = *(v11 + 32);
    *(v10 + 16) = *(v11 + 16);
    *(v10 + 32) = v20;
    *v10 = v19;
    v21 = *(v11 + 48);
    v22 = *(v11 + 64);
    v23 = *(v11 + 96);
    *(v10 + 80) = *(v11 + 80);
    *(v10 + 96) = v23;
    *(v10 + 48) = v21;
    *(v10 + 64) = v22;
    return v3;
  }

  *v10 = *v11;
  *(v10 + 1) = *(v11 + 1);
  v12 = *(v11 + 8);
  *(v10 + 16) = *(v11 + 16);
  *(v10 + 8) = v12;
  *(v10 + 24) = *(v11 + 24);
  v13 = *(v11 + 40);

  if (!v13)
  {
    v24 = *(v11 + 32);
    *(v10 + 48) = *(v11 + 48);
    *(v10 + 32) = v24;
    if (*(v11 + 64))
    {
      goto LABEL_11;
    }

LABEL_15:
    v25 = *(v11 + 56);
    v26 = *(v11 + 72);
    v27 = *(v11 + 88);
    *(v10 + 104) = *(v11 + 104);
    *(v10 + 88) = v27;
    *(v10 + 72) = v26;
    *(v10 + 56) = v25;
    return v3;
  }

  *(v10 + 32) = *(v11 + 32);
  *(v10 + 40) = *(v11 + 40);
  *(v10 + 48) = *(v11 + 48);

  if (!*(v11 + 64))
  {
    goto LABEL_15;
  }

LABEL_11:
  *(v10 + 56) = *(v11 + 56);
  *(v10 + 64) = *(v11 + 64);
  v14 = (v11 + 80);
  v15 = *(v11 + 80);
  v16 = (v11 + 72);

  if (v15 == 1)
  {
    v17 = *v16;
    v18 = *(v11 + 88);
    *(v10 + 104) = *(v11 + 104);
    *(v10 + 88) = v18;
    *(v10 + 72) = v17;
    return v3;
  }

  *(v10 + 72) = *v16;
  if (*v14)
  {
    v28 = *(v11 + 88);
    *(v10 + 80) = *v14;
    *(v10 + 88) = v28;
  }

  else
  {
    *(v10 + 80) = *v14;
  }

  v29 = *(v11 + 96);
  if (!v29)
  {
    *(v10 + 96) = *(v11 + 96);
    return v3;
  }

  v30 = *(v11 + 104);
  *(v10 + 96) = v29;
  *(v10 + 104) = v30;
LABEL_7:

  return v3;
}

unint64_t destroy for SwipeActionsModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  result = v4[3];
  if (result >= 0xFFFFFFFF)
  {

    if (v4[5])
    {
    }

    if (v4[8])
    {

      v6 = v4[10];
      if (v6)
      {
        if (v6 == 1)
        {
          return result;
        }
      }

      if (v4[12])
      {
      }
    }
  }

  return result;
}

uint64_t initializeWithCopy for SwipeActionsModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 24) < 0xFFFFFFFFuLL)
  {
    v16 = *v8;
    v17 = *(v8 + 32);
    *(v7 + 16) = *(v8 + 16);
    *(v7 + 32) = v17;
    *v7 = v16;
    v18 = *(v8 + 48);
    v19 = *(v8 + 64);
    v20 = *(v8 + 96);
    *(v7 + 80) = *(v8 + 80);
    *(v7 + 96) = v20;
    *(v7 + 48) = v18;
    *(v7 + 64) = v19;
    return a1;
  }

  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  v9 = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 8) = v9;
  *(v7 + 24) = *(v8 + 24);
  v10 = *(v8 + 40);

  if (v10)
  {
    *(v7 + 32) = *(v8 + 32);
    *(v7 + 40) = *(v8 + 40);
    *(v7 + 48) = *(v8 + 48);

    if (*(v8 + 64))
    {
      goto LABEL_4;
    }

LABEL_8:
    v22 = *(v8 + 56);
    v23 = *(v8 + 72);
    v24 = *(v8 + 88);
    *(v7 + 104) = *(v8 + 104);
    *(v7 + 88) = v24;
    *(v7 + 72) = v23;
    *(v7 + 56) = v22;
    return a1;
  }

  v21 = *(v8 + 32);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 32) = v21;
  if (!*(v8 + 64))
  {
    goto LABEL_8;
  }

LABEL_4:
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 64) = *(v8 + 64);
  v11 = (v8 + 80);
  v12 = *(v8 + 80);
  v13 = (v8 + 72);

  if (v12 == 1)
  {
    v14 = *v13;
    v15 = *(v8 + 88);
    *(v7 + 104) = *(v8 + 104);
    *(v7 + 88) = v15;
    *(v7 + 72) = v14;
  }

  else
  {
    *(v7 + 72) = *v13;
    if (*v11)
    {
      v25 = *(v8 + 88);
      *(v7 + 80) = *v11;
      *(v7 + 88) = v25;
    }

    else
    {
      *(v7 + 80) = *v11;
    }

    v26 = *(v8 + 96);
    if (v26)
    {
      v27 = *(v8 + 104);
      *(v7 + 96) = v26;
      *(v7 + 104) = v27;
    }

    else
    {
      *(v7 + 96) = *(v8 + 96);
    }
  }

  return a1;
}

uint64_t assignWithCopy for SwipeActionsModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  if (*(v7 + 24) < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      *v7 = *v8;
      *(v7 + 1) = *(v8 + 1);
      v12 = *(v8 + 8);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 8) = v12;
      *(v7 + 24) = *(v8 + 24);
      v13 = *(v8 + 40);

      if (v13)
      {
        *(v7 + 32) = *(v8 + 32);
        *(v7 + 40) = *(v8 + 40);
        *(v7 + 48) = *(v8 + 48);

        if (!*(v8 + 64))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v28 = *(v8 + 32);
        *(v7 + 48) = *(v8 + 48);
        *(v7 + 32) = v28;
        if (!*(v8 + 64))
        {
          goto LABEL_38;
        }
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (v9 >= 0xFFFFFFFF)
    {
      *v7 = *v8;
      *(v7 + 1) = *(v8 + 1);
      v10 = *(v8 + 8);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 8) = v10;
      *(v7 + 24) = *(v8 + 24);

      v11 = *(v8 + 40);
      if (*(v7 + 40))
      {
        if (v11)
        {
          *(v7 + 32) = *(v8 + 32);

          *(v7 + 40) = *(v8 + 40);

          *(v7 + 48) = *(v8 + 48);
        }

        else
        {
          _s7SwiftUI7BindingVySbGWOhTm_1(v7 + 32, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
          v29 = *(v8 + 48);
          *(v7 + 32) = *(v8 + 32);
          *(v7 + 48) = v29;
        }
      }

      else if (v11)
      {
        *(v7 + 32) = *(v8 + 32);
        *(v7 + 40) = *(v8 + 40);
        *(v7 + 48) = *(v8 + 48);
      }

      else
      {
        v32 = *(v8 + 32);
        *(v7 + 48) = *(v8 + 48);
        *(v7 + 32) = v32;
      }

      v33 = *(v8 + 64);
      if (*(v7 + 64))
      {
        if (v33)
        {
          *(v7 + 56) = *(v8 + 56);

          *(v7 + 64) = *(v8 + 64);

          v35 = (v7 + 80);
          v34 = *(v7 + 80);
          v36 = (v7 + 72);
          v38 = (v8 + 80);
          v37 = *(v8 + 80);
          v39 = (v8 + 72);
          if (v34 == 1)
          {
            if (v37 == 1)
            {
              v40 = *v39;
              v41 = *(v8 + 88);
              *(v7 + 104) = *(v8 + 104);
              *v36 = v40;
              *(v7 + 88) = v41;
              return a1;
            }

            *v36 = *v39;
            v26 = *v38;
            if (!*v38)
            {
              *v35 = *v38;
LABEL_28:
              v30 = *(v8 + 96);
              if (!v30)
              {
                *(v7 + 96) = *(v8 + 96);
                return a1;
              }

              goto LABEL_29;
            }

            goto LABEL_21;
          }

          if (v37 == 1)
          {
            outlined destroy of SwipeActionResultToken(v7 + 72);
            v46 = *(v8 + 104);
            v47 = *(v8 + 88);
            *v36 = *v39;
            *(v7 + 88) = v47;
            *(v7 + 104) = v46;
            return a1;
          }

          *v36 = *v39;
          v48 = *v38;
          if (v34)
          {
            if (v48)
            {
              v49 = *(v8 + 88);
              *(v7 + 80) = v48;
              *(v7 + 88) = v49;

              goto LABEL_53;
            }
          }

          else if (v48)
          {
            v50 = *(v8 + 88);
            *(v7 + 80) = v48;
            *(v7 + 88) = v50;

            goto LABEL_53;
          }

          *v35 = *v38;
LABEL_53:
          v30 = *(v8 + 96);
          if (*(v7 + 96))
          {
            if (v30)
            {
              v51 = *(v8 + 104);
              *(v7 + 96) = v30;
              *(v7 + 104) = v51;

              return a1;
            }
          }

          else if (v30)
          {
LABEL_29:
            v31 = *(v8 + 104);
            *(v7 + 96) = v30;
            *(v7 + 104) = v31;

            return a1;
          }

          *(v7 + 96) = *(v8 + 96);
          return a1;
        }

        outlined destroy of Binding<SwipeActionResultToken?>(v7 + 56, type metadata accessor for Binding<SwipeActionResultToken?>);
        v17 = *(v8 + 72);
        v18 = *(v8 + 88);
        v19 = *(v8 + 104);
        *(v7 + 56) = *(v8 + 56);
LABEL_40:
        *(v7 + 104) = v19;
        *(v7 + 88) = v18;
        *(v7 + 72) = v17;
        return a1;
      }

      if (!v33)
      {
LABEL_38:
        v42 = *(v8 + 56);
        v43 = *(v8 + 72);
        v44 = *(v8 + 88);
        *(v7 + 104) = *(v8 + 104);
        *(v7 + 88) = v44;
        *(v7 + 72) = v43;
        *(v7 + 56) = v42;
        return a1;
      }

LABEL_9:
      *(v7 + 56) = *(v8 + 56);
      *(v7 + 64) = *(v8 + 64);
      v14 = (v8 + 80);
      v15 = *(v8 + 80);
      v16 = (v8 + 72);

      if (v15 != 1)
      {
        *(v7 + 72) = *v16;
        v26 = *v14;
        if (!*v14)
        {
          *(v7 + 80) = *v14;
          goto LABEL_28;
        }

LABEL_21:
        v27 = *(v8 + 88);
        *(v7 + 80) = v26;
        *(v7 + 88) = v27;

        goto LABEL_28;
      }

      v17 = *v16;
      v18 = *(v8 + 88);
      v19 = *(v8 + 104);
      goto LABEL_40;
    }

    if (*(v7 + 40))
    {
    }

    if (*(v7 + 64))
    {

      v20 = *(v7 + 80);
      if (!v20)
      {
        goto LABEL_17;
      }

      if (v20 != 1)
      {

LABEL_17:
        if (*(v7 + 96))
        {
        }
      }
    }
  }

  v21 = *v8;
  v22 = *(v8 + 32);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 32) = v22;
  *v7 = v21;
  v23 = *(v8 + 48);
  v24 = *(v8 + 64);
  v25 = *(v8 + 96);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 96) = v25;
  *(v7 + 48) = v23;
  *(v7 + 64) = v24;
  return a1;
}

uint64_t initializeWithTake for SwipeActionsModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v8[1];
  v9 = v8[2];
  *v7 = *v8;
  v7[1] = v10;
  v7[2] = v9;
  v11 = v8[6];
  v13 = v8[3];
  v12 = v8[4];
  v7[5] = v8[5];
  v7[6] = v11;
  v7[3] = v13;
  v7[4] = v12;
  return a1;
}

uint64_t assignWithTake for SwipeActionsModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(v8 + 24) >= 0xFFFFFFFFuLL)
    {
      *v7 = *v8;
      *(v7 + 1) = *(v8 + 1);
      v9 = *(v8 + 8);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 8) = v9;
      *(v7 + 24) = *(v8 + 24);

      if (*(v7 + 40))
      {
        if (*(v8 + 40))
        {
          *(v7 + 32) = *(v8 + 32);

          *(v7 + 40) = *(v8 + 40);

          *(v7 + 48) = *(v8 + 48);
          if (!*(v7 + 64))
          {
            goto LABEL_22;
          }

LABEL_18:
          if (!*(v8 + 64))
          {
            outlined destroy of Binding<SwipeActionResultToken?>(v7 + 56, type metadata accessor for Binding<SwipeActionResultToken?>);
            v26 = *(v8 + 72);
            v27 = *(v8 + 88);
            v28 = *(v8 + 104);
            *(v7 + 56) = *(v8 + 56);
            *(v7 + 104) = v28;
            *(v7 + 88) = v27;
            *(v7 + 72) = v26;
            return a1;
          }

          *(v7 + 56) = *(v8 + 56);

          *(v7 + 64) = *(v8 + 64);

          v18 = *(v7 + 80);
          v19 = (v7 + 72);
          if (v18 == 1)
          {
            v20 = *(v8 + 72);
            v21 = *(v8 + 88);
            *(v7 + 104) = *(v8 + 104);
            *v19 = v20;
            *(v7 + 88) = v21;
            return a1;
          }

          if (*(v8 + 80) == 1)
          {
            outlined destroy of SwipeActionResultToken(v7 + 72);
            v29 = *(v8 + 104);
            v30 = *(v8 + 88);
            *v19 = *(v8 + 72);
            *(v7 + 88) = v30;
            *(v7 + 104) = v29;
            return a1;
          }

          *v19 = *(v8 + 72);
          v31 = *(v8 + 80);
          if (v18)
          {
            if (v31)
            {
              v32 = *(v8 + 88);
              *(v7 + 80) = v31;
              *(v7 + 88) = v32;

              goto LABEL_33;
            }
          }

          else if (v31)
          {
            v33 = *(v8 + 88);
            *(v7 + 80) = v31;
            *(v7 + 88) = v33;
            goto LABEL_33;
          }

          *(v7 + 80) = *(v8 + 80);
LABEL_33:
          v34 = *(v8 + 96);
          if (*(v7 + 96))
          {
            if (v34)
            {
              v35 = *(v8 + 104);
              *(v7 + 96) = v34;
              *(v7 + 104) = v35;

              return a1;
            }
          }

          else if (v34)
          {
            v36 = *(v8 + 104);
            *(v7 + 96) = v34;
            *(v7 + 104) = v36;
            return a1;
          }

          *(v7 + 96) = *(v8 + 96);
          return a1;
        }

        _s7SwiftUI7BindingVySbGWOhTm_1(v7 + 32, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
        v22 = *(v8 + 48);
        *(v7 + 32) = *(v8 + 32);
        *(v7 + 48) = v22;
        if (*(v7 + 64))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v17 = *(v8 + 32);
        *(v7 + 48) = *(v8 + 48);
        *(v7 + 32) = v17;
        if (*(v7 + 64))
        {
          goto LABEL_18;
        }
      }

LABEL_22:
      v23 = *(v8 + 56);
      v24 = *(v8 + 72);
      v25 = *(v8 + 88);
      *(v7 + 104) = *(v8 + 104);
      *(v7 + 88) = v25;
      *(v7 + 72) = v24;
      *(v7 + 56) = v23;
      return a1;
    }

    if (*(v7 + 40))
    {
    }

    if (*(v7 + 64))
    {

      v10 = *(v7 + 80);
      if (!v10)
      {
        goto LABEL_13;
      }

      if (v10 != 1)
      {

LABEL_13:
        if (*(v7 + 96))
        {
        }
      }
    }
  }

  v11 = *v8;
  v12 = *(v8 + 32);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 32) = v12;
  *v7 = v11;
  v13 = *(v8 + 48);
  v14 = *(v8 + 64);
  v15 = *(v8 + 96);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 96) = v15;
  *(v7 + 48) = v13;
  *(v7 + 64) = v14;
  return a1;
}

uint64_t getEnumTagSinglePayload for SwipeActionsModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 112;
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
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for SwipeActionsModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 112;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF90)
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
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF90)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF90)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 112);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
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
  if (v6 < 0x7FFFFFFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *(v19 + 80) = 0u;
      *(v19 + 96) = 0u;
      *(v19 + 48) = 0u;
      *(v19 + 64) = 0u;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *v19 = 0u;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

id UIContextualAction.init(_:graphHost:performDestructiveAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a3;
  v69 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v69);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlatformItemList.Item();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 336);
  if (v14 >> 2 != 0xFFFFFFFF && v14 >> 62 == 3 && ((v15 = *(a1 + 304), v16 = vorrq_s8(vorrq_s8(*(a1 + 344), *(a1 + 376)), vorrq_s8(*(a1 + 360), *(a1 + 392))), v17 = *&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *(a1 + 320) | *(a1 + 312) | *(a1 + 328), v14 == 0xC000000000000000) && v15 == 6 && !v17 || v14 == 0xC000000000000000 && v15 == 7 && !v17))
  {
    v62 = v9;
    v18 = swift_allocObject();
    _s7SwiftUI16PlatformItemListV0D0VSgMaTm_0(0, &lazy cache variable for type metadata for MutableBox<(_:)>, type metadata accessor for (_:), MEMORY[0x1E697DAC0]);
    v19 = swift_allocObject();
    *(v19 + 16) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    *(v19 + 24) = 0;
    v67 = a4;
    v68 = v18;
    *(v18 + 16) = v19;
    v20 = *(a1 + 528) == 0;
    v21 = *a1;
    v66 = a2;
    v63 = v20;
    v64 = v10;
    if (v21)
    {
      v22 = [v21 string];
      if (!v22)
      {
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = MEMORY[0x18D00C850](v23);
      }
    }

    else
    {
      v22 = 0;
    }

    v65 = v4;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_1(a1, &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlatformItemList.Item);
    v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    outlined init with take of PlatformItemList.Item(v13, v29 + v26);
    v30 = (v29 + v27);
    v32 = v67;
    v31 = v68;
    *v30 = v70;
    v30[1] = v32;
    *(v29 + v28) = v66;
    *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v31;
    aBlock[4] = partial apply for closure #2 in UIContextualAction.init(_:graphHost:performDestructiveAction:);
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIContextualAction, @guaranteed UIView, @guaranteed @escaping @callee_guaranteed (@unowned Bool) -> ()) -> ();
    aBlock[3] = &block_descriptor_61;
    v33 = _Block_copy(aBlock);

    v34 = [ObjCClassFromMetadata contextualActionWithStyle:v63 title:v22 handler:v33];
    _Block_release(v33);

    v35 = v34;
    v36 = PlatformItemList.Item.image.getter();
    [v35 setImage_];

    v37 = *(a1 + 336);
    if (v37 >> 62 == 3 && (v37 & 0xFFFFFFFFFFFFFFFCLL) != 0x3FFFFFFFCLL && v37 == 0xC000000000000000 && *(a1 + 304) == 7 && !(*(a1 + 320) | *(a1 + 328) | *(a1 + 312)))
    {
      v38 = vorrq_s8(vorrq_s8(*(a1 + 344), *(a1 + 376)), vorrq_s8(*(a1 + 360), *(a1 + 392)));
      if (!*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)))
      {
        v39 = *(v31 + 16);

        v41 = UIContextualAction.transform(_:completionHolder:)(v40, v39);

        v70 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
        v42 = MEMORY[0x1E69E7CC0];
        aBlock[0] = MEMORY[0x1E69E7CC0];
        v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v44 = MEMORY[0x1E69E7CC8];
        v45 = v62;
        v62[8] = 0;
        *(v45 + 16) = v44;
        *(v45 + 24) = v43;
        *(v45 + 32) = v42;
        *(v45 + 40) = v44;
        *(v45 + 48) = 0;
        _s7SwiftUI16PlatformItemListV0D0VSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
        v46 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
        v47 = (*(*(v46 - 8) + 80) + 32) & ~*(*(v46 - 8) + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_18CD63400;
        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        v49 = __swift_project_value_buffer(v46, static MenuVisitor.MenuStackGroup.empty);
        _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_1(v49, v48 + v47, type metadata accessor for MenuVisitor.MenuStackGroup);
        *(v45 + 56) = v48;
        v50 = *(v69 + 32);
        v51 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
        (*(*(v51 - 8) + 56))(v45 + v50, 1, 1, v51);
        *v45 = 0;
        MenuVisitor.visit(_:uniqueNames:)(v41, aBlock);

        v52 = *(v45 + 32);

        outlined destroy of Binding<SwipeActionResultToken?>(v45, type metadata accessor for MenuVisitor);
        v53._countAndFlagsBits = 0;
        v53._object = 0xE000000000000000;
        v72.value.super.isa = 0;
        v72.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v54, v53, 0, v72, 0, 0xFFFFFFFFFFFFFFFFLL, v52, v60);
        v56 = v55;

        [v35 _setMenu_];
      }
    }

    if (*(a1 + *(v64 + 136)))
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
      v57 = swift_retain_n();
      v58 = UIColor.init(_:)(v57);
      [v35 setBackgroundColor_];
    }

    v59 = v35;
    specialized PlatformItemList.Item.applyAccessibilityProperties(to:)(v59, a1);

    outlined destroy of Binding<SwipeActionResultToken?>(a1, type metadata accessor for PlatformItemList.Item);

    return v59;
  }

  else
  {

    outlined destroy of Binding<SwipeActionResultToken?>(a1, type metadata accessor for PlatformItemList.Item);
    return 0;
  }
}

uint64_t closure #2 in UIContextualAction.init(_:graphHost:performDestructiveAction:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a5 + 416);
  if (v11 >= 2)
  {
    if (*(a5 + 528))
    {

      v11(v15);
      a3(1);

      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);

      static Update.dispatchImmediately<A>(reason:_:)();
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
    }
  }

  else
  {
    v12 = *(a9 + 16);
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    swift_beginAccess();
    *(v12 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    *(v12 + 24) = v13;
  }
}

uint64_t closure #1 in closure #2 in UIContextualAction.init(_:graphHost:performDestructiveAction:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v9 = a1(a3, a4);
  result = a5(v9);
  if (a7)
  {

    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

void *UIContextualAction.transform(_:completionHolder:)(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  _s7SwiftUI16PlatformItemListV0D0VSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v35 - v4;
  v43 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v35 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v37 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = a1 + v37;
  v15 = *(v10 + 72);
  v35 = v6 + 424;
  v41 = (v10 + 56);
  v40 = (v10 + 48);
  v16 = MEMORY[0x1E69E7CC0];
  v38 = &v35 - v11;
  do
  {
    v17 = v15;
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_1(v14, v12, type metadata accessor for PlatformItemList.Item);
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_1(v12, v6, type metadata accessor for PlatformItemList.Item);
    v18 = *(v6 + 424);
    v46[0] = *(v6 + 408);
    v46[1] = v18;
    v19 = *(v6 + 456);
    v46[2] = *(v6 + 440);
    v46[3] = v19;
    v47 = v6[472];
    v20 = *(&v46[0] + 1);
    if (*(&v46[0] + 1) != 1)
    {
      v21 = *(v6 + 52);
      if (v21 != 1)
      {
        v36 = v16;
        v22 = *&v46[0];
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *(v23 + 24) = v20;
        v24 = v39;
        v12 = v38;
        v25 = v35;
        v26 = v35[1];
        *(v23 + 32) = *v35;
        *(v23 + 48) = v26;
        *(v23 + 64) = v25[2];
        *(v23 + 80) = *(v25 + 48);
        *(v23 + 88) = v24;
        _s7SwiftUI12SwipeActionsO13ConfigurationVSgWOcTm_0(v46, v45, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
        v16 = v36;

        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21);
        *(v6 + 52) = partial apply for closure #1 in closure #1 in UIContextualAction.transform(_:completionHolder:);
        *(v6 + 53) = v23;
      }
    }

    v27 = *(v6 + 117);
    if (v27)
    {
      v28 = UIContextualAction.transform(_:completionHolder:)(v27, v39);
      v12 = v38;
      v29 = v28;
      outlined destroy of Binding<SwipeActionResultToken?>(v38, type metadata accessor for PlatformItemList.Item);

      *(v6 + 117) = v29;
    }

    else
    {
      outlined destroy of Binding<SwipeActionResultToken?>(v12, type metadata accessor for PlatformItemList.Item);
    }

    v15 = v17;
    v30 = v44;
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_1(v6, v44, type metadata accessor for PlatformItemList.Item);
    v31 = v43;
    (*v41)(v30, 0, 1, v43);
    outlined destroy of Binding<SwipeActionResultToken?>(v6, type metadata accessor for PlatformItemList.Item);
    if ((*v40)(v30, 1, v31) == 1)
    {
      outlined destroy of PlatformItemList.Item?(v44);
    }

    else
    {
      outlined init with take of PlatformItemList.Item(v44, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      }

      v33 = v16[2];
      v32 = v16[3];
      if (v33 >= v32 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v16);
      }

      v16[2] = v33 + 1;
      outlined init with take of PlatformItemList.Item(v42, v16 + v37 + v33 * v15);
    }

    v14 += v15;
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t closure #1 in closure #1 in UIContextualAction.transform(_:completionHolder:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v3();
  }

  swift_beginAccess();
  v4 = *(a2 + 16);
  v6 = 1;

  v4(&v6);
}

unint64_t lazy protocol witness table accessor for type SwipeActions.MakeValue and conformance SwipeActions.MakeValue()
{
  result = lazy protocol witness table cache variable for type SwipeActions.MakeValue and conformance SwipeActions.MakeValue;
  if (!lazy protocol witness table cache variable for type SwipeActions.MakeValue and conformance SwipeActions.MakeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActions.MakeValue and conformance SwipeActions.MakeValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwipeActions.MakeValueTransform and conformance SwipeActions.MakeValueTransform()
{
  result = lazy protocol witness table cache variable for type SwipeActions.MakeValueTransform and conformance SwipeActions.MakeValueTransform;
  if (!lazy protocol witness table cache variable for type SwipeActions.MakeValueTransform and conformance SwipeActions.MakeValueTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwipeActions.MakeValueTransform and conformance SwipeActions.MakeValueTransform);
  }

  return result;
}

void outlined consume of Binding<SwipeActionResultToken?>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    outlined consume of SwipeActionResultToken?(a3, a4, a5, a6);
  }
}

id specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v7 = type metadata accessor for PlatformItemList.Item();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = a1[5];
  v40 = a1[4];
  v41 = v14;
  v42 = a1[6];
  v15 = a1[1];
  v36 = *a1;
  v37 = v15;
  v16 = a1[3];
  v38 = a1[2];
  v39 = v16;
  v17 = *(&v37 + 1);
  v35 = MEMORY[0x1E69E7CC0];
  v18 = *(*(&v37 + 1) + 16);
  if (v18)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextualAction);
    v19 = v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v20 = *(v8 + 72);
    v33 = MEMORY[0x1E69E7CC0];
    do
    {
      _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_1(v19, v13, type metadata accessor for PlatformItemList.Item);
      _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLV0C10StackGroupVWOcTm_1(v13, v10, type metadata accessor for PlatformItemList.Item);

      v21 = UIContextualAction.init(_:graphHost:performDestructiveAction:)(v10, a2, v34, a4);
      v22 = outlined destroy of Binding<SwipeActionResultToken?>(v13, type metadata accessor for PlatformItemList.Item);
      if (v21)
      {
        MEMORY[0x18D00CC30](v22);
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v33 = v35;
      }

      v19 += v20;
      --v18;
    }

    while (v18);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextualAction);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [ObjCClassFromMetadata configurationWithActions_];

  v26 = v36;
  v27 = v25;
  [v27 setPerformsFirstActionWithFullSwipe_];
  outlined destroy of SwipeActions.Configuration(&v36);
  v28 = *(&v36 + 1);
  v29 = v37;
  if (BYTE1(v37) == 1)
  {
    [v27 _setSwipeActionsStyle_];
    v30 = 0.0;
  }

  else
  {
    [v27 _setSwipeActionsStyle_];
    v30 = v28;
    if (v29)
    {
      v30 = 0.0;
    }
  }

  [v27 _setRoundedStyleCornerRadius_];

  return v27;
}

uint64_t partial apply for closure #2 in UIContextualAction.init(_:graphHost:performDestructiveAction:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(type metadata accessor for PlatformItemList.Item() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #2 in UIContextualAction.init(_:graphHost:performDestructiveAction:)(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined destroy of Binding<SwipeActionResultToken?>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of PlatformItemList.Item?(uint64_t a1)
{
  _s7SwiftUI16PlatformItemListV0D0VSgMaTm_0(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t assignWithCopy for SwipeActions.Value(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (!v4)
    {
      v20 = *a2;
      v21 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v21;
      *a1 = v20;
      v22 = a2[3];
      v23 = a2[4];
      v24 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v24;
      *(a1 + 48) = v22;
      *(a1 + 64) = v23;
      goto LABEL_52;
    }

    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v7 = *(a2 + 1);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 8) = v7;
    *(a1 + 24) = *(a2 + 3);
    v8 = *(a2 + 5);

    if (v8)
    {
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 48);

      if (!*(a2 + 8))
      {
LABEL_27:
        v38 = *(a2 + 56);
        v39 = *(a2 + 72);
        v40 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 13);
        *(a1 + 88) = v40;
        *(a1 + 72) = v39;
        *(a1 + 56) = v38;
        goto LABEL_52;
      }
    }

    else
    {
      v27 = a2[2];
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v27;
      if (!*(a2 + 8))
      {
        goto LABEL_27;
      }
    }

LABEL_9:
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 64) = *(a2 + 8);
    v9 = (a2 + 5);
    v10 = *(a2 + 10);
    v11 = a2 + 72;

    if (v10 != 1)
    {
      *(a1 + 72) = *v11;
      v25 = *v9;
      if (!*v9)
      {
        *(a1 + 80) = *v9;
LABEL_34:
        v44 = *(a2 + 12);
        if (v44)
        {
LABEL_35:
          v45 = *(a2 + 13);
          *(a1 + 96) = v44;
          *(a1 + 104) = v45;

          goto LABEL_52;
        }

        *(a1 + 96) = a2[6];
        goto LABEL_52;
      }

LABEL_33:
      v43 = *(a2 + 11);
      *(a1 + 80) = v25;
      *(a1 + 88) = v43;

      goto LABEL_34;
    }

    v12 = *v11;
    v13 = *(a2 + 88);
    v14 = *(a2 + 13);
LABEL_29:
    *(a1 + 104) = v14;
    *(a1 + 88) = v13;
    *(a1 + 72) = v12;
    goto LABEL_52;
  }

  if (!v4)
  {
    outlined destroy of SwipeActions.Configuration(a1);
    v16 = a2[1];
    v15 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v16;
    *(a1 + 32) = v15;
    v17 = a2[6];
    v19 = a2[3];
    v18 = a2[4];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v17;
    *(a1 + 48) = v19;
    *(a1 + 64) = v18;
    goto LABEL_52;
  }

  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v5 = *(a2 + 1);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 8) = v5;
  *(a1 + 24) = *(a2 + 3);

  v6 = *(a2 + 5);
  if (*(a1 + 40))
  {
    if (v6)
    {
      *(a1 + 32) = *(a2 + 4);

      *(a1 + 40) = *(a2 + 5);

      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      _s7SwiftUI7BindingVySbGWOhTm_1(a1 + 32, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v26 = *(a2 + 48);
      *(a1 + 32) = a2[2];
      *(a1 + 48) = v26;
    }
  }

  else if (v6)
  {
    *(a1 + 32) = *(a2 + 4);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v28 = a2[2];
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v28;
  }

  v29 = *(a2 + 8);
  if (!*(a1 + 64))
  {
    if (!v29)
    {
      goto LABEL_27;
    }

    goto LABEL_9;
  }

  if (!v29)
  {
    outlined destroy of Binding<SwipeActionResultToken?>(a1 + 56, type metadata accessor for Binding<SwipeActionResultToken?>);
    v12 = *(a2 + 72);
    v13 = *(a2 + 88);
    v14 = *(a2 + 13);
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_29;
  }

  *(a1 + 56) = *(a2 + 7);

  *(a1 + 64) = *(a2 + 8);

  v31 = (a1 + 80);
  v30 = *(a1 + 80);
  v32 = (a1 + 72);
  v34 = (a2 + 5);
  v33 = *(a2 + 10);
  v35 = (a2 + 72);
  if (v30 == 1)
  {
    if (v33 == 1)
    {
      v36 = *v35;
      v37 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 13);
      *v32 = v36;
      *(a1 + 88) = v37;
      goto LABEL_52;
    }

    *v32 = *v35;
    v25 = *v34;
    if (!*v34)
    {
      *v31 = *v34;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v33 == 1)
  {
    outlined destroy of SwipeActionResultToken(a1 + 72);
    v41 = *(a2 + 13);
    v42 = *(a2 + 88);
    *v32 = *v35;
    *(a1 + 88) = v42;
    *(a1 + 104) = v41;
    goto LABEL_52;
  }

  *v32 = *v35;
  v46 = *v34;
  if (!v30)
  {
    if (v46)
    {
      v48 = *(a2 + 11);
      *(a1 + 80) = v46;
      *(a1 + 88) = v48;

      goto LABEL_45;
    }

LABEL_44:
    *v31 = *v34;
    goto LABEL_45;
  }

  if (!v46)
  {

    goto LABEL_44;
  }

  v47 = *(a2 + 11);
  *(a1 + 80) = v46;
  *(a1 + 88) = v47;

LABEL_45:
  v44 = *(a2 + 12);
  if (*(a1 + 96))
  {
    if (v44)
    {
      v49 = *(a2 + 13);
      *(a1 + 96) = v44;
      *(a1 + 104) = v49;

      goto LABEL_52;
    }
  }

  else if (v44)
  {
    goto LABEL_35;
  }

  *(a1 + 96) = a2[6];
LABEL_52:
  v50 = *(a2 + 17);
  if (*(a1 + 136))
  {
    if (v50)
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 113) = *(a2 + 113);
      v51 = *(a2 + 15);
      *(a1 + 128) = *(a2 + 64);
      *(a1 + 120) = v51;
      *(a1 + 136) = *(a2 + 17);

      v52 = *(a2 + 19);
      if (*(a1 + 152))
      {
        if (v52)
        {
          *(a1 + 144) = *(a2 + 18);

          *(a1 + 152) = *(a2 + 19);

          *(a1 + 160) = *(a2 + 160);
        }

        else
        {
          _s7SwiftUI7BindingVySbGWOhTm_1(a1 + 144, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
          v72 = *(a2 + 160);
          *(a1 + 144) = a2[9];
          *(a1 + 160) = v72;
        }
      }

      else if (v52)
      {
        *(a1 + 144) = *(a2 + 18);
        *(a1 + 152) = *(a2 + 19);
        *(a1 + 160) = *(a2 + 160);
      }

      else
      {
        v74 = a2[9];
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 144) = v74;
      }

      v75 = *(a2 + 22);
      if (*(a1 + 176))
      {
        if (v75)
        {
          *(a1 + 168) = *(a2 + 21);

          *(a1 + 176) = *(a2 + 22);

          v77 = (a1 + 192);
          v76 = *(a1 + 192);
          v78 = (a1 + 184);
          v80 = (a2 + 12);
          v79 = *(a2 + 24);
          v81 = (a2 + 184);
          if (v76 == 1)
          {
            if (v79 == 1)
            {
              v82 = *v81;
              v83 = *(a2 + 200);
              *(a1 + 216) = *(a2 + 27);
              *v78 = v82;
              *(a1 + 200) = v83;
              return a1;
            }

            *v78 = *v81;
            v71 = *v80;
            if (!*v80)
            {
              *v77 = *v80;
LABEL_85:
              v90 = *(a2 + 26);
              if (!v90)
              {
                *(a1 + 208) = a2[13];
                return a1;
              }

              goto LABEL_86;
            }

LABEL_84:
            v89 = *(a2 + 25);
            *(a1 + 192) = v71;
            *(a1 + 200) = v89;

            goto LABEL_85;
          }

          if (v79 == 1)
          {
            outlined destroy of SwipeActionResultToken(a1 + 184);
            v87 = *(a2 + 27);
            v88 = *(a2 + 200);
            *v78 = *v81;
            *(a1 + 200) = v88;
            *(a1 + 216) = v87;
            return a1;
          }

          *v78 = *v81;
          v92 = *v80;
          if (v76)
          {
            if (v92)
            {
              v93 = *(a2 + 25);
              *(a1 + 192) = v92;
              *(a1 + 200) = v93;

              goto LABEL_96;
            }
          }

          else if (v92)
          {
            v94 = *(a2 + 25);
            *(a1 + 192) = v92;
            *(a1 + 200) = v94;

            goto LABEL_96;
          }

          *v77 = *v80;
LABEL_96:
          v90 = *(a2 + 26);
          if (*(a1 + 208))
          {
            if (v90)
            {
              v95 = *(a2 + 27);
              *(a1 + 208) = v90;
              *(a1 + 216) = v95;

              return a1;
            }
          }

          else if (v90)
          {
LABEL_86:
            v91 = *(a2 + 27);
            *(a1 + 208) = v90;
            *(a1 + 216) = v91;

            return a1;
          }

          *(a1 + 208) = a2[13];
          return a1;
        }

        outlined destroy of Binding<SwipeActionResultToken?>(a1 + 168, type metadata accessor for Binding<SwipeActionResultToken?>);
        v58 = *(a2 + 184);
        v59 = *(a2 + 200);
        v60 = *(a2 + 27);
        *(a1 + 168) = *(a2 + 168);
LABEL_80:
        *(a1 + 216) = v60;
        *(a1 + 200) = v59;
        *(a1 + 184) = v58;
        return a1;
      }

      if (!v75)
      {
LABEL_78:
        v84 = *(a2 + 168);
        v85 = *(a2 + 184);
        v86 = *(a2 + 200);
        *(a1 + 216) = *(a2 + 27);
        *(a1 + 200) = v86;
        *(a1 + 184) = v85;
        *(a1 + 168) = v84;
        return a1;
      }

LABEL_60:
      *(a1 + 168) = *(a2 + 21);
      *(a1 + 176) = *(a2 + 22);
      v55 = (a2 + 12);
      v56 = *(a2 + 24);
      v57 = a2 + 184;

      if (v56 != 1)
      {
        *(a1 + 184) = *v57;
        v71 = *v55;
        if (!*v55)
        {
          *(a1 + 192) = *v55;
          goto LABEL_85;
        }

        goto LABEL_84;
      }

      v58 = *v57;
      v59 = *(a2 + 200);
      v60 = *(a2 + 27);
      goto LABEL_80;
    }

    outlined destroy of SwipeActions.Configuration(a1 + 112);
    v62 = a2[8];
    v61 = a2[9];
    *(a1 + 112) = a2[7];
    *(a1 + 128) = v62;
    *(a1 + 144) = v61;
    v63 = a2[13];
    v65 = a2[10];
    v64 = a2[11];
    *(a1 + 192) = a2[12];
    *(a1 + 208) = v63;
    *(a1 + 160) = v65;
    *(a1 + 176) = v64;
  }

  else
  {
    if (v50)
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 113) = *(a2 + 113);
      v53 = *(a2 + 15);
      *(a1 + 128) = *(a2 + 64);
      *(a1 + 120) = v53;
      *(a1 + 136) = *(a2 + 17);
      v54 = *(a2 + 19);

      if (v54)
      {
        *(a1 + 144) = *(a2 + 18);
        *(a1 + 152) = *(a2 + 19);
        *(a1 + 160) = *(a2 + 160);

        if (!*(a2 + 22))
        {
          goto LABEL_78;
        }
      }

      else
      {
        v73 = a2[9];
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 144) = v73;
        if (!*(a2 + 22))
        {
          goto LABEL_78;
        }
      }

      goto LABEL_60;
    }

    v66 = a2[7];
    v67 = a2[9];
    *(a1 + 128) = a2[8];
    *(a1 + 144) = v67;
    *(a1 + 112) = v66;
    v68 = a2[10];
    v69 = a2[11];
    v70 = a2[13];
    *(a1 + 192) = a2[12];
    *(a1 + 208) = v70;
    *(a1 + 160) = v68;
    *(a1 + 176) = v69;
  }

  return a1;
}

uint64_t assignWithTake for SwipeActions.Value(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    goto LABEL_8;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    outlined destroy of SwipeActions.Configuration(a1);
LABEL_8:
    v5 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v5;
    *(a1 + 96) = *(a2 + 96);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    goto LABEL_18;
  }

  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);
      if (!*(a1 + 64))
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    _s7SwiftUI7BindingVySbGWOhTm_1(a1 + 32, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  if (!*(a1 + 64))
  {
LABEL_17:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_18;
  }

LABEL_11:
  if (!*(a2 + 64))
  {
    outlined destroy of Binding<SwipeActionResultToken?>(a1 + 56, type metadata accessor for Binding<SwipeActionResultToken?>);
    goto LABEL_17;
  }

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v8 = *(a1 + 80);
  v9 = (a1 + 72);
  v10 = *(a2 + 80);
  v11 = (a2 + 72);
  if (v8 == 1)
  {
LABEL_15:
    v12 = *(a2 + 88);
    *v9 = *v11;
    *(a1 + 88) = v12;
    *(a1 + 104) = *(a2 + 104);
    goto LABEL_18;
  }

  if (v10 == 1)
  {
    outlined destroy of SwipeActionResultToken(a1 + 72);
    goto LABEL_15;
  }

  *v9 = *v11;
  if (v8)
  {
    if (v10)
    {
      v23 = *(a2 + 88);
      *(a1 + 80) = v10;
      *(a1 + 88) = v23;

      goto LABEL_48;
    }
  }

  else if (v10)
  {
    v25 = *(a2 + 88);
    *(a1 + 80) = v10;
    *(a1 + 88) = v25;
    goto LABEL_48;
  }

  *(a1 + 80) = *(a2 + 80);
LABEL_48:
  v27 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v27)
    {
      v28 = *(a2 + 104);
      *(a1 + 96) = v27;
      *(a1 + 104) = v28;

      goto LABEL_18;
    }
  }

  else if (v27)
  {
    v29 = *(a2 + 104);
    *(a1 + 96) = v27;
    *(a1 + 104) = v29;
    goto LABEL_18;
  }

  *(a1 + 96) = *(a2 + 96);
LABEL_18:
  if (*(a1 + 136))
  {
    v13 = *(a2 + 136);
    if (v13)
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 113) = *(a2 + 113);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = v13;

      if (*(a1 + 152))
      {
        if (*(a2 + 152))
        {
          *(a1 + 144) = *(a2 + 144);

          *(a1 + 152) = *(a2 + 152);

          *(a1 + 160) = *(a2 + 160);
          if (!*(a1 + 176))
          {
            goto LABEL_34;
          }

LABEL_28:
          if (*(a2 + 176))
          {
            *(a1 + 168) = *(a2 + 168);

            *(a1 + 176) = *(a2 + 176);

            v17 = *(a1 + 192);
            v18 = (a1 + 184);
            v19 = *(a2 + 192);
            v20 = (a2 + 184);
            if (v17 == 1)
            {
LABEL_32:
              v21 = *(a2 + 200);
              *v18 = *v20;
              *(a1 + 200) = v21;
              *(a1 + 216) = *(a2 + 216);
              return a1;
            }

            if (v19 == 1)
            {
              outlined destroy of SwipeActionResultToken(a1 + 184);
              goto LABEL_32;
            }

            *v18 = *v20;
            if (v17)
            {
              if (v19)
              {
                v24 = *(a2 + 200);
                *(a1 + 192) = v19;
                *(a1 + 200) = v24;

                goto LABEL_55;
              }
            }

            else if (v19)
            {
              v26 = *(a2 + 200);
              *(a1 + 192) = v19;
              *(a1 + 200) = v26;
              goto LABEL_55;
            }

            *(a1 + 192) = *(a2 + 192);
LABEL_55:
            v30 = *(a2 + 208);
            if (*(a1 + 208))
            {
              if (v30)
              {
                v31 = *(a2 + 216);
                *(a1 + 208) = v30;
                *(a1 + 216) = v31;

                return a1;
              }
            }

            else if (v30)
            {
              v32 = *(a2 + 216);
              *(a1 + 208) = v30;
              *(a1 + 216) = v32;
              return a1;
            }

            *(a1 + 208) = *(a2 + 208);
            return a1;
          }

          outlined destroy of Binding<SwipeActionResultToken?>(a1 + 168, type metadata accessor for Binding<SwipeActionResultToken?>);
LABEL_34:
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 200) = *(a2 + 200);
          *(a1 + 216) = *(a2 + 216);
          return a1;
        }

        _s7SwiftUI7BindingVySbGWOhTm_1(a1 + 144, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      }

      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      if (!*(a1 + 176))
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    outlined destroy of SwipeActions.Configuration(a1 + 112);
  }

  v14 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v14;
  *(a1 + 208) = *(a2 + 208);
  v15 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v15;
  v16 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v16;
  return a1;
}

uint64_t getEnumTagSinglePayload for SwipeActions.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for SwipeActions.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t destroy for SwipeActions.Configuration(void *a1)
{

  if (a1[5])
  {
  }

  result = a1[8];
  if (result)
  {

    v3 = a1[10];
    if (v3)
    {
      if (v3 == 1)
      {
        return result;
      }
    }

    if (a1[12])
    {
    }
  }

  return result;
}

uint64_t initializeWithCopy for SwipeActions.Configuration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);

  if (v4)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v4;
    *(a1 + 48) = *(a2 + 48);

    v5 = *(a2 + 64);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    v9 = *(a2 + 104);
    goto LABEL_7;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 64);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a2 + 80);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  v7 = (a2 + 72);

  if (v6 == 1)
  {
    v8 = *(a2 + 88);
    *(a1 + 72) = *v7;
    *(a1 + 88) = v8;
    v9 = *(a2 + 104);
LABEL_7:
    *(a1 + 104) = v9;
    return a1;
  }

  *(a1 + 72) = *v7;
  if (v6)
  {
    v10 = *(a2 + 88);
    *(a1 + 80) = v6;
    *(a1 + 88) = v10;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
  }

  v11 = *(a2 + 96);
  if (v11)
  {
    v12 = *(a2 + 104);
    *(a1 + 96) = v11;
    *(a1 + 104) = v12;
  }

  else
  {
    *(a1 + 96) = *(a2 + 96);
  }

  return a1;
}

uint64_t assignWithCopy for SwipeActions.Configuration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = *(a2 + 24);

  v5 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v5)
    {
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      _s7SwiftUI7BindingVySbGWOhTm_1(a1 + 32, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v6 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v6;
    }
  }

  else if (v5)
  {
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
  }

  v8 = *(a2 + 64);
  if (!*(a1 + 64))
  {
    if (!v8)
    {
      v25 = *(a2 + 56);
      v26 = *(a2 + 72);
      v27 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v27;
      *(a1 + 72) = v26;
      *(a1 + 56) = v25;
      return a1;
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v17 = (a2 + 80);
    v18 = *(a2 + 80);
    v19 = (a2 + 72);

    if (v18 != 1)
    {
      *(a1 + 72) = *v19;
      v28 = *v17;
      if (!*v17)
      {
        *(a1 + 80) = *v17;
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    v20 = *v19;
    v21 = *(a2 + 88);
    v22 = *(a2 + 104);
LABEL_17:
    *(a1 + 104) = v22;
    *(a1 + 88) = v21;
    *(a1 + 72) = v20;
    return a1;
  }

  if (!v8)
  {
    outlined destroy of Binding<SwipeActionResultToken?>(a1 + 56, type metadata accessor for Binding<SwipeActionResultToken?>);
    v20 = *(a2 + 72);
    v21 = *(a2 + 88);
    v22 = *(a2 + 104);
    *(a1 + 56) = *(a2 + 56);
    goto LABEL_17;
  }

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  v10 = (a1 + 80);
  v9 = *(a1 + 80);
  v11 = (a1 + 72);
  v13 = (a2 + 80);
  v12 = *(a2 + 80);
  v14 = (a2 + 72);
  if (v9 != 1)
  {
    if (v12 == 1)
    {
      outlined destroy of SwipeActionResultToken(a1 + 72);
      v23 = *(a2 + 104);
      v24 = *(a2 + 88);
      *v11 = *v14;
      *(a1 + 88) = v24;
      *(a1 + 104) = v23;
      return a1;
    }

    *v11 = *v14;
    v30 = *v13;
    if (v9)
    {
      if (v30)
      {
        v31 = *(a2 + 88);
        *(a1 + 80) = v30;
        *(a1 + 88) = v31;

        goto LABEL_36;
      }
    }

    else if (v30)
    {
      v34 = *(a2 + 88);
      *(a1 + 80) = v30;
      *(a1 + 88) = v34;

      goto LABEL_36;
    }

    *v10 = *v13;
LABEL_36:
    v32 = *(a2 + 96);
    if (*(a1 + 96))
    {
      if (v32)
      {
        v35 = *(a2 + 104);
        *(a1 + 96) = v32;
        *(a1 + 104) = v35;

        return a1;
      }
    }

    else if (v32)
    {
LABEL_30:
      v33 = *(a2 + 104);
      *(a1 + 96) = v32;
      *(a1 + 104) = v33;

      return a1;
    }

    *(a1 + 96) = *(a2 + 96);
    return a1;
  }

  if (v12 != 1)
  {
    *v11 = *v14;
    v28 = *v13;
    if (!*v13)
    {
      *v10 = *v13;
LABEL_29:
      v32 = *(a2 + 96);
      if (!v32)
      {
        *(a1 + 96) = *(a2 + 96);
        return a1;
      }

      goto LABEL_30;
    }

LABEL_24:
    v29 = *(a2 + 88);
    *(a1 + 80) = v28;
    *(a1 + 88) = v29;

    goto LABEL_29;
  }

  v15 = *v14;
  v16 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *v11 = v15;
  *(a1 + 88) = v16;
  return a1;
}
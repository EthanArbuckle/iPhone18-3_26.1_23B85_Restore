void specialized static GlassContainerTranslationKickPTSettings.settingsControllerModule()()
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v0 = swift_allocObject();
  v0[1] = xmmword_18DDACAA0;
  v1 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76CB0);
  v2 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76B40);
  v3 = objc_opt_self();
  v4 = [v3 rowWithTitle:v1 valueKeyPath:v2];

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = [v4 between:0.1 and:5.0];

  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v43, v0 + 2);
  v6 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76CD0);
  v7 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD76B60);
  v8 = [v3 rowWithTitle:v6 valueKeyPath:v7];

  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = [v8 between:0.0 and:5.0];

  if (!v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v42, v0 + 4);
  v10 = MEMORY[0x193ABEC20](0x442074657366664FLL, 0xEC00000079616C65);
  v11 = MEMORY[0x193ABEC20](0x654474657366666FLL, 0xEB0000000079616CLL);
  v12 = [v3 rowWithTitle:v10 valueKeyPath:v11];

  if (!v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = [v12 between:0.0 and:5.0];

  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v41, v0 + 6);
  v14 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76CF0);
  v15 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76B80);
  v16 = [v3 rowWithTitle:v14 valueKeyPath:v15];

  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = [v16 between:0.1 and:5.0];

  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v40, v0 + 8);
  v18 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76D10);
  v19 = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD76BA0);
  v20 = [v3 rowWithTitle:v18 valueKeyPath:v19];

  if (!v20)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = [v20 between:0.0 and:5.0];

  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v39, v0 + 10);
  v22 = MEMORY[0x193ABEC20](0x44206E7275746552, 0xEC00000079616C65);
  v23 = MEMORY[0x193ABEC20](0x65446E7275746572, 0xEB0000000079616CLL);
  v24 = [v3 rowWithTitle:v22 valueKeyPath:v23];

  if (!v24)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = [v24 between:0.0 and:2.0];

  if (!v25)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v38, v0 + 12);
  v26 = MEMORY[0x193ABEC20](0x636146206B63694BLL, 0xEB00000000726F74);
  v27 = MEMORY[0x193ABEC20](0x746361466B63696BLL, 0xEA0000000000726FLL);
  v28 = [v3 rowWithTitle:v26 valueKeyPath:v27];

  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [v28 between:1.0 and:10.0];

  if (!v29)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = objc_opt_self();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v37, v0 + 14);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v30 sectionWithRows_];

  if (v32)
  {
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_18DDA6EB0;
    *(v33 + 56) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for PTSection);
    *(v33 + 32) = v32;
    v34 = v32;
    v35 = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD76D30);
    v36 = Array._bridgeToObjectiveC()().super.isa;

    [v30 moduleWithTitle:v35 contents:v36];

    return;
  }

LABEL_31:
  __break(1u);
}

CGFloat _OffsetEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D2>, CGFloat a3@<D3>)
{
  CGAffineTransformMakeTranslation(&v7, a2, a3);
  result = v7.a;
  v5 = *&v7.c;
  v6 = *&v7.tx;
  *a1 = *&v7.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 (*_OffsetEffect.animatableData.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance CGPoint;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance _OffsetEffect(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return CGPoint.animatableData.modify;
}

uint64_t View.repeatingOffset(from:to:animation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = 0;
  v14 = 257;
  v7 = *(*a1 + 144);
  v8 = lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation();
  v9 = v7(&v13, &type metadata for RepeatAnimation, v8);
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  default argument 1 of View.appearanceAnimation<A>(animation:strategy:modifier:)(&v13);
  View.appearanceAnimation<A>(animation:strategy:modifier:)(v9, partial apply for closure #1 in View.repeatingOffset(from:to:animation:), a2, v10, a3, WitnessTable, a4);
}

SwiftUI::OffsetTransition __swiftcall OffsetTransition.init(_:)(SwiftUI::OffsetTransition result)
{
  *v1 = result.offset.width;
  v1[1] = result.offset.height;
  return result;
}

uint64_t static AnyTransition.offset(_:)(double a1, double a2)
{
  type metadata accessor for TransitionBox<OffsetTransition>(0, &lazy cache variable for type metadata for TransitionBox<OffsetTransition>, lazy protocol witness table accessor for type OffsetTransition and conformance OffsetTransition, &type metadata for OffsetTransition, type metadata accessor for TransitionBox);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

int8x16_t OffsetTransition.body(content:phase:)@<Q0>(char a1@<W1>, int8x16_t *a2@<X8>)
{
  v3 = vdup_n_s32(a1 == 1);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  result = vandq_s8(*v2, vcgezq_s64(vshlq_n_s64(v4, 0x3FuLL)));
  *a2 = result;
  return result;
}

uint64_t OffsetTransition._makeContentTransition(transition:)(uint64_t a1)
{
  if (*a1 == 3)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v6 = *v1;
    v5 = v1[1];
    type metadata accessor for _ContiguousArrayStorage<ContentTransition.Effect>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, &type metadata for ContentTransition.Effect, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18DDA6EB0;
    v7 = v6;
    v8 = v5;
    *(v4 + 32) = 3;
    *(v4 + 36) = v7;
    *(v4 + 40) = 0;
    *(v4 + 44) = v8;
    *(v4 + 48) = 0;
    *(v4 + 52) = 0x3F80000000000000;
    *(v4 + 60) = 3;
    v3 = 1;
  }

  result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return result;
}

int64_t _OffsetEffect.encode(to:)(int64_t result, double a2, double a3)
{
  v3 = result;
  if (a2 != 0.0 || a3 != 0.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v6 = *(v3 + 8);
    v7 = *(v3 + 24);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    if (v9 >= v8 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
      v11 = a2;
      v10 = a3;
      v7 = result;
    }

    else
    {
      v10 = a3;
      v11 = a2;
    }

    *(v7 + 16) = v9 + 1;
    *(v7 + 8 * v9 + 32) = v6;
    *(v3 + 24) = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      *(v3 + 8) = v6 + 1;
      CGSize.encode(to:)(v3, v11, v10);
      return ProtobufEncoder.endLengthDelimited()();
    }
  }

  return result;
}

unint64_t protocol witness for ProtobufDecodableMessage.init(from:) in conformance _OffsetEffect@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized _OffsetEffect.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

void protocol witness for static Rule.initialValue.getter in conformance OffsetPosition(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

unint64_t lazy protocol witness table accessor for type RepeatAnimation and conformance RepeatAnimation()
{
  result = lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation;
  if (!lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation;
  if (!lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation;
  if (!lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepeatAnimation and conformance RepeatAnimation);
  }

  return result;
}

uint64_t partial apply for closure #1 in View.repeatingOffset(from:to:animation:)(uint64_t a1, unsigned int a2)
{
  v3 = v2[1].i64[0];
  v4 = vdup_n_s32(a2);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v7 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL)), v2[2], v2[3]);
  return View.modifier<A>(_:)(&v7, v3, &type metadata for _OffsetEffect);
}

unint64_t lazy protocol witness table accessor for type OffsetTransition and conformance OffsetTransition()
{
  result = lazy protocol witness table cache variable for type OffsetTransition and conformance OffsetTransition;
  if (!lazy protocol witness table cache variable for type OffsetTransition and conformance OffsetTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OffsetTransition and conformance OffsetTransition);
  }

  return result;
}

uint64_t outlined consume of _Transition_ContentTransition.Result(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t specialized _OffsetEffect.init(from:)(unint64_t result)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (1)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        goto LABEL_39;
      }

      result = v3[3];
      if (result)
      {
        v6 = v3[4];
        if (v4 < v6)
        {
          goto LABEL_9;
        }

        if (v6 < v4)
        {
          goto LABEL_40;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if (result <= 7)
      {
LABEL_40:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }

LABEL_9:
      v7 = result & 7;
      if ((result & 0xFFFFFFFFFFFFFFF8) == 8)
      {
        break;
      }

      if ((result & 7) > 1)
      {
        if (v7 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          v4 = v3[1] + result;
          if (v5 < v4)
          {
            goto LABEL_40;
          }

          v3[1] = v4;
        }

        else
        {
          if (v7 != 5)
          {
            goto LABEL_40;
          }

          v4 = v3[1] + 4;
          if (v5 < v4)
          {
            goto LABEL_40;
          }

          v3[1] = v4;
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          goto LABEL_32;
        }

        if (v7 != 1)
        {
          goto LABEL_40;
        }

        v4 = v3[1] + 8;
        if (v5 < v4)
        {
          goto LABEL_40;
        }

        v3[1] = v4;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_40;
    }

    v1 = v3[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v1);
    }

    *(v1 + 2) = v9 + 1;
    *&v1[8 * v9 + 32] = v5;
    v3[5] = v1;
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    v10 = v3[1] + result;
    if (v5 < v10)
    {
      goto LABEL_40;
    }

    v3[2] = v10;
    specialized CGPoint.init(from:)(v3);
    v1 = v3[5];
    if (!*(v1 + 2))
    {
      goto LABEL_44;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v11 = *(v1 + 2);
      if (!v11)
      {
        goto LABEL_38;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
      v11 = *(result + 16);
      if (!v11)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        v3[3] = 0;
        return result;
      }
    }

    v12 = v11 - 1;
    v5 = *&v1[8 * v12 + 32];
    *(v1 + 2) = v12;
    v3[5] = v1;
    v3[2] = v5;
LABEL_32:
    v4 = v3[1];
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  v15 = *(result + 16);
  if (v15)
  {
    v13 = v15 - 1;
    v14 = *(result + 8 * v13 + 32);
    *(result + 16) = v13;
    v3[5] = result;
    v3[2] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for OffsetPosition(uint64_t a1)
{
  result = lazy protocol witness table accessor for type OffsetPosition and conformance OffsetPosition();
  *(a1 + 8) = result;
  return result;
}

void *static _AnyAnimatableData.empty.getter@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, v2);
}

_OWORD *_AnyAnimatableData.value.setter(_OWORD *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 8);

  return outlined init with take of Any(a1, (v1 + 8));
}

uint64_t static _AnyAnimatableData.zero.getter@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for ZeroVTable();
  a1[4] = MEMORY[0x1E69E7CA8] + 8;
  *a1 = result;
  return result;
}

uint64_t static _AnyAnimatableData.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return (*(*a1 + 88))(a1 + 8, a2 + 1) & 1;
  }

  else
  {
    return 0;
  }
}

void *static _AnyAnimatableData.+= infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*a1 == *a2)
  {
    return (*(v4 + 96))(a1 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v4 == result)
  {
    outlined destroy of _AnyAnimatableData(a1);

    return outlined init with copy of _AnyAnimatableData(a2, a1);
  }

  return result;
}

void *static _AnyAnimatableData.+ infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of _AnyAnimatableData(a1, a3);
  v5 = *a3;
  if (*a3 == *a2)
  {
    return (*(v5 + 96))(a3 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v5 == result)
  {
    outlined destroy of _AnyAnimatableData(a3);

    return outlined init with copy of _AnyAnimatableData(a2, a3);
  }

  return result;
}

uint64_t static _AnyAnimatableData.- infix(_:_:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  outlined init with copy of _AnyAnimatableData(a1, a3);
  v5 = *a3;
  if (*a3 == *a2)
  {
    return (*(v5 + 104))(a3 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v5 == result)
  {
    outlined destroy of _AnyAnimatableData(a3);
    outlined init with copy of _AnyAnimatableData(a2, a3);
    return (*(*a3 + 112))(a3 + 1);
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _AnyAnimatableData@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  outlined init with copy of _AnyAnimatableData(a1, a3);
  v5 = *a3;
  if (*a3 == *a2)
  {
    return (*(v5 + 96))(a3 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v5 == result)
  {
    outlined destroy of _AnyAnimatableData(a3);

    return outlined init with copy of _AnyAnimatableData(a2, a3);
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance _AnyAnimatableData@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  outlined init with copy of _AnyAnimatableData(a1, a3);

  return specialized static _AnyAnimatableData.-= infix(_:_:)(a3, a2);
}

uint64_t static VTable.zero.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of static AdditiveArithmetic.zero.getter();
}

uint64_t static VTable.negate(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  outlined init with take of Any(a1, v11);
  swift_dynamicCast();
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  *(a1 + 24) = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(v3 + 32))(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
}

uint64_t _ColorMonochromeEffect.color.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

float _ColorMonochromeEffect.resolve(in:)@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v14 = *a1;
  v8 = (*(*a2 + 112))(&v14);
  v9 = a5;
  *a3 = v8;
  *(a3 + 4) = v10;
  result = a4;
  *(a3 + 8) = v12;
  *(a3 + 12) = v13;
  *(a3 + 16) = v9;
  *(a3 + 20) = result;
  return result;
}

float32x4_t _ColorMonochromeEffect._Resolved.animatableData.getter@<Q0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  v3 = v1[1].i64[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v7;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v8, v7.f32[0], v7.u32[1], v7.f32[2], v7.f32[3]);
    v4 = v8;
  }

  v5.i64[0] = 0x4300000043000000;
  v5.i64[1] = 0x4300000043000000;
  result = vmulq_f32(v4, v5);
  *a1 = v3;
  *(a1 + 8) = result;
  return result;
}

void _ColorMonochromeEffect._Resolved.animatableData.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  v3.i64[0] = 0x3C0000003C000000;
  v3.i64[1] = 0x3C0000003C000000;
  if (one-time initialization token for legacyInterpolation != -1)
  {
    v9 = v2;
    swift_once();
    v3.i64[0] = 0x3C0000003C000000;
    v3.i64[1] = 0x3C0000003C000000;
    v2 = v9;
  }

  v8 = vmulq_f32(v2, v3);
  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v4 = v8.f32[0];
    v6 = v8.i32[2];
    v5 = v8.i32[1];
    v7 = v8.i32[3];
  }

  else
  {
    v11 = 2;
    v10 = v8;
    v4 = ResolvedGradient.ColorSpace.convertOut(_:)(&v10);
  }

  *v1 = v4;
  *(v1 + 4) = v5;
  *(v1 + 8) = v6;
  *(v1 + 12) = v7;
}

void (*_ColorMonochromeEffect._Resolved.animatableData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v9 = *v1;
  v5 = v1[1].i64[0];
  if (one-time initialization token for legacyInterpolation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static Color.Resolved.legacyInterpolation)
  {
    v6 = v9;
  }

  else
  {
    ResolvedGradient.ColorSpace.convertIn(_:)(&v10, v9.f32[0], v9.u32[1], v9.f32[2], v9.f32[3]);
    v6 = v10;
  }

  v7.i64[0] = 0x4300000043000000;
  v7.i64[1] = 0x4300000043000000;
  *(v4 + 80) = v5;
  *(v4 + 88) = vmulq_f32(v6, v7);
  return _ColorMonochromeEffect._Resolved.animatableData.modify;
}

void _ColorMonochromeEffect._Resolved.animatableData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = 56;
  if (a2)
  {
    v3 = 32;
  }

  v4 = v2 + v3;
  *v4 = *(v2 + 80);
  *(v4 + 16) = *(v2 + 96);
  _ColorMonochromeEffect._Resolved.animatableData.setter(v2 + v3);

  free(v2);
}

double _ColorMonochromeEffect._Resolved.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  v8 = *v1;
  LODWORD(v9) = 2143289344;
  *(&v9 + 4) = vrev64_s32(v1[1]);
  _s7SwiftUI14GraphicsFilterOWOi13_(&v8);
  v4 = v13;
  v3[5] = v12;
  v3[6] = v4;
  v3[7] = v14[0];
  *(v3 + 124) = *(v14 + 12);
  v5 = v9;
  v3[1] = v8;
  v3[2] = v5;
  result = *&v10;
  v7 = v11;
  v3[3] = v10;
  v3[4] = v7;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _ColorMonochromeEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  v8 = *v1;
  LODWORD(v9) = 2143289344;
  *(&v9 + 4) = vrev64_s32(v1[1]);
  _s7SwiftUI14GraphicsFilterOWOi13_(&v8);
  v4 = v13;
  v3[5] = v12;
  v3[6] = v4;
  v3[7] = v14[0];
  *(v3 + 124) = *(v14 + 12);
  v5 = v9;
  v3[1] = v8;
  v3[2] = v5;
  result = *&v10;
  v7 = v11;
  v3[3] = v10;
  v3[4] = v7;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance _ColorMonochromeEffect._Resolved@<D0>(uint64_t a1@<X8>)
{
  _ColorMonochromeEffect._Resolved.animatableData.getter(&v3);
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance _ColorMonochromeEffect._Resolved(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _ColorMonochromeEffect._Resolved.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

float protocol witness for EnvironmentalModifier.resolve(in:) in conformance _ColorMonochromeEffect@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v13 = *a1;
  v7 = (*(**&v4 + 112))(&v13);
  v8 = v6;
  *a2 = v7;
  *(a2 + 4) = v9;
  result = v5;
  *(a2 + 8) = v11;
  *(a2 + 12) = v12;
  *(a2 + 16) = v8;
  *(a2 + 20) = result;
  return result;
}

uint64_t View._colorMonochrome(_:amount:bias:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5[0] = a1;
  *&v5[1] = a3;
  *&v5[2] = a4;
  return View.modifier<A>(_:)(v5, a2, &type metadata for _ColorMonochromeEffect);
}

unint64_t instantiation function for generic protocol witness table for _ColorMonochromeEffect._Resolved(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved()
{
  result = lazy protocol witness table cache variable for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved;
  if (!lazy protocol witness table cache variable for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ColorMonochromeEffect._Resolved and conformance _ColorMonochromeEffect._Resolved);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

void *assignWithCopy for _ColorMonochromeEffect(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for _ColorMonochromeEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t Gesture.simultaneously<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return SimultaneousGesture.init(_:_:)(v14, v10, a2, a3, a4);
}

uint64_t SimultaneousGesture.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for SimultaneousGesture();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t SimultaneousGesture.Value.first.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SimultaneousGesture.Value.first.setter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SimultaneousGesture.Value.second.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SimultaneousGesture.Value.second.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SimultaneousGesture.Value.init(first:second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for SimultaneousGesture.Value() + 52);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  return (*(*(v8 - 8) + 32))(a3 + v7, a2, v8);
}

double static SimultaneousGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int32x2_t *a7@<X8>)
{
  v10 = a3;
  v61 = a7;
  v106 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a2 + 32);
  v13 = *(a2 + 64);
  v14 = *(a2 + 80);
  v103 = *(a2 + 48);
  v104 = v13;
  v105 = v14;
  v15 = *a2;
  v101 = *(a2 + 16);
  v102 = v12;
  v16 = *(a2 + 96);
  v99 = *(a2 + 104);
  v100 = v15;
  v17 = *(a2 + 120);
  v86 = a3;
  v87 = a4;
  v88 = a5;
  v89 = a6;
  LODWORD(v71) = v11;
  LODWORD(v79) = v11;
  *&v90 = a3;
  *(&v90 + 1) = a4;
  *&v91 = a5;
  *(&v91 + 1) = a6;
  v67 = type metadata accessor for SimultaneousGesture();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static SimultaneousGesture._makeGesture(gesture:inputs:), v10, v77);
  v92 = v102;
  v93 = v103;
  v94 = v104;
  v95 = v105;
  v90 = v100;
  v91 = v101;
  v62 = v16;
  v96 = v16;
  v97 = v99;
  v98 = v17;
  v18 = (*(a5 + 32))(&v83, v77, &v90, v10, a5);
  v73 = v10;
  LODWORD(v75) = v17;
  if ((v17 & 8) != 0)
  {
    v18 = swift_conformsToProtocol2();
    if (!v18 || !v10)
    {
      _gestureModifierProtocolDescriptor();
      v20 = swift_conformsToProtocol();
      v92 = v102;
      v93 = v103;
      v94 = v104;
      v95 = v105;
      v90 = v100;
      v91 = v101;
      if (v20)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      LOBYTE(v77[0]) = v21;
      v96 = v62;
      v97 = v99;
      v98 = v75;
      swift_getAssociatedTypeWitness();
      type metadata accessor for _GestureOutputs();
      v22 = _GestureOutputs.debugData.getter();
      v82[0] = 1;
      v10 = v73;
      v18 = _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v73, v77, 0x100000000, &v90, v22 | ((HIDWORD(v22) & 1) << 32), 0x100000000);
    }
  }

  *&v19 = v83;
  v74 = v19;
  v72 = v84;
  v70 = v85;
  MEMORY[0x1EEE9AC00](v18);
  AssociatedTypeWitness = v10;
  v58 = a4;
  WitnessTable = a5;
  v60 = a6;
  LODWORD(v79) = v71;
  _GraphValue.subscript.getter(partial apply for closure #2 in static SimultaneousGesture._makeGesture(gesture:inputs:), a4, v77);
  v92 = v102;
  v93 = v103;
  v94 = v104;
  v95 = v105;
  v90 = v100;
  v91 = v101;
  v96 = v62;
  v97 = v99;
  v98 = v75;
  v23 = (*(a6 + 32))(&v83, v77, &v90, a4, a6);
  if ((v75 & 8) != 0)
  {
    v23 = swift_conformsToProtocol2();
    if (!v23 || !a4)
    {
      _gestureModifierProtocolDescriptor();
      v25 = swift_conformsToProtocol();
      v92 = v102;
      v93 = v103;
      v94 = v104;
      v95 = v105;
      v90 = v100;
      v91 = v101;
      if (v25)
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      LOBYTE(v77[0]) = v26;
      v96 = v62;
      v97 = v99;
      v98 = v75;
      swift_getAssociatedTypeWitness();
      type metadata accessor for _GestureOutputs();
      v27 = _GestureOutputs.debugData.getter();
      v82[0] = 1;
      v23 = _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a4, v77, 0x100000000, &v90, v27 | ((HIDWORD(v27) & 1) << 32), 0x100000000);
    }
  }

  *&v24 = v83;
  v71 = v84;
  v68 = v85;
  v65 = v24;
  v83 = vzip1_s32(*&v74, v83);
  MEMORY[0x1EEE9AC00](v23);
  *&v90 = v73;
  *(&v90 + 1) = a4;
  *&v91 = a5;
  *(&v91 + 1) = a6;
  type metadata accessor for SimultaneousGesture.Value();
  AssociatedTypeWitness = type metadata accessor for GesturePhase();
  *&v90 = v73;
  *(&v90 + 1) = a4;
  v69 = a4;
  *&v91 = a5;
  *(&v91 + 1) = a6;
  v58 = type metadata accessor for SimultaneousPhase();
  WitnessTable = swift_getWitnessTable();
  v28 = type metadata accessor for Attribute();
  v29 = 0;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v83, partial apply for closure #1 in Attribute.init<A>(_:), v56, v58, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v30);
  _GestureOutputs.init(phase:)(v90, &v83);
  if ((v75 & 8) != 0)
  {
    v92 = v102;
    v93 = v103;
    v94 = v104;
    v95 = v105;
    v90 = v100;
    v91 = v101;
    v82[0] = 4;
    v96 = v62;
    v97 = v99;
    v98 = v75;
    v79 = v74;
    v80 = v72;
    v81 = v70;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    v31 = _GestureOutputs.debugData.getter();
    v77[0] = v65;
    v77[1] = v71;
    v78 = v68;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    v32 = _GestureOutputs.debugData.getter();
    type metadata accessor for _GestureOutputs();
    v76 = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v67, v82, 0x100000000, &v90, v31 | ((HIDWORD(v31) & 1) << 32), v32 | ((HIDWORD(v32) & 1) << 32));
  }

  v33 = *(v62 + 16);
  v34 = v72;
  if (v33)
  {
    LODWORD(v67) = *MEMORY[0x1E698D3F8];

    v66 = v74;
    v36 = (v35 + 40);
    v63 = a5;
    v64 = a6;
    v37 = v71;
    do
    {
      v75 = v29;
      v39 = *(v36 - 1);
      v38 = *v36;
      *&v90 = v34;
      DWORD2(v90) = v70;
      v40 = PreferencesOutputs.subscript.getter(v39, v39, v38);
      v41 = v67;
      v42 = v33;
      if ((v40 & 0x100000000) != 0)
      {
        v43 = v67;
      }

      else
      {
        v43 = v40;
      }

      *&v90 = v37;
      DWORD2(v90) = v68;
      v44 = PreferencesOutputs.subscript.getter(v39, v39, v38);
      *&v74 = &v61;
      if ((v44 & 0x100000000) != 0)
      {
        v45 = v41;
      }

      else
      {
        v45 = v44;
      }

      v79 = __PAIR64__(v45, v43);
      v80 = __PAIR64__(v65, v66);
      MEMORY[0x1EEE9AC00](v44);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *&v90 = v73;
      *(&v90 + 1) = v69;
      *&v91 = v39;
      *(&v91 + 1) = v63;
      *&v92 = v64;
      *(&v92 + 1) = v38;
      v46 = type metadata accessor for SimultaneousPreference();
      v58 = v46;
      WitnessTable = swift_getWitnessTable();
      v47 = v42;
      v48 = type metadata accessor for Attribute();
      v49 = v46;
      v37 = v71;
      v29 = v75;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v79, closure #1 in Attribute.init<A>(_:)partial apply, v56, v49, MEMORY[0x1E69E73E0], v48, MEMORY[0x1E69E7410], v50);
      v51 = v90;
      swift_beginAccess();
      LOBYTE(v79) = 0;
      PreferencesOutputs.subscript.setter(v51, v39, v39, v38);
      v34 = v72;
      swift_endAccess();
      v36 += 2;
      v33 = v47 - 1;
    }

    while (v33);
  }

  else
  {
  }

  swift_beginAccess();
  v52 = v84;
  v53 = v85;
  result = *&v83;
  v55 = v61;
  *v61 = v83;
  v55[1] = v52;
  v55[2].i32[0] = v53;
  return result;
}

uint64_t closure #1 in static SimultaneousGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for SimultaneousGesture();
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t closure #2 in static SimultaneousGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for SimultaneousGesture();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

BOOL static SimultaneousGesture.Value<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52[1] = a8;
  v55 = a7;
  v59 = a6;
  v57 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52[0] = v52 - v13;
  v67 = v14;
  v15 = type metadata accessor for Optional();
  v64 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v62 = v52 - v16;
  v65 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v63 = v52 - v18;
  v58 = a5;
  v56 = a3;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v54 = v52 - v21;
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v71 = v52 - v24;
  v25 = swift_getTupleTypeMetadata2();
  v68 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v52 - v27;
  v30 = *(v29 + 48);
  v69 = v23;
  v31 = *(v23 + 16);
  v60 = a1;
  v31(v52 - v27, a1, v22, v26);
  v61 = a2;
  (v31)(&v28[v30], a2, v22);
  v32 = *(v20 + 48);
  if (v32(v28, 1, v19) != 1)
  {
    (v31)(v71, v28, v22);
    if (v32(&v28[v30], 1, v19) != 1)
    {
      v33 = &v28[v30];
      v34 = v54;
      (*(v20 + 32))(v54, v33, v19);
      v35 = v71;
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v20 + 8);
      v37(v34, v19);
      v37(v35, v19);
      (*(v69 + 8))(v28, v22);
      if ((v36 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v20 + 8))(v71, v19);
LABEL_6:
    (*(v68 + 8))(v28, v25);
    return 0;
  }

  if (v32(&v28[v30], 1, v19) != 1)
  {
    goto LABEL_6;
  }

  (*(v69 + 8))(v28, v22);
LABEL_8:
  v72 = v56;
  v73 = v57;
  v74 = v58;
  v75 = v59;
  v38 = *(type metadata accessor for SimultaneousGesture.Value() + 52);
  v39 = *(TupleTypeMetadata2 + 48);
  v41 = v63;
  v40 = v64;
  v42 = *(v64 + 16);
  v43 = v65;
  v42(v63, v60 + v38, v65);
  v42(&v41[v39], v61 + v38, v43);
  v45 = v66;
  v44 = v67;
  v46 = *(v66 + 48);
  if (v46(v41, 1, v67) == 1)
  {
    if (v46(&v41[v39], 1, v44) == 1)
    {
      (*(v40 + 8))(v41, v43);
      return 1;
    }

    goto LABEL_13;
  }

  v42(v62, v41, v43);
  if (v46(&v41[v39], 1, v44) == 1)
  {
    (*(v45 + 8))(v62, v44);
LABEL_13:
    (*(v53 + 8))(v41, TupleTypeMetadata2);
    return 0;
  }

  v48 = v52[0];
  (*(v45 + 32))(v52[0], &v41[v39], v44);
  v49 = v62;
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v45 + 8);
  v51(v48, v44);
  v51(v49, v44);
  (*(v40 + 8))(v41, v43);
  return (v50 & 1) != 0;
}

uint64_t SimultaneousGesture.Value<>.hash(into:)()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  Optional<A>.hash(into:)();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  return Optional<A>.hash(into:)();
}

Swift::Int SimultaneousGesture.Value<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  SimultaneousGesture.Value<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SimultaneousPhase.phase1.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t SimultaneousPhase.phase2.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> SimultaneousGesture<A, B>.Value()
{
  Hasher.init(_seed:)();
  SimultaneousGesture.Value<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SimultaneousPhase.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a6;
  v57 = a2;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v53 = type metadata accessor for SimultaneousGesture.Value();
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - v16;
  swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for GesturePhase();
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for GesturePhase();
  v54 = v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v43 - v19;
  v55 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v24 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v43 - v26;
  SimultaneousPhase.phase1.getter(&v43 - v26);
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v28 = TupleTypeMetadata2;
  v51 = a5;
  SimultaneousPhase.phase2.getter(v23);
  v29 = *(v28 + 48);
  v30 = v27;
  v31 = v54;
  v32 = v55;
  (*(v24 + 32))(v20, v30, v54);
  (*(v32 + 32))(&v20[v29], v23, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_14:
      (*(v32 + 8))(&v20[v29], v18);
      (*(v24 + 8))(v20, v31);
      v39 = v46;
      getter of value #1 in SimultaneousPhase.value.getter(v47, v48, v49, v50, v51, v46);
      v40 = v53;
      v41 = *(v53 - 8);
      if ((*(v41 + 48))(v39, 1, v53) != 1)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v35 = swift_getEnumCaseMultiPayload();
    if (v35 == 3)
    {
LABEL_22:
      (*(v24 + 8))(v20, v31);
      goto LABEL_31;
    }

    if (v35)
    {
      goto LABEL_10;
    }

LABEL_21:
    (*(v32 + 8))(&v20[v29], v18);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_10;
  }

  v36 = swift_getEnumCaseMultiPayload();
  if (!v36)
  {
    goto LABEL_21;
  }

  if (v36 == 3)
  {
    type metadata accessor for GesturePhase();
    swift_storeEnumTagMultiPayload();
    return (*(v24 + 8))(v20, v31);
  }

LABEL_10:
  v38 = swift_getEnumCaseMultiPayload();
  if (v38 <= 1)
  {
    if (!v38)
    {
      if (v34 != 2)
      {
        goto LABEL_35;
      }

LABEL_28:
      (*(v24 + 8))(v20, v31);
      v42 = (*(v32 + 8))(&v20[v29], v18);
      if (specialized static SimultaneousGestureBeginsWhenChildEndsFeature.isEnabled.getter(v42))
      {
        v39 = v44;
        getter of value #1 in SimultaneousPhase.value.getter(v47, v48, v49, v50, v51, v44);
        v40 = v53;
        v41 = *(v53 - 8);
        if ((*(v41 + 48))(v39, 1, v53) == 1)
        {
          __break(1u);
          goto LABEL_31;
        }

LABEL_26:
        (*(v41 + 32))(v52, v39, v40);
        type metadata accessor for GesturePhase();
        return swift_storeEnumTagMultiPayload();
      }

LABEL_31:
      getter of value #1 in SimultaneousPhase.value.getter(v47, v48, v49, v50, v51, v52);
      type metadata accessor for GesturePhase();
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_14;
  }

  if (v38 == 2)
  {
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        (*(v24 + 8))(v20, v31);
      }

      (*(v32 + 8))(&v20[v29], v18);
LABEL_25:
      v40 = v53;
      v39 = v45;
      getter of value #1 in SimultaneousPhase.value.getter(v47, v48, v49, v50, v51, v45);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40) != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }

    if (!v34)
    {
      goto LABEL_28;
    }
  }

  else if (v34 == 2)
  {
    (*(v24 + 8))(v20, v31);
    goto LABEL_25;
  }

LABEL_35:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t getter of value #1 in SimultaneousPhase.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a3;
  v61 = a5;
  v62 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = type metadata accessor for Optional();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v49 - v12;
  v52 = AssociatedTypeWitness;
  v13 = type metadata accessor for GesturePhase();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v49 - v16;
  v17 = a4;
  v18 = swift_getAssociatedTypeWitness();
  v59 = type metadata accessor for Optional();
  v19 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  v24 = type metadata accessor for GesturePhase();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v54 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v49 - v28;
  v65 = a1;
  v30 = v60;
  v31 = v17;
  v32 = v61;
  SimultaneousPhase.phase1.getter(&v49 - v28);
  GesturePhase.unwrapped.getter(v24, v23);
  v55 = *(v25 + 8);
  v55(v29, v24);
  v33 = *(*(v18 - 8) + 48);
  v34 = v18;
  v35 = a2;
  LODWORD(v29) = v33(v23, 1, v34);
  (*(v19 + 8))(v23, v59);
  v36 = v31;
  if (v29 == 1 && (v37 = v49, SimultaneousPhase.phase2.getter(v49), v38 = v50, v39 = v64, GesturePhase.unwrapped.getter(v64, v50), (*(v63 + 8))(v37, v39), LODWORD(v37) = (*(*(v52 - 8) + 48))(v38, 1), (*(v51 + 8))(v38, v53), v37 == 1))
  {
    v66 = v35;
    v67 = v30;
    v68 = v31;
    v69 = v32;
    v40 = type metadata accessor for SimultaneousGesture.Value();
    v41 = 1;
    v42 = v62;
  }

  else
  {
    v43 = v54;
    SimultaneousPhase.phase1.getter(v54);
    v44 = v56;
    GesturePhase.unwrapped.getter(v24, v56);
    v55(v43, v24);
    v45 = v57;
    SimultaneousPhase.phase2.getter(v57);
    v46 = v58;
    v47 = v64;
    GesturePhase.unwrapped.getter(v64, v58);
    (*(v63 + 8))(v45, v47);
    v42 = v62;
    SimultaneousGesture.Value.init(first:second:)(v44, v46, v62);
    v66 = v35;
    v67 = v30;
    v68 = v36;
    v69 = v32;
    v40 = type metadata accessor for SimultaneousGesture.Value();
    v41 = 0;
  }

  return (*(*(v40 - 8) + 56))(v42, v41, 1);
}

uint64_t SimultaneousPreference.value1.getter@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E698D3F8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = AssociatedTypeWitness;
  if (v4 == a1)
  {
    v7 = *(AssociatedTypeWitness - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a2, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a2, v8, 1, v6);
}

uint64_t SimultaneousPreference.value2.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = HIDWORD(a1);
  v4 = *MEMORY[0x1E698D3F8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = AssociatedTypeWitness;
  if (v4 == v3)
  {
    v7 = *(AssociatedTypeWitness - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a2, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a2, v8, 1, v6);
}

uint64_t SimultaneousPreference.phase1.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t SimultaneousPreference.phase2.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for GesturePhase();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SimultaneousPhase<A, B>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SimultaneousGesture.Value();
  v2 = type metadata accessor for GesturePhase();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t SimultaneousPreference.mergedValue()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v95 = a8;
  v90 = a7;
  v92 = a4;
  v93 = a2;
  swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for GesturePhase();
  v85 = *(v14 - 8);
  v86 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v73 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v87 = *(v17 - 8);
  v88 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v79 = &v73 - v22;
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v78 = &v73 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v73 - v29;
  v94 = a3;
  swift_getAssociatedTypeWitness();
  v30 = type metadata accessor for GesturePhase();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v73 - v33;
  v91 = v23;
  v35 = *(v23 + 56);
  v82 = v23 + 56;
  v83 = a9;
  v89 = AssociatedTypeWitness;
  v81 = v35;
  (v35)(a9, 1, 1, AssociatedTypeWitness, v32);
  v36 = a1;
  v37 = a6;
  SimultaneousPreference.phase1.getter(v34);
  LOBYTE(AssociatedTypeWitness) = GesturePhase.isFailed.getter(v30);
  v38 = a5;
  v39 = v37;
  (*(v31 + 8))(v34, v30);
  if ((AssociatedTypeWitness & 1) == 0)
  {
    v40 = v79;
    v74 = a1;
    SimultaneousPreference.value1.getter(a1, v79);
    v41 = v91;
    v42 = v89;
    v43 = (*(v91 + 48))(v40, 1, v89);
    v44 = *(v87 + 8);
    if (v43 == 1)
    {
      v44(v40, v88);
    }

    else
    {
      v45 = v83;
      v44(v83, v88);
      v46 = *(v41 + 32);
      v47 = v39;
      v48 = v76;
      v46(v76, v40, v42);
      v49 = v48;
      v39 = v47;
      v46(v45, v49, v42);
      v81(v45, 0, 1, v42);
    }

    v36 = v74;
  }

  v50 = v84;
  SimultaneousPreference.phase2.getter(v84);
  v51 = v86;
  v52 = GesturePhase.isFailed.getter(v86);
  result = (*(v85 + 8))(v50, v51);
  if (!v52)
  {
    v54 = v80;
    v86 = v38;
    v93 = v39;
    SimultaneousPreference.value2.getter(v36, v80);
    v55 = v91;
    v56 = *(v91 + 48);
    v57 = v89;
    if (v56(v54, 1, v89) == 1)
    {
      return (*(v87 + 8))(v54, v88);
    }

    else
    {
      v58 = v78;
      v59 = v54;
      v60 = *(v55 + 32);
      v60(v78, v59, v57);
      v62 = v87;
      v61 = v88;
      v63 = v77;
      v64 = v83;
      (*(v87 + 16))(v77, v83, v88);
      if (v56(v63, 1, v57) == 1)
      {
        v65 = *(v62 + 8);
        v65(v64, v61);
        v65(v63, v61);
        v66 = v91;
        (*(v91 + 16))(v64, v58, v57);
      }

      else
      {
        v67 = v75;
        v68 = (v60)(v75, v63, v57);
        v69 = MEMORY[0x1EEE9AC00](v68);
        v70 = v95;
        v72 = v92;
        v71 = v93;
        *(&v73 - 8) = v94;
        *(&v73 - 7) = v72;
        *(&v73 - 6) = v86;
        *(&v73 - 5) = v71;
        *(&v73 - 4) = v90;
        *(&v73 - 3) = v70;
        *(&v73 - 2) = v58;
        (*(v70 + 24))(v67, partial apply for closure #1 in SimultaneousPreference.mergedValue(), v69);
        (*(v62 + 8))(v64, v61);
        v60(v64, v67, v57);
        v66 = v91;
      }

      v81(v64, 0, 1, v57);
      return (*(v66 + 8))(v58, v57);
    }
  }

  return result;
}

uint64_t static SimultaneousPreference.initialValue.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  (*(a2 + 16))(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t SimultaneousPreference.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v84 = a5;
  v85 = a8;
  v83 = a2;
  v76 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v65 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v65 - v21;
  swift_getAssociatedTypeWitness();
  v22 = type metadata accessor for GesturePhase();
  swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for GesturePhase();
  v82 = v22;
  v24 = v23;
  v77 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v78 = &v65 - v25;
  v80 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  v81 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  SimultaneousPreference.phase1.getter(&v65 - v30);
  v72 = a1;
  v73 = a3;
  v74 = a4;
  v32 = v77;
  v33 = a6;
  v34 = TupleTypeMetadata2;
  v35 = v81;
  SimultaneousPreference.phase2.getter(v28);
  v36 = *(v34 + 48);
  v37 = v78;
  v38 = v31;
  v39 = v80;
  v40 = v82;
  (*(v35 + 32))(v78, v38, v82);
  (*(v39 + 32))(&v37[v36], v28, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload && swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v35 + 8))(v37, v40);
      (*(v39 + 8))(&v37[v36], v32);
      goto LABEL_14;
    }

LABEL_13:
    (*(v39 + 8))(&v37[v36], v32);
    (*(v35 + 8))(v37, v40);
LABEL_14:
    v49 = v71;
    v50 = v84;
    v51 = v85;
    SimultaneousPreference.mergedValue()(v72, v83, v73, v74, v84, v33, a7, v85, v71);
    v52 = AssociatedTypeWitness;
    v53 = *(AssociatedTypeWitness - 8);
    v54 = *(v53 + 48);
    if (v54(v49, 1, AssociatedTypeWitness) != 1)
    {
      return (*(v53 + 32))(v76, v49, v52);
    }

    (*(v51 + 16))(v50, v51);
    result = (v54)(v49, 1, v52);
    if (result != 1)
    {
      return (*(v69 + 8))(v49, v70);
    }

    return result;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 == 2)
    {
      v43 = v84;
      v45 = v66;
      v46 = v85;
      SimultaneousPreference.value2.getter(v72, v66);
      goto LABEL_22;
    }

    if (v47 == 3)
    {
      (*(v85 + 16))();
      return (*(v35 + 8))(v37, v40);
    }

LABEL_12:
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      (*(v85 + 16))();
      return (*(v65 + 8))(v37, v34);
    }

    goto LABEL_13;
  }

  v42 = swift_getEnumCaseMultiPayload();
  if (v42 != 3)
  {
    if (v42 == 2)
    {
      v43 = v84;
      v44 = a7;
      v45 = v67;
      v46 = v85;
      SimultaneousPreference.mergedValue()(v72, v83, v73, v74, v84, v33, v44, v85, v67);
LABEL_22:
      v62 = AssociatedTypeWitness;
      v63 = *(AssociatedTypeWitness - 8);
      v64 = *(v63 + 48);
      if (v64(v45, 1, AssociatedTypeWitness) == 1)
      {
        (*(v46 + 16))(v43, v46);
        if (v64(v45, 1, v62) != 1)
        {
          (*(v69 + 8))(v45, v70);
        }
      }

      else
      {
        (*(v63 + 32))(v76, v45, v62);
      }

      (*(v80 + 8))(&v37[v36], v32);
      return (*(v81 + 8))(v37, v82);
    }

    goto LABEL_12;
  }

  v55 = v40;
  v56 = v84;
  v57 = v68;
  v58 = v85;
  SimultaneousPreference.value1.getter(v72, v68);
  v59 = AssociatedTypeWitness;
  v60 = *(AssociatedTypeWitness - 8);
  v61 = *(v60 + 48);
  if (v61(v57, 1, AssociatedTypeWitness) == 1)
  {
    (*(v58 + 16))(v56, v58);
    if (v61(v57, 1, v59) != 1)
    {
      (*(v69 + 8))(v57, v70);
    }
  }

  else
  {
    (*(v60 + 32))(v76, v57, v59);
  }

  return (*(v35 + 8))(v37, v55);
}

uint64_t protocol witness for static _AttributeBody._updateDefault(_:) in conformance SimultaneousPreference<A, B, C>(uint64_t a1, uint64_t a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  static SimultaneousPreference.initialValue.getter(v4, v3, v9);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v15);
  v17[-2] = a2;
  v17[-1] = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, partial apply for closure #1 in static Rule._updateDefault(_:), &v17[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v16);
  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t instantiation function for generic protocol witness table for SimultaneousGesture<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for SimultaneousGesture.Value()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SimultaneousGesture.Value(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  if (*(v8 + 84))
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = (*(v5 + 80) | *(v8 + 80));
  if (v12 > 7 || ((*(v5 + 80) | *(v8 + 80)) & 0x100000) != 0 || ((v6 + v9) & ~v9) + v11 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = v7;
    v17 = ~v9;
    if ((*(v5 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v6);
    }

    else
    {
      (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v5 + 56))(a1, 0, 1, AssociatedTypeWitness);
    }

    v18 = a1 + v10;
    v19 = a2 + v10;
    if ((*(v8 + 48))(v19 & v17, 1, v16))
    {
      memcpy((v18 & v17), (v19 & v17), v11);
    }

    else
    {
      (*(v8 + 16))(v18 & v17, v19 & v17, v16);
      (*(v8 + 56))(v18 & v17, 0, 1, v16);
    }
  }

  return a1;
}

uint64_t destroy for SimultaneousGesture.Value(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  if (!(*(v3 + 48))(a1, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(a1, AssociatedTypeWitness);
  }

  v4 = *(v3 + 84);
  v5 = *(v3 + 64);
  v6 = swift_getAssociatedTypeWitness();
  v7 = *(v6 - 8);
  v8 = v4 == 0;
  v9 = *(v7 + 80);
  v10 = v5 + a1;
  if (v8)
  {
    ++v10;
  }

  v11 = v10 + v9;
  v14 = *(v6 - 8);
  result = (*(v7 + 48))((v10 + v9) & ~v9, 1, v6);
  if (!result)
  {
    v13 = *(v14 + 8);

    return v13(v11 & ~v9, v6);
  }

  return result;
}

char *initializeWithCopy for SimultaneousGesture.Value(char *a1, char *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  if ((*(v5 + 48))(a2, 1, AssociatedTypeWitness))
  {
    v6 = *(v5 + 84);
    v7 = *(v5 + 64);
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 + 1;
    }

    memcpy(a1, a2, v8);
  }

  else
  {
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    v10 = *(v5 + 56);
    v9 = v5 + 56;
    v10(a1, 0, 1, AssociatedTypeWitness);
    v6 = *(v9 + 28);
    v7 = *(v9 + 8);
  }

  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = v7 + 1;
  }

  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v11 + v14;
  v16 = &a1[v11 + v14];
  v17 = &a2[v15];
  if ((*(v13 + 48))(v17 & ~v14, 1, v12))
  {
    if (*(v13 + 84))
    {
      v18 = *(v13 + 64);
    }

    else
    {
      v18 = *(v13 + 64) + 1;
    }

    memcpy((v16 & ~v14), (v17 & ~v14), v18);
  }

  else
  {
    (*(v13 + 16))(v16 & ~v14, v17 & ~v14, v12);
    (*(v13 + 56))(v16 & ~v14, 0, 1, v12);
  }

  return a1;
}

char *assignWithCopy for SimultaneousGesture.Value(char *a1, char *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, AssociatedTypeWitness);
  v8 = v6(a2, 1, AssociatedTypeWitness);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v5 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v5 + 8))(a1, AssociatedTypeWitness);
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  memcpy(a1, a2, v11);
LABEL_12:
  if (*(v5 + 84))
  {
    v12 = *(v5 + 64);
  }

  else
  {
    v12 = *(v5 + 64) + 1;
  }

  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v12 + v15;
  v17 = &a1[v12 + v15];
  v18 = &a2[v16];
  v19 = *(v14 + 48);
  v20 = v19(v17 & ~v15, 1, v13);
  v21 = v19(v18 & ~v15, 1, v13);
  if (v20)
  {
    if (!v21)
    {
      (*(v14 + 16))(v17 & ~v15, v18 & ~v15, v13);
      (*(v14 + 56))(v17 & ~v15, 0, 1, v13);
      return a1;
    }

    v22 = *(v14 + 84);
    v23 = *(v14 + 64);
  }

  else
  {
    if (!v21)
    {
      (*(v14 + 24))(v17 & ~v15, v18 & ~v15, v13);
      return a1;
    }

    v25 = *(v14 + 8);
    v24 = v14 + 8;
    v25(v17 & ~v15, v13);
    v22 = *(v24 + 76);
    v23 = *(v24 + 56);
  }

  if (v22)
  {
    v26 = v23;
  }

  else
  {
    v26 = v23 + 1;
  }

  memcpy((v17 & ~v15), (v18 & ~v15), v26);
  return a1;
}

char *initializeWithTake for SimultaneousGesture.Value(char *a1, char *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  if ((*(v5 + 48))(a2, 1, AssociatedTypeWitness))
  {
    v6 = *(v5 + 84);
    v7 = *(v5 + 64);
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 + 1;
    }

    memcpy(a1, a2, v8);
  }

  else
  {
    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    v10 = *(v5 + 56);
    v9 = v5 + 56;
    v10(a1, 0, 1, AssociatedTypeWitness);
    v6 = *(v9 + 28);
    v7 = *(v9 + 8);
  }

  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = v7 + 1;
  }

  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v11 + v14;
  v16 = &a1[v11 + v14];
  v17 = &a2[v15];
  if ((*(v13 + 48))(v17 & ~v14, 1, v12))
  {
    if (*(v13 + 84))
    {
      v18 = *(v13 + 64);
    }

    else
    {
      v18 = *(v13 + 64) + 1;
    }

    memcpy((v16 & ~v14), (v17 & ~v14), v18);
  }

  else
  {
    (*(v13 + 32))(v16 & ~v14, v17 & ~v14, v12);
    (*(v13 + 56))(v16 & ~v14, 0, 1, v12);
  }

  return a1;
}

char *assignWithTake for SimultaneousGesture.Value(char *a1, char *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, AssociatedTypeWitness);
  v8 = v6(a2, 1, AssociatedTypeWitness);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
      (*(v5 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v5 + 8))(a1, AssociatedTypeWitness);
    v9 = *(v5 + 84);
    v10 = *(v5 + 64);
  }

  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  memcpy(a1, a2, v11);
LABEL_12:
  if (*(v5 + 84))
  {
    v12 = *(v5 + 64);
  }

  else
  {
    v12 = *(v5 + 64) + 1;
  }

  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v12 + v15;
  v17 = &a1[v12 + v15];
  v18 = &a2[v16];
  v19 = *(v14 + 48);
  v20 = v19(v17 & ~v15, 1, v13);
  v21 = v19(v18 & ~v15, 1, v13);
  if (v20)
  {
    if (!v21)
    {
      (*(v14 + 32))(v17 & ~v15, v18 & ~v15, v13);
      (*(v14 + 56))(v17 & ~v15, 0, 1, v13);
      return a1;
    }

    v22 = *(v14 + 84);
    v23 = *(v14 + 64);
  }

  else
  {
    if (!v21)
    {
      (*(v14 + 40))(v17 & ~v15, v18 & ~v15, v13);
      return a1;
    }

    v25 = *(v14 + 8);
    v24 = v14 + 8;
    v25(v17 & ~v15, v13);
    v22 = *(v24 + 76);
    v23 = *(v24 + 56);
  }

  if (v22)
  {
    v26 = v23;
  }

  else
  {
    v26 = v23 + 1;
  }

  memcpy((v17 & ~v15), (v18 & ~v15), v26);
  return a1;
}

uint64_t getEnumTagSinglePayload for SimultaneousGesture.Value(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  if (v5)
  {
    v12 = *(v4 + 64);
  }

  else
  {
    v12 = *(v4 + 64) + 1;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v12 + v13;
  if (a2 <= v11)
  {
LABEL_40:
    if (v6 >= v10)
    {
      v24 = (*(v4 + 48))(a1, v5, AssociatedTypeWitness);
    }

    else
    {
      v24 = (*(v8 + 48))((a1 + v16) & ~v13);
    }

    if (v24 >= 2)
    {
      return v24 - 1;
    }

    else
    {
      return 0;
    }
  }

  v17 = v15 + (v16 & ~v13);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((a2 - v11 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v20 < 2)
    {
LABEL_39:
      if (v11)
      {
        goto LABEL_40;
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_39;
  }

LABEL_26:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v11 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for SimultaneousGesture.Value(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v8)
  {
    v15 = *(v7 + 64);
  }

  else
  {
    v15 = *(v7 + 64) + 1;
  }

  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (!v12)
  {
    ++v17;
  }

  v18 = ((v15 + v16) & ~v16) + v17;
  if (a3 <= v14)
  {
LABEL_29:
    if (v14 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (v18 > 3)
  {
    v10 = 1;
    if (v14 >= a2)
    {
      goto LABEL_18;
    }

LABEL_30:
    v21 = ~v14 + a2;
    if (v18 >= 4)
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
      if (v10 > 1)
      {
        goto LABEL_32;
      }

LABEL_78:
      if (v10)
      {
        a1[v18] = v22;
      }

      return;
    }

    v22 = (v21 >> (8 * v18)) + 1;
    if (v18)
    {
      v26 = v21 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v26;
          if (v10 <= 1)
          {
            goto LABEL_78;
          }
        }

        else
        {
          *a1 = v21;
          if (v10 <= 1)
          {
            goto LABEL_78;
          }
        }

LABEL_32:
        if (v10 == 2)
        {
          *&a1[v18] = v22;
        }

        else
        {
          *&a1[v18] = v22;
        }

        return;
      }

      *a1 = v26;
      a1[2] = BYTE2(v26);
    }

    if (v10 <= 1)
    {
      goto LABEL_78;
    }

    goto LABEL_32;
  }

  v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
  if (!HIWORD(v19))
  {
    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_29;
  }

  v10 = 4;
  if (v14 < a2)
  {
    goto LABEL_30;
  }

LABEL_18:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v18] = 0;
  }

  else if (v10)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v9 >= v13)
  {
    if (v9 >= a2)
    {
      v29 = *(v7 + 56);

      v29(a1, a2 + 1, v8, v30);
    }

    else
    {
      if (v15 <= 3)
      {
        v27 = ~(-1 << (8 * v15));
      }

      else
      {
        v27 = -1;
      }

      if (v15)
      {
        v24 = v27 & (~v9 + a2);
        if (v15 <= 3)
        {
          v25 = v15;
        }

        else
        {
          v25 = 4;
        }

        bzero(a1, v15);
        if (v25 <= 2)
        {
          if (v25 != 1)
          {
            goto LABEL_48;
          }

          goto LABEL_64;
        }

        goto LABEL_83;
      }
    }
  }

  else
  {
    a1 = (&a1[v15 + v16] & ~v16);
    if (v13 >= a2)
    {
      v28 = *(v11 + 56);

      v28(a1, a2 + 1);
    }

    else
    {
      if (v17 <= 3)
      {
        v23 = ~(-1 << (8 * v17));
      }

      else
      {
        v23 = -1;
      }

      if (v17)
      {
        v24 = v23 & (~v13 + a2);
        if (v17 <= 3)
        {
          v25 = v17;
        }

        else
        {
          v25 = 4;
        }

        bzero(a1, v17);
        if (v25 <= 2)
        {
          if (v25 != 1)
          {
LABEL_48:
            *a1 = v24;
            return;
          }

LABEL_64:
          *a1 = v24;
          return;
        }

LABEL_83:
        if (v25 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else
        {
          *a1 = v24;
        }
      }
    }
  }
}

uint64_t partial apply for closure #1 in SimultaneousPreference.mergedValue()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v3, AssociatedTypeWitness);
}

uint64_t ContainerBackgroundLuminance.navigationBar.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ContainerBackgroundLuminance.bottomBar.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ContainerBackgroundLuminance.container.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t ContainerBackgroundLuminance.init<A>(_:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v41[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v12;
  v13 = v12[1];
  (*(v8 + 16))(v11, a1, v9);
  AnyShapeStyle.init<A>(_:)(v11, a2);
  type metadata accessor for AnyGradientBox();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    type metadata accessor for ShapeStyleBox<AnyGradient>(0, &lazy cache variable for type metadata for ShapeStyleBox<AnyGradient>, &type metadata for AnyGradient, &protocol witness table for AnyGradient, type metadata accessor for ShapeStyleBox);
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
LABEL_9:

      goto LABEL_10;
    }

    v15 = *(v16 + 16);
  }

  v17 = *(*v15 + 104);

  v17(&v42, v18);

  v19 = v42;
  outlined consume of Gradient.ProviderTag(v42);
  if (v19 >> 62 != 1)
  {
    goto LABEL_9;
  }

  v41[0] = v14;
  v41[1] = v13;
  (*(*v15 + 112))(&v42, v41);
  v20 = v42;
  v21 = *(v42 + 16);
  if (v21)
  {
    v40 = COERCE_UNSIGNED_INT(Color.Resolved.quantizedLuma.getter(*(v42 + 32), *(v42 + 36), *(v42 + 40)));
    v22 = v20 + 48 * v21;
    v23 = *(v22 - 16);
    v24 = *(v22 - 12);
    v25 = *(v22 - 8);

    v26 = Color.Resolved.quantizedLuma.getter(v23, v24, v25);

    v27 = 0;
    v28 = LODWORD(v26);
    goto LABEL_11;
  }

LABEL_10:
  v28 = 0;
  v40 = 0;
  v27 = 1;
LABEL_11:
  v42 = v14;
  v43 = v13;
  v29 = ShapeStyle.fallbackColor(in:level:)(&v42, 0, a2, a3);
  if (v29)
  {
    v42 = v14;
    v43 = v13;
    v30 = (*(*v29 + 112))(&v42);
    v32 = v31;
    v34 = v33;

    v35 = Color.Resolved.quantizedLuma.getter(v30, v32, v34);
    result = (*(v8 + 8))(a1, a2);
    v37 = 0;
    v38 = v35;
  }

  else
  {
    (*(v8 + 8))(a1, a2);

    if (v27)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 13) = 0;
      *(a4 + 21) = 1;
      return result;
    }

    v38 = 0.0;
    v37 = 0x100000000;
  }

  v39 = 0x100000000;
  if (!v27)
  {
    v39 = 0;
  }

  *a4 = v39 | v40;
  *(a4 + 8) = v39 | v28;
  *(a4 + 20) = BYTE4(v37);
  *(a4 + 16) = v37 | LODWORD(v38);
  *(a4 + 21) = 0;
  return result;
}

void *EnvironmentValues.containerBackgroundLuminance.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028ContainerBackgroundLuminanceI033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt1g5(v2, a1);
}

double key path getter for EnvironmentValues.containerBackgroundLuminance : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028ContainerBackgroundLuminanceI033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt1g5(v3, &v8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5(*a1, &v8);
  }

  v4 = v9;
  v5 = v10;
  v6 = v11;
  result = *&v8;
  *a2 = v8;
  *(a2 + 20) = v5;
  *(a2 + 16) = v4;
  *(a2 + 21) = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.containerBackgroundLuminance : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) | (*(a1 + 20) << 32);
  v6 = *(a1 + 21);
  v7 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2B5(a2, v3, v4, v5 | (v6 << 40));

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE028ContainerBackgroundLuminanceK033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Ttg5(v7, *a2);
  }
}

uint64_t EnvironmentValues.containerBackgroundLuminance.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16) | (*(a1 + 20) << 32);
  v6 = *(a1 + 21);
  v7 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2B5(v2, v3, v4, v5 | (v6 << 40));

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE028ContainerBackgroundLuminanceK033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Ttg5(v7, *v2);
  }
}

void (*EnvironmentValues.containerBackgroundLuminance.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028ContainerBackgroundLuminanceI033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt1g5(v5, (v4 + 5));
  }

  else
  {
    type metadata accessor for ShapeStyleBox<AnyGradient>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028ContainerBackgroundLuminanceV033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt0B5(v5, v13);
    if (v8)
    {
      v9 = *(v8 + 92);
      v10 = *(v8 + 22);
      v11 = *(v8 + 93);
      *(v4 + 5) = *(v8 + 9);
      *(v4 + 14) = v10;
      *(v4 + 60) = v9;
      *(v4 + 61) = v11;
    }

    else
    {
      v4[5] = 0;
      v4[6] = 0;
      *(v4 + 53) = 0;
      *(v4 + 61) = 1;
    }
  }

  return EnvironmentValues.containerBackgroundLuminance.modify;
}

void EnvironmentValues.containerBackgroundLuminance.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56) | (*(*a1 + 60) << 32);
  v5 = *(*a1 + 61);
  swift_retain_n();
  v6 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2B5(*(v1 + 16), v2, v3, v4 | (v5 << 40));

  if (v6)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE028ContainerBackgroundLuminanceK033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ContainerBackgroundLuminanceKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 13) = 0;
  *(a1 + 21) = 1;
}

BOOL specialized static ContainerBackgroundLuminance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  v4 = *(a2 + 20);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 20) & 1) != 0;
}

void type metadata accessor for ShapeStyleBox<AnyGradient>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for ContainerBackgroundLuminance(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ContainerBackgroundLuminance(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 21) = v3;
  return result;
}

uint64_t RangeSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v34 = a5;
  v35 = a4;
  v24 = type metadata accessor for Range();
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v24 - v7;
  v30 = type metadata accessor for RangeSet();
  MEMORY[0x1EEE9AC00](v30);
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v24 - v17;
  v31 = a2;
  RangeSet.init()();
  v27 = v12;
  (*(v12 + 16))(v15, v29, a3);
  dispatch thunk of Sequence.makeIterator()();
  v28 = a3;
  swift_getAssociatedConformanceWitness();
  v32 = v18;
  v33 = AssociatedTypeWitness;
  dispatch thunk of IteratorProtocol.next()();
  v19 = v24;
  v20 = v26;
  v21 = *(v26 + 48);
  if (v21(v11, 1, v24) != 1)
  {
    v22 = *(v20 + 32);
    do
    {
      v22(v8, v11, v19);
      RangeSet.init(_:)();
      RangeSet.formUnion(_:)();
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v21(v11, 1, v19) != 1);
  }

  (*(v27 + 8))(v29, v28);
  return (*(v25 + 8))(v32, v33);
}

uint64_t RangeSet.overlaps(_:)(uint64_t a1, uint64_t a2)
{
  return RangeSet.overlaps(_:)(a1, a2);
}

{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = type metadata accessor for RangeSet.Ranges();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  RangeSet.ranges.getter();
  v12 = v3;
  v13 = v4;
  v14 = a1;
  swift_getWitnessTable();
  v9 = Sequence.contains(where:)();
  (*(v6 + 8))(v8, v5);
  return v9 & 1;
}

uint64_t partial apply for closure #1 in RangeSet.overlaps(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(v2 + 32);
  v5 = type metadata accessor for Range();
  return a2(v4, v5) & 1;
}

uint64_t RangeSet.insert(contentsOf:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return RangeSet.formUnion(_:)();
}

uint64_t RangeSet.lowerBound.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for RangeSet.Ranges();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Range();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  RangeSet.ranges.getter();
  swift_getWitnessTable();
  Collection.first.getter();
  (*(v4 + 8))(v6, v3);
  v12 = *(v7 - 8);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v13 = *(v2 - 8);
    v14 = 1;
    v15 = v19;
  }

  else
  {
    v13 = *(v2 - 8);
    v16 = v19;
    (*(v13 + 16))(v19, v11, v2);
    (*(v12 + 8))(v11, v7);
    v14 = 0;
    v15 = v16;
  }

  return (*(v13 + 56))(v15, v14, 1, v2);
}

uint64_t RangeSet.upperBound.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for RangeSet.Ranges();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Range();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  RangeSet.ranges.getter();
  swift_getWitnessTable();
  BidirectionalCollection.last.getter();
  (*(v4 + 8))(v6, v3);
  v12 = *(v7 - 8);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v13 = *(v2 - 8);
    v14 = 1;
    v15 = v19;
  }

  else
  {
    v13 = *(v2 - 8);
    v16 = v19;
    (*(v13 + 16))(v19, &v11[*(v7 + 36)], v2);
    (*(v12 + 8))(v11, v7);
    v14 = 0;
    v15 = v16;
  }

  return (*(v13 + 56))(v15, v14, 1, v2);
}

uint64_t RangeSet<>.insert(_:)(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  v38 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v30 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v30 - v9;
  swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v11);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Range();
  v33 = *(v15 - 8);
  v34 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v30 - v16;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of Strideable.advanced(by:)();
  v40[1](v10, AssociatedTypeWitness);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v18 = v31;
    v19 = v35;
    v20 = v3;
    (*(v31 + 16))(v35, a1, v3);
    v21 = v38;
    v22 = *(v18 + 32);
    v22(&v19[*(v38 + 48)], v14, v3);
    v23 = v22;
    v40 = v22;
    v24 = v36;
    v25 = v37;
    (*(v37 + 16))(v36, v19, v21);
    v26 = *(v21 + 48);
    v27 = v32;
    v23(v32, v24, v20);
    v28 = *(v18 + 8);
    v28(&v24[v26], v20);
    (*(v25 + 32))(v24, v19, v21);
    v29 = v34;
    (v40)(&v27[*(v34 + 36)], &v24[*(v21 + 48)], v20);
    v28(v24, v20);
    RangeSet.insert(contentsOf:)();
    return (*(v33 + 8))(v27, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RangeSet<>.reduce<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v52 = a6;
  v45 = a4;
  v47 = a3;
  v50 = a1;
  v42 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v11;
  v48 = type metadata accessor for Range();
  v44 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v40 - v12;
  v14 = type metadata accessor for RangeSet.Ranges();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for IndexingIterator();
  v40 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  v23 = *(v42 + 16);
  v24 = v50;
  v50 = a5;
  v23(a7, v24, a5, v20);
  RangeSet.ranges.getter();
  (*(v15 + 16))(v22, v17, v14);
  v41 = v19;
  v25 = *(v19 + 36);
  dispatch thunk of Collection.startIndex.getter();
  (*(v15 + 8))(v17, v14);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v22[v25] != v56[0])
  {
    v26 = v44++;
    v45 = (v26 + 2);
    v27 = (v42 + 8);
    v42 += 32;
    v43 = v27;
    v46 = a2;
    v53 = v25;
    do
    {
      v28 = dispatch thunk of Collection.subscript.read();
      v29 = v13;
      v30 = WitnessTable;
      v31 = v14;
      v32 = v13;
      v33 = v48;
      (*v45)(v29);
      v28(v56, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v54 = v51;
      v55 = v52;
      swift_getWitnessTable();
      v34 = v49;
      v35 = v50;
      Sequence.reduce<A>(_:_:)();
      v36 = v32;
      v37 = v33;
      v13 = v32;
      v14 = v31;
      WitnessTable = v30;
      v38 = v53;
      (*v44)(v36, v37);
      (*v43)(a7, v35);
      (*v42)(a7, v34, v35);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v22[v38] != v56[0]);
  }

  return (*(v40 + 8))(v22, v41);
}

uint64_t RangeSet<>.indexSequence.getter(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1, a1, v3);
  return RangeSet<>.IndexSequence.init(_:)(v5);
}

uint64_t RangeSet<>.IndexSequence.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RangeSet();
  RangeSet.ranges.getter();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t RangeSet<>.IndexSequence.Iterator.init(ranges:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  *a2 = 0;
  v4 = type metadata accessor for RangeSet<>.IndexSequence.Iterator();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  swift_checkMetadataState();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v5 = *(v4 + 48);
  v6 = type metadata accessor for RangeSet.Ranges();
  return (*(*(v6 - 8) + 32))(&a2[v5], a1, v6);
}

uint64_t RangeSet<>.IndexSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v55 - v9;
  v60 = *(swift_getAssociatedConformanceWitness() + 8);
  v69 = *(v60 + 16);
  v68 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v68);
  v67 = v55 - v10;
  v71 = v4;
  v62 = type metadata accessor for Range();
  v72 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v55 - v13;
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v55 - v19;
  v21 = *v2;
  v63 = a1;
  v22 = *(a1 + 48);
  v23 = type metadata accessor for RangeSet.Ranges();
  if (v21 < RangeSet.Ranges.count.getter())
  {
    v55[2] = v22;
    v59 = v21;
    v55[3] = v23;
    RangeSet.Ranges.subscript.getter();
    (*(v73 + 16))(v17, v14, v5);
    v24 = *(v72 + 8);
    v72 += 8;
    v56 = v24;
    v25 = v62;
    v24(v14, v62);
    v26 = v63;
    v27 = *(v63 + 44);
    v58 = v20;
    dispatch thunk of Strideable.advanced(by:)();
    (*(v73 + 8))(v17, v5);
    v55[1] = swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v28 = v70;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    v29 = v65;
    v60 = *(v65 + 8);
    v57 = v65 + 8;
    (v60)(v28, AssociatedTypeWitness);
    v30 = v61;
    RangeSet.Ranges.subscript.getter();
    v31 = *(v26 + 32);
    v75 = v71;
    v76 = v31;
    swift_getWitnessTable();
    v63 = Collection.count.getter();
    v56(v30, v25);
    v32 = *(v29 + 16);
    v72 = v27;
    v33 = v64;
    v32(v64, v2 + v27, AssociatedTypeWitness);
    v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v55[0] = v2;
    if (v34)
    {
      v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v36 = v66;
      if (v35 < 64)
      {
        v37 = dispatch thunk of BinaryInteger._lowWord.getter();
        (v60)(v33, AssociatedTypeWitness);
LABEL_5:
        v38 = v70;
        v39 = v58;
        if (v37 < v63)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v74 = v63;
      lazy protocol witness table accessor for type Int and conformance Int();
      v38 = v70;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      swift_getAssociatedConformanceWitness();
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      v47 = v60;
      (v60)(v38, AssociatedTypeWitness);
      v47(v33, AssociatedTypeWitness);
    }

    else
    {
      v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v36 = v66;
      if ((v43 & 1) == 0)
      {
        v39 = v58;
        if (v44 >= 64)
        {
          v29 = v65;
          if (v63 < 1)
          {
            (v60)(v33, AssociatedTypeWitness);
            v38 = v70;
          }

          else
          {
            v74 = v63;
            lazy protocol witness table accessor for type Int and conformance Int();
            v38 = v70;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            swift_getAssociatedConformanceWitness();
            v52 = dispatch thunk of static Comparable.< infix(_:_:)();
            v53 = v60;
            (v60)(v38, AssociatedTypeWitness);
            v53(v33, AssociatedTypeWitness);
            if (v52)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v48 = dispatch thunk of BinaryInteger._lowWord.getter();
          (v60)(v33, AssociatedTypeWitness);
          v29 = v65;
          v38 = v70;
          if (v48 < v63)
          {
            goto LABEL_27;
          }
        }

LABEL_26:
        v54 = v55[0];
        *v55[0] = v59 + 1;
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        (*(v29 + 40))(v54 + v72, v38, AssociatedTypeWitness);
        goto LABEL_27;
      }

      if (v44 <= 64)
      {
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v49 = v70;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        swift_getAssociatedConformanceWitness();
        v50 = dispatch thunk of static Comparable.< infix(_:_:)();
        v51 = v60;
        (v60)(v49, AssociatedTypeWitness);
        v29 = v65;
        if (v50)
        {
          v51(v33, AssociatedTypeWitness);
          v39 = v58;
LABEL_27:
          (*(v73 + 32))(v36, v39, v5);
          return (*(v73 + 56))(v36, 0, 1, v5);
        }

        v37 = dispatch thunk of BinaryInteger._lowWord.getter();
        v51(v33, AssociatedTypeWitness);
        goto LABEL_5;
      }

      v74 = v63;
      lazy protocol witness table accessor for type Int and conformance Int();
      v38 = v70;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      swift_getAssociatedConformanceWitness();
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      v46 = v60;
      (v60)(v38, AssociatedTypeWitness);
      v46(v33, AssociatedTypeWitness);
      v29 = v65;
    }

    v39 = v58;
    if (v45)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v40 = *(v73 + 56);
  v41 = v66;

  return v40(v41, 1, 1, v5);
}

uint64_t RangeSet<>.IndexSequence.makeIterator()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for RangeSet.Ranges();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, v1, v4);
  return RangeSet<>.IndexSequence.Iterator.init(ranges:)(v6, a1);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance RangeSet<A><>.IndexSequence@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  RangeSet<>.IndexSequence.makeIterator()(a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t type metadata completion function for RangeSet<>.IndexSequence()
{
  result = type metadata accessor for RangeSet.Ranges();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangeSet.Ranges();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t destroy for RangeSet<>.IndexSequence(uint64_t a1)
{
  v2 = type metadata accessor for RangeSet.Ranges();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangeSet.Ranges();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t assignWithCopy for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangeSet.Ranges();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t initializeWithTake for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangeSet.Ranges();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t assignWithTake for RangeSet<>.IndexSequence(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RangeSet.Ranges();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t type metadata completion function for RangeSet<>.IndexSequence.Iterator()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RangeSet.Ranges();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 44);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(&v3[v5], &a2[v5], AssociatedTypeWitness);
    v9 = *(a3 + 48);
    v10 = type metadata accessor for RangeSet.Ranges();
    (*(*(v10 - 8) + 16))(&v3[v9], &a2[v9], v10);
  }

  return v3;
}

uint64_t destroy for RangeSet<>.IndexSequence.Iterator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1 + v4, AssociatedTypeWitness);
  v6 = *(a2 + 48);
  v7 = type metadata accessor for RangeSet.Ranges();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *initializeWithCopy for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&a1[v6], &a2[v6], AssociatedTypeWitness);
  v8 = *(a3 + 48);
  v9 = type metadata accessor for RangeSet.Ranges();
  (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  return a1;
}

char *assignWithCopy for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(&a1[v6], &a2[v6], AssociatedTypeWitness);
  v8 = *(a3 + 48);
  v9 = type metadata accessor for RangeSet.Ranges();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  return a1;
}

char *initializeWithTake for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&a1[v6], &a2[v6], AssociatedTypeWitness);
  v8 = *(a3 + 48);
  v9 = type metadata accessor for RangeSet.Ranges();
  (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  return a1;
}

char *assignWithTake for RangeSet<>.IndexSequence.Iterator(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 40))(&a1[v6], &a2[v6], AssociatedTypeWitness);
  v8 = *(a3 + 48);
  v9 = type metadata accessor for RangeSet.Ranges();
  (*(*(v9 - 8) + 40))(&a1[v8], &a2[v8], v9);
  return a1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV04Faili13HardwareCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5()
{
  swift_beginAccess();
  v0 = static Solarium.FailSolariumHardwareCheckUserDefault.cachedValue;
  if (static Solarium.FailSolariumHardwareCheckUserDefault.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002BLL, 0x800000018DD77170);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002BLL, 0x800000018DD77170);
      v0 = [v5 BOOLForKey_];

      static Solarium.FailSolariumHardwareCheckUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static Solarium.FailSolariumHardwareCheckUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei13LinkedOnCheckcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5()
{
  swift_beginAccess();
  v0 = static Solarium.IgnoreSolariumLinkedOnCheckUserDefault.cachedValue;
  if (static Solarium.IgnoreSolariumLinkedOnCheckUserDefault.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002DLL, 0x800000018DD771A0);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002DLL, 0x800000018DD771A0);
      v0 = [v5 BOOLForKey_];

      static Solarium.IgnoreSolariumLinkedOnCheckUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static Solarium.IgnoreSolariumLinkedOnCheckUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA8SolariumV06Ignorei6OptOutcD033_DB20D13822F3237D192A89B71B0DBAEALLV_Ttg5()
{
  swift_beginAccess();
  v0 = static Solarium.IgnoreSolariumOptOutUserDefault.cachedValue;
  if (static Solarium.IgnoreSolariumOptOutUserDefault.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD77110);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000026, 0x800000018DD77110);
      v0 = [v5 BOOLForKey_];

      static Solarium.IgnoreSolariumOptOutUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static Solarium.IgnoreSolariumOptOutUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA028UnifiedSystemBackgroundColorcD033_C7D4771CFE453D905E7BCD5A907D32EBLLV_Ttg5()
{
  swift_beginAccess();
  v0 = static UnifiedSystemBackgroundColorUserDefault.cachedValue;
  if (static UnifiedSystemBackgroundColorUserDefault.cachedValue == 2)
  {
    if (one-time initialization token for uiKit != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.uiKit;
    if (static NSUserDefaults.uiKit)
    {
      v2 = static NSUserDefaults.uiKit;
      v3 = static NSUserDefaults.uiKit;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD000000000000024, 0x800000018DD770E0);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD000000000000024, 0x800000018DD770E0);
      v0 = [v7 BOOLForKey_];

      static UnifiedSystemBackgroundColorUserDefault.cachedValue = v0;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static UnifiedSystemBackgroundColorUserDefault.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5()
{
  swift_beginAccess();
  v0 = static ScrollEdgeEffectTag.Feature.cachedValue;
  if (static ScrollEdgeEffectTag.Feature.cachedValue == 2)
  {
    if (one-time initialization token for swiftUI != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.swiftUI;
    if (static NSUserDefaults.swiftUI)
    {
      v2 = static NSUserDefaults.swiftUI;
      v3 = static NSUserDefaults.swiftUI;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76FF0);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76FF0);
      v0 = [v7 BOOLForKey_];

      static ScrollEdgeEffectTag.Feature.cachedValue = v0;
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static ScrollEdgeEffectTag.Feature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19UnaryGlassContainer33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_Ttg5()
{
  swift_beginAccess();
  v0 = static UnaryGlassContainer.cachedValue;
  if (static UnaryGlassContainer.cachedValue == 2)
  {
    if (one-time initialization token for swiftUI != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.swiftUI;
    if (static NSUserDefaults.swiftUI)
    {
      v2 = static NSUserDefaults.swiftUI;
      v3 = static NSUserDefaults.swiftUI;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD77020);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD00000000000001ALL, 0x800000018DD77020);
      v0 = [v7 BOOLForKey_];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
      _sypSgWOhTm_1(v11, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      if (one-time initialization token for defaultFeatureValue != -1)
      {
        swift_once();
      }

      v0 = static UnaryGlassContainer.defaultFeatureValue;
    }

    static UnaryGlassContainer.cachedValue = v0;
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA34EnableLazyLayoutReuseLoggingAlwaysV_Ttg5()
{
  swift_beginAccess();
  v0 = static EnableLazyLayoutReuseLoggingAlways.cachedValue;
  if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
      v0 = [v5 BOOLForKey_];

      static EnableLazyLayoutReuseLoggingAlways.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      _sypSgWOhTm_1(v8, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t ScrollEdgeEffectTag.ID.base.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

void ScrollEdgeEffectTag.ID.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x193AC11A0](*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int ScrollEdgeEffectTag.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScrollEdgeEffectTag.ID()
{
  Hasher.init(_seed:)();
  ScrollEdgeEffectTag.ID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ScrollEdgeEffectTag.Item.id.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

void ScrollEdgeEffectTag.Item.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

double static ScrollEdgeEffectTagReceiverModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(void)@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates();
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v36 - v12;
  v13 = a1[3];
  v71 = a1[2];
  v72 = v13;
  v73 = a1[4];
  v74 = *(a1 + 20);
  v14 = a1[1];
  v69 = *a1;
  v70 = v14;
  if (_s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA19ScrollEdgeEffectTagV0F0V_Ttg5())
  {
    v15 = a1[3];
    v57 = a1[2];
    v58 = v15;
    v59 = a1[4];
    v60 = *(a1 + 20);
    v16 = a1[1];
    v55 = *a1;
    v56 = v16;
    outlined init with copy of _ViewInputs(&v69, &v63);
    _s7SwiftUI26MultiPlatformItemsStrategyPAAE10makeInputsyyAA05_ViewH0VzFZAA016ScrollEdgeEffectdeF0V_Tt0g5Tm(&v55);
    v61[2] = v57;
    v61[3] = v58;
    v61[4] = v59;
    v62 = v60;
    v61[0] = v55;
    v61[1] = v56;
    v51 = v57;
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v49 = v55;
    v50 = v56;
    v17 = outlined init with copy of _ViewInputs(v61, &v63);
    (a2)(v48, v17, &v49);
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v68 = v54;
    v63 = v49;
    v64 = v50;
    outlined destroy of _ViewInputs(&v63);
    v18 = v48[0];
    *&v19 = v48[1];
    v42 = v19;
    v20 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA13PlatformItemsV0I033_391C8788DFD73AA8AB21B496A57C73FFLLV_TtB5(v48[0]);
    if ((v20 & 0x100000000) != 0 || (v21 = v20, *MEMORY[0x1E698D3F8] == v20))
    {
      v51 = v57;
      v52 = v58;
      v53 = v59;
      v54 = v60;
      v49 = v55;
      v50 = v56;
      outlined destroy of _ViewInputs(&v49);
    }

    else
    {
      v41 = v18;
      if (*(*(a3 - 8) + 64))
      {
        closure #1 in static ScrollEdgeEffectTagReceiverModifier._makeView(modifier:inputs:body:)(1, a3);
      }

      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v26 = v70;
      v39 = HIDWORD(v70);
      v40 = OffsetAttribute2;
      swift_beginAccess();
      v27 = *(v26 + 16);
      v28 = v73;
      v37 = HIDWORD(v72);
      v38 = v27;
      v29 = DWORD2(v73);
      LODWORD(v26) = HIDWORD(v73);
      default argument 8 of ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(&v49);
      v45 = v49;
      v46 = DWORD2(v49);
      v47 = BYTE12(v49);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 56))(v10, 1, 1, AssociatedTypeWitness);
      v31 = v43;
      v32 = ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)(v21, v40, v39, v38, v29, v28, v37, v26, v43, &v45, v10, MEMORY[0x1E69E7CC0], 0);
      MEMORY[0x1EEE9AC00](v32);
      v35[2] = v11;
      v35[3] = swift_getWitnessTable();
      _sypSgMaTm_0(0, &lazy cache variable for type metadata for Attribute<()>, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v31, partial apply for closure #1 in Attribute.init<A>(_:), v35, v11, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v34);
      (*(v44 + 8))(v31, v11);
      AGGraphSetFlags();
      v51 = v57;
      v52 = v58;
      v53 = v59;
      v54 = v60;
      v49 = v55;
      v50 = v56;
      outlined destroy of _ViewInputs(&v49);
      v18 = v41;
    }

    *a4 = v18;
    result = *&v42;
    a4[1] = v42;
  }

  else
  {
    v22 = a1[3];
    v65 = a1[2];
    v66 = v22;
    v67 = a1[4];
    v68 = *(a1 + 20);
    v23 = a1[1];
    v63 = *a1;
    v64 = v23;
    a2();
  }

  return result;
}

uint64_t closure #1 in static ScrollEdgeEffectTagReceiverModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ScrollEdgeEffectTagReceiverModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

char *ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.init(platformItems:receiver:transaction:environment:size:position:transform:safeAreaInsets:cycleDetector:oldReceiverValue:oldItems:seed:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v14 = *(a10 + 8);
  v15 = *(a10 + 12);
  *a9 = a1;
  *(a9 + 4) = a2;
  *(a9 + 8) = a3;
  *(a9 + 12) = a4;
  *(a9 + 16) = a5;
  *(a9 + 20) = a6;
  *(a9 + 24) = a7;
  *(a9 + 28) = a8;
  *(a9 + 32) = *a10;
  *(a9 + 40) = v14;
  *(a9 + 44) = v15;
  v16 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates();
  v17 = v16[17];
  swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(a9 + v17, a11, v18);
  *(a9 + v16[18]) = a12;
  *(a9 + v16[19]) = a13;
  v19 = v16[20];
  type metadata accessor for ScrollEdgeEffectTagReceiverModifier.Updater();
  swift_allocObject();
  result = ScrollEdgeEffectTagReceiverModifier.Updater.init()();
  *(a9 + v19) = result;
  return result;
}

uint64_t ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(void *a1)
{
  v2 = a1;
  v183[1] = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  v4 = a1[3];
  v168 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates();
  v155 = *(v168 - 1);
  MEMORY[0x1EEE9AC00](v168);
  v171 = &v140 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v142 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v160 = &v140 - v8;
  v159 = v7;
  v163 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v143 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v141 = &v140 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v157 = &v140 - v14;
  MEMORY[0x1EEE9AC00](v15);
  *&v174 = &v140 - v16;
  v17 = type metadata accessor for ObservationTracking._AccessList();
  *&v175 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v140 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v147 = &v140 - v23;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_0(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v151 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v145 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v148 = &v140 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v156 = (&v140 - v29);
  v169 = AssociatedTypeWitness;
  v172 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v30);
  v140 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v150 = &v140 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v162 = &v140 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v167 = &v140 - v37;
  v38 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v154 = &v140 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v140 - v42;
  Value = AGGraphGetValue();
  v45 = *Value;
  LODWORD(AssociatedTypeWitness) = *(Value + 8);

  *&v180 = v45;
  DWORD2(v180) = AssociatedTypeWitness;
  v181 = v46;
  v166 = v2;
  v149 = ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.tagItems(platformItems:)(&v180, v2);

  v173 = v1;
  v47 = AGGraphGetValue();
  v164 = v38;
  v48 = *(v38 + 16);
  v153 = v38 + 16;
  v152 = v48;
  v48(v43, v47, v3);
  v170 = v3;
  v177 = v3;
  v178 = v4;
  v161 = v4;
  v165 = v43;
  v179 = v43;
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v49 = static ObservationCenter._current;
  swift_beginAccess();
  v50 = pthread_getspecific(v49[2]);
  if (!v50)
  {
    v51 = swift_slowAlloc();
    pthread_setspecific(v49[2], v51);
    v182 = type metadata accessor for ObservationCenter();
    v45 = v49[3];
    *&v180 = v45;
    outlined init with take of Any(&v180, v51);

    v50 = v51;
  }

  outlined init with copy of Any(v50, &v180);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v52 = v183[0];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v54 = v175;
  v55 = v148;
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_49:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    v52[3] = v2;
    goto LABEL_9;
  }

  v45 = CurrentAttribute;
  swift_beginAccess();
  v144 = v52[3];
  v52[3] = MEMORY[0x1E69E7CC0];
  v56 = (*(v54 + 56))(v55, 1, 1, v17);
  MEMORY[0x1EEE9AC00](v56);
  v57 = v169;
  *(&v140 - 4) = v169;
  *(&v140 - 3) = partial apply for closure #1 in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue();
  *(&v140 - 2) = &v176;
  v58 = type metadata accessor for Error();
  v59 = v150;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v55, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v140 - 6), v151, v58, v57, MEMORY[0x1E69E7288], v183);
  v60 = *(v172 + 32);
  v151 = (v172 + 32);
  v150 = v60;
  (v60)(v162, v59, v57);
  v61 = v156;
  outlined init with take of ObservationTracking._AccessList?(v55, v156);
  v62 = v145;
  outlined init with copy of ObservationTracking._AccessList?(v61, v145);
  v4 = v57;
  if ((*(v54 + 48))(v62, 1, v17) == 1)
  {
    _sypSgWOhTm_1(v61, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], _s11Observation0A8TrackingV11_AccessListVSgMaTm_0);
    v63 = v62;
    v64 = v160;
    v65 = v174;
    goto LABEL_12;
  }

  v43 = *(v54 + 32);
  v66 = v147;
  (v43)(v147, v62, v17);
  (*(v54 + 16))(v146, v66, v17);
  v2 = v52[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52[3] = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_9:
  v69 = v2[2];
  v68 = v2[3];
  if (v69 >= v68 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1, v2);
  }

  v2[2] = v69 + 1;
  v70 = v175;
  (v43)(v2 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v175 + 72) * v69, v146, v17);
  v52[3] = v2;
  (*(v70 + 8))(v147, v17);
  v64 = v160;
  v65 = v174;
  v63 = v156;
LABEL_12:
  _sypSgWOhTm_1(v63, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], _s11Observation0A8TrackingV11_AccessListVSgMaTm_0);
  (v150)(v167, v162, v4);
  v71 = v52[3];
  v72 = *(v71 + 16);
  if (v72)
  {
    v73 = *(v175 + 16);
    v74 = v71 + ((*(v175 + 80) + 32) & ~*(v175 + 80));
    v75 = *(v175 + 72);
    v76 = (v175 + 8);
    *&v175 = v52[3];

    do
    {
      v73(v19, v74, v17);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v45, v19);
      (*v76)(v19, v17);
      v74 += v75;
      --v72;
    }

    while (v72);

    v4 = v169;
    v64 = v160;
    v65 = v174;
  }

  v52[3] = v144;

  v77 = v172;
  (*(v172 + 16))(v65, v167, v4);
  (*(v77 + 56))(v65, 0, 1, v4);
  v78 = v163;
  v80 = v163 + 16;
  v79 = *(v163 + 16);
  v160 = *(v166 + 17);
  v81 = v4;
  v82 = v157;
  v83 = v159;
  v79(v157, &v160[v173], v159);
  v84 = *(TupleTypeMetadata2 + 48);
  v79(v64, v65, v83);
  v162 = v84;
  v79(&v84[v64], v82, v83);
  v85 = v65;
  v86 = *(v77 + 48);
  v87 = (v86)(v64, 1, v81);
  *&v175 = v80;
  v156 = v86;
  v148 = (v77 + 48);
  if (v87 == 1)
  {
    v151 = v79;
    v88 = *(v78 + 8);
    v88(v82, v83);
    v88(v85, v83);
    if ((v86)(&v162[v64], 1, v81) == 1)
    {
      v88(v64, v83);
      v89 = 1;
      v90 = v173;
      v79 = v151;
      v91 = v88;
      goto LABEL_24;
    }

    v90 = v173;
    v79 = v151;
    v91 = v88;
    goto LABEL_22;
  }

  v92 = v141;
  v79(v141, v64, v83);
  v93 = v162;
  v94 = v81;
  if ((v86)(&v162[v64], 1, v81) == 1)
  {
    v91 = *(v163 + 8);
    v91(v157, v83);
    v91(v174, v83);
    (*(v172 + 8))(v92, v94);
    v90 = v173;
LABEL_22:
    (*(v142 + 8))(v64, TupleTypeMetadata2);
    v89 = 0;
    goto LABEL_24;
  }

  v95 = v79;
  v96 = v140;
  (v150)(v140, &v93[v64], v81);
  swift_getAssociatedConformanceWitness();
  v89 = dispatch thunk of static Equatable.== infix(_:_:)();
  v97 = *(v172 + 8);
  v98 = v96;
  v79 = v95;
  v97(v98, v81);
  v91 = *(v163 + 8);
  v91(v157, v83);
  v91(v174, v83);
  v97(v92, v94);
  v90 = v173;
  v91(v64, v83);
LABEL_24:
  v99 = v154;
  v100 = v170;
  v152(v154, v165, v170);
  v101 = *(v164 + 32);
  v102 = v171;
  v101(v171, v99, v100);
  v103 = v168;
  v104 = MEMORY[0x1E69E7CC0];
  *&v102[v168[9]] = MEMORY[0x1E69E7CC0];
  *&v102[v103[10]] = v104;
  *&v102[v103[11]] = v104;
  *&v102[v103[12]] = 0;
  v105 = specialized UpdateCycleDetector.dispatch(label:isDebug:)(1, v90 + 32);
  if ((v105 & 1) == 0)
  {
    v107 = v149;
    if (v89)
    {
      goto LABEL_47;
    }

    goto LABEL_28;
  }

  v106 = v102;
  v107 = v149;
  ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.resolveUpdates(_:newItems:)(v106, v149, v166);
  v90 = v173;
  if ((v89 & 1) == 0)
  {
LABEL_28:
    v108 = v143;
    v109 = v79;
    v110 = v159;
    v109(v143, &v160[v90], v159);
    v111 = (v156)(v108, 1, v169);
    v91(v108, v110);
    if (v111 == 1)
    {
      if ((v105 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v112 = v154;
      v113 = v170;
      v152(v154, v165, v170);
      v114 = v171;
      v115 = v168;
      (*(v155 + 8))(v171, v168);
      v101(v114, v112, v113);
      v116 = MEMORY[0x1E69E7CC0];
      *&v114[v115[9]] = MEMORY[0x1E69E7CC0];
      *&v114[v115[10]] = v116;
      *&v114[v115[11]] = v116;
      *&v114[v115[12]] = 0;
      v117 = *(v90 + *(v166 + 18));
      v118 = *(v117 + 16);
      if (v118)
      {
        v119 = v168[9];
        v163 = v168[10];
        v120 = *&v171[v163];
        v121 = *&v171[v119];
        v122 = (v117 + 48);
        do
        {
          v123 = *(v122 - 2);
          v124 = *(v122 - 8);
          v125 = *v122;
          v174 = v122[1];
          v175 = v125;
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v120 + 2) + 1, 1, v120);
          }

          v127 = *(v120 + 2);
          v126 = *(v120 + 3);
          if (v127 >= v126 >> 1)
          {
            v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v127 + 1, 1, v120);
          }

          *(v120 + 2) = v127 + 1;
          *&v120[8 * v127 + 32] = v123;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 2) + 1, 1, v121);
          }

          v129 = *(v121 + 2);
          v128 = *(v121 + 3);
          if (v129 >= v128 >> 1)
          {
            v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v129 + 1, 1, v121);
          }

          *(v121 + 2) = v129 + 1;
          v130 = &v121[48 * v129];
          *(v130 + 4) = v123;
          v130[40] = v124;
          v131 = v174;
          *(v130 + 3) = v175;
          *(v130 + 4) = v131;
          v122 += 3;
          --v118;
        }

        while (v118);
        v132 = v171;
        *&v171[v119] = v121;
        *&v132[v163] = v120;
        v90 = v173;
        v107 = v149;
      }
    }
  }

  AGGraphClearUpdate();
  closure #2 in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(v90, v183);
  AGGraphSetUpdate();
  v133 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v183[0]);
  if (v133)
  {
    v134 = v133[9];
  }

  else
  {
    v134 = 0;
  }

  v135 = v171;
  v136 = v168[12];

  *(v135 + v136) = v134;
  v90 = v173;
  ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.enqueueUpdates(_:)(v135, v166);

LABEL_47:
  (*(v155 + 8))(v171, v168);
  v137 = v167;
  v138 = v170;
  $defer #2 <A>() in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(v90, v167);
  (*(v172 + 8))(v137, v169);
  (*(v164 + 8))(v165, v138);
  $defer #1 <A>() in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(v90, v107);
}

uint64_t ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.tagItems(platformItems:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 76);
  v34 = *(v2 + v4) + 1;
  *(v2 + v4) = v34;
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v6 = AGCreateWeakAttribute();
    v7 = AGCreateWeakAttribute();
    v8 = AGCreateWeakAttribute();
    v9 = AGCreateWeakAttribute();
    v10 = AGCreateWeakAttribute();
    v11 = AGCreateWeakAttribute();
    v12 = *(v3 + 16);
    if (v12)
    {
      v30 = HIDWORD(v7);
      v31 = HIDWORD(v6);
      v32 = v10;
      v33 = v9;
      v28 = HIDWORD(v9);
      v29 = HIDWORD(v8);
      v27 = HIDWORD(v10);
      v13 = v7;
      v14 = v3 + 32;
      v15 = v11;
      v16 = HIDWORD(v11);

      v17 = MEMORY[0x1E69E7CC0];
      v25 = v13;
      v26 = v6;
      v18 = v8;
      v24 = v8;
      do
      {
        outlined init with copy of PlatformItem(v14, v54);
        outlined init with copy of PlatformItem(v54, v49);
        v37 = __PAIR64__(v31, v6);
        v38 = v13;
        v39 = v30;
        v40 = v18;
        v41 = v29;
        v42 = v33;
        v43 = v28;
        v44 = v32;
        v45 = v27;
        v46 = v15;
        v47 = v16;
        v48 = v34;
        ScrollEdgeEffectTag.Item.init(platformItem:proxy:)(v49, &v37, &v50);
        outlined destroy of PlatformItem(v54);
        v19 = v50;
        if (v50)
        {
          v20 = v51;
          v35 = v53;
          v36 = v52;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
          }

          v22 = *(v17 + 2);
          v21 = *(v17 + 3);
          if (v22 >= v21 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v17);
          }

          *(v17 + 2) = v22 + 1;
          v23 = &v17[48 * v22];
          *(v23 + 4) = v19;
          v23[40] = v20 & 1;
          *(v23 + 3) = v36;
          *(v23 + 4) = v35;
          v13 = v25;
          LODWORD(v6) = v26;
          v18 = v24;
        }

        else
        {
        }

        v14 += 632;
        --v12;
      }

      while (v12);
    }

    else
    {

      v17 = MEMORY[0x1E69E7CC0];
    }

    return v17;
  }

  return result;
}

uint64_t $defer #1 <A>() in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(uint64_t a1, uint64_t a2)
{
  *(a1 + *(type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates() + 72)) = a2;
}

uint64_t $defer #2 <A>() in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates() + 68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(a1 + v4, v6);
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(a1 + v4, a2, AssociatedTypeWitness);
  v7 = *(v9 + 56);

  return v7(a1 + v4, 0, 1, AssociatedTypeWitness);
}

uint64_t ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.resolveUpdates(_:newItems:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(a3 + 72));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v52 = v6;
  if (v7)
  {
    v58 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v58;
    v9 = (v6 + 32);
    do
    {
      v10 = *v9;
      v12 = *(v58 + 16);
      v11 = *(v58 + 24);

      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      *(v58 + 16) = v12 + 1;
      *(v58 + 8 * v12 + 32) = v10;
      v9 += 6;
      --v7;
    }

    while (v7);
  }

  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v50 = v13;
  if (v13)
  {
    v59 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v15 = v59;
    v16 = (a2 + 32);
    do
    {
      v17 = *v16;
      v18 = *(v59 + 16);
      v19 = *(v59 + 24);

      if (v18 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v18 + 1, 1);
      }

      *(v59 + 16) = v18 + 1;
      *(v59 + 8 * v18 + 32) = v17;
      v16 += 6;
      --v13;
    }

    while (v13);
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v60 = v14;
  specialized CollectionChanges.formChanges<A, B>(from:to:)(v8, v15);

  v51 = *(v60 + 16);
  if (!v51)
  {
LABEL_59:
  }

  v21 = 0;
  v48 = a2 + 48;
  v49 = a1;
  while (v21 < *(v60 + 16))
  {
    v23 = v60 + 32 + 40 * v21;
    v24 = *v23;
    v25 = *(v23 + 8);
    if (*(v23 + 32))
    {
      if (*(v23 + 32) == 1)
      {
        if (v25 != v24)
        {
          if (v25 < v24)
          {
            goto LABEL_66;
          }

          result = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates();
          v26 = v25 - v24;
          if (v25 <= v24)
          {
            goto LABEL_70;
          }

          if (v24 < 0)
          {
            goto LABEL_71;
          }

          if (v24 >= v50)
          {
            goto LABEL_73;
          }

          if (v25 - 1 >= v50)
          {
            goto LABEL_75;
          }

          v47 = *(result + 36);
          v27 = *(a1 + v47);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
          }

          v28 = (v48 + 48 * v24);
          do
          {
            v29 = *(v28 - 2);
            v30 = *(v28 - 8);
            v53 = v28[1];
            v55 = *v28;
            v31 = *(v27 + 2);
            v32 = *(v27 + 3);

            if (v31 >= v32 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 1, 1, v27);
              v27 = result;
            }

            *(v27 + 2) = v31 + 1;
            v33 = &v27[48 * v31];
            *(v33 + 4) = v29;
            v33[40] = v30;
            *(v33 + 3) = v55;
            *(v33 + 4) = v53;
            v28 += 3;
            --v26;
          }

          while (v26);
          goto LABEL_15;
        }
      }

      else
      {
        v38 = *(v23 + 16);
        v39 = *(v23 + 24);
        if (v39 != v38)
        {
          if (v39 < v38)
          {
            goto LABEL_67;
          }

          result = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates();
          v40 = v39 - v38;
          if (v39 <= v38)
          {
            goto LABEL_68;
          }

          if (v38 < 0)
          {
            goto LABEL_72;
          }

          if (v38 >= v50)
          {
            goto LABEL_74;
          }

          if (v39 - 1 >= v50)
          {
            goto LABEL_76;
          }

          v27 = *(a1 + *(result + 44));
          v47 = *(result + 44);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
          }

          v41 = (v48 + 48 * v38);
          do
          {
            v42 = *(v41 - 2);
            v43 = *(v41 - 8);
            v54 = v41[1];
            v57 = *v41;
            v44 = *(v27 + 2);
            v45 = *(v27 + 3);

            if (v44 >= v45 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v44 + 1, 1, v27);
              v27 = result;
            }

            *(v27 + 2) = v44 + 1;
            v46 = &v27[48 * v44];
            *(v46 + 4) = v42;
            v46[40] = v43;
            *(v46 + 3) = v57;
            *(v46 + 4) = v54;
            v41 += 3;
            --v40;
          }

          while (v40);
LABEL_15:
          a1 = v49;
          v22 = v47;
LABEL_16:
          *(a1 + v22) = v27;
        }
      }
    }

    else if (v25 != v24)
    {
      if (v25 < v24)
      {
        goto LABEL_65;
      }

      result = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates();
      if (v25 <= v24)
      {
        goto LABEL_69;
      }

      v56 = *(result + 40);
      v27 = *(a1 + v56);
      v34 = (v52 + 32 + 48 * v24);
      while ((v24 & 0x8000000000000000) == 0)
      {
        if (v24 >= *(v52 + 16))
        {
          goto LABEL_63;
        }

        v35 = *v34;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
          v27 = result;
        }

        v37 = *(v27 + 2);
        v36 = *(v27 + 3);
        if (v37 >= v36 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v27);
          v27 = result;
        }

        ++v24;
        *(v27 + 2) = v37 + 1;
        *&v27[8 * v37 + 32] = v35;
        v34 += 6;
        if (v25 == v24)
        {
          v22 = v56;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
      break;
    }

    if (++v21 == v51)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_65:
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
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t closure #2 in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.updateValue()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = *AGGraphGetValue();
  v10 = *(v5 + 8);

  result = v10(v8, v4);
  *a2 = v9;
  return result;
}

uint64_t ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.enqueueUpdates(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = *(v2 + *(a2 + 80));
  (*(v9 + 16))(&v12[-v7 - 8], a1, v5, v6);
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  swift_endAccess();
  v12[0] = 17;

  static Update.enqueueAction(reason:_:)(v12, partial apply for closure #1 in ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates.enqueueUpdates(_:), v8);
}

uint64_t ScrollEdgeEffectTag.Item.init(platformItem:proxy:)@<X0>(void *a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v4 = *(a2 + 1);
  v7 = *(a2 + 2);
  v6 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v93 = a2[5];
  v94 = *(a2 + 12);
  v14 = a1[34];
  if (!v14)
  {
    goto LABEL_32;
  }

  v66 = v13;
  v67 = v12;
  v68 = v11;
  v69 = v10;
  v70 = v9;
  v71 = v8;
  v72 = v6;
  v73 = a1;
  v15 = a1[1];
  v16 = *(v15 + 16);

  if (!v16)
  {

    outlined destroy of PlatformItem(v73);

LABEL_33:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v63 = v4;
  v17 = 32;
  v18 = 1;
  v65 = v7;
  while (*(v15 + v17) <= 1u)
  {
    ++v17;
    if (!--v16)
    {
      v18 = 0;
      break;
    }
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v23 = *(v14 + 16);
  if (v23)
  {
    v60 = v18;
    v61 = a3;
    _s11Observation0A8TrackingV11_AccessListVSgMaTm_0(0, &lazy cache variable for type metadata for Anchor<CGRect>, type metadata accessor for CGRect, type metadata accessor for Anchor);
    v59 = v5;
    v75 = v65 | (v72 << 32);
    v24 = *MEMORY[0x1E698D3F8];
    v74 = v71 | (v70 << 32);
    v64 = v69 | (v68 << 32);
    v62 = v67 | (v66 << 32);
    v25 = 32;
    *&v79 = x;
    *&v78 = y;
    v77 = width;
    v76 = height;
    while (1)
    {
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v27 = *WeakValue;

        specialized static Update.begin()();
        if (one-time initialization token for lockAssertionsAreEnabled != -1)
        {
          swift_once();
        }

        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }
        }

        if (AGWeakAttributeGetAttribute() == v24 || AGWeakAttributeGetAttribute() == v24 || AGWeakAttributeGetAttribute() == v24 || AGWeakAttributeGetAttribute() == v24 || AGWeakAttributeGetAttribute() == v24)
        {
          (*(*v27 + 88))(&v82);
          v28 = *&v82;
          v29 = *&v83;
          v30 = *&v84;
          v31 = *&v85;
        }

        else
        {
          InputValue = AGGraphGetInputValue();
          v33 = *(InputValue + 8);
          v58 = *InputValue;
          v34 = *(InputValue + 16);
          v35 = *(InputValue + 24);
          v36 = *(InputValue + 32);
          v37 = *(InputValue + 40);
          type metadata accessor for CGPoint(0);
          v57[5] = v38;

          v39 = AGGraphGetInputValue();
          v40 = *v39;
          v41 = *(v39 + 8);
          *&v42 = v36 - (*v39 - v34);
          v82 = v58;
          v83 = v33;
          *&v84 = v40;
          *&v85 = v41;
          v86 = v42;
          v87 = v37 - (v41 - v35);
          (*(*v27 + 96))(v91, &v82);

          v28 = *v91;
          v29 = *&v91[1];
          v30 = *&v91[2];
          v31 = *&v91[3];
        }

        static Update.end()();

        v97.origin.x = x;
        v97.origin.y = y;
        v97.size.width = width;
        v97.size.height = height;
        *&v100.origin.x = v79;
        *&v100.origin.y = v78;
        v100.size.width = v77;
        v100.size.height = v76;
        if (CGRectEqualToRect(v97, v100))
        {
          x = v28;
          y = v29;
          width = v30;
          height = v31;
        }

        else
        {
          v95.origin.x = x;
          v95.origin.y = y;
          v95.size.width = width;
          v95.size.height = height;
          v99.origin.x = v28;
          v99.origin.y = v29;
          v99.size.width = v30;
          v99.size.height = v31;
          v96 = CGRectUnion(v95, v99);
          x = v96.origin.x;
          y = v96.origin.y;
          width = v96.size.width;
          height = v96.size.height;
        }
      }

      v25 += 8;
      if (!--v23)
      {

        a3 = v61;
        v18 = v60;
        LODWORD(v5) = v59;
        v43 = *&v79;
        v44 = *&v78;
        v45 = v77;
        v46 = v76;
        goto LABEL_30;
      }
    }
  }

  v43 = x;
  v44 = y;
  v45 = width;
  v46 = height;
LABEL_30:
  v98.origin.x = x;
  v98.origin.y = y;
  v98.size.width = width;
  v98.size.height = height;
  if (CGRectEqualToRect(v98, *&v43))
  {
    a1 = v73;
LABEL_32:
    result = outlined destroy of PlatformItem(a1);
    goto LABEL_33;
  }

  if (one-time initialization token for viewGraphHost != -1)
  {
    swift_once();
  }

  v91[0] = static CoordinateSpace.ID.viewGraphHost;
  v92 = 1;
  specialized static Update.begin()();
  *&v89 = x;
  *(&v89 + 1) = y;
  *&v90 = width;
  *(&v90 + 1) = height;
  *&v82 = COERCE_DOUBLE(__PAIR64__(v63, v5));
  *&v83 = COERCE_DOUBLE(__PAIR64__(v72, v65));
  *&v84 = COERCE_DOUBLE(__PAIR64__(v70, v71));
  *&v85 = COERCE_DOUBLE(__PAIR64__(v68, v69));
  v86 = __PAIR64__(v66, v67);
  v87 = v93;
  v88 = v94;
  v48 = GeometryProxy.placementContext.getter(v81);
  MEMORY[0x1EEE9AC00](v48);
  v57[2] = &v89;
  v57[3] = v91;
  v80 = v49;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(partial apply for closure #1 in GeometryProxy.rect(_:in:), v57, v51, v52, v53, v50 | (v49 << 32));
  v79 = v89;
  v78 = v90;
  static Update.end()();
  outlined destroy of CoordinateSpace(v91);
  v54 = v73;
  v55 = *v73;

  result = outlined destroy of PlatformItem(v54);
  *a3 = v55;
  *(a3 + 8) = v18;
  v56 = v78;
  *(a3 + 16) = v79;
  *(a3 + 32) = v56;
  return result;
}

uint64_t ScrollEdgeEffectTagReceiverModifier.Updater.flush()()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates();
  v4 = *(v3 - 8);
  v13 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  swift_beginAccess();
  v14 = v0;
  v7 = v0[2];

  if (!MEMORY[0x193ABF2C0](v8, v3))
  {
LABEL_11:

    v14[2] = static Array._allocateUninitialized(_:)();
  }

  v9 = 0;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v3);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v13 != 8)
    {
      break;
    }

    v15 = result;
    (*(v4 + 16))(v6, &v15, v3);
    swift_unknownObjectRelease();
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    specialized ScrollEdgeEffectTagReceiverModifier.Updater.handleUpdates(_:)(v6, v1, v2);
    (*(v4 + 8))(v6, v3);
    ++v9;
    if (v11 == MEMORY[0x193ABF2C0](v7, v3))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t ScrollEdgeEffectTagReceiverModifier.Updater.deinit()
{

  v1 = *(*v0 + 104);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScrollEdgeEffectTagReceiverModifier.Updater.__deallocating_deinit()
{
  ScrollEdgeEffectTagReceiverModifier.Updater.deinit();

  return swift_deallocClassInstance();
}

char *ScrollEdgeEffectTagReceiverModifier.Updater.init()()
{
  v1 = *(*v0 + 80);
  type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates();
  *(v0 + 2) = static Array._allocateUninitialized(_:)();
  (*(*(v1 - 8) + 56))(&v0[*(*v0 + 104)], 1, 1, v1);
  return v0;
}

uint64_t View.scrollEdgeEffectTagReceiver<A>(receiver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 16))(v8, a1, a3, v11);
  (*(v6 + 32))(v13, v8, a3);
  View.modifier<A>(_:)(v13, a2, v9);
  return (*(v10 + 8))(v13, v9);
}

id static ScrollEdgeEffectTag.Feature.defaults.getter()
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  v0 = static NSUserDefaults.swiftUI;
  if (static NSUserDefaults.swiftUI)
  {
    v1 = static NSUserDefaults.swiftUI;
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v0 = 0;
  }

  v2 = v0;
  return v1;
}

uint64_t static ScrollEdgeEffectTag.Feature.cachedValue.setter(char a1)
{
  result = swift_beginAccess();
  static ScrollEdgeEffectTag.Feature.cachedValue = a1;
  return result;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance ScrollEdgeEffectTag.Feature(char a1)
{
  result = swift_beginAccess();
  static ScrollEdgeEffectTag.Feature.cachedValue = a1;
  return result;
}

uint64_t specialized static ScrollEdgeEffectTag.ID.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *specialized static ScrollEdgeEffectTag.Item.== infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (*(result + 8) == *(a2 + 8))
    {
      return CGRectEqualToRect(*(result + 2), *(a2 + 2));
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectTag.Kind.Role and conformance ScrollEdgeEffectTag.Kind.Role()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind.Role and conformance ScrollEdgeEffectTag.Kind.Role;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind.Role and conformance ScrollEdgeEffectTag.Kind.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind.Role and conformance ScrollEdgeEffectTag.Kind.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEdgeEffectTag.Kind and conformance ScrollEdgeEffectTag.Kind()
{
  result = lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind and conformance ScrollEdgeEffectTag.Kind;
  if (!lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind and conformance ScrollEdgeEffectTag.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEdgeEffectTag.Kind and conformance ScrollEdgeEffectTag.Kind);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectTag.ID(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ScrollEdgeEffectTag.ID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ScrollEdgeEffectTag.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t assignWithCopy for ScrollEdgeEffectTag.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ScrollEdgeEffectTag.Item(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  return a1;
}

uint64_t type metadata completion function for ScrollEdgeEffectTagReceiverModifier.Updater()
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

uint64_t type metadata completion function for ScrollEdgeEffectTagReceiverModifier.ItemUpdates()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v15;
    *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t destroy for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t initializeWithCopy for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);

  v10 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 &= 0xFFFFFFFFFFFFFFF8;
  *v10 = *v9;

  v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

_BYTE *storeEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier.ItemUpdates(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t specialized static MultiPlatformItemsStrategy.makeInputs(_:)(uint64_t *a1)
{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72) | 1;
  }

  else
  {
    v4 = 1;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 2;
  }

  else
  {
    v7 = 2;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);
}

{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72) | 1;
  }

  else
  {
    v4 = 1;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 0xC6;
  }

  else
  {
    v7 = 198;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);
}

uint64_t _s7SwiftUI26MultiPlatformItemsStrategyPAAE10makeInputsyyAA05_ViewH0VzFZAA016ScrollEdgeEffectdeF0V_Tt0g5Tm(uint64_t *a1)
{
  _ViewInputs.addPlatformItemKey()();
  v2 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemsFeaturesKey);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE021PlatformItemsFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v2, v9);
  if (v3)
  {
    v4 = *(v3 + 72) | 1;
  }

  else
  {
    v4 = 1;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021PlatformItemsFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v4);

  v5 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.PlatformItemFeaturesKey);
  v6 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE020PlatformItemFeaturesV033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt0B5(v5, v9);
  if (v6)
  {
    v7 = *(v6 + 72) | 0x21;
  }

  else
  {
    v7 = 33;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE020PlatformItemFeaturesF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2B5(a1, v7);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA11_ViewInputsVAAE021RequestsPlatformItemsF033_391C8788DFD73AA8AB21B496A57C73FFLLV_Tt2g5(a1, 1);
}

uint64_t _s7SwiftUI23UserDefaultKeyedFeaturePAAE9isEnabledSbvgZAA020EnableScrollPrefetchF0V_Ttg5Tm()
{
  swift_beginAccess();
  v0 = static EnableScrollPrefetchFeature.cachedValue;
  if (static EnableScrollPrefetchFeature.cachedValue == 2)
  {
    if (one-time initialization token for swiftUI != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.swiftUI;
    if (static NSUserDefaults.swiftUI)
    {
      v2 = static NSUserDefaults.swiftUI;
      v3 = static NSUserDefaults.swiftUI;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76260);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v12, v13);
      _sypSgWOhTm_1(v13, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD76260);
      v0 = [v7 BOOLForKey_];

      v10 = &lazy cache variable for type metadata for TypedElement<_GraphInputs.ContentScrollPositionKey>;
    }

    else
    {
      memset(v13, 0, sizeof(v13));
      _sypSgWOhTm_1(v13, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v10 = &lazy cache variable for type metadata for TypedElement<_GraphInputs.ContentScrollPositionKey>;
      v0 = 1;
    }

    *(v10 + 344) = v0;
  }

  return v0 & 1;
}

uint64_t specialized static UserDefaultKeyedFeature.isEnabled.getter()
{
  swift_beginAccess();
  v0 = static ScrollEdgeEffectTag.Feature.cachedValue;
  if (static ScrollEdgeEffectTag.Feature.cachedValue == 2)
  {
    if (one-time initialization token for swiftUI != -1)
    {
      swift_once();
    }

    v1 = static NSUserDefaults.swiftUI;
    if (static NSUserDefaults.swiftUI)
    {
      v2 = static NSUserDefaults.swiftUI;
      v3 = static NSUserDefaults.swiftUI;
    }

    else
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v2 = 0;
    }

    v4 = v2;
    v5 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76FF0);
    v6 = [v3 objectForKey_];

    if (v6)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v11, v12);
      _sypSgWOhTm_1(v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v7 = v4;
      if (!v1)
      {
        v7 = [objc_opt_self() standardUserDefaults];
      }

      v8 = v4;
      v9 = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD76FF0);
      v0 = [v7 BOOLForKey_];

      static ScrollEdgeEffectTag.Feature.cachedValue = v0;
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      _sypSgWOhTm_1(v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static ScrollEdgeEffectTag.Feature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

{
  swift_beginAccess();
  v0 = static EnableLazyLayoutReuseLoggingAlways.cachedValue;
  if (static EnableLazyLayoutReuseLoggingAlways.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v8, v9);
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD00000000000002ELL, 0x800000018DD77040);
      v0 = [v5 BOOLForKey_];

      static EnableLazyLayoutReuseLoggingAlways.cachedValue = v0;
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static EnableLazyLayoutReuseLoggingAlways.cachedValue = 0;
    }
  }

  return v0 & 1;
}

{
  swift_beginAccess();
  v0 = static TapGestureUsesGesturesFrameworkFeature.cachedValue;
  if (static TapGestureUsesGesturesFrameworkFeature.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000031, 0x800000018DD77070);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v8, v9);
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000031, 0x800000018DD77070);
      v0 = [v5 BOOLForKey_];

      static TapGestureUsesGesturesFrameworkFeature.cachedValue = v0;
    }

    else
    {
      memset(v9, 0, sizeof(v9));
      _sypSgWOhTm_1(v9, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_0);
      v0 = 0;
      static TapGestureUsesGesturesFrameworkFeature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t type metadata completion function for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v8 + 7;
  v10 = v6 & 0x100000;
  if (v7 > 7 || v10 != 0 || ((((((v8 + 7 + ((v7 + 45) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = AssociatedTypeWitness;
    *a1 = *a2;
    v15 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v16 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v16 = *v15;
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v18 = *v17;
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v20 = *v19;
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v22 = *v21;
    v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v24 = *v23;
    v25 = ((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v26 = ((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v26 = *v25;
    v27 = ((v25 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v28 = ((v26 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v28 = *v27;
    v29 = ((v28 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v30 = ((v27 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v31 = *v30;
    *(v29 + 5) = *(v30 + 5);
    *v29 = v31;
    v32 = ((v29 + v7 + 13) & ~v7);
    v33 = ((v30 + v7 + 13) & ~v7);
    if ((*(v5 + 48))((v30 + v7 + 13) & ~v7, 1, AssociatedTypeWitness))
    {
      memcpy(v32, v33, v8);
    }

    else
    {
      (*(v5 + 16))(v32, v33, v14);
      (*(v5 + 56))(v32, 0, 1, v14);
    }

    v34 = ((v32 + v9) & 0xFFFFFFFFFFFFFFF8);
    v35 = ((v33 + v9) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v35;
    v36 = ((v34 + 11) & 0xFFFFFFFFFFFFFFF8);
    v37 = ((v35 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v36 = *v37;
    *((v36 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v37 + 11) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(uint64_t a1)
{
  v1 = (((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (v1 + *(v3 + 80) + 13) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v4, AssociatedTypeWitness);
  }
}

_DWORD *initializeWithCopy for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = *v18;
  *(v17 + 5) = *(v18 + 5);
  *v17 = v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 80);
  v23 = ((v17 + v22 + 13) & ~v22);
  v24 = ((v18 + v22 + 13) & ~v22);
  if ((*(v21 + 48))(v24, 1, AssociatedTypeWitness))
  {
    v25 = *(v21 + 84);
    v26 = *(v21 + 64);
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 + 1;
    }

    memcpy(v23, v24, v27);
  }

  else
  {
    (*(v21 + 16))(v23, v24, AssociatedTypeWitness);
    v29 = *(v21 + 56);
    v28 = v21 + 56;
    v29(v23, 0, 1, AssociatedTypeWitness);
    v25 = *(v28 + 28);
    v26 = *(v28 + 8);
  }

  if (v25)
  {
    v30 = v26;
  }

  else
  {
    v30 = v26 + 1;
  }

  v31 = ((v23 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = ((v31 + 11) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v32 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  *((v33 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v34 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *assignWithCopy for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v17 = *v18;
  *(v17 + 4) = *(v18 + 4);
  *(v17 + 8) = *(v18 + 8);
  *(v17 + 12) = *(v18 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 80);
  v22 = ((v21 + 13 + v17) & ~v21);
  v23 = ((v21 + 13 + v18) & ~v21);
  v24 = *(v20 + 48);
  v25 = v24(v22, 1, AssociatedTypeWitness);
  v26 = v24(v23, 1, AssociatedTypeWitness);
  if (v25)
  {
    if (!v26)
    {
      (*(v20 + 16))(v22, v23, AssociatedTypeWitness);
      (*(v20 + 56))(v22, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v27 = *(v20 + 84);
    v28 = *(v20 + 64);
  }

  else
  {
    if (!v26)
    {
      (*(v20 + 24))(v22, v23, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v20 + 8))(v22, AssociatedTypeWitness);
    v27 = *(v20 + 84);
    v28 = *(v20 + 64);
  }

  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = v28 + 1;
  }

  memcpy(v22, v23, v29);
LABEL_12:
  if (*(v20 + 84))
  {
    v30 = *(v20 + 64);
  }

  else
  {
    v30 = *(v20 + 64) + 1;
  }

  v31 = v22 + v30 + 7;
  v32 = v23 + v30 + 7;
  v33 = (v32 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v31 & 0xFFFFFFFFFFFFFFF8) = *(v32 & 0xFFFFFFFFFFFFFFF8);
  v34 = (v31 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v34 & 0xFFFFFFFFFFFFFFF8) = *(v33 & 0xFFFFFFFFFFFFFFF8);
  *(((v34 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v33 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

_DWORD *initializeWithTake for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v19 = *v18;
  *(v17 + 5) = *(v18 + 5);
  *v17 = v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 80);
  v23 = ((v17 + v22 + 13) & ~v22);
  v24 = ((v18 + v22 + 13) & ~v22);
  if ((*(v21 + 48))(v24, 1, AssociatedTypeWitness))
  {
    v25 = *(v21 + 84);
    v26 = *(v21 + 64);
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 + 1;
    }

    memcpy(v23, v24, v27);
  }

  else
  {
    (*(v21 + 32))(v23, v24, AssociatedTypeWitness);
    v29 = *(v21 + 56);
    v28 = v21 + 56;
    v29(v23, 0, 1, AssociatedTypeWitness);
    v25 = *(v28 + 28);
    v26 = *(v28 + 8);
  }

  if (v25)
  {
    v30 = v26;
  }

  else
  {
    v30 = v26 + 1;
  }

  v31 = ((v23 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v24 + v30 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v32;
  v33 = ((v31 + 11) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v32 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  *((v33 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v34 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v5 = *v6;
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v11 = *v12;
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v13 = *v14;
  v15 = ((v13 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v16 = ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v15 = *v16;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v17 = *v18;
  *(v17 + 4) = *(v18 + 4);
  *(v17 + 8) = *(v18 + 8);
  *(v17 + 12) = *(v18 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 80);
  v22 = ((v21 + 13 + v17) & ~v21);
  v23 = ((v21 + 13 + v18) & ~v21);
  v24 = *(v20 + 48);
  v25 = v24(v22, 1, AssociatedTypeWitness);
  v26 = v24(v23, 1, AssociatedTypeWitness);
  if (v25)
  {
    if (!v26)
    {
      (*(v20 + 32))(v22, v23, AssociatedTypeWitness);
      (*(v20 + 56))(v22, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v27 = *(v20 + 84);
    v28 = *(v20 + 64);
  }

  else
  {
    if (!v26)
    {
      (*(v20 + 40))(v22, v23, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v20 + 8))(v22, AssociatedTypeWitness);
    v27 = *(v20 + 84);
    v28 = *(v20 + 64);
  }

  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = v28 + 1;
  }

  memcpy(v22, v23, v29);
LABEL_12:
  if (*(v20 + 84))
  {
    v30 = *(v20 + 64);
  }

  else
  {
    v30 = *(v20 + 64) + 1;
  }

  v31 = v22 + v30 + 7;
  v32 = (v23 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v32 += 11;
  *(v31 & 0xFFFFFFFFFFFFFFF8) = v33;
  v34 = (v31 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v34 & 0xFFFFFFFFFFFFFFF8) = *(v32 & 0xFFFFFFFFFFFFFFF8);
  *(((v34 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v32 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(int *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v11 + 7;
  if (v9 >= a2)
  {
    goto LABEL_31;
  }

  v13 = ((((((v12 + ((v10 + 45) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v9 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_31;
      }
    }

LABEL_28:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v9 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_28;
    }
  }

LABEL_31:
  v22 = (((((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 13) & ~v10;
  if (v8 < 0x7FFFFFFF)
  {
    v24 = *((v12 + v22) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  else
  {
    v23 = (*(v6 + 48))(v22);
    if (v23 >= 2)
    {
      return v23 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for ScrollEdgeEffectTagReceiverModifier.EnqueueUpdates(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  v10 = *(v7 + 80);
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = *(v7 + 64) + 1;
  }

  v13 = ((((((v12 + 7 + ((v10 + 45) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 < a3)
  {
    if (((((((v12 + 7 + ((v10 + 45) & ~v10)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a3 - v11 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 > v11)
  {
    if (((((((v12 + 7 + ((v10 + 45) & ~v10)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v11;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v12 + 7 + ((v10 + 45) & ~v10)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v11 + a2;
      bzero(a1, ((((((v12 + 7 + ((v10 + 45) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v17;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(a1 + v13) = v16;
      }

      else
      {
        *(a1 + v13) = v16;
      }
    }

    else if (v6)
    {
      *(a1 + v13) = v16;
    }

    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *(a1 + v13) = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  v18 = ((((((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 13) & ~v10);
  if (v9 < 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *(&v18[v12 + 7] & 0xFFFFFFFFFFFFFFF8) = v22;
  }

  else if (v9 >= a2)
  {
    v23 = *(v7 + 56);

    v23(v18, a2 + 1);
  }

  else
  {
    if (v12 <= 3)
    {
      v19 = ~(-1 << (8 * v12));
    }

    else
    {
      v19 = -1;
    }

    if (v12)
    {
      v20 = v19 & (~v9 + a2);
      if (v12 <= 3)
      {
        v21 = v12;
      }

      else
      {
        v21 = 4;
      }

      bzero(v18, v12);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          *v18 = v20;
          v18[2] = BYTE2(v20);
        }

        else
        {
          *v18 = v20;
        }
      }

      else if (v21 == 1)
      {
        *v18 = v20;
      }

      else
      {
        *v18 = v20;
      }
    }
  }
}

uint64_t specialized ScrollEdgeEffectTagReceiverModifier.Updater.handleUpdates(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  v10 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier.ItemUpdates();
  (*(a3 + 32))(*(a1 + v10[12]), a2, a3);
  v11 = *(a1 + v10[10]);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(a3 + 56);
    v14 = (v11 + 32);
    do
    {
      v15 = *v14++;
      v29 = v15;
      v13(&v29, a2, a3);
      --v12;
    }

    while (v12);
  }

  v16 = *(a1 + v10[9]);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(a3 + 48);
    v19 = (v16 + 64);
    do
    {
      v20 = *(v19 - 24);
      v29 = *(v19 - 4);
      v30 = v20;
      v21 = *v19;
      v31 = *(v19 - 1);
      v32 = v21;
      v18(&v29, a2, a3);
      v19 += 3;
      --v17;
    }

    while (v17);
  }

  v22 = *(a1 + v10[11]);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(a3 + 64);
    v25 = (v22 + 64);
    do
    {
      v26 = *(v25 - 24);
      v29 = *(v25 - 4);
      v30 = v26;
      v27 = *v25;
      v31 = *(v25 - 1);
      v32 = v27;
      v24(&v29, a2, a3);
      v25 += 3;
      --v23;
    }

    while (v23);
  }

  (*(a3 + 40))(a2, a3);
  return (*(v6 + 8))(v9, a2);
}

double LazyScrollable.parent.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Scrollable();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {

    outlined init with copy of AnyTrackedValue(WeakValue, a1);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t LazyScrollable.children.getter()
{
  type metadata accessor for CGRect?(0, &lazy cache variable for type metadata for [Scrollable], type metadata accessor for Scrollable, MEMORY[0x1E69E62F8]);
  result = AGGraphGetWeakValue();
  if (result)
  {
  }

  return result;
}

uint64_t LazyScrollable.allowsContentOffsetAdjustments.getter()
{
  LazyScrollable.parent.getter(v4);
  v0 = v5;
  if (v5)
  {
    v1 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = (*(v1 + 24))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    outlined destroy of _LazyLayout_PlacedSubview?(v4, &lazy cache variable for type metadata for Scrollable?, type metadata accessor for Scrollable, MEMORY[0x1E69E6720], type metadata accessor for CGRect?);
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t LazyScrollable.makeTarget<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    IsValid = AGSubgraphIsValid();
    if (IsValid && (MEMORY[0x1EEE9AC00](IsValid), v19[2] = a3, v19[3] = a4, v19[4] = v9, v19[5] = a1, type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]), _LazyLayoutViewCache.withPlacementData<A>(_:)(partial apply for closure #1 in LazyScrollable.makeTarget<A>(for:), v19, &v20), (v21 & 1) == 0))
    {
      v11 = v20;
      if (_threadTransactionData())
      {
        type metadata accessor for PropertyList.Element();
        swift_unknownObjectRetain();
        v12 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        v12 = 0;
      }

      v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0V018ScrollTargetAnchorF033_3107437717620AB5FD95CF7D87A21F58LLVG_Tt2g5(v12);
      v15 = v14;
      v17 = v16;

      v18 = LazyScrollable.makeTarget(at:anchor:)(v11, v13, v15, v17 & 1, a2);

      return v18;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in LazyScrollable.makeTarget<A>(for:)@<X0>(const void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = *a2;
  memcpy(v15, a1, 0x129uLL);
  LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v16);
  v11 = (*(*(v10 + 448) + 104))(a3, v16, v15, a4, a5, *(v10 + 440));
  v13 = v12;
  result = outlined destroy of _LazyLayout_Subviews(v16);
  *a6 = v11;
  *(a6 + 8) = v13 & 1;
  return result;
}

uint64_t (*LazyScrollable.makeTarget(at:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5))@<X0>(uint64_t a1@<X8>)
{
  v11 = swift_allocObject();
  v13 = *v5;
  v12 = v5[1];
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = *(a5 + 16);
  *(v14 + 32) = v11;
  *(v14 + 40) = a1;
  *(v14 + 48) = v12;
  *(v14 + 56) = v13;
  *(v14 + 64) = a2;
  *(v14 + 72) = a3;
  *(v14 + 80) = a4 & 1;
  return partial apply for closure #1 in LazyScrollable.makeTarget(at:anchor:);
}

uint64_t closure #1 in LazyScrollable.makeTarget(at:anchor:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_10;
  }

  v10 = result;
  IsValid = AGSubgraphIsValid();
  if (!IsValid || (MEMORY[0x1EEE9AC00](IsValid), v27[2] = v10, v27[3] = a1, type metadata accessor for CGRect?(0, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x1E69E6720]), _LazyLayoutViewCache.withPlacementData<A>(_:)(partial apply for closure #1 in closure #1 in LazyScrollable.makeTarget(at:anchor:), v27, &v28), (LOBYTE(v30) & 1) != 0) || (v34 = v28, v35 = v29, (WeakValue = AGGraphGetWeakValue()) == 0))
  {
LABEL_9:

LABEL_10:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 256;
    return result;
  }

  v13 = *WeakValue;
  v14 = *(WeakValue + 8);
  v15 = *(WeakValue + 16);
  v16 = *(WeakValue + 24);
  v17 = *(WeakValue + 32);
  v18 = *(WeakValue + 40);
  type metadata accessor for CGPoint(0);

  v19 = AGGraphGetWeakValue();
  if (!v19)
  {

    goto LABEL_9;
  }

  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = v17 - (*v19 - v15);
  v23 = v18 - (v20 - v16);
  if (one-time initialization token for content != -1)
  {
    v25 = *v19;
    v26 = *(v19 + 8);
    swift_once();
    v20 = v26;
    v21 = v25;
  }

  v32[0] = static ScrollCoordinateSpace.content;
  v33 = 1;
  *&v28 = v13;
  *(&v28 + 1) = v14;
  *&v29 = v21;
  *(&v29 + 1) = v20;
  v30 = v22;
  v31 = v23;

  CGRect.convert(to:transform:)(v32, &v28);

  outlined destroy of CoordinateSpace(v32);

  LOBYTE(v28) = a5 & 1;
  LOBYTE(v32[0]) = 0;
  v24 = v35;
  *a4 = v34;
  *(a4 + 16) = v24;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  *(a4 + 48) = a5 & 1;
  *(a4 + 49) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in LazyScrollable.makeTarget(at:anchor:)@<X0>(double *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a3;
  v6 = *(*a2 + 448);
  v7 = *(*a2 + 440);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v21 - v10;
  v12 = *(a1 + 1);
  v30 = *a1;
  v31 = v12;
  v13 = a1[4];
  memcpy(v29, a1 + 5, sizeof(v29));
  LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v26);
  _LazyLayoutViewCache.copyCacheState<A>(type:)(AssociatedTypeWitness, AssociatedTypeWitness);
  v23[0] = v30;
  v23[1] = v31;
  v24 = v13;
  memcpy(v25, v29, sizeof(v25));
  (*(v6 + 112))(v27, v22, v26, v23, v11, v7, v6);
  v14 = *v27;
  v15 = *&v27[1];
  v16 = *&v27[2];
  v17 = *&v27[3];
  LOBYTE(v23[0]) = v28;
  if ((v28 & 1) != 0 || *AGGraphGetValue() != 1)
  {
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    result = outlined destroy of _LazyLayout_Subviews(v26);
  }

  else
  {
    v32.origin.y = v15;
    v32.size.width = v16;
    v32.size.height = v17;
    v32.origin.x = v14;
    MaxX = CGRectGetMaxX(v32);
    (*(v9 + 8))(v11, AssociatedTypeWitness);
    result = outlined destroy of _LazyLayout_Subviews(v26);
    v14 = v13 - MaxX;
  }

  v20 = v23[0];
  *a4 = v14;
  *(a4 + 8) = v15;
  *(a4 + 16) = v16;
  *(a4 + 24) = v17;
  *(a4 + 32) = v20;
  return result;
}

void LazyScrollable.subviewClosestTo(rect:)(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v12 = Strong;
  if (!AGSubgraphIsValid())
  {
    goto LABEL_5;
  }

  LazyScrollable.transform.getter(&v58);
  if (v58 == 1)
  {

LABEL_6:
    _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(&v58);
    v13 = v63;
    a1[4] = v62;
    a1[5] = v13;
    v14 = v65;
    a1[6] = v64;
    a1[7] = v14;
    v15 = v59;
    *a1 = v58;
    a1[1] = v15;
    v16 = v61;
    a1[2] = v60;
    a1[3] = v16;
    return;
  }

  v17 = v60;
  v18 = v59;
  v53 = v58;
  *&v19 = COERCE_DOUBLE(LazyScrollable.position.getter());
  if (v21)
  {

LABEL_5:

    goto LABEL_6;
  }

  v44 = *(&v17 + 1);
  v22 = *&v19;
  v43 = v20;
  v23 = v19;
  v24 = v20;
  v25 = *AGGraphGetValue();

  v56 = *&v17 - (v22 - *&v18);
  v57 = v44 - (v43 - *(&v18 + 1));
  v54 = v23;
  v55 = v24;
  MEMORY[0x1EEE9AC00](v26);
  v34[2] = v23;
  *&v34[3] = v24;
  v35 = v25;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = v12;
  v41 = v5;
  v42 = &v53;
  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for ScrollableCollectionSubview?, &type metadata for ScrollableCollectionSubview, MEMORY[0x1E69E6720]);
  _LazyLayoutViewCache.withPlacementData<A>(_:)(partial apply for closure #1 in LazyScrollable.subviewClosestTo(rect:), v34, &v45);

  v28 = v51;
  v27 = v52;
  v64 = v51;
  v65 = v52;
  v29 = v50;
  v62 = v49;
  v63 = v50;
  v31 = v45;
  v30 = v46;
  v58 = v45;
  v59 = v46;
  v32 = v47;
  v33 = v48;
  v60 = v47;
  v61 = v48;
  a1[4] = v49;
  a1[5] = v29;
  a1[6] = v28;
  a1[7] = v27;
  *a1 = v31;
  a1[1] = v30;
  a1[2] = v32;
  a1[3] = v33;
}

uint64_t closure #1 in LazyScrollable.subviewClosestTo(rect:)@<X0>(const void *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, CGFloat a7@<D0>, double a8@<D1>, double a9@<D2>, CGFloat a10@<D3>, CGFloat a11@<D4>, CGFloat a12@<D5>)
{
  v72 = a4;
  v73 = a5;
  v82 = a9;
  v83 = a8;
  v75 = a6;
  v18 = *(*a3 + 448);
  v78 = *(*a3 + 440);
  v79 = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v76 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v70[-v20];
  memcpy(v124, a1, 0x129uLL);
  v22 = *&v124[25];
  v23 = *&v124[26];
  v80 = *&v124[32];
  v81 = *&v124[31];
  v24 = v124[35];
  v25 = v124[36];
  v71 = a2;
  if (a2)
  {
    *&v125.size.height = v124[5];
    *&v125.size.width = v124[4];
    v77 = a10;
    v26 = a11;
    v27 = a12;
    v28 = *&v124[23];
    v125.origin.x = a7;
    v125.origin.y = v83;
    a7 = v28 - CGRectGetMaxX(v125);
    a12 = v27;
    a11 = v26;
    a10 = v77;
  }

  v126.origin.x = v82;
  v126.origin.y = a10;
  v126.size.width = a11;
  v126.size.height = a12;
  v127 = CGRectOffset(v126, -a7, -v83);
  v128 = CGRectOffset(v127, -v23, -v22);
  *&v29 = v128.origin.x - v81;
  *&v30 = v128.origin.y - v80;
  memcpy(v123, a1, 0x129uLL);
  ScrollGeometry.translate(by:limit:)(__PAIR128__(v30, v29), __PAIR128__(v25, v24));
  ScrollGeometry.translate(by:limit:)(__PAIR128__(v30, v29), __PAIR128__(v25, v24));
  LODWORD(v83) = *MEMORY[0x1E698D3F8];
  LazyLayoutViewCache.subviews(context:)(SLODWORD(v83), v122);
  v77 = *&AssociatedTypeWitness;
  _LazyLayoutViewCache.copyCacheState<A>(type:)(AssociatedTypeWitness, AssociatedTypeWitness);
  v111 = v123[12];
  v112 = v123[13];
  v113 = v123[14];
  v114 = v123[15];
  v107 = v123[8];
  v108 = v123[9];
  v109 = v123[10];
  v110 = v123[11];
  v103 = v123[4];
  v104 = v123[5];
  v105 = v123[6];
  v106 = v123[7];
  v99 = v123[0];
  v100 = v123[1];
  v101 = v123[2];
  v102 = v123[3];
  v116 = *(&v123[16] + 8);
  v117 = *(&v123[17] + 8);
  v118 = BYTE8(v123[18]);
  v119 = 0;
  v120 = 1;
  v121 = MEMORY[0x1E69E7CC0];
  v82 = *(&v123[15] + 1);
  v31 = *&v123[16];
  v115 = *&v123[16];
  v32 = *(v79 + 72);
  v74 = v21;
  v32(v122, &v99, v21, &v119, v78);
  v33 = v121;
  v34 = *(*&v121 + 16);
  if (v34)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    if (*(*&v121 + 16))
    {
      v35 = 0;
      *&v80 = v34 - 1;
      v81 = v121;
      v36 = INFINITY;
      v37 = 32;
      while (1)
      {
        v89 = *(*&v33 + v37);
        v38 = *(*&v33 + v37 + 16);
        v39 = *(*&v33 + v37 + 32);
        v40 = *(*&v33 + v37 + 64);
        v92 = *(*&v33 + v37 + 48);
        v93 = v40;
        v90 = v38;
        v91 = v39;
        v41 = v89;
        if (*(v89 + 44) == LODWORD(v83))
        {
          outlined init with copy of _LazyLayout_PlacedSubview(&v89, &v99);
          Value = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            Value = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          outlined init with copy of _LazyLayout_PlacedSubview(&v89, &v99);
          Value = AGGraphGetValue();
        }

        v43 = *Value;
        v44 = *(&v89 + 1);
        v45 = v90;
        v46 = *(&v90 + 1);
        v47 = v91;
        v48 = *(&v91 + 1);
        v50 = v92;
        v49 = *&v93;
        v51 = one-time initialization token for lockAssertionsAreEnabled;

        if (v51 != -1)
        {
          swift_once();
        }

        v52 = lockAssertionsAreEnabled;
        if (lockAssertionsAreEnabled)
        {
          if (one-time initialization token for _lock != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            break;
          }
        }

        *&v99 = v44;
        BYTE8(v99) = v45;
        *&v100 = v46;
        BYTE8(v100) = v47;
        v53 = (*(*v43 + 120))(&v99);
        v55 = v54;

        if (*(v41 + 44) == LODWORD(v83))
        {
          v56 = &static LayoutComputer.defaultValue;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
            v56 = &static LayoutComputer.defaultValue;
          }
        }

        else
        {
          v56 = AGGraphGetValue();
        }

        v57 = *v56;
        if (v52)
        {
          v58 = one-time initialization token for _lock;

          if (v58 != -1)
          {
            swift_once();
          }

          if (!_MovableLockIsOwner(static Update._lock))
          {
            break;
          }
        }

        else
        {
        }

        *&v99 = v44;
        BYTE8(v99) = v45;
        *&v100 = v46;
        BYTE8(v100) = v47;
        (*(*v57 + 120))(&v99);

        v59 = sqrt((v82 - (*(&v50 + 1) - v48 * v53)) * (v82 - (*(&v50 + 1) - v48 * v53)) + (v31 - (v49 - *&v50 * v55)) * (v31 - (v49 - *&v50 * v55)));
        if (v59 >= v36)
        {
          outlined destroy of _LazyLayout_PlacedSubview(&v89);
          v60 = &v94;
        }

        else
        {
          outlined destroy of _LazyLayout_PlacedSubview?(&v94, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720], type metadata accessor for [_LazyLayout_PlacedSubview]);
          v60 = &v89;
          v36 = v59;
        }

        v61 = v60[3];
        v86 = v60[2];
        v87 = v61;
        v88 = v60[4];
        v62 = v60[1];
        v84 = *v60;
        v85 = v62;
        v33 = v81;
        if (*&v80 == v35)
        {

          v101 = v86;
          v102 = v87;
          v103 = v88;
          v99 = v84;
          v100 = v85;
          goto LABEL_34;
        }

        ++v35;
        v96 = v86;
        v97 = v87;
        v98 = v88;
        v94 = v84;
        v95 = v85;
        v37 += 80;
        if (v35 >= *(*&v81 + 16))
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_35:
      __break(1u);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v99 = 0u;
LABEL_34:
    v92 = v102;
    v93 = v103;
    v90 = v100;
    v91 = v101;
    v89 = v99;
    MEMORY[0x1EEE9AC00](v63);
    v64 = v79;
    *&v70[-48] = v78;
    *&v70[-40] = v64;
    *&v70[-32] = v72;
    v70[-24] = v71 & 1;
    v68 = v124;
    v69 = v73;
    outlined init with copy of _LazyLayout_PlacedSubview?(&v99, &v94);
    v65 = MEMORY[0x1E69E6720];
    type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #1 in LazyScrollable.subviewClosestTo(rect:), &v70[-64], MEMORY[0x1E69E73E0], &type metadata for ScrollableCollectionSubview, v66, v75);
    outlined destroy of _LazyLayout_PlacedSubview?(&v99, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, v65, type metadata accessor for [_LazyLayout_PlacedSubview]);
    v96 = v91;
    v97 = v92;
    v98 = v93;
    v94 = v89;
    v95 = v90;
    outlined destroy of _LazyLayout_PlacedSubview?(&v94, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, v65, type metadata accessor for [_LazyLayout_PlacedSubview]);
    (*(v76 + 8))(v74, COERCE_DOUBLE(*&v77));
    return outlined destroy of _LazyLayout_Subviews(v122);
  }

  return result;
}

uint64_t closure #1 in closure #1 in LazyScrollable.subviewClosestTo(rect:)@<X0>(uint64_t a1@<X0>, char a2@<W2>, const void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *v31 = *(a1 + 8);
  *&v31[16] = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(v9 + 152);
  v36[0] = *(v9 + 144);
  v36[1] = v15;
  *__dst = v9;
  v16 = *(a1 + 24);
  *&__dst[8] = *(a1 + 8);
  *&__dst[24] = v16;
  *&__dst[40] = v10;
  *&__dst[48] = v11;
  *&__dst[56] = v12;
  *&__dst[64] = v13;
  *&__dst[72] = v14;

  _LazyLayout_PlacedSubview.size.getter();
  v19 = v12 - v10 * v17;
  v30 = v9;
  *&v31[32] = v10;
  v32 = v11;
  v20 = v13 - v11 * v18;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  _LazyLayout_PlacedSubview.size.getter();
  v22 = v21;
  v24 = v23;
  v29 = a2 & 1;
  memcpy(__dst, a3, sizeof(__dst));
  v25 = *(a4 + 8);
  v30 = *a4;
  *v31 = v25;
  v26 = *(a4 + 32);
  *&v31[8] = *(a4 + 16);
  *&v31[24] = v26;
  type metadata accessor for LazyScrollable();

  LazyScrollable.collectionSubview(id:frame:layoutDirection:context:transform:)(v36, &v29, __dst, &v30, a5, v19, v20, v22, v24);
}

uint64_t LazyScrollable.visibleCollectionViewIDs.getter()
{
  Strong = swift_weakLoadStrong();
  v1 = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    if (AGSubgraphIsValid())
    {
      type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);

      v2 = *AGGraphGetValue();

      v3 = *(v2 + 16);
      if (v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
        v4 = 32;
        do
        {
          v5 = *(v2 + v4);
          v6 = *(v5 + 144);
          v7 = *(v5 + 148);
          v8 = *(v5 + 152);
          v9 = *(v8 + 16);
          swift_bridgeObjectRetain_n();

          if (v9)
          {
            v9 = *(v8 + 32);
            v10 = *(v8 + 52);

            swift_bridgeObjectRelease_n();

            if (v10)
            {
              v7 = -1;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v12 = *(v1 + 16);
          v11 = *(v1 + 24);
          if (v12 >= v11 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          }

          *(v1 + 16) = v12 + 1;
          v13 = v1 + 16 * v12;
          *(v13 + 32) = v6;
          *(v13 + 36) = v7;
          *(v13 + 40) = v9;
          v4 += 80;
          --v3;
        }

        while (v3);
      }
    }

    else
    {
    }
  }

  return v1;
}

uint64_t LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, _OWORD *a3@<X8>, double a4@<D2>, double a5@<D3>)
{
  v8 = *a1;
  v44 = a1[1];
  v9 = *a2;
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_15;
  }

  v11 = result;
  if (!AGSubgraphIsValid())
  {

LABEL_15:
    *a3 = xmmword_18DD85550;
    return result;
  }

  v42 = v9;
  v43 = a3;
  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);

  v12 = *(*AGGraphGetValue() + 16);
  if (!v12)
  {
LABEL_12:

LABEL_13:
    *v43 = xmmword_18DD85550;
    return result;
  }

  v13 = 0;
  v14 = 32;
  while (1)
  {
    result = AGGraphGetValue();
    if (v13 >= *(*result + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v15 = *(*result + v14);
    v16 = *(v15 + 144);
    v17 = *(v15 + 148);
    v18 = *(v15 + 152);
    v19 = *(v18 + 16);
    swift_bridgeObjectRetain_n();
    if (v19)
    {
      v19 = *(v18 + 32);
      v20 = v11;
      v21 = *(v18 + 52);

      swift_bridgeObjectRelease_n();
      v22 = v21 == 0;
      v11 = v20;
      if (!v22)
      {
        v17 = -1;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    *&v50 = __PAIR64__(v17, v16);
    *(&v50 + 1) = v19;
    *&v45 = v8;
    *(&v45 + 1) = v44;
    v23 = specialized static _ViewList_ID.Canonical.== infix(_:_:)(&v50, &v45);

    if (v23)
    {
      break;
    }

    ++v13;
    v14 += 80;
    if (v12 == v13)
    {
      goto LABEL_12;
    }
  }

  v24 = *AGGraphGetValue();

  if (v13 >= *(v24 + 16))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v50 = *(v24 + v14);
  v25 = *(v24 + v14 + 16);
  v26 = *(v24 + v14 + 32);
  v27 = *(v24 + v14 + 64);
  v53 = *(v24 + v14 + 48);
  v54 = v27;
  v51 = v25;
  v52 = v26;
  outlined init with copy of _LazyLayout_PlacedSubview(&v50, &v45);

  v28 = *(&v52 + 1);
  v30 = v53;
  v29 = *&v54;
  v47 = v52;
  v48 = v53;
  v49 = v54;
  v46 = v51;
  v45 = v50;
  _LazyLayout_PlacedSubview.size.getter();
  v33 = *(&v30 + 1) - v28 * v31;
  v34 = v29 - *&v30 * v32;
  v47 = v52;
  v48 = v53;
  v49 = v54;
  v46 = v51;
  v45 = v50;
  _LazyLayout_PlacedSubview.size.getter();
  v36 = v35;
  v38 = v37;
  outlined destroy of _LazyLayout_PlacedSubview(&v50);
  v55.origin.x = v33;
  v55.origin.y = v34;
  v55.size.width = v36;
  v55.size.height = v38;
  CGRectInset(v55, -a4, -a5);
  LODWORD(v45) = v42;
  MEMORY[0x1EEE9AC00](v39);
  v40 = specialized LazyScrollable.bestIndex(target:border:fromIndex:ignoredViews:distance:)(v13, 0, &v45, partial apply for closure #1 in LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:), a4, a5);
  if (v41)
  {

    goto LABEL_13;
  }

  *&v45 = v40;
  closure #2 in LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)(&v45, v43);
}

BOOL distance(from:to:along:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v18 = a7;
  v19 = a5;
  v20 = a3;
  v21 = a1;
  v22 = a10;
  if (a10 == 0.0)
  {
    v22 = a9;
    v38 = a7;
    v39 = a5;
    v19 = a6;
    v18 = a8;
    v21 = a2;
    v20 = a4;
  }

  else
  {
    v38 = a8;
    v39 = a6;
    a1 = a2;
    a3 = a4;
    if (a9 != 0.0)
    {
      return 0;
    }
  }

  v36 = a3;
  v37 = a1;
  v23 = v21;
  v24 = v20;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  if (!CGRectIsNull(*&a1))
  {
    v28 = v21 + v20;
    if (v21 + v20 >= v21)
    {
      v29 = v21;
    }

    else
    {
      v29 = v21 + v20;
    }

    if (v21 > v28)
    {
      v28 = v21;
    }

    if (v29 > v28)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v28;
    }

    if (v29 > v28)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v29;
    }
  }

  v40.size.width = v38;
  v40.origin.x = v39;
  v40.origin.y = v19;
  v40.size.height = v18;
  result = CGRectIsNull(v40);
  v31 = 0.0;
  if (!result)
  {
    v31 = v19 + v18;
    if (v19 + v18 >= v19)
    {
      v32 = v19;
    }

    else
    {
      v32 = v19 + v18;
    }

    if (v19 > v31)
    {
      v31 = v19;
    }

    if (v32 <= v31)
    {
      v25 = v32;
    }

    else
    {
      v31 = 0.0;
      v25 = 0.0;
    }
  }

  if (v26 > v25)
  {
    v33 = v26;
  }

  else
  {
    v33 = v25;
  }

  if (v31 >= v27)
  {
    v31 = v27;
  }

  if (v33 >= v31)
  {
    return 0;
  }

  if (v33 > v31)
  {
    __break(1u);
  }

  else
  {
    v41.size.width = v38;
    v41.origin.x = v39;
    v41.origin.y = v19;
    v41.size.height = v18;
    MidX = CGRectGetMidX(v41);
    v42.size.width = v36;
    v42.origin.x = v37;
    v42.origin.y = v21;
    v42.size.height = v20;
    v35 = MidX - CGRectGetMidX(v42);
    if (v22 < 0.0)
    {
      v35 = -v35;
    }

    return *&v35;
  }

  return result;
}

uint64_t closure #2 in LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    v5 = *(*result + 80 * v3 + 32);
    v6 = *(v5 + 152);
    v7[0] = *(v5 + 144);
    v7[1] = v6;

    return _ViewList_ID.Canonical.init(id:)(v7, a2);
  }

  __break(1u);
  return result;
}

uint64_t LazyScrollable.applyCollectionViewIDs(from:to:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_5;
  }

  if (!AGSubgraphIsValid())
  {

LABEL_5:
    v7 = 1;
    return v7 & 1;
  }

  v6 = LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v11);
  MEMORY[0x1EEE9AC00](v6);
  v9[2] = a2;
  v9[3] = a3;
  v10 = 2;
  v7 = _LazyLayout_Subviews.apply(from:style:to:)(a1, &v10, partial apply for closure #1 in LazyScrollable.applyCollectionViewIDs(from:to:), v9);

  outlined destroy of _LazyLayout_Subviews(v11);
  return v7 & 1;
}

uint64_t closure #1 in LazyScrollable.applyCollectionViewIDs(from:to:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t))
{
  v5 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = v5;

  _ViewList_ID.Canonical.init(id:)(&v7, v9);
  v7 = v9[0];
  v8 = v9[1];
  a3(&v7, a2);
}

uint64_t LazyScrollable.collectionViewID(for:)@<X0>(__int128 *a1@<X8>)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_6;
  }

  if (!AGSubgraphIsValid() || (v3 = LazyLayoutViewCache.item(for:)()) == 0)
  {

LABEL_6:
    v7 = xmmword_18DD85550;
    goto LABEL_7;
  }

  v4 = *(v3 + 152);
  v5 = v3;

  v6 = *(v5 + 144);

  v8[0] = v6;
  v8[1] = v4;
  _ViewList_ID.Canonical.init(id:)(v8, &v9);

  v7 = v9;
LABEL_7:
  *a1 = v7;
  return result;
}

uint64_t LazyScrollable.firstCollectionViewIndex(of:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = swift_weakLoadStrong();
  if (result)
  {
    if (AGSubgraphIsValid())
    {
      v4 = LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v10);
      v9 = 0;
      MEMORY[0x1EEE9AC00](v4);
      v6[2] = v1;
      v6[3] = v2;
      v6[4] = &v9;
      v7 = 2;
      v8 = 0;
      v5 = _LazyLayout_Subviews.apply(from:style:to:)(&v8, &v7, closure #1 in _LazyLayout_Subviews.firstIndex(of:style:)partial apply, v6);

      outlined destroy of _LazyLayout_Subviews(v10);
      if (v5)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t LazyScrollable.scroll(toCollectionViewID:anchor:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  if (!AGSubgraphIsValid())
  {
    goto LABEL_8;
  }

  v11 = LazyLayoutViewCache.subviews(context:)(*MEMORY[0x1E698D3F8], v21);
  v20 = 0;
  MEMORY[0x1EEE9AC00](v11);
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = &v20;
  v19 = 0;
  v18 = 2;
  if (_LazyLayout_Subviews.apply(from:style:to:)(&v19, &v18, partial apply for closure #1 in _LazyLayout_Subviews.firstIndex(of:style:), v17))
  {

    outlined destroy of _LazyLayout_Subviews(v21);
LABEL_9:
    v15 = 0;
    return v15 & 1;
  }

  v12 = LazyScrollable.makeTarget(at:anchor:)(v20, a2, a3, a4 & 1, a5);
  if (!v12)
  {
    outlined destroy of _LazyLayout_Subviews(v21);
LABEL_8:

    goto LABEL_9;
  }

  v14 = v12;
  v15 = ScrollableContainer.setParentTarget(_:)(v12, v13, a5, &protocol witness table for LazyScrollable<A>);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v14);

  outlined destroy of _LazyLayout_Subviews(v21);
  return v15 & 1;
}

_DWORD *assignWithCopy for LazyScrollable(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  swift_weakCopyAssign();
  return a1;
}

_OWORD *initializeWithTake for LazyScrollable(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_weakTakeInit();
  return a1;
}

_OWORD *assignWithTake for LazyScrollable(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_weakTakeAssign();
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyScrollable(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LazyScrollable(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t partial apply for closure #1 in LazyScrollable.nextVisibleCollectionViewID(towards:from:border:ignoring:)(double a1, double a2, double a3, double a4)
{
  result = distance(from:to:along:)(v4[2], v4[3], v4[4], v4[5], a1, a2, a3, a4, v4[6], v4[7]);
  if (*&result >= 0.0)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  return result;
}

uint64_t specialized LazyScrollable.bestIndex(target:border:fromIndex:ignoredViews:distance:)(uint64_t a1, char a2, int *a3, uint64_t (*a4)(__n128, __n128, __n128, __n128), double a5, double a6)
{
  v11 = *a3;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!AGSubgraphIsValid())
  {

    return 0;
  }

  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);

  v13 = *(*AGGraphGetValue() + 16);
  if (!v13)
  {

    return 0;
  }

  swift_beginAccess();
  v60 = 0;
  v14 = 0;
  v61 = *MEMORY[0x1E698D3F8];
  dx = -a5;
  v15 = -a6;
  v59 = 1;
  v16 = INFINITY;
  v17 = 32;
  v57 = a4;
  v56 = a1;
  v55 = v11;
  while (1)
  {
    if ((a2 & 1) == 0 && a1 == v14)
    {
      goto LABEL_5;
    }

    Value = AGGraphGetValue();
    if (v14 >= *(*Value + 16))
    {
      break;
    }

    v19 = *(*Value + v17);
    if ((*(v19 + 173) != 1 || (v11 & 1) == 0) && (*(v19 + 174) != 1 || (v11 & 2) == 0))
    {
      v22 = AGGraphGetValue();
      if (v14 >= *(*v22 + 16))
      {
        goto LABEL_53;
      }

      v23 = (*v22 + v17);
      v68 = *v23;
      v24 = v23[1];
      v25 = v23[2];
      v26 = v23[4];
      v71 = v23[3];
      v72 = v26;
      v69 = v24;
      v70 = v25;
      v27 = v68;
      if (*(v68 + 44) == v61)
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v68, &v64);
        v28 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v28 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        outlined init with copy of _LazyLayout_PlacedSubview(&v68, &v64);
        v28 = AGGraphGetValue();
      }

      v29 = *v28;
      v30 = *(&v68 + 1);
      v31 = *(&v69 + 1);
      v62 = v70;
      v63 = v69;
      v32 = *(&v70 + 1);
      v34 = v71;
      v33 = *&v72;
      v35 = one-time initialization token for lockAssertionsAreEnabled;

      if (v35 != -1)
      {
        swift_once();
      }

      v36 = lockAssertionsAreEnabled;
      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_54;
        }
      }

      v64 = v30;
      v65 = v63;
      v66 = v31;
      v67 = v62;
      v37 = (*(*v29 + 120))(&v64);
      v39 = v38;

      if (*(v27 + 44) == v61)
      {
        v40 = &static LayoutComputer.defaultValue;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
          v40 = &static LayoutComputer.defaultValue;
        }
      }

      else
      {
        v40 = AGGraphGetValue();
      }

      v41 = *v40;
      if (v36)
      {
        v42 = one-time initialization token for _lock;

        if (v42 != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          goto LABEL_54;
        }
      }

      else
      {
      }

      v43 = *&v34 * v39;
      v44 = *(&v34 + 1) - v32 * v37;
      v45 = v33 - v43;
      v64 = v30;
      v65 = v63;
      v66 = v31;
      v67 = v62;
      v46 = (*(*v41 + 120))(&v64);
      v48 = v47;

      outlined destroy of _LazyLayout_PlacedSubview(&v68);
      v49 = *AGGraphGetValue();
      v50 = AGGraphGetValue();
      if (v49 == 1)
      {
        v51 = *v50;
        v73.origin.x = v44;
        v73.origin.y = v45;
        v73.size.width = v46;
        v73.size.height = v48;
        v44 = v51 - CGRectGetMaxX(v73);
      }

      a1 = v56;
      LOBYTE(v11) = v55;
      v74.origin.x = v44;
      v74.origin.y = v45;
      v74.size.width = v46;
      v74.size.height = v48;
      v75 = CGRectInset(v74, dx, v15);
      v52 = v57(v75.origin, *&v75.origin.y, v75.size, *&v75.size.height);
      if ((v53 & 1) == 0)
      {
        v54 = v60;
        if (COERCE_DOUBLE(v52 & 0x7FFFFFFFFFFFFFFFLL) < v16)
        {
          v54 = v14;
        }

        v60 = v54;
        v59 &= COERCE_DOUBLE(v52 & 0x7FFFFFFFFFFFFFFFLL) >= v16;
        if (COERCE_DOUBLE(v52 & 0x7FFFFFFFFFFFFFFFLL) < v16)
        {
          *&v16 = v52 & 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

LABEL_5:
    ++v14;
    v17 += 80;
    if (v13 == v14)
    {

      return v60;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined init with copy of _LazyLayout_PlacedSubview?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [_LazyLayout_PlacedSubview](0, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview?, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for Scrollable()
{
  result = lazy cache variable for type metadata for Scrollable;
  if (!lazy cache variable for type metadata for Scrollable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Scrollable);
  }

  return result;
}

void type metadata accessor for CGRect?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t key path setter for _GraphInputs.hasWidgetMetadata : _GraphInputs(char *a1, uint64_t *a2)
{
  v3 = *a1;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(a2, v3);
}

uint64_t _GraphInputs.hasWidgetMetadata.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v1, a1);
}

uint64_t (*_GraphInputs.hasWidgetMetadata.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _GraphInputs.hasWidgetMetadata.modify;
}

uint64_t _ViewInputs.hasWidgetMetadata.setter(char a1)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v1, a1);
}

uint64_t (*_ViewInputs.hasWidgetMetadata.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v4 + 24) = *v1;
  *(v4 + 40) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v5) & 1;
  *(v4 + 32) = 0;
  return _ViewInputs.hasWidgetMetadata.modify;
}
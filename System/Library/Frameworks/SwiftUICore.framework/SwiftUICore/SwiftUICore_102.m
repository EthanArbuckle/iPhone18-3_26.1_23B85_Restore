uint64_t closure #2 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-v11];
  v13 = *(a3 - 8);
  (*(v13 + 16))(&v16[-v11], a1, a3, v10);
  (*(v13 + 56))(v12, 0, 1, a3);
  v17 = v8;
  v18 = v12;
  v19 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, partial apply for closure #1 in compareValues<A>(_:_:options:), v16, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v14);
  LOBYTE(a2) = v20;
  result = (*(v9 + 8))(v12, v8);
  *a4 = a2;
  return result;
}

uint64_t $defer #1 <A, B><A1, B1>() in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t $defer #3 <A, B><A1, B1>() in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(v4 - 8);
  (*(v10 + 16))(&v13 - v8, a2, v4, v7);
  (*(v10 + 56))(v9, 0, 1, v4);
  v11 = *(*a1 + 192);
  swift_beginAccess();
  (*(v6 + 40))(a1 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t closure #3 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, BOOL *a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10, v12);
  v15 = *(a3 - 8);
  v16 = (*(v15 + 48))(v14, 1, a3);
  if (v16 == 1)
  {
    a3 = v10;
  }

  else
  {
    (*(a4 + 32))(a2, a3, a4);
    v11 = v15;
  }

  result = (*(v11 + 8))(v14, a3);
  *a5 = v16 == 1;
  return result;
}

uint64_t _CoreInteractionHelperBox.__ivar_destroyer()
{
  v1 = *(*v0 + 152);
  type metadata accessor for CoreInteractionRepresentableEffect();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  v3 = *(*v0 + 184);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 192);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 8);

  return v7(v0 + v5, v6);
}

void CoreInteractionChildTransform.value.getter(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 16);
  v5 = *(Value + 24);
  v6 = *(Value + 32);
  v7 = *(Value + 40);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  type metadata accessor for CGPoint(0);

  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = *(v8 + 8);
  *(a1 + 32) = v6 - (*v8 - v4);
  *(a1 + 40) = v7 - (v10 - v5);
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  if (one-time initialization token for viewGraphHostContainerCoordinateSpace != -1)
  {
    swift_once();
  }

  v11 = static CoordinateSpace.ID.viewGraphHostContainerCoordinateSpace;
  ViewTransform.appendCoordinateSpace(id:)(&v11);
}

id CoreInteractionResponderFilter.layoutResponder.getter()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
LABEL_5:

    return v1;
  }

  v2 = *(v0 + 56);
  v9[2] = *(v0 + 40);
  v9[3] = v2;
  v9[4] = *(v0 + 72);
  v10 = *(v0 + 88);
  v3 = *(v0 + 24);
  v9[0] = *(v0 + 8);
  v9[1] = v3;
  type metadata accessor for DefaultLayoutViewResponder();
  v1 = swift_allocObject();
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 120) = *(v0 + 40);
  *(v1 + 136) = *(v0 + 56);
  *(v1 + 152) = *(v0 + 72);
  *(v1 + 168) = *(v0 + 88);
  *(v1 + 88) = *(v0 + 8);
  *(v1 + 104) = *(v0 + 24);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v5 = MEMORY[0x1E69E7CC0];
    *(v1 + 176) = result;
    *(v1 + 40) = v5;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = v5;
    *(v1 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    outlined init with copy of _ViewInputs(v9, v8);
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v6 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v7 = *(v6 + 208);

    swift_beginAccess();
    *(v1 + 24) = v7;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v0 + 144) = v1;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t CoreInteractionResponderFilter.responder.getter()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v1 = closure #1 in CoreInteractionResponderFilter.responder.getter(v0);
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t closure #1 in CoreInteractionResponderFilter.responder.getter(id *a1)
{
  v2 = *a1;
  AGGraphClearUpdate();
  v3 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in CoreInteractionResponderFilter.responder.getter(a1, &v6);
  AGSubgraphSetCurrent();

  v4 = v6;
  AGGraphSetUpdate();

  return v4;
}

uint64_t closure #1 in closure #1 in CoreInteractionResponderFilter.responder.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 104);
  type metadata accessor for CoreInteractionResponderFilter();
  CoreInteractionResponderFilter.layoutResponder.getter();
  v4 = (*(v3 + 8))();

  *a2 = v4;
  return result;
}

uint64_t CoreInteractionResponderFilter.updateValue()()
{
  v1 = v0;
  v38 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v31 = v3;
  v4 = *Value;
  v5 = *(v0 + 104);
  v28 = *(v0 + 96);
  swift_unknownObjectRetain();
  v30 = CoreInteractionResponderFilter.responder.getter();
  Strong = swift_weakLoadStrong();
  swift_unknownObjectRetain();
  v6 = AGGraphGetValue();
  v27 = v7;
  v8 = v6[1];
  v34[0] = *v6;
  v34[1] = v8;
  type metadata accessor for CGPoint(0);
  v9 = AGGraphGetValue();
  v11 = v10;
  v12 = *v9;
  v13 = v9[1];
  v14 = AGGraphGetValue();
  v16 = v15;
  v17 = *(v14 + 8);
  v35[0] = *v14;
  v35[1] = v17;
  v18 = *(v14 + 32);
  v36 = *(v14 + 16);
  v37 = v18;
  v19 = *(v5 + 16);

  v19(v30, Strong, v4, v31 & 1, v34, v27 & 1, v11 & 1, v35, v12, v13, v16 & 1, v28, v5);

  swift_unknownObjectRelease();

  v20 = CoreInteractionResponderFilter.layoutResponder.getter();
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v21)
  {
    v22 = *(*v20 + 320);

    v22(v23);
  }

  CoreInteractionResponderFilter.responder.getter();
  swift_weakLoadStrong();
  v32 = *(v1 + 96);
  swift_weakInit();

  swift_weakInit();

  v36 = v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 72))(v35, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (AGGraphGetOutputValue())
  {
    outlined destroy of CoreInteractionViewParentGestureContainerProxy(v35);
    return swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_18DDAB4D0;
    *(v26 + 32) = CoreInteractionResponderFilter.responder.getter();
    *&v34[0] = v26;
    AGGraphSetOutputValue();
    swift_unknownObjectRelease();
    outlined destroy of CoreInteractionViewParentGestureContainerProxy(v35);
  }
}

uint64_t key path setter for _GraphInputs.coreInteractionResponderProvider : _GraphInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(a2, v3, v4);
}

uint64_t _GraphInputs.coreInteractionResponderProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(v2, a1, a2);
}

void (*_GraphInputs.coreInteractionResponderProvider.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.coreInteractionResponderProvider.modify;
}

void _GraphInputs.coreInteractionResponderProvider.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

void *assignWithCopy for CoreInteractionRepresentableInteractionsProxy.Interaction(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for CoreInteractionRepresentableInteractionsProxy.Interaction(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  return a1;
}

uint64_t destroy for CoreInteractionViewParentGestureContainerProxy()
{
  swift_weakDestroy();

  return swift_weakDestroy();
}

uint64_t assignWithCopy for CoreInteractionViewParentGestureContainerProxy(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t initializeWithCopy for CoreInteractionViewParentGestureContainerProxy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4();
  (a4)(v7 + 8, a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t type metadata completion function for CoreInteractionRepresentableModifier()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CoreInteractionRepresentableModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  if (*(v7 + 84))
  {
    v8 = *(v7 + 64);
  }

  else
  {
    v8 = *(v7 + 64) + 1;
  }

  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = (*(v7 + 80) | *(v9 + 80));
  if (v12 > 7 || ((*(v7 + 80) | *(v9 + 80)) & 0x100000) != 0 || ((v8 + v10) & ~v10) + *(*(v5 - 8) + 64) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = ~v10;
    if ((*(v7 + 48))(a2, 1, v6))
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
    }

    (*(v9 + 16))((a1 + v11) & v16, (a2 + v11) & v16, v5);
  }

  return a1;
}

uint64_t destroy for CoreInteractionRepresentableModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(a2 + 24);
  v7 = *(*(v6 - 8) + 8);
  v8 = *(*(v6 - 8) + 80);
  v9 = *(v5 + 64) + a1;
  if (!*(v5 + 84))
  {
    ++v9;
  }

  return v7((v9 + v8) & ~v8);
}

void *initializeWithCopy for CoreInteractionRepresentableModifier(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 24) - 8);
  (*(v14 + 16))((a1 + v13 + *(v14 + 80)) & ~*(v14 + 80), (a2 + v13 + *(v14 + 80)) & ~*(v14 + 80));
  return a1;
}

void *assignWithCopy for CoreInteractionRepresentableModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 24) - 8);
  (*(v15 + 24))((a1 + v14 + *(v15 + 80)) & ~*(v15 + 80), (a2 + v14 + *(v15 + 80)) & ~*(v15 + 80));
  return a1;
}

void *initializeWithTake for CoreInteractionRepresentableModifier(void *a1, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 24) - 8);
  (*(v14 + 32))((a1 + v13 + *(v14 + 80)) & ~*(v14 + 80), (a2 + v13 + *(v14 + 80)) & ~*(v14 + 80));
  return a1;
}

void *assignWithTake for CoreInteractionRepresentableModifier(void *a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 24) - 8);
  (*(v15 + 40))((a1 + v14 + *(v15 + 80)) & ~*(v15 + 80), (a2 + v14 + *(v15 + 80)) & ~*(v15 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for CoreInteractionRepresentableModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  if (v6)
  {
    v14 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v14 = *(*(*(a3 + 16) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v14 + v13;
  v16 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v17 = (v15 & ~v13) + *(*(v8 - 8) + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v27 = (*(v5 + 48))(a1, v6);
          if (v27 >= 2)
          {
            return v27 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v24 = *(v10 + 48);
          v25 = (a1 + v15) & ~v13;

          return v24(v25, v11, v8);
        }
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_33;
  }

LABEL_20:
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

  return v12 + (v23 | v21) + 1;
}

void storeEnumTagSinglePayload for CoreInteractionRepresentableModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(*(a4 + 16) - 8) + 64);
  v14 = *(v11 + 80);
  if (v12 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!v8)
  {
    ++v13;
  }

  v16 = ((v13 + v14) & ~v14) + *(*(v10 - 8) + 64);
  v17 = a3 >= v15;
  v18 = a3 - v15;
  if (v18 == 0 || !v17)
  {
LABEL_21:
    if (v15 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v16 > 3)
  {
    v6 = 1;
    if (v15 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v19 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
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
      v6 = v20;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_21;
  }

  v6 = 4;
  if (v15 < a2)
  {
LABEL_22:
    v21 = ~v15 + a2;
    if (v16 < 4)
    {
      v22 = (v21 >> (8 * v16)) + 1;
      if (v16)
      {
        v23 = v21 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v23;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v16] = v22;
              }

              else
              {
                *&a1[v16] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v21;
      v22 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v16] = v22;
    }

    return;
  }

LABEL_31:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v16] = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v6)
  {
    goto LABEL_37;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v9 >= v12)
  {
    if (v9 >= a2)
    {
      v28 = *(v7 + 56);
      v29 = a2 + 1;

      v28(a1, v29);
    }

    else
    {
      if (v13 <= 3)
      {
        v25 = ~(-1 << (8 * v13));
      }

      else
      {
        v25 = -1;
      }

      if (v13)
      {
        v26 = v25 & (~v9 + a2);
        if (v13 <= 3)
        {
          v27 = v13;
        }

        else
        {
          v27 = 4;
        }

        bzero(a1, v13);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *a1 = v26;
            a1[2] = BYTE2(v26);
          }

          else
          {
            *a1 = v26;
          }
        }

        else if (v27 == 1)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v26;
        }
      }
    }
  }

  else
  {
    v24 = *(v11 + 56);

    v24(&a1[v13 + v14] & ~v14);
  }
}

unint64_t lazy protocol witness table accessor for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform()
{
  result = lazy protocol witness table cache variable for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform;
  if (!lazy protocol witness table cache variable for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform);
  }

  return result;
}

uint64_t partial apply for closure #1 in _CoreInteractionHelperBox.updateValue<A, B>(representable:id:phase:bodyChanged:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(v2 + 16) - 8);
  if (*(*(*(v2 + 32) - 8) + 64) == *(v3 + 64))
  {
    return (*(v3 + 16))(a2, result);
  }

  __break(1u);
  return result;
}

void *partial apply for specialized thunk for @callee_guaranteed () -> (@out A, @error @owned Error)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t destroy for CoreInteractionResponderFilter(id *a1)
{

  swift_weakDestroy();
}

uint64_t initializeWithCopy for CoreInteractionResponderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  *(a1 + 128) = *(a2 + 128);
  v8 = v4;

  swift_weakCopyInit();
  v9 = *(a2 + 144);
  v10 = *(a2 + 152);
  *(a1 + 144) = v9;
  *(a1 + 152) = v10;

  return a1;
}

uint64_t assignWithCopy for CoreInteractionResponderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  swift_weakCopyAssign();
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t initializeWithTake for CoreInteractionResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v4;
  *(a1 + 128) = *(a2 + 128);
  swift_weakTakeInit();
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t assignWithTake for CoreInteractionResponderFilter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v5;
  *(a1 + 128) = *(a2 + 128);
  swift_weakTakeAssign();
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  return a1;
}

uint64_t getEnumTagSinglePayload for CoreInteractionResponderFilter(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for CoreInteractionResponderFilter(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for CoreInteractionEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for CoreInteractionEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for CoreInteractionChildTransform(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CoreInteractionChildTransform and conformance CoreInteractionChildTransform();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined destroy of CoreInteractionViewParentGestureContainerProxy(uint64_t a1)
{
  swift_weakDestroy();
  swift_weakDestroy();
  return a1;
}

uint64_t key path setter for _ViewInputs.textSelectionRepresentation : _ViewInputs(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(a2, v3, v4);
}

uint64_t _ViewInputs.textSelectionRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v2, a1, a2);
}

uint64_t _GraphInputs.textSelectionRepresentation.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v2, a1, a2);
}

uint64_t (*_ViewInputs.textSelectionRepresentation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.textSelectionRepresentation.modify;
}

uint64_t (*_GraphInputs.textSelectionRepresentation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.textSelectionRepresentation.modify;
}

void _ViewInputs.textSelectionRepresentation.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

uint64_t LocalizedStringResource.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for Locale();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(v7 + 16);
  v16(&v21 - v12, v23, v6, v11);
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v15, v5);
  }

  else
  {
    v17 = v22;
    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v15);
    if (v18)
    {
      (*(v17 + 16))(v5, &v18[*(*v18 + 248)], v3);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v3, static LocaleKey.defaultValue);
      (*(v17 + 16))(v5, v19, v3);
    }
  }

  LocalizedStringResource.locale.setter();
  (v16)(v9, v13, v6);
  AttributedString.init(localized:)();
  return (*(v7 + 8))(v13, v6);
}

uint64_t type metadata accessor for LocalizedStringResourceStorage()
{
  result = type metadata singleton initialization cache for LocalizedStringResourceStorage;
  if (!type metadata singleton initialization cache for LocalizedStringResourceStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void LocalizedStringResourceStorage.resolve<A>(into:in:with:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v23 = a1;
  type metadata accessor for TaskPriority?();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];
  v15 = *a3;
  type metadata accessor for NSAttributedString();
  v27 = v13;
  v28 = v14;
  LocalizedStringResource.resolve(in:)(&v27, v12);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_s8RangeSetVy7SwiftUI24AttributedTextFormattingO11ConstraintsV5IndexVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v18 = type metadata accessor for AttributeScopes.SwiftUIAttributes(0);
  v19 = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for specialized closure #1 in AttributeScopeContext.init<A>(scope:constraints:), v21);

  outlined destroy of LocalizedStringKey.FormatArgument(v9, type metadata accessor for TaskPriority?);
  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v22 = NSAttributedString.init(swiftUIAttributedString:in:)(v12, &v27);
  v27 = v13;
  v28 = v14;
  v26 = v15;
  ResolvedTextContainer.append(_:in:with:)(v22, &v27, &v26, v24, v25);
}

uint64_t LocalizedStringResourceStorage.isEqual(to:)()
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;

    v4 = MEMORY[0x193ABCB30](v0 + v3, v2 + v3);

    return v4 & 1;
  }

  return result;
}

BOOL LocalizedStringResourceStorage.isStyled(options:)()
{
  v0 = type metadata accessor for AttributedString();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EnvironmentValues.init()(v7);
  v6[0] = v7[0];
  v6[1] = v7[1];
  LocalizedStringResource.resolve(in:)(v6, v3);

  v4 = AttributedString.isStyled.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t LocalizedStringResourceStorage.localizationInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = LocalizedStringResource.key.getter();
  v7 = v6;
  v8 = LocalizedStringResource.table.getter();
  v10 = v9;
  LocalizedStringResource.bundle.getter();
  v11 = LocalizedStringResource.BundleDescription.swiftUI_resolvedBundle.getter();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v14;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = 64;
  return result;
}

id LocalizedStringResource.BundleDescription.swiftUI_resolvedBundle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E6968E00])
  {
    (*(v7 + 96))(v10, v6);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    return [objc_opt_self() bundleForClass_];
  }

  else if (v11 == *MEMORY[0x1E6968DF8])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v14 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v18 = [v14 initWithURL_];

    (*(v3 + 8))(v5, v2);
    return v18;
  }

  else if (v11 == *MEMORY[0x1E6968DF0])
  {
    return [objc_opt_self() mainBundle];
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }
}

uint64_t LocalizedStringResourceStorage.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t LocalizedStringResourceStorage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUIP33_1A1BB6A07088C23EE7C52846B7BEB81330LocalizedStringResourceStorage_resource;
  v2 = type metadata accessor for LocalizedStringResource();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for LocalizedStringResourceStorage()
{
  result = type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for TaskPriority?()
{
  if (!lazy cache variable for type metadata for TaskPriority?)
  {
    type metadata accessor for TaskPriority();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TaskPriority?);
    }
  }
}

unint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedString);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes)
  {
    type metadata accessor for AttributeScopes.SwiftUIAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes);
  }

  return result;
}

uint64_t outlined destroy of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*ViewTraitCollection.isExpanded.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  *a1 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010IsExpandeddJ0V_Tt0B5(0, 0, 0, *v1);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return ViewTraitCollection.isExpanded.modify;
}

uint64_t ViewTraitCollection.isExpanded.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if ((a2 & 1) == 0)
  {
    return _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA010IsExpandeddG0V_Tt0g5(*a1, v3, v4);
  }

  outlined copy of Binding<Bool>?(*a1, v3);
  _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA010IsExpandeddG0V_Tt0g5(v2, v3, v4);

  return outlined consume of Binding<Bool>?(v2, v3);
}

uint64_t outlined consume of Binding<Bool>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SectionConfiguration.isExpanded.getter()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  IsExpandeddJ0V_Tt0B5 = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010IsExpandeddJ0V_Tt0B5(0, 0, 0, v1);

  return IsExpandeddJ0V_Tt0B5;
}

double static View.makeMountableView(view:inputs:size:proposal:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, unsigned int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v11 = a2[3];
  v57 = a2[2];
  v58 = v11;
  v12 = a2[3];
  v59 = a2[4];
  v13 = a2[1];
  v56[0] = *a2;
  v56[1] = v13;
  v54 = v56[0];
  v55 = v13;
  v53[0] = *(a2 + 36);
  v14 = *a1;
  v60 = *(a2 + 20);
  *(v53 + 12) = v12;
  v15 = v57;
  v16 = HIDWORD(v59);
  outlined init with copy of _ViewInputs(v56, &v48);
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v17 = *(swift_dynamicCastClassUnconditional() + 248);

  *&v48 = __PAIR64__(a4, a3);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MakeViewSize and conformance MakeViewSize();
  v18 = Attribute.init<A>(body:value:flags:update:)();
  v19 = v15 | 0x18;
  v20 = *MEMORY[0x1E698D3F8];
  v21 = a2[1];
  v48 = *a2;
  v49 = v21;
  *v50 = v15 | 0x18;
  *&v50[4] = *(a2 + 36);
  *&v50[16] = a2[3];
  LODWORD(v51) = v17;
  *(&v51 + 4) = __PAIR64__(v18, v17);
  v26 = v16;
  HIDWORD(v51) = v16;
  v52 = v20;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v40 = *v50;
  v41 = *&v50[16];
  v42 = v51;
  v43 = v52;
  v38 = v48;
  v39 = v49;
  v23 = *v50;
  LODWORD(v40) = 0;
  LODWORD(v31[0]) = v14;
  v44[0] = v48;
  v44[1] = v49;
  v45 = v52;
  v44[3] = *&v50[16];
  v44[4] = v51;
  v44[2] = v40;
  *v35 = v40;
  *&v35[16] = *&v50[16];
  v36 = v51;
  v37 = v52;
  v33 = v48;
  v34 = v49;
  v24 = *(a6 + 24);
  outlined init with copy of _ViewInputs(&v48, v46);
  outlined init with copy of _ViewInputs(v44, v46);
  v24(&v29, v31, &v33, a5, a6);
  v46[2] = *v35;
  v46[3] = *&v35[16];
  v46[4] = v36;
  v47 = v37;
  v46[0] = v33;
  v46[1] = v34;
  outlined destroy of _ViewInputs(v46);
  LODWORD(v40) = v23;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v29, &v38);
    AGSubgraphEndTreeElement();
  }

  v31[2] = v40;
  v31[3] = v41;
  v31[4] = v42;
  v32 = v43;
  v31[0] = v38;
  v31[1] = v39;
  outlined destroy of _ViewInputs(v31);
  v33 = v54;
  v34 = v55;
  *v35 = v19;
  *&v35[4] = v53[0];
  *&v35[16] = *(v53 + 12);
  LODWORD(v36) = v17;
  *(&v36 + 4) = __PAIR64__(v18, v17);
  HIDWORD(v36) = v26;
  v37 = v20;
  outlined destroy of _ViewInputs(&v33);
  *a7 = v29;
  result = v30;
  a7[1] = v30;
  return result;
}

uint64_t MountableViewOutputs.makeDisplayList()()
{
  v1 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(*v0);
  if ((v1 & 0x100000000) != 0)
  {
    v2 = 0;
  }

  else
  {
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MakeMountableViewDisplayList and conformance MakeMountableViewDisplayList();
    v2 = Attribute.init<A>(body:value:flags:update:)();
  }

  return v2 | ((HIDWORD(v1) & 1) << 32);
}

unint64_t MountableViewOutputs.makeLayoutComputer()()
{
  v1 = *(v0 + 12);
  v2 = *MEMORY[0x1E698D3F8];
  if (v1 == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
  }

  else
  {
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type MakeMountableViewLayoutComputer and conformance MakeMountableViewLayoutComputer();
    v3 = Attribute.init<A>(body:value:flags:update:)();
  }

  return v3 | ((v1 == v2) << 32);
}

uint64_t MountableViewOutputs.LayoutComputer.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = *v4;
  v10 = one-time initialization token for lockAssertionsAreEnabled;

  if (v10 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v12 = a1;
    v13 = a2 & 1;
    v14 = a3;
    v15 = a4 & 1;
    (*(*v9 + 120))(&v12);
  }

  return result;
}

unint64_t static MountableViewOutputs.DisplayListProxyView._makeView(view:inputs:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v4 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  v14[0] = *(a1 + 56);
  *(v14 + 12) = *(a1 + 68);
  *a2 = MEMORY[0x1E69E7CC0];
  v5 = *MEMORY[0x1E698D3F8];
  *(a2 + 8) = 0;
  *(a2 + 12) = v5;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v15 = *v2;
  v16 = v4;
  v17 = *(v2 + 24);
  v18 = *(v2 + 40);
  v19[0] = *(v2 + 56);
  *(v19 + 12) = *(v2 + 68);
  swift_beginAccess();
  v7 = CachedEnvironment.animatedPosition(for:)(&v15);
  v11 = v4;
  LODWORD(v2) = CachedEnvironment.animatedCGSize(for:)(&v10);
  swift_endAccess();
  *&v15 = __PAIR64__(v7, OffsetAttribute2);
  DWORD2(v15) = v2;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type MountableViewOutputs.DisplayListProxyView.MakeDisplayList and conformance MountableViewOutputs.DisplayListProxyView.MakeDisplayList();
  v8 = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v15) = 0;
  return PreferencesOutputs.subscript.setter(v8, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
}

void MountableViewOutputs.DisplayListProxyView.MakeDisplayList.value.getter(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 12);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  type metadata accessor for CGPoint(0);

  v5 = AGGraphGetValue();
  v6 = *v5;
  v7 = v5[1];
  v8 = ++static DisplayList.Version.lastValue;
  DisplayList.translate(by:version:)(__PAIR128__(v7, v6), &v8);
}

uint64_t MakeViewSize.value.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CGSize(0);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  result = AGGraphGetValue();
  v6 = *result;
  v7 = *(result + 16);
  if (*(result + 8))
  {
    v6 = NAN;
  }

  if (*(result + 24))
  {
    v7 = NAN;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance MakeMountableViewLayoutComputer@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;
}

uint64_t protocol witness for Rule.value.getter in conformance MakeMountableViewDisplayList@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  v4 = *(Value + 12);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
}

unint64_t lazy protocol witness table accessor for type MakeViewSize and conformance MakeViewSize()
{
  result = lazy protocol witness table cache variable for type MakeViewSize and conformance MakeViewSize;
  if (!lazy protocol witness table cache variable for type MakeViewSize and conformance MakeViewSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MakeViewSize and conformance MakeViewSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MakeMountableViewDisplayList and conformance MakeMountableViewDisplayList()
{
  result = lazy protocol witness table cache variable for type MakeMountableViewDisplayList and conformance MakeMountableViewDisplayList;
  if (!lazy protocol witness table cache variable for type MakeMountableViewDisplayList and conformance MakeMountableViewDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MakeMountableViewDisplayList and conformance MakeMountableViewDisplayList);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MakeMountableViewLayoutComputer and conformance MakeMountableViewLayoutComputer()
{
  result = lazy protocol witness table cache variable for type MakeMountableViewLayoutComputer and conformance MakeMountableViewLayoutComputer;
  if (!lazy protocol witness table cache variable for type MakeMountableViewLayoutComputer and conformance MakeMountableViewLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MakeMountableViewLayoutComputer and conformance MakeMountableViewLayoutComputer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MountableViewOutputs.DisplayListProxyView.MakeDisplayList and conformance MountableViewOutputs.DisplayListProxyView.MakeDisplayList()
{
  result = lazy protocol witness table cache variable for type MountableViewOutputs.DisplayListProxyView.MakeDisplayList and conformance MountableViewOutputs.DisplayListProxyView.MakeDisplayList;
  if (!lazy protocol witness table cache variable for type MountableViewOutputs.DisplayListProxyView.MakeDisplayList and conformance MountableViewOutputs.DisplayListProxyView.MakeDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MountableViewOutputs.DisplayListProxyView.MakeDisplayList and conformance MountableViewOutputs.DisplayListProxyView.MakeDisplayList);
  }

  return result;
}

void *assignWithCopy for MountableViewOutputs.LayoutComputer(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for MountableViewOutputs.LayoutComputer(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t NSMutableAttributedString.resolveAttributes(in:)(uint64_t a1)
{
  v3 = type metadata accessor for ResolvableStringResolutionContext(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (one-time initialization token for resolvableTextSegment != -1)
  {
    swift_once();
  }

  v6 = static NSAttributedStringKey.resolvableTextSegment;
  v7 = [v1 length];
  outlined init with copy of ResolvableAttributeConfiguration(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ResolvableStringResolutionContext);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  outlined init with take of ResolvableStringResolutionContext(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in static ResolvableTextSegmentAttribute.update(_:in:);
  *(v10 + 24) = v9;
  aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_13_0;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v12 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{2, v11}];
  _Block_release(v11);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(double *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v81 = a2;
  v82 = a6;
  v79 = a4;
  v87 = *MEMORY[0x1E69E9840];
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v74 - v12;
  v13 = type metadata accessor for AttributedString.LineHeight();
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E6965580];
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v74 - v17;
  v19 = type metadata accessor for AttributedString.TextAlignment();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v74 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v74 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v74 - v33;
  v35 = *a3;
  v78 = *a5;
  v36 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v81, v18, &lazy cache variable for type metadata for AttributedString.TextAlignment?, v15, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of TimelineSchedule?(v18, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
    v37 = type metadata accessor for ParagraphStyleResolutionContext();
    if (*(a1 + *(v37 + 84)) == 2)
    {
      v38 = v35;
    }

    else
    {
      v38 = *(a1 + *(v37 + 84));
    }

    v39 = *(a1 + *(v37 + 80));
    if (v38)
    {
      if (*(a1 + *(v37 + 80)))
      {
        v41 = v85;
        v40 = v86;
        v42 = v83;
        if (v39 == 1)
        {
          v43 = 4;
        }

        else
        {
          v43 = 1;
        }

        [v36 setHorizontalAlignment_];
        goto LABEL_41;
      }

      v51 = v36;
      v52 = 0;
      goto LABEL_39;
    }

    if (a1[2])
    {
      v47 = v77;
      v48 = v75;
      if (*(a1 + *(v37 + 80)))
      {
        if (v39 == 1)
        {
          v49 = MEMORY[0x1E6965578];
        }

        else
        {
          v49 = MEMORY[0x1E6965570];
        }
      }

      else
      {
        v49 = MEMORY[0x1E6965568];
      }

      goto LABEL_32;
    }

    v47 = v77;
    v48 = v75;
    if (*(a1 + *(v37 + 80)))
    {
      if (v39 == 1)
      {
        v49 = MEMORY[0x1E6965578];
LABEL_32:
        (*(v20 + 104))(v75, *v49, v19);
        (*(v20 + 32))(v47, v48, v19);
        v53 = v76;
        (*(v20 + 16))(v76, v47, v19);
        v54 = (*(v20 + 88))(v53, v19);
        if (v54 == *MEMORY[0x1E6965568])
        {
          v55 = 2;
LABEL_38:
          (*(v20 + 8))(v47, v19);
          v51 = v36;
          v52 = v55;
LABEL_39:
          [v51 setHorizontalAlignment_];
          goto LABEL_40;
        }

        if (v54 == *MEMORY[0x1E6965578])
        {
          v55 = 4;
          goto LABEL_38;
        }

        if (v54 == *MEMORY[0x1E6965570])
        {
          v55 = 3;
          goto LABEL_38;
        }

LABEL_70:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      if (*(a1 + 18))
      {
LABEL_31:
        v49 = MEMORY[0x1E6965568];
        goto LABEL_32;
      }
    }

    else if ((*(a1 + 18) & 1) == 0)
    {
      goto LABEL_31;
    }

    v49 = MEMORY[0x1E6965570];
    goto LABEL_32;
  }

  (*(v20 + 32))(v34, v18, v19);
  v44 = *(v20 + 16);
  v44(v31, v34, v19);
  v44(v28, v31, v19);
  v45 = (*(v20 + 88))(v28, v19);
  if (v45 == *MEMORY[0x1E6965568])
  {
    v46 = 2;
  }

  else if (v45 == *MEMORY[0x1E6965578])
  {
    v46 = 4;
  }

  else
  {
    if (v45 != *MEMORY[0x1E6965570])
    {
      goto LABEL_70;
    }

    v46 = 3;
  }

  v50 = *(v20 + 8);
  v50(v31, v19);
  [v36 setHorizontalAlignment_];
  v50(v34, v19);
LABEL_40:
  v41 = v85;
  v40 = v86;
  v42 = v83;
LABEL_41:
  v56 = *(a1 + 2);
  v57 = *a1;
  if (v57 == 2)
  {
    [v36 setFullyJustified_];
  }

  else
  {
    [v36 setFullyJustified_];
    v56 |= v57;
  }

  [v36 setSpansAllLines_];
  v58 = type metadata accessor for ParagraphStyleResolutionContext();
  [v36 setLineBreakMode_];
  [v36 setLineSpacing_];
  [v36 setLineBreakStrategy_];
  if ((*(a1 + 3) & 1) == 0)
  {
    [v36 setLineBreakStrategy_];
  }

  [v36 setLineHeightMultiple_];
  [v36 setMaximumLineHeight_];
  [v36 setMinimumLineHeight_];
  if (*(a1 + v58[19]))
  {
    v59 = 0.0;
    v60 = 2;
  }

  else
  {
    v60 = 0;
    v59 = *(a1 + v58[18]);
    *&v59 = v59;
  }

  [v36 setHyphenationFactor_];
  [v36 setSecondaryLineBreakMode_];
  v61 = a1[1];
  [v36 setFirstLineHeadIndent_];
  v62 = *(a1 + 16);
  if (v61 <= 0.0)
  {
    if (v79 == 2)
    {
      v64 = *(a1 + 17);
      if (v64 == 2)
      {
        LOBYTE(v64) = v78;
      }

      if (v64)
      {
        v63 = -1;
      }

      else
      {
        v63 = (v62 ^ 1) & *(a1 + 18);
      }
    }

    else
    {
      v63 = v79 & 1;
    }
  }

  else if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = *(a1 + 18);
  }

  [v36 setBaseWritingDirection_];
  [v36 setAllowsDefaultTighteningForTruncation_];
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v82, v42, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v65 = *(v41 + 48);
  if (v65(v42, 1, v40) == 1)
  {
    v66 = a1 + v58[12];
    v67 = v84;
    _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v66, v84, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
    if (v65(v42, 1, v40) != 1)
    {
      outlined destroy of TimelineSchedule?(v42, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
    }
  }

  else
  {
    v67 = v84;
    (*(v41 + 32))(v84, v42, v40);
    (*(v41 + 56))(v67, 0, 1, v40);
  }

  if (v65(v67, 1, v40) == 1)
  {
    outlined destroy of TimelineSchedule?(v67, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  }

  else
  {
    v68 = v80;
    (*(v41 + 32))(v80, v67, v40);
    v69 = CTLineHeightToNSParagraphStyleBaselineIntervalType();
    if (v69 < 0)
    {
      __break(1u);
    }

    v70 = v69;
    CTLineHeightToNSParagraphStyleBaselineInterval();
    v72 = v71;
    [v36 setBaselineIntervalType_];
    [v36 setBaselineInterval_];
    (*(v41 + 8))(v68, v40);
  }

  return v36;
}

uint64_t makeParagraphStyle(environment:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v12 = type metadata accessor for ParagraphStyleResolutionContext();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[1];
  LOBYTE(a3) = *a3;
  LOBYTE(a5) = *a5;
  v20[0] = *a1;
  v20[1] = v15;

  ParagraphStyleResolutionContext.init(_:)(v20, v14);
  LOBYTE(v20[0]) = a3;
  v19 = a5;
  v16 = makeParagraphStyle(context:alignment:fallbackAlignment:writingDirection:fallbackWritingDirection:lineHeight:)(v14, a2, v20, a4, &v19, a6);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v14, type metadata accessor for ParagraphStyleResolutionContext);
  return v16;
}

uint64_t ParagraphStyleResolutionContext.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v8 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v8, &v58);

    v49 = v58;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020ParagraphTypesettingI033_D39DBD719189F2769C15C168465CE407LLVG_Tt1g5(v8, &v57);

    v51 = v57;

    v50 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013AvoidsOrphansI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    v9 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015BodyHeadOutdentI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v8, v56);

    v48 = v56[0];

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt1g5(v8, &v55);

    v10 = v55;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v8, &v54);

    v11 = v54;

    v12 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016AllowsTighteningI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt1g5(v8, v6);

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8, v53);

    v13 = v6;
    v14 = LOBYTE(v53[0]);

    v15 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011LineSpacingI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    v16 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018LineHeightMultipleI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    v17 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MaximumLineHeightI0VG_Tt1g5(v8);

    v18 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MinimumLineHeightI0VG_Tt1g5(v8);

    v19 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017HyphenationFactorI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);

    v20 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v8);
  }

  else
  {
    v21 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(*a1);
    if (v21)
    {
      v22 = *(v21 + 36);
    }

    else
    {
      v22 = 2;
    }

    type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v23);
    v24 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA020ParagraphTypesettingV033_D39DBD719189F2769C15C168465CE407LLVG_Tt0B5(v8, v53[0]);
    if (v24)
    {
      v25 = *(v24 + 72);
    }

    else
    {
      v25 = 0;
    }

    v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AvoidsOrphansF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v8);
    v27 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015BodyHeadOutdentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    if (v27)
    {
      v9 = v27[9];
    }

    else
    {
      v9 = 0.0;
    }

    v28 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(v8);
    if (v28)
    {
      v29 = *(v28 + 72);
    }

    else
    {
      v29 = 0;
    }

    type metadata accessor for EnvironmentPropertyKey<TextScaleKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
    BloomFilter.init(hashValue:)(v30);
    v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V21_textWritingDirection33_723A1655B91CD5235F53DF738384EB0BLLVG_Tt0B5(v8, v53[0]);
    if (v31)
    {
      v32 = *(v31 + 72);
    }

    else
    {
      v32 = 2;
    }

    v51 = v25;
    v33 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v8);
    v47 = v32;
    v50 = v26;
    if (v33)
    {
      v11 = *(v33 + 72);
    }

    else
    {
      v11 = 0;
    }

    v12 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA016AllowsTighteningF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v8);
    v13 = v6;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F11_lineHeight33_45A852A73BEF313599F8AEDEA4BAAE07LLVG_Tt2g5(v8, v6);
    v34 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    if (v34)
    {
      v14 = *(v34 + 72);
    }

    else
    {
      v14 = 3;
    }

    v35 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    v16 = 0.0;
    v15 = 0.0;
    if (v35)
    {
      v15 = v35[9];
    }

    v36 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    if (v36)
    {
      v16 = v36[9];
    }

    v37 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(v8);
    v18 = 0.0;
    v17 = 0.0;
    if (v37)
    {
      v17 = v37[9];
    }

    v38 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(v8);
    if (v38)
    {
      v18 = v38[9];
    }

    v39 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    if (v39)
    {
      v19 = v39[9];
    }

    else
    {
      v19 = 0.0;
    }

    v40 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v8);
    v48 = v29;
    v49 = v22;
    if (v40)
    {
      v20 = *(v40 + 72);
    }

    else
    {
      v20 = 0;
    }

    v10 = v47;
  }

  if (v14 == 3)
  {
    LOBYTE(v14) = 1;
  }

  v53[0] = v8;
  v53[1] = v7;
  v41 = EnvironmentValues.multilineTextAlignment.getter();
  _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA4TextVAAE17AlignmentStrategyV0cG0V_Tt0B5(v8, v7, &v52);

  v42 = v52;
  *a2 = v49;
  v43 = v50;
  *(a2 + 2) = v51;
  *(a2 + 3) = v43 & 1;
  *(a2 + 8) = v9;
  *(a2 + 16) = v48;
  *(a2 + 17) = v10;
  *(a2 + 18) = v11;
  *(a2 + 19) = v12 & 1;
  v44 = type metadata accessor for ParagraphStyleResolutionContext();
  result = outlined init with take of AttributedString.LineHeight?(v13, a2 + v44[12]);
  *(a2 + v44[13]) = v14;
  *(a2 + v44[14]) = v15;
  *(a2 + v44[15]) = v16;
  *(a2 + v44[16]) = v17;
  *(a2 + v44[17]) = v18;
  *(a2 + v44[18]) = v19;
  *(a2 + v44[19]) = v20 & 1;
  *(a2 + v44[20]) = v41;
  *(a2 + v44[21]) = v42;
  return result;
}

uint64_t ParagraphStyleResolutionContext.lineHeight.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ParagraphStyleResolutionContext() + 48);

  return outlined assign with take of AttributedString.LineHeight?(a1, v3);
}

uint64_t ParagraphStyleResolutionContext.truncationMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t ParagraphStyleResolutionContext.truncationMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t ParagraphStyleResolutionContext.lineSpacing.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.lineHeightMultiple.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.maximumLineHeight.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.minimumLineHeight.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.hyphenationFactor.setter(double a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.hyphenationDisabled.setter(char a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.multilineTextAlignment.setter(char a1)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t ParagraphStyleResolutionContext.textAlignmentStrategy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t ParagraphStyleResolutionContext.textAlignmentStrategy.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ParagraphStyleResolutionContext();
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t one-time initialization function for resolvableAttributeConfiguration()
{
  result = MEMORY[0x193ABEC20](0xD000000000000028, 0x800000018DD79F30);
  static NSAttributedStringKey.resolvableAttributeConfiguration = result;
  return result;
}

uint64_t one-time initialization function for _textScaleStaticWeightMatching()
{
  result = MEMORY[0x193ABEC20](0xD00000000000001FLL, 0x800000018DD79F10);
  static NSAttributedStringKey._textScaleStaticWeightMatching = result;
  return result;
}

id static NSAttributedStringKey.resolvableAttributeConfiguration.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void NSAttributedString.firstAttribute<A>(_:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = static ResolvableStringAttributeRepresentation.attribute.getter();
  NSAttributedString.firstAttribute<A>(_:name:)(v4, a1, a2);
}

uint64_t NSMutableAttributedString.addResolvableAttributes(with:)(uint64_t a1)
{
  v3 = type metadata accessor for ResolvableAttributeConfiguration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  outlined init with copy of ResolvableAttributeConfiguration(a1, &v12 - v7, type metadata accessor for ResolvableAttributeConfiguration);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        return result;
      }

      goto LABEL_9;
    }

    v10 = type metadata accessor for DateInterval();
    goto LABEL_8;
  }

  if (result)
  {
    v10 = type metadata accessor for Date();
LABEL_8:
    (*(*(v10 - 8) + 8))(v8, v10);
  }

LABEL_9:
  if (one-time initialization token for resolvableAttributeConfiguration != -1)
  {
    swift_once();
  }

  v11 = static NSAttributedStringKey.resolvableAttributeConfiguration;
  outlined init with copy of ResolvableAttributeConfiguration(a1, v5, type metadata accessor for ResolvableAttributeConfiguration);
  [v1 addAttribute:v11 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() range:{0, objc_msgSend(v1, sel_length)}];
  return swift_unknownObjectRelease();
}

id EnvironmentValues.resolveNSAttributes(includeDefaultAttributes:options:)(int a1, uint64_t *a2)
{
  v5 = type metadata accessor for Text.Style(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = *v2;
  v10 = v2[1];
  LOWORD(v19) = 0;
  v17 = 0u;
  v18 = 0u;
  v11 = MEMORY[0x1E69E7CC0];
  *(&v19 + 1) = MEMORY[0x1E69E7CC0];
  *&v20[0] = MEMORY[0x1E69E7CC0];
  *(v20 + 8) = 0u;
  *(&v20[1] + 8) = 0u;
  *(&v20[2] + 1) = 0;
  v21 = xmmword_18DD85510;

  v22 = v11;
  *&v23[1] = 0;
  v23[0] = MEMORY[0x1E69E7CD0];
  BYTE8(v23[1]) = 3;
  Text.Style.init()(v7);
  v16[0] = v9;
  v16[1] = v10;
  v15 = v8;
  v12 = Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(0, 0, v16, a1, &v15, &v17);
  _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v7, type metadata accessor for Text.Style);
  v24[6] = v21;
  v24[7] = v22;
  v25[0] = v23[0];
  *(v25 + 9) = *(v23 + 9);
  v24[2] = v19;
  v24[3] = v20[0];
  v24[4] = v20[1];
  v24[5] = v20[2];
  v24[0] = v17;
  v24[1] = v18;
  outlined destroy of Text.ResolvedProperties(v24);
  return v12;
}

id NSAttributedString.scaled(by:)(double a1)
{
  if (a1 == 1.0)
  {

    return v1;
  }

  else
  {
    v3 = [v1 _ui_attributedSubstringFromRange_scaledByScaleFactor_];

    return v3;
  }
}

void NSAttributedString.EncodedFontMetrics.outsets.setter(double a1, double a2, double a3, double a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

BOOL closure #1 in Text.Style.nsAttributes(content:environment:includeDefaultAttributes:with:properties:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for Text.Style(0) + 108));
  v4 = (*(*v2 + 112))();
  if (!specialized Set.contains(_:)(v4, v3))
  {
    type metadata accessor for AnyDynamicFontModifier<LanguageAwareLineHeightRatioFontModifier>(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier);
    v6 = swift_dynamicCastClass();
    if (!v6 || *(v6 + 16) < 0.3)
    {
      return 1;
    }

    if (one-time initialization token for v7 != -1)
    {
      swift_once();
    }

    v8 = static Semantics.v7;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if (dyld_program_sdk_at_least())
      {
        return 1;
      }
    }

    else if (static Semantics.forced >= v8)
    {
      return 1;
    }

    return !specialized Set.contains(_:)(&type metadata for Font.BoldModifier, v3);
  }

  return 0;
}

uint64_t _s7SwiftUI17EnvironmentValuesVAAEy5ValueQzxmcAA07BridgedC3KeyRzluigAA4TextVAAE17AlignmentStrategyV0cG0V_Tt0B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = a1;
  v9 = a2;
  if (EnvironmentValues.bridgedEnvironmentResolver.getter())
  {
    v8 = a1;
    v9 = a2;
    return (*(v6 + 8))(&type metadata for Text.AlignmentStrategy.EnvironmentKey, &v8, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey);
  }

  else if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA4TextVAAE17AlignmentStrategyV0jI0VG_Tt1g5(a1, a3);
  }

  else
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA4TextVAAE17AlignmentStrategyV0gF0VG_Tt2g5(a1, a3);
  }
}

uint64_t _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ParagraphStyleResolutionContext()
{
  result = type metadata singleton initialization cache for ParagraphStyleResolutionContext;
  if (!type metadata singleton initialization cache for ParagraphStyleResolutionContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined copy of Text.Style.LineStyle(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t outlined init with take of AttributedString.LineHeight?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of AttributedString.LineHeight?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized static ParagraphStyleResolutionContext.== infix(_:_:)(double *a1, double *a2)
{
  v4 = type metadata accessor for AttributedString.LineHeight();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)();
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  if (*a1 == 2)
  {
    if (v15 != 2)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v15 == 2)
    {
LABEL_30:
      v16 = 0;
      return v16 & 1;
    }

    v16 = 0;
    v17 = *a2 ^ *a1;
    if (v17 & 1) != 0 || ((v17 >> 8))
    {
      return v16 & 1;
    }
  }

  if (*(a1 + 2) != *(a2 + 2))
  {
    goto LABEL_30;
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    goto LABEL_30;
  }

  if (a1[1] != a2[1])
  {
    goto LABEL_30;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_30;
  }

  v18 = v12;
  v36 = *(a1 + 17);
  v35 = *(a2 + 17);
  if ((specialized static Text.WritingDirectionStrategy.== infix(_:_:)(&v36, &v35) & 1) == 0 || *(a1 + 18) != *(a2 + 18) || *(a1 + 19) != *(a2 + 19))
  {
    goto LABEL_30;
  }

  v19 = type metadata accessor for ParagraphStyleResolutionContext();
  v20 = *(v19 + 48);
  v31 = v19;
  v32 = v20;
  v21 = *(v18 + 48);
  v22 = MEMORY[0x1E6965590];
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(a1 + v20, v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v23 = a2 + v32;
  v32 = v21;
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v23, &v14[v21], &lazy cache variable for type metadata for AttributedString.LineHeight?, v22, _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v24 = *(v5 + 48);
  if (v24(v14, 1, v4) == 1)
  {
    if (v24(&v14[v32], 1, v4) == 1)
    {
      outlined destroy of TimelineSchedule?(v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(v14, v10, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  v25 = v32;
  if (v24(&v14[v32], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_19:
    _s10Foundation16AttributedStringV8CoreTextE10LineHeightVSg_AGtWOhTm_0(v14, type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?));
    goto LABEL_30;
  }

  (*(v5 + 32))(v7, &v14[v25], v4);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_1(&lazy protocol witness table cache variable for type AttributedString.LineHeight and conformance AttributedString.LineHeight, MEMORY[0x1E6965590]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v5 + 8);
  v27(v7, v4);
  v27(v10, v4);
  outlined destroy of TimelineSchedule?(v14, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590], _s7SwiftUI16TimelineSchedule_pSgMaTm_0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_21:
  if (*(a1 + v31[13]) != *(a2 + v31[13]) || *(a1 + v31[14]) != *(a2 + v31[14]) || *(a1 + v31[15]) != *(a2 + v31[15]) || *(a1 + v31[16]) != *(a2 + v31[16]) || *(a1 + v31[17]) != *(a2 + v31[17]) || *(a1 + v31[18]) != *(a2 + v31[18]) || *(a1 + v31[19]) != *(a2 + v31[19]) || *(a1 + v31[20]) != *(a2 + v31[20]))
  {
    goto LABEL_30;
  }

  v28 = v31[21];
  v34 = *(a1 + v28);
  v33 = *(a2 + v28);
  v16 = specialized static Text.WritingDirectionStrategy.== infix(_:_:)(&v34, &v33);
  return v16 & 1;
}

char *initializeBufferWithCopyOfBuffer for ParagraphStyleResolutionContext(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 19) = *(a2 + 19);
    v7 = a3[12];
    v8 = type metadata accessor for AttributedString.LineHeight();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2 + v7, 1, v8))
    {
      _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      memcpy(&v4[v7], a2 + v7, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], a2 + v7, v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }

    v12 = a3[14];
    v4[a3[13]] = *(a2 + a3[13]);
    *&v4[v12] = *(a2 + v12);
    v13 = a3[16];
    *&v4[a3[15]] = *(a2 + a3[15]);
    *&v4[v13] = *(a2 + v13);
    v14 = a3[18];
    *&v4[a3[17]] = *(a2 + a3[17]);
    *&v4[v14] = *(a2 + v14);
    v15 = a3[20];
    v4[a3[19]] = *(a2 + a3[19]);
    v4[v15] = *(a2 + v15);
    v4[a3[21]] = *(a2 + a3[21]);
  }

  return v4;
}

uint64_t destroy for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = type metadata accessor for AttributedString.LineHeight();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

uint64_t initializeWithCopy for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = a3[12];
  v7 = type metadata accessor for AttributedString.LineHeight();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t assignWithCopy for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = a3[12];
  v7 = type metadata accessor for AttributedString.LineHeight();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + a3[18]) = *(a2 + a3[18]);
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + a3[20]) = *(a2 + a3[20]);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t initializeWithTake for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = a3[12];
  v7 = type metadata accessor for AttributedString.LineHeight();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v11) = *(a2 + v11);
  v12 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v12) = *(a2 + v12);
  v13 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t assignWithTake for ParagraphStyleResolutionContext(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = a3[12];
  v7 = type metadata accessor for AttributedString.LineHeight();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1 + v6, 1, v7);
  v11 = v9(a2 + v6, 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(a1 + v6, a2 + v6, v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(a1 + v6, v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    memcpy((a1 + v6), (a2 + v6), *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(a1 + v6, a2 + v6, v7);
  (*(v8 + 56))(a1 + v6, 0, 1, v7);
LABEL_7:
  v13 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v13) = *(a2 + v13);
  v14 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v14) = *(a2 + v14);
  v15 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v15) = *(a2 + v15);
  v16 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v16) = *(a2 + v16);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

void type metadata completion function for ParagraphStyleResolutionContext()
{
  _s7SwiftUI16TimelineSchedule_pSgMaTm_0(319, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for (AttributedString.LineHeight?, AttributedString.LineHeight?)()
{
  if (!lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?))
  {
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(255, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AttributedString.LineHeight?, AttributedString.LineHeight?));
    }
  }
}

void *EnvironmentValues.textJustification.getter@<X0>(__int16 *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v3, a1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(*v1);
    if (result)
    {
      v5 = *(result + 36);
    }

    else
    {
      v5 = 2;
    }

    *a1 = v5;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TextJustification.Full.CodingKeys()
{
  if (*v0)
  {
    return 0x656C626978656C66;
  }

  else
  {
    return 0x73656E694C6C6C61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TextJustification.Full.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656E694C6C6C61 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C626978656C66 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextJustification.Full.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextJustification.Full.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextJustification.Full.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TextJustification.Full.CodingKeys>, lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys, &unk_1F0068BE8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v11 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  v8 = v10[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void TextJustification.Full.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int TextJustification.Full.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t TextJustification.Full.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = a2;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TextJustification.Full.CodingKeys>, lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys, &unk_1F0068BE8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v13;
    v15 = 0;
    v16 = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v14 = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v16;
    v9[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextJustification.Full()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance TextJustification.Full()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextJustification.Full()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL static TextJustification.Storage.== infix(_:_:)(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return (*a2 ^ *a1 ^ 1) & (((*a2 & 0x100) == 0) ^ ((*a1 & 0x100) >> 8)) & 1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TextJustification.Storage.CodingKeys()
{
  if (*v0)
  {
    return 1819047270;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TextJustification.Storage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1819047270 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextJustification.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextJustification.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TextJustification.Storage.FullCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextJustification.Storage.FullCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextJustification.Storage.FullCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextJustification.Storage.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextJustification.Storage.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TextJustification.Storage.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TextJustification.Storage.FullCodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys, &unk_1F0068B58, MEMORY[0x1E69E6F58]);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TextJustification.Storage.NoneCodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys, &unk_1F0068AC8, v3);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TextJustification.Storage.CodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys, &unk_1F0068AA8, v3);
  v25 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13 == 2)
  {
    v26 = 0;
    lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys();
    v14 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v8, v21);
    return (*(v10 + 8))(v12, v14);
  }

  else
  {
    v28 = 1;
    lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys();
    v16 = v22;
    v17 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v13 & 0x101;
    lazy protocol witness table accessor for type TextJustification.Full and conformance TextJustification.Full();
    v18 = v24;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v16, v18);
    return (*(v10 + 8))(v12, v17);
  }
}

uint64_t TextJustification.Storage.init(from:)@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v35 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TextJustification.Storage.FullCodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys, &unk_1F0068B58, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v30 - v6;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TextJustification.Storage.NoneCodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys, &unk_1F0068AC8, v3);
  v8 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TextJustification.Storage.CodingKeys>, lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys, &unk_1F0068AA8, v3);
  v12 = v11;
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys();
  v15 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_7;
  }

  v17 = v34;
  v16 = v35;
  v37 = a1;
  v18 = v14;
  v19 = KeyedDecodingContainer.allKeys.getter();
  if (*(v19 + 16) != 1)
  {
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v23 = &type metadata for TextJustification.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v36 + 8))(v18, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v26 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  if (*(v19 + 32))
  {
    v41 = 1;
    lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v36;
    v31 = v14;
    lazy protocol witness table accessor for type TextJustification.Full and conformance TextJustification.Full();
    v25 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v33 + 8))(v17, v25);
    (*(v20 + 8))(v31, v12);
    swift_unknownObjectRelease();
    if (v40)
    {
      v29 = 256;
    }

    else
    {
      v29 = 0;
    }

    v28 = v29 | v39;
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v36;
    (*(v31 + 1))(v10, v8);
    (*(v24 + 8))(v14, v12);
    swift_unknownObjectRelease();
    v28 = 2;
  }

  *v16 = v28;
  v26 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 22;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 26;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextJustification.Storage(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  return (*a2 ^ *a1 ^ 1) & (((*a2 & 0x100) == 0) ^ ((*a1 & 0x100) >> 8)) & 1;
}

void *static TextJustification.full.getter@<X0>(void *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X8>)
{
  if (*result != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a3 = v4;
    a2 = v3;
  }

  *a3 = *a2;
  return result;
}

uint64_t static TextJustification.stretched(_:)@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  if (result)
  {
    v2 = 257;
  }

  else
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t static TextJustification.full(allLines:flexible:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _WORD *a3@<X8>)
{
  if (a2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *a3 = v3 & 0xFFFE | result & 1;
  return result;
}

BOOL static TextJustification.== infix(_:_:)(_WORD *a1, _WORD *a2)
{
  v2 = *a2;
  if (*a1 == 2)
  {
    return v2 == 2;
  }

  if (v2 == 2)
  {
    return 0;
  }

  v4 = *a2 ^ *a1;
  return (v4 & 1) == 0 && ((v4 >> 8) & 1) == 0;
}

void TextJustification.Storage.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    MEMORY[0x193AC11A0](0);
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v1 & 1);
    Hasher._combine(_:)(HIBYTE(v1) & 1);
  }
}

Swift::Int TextJustification.Storage.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    MEMORY[0x193AC11A0](0);
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v1 & 1);
    Hasher._combine(_:)(HIBYTE(v1) & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextJustification.Storage()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  if (*v0 == 2)
  {
    MEMORY[0x193AC11A0](0);
  }

  else
  {
    MEMORY[0x193AC11A0](1);
    Hasher._combine(_:)(v1 & 1);
    Hasher._combine(_:)(HIBYTE(v1) & 1);
  }

  return Hasher._finalize()();
}

uint64_t key path getter for EnvironmentValues.textJustification : EnvironmentValues@<X0>(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 2;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.textJustification : EnvironmentValues(unsigned __int16 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017TextJustificationF033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017TextJustificationK033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Ttg5(v3, *a2);
  }
}

uint64_t EnvironmentValues.textJustification.setter(unsigned __int16 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017TextJustificationF033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017TextJustificationK033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Ttg5(v3, *v2);
  }
}

void (*EnvironmentValues.textJustification.modify(__int16 **a1))(uint64_t *a1)
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
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017TextJustificationI033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt1g5(v5, v4 + 20);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017TextJustificationS033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 36);
    }

    else
    {
      v8 = 2;
    }

    v4[20] = v8;
  }

  return EnvironmentValues.textJustification.modify;
}

void EnvironmentValues.textJustification.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA017TextJustificationF033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA017TextJustificationK033_F89CCC57FFF9CABCAC4F565338DE677CLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t View.justification(_:)(__int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

unint64_t lazy protocol witness table accessor for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Full.CodingKeys and conformance TextJustification.Full.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys()
{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.FullCodingKeys and conformance TextJustification.Storage.FullCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.NoneCodingKeys and conformance TextJustification.Storage.NoneCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Storage.CodingKeys and conformance TextJustification.Storage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextJustification.Full and conformance TextJustification.Full()
{
  result = lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full;
  if (!lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full;
  if (!lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full;
  if (!lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification.Full and conformance TextJustification.Full);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<TextJustification.Full.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TextJustification and conformance TextJustification()
{
  result = lazy protocol witness table cache variable for type TextJustification and conformance TextJustification;
  if (!lazy protocol witness table cache variable for type TextJustification and conformance TextJustification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification and conformance TextJustification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextJustification and conformance TextJustification;
  if (!lazy protocol witness table cache variable for type TextJustification and conformance TextJustification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextJustification and conformance TextJustification);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextJustification(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for TextJustification(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextJustification.Storage(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for TextJustification.Storage(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_WORD *destructiveInjectEnumTag for TextJustification.Storage(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TextJustification>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextJustification>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextJustification>);
    }
  }
}

uint64_t HStack._tree.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _VariadicView.Tree();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HStack._tree.setter(uint64_t a1)
{
  v3 = type metadata accessor for _VariadicView.Tree();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static _HStackLayout.implicitRoot.getter()
{
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  return static VerticalAlignment.center;
}

uint64_t protocol witness for static _VariadicView_ImplicitRoot.implicitRoot.getter in conformance _HStackLayout@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for center != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static VerticalAlignment.center;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t HStackLayout.spacing.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

void UnitRect.init(x:y:width:height:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void UnitRect.init(point:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

__C::CGRect __swiftcall UnitRect.in(_:)(CGSize a1)
{
  v2 = v1[2] * a1.width;
  v3 = v1[3] * a1.height;
  v4 = *v1 * a1.width;
  v5 = v1[1] * a1.height;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

__C::CGRect __swiftcall UnitRect.in(_:)(__C::CGRect a1)
{
  v2 = *v1 * a1.size.width + a1.origin.x;
  v3 = v1[1] * a1.size.height + a1.origin.y;
  v4 = v1[2] * a1.size.width;
  v5 = v1[3] * a1.size.height;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

double static UnitRect.one.getter@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for one != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&static UnitRect.one;
  v2 = xmmword_1ED52E568;
  *a1 = static UnitRect.one;
  a1[1] = v2;
  return result;
}

uint64_t UnitRect.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x193AC11E0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x193AC11E0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x193AC11E0](*&v7);
}

Swift::Int UnitRect.hashValue.getter()
{
  Hasher.init(_seed:)();
  UnitRect.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitRect()
{
  Hasher.init(_seed:)();
  UnitRect.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitRect()
{
  Hasher.init(_seed:)();
  UnitRect.hash(into:)();
  return Hasher._finalize()();
}

float64x2_t UnitRect.animatableData.setter(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  a1.f64[1] = a2;
  v5 = vdupq_n_s64(0x3F80000000000000uLL);
  result = vmulq_f64(a1, v5);
  a3.f64[1] = a4;
  *v4 = result;
  v4[1] = vmulq_f64(a3, v5);
  return result;
}

__n128 (*UnitRect.animatableData.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = vdupq_n_s64(0x4060000000000000uLL);
  v5 = vmulq_f64(*v1, v4);
  v6 = vmulq_f64(v1[1], v4);
  *v3 = v5;
  *(v3 + 16) = v6;
  return UnitRect.animatableData.modify;
}

__n128 UnitRect.animatableData.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 32);
  v3 = vdupq_n_s64(0x3F80000000000000uLL);
  v4 = vmulq_f64(*v1, v3);
  v5 = vmulq_f64(*(v1 + 16), v3);
  *v2 = v4;
  v2[1] = v5;
  free(v1);
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.getter in conformance UnitRect@<Q0>(float64x2_t *a1@<X8>)
{
  v2 = vdupq_n_s64(0x4060000000000000uLL);
  v3 = vmulq_f64(*v1, v2);
  result = vmulq_f64(v1[1], v2);
  *a1 = v3;
  a1[1] = result;
  return result;
}

float64x2_t protocol witness for Animatable.animatableData.setter in conformance UnitRect(float64x2_t *a1)
{
  v2 = vdupq_n_s64(0x3F80000000000000uLL);
  v3 = vmulq_f64(*a1, v2);
  result = vmulq_f64(a1[1], v2);
  *v1 = v3;
  v1[1] = result;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance UnitRect(uint64_t **a1))(void *a1)
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
  v2[4] = UnitRect.animatableData.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

uint64_t lazy protocol witness table accessor for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 CoordinateSpaceGesture.init(coordinateSpace:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 25);
  *(a2 + 25) = result;
  return result;
}

uint64_t static CoordinateSpaceGesture._makeGesture(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, void (*a3)(__int128 *))
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2[3];
  v4 = a2[5];
  v51 = a2[4];
  v52 = v4;
  *v53 = a2[6];
  *&v53[12] = *(a2 + 108);
  v5 = a2[1];
  v47 = *a2;
  v48 = v5;
  v6 = a2[3];
  v8 = *a2;
  v7 = a2[1];
  v49 = a2[2];
  v50 = v6;
  v44 = v3;
  v45 = v51;
  v46[0] = a2[5];
  *(v46 + 12) = *(a2 + 92);
  v41 = v8;
  v42 = v7;
  v9 = *a1;
  v10 = *&v53[24];
  v43 = v49;
  v19 = *&v53[16];
  v11 = *&v53[12];
  outlined init with copy of _GestureInputs(&v47, &v35);
  AGGraphClearUpdate();
  v12 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v37 = v49;
  v38 = v50;
  v39 = v51;
  *v40 = v52;
  v35 = v47;
  v36 = v48;
  swift_beginAccess();
  v13 = CachedEnvironment.animatedPosition(for:)(&v35);
  swift_endAccess();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  v39 = v51;
  *v40 = v52;
  *&v40[16] = *v53;
  *&v40[28] = *&v53[12];
  v35 = v47;
  v36 = v48;
  v37 = v49;
  v38 = v50;
  v14 = _GestureInputs.transform.getter();
  *&v35 = __PAIR64__(v11, v9);
  *(&v35 + 1) = __PAIR64__(v14, v13);
  v22 = type metadata accessor for CoordinateSpaceEvents();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<[EventID : EventType]>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v35, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_7, v21, v22, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v17 = v33[0];
  *&v32[12] = *(v46 + 12);
  v31[4] = v45;
  *v32 = v46[0];
  v31[0] = v41;
  v31[1] = v42;
  v31[2] = v43;
  v31[3] = v44;
  *&v32[28] = v33[0];
  *&v32[32] = v19;
  *&v32[40] = v10 | 1;
  v30[0] = *&v32[16];
  *(v30 + 12) = *&v32[28];
  v28 = v45;
  v29 = v46[0];
  v24 = v41;
  v25 = v42;
  v26 = v43;
  v27 = v44;
  outlined init with copy of _GestureInputs(v31, &v35);
  a3(&v24);
  v33[4] = v28;
  v33[5] = v29;
  v34[0] = v30[0];
  *(v34 + 12) = *(v30 + 12);
  v33[0] = v24;
  v33[1] = v25;
  v33[2] = v26;
  v33[3] = v27;
  outlined destroy of _GestureInputs(v33);
  v39 = v45;
  *v40 = v46[0];
  *&v40[12] = *(v46 + 12);
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  *&v40[28] = v17;
  *&v40[32] = v19;
  *&v40[40] = v10 | 1;
  return outlined destroy of _GestureInputs(&v35);
}

uint64_t Gesture.coordinateSpace(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of CoordinateSpace(a1, v7);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for CoordinateSpaceGesture();
  swift_getWitnessTable();
  Gesture.modifier<A>(_:)(v7, a2, v5, a3);
  return (*(*(v5 - 8) + 8))(v7, v5);
}

uint64_t CoordinateSpaceEvents.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CoordinateSpaceGesture();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t CoordinateSpaceEvents.value.getter()
{
  type metadata accessor for [EventID : EventType]();
  v12 = *AGGraphGetValue();

  CoordinateSpaceEvents.modifier.getter(v11);
  outlined init with copy of CoordinateSpace(v11, v13);
  if (!LOBYTE(v15))
  {
    outlined destroy of CoordinateSpace(v13);
LABEL_6:
    AGGraphClearUpdate();
    GeometryEffectTransform.transform.getter(&v7);
    AGGraphSetUpdate();
    AGGraphClearUpdate();
    type metadata accessor for CGPoint(0);
    Value = AGGraphGetValue();
    v1 = *Value;
    v2 = Value[1];
    AGGraphSetUpdate();
    v3 = v9 - (v1 - *&v8);
    v4 = v10 - (v2 - *(&v8 + 1));
    outlined init with copy of CoordinateSpace(v11, v6);
    *v13 = v7;
    *&v13[16] = v1;
    *&v14 = v2;
    *(&v14 + 1) = v3;
    v15 = v4;
    specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v12, v6, v13);
    outlined destroy of HitTestableEvent?(v6, &lazy cache variable for type metadata for CoordinateSpace?);

    goto LABEL_7;
  }

  if (LOBYTE(v15) == 1 || v14 | *(&v14 + 1) | *v13 | *&v13[16] | *&v13[8])
  {
    goto LABEL_6;
  }

  v9 = 0.0;
  v7 = 0u;
  v8 = 0u;
  LOBYTE(v10) = -1;
  *&v13[8] = 0u;
  v14 = 0u;
  *v13 = 1;
  v15 = 0.0;
  specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(&v12, &v7, v13);
  outlined destroy of HitTestableEvent?(&v7, &lazy cache variable for type metadata for CoordinateSpace?);
LABEL_7:
  outlined destroy of CoordinateSpace(v11);
  return v12;
}

uint64_t specialized defaultConvertEventLocations<A>(_:coordinateSpace:transform:)(void *a1, uint64_t a2, void *a3)
{
  v69 = a3 + 1;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = *a1;
  v6 = (*a1 + 64);
  v5 = *v6;
  v85 = MEMORY[0x1E69E7CC0];
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v76 = v3;
  v73 = v3;
  while (1)
  {
    v12 = v11;
    if (!v9)
    {
      if (v10 <= v11 + 1)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v10;
      }

      v11 = v14 - 1;
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          v9 = 0;
          v82 = 0;
          memset(v81, 0, sizeof(v81));
          v80 = 0u;
          goto LABEL_14;
        }

        v9 = v6[v13];
        ++v12;
        if (v9)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_54;
    }

    v13 = v11;
LABEL_13:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v13 << 6);
    v17 = (v4[6] + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    outlined init with copy of AnyTrackedValue(v4[7] + 40 * v16, v79);
    *&v80 = v18;
    *(&v80 + 1) = v19;
    outlined init with take of AnyTrackedValue(v79, v81);
    v11 = v13;
LABEL_14:
    *v83 = v80;
    *&v83[16] = v81[0];
    *&v83[32] = v81[1];
    v84 = v82;
    v20 = v80;
    if (!v80)
    {
      break;
    }

    v21 = *&v83[8];
    outlined init with take of AnyTrackedValue(&v83[16], v79);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType);
    if (swift_dynamicCast())
    {
      outlined init with take of AnyTrackedValue(v77, &v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v76 + 2) + 1, 1, v76);
      }

      v23 = *(v76 + 2);
      v22 = *(v76 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v76);
        v24 = v23 + 1;
        v76 = v36;
      }

      *(v76 + 2) = v24;
      v25 = &v76[16 * v23];
      *(v25 + 4) = v20;
      *(v25 + 5) = v21;
      v27 = *(&v81[0] + 1);
      v26 = *&v81[1];
      __swift_project_boxed_opaque_existential_1(&v80, *(&v81[0] + 1));
      v28 = (*(v26 + 16))(v27, v26);
      v30 = v29;
      v31 = v73;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
      }

      v32 = v31;
      v33 = *(v31 + 2);
      v73 = v32;
      v34 = *(v32 + 3);
      if (v33 >= v34 >> 1)
      {
        v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v33 + 1, 1, v73);
      }

      *(v73 + 2) = v33 + 1;
      v35 = &v73[16 * v33];
      *(v35 + 4) = v28;
      *(v35 + 5) = v30;
      v85 = v73;
      __swift_destroy_boxed_opaque_existential_1(&v80);
    }

    else
    {
      v78 = 0;
      memset(v77, 0, sizeof(v77));
      outlined destroy of SpatialEventType?(v77);
    }
  }

  if (!*(v73 + 2))
  {
    goto LABEL_52;
  }

  outlined init with copy of CoordinateSpace?(a2, v83);
  if (v83[40] == 255)
  {
    v38 = &lazy cache variable for type metadata for CoordinateSpace?;
    v39 = v83;
  }

  else
  {
    v80 = *v83;
    v81[0] = *&v83[16];
    *(v81 + 9) = *&v83[25];
    v37 = *a3;
    if (*a3 == 1)
    {
      outlined destroy of CoordinateSpace(&v80);
      goto LABEL_34;
    }

    v40 = *(v69 + 1);
    *&v83[8] = *v69;
    *&v83[24] = v40;
    *&v83[40] = v69[4];
    *v83 = v37;

    ViewTransform.convertGlobal(to:points:)(&v80, &v85);
    outlined destroy of CoordinateSpace(&v80);
    v38 = &lazy cache variable for type metadata for ViewTransform?;
    v39 = a3;
  }

  outlined destroy of HitTestableEvent?(v39, v38);
LABEL_34:
  v41 = v85;
  v72 = *(v76 + 2);
  if (!v72)
  {
LABEL_52:
  }

  v42 = 0;
  v43 = 0;
  v74 = v85;
  while (v43 < *(v76 + 2))
  {
    v45 = *(v41 + 2);
    if (v43 == v45)
    {
      goto LABEL_52;
    }

    if (v43 >= v45)
    {
      goto LABEL_55;
    }

    if (!v4[2])
    {
      goto LABEL_56;
    }

    v47 = *&v76[v42 + 32];
    v46 = *&v76[v42 + 40];
    v48 = *&v41[v42 + 32];
    v49 = *&v41[v42 + 40];
    v50 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v46);
    if ((v51 & 1) == 0)
    {
      goto LABEL_57;
    }

    outlined init with copy of AnyTrackedValue(v4[7] + 40 * v50, v79);
    outlined init with take of AnyTrackedValue(v79, &v80);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for SpatialEventType);
    swift_dynamicCast();
    v52 = *&v83[24];
    v53 = *&v83[32];
    __swift_mutable_project_boxed_opaque_existential_1(v83, *&v83[24]);
    (*(v53 + 48))(v52, v53, v48, v49);
    outlined init with copy of AnyTrackedValue(v83, v79);
    swift_dynamicCast();
    outlined init with take of AnyTrackedValue(&v80, v77);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *a1;
    v57 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v46);
    v58 = v55[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_58;
    }

    v61 = v56;
    if (v55[3] >= v60)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, isUniquelyReferenced_nonNull_native);
      v62 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v46);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_60;
      }

      v57 = v62;
    }

    v4 = v55;
    if (v61)
    {
      v44 = v55[7] + 40 * v57;
      __swift_destroy_boxed_opaque_existential_1(v44);
      outlined init with take of AnyTrackedValue(v77, v44);
    }

    else
    {
      v55[(v57 >> 6) + 8] |= 1 << v57;
      v64 = (v55[6] + 16 * v57);
      *v64 = v47;
      v64[1] = v46;
      outlined init with take of AnyTrackedValue(v77, v55[7] + 40 * v57);
      v65 = v55[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_59;
      }

      v55[2] = v67;
    }

    ++v43;
    *a1 = v55;
    __swift_destroy_boxed_opaque_existential_1(v83);
    v42 += 16;
    v41 = v74;
    if (v72 == v43)
    {
      goto LABEL_52;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance CoordinateSpaceEvents<A>@<X0>(uint64_t *a1@<X8>)
{
  result = CoordinateSpaceEvents.value.getter();
  *a1 = result;
  return result;
}

uint64_t destroy for CoordinateSpaceGesture(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

_OWORD *initializeWithCopy for CoordinateSpaceGesture(_OWORD *result, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v2 = *(a2 + 16);
    *result = *a2;
    result[1] = v2;
    *(result + 25) = *(a2 + 25);
  }

  else
  {
    v3 = *(a2 + 24);
    *(result + 24) = v3;
    v4 = result;
    (**(v3 - 8))();
    *(v4 + 40) = 0;
    return v4;
  }

  return result;
}

uint64_t assignWithCopy for CoordinateSpaceGesture(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1);
    if (*(a2 + 40))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v4;
      *(a1 + 16) = v5;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for CoordinateSpaceGesture(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of CoordinateSpace(result);
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoordinateSpaceGesture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CoordinateSpaceGesture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of CoordinateSpace?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for CoordinateSpace?);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SpatialEventType?(uint64_t a1)
{
  type metadata accessor for SpatialEventType?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for SpatialEventType?()
{
  if (!lazy cache variable for type metadata for SpatialEventType?)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for SpatialEventType);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SpatialEventType?);
    }
  }
}

void _CompositingGroupEffect.effectValue(size:)(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 20;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance _CompositingGroupEffect(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 20;
}

unint64_t instantiation function for generic protocol witness table for _CompositingGroupEffect(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _CompositingGroupEffect and conformance _CompositingGroupEffect();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _CompositingGroupEffect and conformance _CompositingGroupEffect()
{
  result = lazy protocol witness table cache variable for type _CompositingGroupEffect and conformance _CompositingGroupEffect;
  if (!lazy protocol witness table cache variable for type _CompositingGroupEffect and conformance _CompositingGroupEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CompositingGroupEffect and conformance _CompositingGroupEffect);
  }

  return result;
}

double static ModifierGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *(a2 + 80);
  v46 = *(a2 + 64);
  v47 = v13;
  v48 = *(a2 + 96);
  v49 = *(a2 + 112);
  v14 = *(a2 + 16);
  v42 = *a2;
  v43 = v14;
  v15 = *(a2 + 48);
  v44 = *(a2 + 32);
  v45 = v15;
  v16 = *(a2 + 120);
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v41 = v12;
  type metadata accessor for ModifierGesture();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifierGesture._makeGesture(gesture:inputs:), a3, &v38);
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v23 = v12;
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v36 = v49;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v37 = v16;
  (*(a5 + 24))(v39, &v38, &v29, partial apply for closure #2 in static ModifierGesture._makeGesture(gesture:inputs:), v22, a3, a5);
  if ((v16 & 8) != 0 && (!swift_conformsToProtocol2() || !a3))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    LOBYTE(v38) = v17;
    v33 = v46;
    v34 = v47;
    v35 = v48;
    v36 = v49;
    v29 = v42;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v37 = v16;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    v18 = _GestureOutputs.debugData.getter();
    v28 = 1;
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a3, &v38, 0x100000000, &v29, v18 | ((HIDWORD(v18) & 1) << 32), 0x100000000);
  }

  v19 = v39[1];
  v20 = v40;
  result = *v39;
  *a7 = v39[0];
  *(a7 + 8) = v19;
  *(a7 + 16) = v20;
  return result;
}

uint64_t closure #1 in static ModifierGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for ModifierGesture();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

double closure #2 in static ModifierGesture._makeGesture(gesture:inputs:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 80);
  v34 = *(a1 + 64);
  v35 = v8;
  v36 = *(a1 + 96);
  v37 = *(a1 + 112);
  v9 = *(a1 + 16);
  v30 = *a1;
  v31 = v9;
  v10 = *(a1 + 48);
  v32 = *(a1 + 32);
  v33 = v10;
  v11 = *(a1 + 120);
  v29 = a2;
  type metadata accessor for ModifierGesture();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifierGesture._makeGesture(gesture:inputs:), a3, &v26);
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v25 = v11;
  (*(a4 + 32))(v27, &v26, &v17, a3, a4);
  if ((v11 & 8) != 0 && (!swift_conformsToProtocol2() || !a3))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    LOBYTE(v26) = v12;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v17 = v30;
    v18 = v31;
    v19 = v32;
    v20 = v33;
    v25 = v11;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _GestureOutputs();
    v13 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(a3, &v26, 0x100000000, &v17, v13 | ((HIDWORD(v13) & 1) << 32), 0x100000000);
  }

  v14 = v27[1];
  v15 = v28;
  result = *v27;
  *a5 = v27[0];
  *(a5 + 8) = v14;
  *(a5 + 16) = v15;
  return result;
}

uint64_t closure #1 in closure #2 in static ModifierGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for ModifierGesture();
  v10[3] = a3;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a3, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t instantiation function for generic protocol witness table for ModifierGesture<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ModifierGesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = ((v5 + v8) & ~v8) + *(v7 + 64);
  v11 = (*(v4 + 80) | *(v7 + 80));
  if (v11 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = ~v8;
    (*(v4 + 16))(a1);
    (*(v7 + 16))((v3 + v9) & v15, (a2 + v9) & v15, v6);
  }

  return v3;
}

uint64_t initializeWithTake for ModifierGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t assignWithTake for ModifierGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ModifierGesture(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *storeEnumTagSinglePayload for ModifierGesture(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t _ResolvedKeyframes.append<A>(keyPath:path:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AnimationPath.duration.getter(a2);
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a2;
  v7[4] = a1;
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a1;
  type metadata accessor for _ResolvedKeyframes.Track();
  type metadata accessor for Array();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  return Array.append(_:)();
}

uint64_t Keyframes<>._resolve(into:initialValue:initialVelocity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(a5 + 32))(a4, a5, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(a1, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t AnyKeyframes.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyKeyframes._resolve(into:initialValue:initialVelocity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 40))(a1, a2, a3, v7, v8);
}

uint64_t _ResolvedKeyframes.update(velocity:time:)(uint64_t a1, double a2)
{
  v5 = *v2;
  v6 = type metadata accessor for _ResolvedKeyframes.Track();

  if (MEMORY[0x193ABF2C0](v7, v6))
  {
    v8 = 0;
    v9 = v5 + 64;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      result = Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_10;
      }

      v13 = *(v9 - 8);

      v13(a1, a2);

      ++v8;
      v9 += 40;
      if (v12 == MEMORY[0x193ABF2C0](v5, v6))
      {
        goto LABEL_6;
      }
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_6:
  }

  return result;
}

void specialized Keyframes.bodyError()()
{
  _StringGuts.grow(_:)(31);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v0);

  MEMORY[0x193ABEDD0](0xD000000000000015, 0x800000018DD79FB0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t instantiation function for generic protocol witness table for AnyKeyframes<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *assignWithCopy for _ResolvedKeyframes.Track(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  v5 = a2[4];
  a1[3] = a2[3];
  a1[4] = v5;

  return a1;
}

uint64_t assignWithTake for _ResolvedKeyframes.Track(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t get_witness_table_7SwiftUI12VisualEffectRzs8SendableRd__AA08RendererD0Rd__r__lAA08CombinedcD033_9FFF1526AA410727EB04F8ADBE7663C7LLVyxAA0fcD0AFLLVyqd__GGAaBHPyHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  swift_getWitnessTable();
  type metadata accessor for CombinedVisualEffect();
  return swift_getWitnessTable();
}

uint64_t protocol witness for Animatable.animatableData.setter in conformance CombinedVisualEffect<A, B>(uint64_t a1, void *a2)
{
  specialized CombinedVisualEffect.animatableData.setter(a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for AnimatablePair();
  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance GeometryVisualEffect<A>(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  GeometryVisualEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance GeometryVisualEffect<A>;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance RendererVisualEffect<A>(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v6[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  GeometryVisualEffect.animatableData.getter(a2);
  return protocol witness for Animatable.animatableData.modify in conformance RendererVisualEffect<A>;
}

void protocol witness for Animatable.animatableData.modify in conformance GeometryVisualEffect<A>(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v7 = *(*a1 + 8);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    specialized RendererVisualEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized RendererVisualEffect.animatableData.setter(*(*a1 + 40), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static _VariadicView.Tree<>.makePlatformSubstitutableView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v14 = a2[3];
  v38[2] = a2[2];
  v38[3] = v14;
  v38[4] = a2[4];
  v39 = *(a2 + 20);
  v15 = a2[1];
  v38[0] = *a2;
  v38[1] = v15;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    type metadata accessor for _VariadicView.Tree();
    AGSubgraphBeginTreeElement();
  }

  v17 = a2[3];
  v30 = a2[2];
  v31 = v17;
  v32 = a2[4];
  v33 = *(a2 + 20);
  v18 = a2[1];
  v28 = *a2;
  v29 = v18;
  v35 = v33;
  v19 = v30;
  LODWORD(v30) = 0;
  v21 = v13;
  v34[0] = v28;
  v34[1] = v18;
  v34[3] = v17;
  v34[4] = v32;
  v34[2] = v30;
  v24 = v30;
  v25 = v17;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v18;
  outlined init with copy of _ViewInputs(v38, v36);
  outlined init with copy of _ViewInputs(v34, v36);
  static _VariadicView.Tree<>._makeView(view:inputs:)(&v21, &v22, a3, a4, a5, a6);
  v36[2] = v24;
  v36[3] = v25;
  v36[4] = v26;
  v37 = v27;
  v36[0] = v22;
  v36[1] = v23;
  outlined destroy of _ViewInputs(v36);
  LODWORD(v30) = v19;
  if (ShouldRecordTree)
  {
    type metadata accessor for _VariadicView.Tree();
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v28);
    AGSubgraphEndTreeElement();
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v22 = v28;
  v23 = v29;
  return outlined destroy of _ViewInputs(&v22);
}

uint64_t makePlatformSecondaryView(primaryInputs:primaryOutputs:secondaryInputs:flipOrder:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _OWORD *))
{
  v5 = *(a3 + 48);
  v8[2] = *(a3 + 32);
  v8[3] = v5;
  v8[4] = *(a3 + 64);
  v9 = *(a3 + 80);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  return a5(a1, v8);
}

uint64_t static _ViewOutputs.makePlatformRootGeometryTransform(inputs:body:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

uint64_t TupleContent.content.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v24 + 16))(v23, v3, v7, v21);
  if (v6)
  {
    v26 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v7 + 32);
    v28 = v6;
    do
    {
      if (v6 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *a2++;
      result = (*(*(v30 - 8) + 32))(v32, &v23[v29]);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t TupleContent.content.setter(uint64_t TupleTypeMetadata, uint64_t a2)
{
  v4 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(v6 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v25 = (v6 + 32);
    v26 = v5;
    do
    {
      if (v5 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v25;
      }

      v29 = *v24++;
      v28 = v29;
      v30 = *v4++;
      (*(*(v28 - 8) + 32))(&v23[v27], v30);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  return (*(v20 + 40))(v2, v23, v6, v21);
}

uint64_t type metadata completion function for TupleContent(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[1] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15 = v17;
        v15 += 8;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = a2;
    a1 = v5;
  }

  return (**(TupleTypeMetadata - 8))(a1, v3);
}

uint64_t destroy for TupleContent(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v7 = 0;
      v8 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_9;
      }

      if (&v6[-v8] < 0x20)
      {
        goto LABEL_9;
      }

      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v8 + 16);
      v10 = v6 + 16;
      v11 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v3 != v7)
      {
LABEL_9:
        v13 = v3 - v7;
        v14 = 8 * v7;
        v15 = &v6[8 * v7];
        v16 = (v8 + v14);
        do
        {
          v17 = *v16++;
          *v15 = v17;
          v15 += 8;
          --v13;
        }

        while (v13);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  return (*(*(TupleTypeMetadata - 8) + 8))();
}

uint64_t initializeWithCopy for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, v3);
  return a1;
}

uint64_t assignWithCopy for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, v3);
  return a1;
}

uint64_t initializeWithTake for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, v3);
  return a1;
}

uint64_t assignWithTake for TupleContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = a2;
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, v3);
  return a1;
}

uint64_t String.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v2);
  AttributedString.characters.getter();
  _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  v3 = String.init<A>(_:)();
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

uint64_t AttributedString.isEmpty.getter()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for AttributedString.CharacterView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  _s10Foundation16AttributedStringV13CharacterViewVAESTAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  (*(v8 + 8))(v10, v7);
  return v11 & 1;
}

uint64_t one-time initialization function for kitBackgroundColor()
{
  result = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD7A010);
  static NSAttributedStringKey.kitBackgroundColor = result;
  return result;
}

uint64_t one-time initialization function for kitLigature()
{
  result = MEMORY[0x193ABEC20](0x75746167694C534ELL, 0xEA00000000006572);
  static NSAttributedStringKey.kitLigature = result;
  return result;
}

uint64_t one-time initialization function for kitKern()
{
  result = MEMORY[0x193ABEC20](0x6E72654B534ELL, 0xE600000000000000);
  static NSAttributedStringKey.kitKern = result;
  return result;
}

uint64_t one-time initialization function for kitStrikethroughStyle()
{
  result = MEMORY[0x193ABEC20](0x656B69727453534ELL, 0xEF6867756F726874);
  static NSAttributedStringKey.kitStrikethroughStyle = result;
  return result;
}

uint64_t one-time initialization function for kitUnderlineStyle()
{
  result = MEMORY[0x193ABEC20](0x6C7265646E55534ELL, 0xEB00000000656E69);
  static NSAttributedStringKey.kitUnderlineStyle = result;
  return result;
}

uint64_t one-time initialization function for kitStrokeColor()
{
  result = MEMORY[0x193ABEC20](0x656B6F727453534ELL, 0xED0000726F6C6F43);
  static NSAttributedStringKey.kitStrokeColor = result;
  return result;
}

uint64_t one-time initialization function for kitStrokeWidth()
{
  result = MEMORY[0x193ABEC20](0x656B6F727453534ELL, 0xED00006874646957);
  static NSAttributedStringKey.kitStrokeWidth = result;
  return result;
}

uint64_t one-time initialization function for kitTextEffect()
{
  result = MEMORY[0x193ABEC20](0x664574786554534ELL, 0xEC00000074636566);
  static NSAttributedStringKey.kitTextEffect = result;
  return result;
}

uint64_t one-time initialization function for kitUnderlineColor()
{
  result = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD7A090);
  static NSAttributedStringKey.kitUnderlineColor = result;
  return result;
}

uint64_t one-time initialization function for kitStrikethroughColor()
{
  result = MEMORY[0x193ABEC20](0xD000000000000014, 0x800000018DD7A030);
  static NSAttributedStringKey.kitStrikethroughColor = result;
  return result;
}

uint64_t one-time initialization function for kitWritingDirection()
{
  result = MEMORY[0x193ABEC20](0xD000000000000012, 0x800000018DD79FF0);
  static NSAttributedStringKey.kitWritingDirection = result;
  return result;
}

uint64_t one-time initialization function for kitGlyphInfo()
{
  result = MEMORY[0x193ABEC20](0x496870796C47534ELL, 0xEB000000006F666ELL);
  static NSAttributedStringKey.kitGlyphInfo = result;
  return result;
}

CTFontRef_optional __swiftcall NSAttributedString.kitFont(at:)(Swift::Int at)
{
  if (one-time initialization token for kitFont != -1)
  {
    swift_once();
  }

  if ([v1 attribute:static NSAttributedStringKey.kitFont atIndex:at effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v5[0] = v7;
  v5[1] = v8;
  if (!*(&v8 + 1))
  {
    return 0;
  }

  outlined init with take of Any(v5, &v4);
  type metadata accessor for CTFontRef(0);
  swift_dynamicCast();
  return v6;
}

uint64_t ResolvableStringAttribute.reduceSchedule<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = a5;
  v28 = a3;
  v29 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  (*(a4 + 48))(a2, a4, v16);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v19 = v27;
    v20 = v28;
    a6[3] = v28;
    a6[4] = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
    return (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v29, v20);
  }

  else
  {
    (*(v14 + 32))(v18, v13, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = v28;
    v30 = v28;
    v31 = AssociatedTypeWitness;
    v32 = v27;
    v33 = AssociatedConformanceWitness;
    a6[3] = type metadata accessor for ReducedTimelineSchedule();
    a6[4] = swift_getWitnessTable();
    v25 = __swift_allocate_boxed_opaque_existential_1(a6);
    TimelineSchedule.reduced<A>(with:)(v18, v24, AssociatedTypeWitness, v25);
    return (*(v14 + 8))(v18, AssociatedTypeWitness);
  }
}

uint64_t TimelineSchedule.reduced<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ReducedTimelineSchedule.init(t1:t2:)(v14, v10, a2, a3, a4);
}

uint64_t ReducedTimelineSchedule.init(t1:t2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ReducedTimelineSchedule();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t ReducedTimelineSchedule.entries(from:mode:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v6 = a3[5];
  v7 = a3[3];
  v22 = a1;
  v23 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v25 = AssociatedTypeWitness;
  v26 = v9;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v21 - v10;
  v12 = a3[4];
  v13 = a3[2];
  v14 = swift_getAssociatedTypeWitness();
  v24 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  LOBYTE(a2) = *a2;
  v29 = a2;
  v18 = v22;
  (*(v12 + 24))(v22, &v29, v13, v12, v15);
  v28 = a2;
  (*(v6 + 24))(v18, &v28, v23, v6);
  swift_getAssociatedConformanceWitness();
  v19 = v25;
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type Date and conformance Date();
  Sequence<>.reduced<A>(with:)(v11, v14, v19, v27);
  (*(v26 + 8))(v11, v19);
  return (*(v24 + 8))(v17, v14);
}

uint64_t Sequence<>.reduced<A>(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ReducedSequence.init(s1:s2:)(v14, v10, a2, a3, a4);
}

uint64_t static ReducedTimelineSchedule<>.== infix(_:_:)()
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    type metadata accessor for ReducedTimelineSchedule();
    v0 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t ReducedSequence.init(s1:s2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ReducedSequence();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 60), a2, a4);
}

uint64_t ReducedSequence.Iterator.init(s1:s2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  v7 = *(type metadata accessor for ReducedSequence.Iterator() + 60);
  v8 = swift_getAssociatedTypeWitness();
  return (*(*(v8 - 8) + 32))(a3 + v7, a2, v8);
}

uint64_t ReducedSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v3 = *(a1 + 16);
  v87 = *(a1 + 32);
  v84 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v74 - v6;
  v7 = type metadata accessor for Optional();
  v97 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v96 = &v74 - v8;
  v95 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  v88 = *(a1 + 24);
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v74 - v20;
  v22 = swift_getAssociatedTypeWitness();
  v91 = *(v22 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v74 - v24;
  v27 = v98;
  (*(v26 + 16))(&v74 - v24, v98, v22, v23);
  v78 = a1;
  v90 = *(a1 + 60);
  v85 = v19;
  (*(v19 + 16))(v21, v27 + v90, v18);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  swift_getAssociatedConformanceWitness();
  v28 = v93;
  v87 = v21;
  dispatch thunk of IteratorProtocol.next()();
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = v96;
  v31 = v95[2];
  v88 = v17;
  v32 = v97;
  v31(v96, v17, v97);
  v84 = v29;
  v33 = &v30[v29];
  v34 = v30;
  v35 = AssociatedTypeWitness;
  v36 = v32;
  v37 = v90;
  v31(v33, v28, v36);
  v38 = *(v94 + 48);
  v39 = v34;
  v40 = v98;
  v41 = v38(v39, 1, v35);
  v42 = v91;
  if (v41 == 1)
  {
LABEL_4:
    (*(v42 + 40))(v40, v25, v22);
    (*(v85 + 40))(v40 + v37, v87, v18);
    v46 = v95;
    v47 = v95[4];
    v48 = v82;
    v49 = v97;
    v47(v82, v88, v97);
    if (v38(v48, 1, v35) == 1)
    {
      v47(v89, v93, v49);
      v50 = v38(v48, 1, v35) == 1;
      v51 = v96;
      if (!v50)
      {
        v52 = v96;
        (v46[1])(v48, v49);
        v51 = v52;
      }
    }

    else
    {
      (v46[1])(v93, v49);
      v53 = v94;
      v54 = v89;
      (*(v94 + 32))(v89, v48, v35);
      (*(v53 + 56))(v54, 0, 1, v35);
      v51 = v96;
    }

    return (*(v83 + 8))(v51, TupleTypeMetadata2);
  }

  v75 = v25;
  v76 = v22;
  v77 = v18;
  v43 = v81;
  v44 = v96;
  v31(v81, v96, v97);
  v45 = v84;
  if (v38(&v44[v84], 1, v35) == 1)
  {
    (*(v94 + 8))(v43, v35);
    v40 = v98;
    v18 = v77;
    v22 = v76;
    v37 = v90;
    v42 = v91;
    v25 = v75;
    goto LABEL_4;
  }

  v56 = v94;
  v58 = v94 + 32;
  v57 = *(v94 + 32);
  v59 = v80;
  v57(v80, v43, v35);
  v60 = &v44[v45];
  v61 = v79;
  v57(v79, v60, v35);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v56 + 8))(v59, v35);
    v62 = v95[1];
    v63 = v97;
    v62(v93, v97);
    v62(v88, v63);
    (*(v91 + 8))(v75, v76);
    (*(v85 + 40))(v98 + v90, v87, v77);
    v64 = v89;
    v57(v89, v79, v35);
    (*(v56 + 56))(v64, 0, 1, v35);
    return (v62)(v44, v63);
  }

  else
  {
    TupleTypeMetadata2 = v58;
    v65 = v91;
    v66 = v75;
    v67 = v76;
    (*(v91 + 24))(v98, v75, v76);
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v56 + 8))(v61, v35);
    v70 = v95 + 1;
    v69 = v95[1];
    v71 = v97;
    v69(v93, v97);
    v95 = v70;
    v69(v88, v71);
    (*(v65 + 8))(v66, v67);
    if (v68)
    {
      (*(v85 + 40))(v98 + v90, v87, v77);
    }

    else
    {
      (*(v85 + 8))(v87, v77);
    }

    v72 = v96;
    v73 = v89;
    v57(v89, v80, v35);
    (*(v94 + 56))(v73, 0, 1, v35);
    return (v69)(v72, v71);
  }
}

uint64_t ReducedSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = *(a1 + 24);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v8 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v11 = v22 - v10;
  v12 = *(a1 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v22 - v19;
  (*(v13 + 16))(v16, v3, v12, v18);
  dispatch thunk of Sequence.makeIterator()();
  (*(v23 + 16))(v7, v3 + *(a1 + 60), v5);
  dispatch thunk of Sequence.makeIterator()();
  return ReducedSequence.Iterator.init(s1:s2:)(v20, v11, v24);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance ReducedSequence<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ReducedSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ReducedSequence<A, B>(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t type metadata completion function for ReducedSequence.Iterator()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ReducedSequence.Iterator(uint64_t *a1, uint64_t *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9;
  v11 = (*(v5 + 80) | *(v8 + 80));
  if (v11 > 7 || ((*(v5 + 80) | *(v8 + 80)) & 0x100000) != 0 || ((v6 + v9) & ~v9) + *(*(v7 - 8) + 64) > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v11 + 16) & ~v11));
  }

  else
  {
    v15 = v7;
    v16 = ~v9;
    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v8 + 16))((a1 + v10) & v16, (a2 + v10) & v16, v15);
  }

  return a1;
}

uint64_t destroy for ReducedSequence.Iterator(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8) + 8;
  (*v3)(a1, AssociatedTypeWitness);
  v4 = *(v3 + 56) + a1;
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8, v5);
}

uint64_t initializeWithCopy for ReducedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  (*(v8 + 16))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t assignWithCopy for ReducedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 24;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 40);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t initializeWithTake for ReducedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 32;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 32);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  (*(v8 + 32))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t assignWithTake for ReducedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 40;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 24);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  (*(v8 + 40))((v6 + *(v8 + 80) + a1) & ~*(v8 + 80), (v6 + *(v8 + 80) + a2) & ~*(v8 + 80), v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for ReducedSequence.Iterator(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v5 + 64) + v10;
  if (a2 <= v11)
  {
    goto LABEL_28;
  }

  v13 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v11)
      {
LABEL_28:
        if (v6 >= v9)
        {
          v22 = *(v5 + 48);

          return v22(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v20 = *(v8 + 48);

          return v20((a1 + v12) & ~v10);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void storeEnumTagSinglePayload for ReducedSequence.Iterator(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v9 + 80);
  v13 = *(v7 + 64) + v12;
  v14 = (v13 & ~v12) + *(v9 + 64);
  if (a3 <= v11)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 - v11 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v11 < a2)
  {
    v16 = ~v11 + a2;
    if (v14 < 4)
    {
      v17 = (v16 >> (8 * v14)) + 1;
      if (v14)
      {
        v20 = v16 & ~(-1 << (8 * v14));
        bzero(a1, v14);
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_46:
              if (v15 == 2)
              {
                *&a1[v14] = v17;
              }

              else
              {
                *&a1[v14] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v15)
    {
      a1[v14] = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v14] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v14] = 0;
  }

  else if (v15)
  {
    a1[v14] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v8 >= v10)
  {
    v22 = *(v7 + 56);

    v22(a1, a2, v8, AssociatedTypeWitness);
  }

  else
  {
    v21 = *(v9 + 56);

    v21(&a1[v13] & ~v12, a2);
  }
}

uint64_t type metadata completion function for ReducedSequence()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t NSAttributedString.updateSchedule.getter@<X0>(void *a1@<X8>)
{
  if ([v1 length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v3 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v3 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for TimelineSchedule);
      if ((swift_dynamicCast() & 1) != 0 && v10)
      {
        return outlined init with take of AnyTrackedValue(&v9, a1);
      }
    }

    else
    {
      _sypSgWOhTm_4(v8, type metadata accessor for Any?);
    }
  }

  type metadata accessor for ExplicitTimelineSchedule<[Date]>();
  a1[3] = v5;
  result = lazy protocol witness table accessor for type ExplicitTimelineSchedule<[Date]> and conformance ExplicitTimelineSchedule<A>();
  a1[4] = result;
  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t outlined init with take of ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of TimelineSchedule?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollStateRequest?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ExplicitTimelineSchedule<[Date]>()
{
  if (!lazy cache variable for type metadata for ExplicitTimelineSchedule<[Date]>)
  {
    type metadata accessor for [Date](255, &lazy cache variable for type metadata for [Date], MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Date] and conformance [A]();
    v0 = type metadata accessor for ExplicitTimelineSchedule();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ExplicitTimelineSchedule<[Date]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [Date] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Date] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Date] and conformance [A])
  {
    type metadata accessor for [Date](255, &lazy cache variable for type metadata for [Date], MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Date] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExplicitTimelineSchedule<[Date]> and conformance ExplicitTimelineSchedule<A>()
{
  result = lazy protocol witness table cache variable for type ExplicitTimelineSchedule<[Date]> and conformance ExplicitTimelineSchedule<A>;
  if (!lazy protocol witness table cache variable for type ExplicitTimelineSchedule<[Date]> and conformance ExplicitTimelineSchedule<A>)
  {
    type metadata accessor for ExplicitTimelineSchedule<[Date]>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExplicitTimelineSchedule<[Date]> and conformance ExplicitTimelineSchedule<A>);
  }

  return result;
}

uint64_t *HomogeneousCollection.__allocating_init(_:)(uint64_t a1)
{
  v1 = specialized HomogeneousCollection.__allocating_init(_:)(a1);

  return v1;
}

uint64_t *HomogeneousCollection.init(_:)(uint64_t a1)
{
  v1 = specialized HomogeneousCollection.init(_:)(a1);

  return v1;
}

uint64_t HomogeneousCollection.element(at:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = *(*v1 + 160);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return ContiguousArray.subscript.getter();
}

uint64_t HomogeneousCollection.forEach(_:)(void (*a1)(uint64_t *))
{
  v3 = *v1;
  v11 = v1[4];
  v4 = *(v3 + 160);
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  result = RandomAccessCollection<>.indices.getter();
  v6 = v8;
  v7 = v9;
  if (v8 != v9)
  {
    if (v9 < v8)
    {
      __break(1u);
    }

    else if (v8 < v9)
    {
      do
      {
        v10 = v4;
        __swift_allocate_boxed_opaque_existential_1(&v8);
        ContiguousArray.subscript.getter();
        a1(&v8);
        result = __swift_destroy_boxed_opaque_existential_1(&v8);
        ++v6;
      }

      while (v7 != v6);
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t *HomogenousContiguousIndexLookupTable.__allocating_init(offsets:bias:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  v7 = *result;
  result[3] = a1;
  result[4] = a2;
  result[5] = a3;
  result[2] = *(v7 + 120);
  return result;
}

uint64_t *HomogenousDiscontiguousIndexLookupTable.__allocating_init(offsets:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = *result;
  result[3] = a1;
  result[2] = *(v3 + 120);
  return result;
}

uint64_t HomogeneousCollection.asAnyHashable2()()
{
  v1 = *v0;
  v8 = v0[4];
  v7[1] = *(v1 + 160);
  v2 = type metadata accessor for ContiguousArray();

  WitnessTable = swift_getWitnessTable();
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in HomogeneousCollection.asAnyHashable2(), v7, v2, &type metadata for AnyHashable2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);

  return v5;
}

uint64_t closure #1 in HomogeneousCollection.asAnyHashable2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return AnyHashable2.init<A>(_:)(v7, a2, a3);
}

uint64_t HeterogeneousCollection.count.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 4 * v2 + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t HeterogeneousCollection.element(at:)(uint64_t a1)
{
  if (a1 < 0)
  {
    goto LABEL_26;
  }

  v2 = v1[1];
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_26;
  }

  v4 = v2 + 32;
  if (*(v2 + 32 + 4 * v3 - 4) <= a1)
  {
    goto LABEL_26;
  }

  v5 = 0;
  v6 = *v1;
  v7 = v3;
  while (1)
  {
    v8 = v7 >> 1;
    v9 = v5 + (v7 >> 1);
    if (__OFADD__(v5, v7 >> 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= v3)
    {
      goto LABEL_21;
    }

    if (*(v4 + 4 * v9) <= a1)
    {
      break;
    }

LABEL_5:
    v7 = v8;
    if (v8 <= 0)
    {
      goto LABEL_12;
    }
  }

  v5 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    v8 = v7 + ~v8;
    goto LABEL_5;
  }

  __break(1u);
LABEL_12:
  if (v5)
  {
    v10 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
      goto LABEL_24;
    }

    if (v10 >= v3)
    {
      goto LABEL_25;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v11 = *(v4 + 4 * v10);
      goto LABEL_18;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
LABEL_18:
  if (v5 < *(v6 + 16))
  {
    return (*(**(v6 + 8 * v5 + 32) + 120))(a1 - v11);
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  _StringGuts.grow(_:)(22);

  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v13);

  MEMORY[0x193ABEDD0](0x20666F2074756F20, 0xEE0073646E756F62);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t HeterogeneousCollection.forEach(_:)(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v6 = result;

    v7 = 0;
    do
    {
      if (v7 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = *(v3 + 8 * v7++ + 32);
      v9 = *(*v8 + 128);

      v9(v6, a2);
    }

    while (v4 != v7);
  }

  return result;
}

uint64_t HeterogeneousCollection.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v20 = ContiguousArray.init()();
  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = *(v8 + 4 * v11 + 28);
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v12);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  MEMORY[0x1EEE9AC00](v13);
  v15[2] = a3;
  v15[3] = &v20;
  v15[4] = a1;
  v15[5] = a2;
  HeterogeneousCollection.forEach(_:)(partial apply for closure #1 in HeterogeneousCollection.map<A>(_:), v15);
  v16 = v20;
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t closure #1 in HeterogeneousCollection.map<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  type metadata accessor for ContiguousArray();
  return ContiguousArray.append(_:)();
}

char *HeterogeneousCollection.asAnyHashable2()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);

  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:

    return v5;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v1 + 16))
  {
    v6 = *(**(v1 + 32 + 8 * v4) + 152);

    v8 = v6(v7);

    v9 = *(v8 + 16);
    v10 = *(v5 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_22;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v5 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v9)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v5 + 2);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          *(v5 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (v2 == ++v4)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void HomogenousDiscontiguousIndexLookupTable.unsafeAbsoluteIndex<A>(of:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(v3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v6;
  if (*(*(v9 - 8) + 64) == v10)
  {
    v11 = v1[3];
    (*(v4 + 16))(&v12 - v6, v5, v3, v7);
    MEMORY[0x193ABE750](&v13, v8, v11, v3, MEMORY[0x1E69E7668], *(v2 + 128));
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t HomogenousDiscontiguousIndexLookupTable.unsafeAbsoluteIndexOfElement(at:in:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  ContiguousArray.subscript.getter();
  MEMORY[0x193ABE750](&v9, v6, v1[3], v3, MEMORY[0x1E69E7668], *(v2 + 128));
  (*(v4 + 8))(v6, v3);
  if (BYTE4(v9))
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

void HomogenousContiguousIndexLookupTable.unsafeAbsoluteIndex<A>(of:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - v5;
  if (*(*(v8 - 8) + 64) == v9)
  {
    (*(v3 + 16))(&v12 - v5, v4, v2, v6);
    v10 = OrderedSet._find(_:)();
    if ((v11 & 1) != 0 || !__OFADD__(v10, v1[5]))
    {
      (*(v3 + 8))(v7, v2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t HomogenousContiguousIndexLookupTable.unsafeAbsoluteIndexOfElement(at:in:)(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - v4;
  ContiguousArray.subscript.getter();
  result = OrderedSet._find(_:)();
  v7 = result;
  if ((v8 & 1) == 0 && (v9 = v1[5], v7 = result + v9, __OFADD__(result, v9)))
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v7;
  }

  return result;
}

uint64_t HomogenousContiguousIndexLookupTable.__ivar_destroyer()
{
}

uint64_t HeterogeneousIndexLookupTable.index<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  DynamicType = swift_getDynamicType();
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(DynamicType);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(**(*(a2 + 56) + 8 * v10) + 104);

  v13 = v12(a1, a4, a5);

  return v13;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<JSONCodable<CFDictionaryRef>>, type metadata accessor for JSONCodable<CFDictionaryRef>, type metadata accessor for JSONCodable<CFDictionaryRef>);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSAttributedStringKey>, type metadata accessor for NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<CustomRecursiveStringConvertible>, &lazy cache variable for type metadata for CustomRecursiveStringConvertible, &protocol descriptor for CustomRecursiveStringConvertible);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<[CGRect]>, type metadata accessor for [CGRect], type metadata accessor for [CGRect]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<[String : [Double]]>, type metadata accessor for [String : [Double]], type metadata accessor for [String : [Double]]);
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E6969498]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, LocalizedStringKey.FormatArgument)>, type metadata accessor for (Int, LocalizedStringKey.FormatArgument), type metadata accessor for (Int, LocalizedStringKey.FormatArgument));
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<LocalizedStringKey.FormatArgument>, type metadata accessor for LocalizedStringKey.FormatArgument, type metadata accessor for LocalizedStringKey.FormatArgument);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>, type metadata accessor for Transaction.PendingListeners.WeakListener, type metadata accessor for Transaction.PendingListeners.WeakListener);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v12);
  }

  return v14;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Spacing.Key>, &type metadata for Spacing.Key);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t *specialized HomogeneousCollection.init(_:)(uint64_t a1)
{
  v2 = *v1;
  v1[4] = a1;
  v3 = *(v2 + 160);

  v4 = ContiguousArray.count.getter();
  v1[2] = v3;
  v1[3] = v4;
  return v1;
}

uint64_t destroy for HeterogeneousCollection()
{
}

void *initializeWithCopy for HeterogeneousCollection(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for HeterogeneousCollection(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for HeterogeneousCollection(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *assignWithCopy for HeterogeneousIndexLookupTable(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void *assignWithTake for HeterogeneousIndexLookupTable(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<GesturePhase<()>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<GesturePhase<()>>)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(255, &lazy cache variable for type metadata for GesturePhase<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for GesturePhase);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GesturePhase<()>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Transaction.PendingListeners.WeakListener>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<(String, Double)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (String, Double));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<AttributedString.WritingDirection?>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString.WritingDirection?>)
  {
    type metadata accessor for _ContiguousArrayStorage<UInt32>(255, &lazy cache variable for type metadata for AttributedString.WritingDirection?, MEMORY[0x1E69686A0], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString.WritingDirection?>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(label: String, value: Double)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(label: String, value: Double)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (label: String, value: Double));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(label: String, value: Double)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Range<AttributedTextFormatting.Constraints.Index>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<AttributedTextFormatting.Constraints.Index>>)
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for Range<AttributedTextFormatting.Constraints.Index>, lazy protocol witness table accessor for type AttributedTextFormatting.Constraints.Index and conformance AttributedTextFormatting.Constraints.Index, &type metadata for AttributedTextFormatting.Constraints.Index, MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<AttributedTextFormatting.Constraints.Index>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<TypedCanonicalViewID<ForEachConstantID>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<TypedCanonicalViewID<ForEachConstantID>>)
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for TypedCanonicalViewID<ForEachConstantID>, lazy protocol witness table accessor for type ForEachConstantID and conformance ForEachConstantID, &type metadata for ForEachConstantID, type metadata accessor for TypedCanonicalViewID);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TypedCanonicalViewID<ForEachConstantID>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(index: Int32, implicitID: Int32)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(index: Int32, implicitID: Int32)>)
  {
    type metadata accessor for (proposal: _ProposedSize, value: TextSizeVariant)(255, &lazy cache variable for type metadata for (index: Int32, implicitID: Int32));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(index: Int32, implicitID: Int32)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<UInt32>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ViewModifier.except<A>(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContainerContextPredicate();
  type metadata accessor for InvertedViewInputPredicate();
  (*(v6 + 16))(v8, v3, a2);
  return StaticIf<>.init<>(_:then:)(v8, a2, a3);
}

uint64_t AnyShapeStyle.as<A>(type:)@<X0>(ValueMetadata *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (a1 == &type metadata for Color)
  {
    type metadata accessor for AnyColorBox();
    result = swift_dynamicCastClass();
    if (result)
    {
      v13 = result;
      v7 = qword_1F009DBF8;
      if (*(qword_1F009DBF8 + 64) == 8)
      {
        v8 = &type metadata for Color;
        (*(qword_1F009DBF8 + 16))(a3, &v13, &type metadata for Color);
        return (*(v7 + 56))(a3, 0, 1, v8);
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  else if (a1 == &type metadata for AnyGradient)
  {
    type metadata accessor for AnyGradientBox();
    result = swift_dynamicCastClass();
    if (result)
    {
      v13 = result;
      v7 = qword_1F00519C0;
      if (*(qword_1F00519C0 + 64) == 8)
      {
        v8 = &type metadata for AnyGradient;
        (*(qword_1F00519C0 + 16))(a3, &v13, &type metadata for AnyGradient);
        return (*(v7 + 56))(a3, 0, 1, v8);
      }

LABEL_15:
      __break(1u);
      return result;
    }
  }

  type metadata accessor for ShapeStyleBox();
  v9 = swift_dynamicCastClass();
  v10 = v9;
  if (v9)
  {
  }

  v13 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12[2] = a1;
  v12[3] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in AnyShapeStyle.as<A>(type:), v12, MEMORY[0x1E69E73E0], a1, v11, a3);
}

uint64_t AnyShapeStyle.Storage.box.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t static AnyShapeStyle.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 88))(a2) & 1;
  }
}

double _PreferenceReadingView.value.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double _PreferenceReadingView.value.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t _PreferenceReadingView.transform.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t _PreferenceReadingView.transform.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

double _PreferenceReadingView.init(value:transform:)@<D0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  *a4 = *a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static _PreferenceReadingView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 48);
  v13 = *(a2 + 16);
  v50 = *(a2 + 32);
  v51 = v12;
  v14 = *(a2 + 48);
  v52 = *(a2 + 64);
  v15 = *(a2 + 16);
  v49[0] = *a2;
  v49[1] = v15;
  v45 = v50;
  v46 = v14;
  v47 = *(a2 + 64);
  v16 = *a1;
  v53 = *(a2 + 80);
  v48 = *(a2 + 80);
  v43 = v49[0];
  v44 = v13;
  outlined init with copy of _ViewInputs(v49, &v54);
  PreferencesInputs.remove<A>(_:)(a3, a3);
  LODWORD(v41[0]) = v16;
  *&v54 = a3;
  *(&v54 + 1) = a4;
  *&v55 = a5;
  *(&v55 + 1) = a6;
  v17 = type metadata accessor for PreferenceReadingChild();
  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(v41, a4, v17, WitnessTable, &v24);
  v19 = v24;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v54 = v43;
  v55 = v44;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v56;
  v36 = v57;
  v37 = v58;
  v38 = v59;
  v33 = v54;
  v34 = v55;
  v21 = v56;
  LODWORD(v35) = 0;
  LODWORD(v25[0]) = v19;
  v39[0] = v54;
  v39[1] = v55;
  v40 = v59;
  v39[3] = v57;
  v39[4] = v58;
  v39[2] = v35;
  v29 = v35;
  v30 = v57;
  v31 = v58;
  v32 = v59;
  v27 = v54;
  v28 = v55;
  v22 = *(a6 + 24);
  outlined init with copy of _ViewInputs(&v54, v41);
  outlined init with copy of _ViewInputs(v39, v41);
  v22(v25, &v27, a4, a6);
  v41[2] = v29;
  v41[3] = v30;
  v41[4] = v31;
  v42 = v32;
  v41[0] = v27;
  v41[1] = v28;
  outlined destroy of _ViewInputs(v41);
  LODWORD(v35) = v21;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v33);
    AGSubgraphEndTreeElement();
  }

  v25[2] = v45;
  v25[3] = v46;
  v25[4] = v47;
  v26 = v48;
  v25[0] = v43;
  v25[1] = v44;
  outlined destroy of _ViewInputs(v25);
  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  return outlined destroy of _ViewInputs(&v27);
}
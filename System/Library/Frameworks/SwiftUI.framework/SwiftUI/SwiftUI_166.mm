uint64_t closure #2 in GestureRecognizerRepresentableChild.updateValue()(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = a2[1];
  v13[0] = *a2;
  v13[1] = v11;
  v14[0] = a2[2];
  *(v14 + 12) = *(a2 + 44);
  (*(a4 + 32))(v13, a3, a4);
  return (*(v7 + 8))(v10, a3);
}

uint64_t closure #3 in GestureRecognizerRepresentableChild.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = (*(a4 + 40))(a2, a3, a4);
  result = (*(v9 + 8))(v12, a3);
  *a5 = v13;
  return result;
}

uint64_t closure #4 in GestureRecognizerRepresentableChild.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v9);
  result = type metadata accessor for GestureRecognizerRepresentableChild();
  v13 = *(a2 + *(result + 52));
  if (v13)
  {
    v14 = *(a5 + 48);
    v15 = v13;
    v14();

    return (*(v8 + 8))(v11, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ConcreteRecognizer.init(recognizer:coordinator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ConcreteRecognizer() + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(&a3[v5], a2, AssociatedTypeWitness);
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance GestureRecognizerRepresentableChild<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ConcreteRecognizer();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t GestureRecognizerRepresentableResponderUpdater.updateValue()()
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 12);
  if (!v1)
  {
    type metadata accessor for GestureRecognizerRepresentableResponder();
    v2 = *v0;
    v3 = *(v0 + 14);
    v19[2] = *(v0 + 10);
    v19[3] = v3;
    v19[4] = *(v0 + 18);
    v20 = v0[22];
    v4 = *(v0 + 6);
    v19[0] = *(v0 + 2);
    v19[1] = v4;
    v15 = *(v0 + 10);
    v16 = *(v0 + 14);
    v17 = *(v0 + 18);
    v18 = v0[22];
    v13 = *(v0 + 2);
    v14 = *(v0 + 6);
    CurrentAttribute = AGGraphGetCurrentAttribute();
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
    }

    v6 = CurrentAttribute;
    v7 = *(v0 + 13);
    outlined init with copy of _ViewInputs(v19, v21);
    v8 = swift_allocObject();
    v9 = v7;
    v21[2] = v15;
    v21[3] = v16;
    v21[4] = v17;
    v22 = v18;
    v21[0] = v13;
    v21[1] = v14;
    *(v8 + 224) = 0;
    *(v8 + 216) = v2;
    *(v8 + 220) = v6;
    v1 = DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
    *(v0 + 12) = v1;
  }

  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v10)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18CD69590;
    *(v12 + 32) = v1;
    *&v21[0] = v12;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t GestureRecognizerRepresentableResponder.__allocating_init(representable:inputs:context:viewSubgraph:)(int a1, uint64_t a2, int a3)
{
  v5 = swift_allocObject();
  *(v5 + 224) = 0;
  *(v5 + 216) = a1;
  *(v5 + 220) = a3;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t GestureRecognizerRepresentableResponder.gestureContainer.getter()
{
  v1 = v0;
  v2 = *(v0 + 224);
  if (!v2)
  {
    if (AGSubgraphIsValid())
    {
      v3 = *(v1 + 136);
      v12[2] = *(v1 + 120);
      v12[3] = v3;
      v12[4] = *(v1 + 152);
      v13 = *(v1 + 168);
      v4 = *(v1 + 104);
      v12[0] = *(v1 + 88);
      v12[1] = v4;
      v8 = *(v1 + 120);
      v9 = *(v1 + 136);
      v10 = *(v1 + 152);
      v11 = *(v1 + 168);
      v6 = *(v1 + 88);
      v7 = *(v1 + 104);
      swift_getWitnessTable();
      outlined init with copy of _ViewInputs(v12, v14);
      v2 = _ViewInputs.makeGestureContainer(responder:)();
      v14[2] = v8;
      v14[3] = v9;
      v14[4] = v10;
      v15 = v11;
      v14[0] = v6;
      v14[1] = v7;
      outlined destroy of _ViewInputs(v14);
      *(v1 + 224) = v2;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    else
    {
      v2 = 0;
    }
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t GestureRecognizerRepresentableResponder.recognizerSource.getter()
{
  type metadata accessor for ConcreteRecognizer();
  v0 = *AGGraphGetInputValue();
  type metadata accessor for EventBindingSourceAdaptor();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  return v1;
}

uint64_t GestureRecognizerRepresentableResponder.isValid.getter()
{
  if (!*(v0 + 224))
  {
    return 0;
  }

  v1 = AGGraphGetAttributeSubgraph();
  IsValid = AGSubgraphIsValid();

  return IsValid;
}

uint64_t GestureRecognizerRepresentableResponder.eventSources.getter()
{
  type metadata accessor for _ContiguousArrayStorage<EventBindingSource>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventBindingSource>, type metadata accessor for EventBindingSource, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18CD63400;
  v1 = GestureRecognizerRepresentableResponder.recognizerSource.getter();
  v2 = lazy protocol witness table accessor for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t GestureRecognizerRepresentableResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t EventBindingSourceAdaptor.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer);
  if (result == a1)
  {
    v10 = *(v3 + 16);
    v9 = *(a2 - 8);
    if (*(v9 + 64) == 8)
    {
      (*(v9 + 16))(a3, &v10, a2);
      return (*(v9 + 56))(a3, 0, 1, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = *(*(a2 - 8) + 56);

    return v8(a3, 1, 1, a2);
  }

  return result;
}

uint64_t type metadata completion function for ConcreteRecognizer()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **initializeBufferWithCopyOfBuffer for ConcreteRecognizer(void **a1, void **a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-9 - v6) | v6) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = AssociatedTypeWitness;
    v11 = *a2;
    *a1 = *a2;
    v12 = *(v5 + 16);
    v13 = v11;
    v12((a1 + v6 + 8) & ~v6, (a2 + v6 + 8) & ~v6, v10);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v6 & 0xF8 ^ 0x1F8) & (v6 + 16)];
  }

  return a1;
}

uint64_t destroy for ConcreteRecognizer(id *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 8);
  v5 = (a1 + *(v3 + 80) + 8) & ~*(v3 + 80);

  return v4(v5, AssociatedTypeWitness);
}

void **initializeWithCopy for ConcreteRecognizer(void **a1, void **a2)
{
  v4 = *a2;
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 16);
  v8 = *(v6 + 80);
  v9 = v4;
  v7((a1 + v8 + 8) & ~v8, (a2 + v8 + 8) & ~v8, AssociatedTypeWitness);
  return a1;
}

void **assignWithCopy for ConcreteRecognizer(void **a1, void **a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 24))((a1 + *(v8 + 80) + 8) & ~*(v8 + 80), (a2 + *(v8 + 80) + 8) & ~*(v8 + 80), AssociatedTypeWitness);
  return a1;
}

void *initializeWithTake for ConcreteRecognizer(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 32))((a1 + *(v5 + 80) + 8) & ~*(v5 + 80), (a2 + *(v5 + 80) + 8) & ~*(v5 + 80), AssociatedTypeWitness);
  return a1;
}

void **assignWithTake for ConcreteRecognizer(void **a1, void **a2)
{
  v4 = *a1;
  *a1 = *a2;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 40))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConcreteRecognizer(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  v8 = *(v4 + 80);
  v9 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = ((v8 + 8) & ~v8) + v9;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v6 & 0x80000000) != 0)
      {
        v17 = *(v5 + 48);

        return v17((a1 + v8 + 8) & ~v8);
      }

      else
      {
        v16 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v16) = -1;
        }

        return (v16 + 1);
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
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

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for ConcreteRecognizer(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((v8 + 8) & ~v8) + *(v6 + 64);
  if (a3 <= v9)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v9 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = ~v9 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_47:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v18 = *(v6 + 56);

    v18(&a1[v8 + 8] & ~v8, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v17 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v17 = (a2 - 1);
    }

    *a1 = v17;
  }
}

unint64_t lazy protocol witness table accessor for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor()
{
  result = lazy protocol witness table cache variable for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor;
  if (!lazy protocol witness table cache variable for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor)
  {
    type metadata accessor for EventBindingSourceAdaptor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventBindingSourceAdaptor and conformance EventBindingSourceAdaptor);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<EventBindingSource>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void destroy for GestureRecognizerRepresentableResponderUpdater(uint64_t a1)
{

  v2 = *(a1 + 104);
}

uint64_t initializeWithCopy for GestureRecognizerRepresentableResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for GestureRecognizerRepresentableResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
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

  v4 = *(a2 + 104);
  v5 = *(a1 + 104);
  *(a1 + 104) = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for GestureRecognizerRepresentableResponderUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  v4 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t type metadata completion function for GestureRecognizerRepresentableChild()
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

_DWORD *initializeBufferWithCopyOfBuffer for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = *(v5 + 64) + 1;
  }

  v8 = v6 <= 7u && (v6 & 0x100000) == 0;
  if (v8 && ((((((((((((v7 + ((v6 + 24) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4) <= 0x18)
  {
    v9 = AssociatedTypeWitness;
    *a1 = *a2;
    v10 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    if ((*(v5 + 48))(v13 + 1, 1, AssociatedTypeWitness))
    {
      memcpy(v12 + 1, v13 + 1, v7);
    }

    else
    {
      (*(v5 + 16))(v12 + 1, v13 + 1, v9);
      (*(v5 + 56))(v12 + 1, 0, 1, v9);
    }

    v15 = ((v12 + v7 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v13 + v7 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = *v18;
    *v17 = *v18;
    v20 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    v22[1] = v23[1];
    v24 = ((v22 + 11) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v23 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v25;
    v24[1] = v25[1];
    *((v24 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v25 + 11) & 0xFFFFFFFFFFFFFFF8);

    v26 = v19;
  }

  else
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v6 & 0xF8 ^ 0x1F8u) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for GestureRecognizerRepresentableChild(uint64_t a1)
{
  v1 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (v1 + *(v3 + 80) + 16) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v4, AssociatedTypeWitness);
  }

  v5 = v4 + *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v5;
  }

  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15;
}

_DWORD *initializeWithCopy for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v4 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 16) & ~v9);
  v11 = ((v6 + v9 + 16) & ~v9);
  if ((*(v8 + 48))(v11, 1, AssociatedTypeWitness))
  {
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v10, v11, v14);
  }

  else
  {
    (*(v8 + 16))(v10, v11, AssociatedTypeWitness);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10, 0, 1, AssociatedTypeWitness);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  if (v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  v18 = ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  *v20 = *v21;
  v23 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 11) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = v26 + 11;
  *v25 = *v26;
  v25[1] = v26[1];
  v28 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *(v27 & 0xFFFFFFFFFFFFFFF8);
  v28[1] = *((v27 & 0xFFFFFFFFFFFFFFF8) + 4);
  *((v28 + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v27 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);

  v29 = v22;

  return a1;
}

_DWORD *assignWithCopy for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = (v3 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v5 = *v6;
  *(v5 + 8) = *(v6 + 8);
  *(v5 + 12) = *(v6 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v9 + 16 + v5) & ~v9);
  v11 = ((v9 + 16 + v6) & ~v9);
  v12 = *(v8 + 48);
  v13 = v12(v10, 1, AssociatedTypeWitness);
  v14 = v12(v11, 1, AssociatedTypeWitness);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 16))(v10, v11, AssociatedTypeWitness);
      (*(v8 + 56))(v10, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 24))(v10, v11, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, AssociatedTypeWitness);
    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v10, v11, v17);
LABEL_12:
  if (*(v8 + 84))
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v19 = v10 + v18 + 7;
  v20 = v11 + v18 + 7;
  v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v19 & 0xFFFFFFFFFFFFFFF8) = *(v20 & 0xFFFFFFFFFFFFFFF8);
  v22 = (v19 & 0xFFFFFFFFFFFFFFF8) + 15;

  v23 = v22 & 0xFFFFFFFFFFFFFFF8;
  v25 = (v21 & 0xFFFFFFFFFFFFFFF8) + 15;
  v24 = *(v21 & 0xFFFFFFFFFFFFFFF8);
  v26 = *v23;
  *v23 = v24;
  v23 += 15;
  v27 = v24;

  v25 &= 0xFFFFFFFFFFFFFFF8;
  v28 = *v25;
  v25 += 11;
  *(v23 & 0xFFFFFFFFFFFFFFF8) = v28;
  v29 = (v23 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v29 & 0xFFFFFFFFFFFFFFF8) = *(v25 & 0xFFFFFFFFFFFFFFF8);
  *((v29 & 0xFFFFFFFFFFFFFFF8) + 4) = *((v25 & 0xFFFFFFFFFFFFFFF8) + 4);
  v30 = (((v25 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v31 = (((v29 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v31 = *v30;
  v31[1] = v30[1];
  *((v31 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v30 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *initializeWithTake for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = ((v3 + 11) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v4 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v5 + v9 + 16) & ~v9);
  v11 = ((v6 + v9 + 16) & ~v9);
  if ((*(v8 + 48))(v11, 1, AssociatedTypeWitness))
  {
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy(v10, v11, v14);
  }

  else
  {
    (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
    v16 = *(v8 + 56);
    v15 = v8 + 56;
    v16(v10, 0, 1, AssociatedTypeWitness);
    v12 = *(v15 + 28);
    v13 = *(v15 + 8);
  }

  if (v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  v18 = ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 11) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 11) & 0xFFFFFFFFFFFFFFF8);
  v26 = v25 + 11;
  *v24 = *v25;
  v24[1] = v25[1];
  v27 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *(v26 & 0xFFFFFFFFFFFFFFF8);
  v27[1] = *((v26 & 0xFFFFFFFFFFFFFFF8) + 4);
  *((v27 + 11) & 0xFFFFFFFFFFFFFFF8) = *(((v26 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_DWORD *assignWithTake for GestureRecognizerRepresentableChild(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  v5 = (v3 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v5 = *v6;
  *(v5 + 8) = *(v6 + 8);
  *(v5 + 12) = *(v6 + 12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80);
  v10 = ((v9 + 16 + v5) & ~v9);
  v11 = ((v9 + 16 + v6) & ~v9);
  v12 = *(v8 + 48);
  v13 = v12(v10, 1, AssociatedTypeWitness);
  v14 = v12(v11, 1, AssociatedTypeWitness);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
      (*(v8 + 56))(v10, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 40))(v10, v11, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, AssociatedTypeWitness);
    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v10, v11, v17);
LABEL_12:
  if (*(v8 + 84))
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v19 = v10 + v18 + 7;
  v20 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *(v19 & 0xFFFFFFFFFFFFFFF8) = *v20;
  v21 = (v19 & 0xFFFFFFFFFFFFFFF8) + 15;

  v21 &= 0xFFFFFFFFFFFFFFF8;
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = *v21;
  *v21 = *v22;

  v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v25 += 11;
  *v24 = v26;
  v24 += 11;

  *(v24 & 0xFFFFFFFFFFFFFFF8) = *(v25 & 0xFFFFFFFFFFFFFFF8);
  *((v24 & 0xFFFFFFFFFFFFFFF8) + 4) = *((v25 & 0xFFFFFFFFFFFFFFF8) + 4);
  v27 = (((v25 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v28 = (((v24 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v27;
  v28[1] = v27[1];
  *((v28 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v27 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for GestureRecognizerRepresentableChild(_DWORD *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + 7;
  if (v8 < a2 && *(a1 + ((((((((((((v11 + ((v9 + 24) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v8 + *a1 + 1;
  }

  v13 = (((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;
  if (v7 < 0x7FFFFFFE)
  {
    v15 = *((v11 + v13) & 0xFFFFFFFFFFFFFFF8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    if ((v15 + 1) >= 2)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v14 = (*(v5 + 48))(v13);
    if (v14 >= 2)
    {
      return v14 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for GestureRecognizerRepresentableChild(_DWORD *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  v9 = *(v6 + 80);
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v8;
  }

  v11 = (v9 + 24) & ~v9;
  if (v7)
  {
    v12 = *(v6 + 64);
  }

  else
  {
    v12 = *(v6 + 64) + 1;
  }

  v13 = (((((((((((v12 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v10 >= a2)
  {
    if (v10 < a3)
    {
      *(a1 + v13) = 0;
    }

    if (a2)
    {
      v14 = ((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9);
      if (v8 < 0x7FFFFFFE)
      {
        v18 = (&v14[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v18 = a2;
        }
      }

      else if (v8 >= a2)
      {
        v19 = *(v6 + 56);

        v19(v14, a2 + 1);
      }

      else
      {
        if (v12 <= 3)
        {
          v15 = ~(-1 << (8 * v12));
        }

        else
        {
          v15 = -1;
        }

        if (v12)
        {
          v16 = v15 & (~v8 + a2);
          if (v12 <= 3)
          {
            v17 = v12;
          }

          else
          {
            v17 = 4;
          }

          bzero(v14, v12);
          if (v17 > 2)
          {
            if (v17 == 3)
            {
              *v14 = v16;
              v14[2] = BYTE2(v16);
            }

            else
            {
              *v14 = v16;
            }
          }

          else if (v17 == 1)
          {
            *v14 = v16;
          }

          else
          {
            *v14 = v16;
          }
        }
      }
    }
  }

  else
  {
    bzero(a1, (((((((((((v12 + 7 + v11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8 | 4);
    *a1 = ~v10 + a2;
    if (v10 < a3)
    {
      *(a1 + v13) = 1;
    }
  }
}

uint64_t partial apply for closure #1 in GestureRecognizerRepresentableChild.updateValue()@<X0>(_BYTE *a1@<X8>)
{
  result = _DynamicPropertyBuffer.update(container:phase:)();
  *a1 = result & 1;
  return result;
}

void *initializeBufferWithCopyOfBuffer for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-43 - v5) | v5) - *(*(*(a3 + 24) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v9 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
    v10 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
    v11 = *v10;
    v12 = *(v10 + 16);
    *(v9 + 32) = *(v10 + 32);
    *v9 = v11;
    *(v9 + 16) = v12;
    (*(v4 + 16))((v9 + v5 + 34) & ~v5, (v10 + v5 + 34) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

_DWORD *initializeWithCopy for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 16))((*(v8 + 80) + 34 + v4) & ~*(v8 + 80), (*(v8 + 80) + 34 + v5) & ~*(v8 + 80));
  return a1;
}

_DWORD *assignWithCopy for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 24))((*(v8 + 80) + 34 + v4) & ~*(v8 + 80), (*(v8 + 80) + 34 + v5) & ~*(v8 + 80));
  return a1;
}

_DWORD *initializeWithTake for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 32))((*(v8 + 80) + 34 + v4) & ~*(v8 + 80), (*(v8 + 80) + 34 + v5) & ~*(v8 + 80));
  return a1;
}

_DWORD *assignWithTake for InsettableGroupedListBodyRule(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 16);
  *(v4 + 32) = *(v5 + 32);
  *v4 = v6;
  *(v4 + 16) = v7;
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 40))((*(v8 + 80) + 34 + v4) & ~*(v8 + 80), (*(v8 + 80) + 34 + v5) & ~*(v8 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for InsettableGroupedListBodyRule(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 34) & ~v6);
  }

  v8 = ((v6 + 42) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v6 + 34) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for InsettableGroupedListBodyRule(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 42) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
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
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 11) & 0xFFFFFFFFFFFFFFF8) + v8 + 34) & ~v8;

  v18(v19);
}

void *initializeBufferWithCopyOfBuffer for InsettableGroupedListBody(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(v6 - 8);
  v11 = *(v10 + 80);
  if ((v11 | v8) <= 7 && ((*(v10 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((-35 - v11 - ((v9 + 7) & 0xFFFFFFFFFFFFFFF8)) | v11) - *(*(v6 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v7 + 84) & 0x80000000) != 0)
    {
      v17 = ~v11;
      if ((*(v7 + 48))(v15 + 1))
      {
LABEL_13:
        memcpy(__dst, __src, v9);
LABEL_16:
        v21 = (__dst + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
        v22 = (__src + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
        v23 = *v22;
        v24 = *(v22 + 16);
        *(v21 + 32) = *(v22 + 32);
        *v21 = v23;
        *(v21 + 16) = v24;
        (*(v10 + 16))((v21 + v11 + 34) & v17, (v22 + v11 + 34) & v17, v6);
        return __dst;
      }
    }

    else
    {
      v16 = *v15;
      if (*v15 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      v17 = ~v11;
      if (v16 != -1)
      {
        goto LABEL_13;
      }
    }

    *__dst = *__src;
    v26 = v6;
    v18 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v15;
    v19 = *(v7 + 16);

    v20 = v18 + 1;
    v6 = v26;
    v19(v20, v15 + 1, v5);
    goto LABEL_16;
  }

  v14 = *__src;
  *__dst = *__src;
  __dst = (v14 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));

  return __dst;
}

void *assignWithCopy for InsettableGroupedListBody(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v28 = ((v9 + 16) & ~v9) + v10;
    v26 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v7 + 48);
    v25 = v17((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = v28;
    v12 = v26;
    v15 = v17((v13 + v9 + 8) & ~v9, v8, v6);
    v4 = a2;
    v5 = a1;
    v3 = a3;
    if (!v25)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 24))((v12 + v9 + 8) & v30, (v13 + v9 + 8) & v30, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v30, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v12 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *v4;
    *v12 = *v13;
    v18 = *(v7 + 16);

    v18((v12 + v9 + 8) & v30, (v13 + v9 + 8) & v30, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  v19 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  v22 = *(v20 + 16);
  *(v19 + 32) = *(v20 + 32);
  *v19 = v21;
  *(v19 + 16) = v22;
  v23 = *(*(v3 + 16) - 8);
  (*(v23 + 24))((*(v23 + 80) + 34 + v19) & ~*(v23 + 80), (*(v23 + 80) + 34 + v20) & ~*(v23 + 80));
  return v5;
}

void *initializeWithTake for InsettableGroupedListBody(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    (*(v7 + 32))((v15 + v8 + 8) & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v16 = (__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  v19 = *(v17 + 16);
  *(v16 + 32) = *(v17 + 32);
  *v16 = v18;
  *(v16 + 16) = v19;
  v20 = *(*(a3 + 16) - 8);
  (*(v20 + 32))((*(v20 + 80) + 34 + v16) & ~*(v20 + 80), (*(v20 + 80) + 34 + v17) & ~*(v20 + 80));
  return __dst;
}

void *assignWithTake for InsettableGroupedListBody(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v8 + 16) & ~v8) + v9;
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v30 = ((v8 + 16) & ~v8) + v9;
    v16 = *(v6 + 48);
    v17 = *(a3 + 24);
    v18 = v16((v11 + v8 + 8) & ~v8, v7, v17);
    v19 = v16;
    v28 = v18;
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = v7;
    v12 = v17;
    v21 = v17;
    v5 = a1;
    v10 = v30;
    v15 = v19((v13 + v8 + 8) & ~v8, v20, v21);
    v3 = a3;
    if (!v28)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *a2;

        *v11 = *v13;

        (*(v6 + 40))((v11 + v8 + 8) & v32, (v13 + v8 + 8) & v32, v12);
        goto LABEL_12;
      }

      (*(v6 + 8))((v11 + v8 + 8) & v32, v12);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *(a3 + 24);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v11 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *a2;
    *v11 = *v13;
    (*(v6 + 32))((v11 + v8 + 8) & v32, (v13 + v8 + 8) & v32, v12);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, a2, v10);
LABEL_12:
  v22 = (v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  v25 = *(v23 + 16);
  *(v22 + 32) = *(v23 + 32);
  *v22 = v24;
  *(v22 + 16) = v25;
  v26 = *(*(v3 + 16) - 8);
  (*(v26 + 40))((*(v26 + 80) + 34 + v22) & ~*(v26 + 80), (*(v26 + 80) + 34 + v23) & ~*(v26 + 80));
  return v5;
}

uint64_t getEnumTagSinglePayload for InsettableGroupedListBody(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v5 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a3 + 24) - 8) + 64);
  v16 = v13 + 34;
  v17 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v18 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(*(v9 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v8 >= v11)
      {
        v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v6 & 0x80000000) != 0)
        {
          v31 = (*(v5 + 48))((v29 + v12 + 8) & ~v12);
        }

        else
        {
          v30 = *v29;
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          v31 = v30 + 1;
        }

        if (v31 >= 2)
        {
          return v31 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v26 = ~v13;
        v27 = *(v10 + 48);
        v28 = (v16 + ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & v26;

        return v27(v28, v11, v9);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for InsettableGroupedListBody(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v9 + 80);
  v13 = v8 - 1;
  if (v10 <= v8 - 1)
  {
    v14 = v8 - 1;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = ((v11 + 16) & ~v11) + *(*(*(a4 + 24) - 8) + 64);
  v16 = ((v12 + 34 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + *(v9 + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v21 = (v20 >> (8 * v16)) + 1;
    if (v16)
    {
      v24 = v20 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v24;
          if (v19 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v20;
          if (v19 > 1)
          {
LABEL_14:
            if (v19 == 2)
            {
              *&a1[v16] = v21;
            }

            else
            {
              *&a1[v16] = v21;
            }

            return;
          }
        }

LABEL_60:
        if (v19)
        {
          a1[v16] = v21;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v19 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v19)
  {
    a1[v16] = 0;
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
  if (v13 < v10)
  {
    v25 = *(v9 + 56);

    v25((v12 + 34 + (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v12);
    return;
  }

  if (v13 < a2)
  {
    if (v15 <= 3)
    {
      v26 = ~(-1 << (8 * v15));
    }

    else
    {
      v26 = -1;
    }

    if (!v15)
    {
      return;
    }

    v27 = v26 & (a2 - v8);
    if (v15 <= 3)
    {
      v28 = v15;
    }

    else
    {
      v28 = 4;
    }

    bzero(a1, v15);
    if (v28 <= 2)
    {
      if (v28 == 1)
      {
LABEL_49:
        *a1 = v27;
        return;
      }

LABEL_74:
      *a1 = v27;
      return;
    }

    goto LABEL_75;
  }

  if (a2 >= v8)
  {
    if (v15 <= 3)
    {
      v30 = ~(-1 << (8 * v15));
    }

    else
    {
      v30 = -1;
    }

    if (!v15)
    {
      return;
    }

    v27 = v30 & (a2 - v8);
    if (v15 <= 3)
    {
      v28 = v15;
    }

    else
    {
      v28 = 4;
    }

    bzero(a1, v15);
    if (v28 <= 2)
    {
      if (v28 == 1)
      {
        goto LABEL_49;
      }

      goto LABEL_74;
    }

LABEL_75:
    if (v28 == 3)
    {
      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    else
    {
      *a1 = v27;
    }

    return;
  }

  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v31 = *(v6 + 56);
    v32 = a2 + 1;

    v31((v29 + v11 + 8) & ~v11, v32);
  }

  else if (((a2 + 1) & 0x80000000) != 0)
  {
    *v29 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v29 = a2;
  }
}

uint64_t EnvironmentValues.uiKitCellState.getter()
{
  if (*(v0 + 8))
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UIKitCellStateKey>, &type metadata for UIKitCellStateKey, &protocol witness table for UIKitCellStateKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UIKitCellStateKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance InsettableGroupedListBodyRule<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StyleContextWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v2 = type metadata accessor for InsettableGroupedListBody();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t InsettableGroupedListBody.TableViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v6 = *(a2 + 24);
  type metadata accessor for Binding();
  v38 = type metadata accessor for Optional();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v31 = &AssociatedConformanceWitness - v7;
  v8 = *(a2 + 40);
  swift_getAssociatedTypeWitness();
  v34 = v6;
  v35 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for TableViewListDataSource();
  v33 = v9;
  WitnessTable = swift_getWitnessTable();
  v47[0] = v9;
  v47[1] = v6;
  v47[2] = WitnessTable;
  v47[3] = v8;
  v10 = type metadata accessor for TableViewListCore();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &AssociatedConformanceWitness - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &AssociatedConformanceWitness - v14;
  outlined init with copy of _VariadicView_Children(a1, v46);
  if (*(v3 + *(a2 + 64) + 33) == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8) | (*(v3 + 9) << 8));
  v19 = v18;
  v20 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v21)
  {
    v20 = 35.0;
  }

  TableViewListDataSource.init(_:style:minRowHeight:minHeaderHeight:)(v46, v16, v17, v19 & 1, v47, v20);
  v22 = v31;
  (*(v36 + 16))(v31, v3 + *(a2 + 60), v38);
  v23 = v3 + *(a2 + 64);
  v24 = *(v23 + 16);
  v48[0] = *v23;
  v48[1] = v24;
  v49 = *(v23 + 32);
  v25 = *(v3 + 80);
  v52 = *(v3 + 64);
  v53 = v25;
  v54 = *(v3 + 96);
  v26 = *(v3 + 48);
  v50 = *(v3 + 32);
  v51 = v26;
  specialized Environment.wrappedValue.getter(v43);
  v41[0] = *&v43[8];
  v41[1] = v44;
  v42[0] = v45[0];
  *(v42 + 9) = *(v45 + 9);
  v27 = v33;
  TableViewListCore.Configuration.init(insetMode:padding:)(v48, v41, v40);
  TableViewListCore.init(dataSource:selection:configuration:)(v47, v22, v40, v27, v12);
  static ViewBuilder.buildExpression<A>(_:)(v12, v10, &protocol witness table for TableViewListCore<A, B>);
  v28 = *(v37 + 8);
  v28(v12, v10);
  static ViewBuilder.buildExpression<A>(_:)(v15, v10, &protocol witness table for TableViewListCore<A, B>);
  return (v28)(v15, v10);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance InsettableGroupedListBody<A, B>.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SectionInsetMode()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  Hasher.init(_seed:)();
  if (v6 == 1)
  {
    if (v4 | v2 | v1 | v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 13;
    }

    MEMORY[0x18D00F6F0](v8);
  }

  else
  {
    MEMORY[0x18D00F6F0](31);
    if ((v5 & 1) == 0)
    {
      EdgeInsets.hash(into:)();
    }
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SectionInsetMode()
{
  v1 = *(v0 + 32);
  if (*(v0 + 33) == 1)
  {
    if (*(v0 + 16) | *(v0 + 8) | *v0 | *(v0 + 24))
    {
      v2 = 0;
    }

    else
    {
      v2 = v1 == 0;
    }

    if (v2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 13;
    }

    return MEMORY[0x18D00F6F0](v3);
  }

  else
  {
    result = MEMORY[0x18D00F6F0](31);
    if ((v1 & 1) == 0)
    {

      return EdgeInsets.hash(into:)();
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SectionInsetMode()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  Hasher.init(_seed:)();
  if (v6 == 1)
  {
    if (v4 | v2 | v1 | v3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5 == 0;
    }

    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 13;
    }

    MEMORY[0x18D00F6F0](v8);
  }

  else
  {
    MEMORY[0x18D00F6F0](31);
    if ((v5 & 1) == 0)
    {
      EdgeInsets.hash(into:)();
    }
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SectionInsetMode(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  v12 = *(a2 + 32);
  result = *(a2 + 33);
  if (v7 != 1)
  {
    if ((result & 1) == 0)
    {
      if (v6)
      {
        if (v12)
        {
          return 1;
        }
      }

      else if (v12 & 1) == 0 && (static EdgeInsets.== infix(_:_:)())
      {
        return 1;
      }
    }

    return 0;
  }

  if (v5 | v3 | v2 | v4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v6 == 0;
  }

  if (!v14)
  {
    if (result)
    {
      if (v11 | v9 | v8 | v10)
      {
        v15 = 0;
      }

      else
      {
        v15 = v12 == 0;
      }

      return !v15;
    }

    return 0;
  }

  if (*(a2 + 33))
  {
    return !(v11 | v9 | v8 | v10) && v12 == 0;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ContentConfigurationBasedRootEnvironment();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance CollectionViewGroupedListsEnabled()
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  if (v2 == 1 && (static InterfaceIdiomPredicate.evaluate(inputs:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature();
    v0 = static UserDefaultKeyedFeature.isEnabled.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance DisableCollectionViewGroupedListsFeature()
{
  lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance DisableCollectionViewGroupedListsFeature@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type DisableCollectionViewGroupedListsFeature and conformance DisableCollectionViewGroupedListsFeature();
  result = (*(v4 + 16))(a1, v4);
  *a2 = result & 1;
  return result;
}

uint64_t EnvironmentValues.prominentHeaderStyling.getter()
{
  if (*(v0 + 8))
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA022ProminentHeaderStylingE0013_66E45C4729D0K18FEA1B1BE7BA175BEC8LLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ProminentHeaderStylingKey>, &type metadata for ProminentHeaderStylingKey, &protocol witness table for ProminentHeaderStylingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ProminentHeaderStylingKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((v5 + 16) & ~v5) + *(v4 + 64) + (((v5 | 7) + 98) & ~(v5 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 34 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8 + ((v5 + 16) & ~(v5 | 7));
  }

  else
  {
    v50 = *(*(a3 + 24) - 8);
    __n = ((v5 + 16) & ~v5) + *(v4 + 64);
    v52 = *(a3 + 24);
    v10 = *a2;
    v11 = *(a2 + 9);
    v12 = *(a2 + 8);
    v49 = *(v4 + 84);
    outlined copy of Environment<CGFloat?>.Content(*a2, v12, v11);
    *a1 = v10;
    *(a1 + 8) = v12;
    *(a1 + 9) = v11;
    v53 = a1;
    v14 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;
    v17 = *(v15 + 9);
    v18 = *(v15 + 8);
    outlined copy of Environment<CGFloat?>.Content(*v15, v18, v17);
    *v14 = v16;
    *(v14 + 8) = v18;
    *(v14 + 9) = v17;
    v19 = (v14 + 17) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v15 + 17) & 0xFFFFFFFFFFFFFFF8;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v20 + 24);
    v25 = *(v20 + 32);
    v26 = *(v20 + 40);
    v27 = *(v20 + 48);
    v28 = *(v20 + 56);
    v48 = *(v20 + 65);
    outlined copy of Environment<ListPadding>.Content(*v20, v22, v23, v24, v25, v26, v27, v28, *(v20 + 64), v48);
    *v19 = v21;
    *(v19 + 8) = v22;
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;
    *(v19 + 32) = v25;
    *(v19 + 40) = v26;
    *(v19 + 48) = v27;
    *(v19 + 56) = v28;
    v29 = v19 + 73;
    v30 = v20 + 73;
    *(v19 + 64) = v47;
    v31 = ((v20 + 73) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v19 + 65) = v48;
    if (v49 < 0)
    {
      v36 = v50;
      v35 = v52;
      v34 = (*(v50 + 48))(v32 + 1);
    }

    else
    {
      v33 = *v32;
      if (*v32 >= 0xFFFFFFFF)
      {
        LODWORD(v33) = -1;
      }

      v34 = v33 + 1;
      v35 = v52;
      v36 = v50;
    }

    v37 = (v29 & 0xFFFFFFFFFFFFFFF8);
    v9 = v53;
    if (v34)
    {
      v38 = ((v20 + 73) & 0xFFFFFFFFFFFFFFF8);
      v39 = __n;
      memcpy(v37, v38, __n);
    }

    else
    {
      *v37 = *v31;
      v40 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v40 = *v32;
      v41 = *(v36 + 16);

      v41(v40 + 1, v32 + 1, v35);
      v39 = __n;
    }

    v42 = ((v30 | 7) + v39) & 0xFFFFFFFFFFFFFFF8;
    v43 = *v42;
    v44 = *(v42 + 16);
    v45 = ((v29 | 7) + v39) & 0xFFFFFFFFFFFFFFF8;
    *(v45 + 32) = *(v42 + 32);
    *v45 = v43;
    *(v45 + 16) = v44;
  }

  return v9;
}

uint64_t assignWithCopy for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 9);
  v7 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v7, v6);
  v8 = *a1;
  v9 = *(a1 + 9);
  *a1 = v5;
  v10 = *(a1 + 8);
  *(a1 + 8) = v7;
  *(a1 + 9) = v6;
  outlined consume of Environment<CGFloat?>.Content(v8, v10, v9);
  v71 = a1;
  v11 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  LOBYTE(v5) = *(v12 + 9);
  v14 = *(v12 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v12, v14, v5);
  v15 = *v11;
  v16 = *(v11 + 9);
  *v11 = v13;
  v17 = *(v11 + 8);
  *(v11 + 8) = v14;
  *(v11 + 9) = v5;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v67 = *(v18 + 8);
  v68 = *v18;
  v19 = (v11 + 17) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v18 + 16);
  v21 = *(v18 + 24);
  v22 = *(v18 + 32);
  v23 = *(v18 + 40);
  v24 = *(v18 + 48);
  v25 = *(v18 + 56);
  LOBYTE(v13) = *(v18 + 64);
  LOBYTE(v5) = *(v18 + 65);
  outlined copy of Environment<ListPadding>.Content(*v18, v67, v20, v21, v22, v23, v24, v25, v13, v5);
  v26 = *v19;
  v27 = *(v19 + 8);
  v28 = *(v19 + 16);
  v29 = *(v19 + 24);
  v30 = *(v19 + 32);
  v31 = *(v19 + 40);
  v32 = *(v19 + 48);
  v33 = *(v19 + 56);
  v34 = *(v19 + 64);
  v35 = *(v19 + 65);
  *v19 = v68;
  *(v19 + 8) = v67;
  *(v19 + 16) = v20;
  *(v19 + 24) = v21;
  *(v19 + 32) = v22;
  *(v19 + 40) = v23;
  *(v19 + 48) = v24;
  *(v19 + 56) = v25;
  *(v19 + 64) = v13;
  *(v19 + 65) = v5;
  outlined consume of Environment<ListPadding>.Content(v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  v36 = *(a3 + 24);
  v37 = *(v36 - 8);
  v38 = *(v37 + 80);
  v39 = (v38 | 7) + 66;
  v40 = ((v39 + v19) & ~(v38 | 7));
  v41 = v39 + v18;
  v42 = (v41 & ~(v38 | 7));
  v43 = *(v37 + 84);
  v44 = ~v38;
  v45 = *(v37 + 64);
  v46 = ((v38 + 16) & ~v38) + v45;
  v47 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v43 & 0x80000000) != 0)
  {
    v69 = ((v38 + 16) & ~v38) + v45;
    v52 = v41 & ~(v38 | 7);
    v53 = *(v37 + 48);
    v54 = (v47 + v38 + 8) & v44;
    v55 = *(a3 + 24);
    v66 = v53(v54, v43, v36);
    v48 = ((v52 + 15) & 0xFFFFFFFFFFFFFFF8);
    v50 = v53((v48 + v38 + 8) & ~v38, v43, v55);
    v42 = v52;
    v46 = v69;
    v36 = v55;
    v44 = ~v38;
    if (!v66)
    {
LABEL_5:
      v51 = v36;
      if (!v50)
      {
        *v40 = *v42;

        *v47 = *v48;

        (*(v37 + 24))((v47 + v38 + 8) & v44, (v48 + v38 + 8) & v44, v51);
        goto LABEL_12;
      }

      (*(v37 + 8))((v47 + v38 + 8) & v44, v51);
      goto LABEL_9;
    }
  }

  else
  {
    v48 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
    v49 = *v48;
    if (*v48 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v49) = -1;
    }

    v50 = v49 + 1;
    if (*v47 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v50)
  {
    *v40 = *v42;
    *v47 = *v48;
    v56 = v47 + v38 + 8;
    v57 = v48 + v38 + 8;
    v58 = *(v37 + 16);
    v59 = v44;
    v60 = v36;

    v58(v56 & v59, v57 & v59, v60);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v40, v42, v46);
LABEL_12:
  v61 = (v42 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v40 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = *v61;
  v64 = *(v61 + 16);
  *(v62 + 32) = *(v61 + 32);
  *v62 = v63;
  *(v62 + 16) = v64;
  return v71;
}

uint64_t initializeWithTake for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 32);
  v9 = *(v8 + 48);
  v11 = *(v8 + 16);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 32) = v10;
  *(v7 + 48) = v9;
  *(v7 + 16) = v11;
  *v7 = *v8;
  v12 = *(a3 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = (v14 | 7) + 66;
  v16 = ((v15 + v7) & ~(v14 | 7));
  v17 = ((v15 + v8) & ~(v14 | 7));
  v18 = ~v14;
  v19 = (v14 + 16) & ~v14;
  v20 = *(v13 + 64);
  v21 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v13 + 84) & 0x80000000) == 0)
  {
    v22 = *v21;
    if (*v21 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    v23 = v19 + v20;
    if (v22 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v16 = *v17;
    v24 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v24 = *v21;
    (*(v13 + 32))((v24 + v14 + 8) & v18, (v21 + v14 + 8) & v18, v12);
    goto LABEL_8;
  }

  v23 = v19 + v20;
  if (!(*(v13 + 48))((v21 + v14 + 8) & v18))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v16, v17, v23);
LABEL_8:
  v25 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v25;
  v28 = *(v25 + 16);
  *(v26 + 32) = *(v25 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  return a1;
}

uint64_t assignWithTake for InsettableGroupedListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *a1;
  v9 = *(a1 + 9);
  *a1 = *a2;
  v10 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
  outlined consume of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  v14 = *(v12 + 9);
  v15 = *v11;
  v16 = *(v11 + 9);
  *v11 = *v12;
  v17 = *(v11 + 8);
  *(v11 + 8) = v13;
  *(v11 + 9) = v14;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 64);
  v20 = *(v18 + 65);
  v21 = (v11 + 17) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);
  v26 = *(v21 + 32);
  v27 = *(v21 + 40);
  v28 = *(v21 + 48);
  v29 = *(v21 + 56);
  v30 = *(v21 + 64);
  v31 = *(v21 + 65);
  v32 = *(v18 + 16);
  v33 = *(v18 + 32);
  v34 = *(v18 + 48);
  *v21 = *v18;
  *(v21 + 16) = v32;
  *(v21 + 32) = v33;
  *(v21 + 48) = v34;
  *(v21 + 64) = v19;
  *(v21 + 65) = v20;
  outlined consume of Environment<ListPadding>.Content(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  v35 = *(a3 + 24);
  v36 = *(v35 - 8);
  v37 = *(v36 + 80);
  v38 = (v37 | 7) + 66;
  v39 = ((v38 + v21) & ~(v37 | 7));
  __src = ((v38 + v18) & ~(v37 | 7));
  v40 = *(v36 + 84);
  v41 = *(v36 + 64);
  v42 = ((v37 + 16) & ~v37) + v41;
  v43 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  v57 = ~v37;
  if ((v40 & 0x80000000) != 0)
  {
    v56 = ((v37 + 16) & ~v37) + v41;
    v47 = *(v36 + 48);
    v48 = v47((v43 + v37 + 8) & ~v37, v40, v35);
    v49 = v47;
    v55 = v48;
    v44 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    v42 = v56;
    v46 = v49((v44 + v37 + 8) & ~v37, v40, v35);
    if (!v55)
    {
LABEL_5:
      if (!v46)
      {
        *v39 = *__src;

        *v43 = *v44;

        (*(v36 + 40))((v43 + v37 + 8) & v57, (v44 + v37 + 8) & v57, v35);
        goto LABEL_12;
      }

      (*(v36 + 8))((v43 + v37 + 8) & v57, v35);
      goto LABEL_9;
    }
  }

  else
  {
    v44 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    v45 = *v44;
    if (*v44 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v45) = -1;
    }

    v46 = v45 + 1;
    if (*v43 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v46)
  {
    *v39 = *__src;
    *v43 = *v44;
    (*(v36 + 32))((v43 + v37 + 8) & v57, (v44 + v37 + 8) & v57, v35);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v39, __src, v42);
LABEL_12:
  v50 = (__src + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v39 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = *v50;
  v53 = *(v50 + 16);
  *(v51 + 32) = *(v50 + 32);
  *v51 = v52;
  *(v51 + 16) = v53;
  return a1;
}

uint64_t getEnumTagSinglePayload for InsettableGroupedListBody.TableViewRoot(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((*(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-99 - v8) | v8) + 5) & 0xFFFFFFFFFFFFFFF8) + 34;
  v10 = (a2 - v7 + 0x10000) >> 16;
  if (v9 <= 3)
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

  if (v13 <= 1)
  {
    if (!v13)
    {
      goto LABEL_28;
    }

    v14 = *(a1 + v9);
    if (!*(a1 + v9))
    {
      goto LABEL_28;
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v9);
    if (v9 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return (v17 | v16) + v7;
  }

  if (v13 == 2)
  {
    v14 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = *(a1 + v9);
    if (v14)
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  v18 = ((((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + v8 + 66) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v5 & 0x80000000) != 0)
  {
    v20 = (*(v4 + 48))((v18 + v6 + 8) & ~v6);
  }

  else
  {
    v19 = *v18;
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 + 1;
  }

  if (v20 >= 2)
  {
    return v20 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for InsettableGroupedListBody.TableViewRoot(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((((v10 + 16) & ~v10) + *(*(*(a4 + 24) - 8) + 64) + (((v10 | 7) + 98) & ~(v10 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 34;
  if (v8 - 1 >= a3)
  {
    v15 = 0;
    if (v9 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 0x10000) >> 16;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v9 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v19 = ((((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + (v10 | 7) + 66) & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v21 = *(v6 + 56);
        v22 = a2 + 1;

        v21((v19 + v10 + 8) & ~v10, v22);
      }

      else
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v20 = a2;
        }

        *v19 = v20;
      }

      return;
    }
  }

  v16 = a2 - v8;
  v17 = (a2 - v8) >> 16;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v18;
      }

      else
      {
        *&a1[v11] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v18;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v4 - 8);
  v9 = *(v8 + 80);
  if ((v7 | 7 | v9) == 7 && ((*(v8 + 80) | *(v6 + 80)) & 0x100000) == 0 && ((((((-99 - (v7 | 7)) | v7 | 7) - (((v7 + 16) & ~v7) + *(*(v5 - 8) + 64)) - 7) | 7) - v9 - 34) | v9) - *(*(v4 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v68 = *(v8 + 80);
    v62 = *(v5 - 8);
    __n = ((v7 + 16) & ~v7) + *(v62 + 64);
    v64 = v5;
    v65 = *(v4 - 8);
    v66 = v4;
    v60 = ~v7;
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = a2;
    v61 = *(v6 + 84);
    outlined copy of Environment<Bool>.Content(*a2, v15);
    *a1 = v14;
    *(a1 + 8) = v15;
    v67 = a1;
    v17 = a1 & 0xFFFFFFFFFFFFFFF8;
    v16 = (v16 & 0xFFFFFFFFFFFFFFF8);
    v18 = v16[2];
    v19 = *(v16 + 25);
    v20 = *(v16 + 24);
    outlined copy of Environment<CGFloat?>.Content(v18, v20, v19);
    *(v17 + 16) = v18;
    *(v17 + 24) = v20;
    *(v17 + 25) = v19;
    v21 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
    v59 = v7;
    v22 = (v16 + 33) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    v26 = *(v22 + 24);
    v28 = *(v22 + 32);
    v27 = *(v22 + 40);
    v29 = *(v22 + 48);
    v30 = *(v22 + 56);
    v57 = *(v22 + 64);
    v58 = *(v22 + 65);
    outlined copy of Environment<ListPadding>.Content(*v22, v24, v25, v26, v28, v27, v29, v30, v57, v58);
    *v21 = v23;
    *(v21 + 8) = v24;
    *(v21 + 16) = v25;
    *(v21 + 24) = v26;
    *(v21 + 32) = v28;
    *(v21 + 40) = v27;
    *(v21 + 48) = v29;
    *(v21 + 56) = v30;
    v31 = v21 + 73;
    v32 = v22 + 73;
    *(v21 + 64) = v57;
    v33 = ((v22 + 73) & 0xFFFFFFFFFFFFFFF8);
    v34 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v21 + 65) = v58;
    if (v61 < 0)
    {
      v38 = v62;
      v37 = v64;
      v36 = (*(v62 + 48))((v34 + v59 + 8) & v60);
      v39 = v68;
      v40 = v59;
      v41 = v60;
    }

    else
    {
      v35 = *v34;
      if (*v34 >= 0xFFFFFFFF)
      {
        LODWORD(v35) = -1;
      }

      v36 = v35 + 1;
      v37 = v64;
      v38 = v62;
      v39 = v68;
      v40 = v59;
      v41 = v60;
    }

    v42 = ~v39;
    v43 = (v31 & 0xFFFFFFFFFFFFFFF8);
    if (v36)
    {
      v44 = __n;
      memcpy((v31 & 0xFFFFFFFFFFFFFFF8), v33, __n);
    }

    else
    {
      *v43 = *v33;
      v45 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v45 = *v34;
      v46 = v45 + v40;
      v47 = v34 + v40;
      v48 = v41;
      v49 = v46 + 8;
      v50 = v47 + 8;
      v51 = *(v38 + 16);

      v39 = v68;

      v51(v49 & v48, v50 & v48, v37);
      v44 = __n;
    }

    v52 = ((v31 | 7) + v44) & 0xFFFFFFFFFFFFFFF8;
    v53 = ((v32 | 7) + v44) & 0xFFFFFFFFFFFFFFF8;
    v54 = *v53;
    v55 = *(v53 + 16);
    *(v52 + 32) = *(v53 + 32);
    *v52 = v54;
    *(v52 + 16) = v55;
    (*(v65 + 16))((v52 + v39 + 34) & v42, (v53 + v39 + 34) & v42, v66);
    return v67;
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    v13 = v12 + (((v7 | 7 | v9) + 16) & ~(v7 | 7 | v9));
  }

  return v13;
}

uint64_t assignWithCopy for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v6;
  outlined consume of Environment<Bool>.Content(v7, v8);
  v68 = a1;
  a1 &= 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v9 + 25);
  v11 = *(v9 + 24);
  outlined copy of Environment<CGFloat?>.Content(v10, v11, v5);
  v12 = *(a1 + 16);
  v13 = *(a1 + 25);
  *(a1 + 16) = v10;
  v14 = *(a1 + 24);
  *(a1 + 24) = v11;
  *(a1 + 25) = v5;
  outlined consume of Environment<CGFloat?>.Content(v12, v14, v13);
  v15 = a1 + 33;
  v16 = (v9 + 33) & 0xFFFFFFFFFFFFFFF8;
  v64 = *(v16 + 8);
  v66 = *v16;
  v17 = v15 & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  v20 = *(v16 + 32);
  v21 = *(v16 + 40);
  v22 = *(v16 + 48);
  v23 = *(v16 + 56);
  LOBYTE(v10) = *(v16 + 64);
  LOBYTE(v5) = *(v16 + 65);
  outlined copy of Environment<ListPadding>.Content(*v16, v64, v18, v19, v20, v21, v22, v23, v10, v5);
  v24 = *v17;
  v25 = *(v17 + 8);
  v26 = *(v17 + 16);
  v27 = *(v17 + 24);
  v28 = *(v17 + 32);
  v29 = *(v17 + 40);
  v30 = *(v17 + 48);
  v31 = *(v17 + 56);
  v32 = *(v17 + 64);
  v33 = *(v17 + 65);
  *v17 = v66;
  *(v17 + 8) = v64;
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v20;
  *(v17 + 40) = v21;
  v34 = a3;
  *(v17 + 48) = v22;
  *(v17 + 56) = v23;
  *(v17 + 64) = v10;
  *(v17 + 65) = v5;
  outlined consume of Environment<ListPadding>.Content(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v35 = *(a3 + 24);
  v36 = *(v35 - 8);
  v37 = *(v36 + 80);
  v38 = (v37 | 7) + 66;
  v39 = ((v38 + v17) & ~(v37 | 7));
  v40 = ((v38 + v16) & ~(v37 | 7));
  v41 = *(v36 + 84);
  v42 = *(v36 + 64);
  v43 = ((v37 + 16) & ~v37) + v42;
  v44 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  v67 = ~v37;
  if ((v41 & 0x80000000) != 0)
  {
    v63 = ((v37 + 16) & ~v37) + v42;
    v48 = *(v36 + 48);
    v49 = *(a3 + 24);
    v62 = v48((v44 + v37 + 8) & ~v37, v41, v35);
    v45 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
    v47 = v48((v45 + v37 + 8) & ~v37, v41, v49);
    v35 = v49;
    v43 = v63;
    v34 = a3;
    if (!v62)
    {
LABEL_5:
      v65 = v35;
      if (!v47)
      {
        *v39 = *v40;

        *v44 = *v45;

        (*(v36 + 24))((v44 + v37 + 8) & v67, (v45 + v37 + 8) & v67, v65);
        goto LABEL_12;
      }

      (*(v36 + 8))((v44 + v37 + 8) & v67, v65);
      goto LABEL_9;
    }
  }

  else
  {
    v45 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
    v46 = *v45;
    if (*v45 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v46) = -1;
    }

    v47 = v46 + 1;
    if (*v44 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v47)
  {
    *v39 = *v40;
    *v44 = *v45;
    v50 = v44 + v37 + 8;
    v51 = v45 + v37 + 8;
    v52 = *(v36 + 16);
    v53 = v43;
    v54 = v35;

    v55 = v54;
    v43 = v53;
    v52(v50 & v67, v51 & v67, v55);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v39, v40, v43);
LABEL_12:
  v56 = (v39 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v40 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = *v57;
  v59 = *(v57 + 16);
  *(v56 + 32) = *(v57 + 32);
  *v56 = v58;
  *(v56 + 16) = v59;
  v60 = *(*(v34 + 16) - 8);
  (*(v60 + 24))((*(v60 + 80) + 34 + v56) & ~*(v60 + 80), (*(v60 + 80) + 34 + v57) & ~*(v60 + 80));
  return v68;
}

uint64_t initializeWithTake for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v4 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v4 + 16) = v5;
  v6 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v7 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 32);
  v8 = *(v7 + 48);
  v10 = *(v7 + 16);
  *(v6 + 64) = *(v7 + 64);
  *(v6 + 32) = v9;
  *(v6 + 48) = v8;
  *(v6 + 16) = v10;
  *v6 = *v7;
  v11 = *(a3 + 24);
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = (v13 | 7) + 66;
  v15 = ((v14 + v6) & ~(v13 | 7));
  v16 = ((v14 + v7) & ~(v13 | 7));
  v17 = ~v13;
  v18 = (v13 + 16) & ~v13;
  v19 = *(v12 + 64);
  v20 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v12 + 84) & 0x80000000) == 0)
  {
    v21 = *v20;
    if (*v20 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    v22 = v18 + v19;
    if (v21 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v15 = *v16;
    v23 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v20;
    (*(v12 + 32))((v23 + v13 + 8) & v17, (v20 + v13 + 8) & v17, v11);
    goto LABEL_8;
  }

  v22 = v18 + v19;
  if (!(*(v12 + 48))((v20 + v13 + 8) & v17))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v15, v16, v22);
LABEL_8:
  v24 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  *(v24 + 32) = *(v25 + 32);
  *v24 = v26;
  *(v24 + 16) = v27;
  v28 = *(*(a3 + 16) - 8);
  (*(v28 + 32))((*(v28 + 80) + 34 + v24) & ~*(v28 + 80), (*(v28 + 80) + 34 + v25) & ~*(v28 + 80));
  return a1;
}

uint64_t assignWithTake for InsettableGroupedListBody.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = (v4 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v4 + 24);
  v12 = *(v4 + 25);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 25);
  *(v10 + 16) = v4[2];
  v15 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 24) = v11;
  *(v10 + 25) = v12;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = (v4 + 33) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 64);
  v18 = *(v16 + 65);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v24 = *(v19 + 32);
  v25 = *(v19 + 40);
  v26 = *(v19 + 48);
  v27 = *(v19 + 56);
  v28 = *(v19 + 64);
  v29 = *(v19 + 65);
  v30 = *(v16 + 16);
  v31 = *(v16 + 32);
  v32 = *(v16 + 48);
  *v19 = *v16;
  *(v19 + 16) = v30;
  *(v19 + 32) = v31;
  *(v19 + 48) = v32;
  *(v19 + 64) = v17;
  *(v19 + 65) = v18;
  outlined consume of Environment<ListPadding>.Content(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v33 = *(a3 + 24);
  v34 = *(v33 - 8);
  v35 = *(v34 + 80);
  v36 = (v35 | 7) + 66;
  v37 = ((v36 + v19) & ~(v35 | 7));
  v38 = ((v36 + v16) & ~(v35 | 7));
  v39 = *(v34 + 84);
  v54 = ~v35;
  __n = ((v35 + 16) & ~v35) + *(v34 + 64);
  v40 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v39 & 0x80000000) != 0)
  {
    v53 = v38;
    v44 = *(v34 + 48);
    v52 = v44((v40 + v35 + 8) & ~v35, v39, v33);
    v41 = ((v53 + 15) & 0xFFFFFFFFFFFFFFF8);
    v43 = v44((v41 + v35 + 8) & ~v35, v39, v33);
    v38 = v53;
    if (!v52)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v43)
    {
      goto LABEL_9;
    }

    *v37 = *v38;
    *v40 = *v41;
    (*(v34 + 32))((v40 + v35 + 8) & v54, (v41 + v35 + 8) & v54, v33);
LABEL_12:
    v45 = __n;
    goto LABEL_13;
  }

  v41 = ((v38 + 15) & 0xFFFFFFFFFFFFFFF8);
  v42 = *v41;
  if (*v41 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v42) = -1;
  }

  v43 = v42 + 1;
  if (*v40 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v43)
  {
    *v37 = *v38;

    *v40 = *v41;

    (*(v34 + 40))((v40 + v35 + 8) & v54, (v41 + v35 + 8) & v54, v33);
    goto LABEL_12;
  }

  (*(v34 + 8))((v40 + v35 + 8) & v54, v33);
LABEL_9:
  v45 = __n;
  memcpy(v37, v38, __n);
LABEL_13:
  v46 = (v37 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v38 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = *v47;
  v49 = *(v47 + 16);
  *(v46 + 32) = *(v47 + 32);
  *v46 = v48;
  *(v46 + 16) = v49;
  v50 = *(*(a3 + 16) - 8);
  (*(v50 + 40))((*(v50 + 80) + 34 + v46) & ~*(v50 + 80), (*(v50 + 80) + 34 + v47) & ~*(v50 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for InsettableGroupedListBody.CollectionViewBody(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v5 + 80);
  v13 = *(v10 + 80);
  if (v8 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 | 7;
  v16 = ((v12 + 16) & ~v12) + *(*(*(a3 + 24) - 8) + 64) + 7;
  v17 = v13 + 34;
  v18 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v19 = ((v17 + ((v16 + ((v15 + 98) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(*(v9 - 8) + 64);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 < 2)
    {
LABEL_31:
      v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + v15 + 66) & ~v15;
      if (v8 >= v11)
      {
        v30 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v6 & 0x80000000) != 0)
        {
          v32 = (*(v5 + 48))((v30 + v12 + 8) & ~v12);
        }

        else
        {
          v31 = *v30;
          if (v31 >= 0xFFFFFFFF)
          {
            LODWORD(v31) = -1;
          }

          v32 = v31 + 1;
        }

        if (v32 >= 2)
        {
          return v32 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v28 = ~v13;
        v29 = *(v10 + 48);

        return v29((v17 + ((v16 + v27) & 0xFFFFFFFFFFFFFFF8)) & v28, v11, v9);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_31;
  }

LABEL_18:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v14 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for InsettableGroupedListBody.CollectionViewBody(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v10 + 80);
  v14 = v8 - 1;
  if (v8 - 1 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v8 - 1;
  }

  v16 = v12 | 7;
  v17 = ((v12 + 16) & ~v12) + *(*(*(a4 + 24) - 8) + 64);
  v18 = ((v13 + 34 + ((v17 + 7 + (((v12 | 7) + 98) & ~(v12 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(*(v9 - 8) + 64);
  v19 = a3 >= v15;
  v20 = a3 - v15;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v24 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v15 < a2)
  {
    v22 = ~v15 + a2;
    if (v18 >= 4)
    {
      bzero(a1, v18);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v23 = (v22 >> (8 * v18)) + 1;
    if (v18)
    {
      v26 = v22 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v26;
          if (v21 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v22;
          if (v21 > 1)
          {
LABEL_14:
            if (v21 == 2)
            {
              *(a1 + v18) = v23;
            }

            else
            {
              *(a1 + v18) = v23;
            }

            return;
          }
        }

LABEL_60:
        if (v21)
        {
          *(a1 + v18) = v23;
        }

        return;
      }

      *a1 = v26;
      *(a1 + 2) = BYTE2(v26);
    }

    if (v21 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v18) = 0;
  }

  else if (v21)
  {
    *(a1 + v18) = 0;
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
  v27 = ~v16;
  v28 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + v16 + 66;
  v29 = (v28 & v27);
  if (v14 < v11)
  {
    v30 = *(v10 + 56);

    v30((v13 + 34 + (&v29[v17 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v13);
    return;
  }

  if (v14 < a2)
  {
    if (v17 <= 3)
    {
      v31 = ~(-1 << (8 * v17));
    }

    else
    {
      v31 = -1;
    }

    if (!v17)
    {
      return;
    }

    v32 = v31 & (a2 - v8);
    if (v17 <= 3)
    {
      v33 = v17;
    }

    else
    {
      v33 = 4;
    }

    bzero((v28 & v27), v17);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
LABEL_49:
        *v29 = v32;
        return;
      }

LABEL_74:
      *v29 = v32;
      return;
    }

    goto LABEL_75;
  }

  if (a2 >= v8)
  {
    if (v17 <= 3)
    {
      v35 = ~(-1 << (8 * v17));
    }

    else
    {
      v35 = -1;
    }

    if (!v17)
    {
      return;
    }

    v32 = v35 & (a2 - v8);
    if (v17 <= 3)
    {
      v33 = v17;
    }

    else
    {
      v33 = 4;
    }

    bzero(v29, v17);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_49;
      }

      goto LABEL_74;
    }

LABEL_75:
    if (v33 == 3)
    {
      *v29 = v32;
      v29[2] = BYTE2(v32);
    }

    else
    {
      *v29 = v32;
    }

    return;
  }

  v34 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v36 = *(v6 + 56);
    v37 = a2 + 1;

    v36((v34 + v12 + 8) & ~v12, v37);
  }

  else if (((a2 + 1) & 0x80000000) != 0)
  {
    *v34 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v34 = a2;
  }
}

_OWORD *initializeBufferWithCopyOfBuffer for ContentConfigurationBasedRootEnvironment(_OWORD *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v7;
    v8 = a2[5];
    *(v4 + 4) = a2[4];
    *(v4 + 5) = v8;
    *(v4 + 6) = a2[6];
    *(v4 + 56) = *(a2 + 56);
    *(v4 + 8) = a2[8];
    v10 = a2 + 9;
    v9 = a2[9];

    if (v9 == 1)
    {
      *(v4 + 9) = *v10;
      *(v4 + 80) = *(a2 + 80);
    }

    else
    {
      *(v4 + 9) = v9;
      *(v4 + 80) = *(a2 + 80);
    }

    *(v4 + 81) = *(a2 + 81);
    v12 = *(a3 + 24);
    v13 = type metadata accessor for UICellConfigurationState();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(a2 + v12, 1, v13))
    {
      type metadata accessor for UICellConfigurationState?(0);
      memcpy(v4 + v12, a2 + v12, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(v4 + v12, a2 + v12, v13);
      (*(v14 + 56))(v4 + v12, 0, 1, v13);
    }
  }

  return v4;
}

uint64_t initializeWithTake for ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t assignWithTake for ContentConfigurationBasedRootEnvironment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v7 = *(a2 + 72);
  v8 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  if (v8 == 1)
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
LABEL_4:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  *(a1 + 72) = v7;

  *(a1 + 80) = *(a2 + 80);
LABEL_6:
  *(a1 + 81) = *(a2 + 81);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for UICellConfigurationState();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(a2 + v9, 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_11;
  }

  if (v14)
  {
LABEL_11:
    type metadata accessor for UICellConfigurationState?(0);
    memcpy((a1 + v9), (a2 + v9), *(*(v15 - 8) + 64));
    return a1;
  }

  (*(v11 + 32))(a1 + v9, a2 + v9, v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
  return a1;
}

uint64_t assignWithCopy for ListContentStyling(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v4 = (a1 + 72);
  v5 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v7 = (a2 + 72);
  v6 = *(a2 + 72);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      *(a1 + 80) = *(a2 + 80);
      *v4 = v8;
    }

    else
    {
      *(a1 + 72) = v6;
      *(a1 + 80) = *(a2 + 80);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of ListItemTint(a1 + 72);
    v9 = *(a2 + 80);
    *v4 = *v7;
    *(a1 + 80) = v9;
  }

  else
  {
    *(a1 + 72) = v6;

    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

uint64_t assignWithTake for ListContentStyling(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  v5 = *(a2 + 72);
  v6 = *(a1 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  if (v6 != 1)
  {
    if (v5 != 1)
    {
      *(a1 + 72) = v5;

      *(a1 + 80) = *(a2 + 80);
      return a1;
    }

    outlined destroy of ListItemTint(a1 + 72);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for SectionInsetMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 34))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SectionInsetMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 34) = v3;
  return result;
}

uint64_t getEnumTag for SectionInsetMode(uint64_t a1)
{
  if (*(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for SectionInsetMode(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
    *(result + 33) = 1;
  }

  else
  {
    *(result + 33) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SectionInsetMode and conformance SectionInsetMode()
{
  result = lazy protocol witness table cache variable for type SectionInsetMode and conformance SectionInsetMode;
  if (!lazy protocol witness table cache variable for type SectionInsetMode and conformance SectionInsetMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SectionInsetMode and conformance SectionInsetMode);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for InsettableGroupedListBody<A, B>.TableViewRoot(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ProminentHeaderStylingKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = xmmword_1EAA38208;
  v2 = xmmword_1EAA38228;
  v9[3] = unk_1EAA38218;
  v9[4] = xmmword_1EAA38228;
  v3 = byte_1EAA38238;
  v10 = byte_1EAA38238;
  v4 = static ProminentHeaderStylingKey.defaultValue;
  v5 = *&qword_1EAA381F8;
  v9[0] = static ProminentHeaderStylingKey.defaultValue;
  v9[1] = *&qword_1EAA381F8;
  v9[2] = xmmword_1EAA38208;
  *(a1 + 48) = unk_1EAA38218;
  *(a1 + 64) = v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v1;
  *(a1 + 80) = v3;
  *a1 = v4;
  return outlined init with copy of ListContentStyling(v9, v8);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DisableCollectionViewGroupedListsFeature(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  PropertyList.subscript.getter();
  return v5;
}

uint64_t closure #2 in FallbackLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 25) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t assignWithCopy for ResolvedFallbackLabel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 9);
  v5 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v5, v4);
  v6 = *a1;
  v7 = *(a1 + 9);
  *a1 = v3;
  v8 = *(a1 + 8);
  *(a1 + 8) = v5;
  *(a1 + 9) = v4;
  outlined consume of Environment<CGFloat?>.Content(v6, v8, v7);
  return a1;
}

uint64_t assignWithTake for ResolvedFallbackLabel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  v5 = *a1;
  v6 = *(a1 + 9);
  *a1 = *a2;
  v7 = *(a1 + 8);
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  outlined consume of Environment<CGFloat?>.Content(v5, v7, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedFallbackLabel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ResolvedFallbackLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>();
    lazy protocol witness table accessor for type ButtonContainerIsBorderedInput and conformance ButtonContainerIsBorderedInput();
    lazy protocol witness table accessor for type ResolvedFallbackLabel and conformance ResolvedFallbackLabel();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonContainerIsBorderedInput, ResolvedFallbackLabel, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, type metadata accessor for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>, MEMORY[0x1E697E830]);
    type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>)
  {
    type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleOnlyLabelStyle>, lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle()
{
  result = lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle;
  if (!lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleAndIconLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleAndIconLabelStyle>, lazy protocol witness table accessor for type TitleAndIconLabelStyle and conformance TitleAndIconLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, type metadata accessor for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>();
    lazy protocol witness table accessor for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel();
    lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<TitleOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<TitleOnlyLabelStyle>, lazy protocol witness table accessor for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel()
{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel;
  if (!lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsDefaultButtonLabel and conformance IsDefaultButtonLabel);
  }

  return result;
}

uint64_t ResolvedFallbackLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8) | (*(v1 + 9) << 8), &v7);
  if (v7 > 2)
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  if (v3 == 1)
  {
    KeyPath = 0;
    v5 = 0;
    result = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = swift_getKeyPath();
    result = swift_getKeyPath();
  }

  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  *(a1 + 42) = v3 ^ 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>>, type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, type metadata accessor for ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>, ModifiedContent<ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, StaticIf<IsDefaultButtonLabel, LabelStyleWritingModifier<TitleOnlyLabelStyle>, EmptyModifier>>, LabelStyleWritingModifier<TitleAndIconLabelStyle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>)
  {
    type metadata accessor for Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>();
    type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>, lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>);
    }
  }
}

void type metadata accessor for LabelStyleWritingModifier<TitleOnlyLabelStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for LabelStyleWritingModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>>();
    lazy protocol witness table accessor for type Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon> and conformance Label<A, B>();
    lazy protocol witness table accessor for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>(&lazy protocol witness table cache variable for type LabelStyleWritingModifier<IconOnlyLabelStyle> and conformance LabelStyleWritingModifier<A>, &lazy cache variable for type metadata for LabelStyleWritingModifier<IconOnlyLabelStyle>, lazy protocol witness table accessor for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<LabelStyleConfiguration.Title, LabelStyleConfiguration.Icon>, LabelStyleWritingModifier<IconOnlyLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t AnyRowSource.init<A>(_:)()
{
  v0 = type metadata accessor for RowSourceFormula();
  AGCreateWeakAttribute();
  return v0;
}

uint64_t AnyColumnSource.init<A>(_:)()
{
  v0 = type metadata accessor for ColumnSourceFormula();
  AGCreateWeakAttribute();
  return v0;
}

uint64_t View.tableStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TableStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t static TableStyleConfiguration.RowsAlias._makeRows(content:inputs:)(int *a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  v3 = *(a2 + 80);
  v49 = *(a2 + 96);
  v50 = v2;
  v4 = *(a2 + 112);
  v51 = *(a2 + 128);
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  v45 = *(a2 + 32);
  v46 = v5;
  v7 = *(a2 + 48);
  v8 = *(a2 + 80);
  v47 = *(a2 + 64);
  v48 = v8;
  v9 = *(a2 + 16);
  v44[0] = *a2;
  v44[1] = v9;
  v40 = v49;
  v41 = v4;
  v42 = *(a2 + 128);
  v36 = v45;
  v37 = v7;
  v38 = v47;
  v39 = v3;
  v10 = *a1;
  v52 = *(a2 + 144);
  v43 = *(a2 + 144);
  v34 = v44[0];
  v35 = v6;
  outlined init with copy of _TableRowInputs(v44, v32);
  lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput();
  PropertyList.subscript.getter();
  if (!*&v30[0])
  {
    *&v32[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v11 = *(*&v30[0] + 16);
  v12 = *(*&v30[0] + 24);
  v13 = *(*&v30[0] + 32);
  v14 = *(*&v30[0] + 40);

  *&v30[0] = v14;
  *&v32[0] = v14;
  PropertyList.subscript.setter();
  if (!v11)
  {
LABEL_5:
    PreferencesOutputs.init()();
    goto LABEL_6;
  }

  v28[6] = v40;
  v28[7] = v41;
  v28[8] = v42;
  v28[2] = v36;
  v28[3] = v37;
  v28[4] = v38;
  v28[5] = v39;
  v28[0] = v34;
  v28[1] = v35;
  v23 = v40;
  v24 = v41;
  v25 = v42;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v27 = v10;
  v29 = v43;
  v26 = v43;
  v17 = v34;
  v18 = v35;
  v15 = *(v12 + 8);
  outlined init with copy of _TableRowInputs(v28, v32);
  v15(&v27, v11, v12, v13, &v17, v11, v12);
  v30[6] = v23;
  v30[7] = v24;
  v30[8] = v25;
  v31 = v26;
  v30[2] = v19;
  v30[3] = v20;
  v30[4] = v21;
  v30[5] = v22;
  v30[0] = v17;
  v30[1] = v18;
  outlined destroy of _TableRowInputs(v30);
LABEL_6:
  v32[6] = v40;
  v32[7] = v41;
  v32[8] = v42;
  v33 = v43;
  v32[2] = v36;
  v32[3] = v37;
  v32[4] = v38;
  v32[5] = v39;
  v32[0] = v34;
  v32[1] = v35;
  return outlined destroy of _TableRowInputs(v32);
}

uint64_t static TableStyleConfiguration.ColumnsAlias._makeContent(content:inputs:)(int *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a2 + 16);
  v42 = *(a2 + 32);
  v43 = v3;
  v5 = *(a2 + 48);
  v44 = *(a2 + 64);
  v6 = *(a2 + 16);
  v41[0] = *a2;
  v41[1] = v6;
  v37 = v42;
  v38 = v5;
  v39 = *(a2 + 64);
  v7 = *a1;
  v45 = *(a2 + 80);
  v40 = *(a2 + 80);
  v35 = v41[0];
  v36 = v4;
  v46[1] = v4;
  v46[2] = v42;
  v46[0] = v41[0];
  v33 = v4;
  v34 = v42;
  v32 = v41[0];
  outlined init with copy of _TableColumnInputs(v41, &v25);
  outlined init with copy of _GraphInputs(v46, &v25);
  lazy protocol witness table accessor for type ColumnSourceInput and conformance ColumnSourceInput();
  PropertyList.subscript.getter();
  if (v31)
  {
    v8 = v31[2];
    v9 = v31[3];
    v11 = v31[4];
    v10 = v31[5];

    v31 = v10;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
  }

  *&v25 = v10;
  PropertyList.subscript.setter();
  v12 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v12;
  v24[2] = *(a2 + 32);
  outlined destroy of _GraphInputs(v24);
  v35 = v32;
  v36 = v33;
  v37 = v34;
  if (v8)
  {
    v21 = v7;
    v22[2] = v37;
    v22[3] = v38;
    v22[4] = v39;
    v23 = v40;
    v22[0] = v35;
    v22[1] = v36;
    v17 = v37;
    v18 = v38;
    v19 = v39;
    v20 = v40;
    v15 = v35;
    v16 = v36;
    v13 = *(v9 + 8);
    outlined init with copy of _TableColumnInputs(v22, &v25);
    v13(&v21, v8, v9, v11, &v15, v8, v9);
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v25 = v15;
    v26 = v16;
    outlined destroy of _TableColumnInputs(&v25);
  }

  else
  {
    PreferencesOutputs.init()();
  }

  v27 = v37;
  v28 = v38;
  v29 = v39;
  v30 = v40;
  v25 = v35;
  v26 = v36;
  return outlined destroy of _TableColumnInputs(&v25);
}

uint64_t outlined destroy of Binding<AnySelectionManager>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI7BindingVyAA19AnySelectionManagerVGMaTm_0(0, a2, a3, MEMORY[0x1E6981948]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t destroy for TableStyleConfiguration(void *a1)
{
  result = a1[1];
  if (result)
  {

    result = __swift_destroy_boxed_opaque_existential_1((a1 + 2));
  }

  if (a1[8])
  {
  }

  if (a1[11])
  {
  }

  return result;
}

uint64_t initializeWithCopy for TableStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    v5 = *(a2 + 40);
    *(a1 + 40) = v5;
    v6 = v5;
    v7 = **(v5 - 8);

    v7(a1 + 16, a2 + 16, v6);
    v8 = *(a2 + 64);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    v9 = *(a2 + 88);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v13;
    return a1;
  }

  v12 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v12;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v8 = *(a2 + 64);
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;
  *(a1 + 72) = *(a2 + 72);

  v9 = *(a2 + 88);
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v9;
  v11 = *(a2 + 96);
  v10 = *(a2 + 104);
  *(a1 + 96) = v11;
  *(a1 + 104) = v10;

  return a1;
}

uint64_t assignWithCopy for TableStyleConfiguration(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8))
  {
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = *(a2 + 1);

      __swift_assign_boxed_opaque_existential_1((a1 + 16), a2 + 2);
    }

    else
    {
      outlined destroy of Binding<AnySelectionManager>(a1, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
      v8 = a2[1];
      v7 = a2[2];
      v9 = *a2;
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
      *a1 = v9;
    }
  }

  else if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);
    v5 = *(a2 + 5);
    *(a1 + 40) = v5;
    *(a1 + 48) = *(a2 + 6);
    v6 = **(v5 - 8);

    v6(a1 + 16, (a2 + 1), v5);
  }

  else
  {
    v10 = *a2;
    v11 = a2[1];
    v12 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    *a1 = v10;
  }

  v13 = *(a2 + 8);
  if (*(a1 + 64))
  {
    if (v13)
    {
      *(a1 + 56) = *(a2 + 7);

      *(a1 + 64) = *(a2 + 8);

      *(a1 + 72) = *(a2 + 9);
    }

    else
    {
      outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1 + 56);
      v14 = *(a2 + 9);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v14;
    }
  }

  else if (v13)
  {
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 72) = *(a2 + 9);
  }

  else
  {
    v15 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 56) = v15;
  }

  v16 = *(a2 + 11);
  if (*(a1 + 88))
  {
    if (v16)
    {
      *(a1 + 80) = *(a2 + 10);

      *(a1 + 88) = *(a2 + 11);

      *(a1 + 96) = *(a2 + 12);

      *(a1 + 104) = *(a2 + 13);
    }

    else
    {
      outlined destroy of Binding<AnySelectionManager>(a1 + 80, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
      v17 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v17;
    }
  }

  else if (v16)
  {
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 96) = *(a2 + 12);
    *(a1 + 104) = *(a2 + 13);
  }

  else
  {
    v18 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v18;
  }

  return a1;
}

uint64_t assignWithTake for TableStyleConfiguration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      *a1 = *a2;

      *(a1 + 8) = v4;

      __swift_destroy_boxed_opaque_existential_1(a1 + 16);
      v5 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }

    outlined destroy of Binding<AnySelectionManager>(a1, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
  }

  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
LABEL_6:
  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 64))
  {
    v7 = *(a2 + 64);
    if (v7)
    {
      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = v7;

      *(a1 + 72) = *(a2 + 72);

      if (!*(a1 + 88))
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    outlined destroy of Binding<[SwiftUIAnySortComparator]>(a1 + 56);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  if (!*(a1 + 88))
  {
LABEL_15:
    v9 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    return a1;
  }

LABEL_12:
  v8 = *(a2 + 88);
  if (!v8)
  {
    outlined destroy of Binding<AnySelectionManager>(a1 + 80, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
    goto LABEL_15;
  }

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = v8;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TableStyleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TableStyleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedTableStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedTableStyle and conformance ResolvedTableStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedTableStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedTableStyle and conformance ResolvedTableStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t TableStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v3 + 24))(a1, v4, v3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v12, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TableStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TableStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance RowSourceInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance RowSourceInput(a1, a2, a3, a4, &lazy cache variable for type metadata for Stack<AnyRowSource>, &type metadata for AnyRowSource);
}

uint64_t static RowSourceFormula.makeRows(content:source:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {

    return PreferencesOutputs.init()();
  }

  else
  {
    _GraphValue.init(_:)();
    v11 = *(a5 + 112);
    v15[6] = *(a5 + 96);
    v15[7] = v11;
    v15[8] = *(a5 + 128);
    v16 = *(a5 + 144);
    v12 = *(a5 + 48);
    v15[2] = *(a5 + 32);
    v15[3] = v12;
    v13 = *(a5 + 80);
    v15[4] = *(a5 + 64);
    v15[5] = v13;
    v14 = *(a5 + 16);
    v15[0] = *a5;
    v15[1] = v14;
    return (*(a7 + 48))(v17, v15, a6, a7);
  }
}

uint64_t static RowSourceFormula.tableRowCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a3 + 56))(v8);
}

uint64_t static RowSourceFormula.containsOutlineSymbol(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v3;
  v8[8] = *(a1 + 128);
  v9 = *(a1 + 144);
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a3 + 64))(v8) & 1;
}

unint64_t lazy protocol witness table accessor for type TableStyleModifier<AutomaticTableStyle> and conformance TableStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type TableStyleModifier<AutomaticTableStyle> and conformance TableStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type TableStyleModifier<AutomaticTableStyle> and conformance TableStyleModifier<A>)
  {
    type metadata accessor for TableStyleModifier<AutomaticTableStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableStyleModifier<AutomaticTableStyle> and conformance TableStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for TableStyleModifier<AutomaticTableStyle>()
{
  if (!lazy cache variable for type metadata for TableStyleModifier<AutomaticTableStyle>)
  {
    lazy protocol witness table accessor for type AutomaticTableStyle and conformance AutomaticTableStyle();
    v0 = type metadata accessor for TableStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TableStyleModifier<AutomaticTableStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticTableStyle and conformance AutomaticTableStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticTableStyle and conformance AutomaticTableStyle;
  if (!lazy protocol witness table cache variable for type AutomaticTableStyle and conformance AutomaticTableStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticTableStyle and conformance AutomaticTableStyle);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance ColumnSourceInput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance RowSourceInput(a1, a2, a3, a4, &lazy cache variable for type metadata for Stack<AnyColumnSource>, &type metadata for AnyColumnSource);
}

void _s7SwiftUI7BindingVyAA19AnySelectionManagerVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static ColumnSourceFormula.makeColumns(content:source:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {

    return PreferencesOutputs.init()();
  }

  else
  {
    _GraphValue.init(_:)();
    v11 = *(a5 + 48);
    v13[2] = *(a5 + 32);
    v13[3] = v11;
    v13[4] = *(a5 + 64);
    v14 = *(a5 + 80);
    v12 = *(a5 + 16);
    v13[0] = *a5;
    v13[1] = v12;
    return (*(a7 + 64))(v15, v13, a6, a7);
  }
}

uint64_t static ColumnSourceFormula.tableColumnCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v7 = *(a1 + 80);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return (*(a3 + 72))(v6);
}

uint64_t specialized static TableStyleConfiguration.ColumnsAlias._tableColumnCount(inputs:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v39 = *(a1 + 32);
  v40 = v2;
  v4 = *(a1 + 48);
  v41 = *(a1 + 64);
  v5 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v5;
  v34 = v39;
  v35 = v4;
  v36 = *(a1 + 64);
  v42 = *(a1 + 80);
  v37 = *(a1 + 80);
  v32 = v38[0];
  v33 = v3;
  v43[1] = v3;
  v43[2] = v39;
  v43[0] = v38[0];
  v30 = v3;
  v31 = v39;
  v29 = v38[0];
  outlined init with copy of _TableColumnInputs(v38, &v22);
  outlined init with copy of _GraphInputs(v43, &v22);
  lazy protocol witness table accessor for type ColumnSourceInput and conformance ColumnSourceInput();
  PropertyList.subscript.getter();
  if (v28)
  {
    v6 = v28[5];
    v7 = v28[2];
    v8 = v28[3];

    v28 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *&v22 = v6;
  PropertyList.subscript.setter();
  v9 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v9;
  v21[2] = *(a1 + 32);
  outlined destroy of _GraphInputs(v21);
  v32 = v29;
  v33 = v30;
  v34 = v31;
  if (v7)
  {
    v19[2] = v34;
    v19[3] = v35;
    v19[4] = v36;
    v20 = v37;
    v19[0] = v32;
    v19[1] = v33;
    v15 = v34;
    v16 = v35;
    v17 = v36;
    v18 = v37;
    v13 = v32;
    v14 = v33;
    v10 = *(v8 + 16);
    outlined init with copy of _TableColumnInputs(v19, &v22);
    v11 = v10(&v13, v7, v8);
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v22 = v13;
    v23 = v14;
    outlined destroy of _TableColumnInputs(&v22);
  }

  else
  {
    v11 = 0;
  }

  v24 = v34;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v22 = v32;
  v23 = v33;
  outlined destroy of _TableColumnInputs(&v22);
  return v11;
}

uint64_t specialized static TableStyleConfiguration.RowsAlias._tableRowCount(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 80);
  v54 = *(a1 + 96);
  v55 = v1;
  v3 = *(a1 + 112);
  v56 = *(a1 + 128);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v50 = *(a1 + 32);
  v51 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v52 = *(a1 + 64);
  v53 = v7;
  v8 = *(a1 + 16);
  v49[0] = *a1;
  v49[1] = v8;
  v45 = v54;
  v46 = v3;
  v47 = *(a1 + 128);
  v41 = v50;
  v42 = v6;
  v43 = v52;
  v44 = v2;
  v57 = *(a1 + 144);
  v48 = *(a1 + 144);
  v39 = v49[0];
  v40 = v5;
  outlined init with copy of _TableRowInputs(v49, &v29);
  lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput();
  PropertyList.subscript.getter();
  if (*&v27[0])
  {
    v9 = *(*&v27[0] + 40);
    v10 = *(*&v27[0] + 16);
    v11 = *(*&v27[0] + 24);

    *&v27[0] = v9;
    *&v29 = v9;
    PropertyList.subscript.setter();
    if (v10)
    {
      v25[6] = v45;
      v25[7] = v46;
      v25[8] = v47;
      v25[2] = v41;
      v25[3] = v42;
      v25[4] = v43;
      v25[5] = v44;
      v25[0] = v39;
      v25[1] = v40;
      v21 = v45;
      v22 = v46;
      v23 = v47;
      v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v44;
      v26 = v48;
      v24 = v48;
      v15 = v39;
      v16 = v40;
      v12 = *(v11 + 16);
      outlined init with copy of _TableRowInputs(v25, &v29);
      v13 = v12(&v15, v10, v11);
      v27[6] = v21;
      v27[7] = v22;
      v27[8] = v23;
      v28 = v24;
      v27[2] = v17;
      v27[3] = v18;
      v27[4] = v19;
      v27[5] = v20;
      v27[0] = v15;
      v27[1] = v16;
      outlined destroy of _TableRowInputs(v27);
      v35 = v45;
      v36 = v46;
      v37 = v47;
      v38 = v48;
      v31 = v41;
      v32 = v42;
      v33 = v43;
      v34 = v44;
      v29 = v39;
      v30 = v40;
      outlined destroy of _TableRowInputs(&v29);
      return v13;
    }
  }

  else
  {
    *&v29 = 0;
    PropertyList.subscript.setter();
  }

  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  outlined destroy of _TableRowInputs(&v29);
  return 0;
}

uint64_t specialized static TableStyleConfiguration.RowsAlias._containsOutlineSymbol(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 80);
  v54 = *(a1 + 96);
  v55 = v1;
  v3 = *(a1 + 112);
  v56 = *(a1 + 128);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v50 = *(a1 + 32);
  v51 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v52 = *(a1 + 64);
  v53 = v7;
  v8 = *(a1 + 16);
  v49[0] = *a1;
  v49[1] = v8;
  v45 = v54;
  v46 = v3;
  v47 = *(a1 + 128);
  v41 = v50;
  v42 = v6;
  v43 = v52;
  v44 = v2;
  v57 = *(a1 + 144);
  v48 = *(a1 + 144);
  v39 = v49[0];
  v40 = v5;
  outlined init with copy of _TableRowInputs(v49, &v29);
  lazy protocol witness table accessor for type RowSourceInput and conformance RowSourceInput();
  PropertyList.subscript.getter();
  if (!*&v27[0])
  {
    *&v29 = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v9 = *(*&v27[0] + 40);
  v10 = *(*&v27[0] + 16);
  v11 = *(*&v27[0] + 24);

  *&v27[0] = v9;
  *&v29 = v9;
  PropertyList.subscript.setter();
  if (!v10)
  {
LABEL_5:
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    v31 = v41;
    v32 = v42;
    v33 = v43;
    v34 = v44;
    v29 = v39;
    v30 = v40;
    outlined destroy of _TableRowInputs(&v29);
    v13 = 0;
    return v13 & 1;
  }

  v25[6] = v45;
  v25[7] = v46;
  v25[8] = v47;
  v25[2] = v41;
  v25[3] = v42;
  v25[4] = v43;
  v25[5] = v44;
  v25[0] = v39;
  v25[1] = v40;
  v21 = v45;
  v22 = v46;
  v23 = v47;
  v17 = v41;
  v18 = v42;
  v19 = v43;
  v20 = v44;
  v26 = v48;
  v24 = v48;
  v15 = v39;
  v16 = v40;
  v12 = *(v11 + 24);
  outlined init with copy of _TableRowInputs(v25, &v29);
  v13 = v12(&v15, v10, v11);
  v27[6] = v21;
  v27[7] = v22;
  v27[8] = v23;
  v28 = v24;
  v27[2] = v17;
  v27[3] = v18;
  v27[4] = v19;
  v27[5] = v20;
  v27[0] = v15;
  v27[1] = v16;
  outlined destroy of _TableRowInputs(v27);
  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v29 = v39;
  v30 = v40;
  outlined destroy of _TableRowInputs(&v29);
  return v13 & 1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ModifierKeyAlternateModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t specialized Sequence.reversed()(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = __CocoaSet.count.getter();
    if (v19)
    {
      v20 = v19;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5(v19, 0);
      specialized Array._copyContents(initializing:)(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = __CocoaSet.count.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x18D00E9C0]();
          v11 = MEMORY[0x18D00E9C0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t specialized Sequence.reversed()(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);

  v6 = *(v4 + 16);
  if (v6 < 2)
  {
    return v4;
  }

  v7 = 0;
  v8 = v6 >> 1;
  v9 = v6 - 1;
  v10 = 88 * v6 - 56;
  for (i = 32; ; i += 88)
  {
    if (v7 == v9)
    {
      goto LABEL_5;
    }

    v12 = *(v4 + 16);
    if (v7 >= v12)
    {
      break;
    }

    result = outlined init with copy of NavigationViewDestinationView(v4 + i, v14);
    if (v9 >= v12)
    {
      goto LABEL_14;
    }

    outlined init with copy of NavigationViewDestinationView(v4 + v10, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    }

    result = outlined assign with take of NavigationViewDestinationView(v13, v4 + i);
    if (v9 >= *(v4 + 16))
    {
      goto LABEL_15;
    }

    result = outlined assign with take of NavigationViewDestinationView(v14, v4 + v10);
LABEL_5:
    ++v7;
    --v9;
    v10 -= 88;
    if (v8 == v7)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void specialized Sequence.reversed()(size_t a1)
{
  v2 = type metadata accessor for IntelligenceElement();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v29 = v23 - v8;
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = *(a1 + 16);
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, v15 + v16 * v10, v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = v15 + v16 * v12;
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    v22(v21 + v19, v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t specialized Sequence.reversed()(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 48 * v2 - 16;
  for (i = 32; ; i += 48)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = *(v1 + 2);
    if (v3 >= v8)
    {
      break;
    }

    result = outlined init with copy of AnyAccessibilityAction(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    outlined init with copy of AnyAccessibilityAction(&v1[v6], v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    result = outlined assign with take of AnyAccessibilityAction(v9, &v1[i]);
    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    result = outlined assign with take of AnyAccessibilityAction(v10, &v1[v6]);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 48;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t AccessibilityAction.matches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v40 - v10;
  v46 = *(v9 - 8);
  v12 = v46;
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 16))(&v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v22);
  v25 = swift_dynamicCast();
  v26 = v7;
  v27 = *(v7 + 56);
  v27(v20, v25 ^ 1u, 1, a2);
  (*(v26 + 16))(v17, v48, a2);
  v27(v17, 0, 1, a2);
  v28 = *(TupleTypeMetadata2 + 48);
  v47 = v20;
  v48 = v12;
  v29 = v12;
  v30 = v9;
  v31 = *(v29 + 16);
  v31(v11, v20, v30);
  v31(&v11[v28], v17, v30);
  v44 = v26;
  v32 = *(v26 + 48);
  if (v32(v11, 1, a2) != 1)
  {
    v31(v45, v11, v30);
    if (v32(&v11[v28], 1, a2) != 1)
    {
      v35 = v44;
      v36 = v41;
      (*(v44 + 32))(v41, &v11[v28], a2);
      v37 = v45;
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v35 + 8);
      v38(v36, a2);
      v33 = *(v46 + 8);
      v33(v17, v30);
      v38(v37, a2);
      v33(v11, v30);
      goto LABEL_8;
    }

    v33 = *(v46 + 8);
    v33(v17, v30);
    (*(v44 + 8))(v45, a2);
    goto LABEL_6;
  }

  v33 = *(v46 + 8);
  v33(v17, v30);
  if (v32(&v11[v28], 1, a2) != 1)
  {
LABEL_6:
    (*(v43 + 8))(v11, TupleTypeMetadata2);
    v34 = 0;
    goto LABEL_8;
  }

  v33(v11, v30);
  v34 = 1;
LABEL_8:
  v33(v47, v30);
  return v34 & 1;
}

uint64_t AccessibilityActionResult.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t AnyAccessibilityAction.matches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 80))(a1, a2, a3, v7, v8) & 1;
}

uint64_t specialized AccessibilityNode.sendAction<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v22 = *(v4 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v23 = v6;

  v7 = EnvironmentValues.isEnabled.getter();

  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  AccessibilityNode.attachment.getter(&v22);
  outlined init with copy of AccessibilityProperties(&v22, v26);
  outlined destroy of AccessibilityAttachment(&v22);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  if (a4 == 1)
  {
    outlined destroy of AccessibilityProperties(v26);
    result = specialized Sequence.reversed()(v22);
    v9 = result;
  }

  else
  {
    result = outlined destroy of AccessibilityProperties(v26);
    v9 = v22;
  }

  v17 = *(v9 + 16);
  if (!v17)
  {
LABEL_13:

LABEL_14:
    v15 = 0;
    return v15 & 1;
  }

  v16 = 0;
  v10 = 0;
  v11 = v9 + 32;
  do
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v11, &v22);
    v26[0] = a1;
    v26[1] = a2;
    v26[2] = a3;
    v26[3] = a4;
    v12 = a4;
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    v14 = *(v13 + 40);
    lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction();
    v14(&v21, v26);
    result = outlined destroy of AnyAccessibilityAction(&v22);
    if (v21 == 3)
    {
      v16 = 1;
    }

    else
    {
      if (v21 == 2)
      {

        v15 = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return v15 & 1;
        }

        goto LABEL_20;
      }

      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    ++v10;
    v11 += 48;
    a4 = v12;
  }

  while (v17 != v10);

  v15 = v16;
  if ((v16 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
LABEL_20:
    swift_getObjectType();
    v22 = 0;
    LOBYTE(v23) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  return v15 & 1;
}

uint64_t specialized AccessibilityNode.sendAction<A>(_:value:)(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v17 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v18 = v3;

  v4 = EnvironmentValues.isEnabled.getter();

  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  AccessibilityNode.attachment.getter(&v17);
  outlined init with copy of AccessibilityProperties(&v17, v21);
  outlined destroy of AccessibilityAttachment(&v17);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v21);
  v6 = v17;
  v7 = *(v17 + 16);
  if (!v7)
  {
LABEL_10:

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  v15 = 0;
  v8 = 0;
  v9 = v17 + 32;
  do
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v9, &v17);
    v16 = a1;
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v17, v19);
    v12 = *(v11 + 40);
    v13 = lazy protocol witness table accessor for type AccessibilityScrollAction and conformance AccessibilityScrollAction();
    v12(v21, v13, &v16, &type metadata for AccessibilityScrollAction, v13, v10, v11);
    result = outlined destroy of AnyAccessibilityAction(&v17);
    if (LOBYTE(v21[0]) == 3)
    {
      v15 = 1;
    }

    else
    {
      if (LOBYTE(v21[0]) == 2)
      {

        v14 = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return v14 & 1;
        }

        goto LABEL_17;
      }

      if ((v21[0] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    ++v8;
    v9 += 48;
  }

  while (v7 != v8);

  v14 = v15;
  if ((v15 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
LABEL_17:
    swift_getObjectType();
    v17 = 0;
    LOBYTE(v18) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  return v14 & 1;
}

uint64_t specialized AccessibilityNode.sendAction<A>(_:value:)(char a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v21 = *(v2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v22 = v4;

  v5 = EnvironmentValues.isEnabled.getter();

  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  AccessibilityNode.attachment.getter(&v21);
  outlined init with copy of AccessibilityProperties(&v21, v25);
  outlined destroy of AccessibilityAttachment(&v21);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v25);
  v7 = v21;
  v8 = *(v21 + 16);
  if (!v8)
  {
LABEL_10:

LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  v17 = 0;
  v9 = 0;
  v10 = v21 + 32;
  v11 = a2 & 1;
  do
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v10, &v21);
    v20 = a1;
    v19 = v11;
    v13 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(&v21, v23);
    v14 = *(v12 + 40);
    v15 = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
    v14(v25, &v20, &v19, &type metadata for AccessibilityAdjustableAction, v15, v13, v12);
    result = outlined destroy of AnyAccessibilityAction(&v21);
    if (LOBYTE(v25[0]) == 3)
    {
      v17 = 1;
    }

    else
    {
      if (LOBYTE(v25[0]) == 2)
      {

        v16 = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return v16 & 1;
        }

        goto LABEL_17;
      }

      if ((v25[0] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    ++v9;
    v10 += 48;
  }

  while (v8 != v9);

  v16 = v17;
  if ((v17 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
LABEL_17:
    swift_getObjectType();
    v21 = 0;
    LOBYTE(v22) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  return v16 & 1;
}

uint64_t specialized AccessibilityNode.sendAction<A>(_:value:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment + 8);
  v18 = *(v1 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v19 = v3;

  v4 = EnvironmentValues.isEnabled.getter();

  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

  AccessibilityNode.attachment.getter(&v18);
  outlined init with copy of AccessibilityProperties(&v18, v22);
  outlined destroy of AccessibilityAttachment(&v18);
  lazy protocol witness table accessor for type AccessibilityProperties.ActionsKey and conformance AccessibilityProperties.ActionsKey();
  AccessibilityProperties.subscript.getter();
  result = outlined destroy of AccessibilityProperties(v22);
  v6 = v18;
  v16 = *(v18 + 16);
  if (!v16)
  {
LABEL_10:

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  v7 = 0;
  v15 = 0;
  v8 = v18 + 32;
  do
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of AnyAccessibilityAction(v8, &v18);
    v9 = *(a1 + 16);
    v22[0] = *a1;
    v22[1] = v9;
    v23 = *(a1 + 32);
    v11 = v20;
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v12 = *(v10 + 40);
    v13 = lazy protocol witness table accessor for type AccessibilityZoomAction and conformance AccessibilityZoomAction();
    v12(&v17, v13, v22, &type metadata for AccessibilityZoomAction, v13, v11, v10);
    result = outlined destroy of AnyAccessibilityAction(&v18);
    if (v17 == 3)
    {
      v15 = 1;
    }

    else
    {
      if (v17 == 2)
      {

        v14 = 1;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return v14 & 1;
        }

        goto LABEL_17;
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    ++v7;
    v8 += 48;
  }

  while (v16 != v7);

  v14 = v15;
  if ((v15 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
LABEL_17:
    swift_getObjectType();
    v18 = 0;
    LOBYTE(v19) = 1;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
    swift_unknownObjectRelease();
  }

  return v14 & 1;
}

uint64_t AnyAccessibilityAction.perform<A>(action:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  return (*(v10 + 40))(a1, a2, a3, a4, v9, v10);
}

BOOL protocol witness for AccessibilityAction.impliedRole(for:) in conformance AccessibilityAppIntentHandler(__int128 *a1)
{
  v2 = v1[1];
  v3 = v1[3];
  v15 = v1[2];
  v16 = v3;
  v4 = v1[3];
  v17 = v1[4];
  v5 = v1[1];
  v14[0] = *v1;
  v14[1] = v5;
  v11 = v15;
  v12 = v4;
  v13 = v1[4];
  v9 = v14[0];
  v10 = v2;
  v8 = *a1;
  outlined init with copy of AccessibilityAppIntentAction(v14, v18);
  v6 = AccessibilityAppIntentAction.impliedRole(for:)(&v8);
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  v18[0] = v9;
  v18[1] = v10;
  outlined destroy of AccessibilityAppIntentAction(v18);
  return v6;
}

uint64_t AccessibilityActionHandler.impliedRole(for:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v17 - v9;
  v12 = *a1;
  v11 = a1[1];
  (*(a3 + 32))(a2, a3, v8);
  v17[0] = v12;
  v17[1] = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 24))(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v14;
}

_BYTE *protocol witness for ExpressibleByBooleanLiteral.init(BOOLeanLiteral:) in conformance AccessibilityActionResult@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a2 = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityActionResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t assignWithCopy for AnyAccessibilityAction(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for AnyAccessibilityAction(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyAccessibilityAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyAccessibilityAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AccessibilityActionHandler.name.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a2 + 32))(a1, a2, v5);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for AccessibilityKindActionProvider);
  if (swift_dynamicCast())
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v16, v19);
    v6 = v20;
    v7 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v7 + 8))(&v16, v6, v7);
    v8 = v16;
    v9 = v17;
    if (*(&v17 + 1) >= 5uLL)
    {
      v11 = *(a2 + 48);

      outlined copy of Text.Storage(v8, *(&v8 + 1), v9 & 1);
      v12 = v11(a1, a2);
      v14 = v13;
      v15 = v8;
      outlined consume of AccessibilityActionKind.ActionKind(v8, *(&v8 + 1), v9, *(&v9 + 1));
      if (v14)
      {
        outlined consume of Text.Storage(v8, *(&v8 + 1), v9 & 1);

        v15 = v12;
      }

      __swift_destroy_boxed_opaque_existential_1(v19);
      return v15;
    }

    else
    {
      outlined consume of AccessibilityActionKind.ActionKind(v16, *(&v16 + 1), v17, *(&v17 + 1));
      __swift_destroy_boxed_opaque_existential_1(v19);
      return 0;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    outlined destroy of IndexingIterator<_ArchivedViewStates>(&v16, type metadata accessor for AccessibilityKindActionProvider?);
    return (*(a2 + 48))(a1, a2);
  }
}

double AccessibilityActionHandler.asCombinedAction(name:properties:child:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double AccessibilityActionStorage.asCustomAction(category:fallbackLabel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  LOBYTE(v11) = a4;
  v45 = a3;
  v14 = MEMORY[0x1EEE9AC00](a1);
  v18 = *v16;
  v17 = v16[1];
  v19 = v16[2];
  v43 = v16[3];
  v44 = v19;
  (*(v20 + 16))(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v21, v14);
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_0(0, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityVoidAction>, lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, type metadata accessor for AccessibilityActionStorage);
  if (swift_dynamicCast())
  {
    v50 = v56;
    v51 = v57;
    *v52 = v58[0];
    *(&v52[1] + 4) = *(v58 + 12);
    v46 = *&v52[5];
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v22 = *(&v53 + 1);
    v42 = v18;
    if (*(&v53 + 1) >= 5uLL)
    {
      LOBYTE(v11) = v47;
      v45 = *(&v46 + 1);
      v41 = v46;
      outlined copy of Text.Storage(v46, *(&v46 + 1), v47 & 1);

      goto LABEL_6;
    }

    v23 = (v8 + *(a6 + 40));
    v22 = v23[3];
    if (v22)
    {
      v24 = v23[1];
      v11 = v23[2];
      v41 = *v23;
      v45 = v24;
      outlined copy of Text?(v41, v24, v11, v22);
LABEL_6:
      v40 = v22;
LABEL_7:
      v25 = v11 & 1;
      v26 = *(v8 + *(a6 + 44));
      v27 = v52[2];
      v38 = v25;
      v39 = v52[1];
      v28 = AccessibilityActionHandlerSeed++;
      type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>();
      *(a7 + 24) = v29;
      *(a7 + 32) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
      v30 = swift_allocObject();
      *a7 = v30;
      v32 = v42;
      v31 = v43;
      v33 = v44;
      outlined copy of AccessibilityActionCategory?(v42, v17, v44, v43);

      outlined destroy of IndexingIterator<TableColumnCollection>(&v46, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityVoidAction>, lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, type metadata accessor for AccessibilityActionStorage);
      v34 = v45;
      *(v30 + 16) = v41;
      *(v30 + 24) = v34;
      v35 = v39;
      v36 = v40;
      *(v30 + 32) = v38;
      *(v30 + 40) = v36;
      *(v30 + 48) = v32;
      *(v30 + 56) = v17;
      *(v30 + 64) = v33;
      *(v30 + 72) = v31;
      result = 0.0;
      *(v30 + 80) = 0u;
      *(v30 + 96) = 0u;
      *(v30 + 112) = v26;
      *(v30 + 120) = v35;
      *(v30 + 128) = v27;
      *(v30 + 136) = v28;
      *(a7 + 40) = 0;
      return result;
    }

    if (a5)
    {
      v40 = a5;
      v41 = a2;
      outlined copy of Text?(a2, v45, v11, a5);
      goto LABEL_7;
    }

    outlined destroy of IndexingIterator<TableColumnCollection>(&v46, &lazy cache variable for type metadata for AccessibilityActionStorage<AccessibilityVoidAction>, lazy protocol witness table accessor for type AccessibilityVoidAction and conformance AccessibilityVoidAction, &type metadata for AccessibilityVoidAction, type metadata accessor for AccessibilityActionStorage);
  }

  result = 0.0;
  *(a7 + 25) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

BOOL static AccessibilityActionStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityActionStorage();
  if (*(a1 + *(v4 + 52)) != *(a2 + *(v4 + 52)))
  {
    return 0;
  }

  v5 = v4;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[9];
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = *(a1 + v6 + 24);
  v11 = (a2 + v6);
  v12 = *v11;
  v13 = v11[1];
  v15 = v11[2];
  v14 = v11[3];
  v50 = v15;
  if (v10 == 2)
  {
    v16 = v8;
    v17 = v8;
    v18 = v7;
    v19 = v7;
    v20 = v9;
    v21 = v14;
    outlined copy of AccessibilityActionCategory?(v17, v19, v9, 2uLL);
    if (v21 == 2)
    {
      v10 = 2;
      outlined copy of AccessibilityActionCategory?(v12, v13, v50, 2uLL);
LABEL_16:
      outlined consume of AccessibilityActionCategory?(v16, v18, v20, v10);
      goto LABEL_17;
    }

    v26 = v21;
    v25 = v50;
    v24 = v26;
    outlined copy of AccessibilityActionCategory?(v12, v13, v50, v26);
    goto LABEL_9;
  }

  if (v14 == 2)
  {
    v22 = v8;
    v23 = v7;
    v16 = v8;
    v18 = v7;
    v20 = v9;
    v24 = 2;
    outlined copy of AccessibilityActionCategory?(v22, v23, v9, v10);
    v25 = v50;
    outlined copy of AccessibilityActionCategory?(v12, v13, v50, 2uLL);
    outlined copy of AccessibilityActionCategory?(v16, v18, v20, v10);
    outlined consume of AccessibilityActionCategory.Category(v16, v18, v20, v10);
LABEL_9:
    outlined consume of AccessibilityActionCategory?(v16, v18, v20, v10);
    v27 = v12;
    v28 = v13;
    v29 = v25;
    v30 = v24;
LABEL_28:
    outlined consume of AccessibilityActionCategory?(v27, v28, v29, v30);
    return 0;
  }

  v49 = v9;
  if (!v10)
  {
    v32 = v14;
    outlined copy of AccessibilityActionCategory?(v8, v7, v9, 0);
    v31 = 0;
    if (!v32)
    {
      goto LABEL_15;
    }

LABEL_27:
    outlined copy of AccessibilityActionCategory?(v12, v13, v50, v32);
    outlined copy of AccessibilityActionCategory?(v8, v7, v49, v31);
    outlined consume of AccessibilityActionCategory?(v12, v13, v50, v32);
    outlined consume of AccessibilityActionCategory.Category(v8, v7, v49, v10);
    v27 = v8;
    v28 = v7;
    v29 = v49;
    v30 = v10;
    goto LABEL_28;
  }

  if (v10 == 1)
  {
    v31 = 1;
    v32 = v14;
    outlined copy of AccessibilityActionCategory?(v8, v7, v9, 1uLL);
    if (v32 != 1)
    {
      goto LABEL_27;
    }

LABEL_15:
    outlined copy of AccessibilityActionCategory?(v12, v13, v50, v10);
    outlined copy of AccessibilityActionCategory?(v8, v7, v49, v10);
    outlined consume of AccessibilityActionCategory?(v12, v13, v50, v10);
    v16 = v8;
    v33 = v8;
    v18 = v7;
    v34 = v7;
    v20 = v49;
    outlined consume of AccessibilityActionCategory.Category(v33, v34, v49, v10);
    goto LABEL_16;
  }

  v32 = v14;
  if (v14 < 2)
  {
    outlined copy of AccessibilityActionCategory?(v8, v7, v9, v10);
    v31 = v10;
    goto LABEL_27;
  }

  outlined copy of AccessibilityActionCategory?(v8, v7, v9, v10);
  outlined copy of AccessibilityActionCategory?(v12, v13, v50, v32);
  outlined copy of AccessibilityActionCategory?(v8, v7, v49, v10);
  v48 = static Text.== infix(_:_:)();
  outlined consume of AccessibilityActionCategory?(v12, v13, v50, v32);
  outlined consume of AccessibilityActionCategory.Category(v8, v7, v49, v10);
  outlined consume of AccessibilityActionCategory?(v8, v7, v49, v10);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v35 = v5[10];
  v36 = *(a1 + v35 + 24);
  v37 = (a2 + v35);
  v38 = v37[3];
  if (!v36)
  {
    if (!v38)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v38)
  {
    return 0;
  }

  v39 = *v37;
  v40 = v37[1];
  v41 = v37[2];
  outlined copy of Text.Storage(*v37, v40, v37[2] & 1);

  v42 = static Text.== infix(_:_:)();
  outlined consume of Text.Storage(v39, v40, v41 & 1);

  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v43 = v5[11];
  v44 = *(a1 + v43);
  v45 = *(a2 + v43);
  result = (v44 | v45) == 0;
  if (v44)
  {
    if (v45)
    {

      v47 = static Image.== infix(_:_:)();

      return v47 & 1;
    }
  }

  return result;
}

uint64_t protocol witness for AccessibilityAction.impliedRole(for:) in conformance AccessibilityActionStorage<A>(uint64_t *a1, uint64_t a2)
{
  return protocol witness for AccessibilityAction.impliedRole(for:) in conformance AccessibilityActionStorage<A>(a1, a2);
}

{
  WitnessTable = swift_getWitnessTable();
  return AccessibilityActionHandler.impliedRole(for:)(a1, a2, WitnessTable);
}

uint64_t AccessibilityActionReference.image.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  if (!v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      AccessibilityNode.attachment.getter(v7);

      outlined init with copy of AccessibilityProperties(v7, v8);
      outlined destroy of AccessibilityAttachment(v7);
      v5 = AccessibilityProperties.images.getter();
      outlined destroy of AccessibilityProperties(v8);
      if (*(v5 + 16))
      {
        v2 = *(v5 + 32);
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void AccessibilityActionReference.init<A>(_:_:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for AccessibilityActionReference();
  swift_unknownObjectWeakInit();
  (*(a4 + 32))(a3, a4);
  (*(a4 + 40))(v19, a3, a4);
  v10 = (a5 + v9[9]);
  v11 = v19[1];
  *v10 = v19[0];
  v10[1] = v11;
  v12 = (*(a4 + 48))(a3, a4);
  v13 = (a5 + v9[10]);
  *v13 = v12;
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;
  v17 = (*(a4 + 56))(a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  *(a5 + v9[11]) = v17;
  swift_unknownObjectWeakAssign();
}

void AccessibilityActionReference.perform(value:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, v9 = AccessibilityNode.sendAction<A>(_:value:)(v3, a1, *(a2 + 16), *(a2 + 24)), v8, (v9 & 1) != 0))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *a3 = v10;
}

BOOL static AccessibilityActionReference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AccessibilityActionReference();
  v5 = *(v4 + 36);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  v9 = *(a1 + v5 + 24);
  v10 = (a2 + v5);
  v12 = *v10;
  v11 = v10[1];
  v14 = v10[2];
  v13 = v10[3];
  if (v9 == 2)
  {
    v38 = v4;
    outlined copy of AccessibilityActionCategory?(v7, v6, v8, 2uLL);
    if (v13 == 2)
    {
      v9 = 2;
      outlined copy of AccessibilityActionCategory?(v12, v11, v14, 2uLL);
LABEL_15:
      outlined consume of AccessibilityActionCategory?(v7, v6, v8, v9);
      goto LABEL_16;
    }

    outlined copy of AccessibilityActionCategory?(v12, v11, v14, v13);
    goto LABEL_8;
  }

  if (v13 == 2)
  {
    outlined copy of AccessibilityActionCategory?(v7, v6, v8, v9);
    outlined copy of AccessibilityActionCategory?(v12, v11, v14, 2uLL);
    outlined copy of AccessibilityActionCategory?(v7, v6, v8, v9);
    outlined consume of AccessibilityActionCategory.Category(v7, v6, v8, v9);
LABEL_8:
    outlined consume of AccessibilityActionCategory?(v7, v6, v8, v9);
    v15 = v12;
    v16 = v11;
    v17 = v14;
    v18 = v13;
LABEL_28:
    outlined consume of AccessibilityActionCategory?(v15, v16, v17, v18);
    return 0;
  }

  if (!v9)
  {
    v38 = v4;
    outlined copy of AccessibilityActionCategory?(v7, v6, v8, 0);
    v36 = 0;
    if (!v13)
    {
      goto LABEL_14;
    }

LABEL_27:
    outlined copy of AccessibilityActionCategory?(v12, v11, v14, v13);
    outlined copy of AccessibilityActionCategory?(v7, v6, v8, v36);
    outlined consume of AccessibilityActionCategory?(v12, v11, v14, v13);
    outlined consume of AccessibilityActionCategory.Category(v7, v6, v8, v9);
    v15 = v7;
    v16 = v6;
    v17 = v8;
    v18 = v9;
    goto LABEL_28;
  }

  if (v9 == 1)
  {
    v36 = 1;
    v38 = v4;
    outlined copy of AccessibilityActionCategory?(v7, v6, v8, 1uLL);
    if (v13 != 1)
    {
      goto LABEL_27;
    }

LABEL_14:
    outlined copy of AccessibilityActionCategory?(v12, v11, v14, v9);
    outlined copy of AccessibilityActionCategory?(v7, v6, v8, v9);
    outlined consume of AccessibilityActionCategory?(v12, v11, v14, v9);
    outlined consume of AccessibilityActionCategory.Category(v7, v6, v8, v9);
    goto LABEL_15;
  }

  if (v13 < 2)
  {
    outlined copy of AccessibilityActionCategory?(v7, v6, v8, v9);
    v36 = v9;
    goto LABEL_27;
  }

  v38 = v4;
  outlined copy of AccessibilityActionCategory?(v7, v6, v8, v9);
  outlined copy of AccessibilityActionCategory?(v12, v11, v14, v13);
  outlined copy of AccessibilityActionCategory?(v7, v6, v8, v9);
  v37 = static Text.== infix(_:_:)();
  outlined consume of AccessibilityActionCategory?(v12, v11, v14, v13);
  outlined consume of AccessibilityActionCategory.Category(v7, v6, v8, v9);
  outlined consume of AccessibilityActionCategory?(v7, v6, v8, v9);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v19 = v38;
  v20 = *(v38 + 40);
  v21 = *(a1 + v20 + 24);
  v22 = (a2 + v20);
  v23 = v22[3];
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = *v22;
    v25 = v22[1];
    v26 = v22[2];
    outlined copy of Text.Storage(*v22, v25, v22[2] & 1);

    v27 = static Text.== infix(_:_:)();
    outlined consume of Text.Storage(v24, v25, v26 & 1);

    v19 = v38;
    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v28 = *(v19 + 44);
  v29 = *(a2 + v28);
  if (*(a1 + v28))
  {
    if (!v29)
    {
      return 0;
    }

    v30 = static Image.== infix(_:_:)();

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v33 = swift_unknownObjectWeakLoadStrong();
  v34 = v33;
  if (Strong)
  {
    if (v33)
    {
      type metadata accessor for AccessibilityNode();
      v35 = static NSObject.== infix(_:_:)();

      return (v35 & 1) != 0;
    }

    v34 = Strong;
LABEL_40:

    return 0;
  }

  if (v33)
  {
    goto LABEL_40;
  }

  return 1;
}

uint64_t protocol witness for AccessibilityActionHandler.category.getter in conformance AccessibilityActionStorage<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 36));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return outlined copy of AccessibilityActionCategory?(v4, v5, v6, v7);
}

uint64_t protocol witness for AccessibilityActionHandler.label.getter in conformance AccessibilityActionStorage<A>(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *v2;
  outlined copy of Text?(*v2, v2[1], v2[2], v2[3]);
  return v3;
}

uint64_t AnyAccessibilityAction.ConcreteBase.perform(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-v10];
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20[-v14];
  outlined init with copy of Any(a1, v20);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
    (*(v5 + 64))(v15, v6, v5);
    return (*(v12 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v17(v11, 1, 1, AssociatedTypeWitness);
    result = (*(v9 + 8))(v11, v8);
    *a3 = 1;
  }

  return result;
}

uint64_t AnyAccessibilityAction.ConcreteBase.perform<A>(action:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v34 = a6;
  v33 = a2;
  v10 = *(a3 + 24);
  v30 = *(a3 + 16);
  v31 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v28 = *(v12 - 8);
  v29 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v22 = a3;
  v23 = v34;
  result = AnyAccessibilityAction.ConcreteBase.matches<A>(_:)(a1, v22, a4, a5);
  if (result)
  {
    (*(v16 + 16))(v18, v33, v15);
    v25 = swift_dynamicCast();
    v26 = v32;
    v27 = *(v32 + 56);
    if (v25)
    {
      v27(v14, 0, 1, AssociatedTypeWitness);
      (*(v26 + 32))(v21, v14, AssociatedTypeWitness);
      (*(v31 + 64))(v21, v30);
      return (*(v26 + 8))(v21, AssociatedTypeWitness);
    }

    v27(v14, 1, 1, AssociatedTypeWitness);
    result = (*(v28 + 8))(v14, v29);
  }

  *v23 = 1;
  return result;
}

uint64_t AnyAccessibilityAction.ConcreteBase.matches<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  (*(v7 + 32))(v8, v7, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a4) = (*(AssociatedConformanceWitness + 32))(a1, a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return a4 & 1;
}

uint64_t AnyAccessibilityAction.ConcreteBase.asReference(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for AccessibilityActionReference();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v18 - v15;
  (*(v8 + 16))(v10, v4, v7, v14);
  AccessibilityActionReference.init<A>(_:_:)(v10, a1, v7, v12, v16);
  swift_getWitnessTable();
  return AnyAccessibilityAction.init<A>(_:bridged:)(v16, 0, v13, a3);
}

uint64_t AnyAccessibilityAction.ConcreteBase.asCustomAction(category:fallbackLabel:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return (*(*(a6 + 24) + 72))(v8, a2, a3, a4, a5, *(a6 + 16));
}

uint64_t AnyAccessibilityAction.ConcreteBase.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46[0] = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v50 = v46 - v8;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v46 - v11;
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v51 = v46 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v55 = v46 - v19;
  outlined init with copy of _Benchmark(a1, v56);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for AbstractAnyAccessibilityAction);
  v20 = swift_dynamicCast();
  v21 = *(a2 - 8);
  v22 = *(v21 + 56);
  v54 = v4;
  v46[1] = a2;
  v47 = v15;
  if (v20)
  {
    v23 = v21;
    v22(v12, 0, 1, a2);
    v24 = *(v5 + 16);
    v25 = v55;
    v24(v55, v12, v4);
    (*(v23 + 8))(v12, a2);
    v26 = *(v5 + 56);
    v26(v25, 0, 1, v4);
  }

  else
  {
    v22(v12, 1, 1, a2);
    (*(v10 + 8))(v12, v9);
    v26 = *(v5 + 56);
    v26(v55, 1, 1, v4);
    v24 = *(v5 + 16);
  }

  v27 = v51;
  v28 = v54;
  v24(v51, v49, v54);
  v26(v27, 0, 1, v28);
  v29 = v52;
  v30 = *(TupleTypeMetadata2 + 48);
  v31 = *(v52 + 16);
  v32 = v50;
  (v31)(v50, v55, v7);
  (v31)(&v32[v30], v27, v7);
  v49 = v5;
  v33 = v5;
  v34 = v32;
  v35 = *(v33 + 48);
  if (v35(v34, 1, v28) != 1)
  {
    v38 = v47;
    v31();
    v39 = v54;
    if (v35(&v34[v30], 1, v54) != 1)
    {
      v41 = v49;
      v42 = v46[0];
      (*(v49 + 32))(v46[0], &v34[v30], v39);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v41 + 8);
      v43(v42, v39);
      v44 = *(v52 + 8);
      v44(v51, v7);
      v44(v55, v7);
      v43(v38, v39);
      v44(v34, v7);
      return v37 & 1;
    }

    v40 = *(v52 + 8);
    v40(v51, v7);
    v40(v55, v7);
    (*(v49 + 8))(v38, v39);
    goto LABEL_9;
  }

  v36 = *(v29 + 8);
  v36(v27, v7);
  v36(v55, v7);
  if (v35(&v34[v30], 1, v54) != 1)
  {
LABEL_9:
    (*(v48 + 8))(v34, TupleTypeMetadata2);
    v37 = 0;
    return v37 & 1;
  }

  v36(v34, v7);
  v37 = 1;
  return v37 & 1;
}

void *AnyAccessibilityAction.asCombinedAction(name:properties:child:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = v7;
  v15 = v7[3];
  v16 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v15);
  result = (*(v16 + 72))(&v37, a1, a2, a3 & 1, a4, a5, a6, v15, v16);
  if (*&v38[8])
  {
    *&v40[9] = *&v38[9];
    v39 = v37;
    *v40 = *v38;
    v18 = *v38;
    *a7 = v37;
    a7[1] = v18;
    *(a7 + 25) = *&v40[9];
  }

  else
  {
    v35 = a7;
    outlined destroy of AnyAccessibilityAction?(&v37, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    v19 = a1;
    v20 = a2;
    v21 = a3 & 1;
    v23 = v7[3];
    v22 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v23);
    v34 = *(v22 + 16);
    outlined copy of AccessibilityActionKind.ActionKind(v19, v20, v21, a4);
    v24 = a4;
    v25 = v34(v23, v22);
    if (!v25)
    {
      v26 = AccessibilityProperties.images.getter();
      if (*(v26 + 16))
      {
        v25 = *(v26 + 32);
      }

      else
      {

        v25 = 0;
      }
    }

    outlined init with copy of AnyAccessibilityAction(v8, &v39);
    v27 = swift_allocObject();
    v28 = *v40;
    *(v27 + 16) = v39;
    *(v27 + 32) = v28;
    *(v27 + 41) = *&v40[9];
    *(v27 + 64) = a6;
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for closure #1 in AnyAccessibilityAction.asCombinedAction(name:properties:child:);
    *(v29 + 24) = v27;
    v30 = *(v8 + 40);
    v31 = AccessibilityActionHandlerSeed++;
    type metadata accessor for AnyAccessibilityAction.ConcreteBase<AccessibilityActionStorage<AccessibilityVoidAction>>();
    *(v35 + 3) = v32;
    *(v35 + 4) = &protocol witness table for AnyAccessibilityAction.ConcreteBase<A>;
    v33 = swift_allocObject();
    *v35 = v33;
    *(v33 + 16) = v19;
    *(v33 + 24) = v20;
    *(v33 + 32) = v21;
    *(v33 + 40) = v24;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    *(v33 + 72) = 2;
    *(v33 + 80) = 0u;
    *(v33 + 96) = 0u;
    *(v33 + 112) = v25;
    *(v33 + 120) = partial apply for thunk for @escaping @callee_guaranteed () -> (@out AccessibilityActionResult);
    *(v33 + 128) = v29;
    *(v33 + 136) = v31;
    *(v35 + 40) = v30;

    return a6;
  }

  return result;
}

uint64_t closure #1 in AnyAccessibilityAction.asCombinedAction(name:properties:child:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    v7[3] = MEMORY[0x1E69E7CA8] + 8;
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    __swift_project_boxed_opaque_existential_1(a1, v3);
    (*(v4 + 32))(v7, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    result = specialized AccessibilityNode.sendAction<A>(_:value:)(0, 0, 0, 0);
    if (result)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    *a2 = v6;
  }

  return result;
}

uint64_t AnyAccessibilityAction.isEqual(to:)(uint64_t a1)
{
  outlined init with copy of _Benchmark(a1, v17);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for AbstractAnyAccessibilityAction);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v16, 0, 41);
  }

  outlined init with copy of AnyAccessibilityAction(v1, v15);
  outlined init with copy of AnyAccessibilityAction?(v16, v11);
  outlined init with copy of AnyAccessibilityAction?(v15, &v13);
  if (!v12)
  {
    outlined destroy of AnyAccessibilityAction?(v15, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    if (!*&v14[8])
    {
      outlined destroy of AnyAccessibilityAction?(v11, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
      v4 = 1;
      goto LABEL_10;
    }

LABEL_9:
    outlined destroy of IndexingIterator<_ArchivedViewStates>(v11, type metadata accessor for (AnyAccessibilityAction?, AnyAccessibilityAction?));
    v4 = 0;
    goto LABEL_10;
  }

  outlined init with copy of AnyAccessibilityAction?(v11, v8);
  if (!*&v14[8])
  {
    outlined destroy of AnyAccessibilityAction?(v15, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
    outlined destroy of AnyAccessibilityAction(v8);
    goto LABEL_9;
  }

  v6 = v13;
  v7[0] = *v14;
  *(v7 + 9) = *&v14[9];
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v4 = (*(v3 + 88))(&v6, v2, v3);
  outlined destroy of AnyAccessibilityAction(&v6);
  outlined destroy of AnyAccessibilityAction?(v15, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
  outlined destroy of AnyAccessibilityAction(v8);
  outlined destroy of AnyAccessibilityAction?(v11, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
LABEL_10:
  outlined destroy of AnyAccessibilityAction?(v16, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction);
  return v4 & 1;
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.name.getter in conformance AnyAccessibilityAction()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.image.getter in conformance AnyAccessibilityAction()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.category.getter in conformance AnyAccessibilityAction()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.perform(value:) in conformance AnyAccessibilityAction(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.impliedRole(for:) in conformance AnyAccessibilityAction(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v7[0] = v2;
  v7[1] = v3;
  return (*(v5 + 48))(v7, v4, v5);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.asReference(for:) in conformance AnyAccessibilityAction(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.asCustomAction(category:fallbackLabel:) in conformance AnyAccessibilityAction(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v11);
  v13 = a1[1];
  v15[0] = *a1;
  v15[1] = v13;
  return (*(v12 + 64))(v15, a2, a3, a4, a5, v11, v12);
}

uint64_t protocol witness for AbstractAnyAccessibilityAction.asCodableAction(in:) in conformance AnyAccessibilityAction(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v7[0] = v2;
  v7[1] = v3;
  return (*(v5 + 96))(v7, v4, v5);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyAccessibilityAction(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 88))(a2, v3, v4) & 1;
}

uint64_t closure #1 in Sequence<>.resolved(in:)(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v48 = a6;
  v49 = a1;
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  result = (*(v12 + 8))(v11, v12);
  if (!v16)
  {
    return result;
  }

  v17 = result;
  v18 = v14;
  v19 = v15;
  v52[0] = a3;
  v52[1] = a4;
  v50 = 0;
  v51 = 0;
  default argument 2 of static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
  v20 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
  v21 = v17;
  if (!v20)
  {
    v27 = v19 & 1;
    v28 = v17;
LABEL_8:
    outlined consume of Text.Storage(v28, v18, v27);
  }

  v22 = v20;
  v47 = v21;
  if ([v20 length] <= 0)
  {

    v27 = v19 & 1;
    v28 = v47;
    goto LABEL_8;
  }

  v45 = v18;
  v46 = v6;
  v23 = *a5;

  v24 = v22;
  v25 = NSObject.hashValue.getter();
  v26 = specialized Set.contains(_:)(v25, v23);

  if (v26)
  {

    outlined consume of Text.Storage(v47, v45, v19 & 1);
  }

  else
  {
    v29 = NSObject.hashValue.getter();

    v30 = specialized Set._Variant.insert(_:)(v52, v29);
    MEMORY[0x1EEE9AC00](v30);
    v44[2] = a2;
    v44[3] = a3;
    v44[4] = a4;
    MEMORY[0x1EEE9AC00](v31);
    v32 = v24;
    v48 = specialized AnyAccessibilityAction.Resolved.init(name:category:image:)(v32, partial apply for implicit closure #1 in closure #1 in Sequence<>.resolved(in:), v44, partial apply for implicit closure #2 in closure #1 in Sequence<>.resolved(in:));
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = *v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
    }

    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v39);
    }

    outlined consume of Text.Storage(v47, v45, v19 & 1);

    *(v39 + 2) = v41 + 1;
    v42 = &v39[32 * v41];
    v43 = v49;
    *(v42 + 4) = v48;
    *(v42 + 5) = v34;
    *(v42 + 6) = v36;
    *(v42 + 7) = v38;
    *v43 = v39;
  }

  return result;
}

uint64_t implicit closure #1 in closure #1 in Sequence<>.resolved(in:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 24))(&v14, v5, v6);
  v7 = v17;
  if (v17 == 2)
  {
    return 0;
  }

  v10 = v15;
  v9 = v16;
  v11 = v14;
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v12 = AccessibilityActionCategory.Category.platformValue(in:)(&v13, v14, v15, v16, v17);
  outlined consume of AccessibilityActionCategory?(v11, v10, v9, v7);
  return v12;
}

double implicit closure #2 in closure #1 in Sequence<>.resolved(in:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  if ((*(v4 + 16))(v3, v4))
  {
    Image.resolve(in:)();

    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v14, v5, v6, v7);
  }

  else
  {
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v14);
  }

  v8 = v22;
  a2[8] = v21;
  a2[9] = v8;
  a2[10] = v23[0];
  *(a2 + 171) = *(v23 + 11);
  v9 = v18;
  a2[4] = v17;
  a2[5] = v9;
  v10 = v20;
  a2[6] = v19;
  a2[7] = v10;
  v11 = v14[1];
  *a2 = v14[0];
  a2[1] = v11;
  result = *&v15;
  v13 = v16;
  a2[2] = v15;
  a2[3] = v13;
  return result;
}

uint64_t closure #1 in AnyAccessibilityAction.init(_:appIntentExecutor:)()
{
  type metadata accessor for MainActor();
  static Semantics.v7.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t closure #1 in closure #1 in AnyAccessibilityAction.init(_:appIntentExecutor:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  if (a1)
  {
    v5 = *(a2 + 48);

    a1(v5);
    result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1);
  }

  else
  {
    result = (*(a2 + 56))();
  }

  *a3 = 2;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo6UIViewC_Tt1g5);
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSe_SESHp_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSH_p_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  v3 = specialized Collection.distance(from:to:)(v2, *(a1 + 36), 0, 1 << *(a1 + 32), *(a1 + 36), 0, a1);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI22SpatialEventCollectionV0K0V_Tt1g5(v3, 0);
  v6 = specialized Sequence._copySequenceContents(initializing:)(&v8, v5 + 32, v4, a1);

  outlined consume of Set<UIPress>.Iterator._Variant();
  if (v6 != v4)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

size_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  outlined init with copy of TableColumnCollection.Backing(a1, v16);
  if (v17)
  {
    v2 = *(*&v16[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v13);
    v3 = v14;
    v4 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v2 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v5 = specialized RandomAccessCollection<>.distance(from:to:)(0, v2);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI21TableColumnCollectionV5EntryV_Tt1g5(v5, 0);
  v8 = *(type metadata accessor for TableColumnCollection.Entry(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  outlined init with copy of TableColumnCollection(a1, v13);
  specialized Sequence._copySequenceContents(initializing:)(v16, v7 + v9, v6);
  v11 = v10;
  outlined destroy of IndexingIterator<TableColumnCollection>(v16, &lazy cache variable for type metadata for IndexingIterator<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E6CF0]);
  if (v11 != v6)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v7;
}

{
  v2 = type metadata accessor for _ArchivedViewStates(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<_ArchivedViewStates>();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + *(v3 + 28) + 8);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13_ArchivedViewV_Tt1g5(*(v9 + 16), 0);
  v12 = *(type metadata accessor for _ArchivedView(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  outlined init with copy of _ArchivedViewStates(a1, v5);
  v14 = specialized Sequence._copySequenceContents(initializing:)(v8, v11 + v13, v10);
  outlined destroy of IndexingIterator<_ArchivedViewStates>(v8, type metadata accessor for IndexingIterator<_ArchivedViewStates>);
  if (v14 != v10)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = _VariadicView_Children.endIndex.getter();
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = _VariadicView_Children.endIndex.getter();
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      if (v2)
      {
        v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SubviewV_Tt1g5(v2, 0);
        outlined init with copy of SubviewCollection(a1, v6);
        v5 = specialized Sequence._copySequenceContents(initializing:)(v7, (v4 + 4), v2);
        outlined destroy of IndexingIterator<TableColumnCollection>(v7, &lazy cache variable for type metadata for IndexingIterator<SubviewCollection>, lazy protocol witness table accessor for type SubviewCollection and conformance SubviewCollection, &type metadata for SubviewCollection, MEMORY[0x1E69E6CF0]);
        if (v5 == v2)
        {
          return v4;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

{
  v2 = *(*a1 + 88);
  v3 = v2();
  v4 = *(*a1 + 96);
  v5 = v4();
  v6 = v2();
  result = v4();
  if (v3 < v6 || result < v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = (v2)(result);
  result = v4();
  if (v5 < v9 || result < v5)
  {
    goto LABEL_16;
  }

  v11 = __OFSUB__(v5, v3);
  v12 = v5 - v3;
  if (!v11)
  {
    if (v12)
    {
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13TableColumnIDV_Tt1g5(v12, 0);

      v14 = specialized Sequence._copyContents(initializing:)(&v15, (v13 + 4), v12);

      if (v14 == v12)
      {
        return v13;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  v2 = *(*a1 + 88);
  v3 = v2();
  v4 = *(*a1 + 96);
  v5 = v4();
  v6 = v2();
  result = v4();
  if (v3 < v6 || result < v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = (v2)(result);
  result = v4();
  if (v5 < v9 || result < v5)
  {
    goto LABEL_16;
  }

  v11 = __OFSUB__(v5, v3);
  v12 = v5 - v3;
  if (!v11)
  {
    if (v12)
    {
      v13 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10TableRowIDO_Tt1g5(v12, 0);

      v14 = specialized Sequence._copyContents(initializing:)(&v15, v13 + 2, v12);

      if (v14 == v12)
      {
        return v13;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_17:
  __break(1u);
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, void, unint64_t))
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v9, a2 + 32, v6, a1);

    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v7 = __CocoaSet.count.getter();
    if (v7 < 0)
    {
      __break(1u);
    }

    v6 = v7;
    if (!v7)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2 - 1;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI14FocusStoreListV4ItemV_Tt1g5(v2, 0);
  outlined init with copy of FocusStoreList.Item(a1 + 32, (v4 + 4));
  if (v3)
  {
    v5 = (v4 + 13);
    v6 = a1 + 104;
    do
    {
      outlined init with copy of FocusStoreList.Item(v6, v5);
      v5 += 72;
      v6 += 72;
      --v3;
    }

    while (v3);
  }

  return v4;
}

unint64_t specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = a2 - result;
  if (a2 == result)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI025NavigationViewDestinationK0V_Tt1g5(a2 - result, 0);
  v12 = specialized Slice._copyContents(initializing:)(v13, (v11 + 4), v8, v7, a2, a3, a4);

  if (v12 != v8)
  {
    goto LABEL_11;
  }

  return v11;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      type metadata accessor for AnyAccessibilityAction?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DocumentLaunchScreenAction>, &type metadata for DocumentLaunchScreenAction, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for UIMenuElement();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      type metadata accessor for AnyAccessibilityAction?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size_1(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1, char *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v4, 0);

    MEMORY[0x18D00E990](a2 + 32, v4, v3);
    v3 = v5;

    if (v3 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

uint64_t outlined assign with take of AnyAccessibilityAction(__int128 *a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a2);
  v4 = *a1;
  v5 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 40) = *(a1 + 40);
  return a2;
}

uint64_t specialized Slice._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_10:
    v12 = a4;
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a5 <= a4)
    {
      v11 = a4;
    }

    else
    {
      v11 = a5;
    }

    if (a5 == a4)
    {
      v12 = a5;
      v10 = a5 - a4;
LABEL_11:
      *v9 = a4;
      v9[1] = a5;
      v9[2] = a6;
      v9[3] = a7;
      v9[4] = v12;
      return v10;
    }

    v13 = a2;
    v19 = a5 - a4;
    v20 = a5;
    v21 = a7;
    v14 = 0;
    v15 = v11 - a4;
    v16 = a3 - 1;
    v17 = a4 - a5;
    v18 = a6 + 88 * a4 + 32;
    while (v15 != v14)
    {
      if (a4 < 0)
      {
        goto LABEL_21;
      }

      if ((a4 + v14) >= *(a6 + 16))
      {
        goto LABEL_22;
      }

      result = outlined init with copy of NavigationViewDestinationView(v18, v13);
      if (v16 == v14)
      {
        v12 = a4 + v14 + 1;
        a5 = v20;
        a7 = v21;
        goto LABEL_11;
      }

      v13 += 88;
      ++v14;
      v18 += 88;
      if (!(v17 + v14))
      {
        v10 = v19;
        a5 = v20;
        v12 = v20;
        a7 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of IndexingIterator<_ArchivedViewStates>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AccessibilityKindActionProvider?()
{
  if (!lazy cache variable for type metadata for AccessibilityKindActionProvider?)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for AccessibilityKindActionProvider);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityKindActionProvider?);
    }
  }
}

uint64_t outlined init with copy of AnyAccessibilityAction?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityAction?(0, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (AnyAccessibilityAction?, AnyAccessibilityAction?)()
{
  if (!lazy cache variable for type metadata for (AnyAccessibilityAction?, AnyAccessibilityAction?))
  {
    type metadata accessor for AnyAccessibilityAction?(255, &lazy cache variable for type metadata for AnyAccessibilityAction?, &type metadata for AnyAccessibilityAction, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AnyAccessibilityAction?, AnyAccessibilityAction?));
    }
  }
}

id specialized AnyAccessibilityAction.Resolved.init(name:category:image:)(void *a1, void (*a2)(void), uint64_t a3, void (*a4)(_OWORD *__return_ptr, uint64_t))
{
  v6 = a1;
  a2();

  a4(v11, v7);
  v20 = v11[8];
  v21 = v11[9];
  v22[0] = v12[0];
  *(v22 + 11) = *(v12 + 11);
  v17 = v11[4];
  *v18 = v11[5];
  *&v18[16] = v11[6];
  v19 = v11[7];
  v13 = v11[0];
  v14 = v11[1];
  v15 = v11[2];
  v16 = v11[3];
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v13) == 1)
  {
  }

  else
  {
    outlined init with copy of GraphicsImage(&v13, v9);
    outlined destroy of AnyAccessibilityAction?(v11, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
    v9[4] = v17;
    v10[0] = *v18;
    *(v10 + 12) = *&v18[12];
    v9[0] = v13;
    v9[1] = v14;
    v9[2] = v15;
    v9[3] = v16;
    GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(1, 0, 0);

    outlined destroy of GraphicsImage(&v13);
  }

  return v6;
}

uint64_t outlined destroy of AnyAccessibilityAction?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AnyAccessibilityAction?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AccessibilityZoomAction and conformance AccessibilityZoomAction()
{
  result = lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction;
  if (!lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction;
  if (!lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityZoomAction and conformance AccessibilityZoomAction);
  }

  return result;
}

void type metadata accessor for AnyAccessibilityAction?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of IndexingIterator<TableColumnCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  _s7SwiftUI26AccessibilityActionStorageVyAA0c4VoidD0VGMaTm_0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SubviewCollection and conformance SubviewCollection()
{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection;
  if (!lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubviewCollection and conformance SubviewCollection);
  }

  return result;
}

uint64_t outlined init with copy of _ArchivedViewStates(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ArchivedViewStates(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void destroy for AnyAccessibilityAction.Resolved(uint64_t a1)
{

  v2 = *(a1 + 24);
}

void *initializeWithCopy for AnyAccessibilityAction.Resolved(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = v3;

  v7 = v5;
  return a1;
}

uint64_t assignWithCopy for AnyAccessibilityAction.Resolved(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for AnyAccessibilityAction.Resolved(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t type metadata completion function for AccessibilityActionReference()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void destroy for AccessibilityActionReference(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 24);
  LODWORD(v6) = -1;
  if (v5 < 0xFFFFFFFF)
  {
    v6 = *(v4 + 24);
  }

  if (v5 >= 2 && v6 - 2 < 0)
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  v7 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  JUMPOUT(0x18D011290);
}
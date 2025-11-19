uint64_t View.handlesGameControllerEvents(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 2;
  return MEMORY[0x23EEA4750](&v4, a2, &unk_284E2AD50, a3);
}

uint64_t View.handlesGameControllerEvents(matching:withOptions:)(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v5 = a1;
  v6 = v3;
  return MEMORY[0x23EEA4750](&v5, a3, &unk_284E2AD50);
}

uint64_t getEnumTagSinglePayload for GameControllerEventHandlingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameControllerEventHandlingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23B6ECF80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type GameControllerEventInteractionModifier and conformance GameControllerEventInteractionModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type GameControllerEventInteractionModifier and conformance GameControllerEventInteractionModifier()
{
  result = lazy protocol witness table cache variable for type GameControllerEventInteractionModifier and conformance GameControllerEventInteractionModifier;
  if (!lazy protocol witness table cache variable for type GameControllerEventInteractionModifier and conformance GameControllerEventInteractionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameControllerEventInteractionModifier and conformance GameControllerEventInteractionModifier);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance GameControllerEventInteractionModifier()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy016_GameController_aB00fg16EventInteractionD033_9E43609C5250F72CEA5D9749F3835FB5LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy016_GameController_aB00fg16EventInteractionD033_9E43609C5250F72CEA5D9749F3835FB5LLVGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<GameControllerEventInteractionModifier> and conformance _ViewModifier_Content<A>();
  lazy protocol witness table accessor for type GCEventInteractionRepresentable and conformance GCEventInteractionRepresentable();
  return View.interactionRepresentable<A>(_:)();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<GameControllerEventInteractionModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<GameControllerEventInteractionModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<GameControllerEventInteractionModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy016_GameController_aB00fg16EventInteractionD033_9E43609C5250F72CEA5D9749F3835FB5LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy016_GameController_aB00fg16EventInteractionD033_9E43609C5250F72CEA5D9749F3835FB5LLVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<GameControllerEventInteractionModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GCEventInteractionRepresentable and conformance GCEventInteractionRepresentable()
{
  result = lazy protocol witness table cache variable for type GCEventInteractionRepresentable and conformance GCEventInteractionRepresentable;
  if (!lazy protocol witness table cache variable for type GCEventInteractionRepresentable and conformance GCEventInteractionRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCEventInteractionRepresentable and conformance GCEventInteractionRepresentable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameControllerEventInteractionModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GameControllerEventInteractionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void type metadata accessor for GCUIEventTypes()
{
  if (!lazy cache variable for type metadata for GCUIEventTypes)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for GCUIEventTypes);
    }
  }
}

uint64_t sub_23B6ED37C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy016_GameController_aB00fg16EventInteractionD033_9E43609C5250F72CEA5D9749F3835FB5LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy016_GameController_aB00fg16EventInteractionD033_9E43609C5250F72CEA5D9749F3835FB5LLVGMR);
  lazy protocol witness table accessor for type _ViewModifier_Content<GameControllerEventInteractionModifier> and conformance _ViewModifier_Content<A>();
  lazy protocol witness table accessor for type GCEventInteractionRepresentable and conformance GCEventInteractionRepresentable();
  return swift_getOpaqueTypeConformance2();
}

id protocol witness for _UIInteractionRepresentable.makeUIInteraction() in conformance GCEventInteractionRepresentable()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x277CCB058]) init];
  [v3 setHandledEventTypes_];
  [v3 setReceivesEventsInView_];
  return v3;
}

id protocol witness for _UIInteractionRepresentable.updateUIInteraction(_:) in conformance GCEventInteractionRepresentable(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  [a1 setHandledEventTypes_];

  return [a1 setReceivesEventsInView_];
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance GCUIEventTypes(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance GCUIEventTypes@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance GCUIEventTypes@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance GCUIEventTypes@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance GCUIEventTypes@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t lazy protocol witness table accessor for type GCUIEventTypes and conformance GCUIEventTypes(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GCUIEventTypes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}
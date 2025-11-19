uint64_t getEnumTagSinglePayload for PhysicsSimulationComponent.SolverIterations(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhysicsSimulationComponent.SolverIterations(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PathSpan(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for MXIComponent.ProxyConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MXIComponent.ProxyConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Transform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Transform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsMassProperties(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for CollisionComponent.InteractionType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance CollisionComponent.InteractionType(_DWORD *a1, int *a2)
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

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance CollisionComponent.InteractionType@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance CollisionComponent.InteractionType@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance CollisionComponent.InteractionType@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance AnchoringComponent.Target.Classification@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance AnchoringComponent.Target.Classification(void *a1, uint64_t *a2)
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

_WORD *_sSo33REMaterialAssetCustomFeatureFlagsVSYSCSY8rawValuexSg03RawG0Qz_tcfCTW_0@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t _sSo16REStartupOptionsVs25ExpressibleByArrayLiteralSCsACP05arrayF0x0eF7ElementQzd_tcfCTW_0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

BOOL _sSo33REMaterialAssetCustomFeatureFlagsVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *_sSo33REMaterialAssetCustomFeatureFlagsVs10SetAlgebraSCsACP6removey7ElementQzSgAGFTW_0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *_sSo33REMaterialAssetCustomFeatureFlagsVs10SetAlgebraSCsACP6update4with7ElementQzSgAHn_tFTW_0@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

uint64_t _sSo16NSURLResourceKeyaSYSCSY8rawValue03RawD0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t _sSo33REMaterialAssetCustomFeatureFlagsVs25ExpressibleByArrayLiteralSCsACP05arrayI0x0hI7ElementQzd_tcfCTW_0@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CollisionComponent.CollisionOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CollisionComponent.CollisionOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C135A914()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 155, 7);
}

uint64_t sub_1C135A98C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v4 = *(v0 + 112);

  v5 = *(v0 + 144);

  return MEMORY[0x1EEE6BDD0](v0, 162, 7);
}

uint64_t sub_1C135AA04()
{
  if (*(v0 + 32) >= 2uLL)
  {

    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 52, 7);
}

uint64_t sub_1C135AA50()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    if (*(v0 + 32))
    {

      v2 = *(v0 + 32);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 52, 7);
}

uint64_t sub_1C135AAA4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6BDD0](v0, 174, 7);
}

uint64_t sub_1C135AB2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if ((*(v0 + 80) - 1) >= 2)
  {
  }

  outlined consume of DirectUniformsState(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  }

  v4 = *(v0 + 184);

  if (*(v0 + 232))
  {

    v5 = *(v0 + 248);
  }

  if (*(v0 + 280))
  {

    v6 = *(v0 + 296);
  }

  if ((*(v0 + 328) - 1) >= 3)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 370, 7);
}

uint64_t sub_1C135AC04()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 44, 15);
}

uint64_t sub_1C135AC3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  outlined consume of DirectUniformsState(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_1C135ACBC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static __RKEntityInteractionsComponent.registration;
}

uint64_t sub_1C135AD10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Entity.__interactions.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C135AD3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return Entity.__interactions.setter(v4);
}

uint64_t sub_1C135AD68()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C135ADA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C135ADD8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

float sub_1C135AE18@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

float sub_1C135AE24(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 12) = *a1;
  *(a2 + 20) = 0;
  *(a2 + 24) = 1;
  *(a2 + 4) = result;
  return result;
}

uint64_t sub_1C135AE5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 20);
  v3 = *(result + 24);
  *a2 = *(result + 12);
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  return result;
}

uint64_t sub_1C135AE78(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  *(a2 + 12) = *result;
  *(a2 + 20) = v2;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1C135AEA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C135AEF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C135AF4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1C135AF94(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1C135AFE0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t _s17RealityFoundation17BlendShapeWeightsVSgSgWOe_0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1C135B004@<X0>(uint64_t *a1@<X8>)
{
  result = FromToByAnimation.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1C135B040(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C135B04C@<X0>(_DWORD *a1@<X8>)
{
  result = FromToByAnimation.blendLayer.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C135B0C0@<X0>(_BYTE *a1@<X8>)
{
  result = FromToByAnimation.fillMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C135B140@<X0>(_BYTE *a1@<X8>)
{
  result = FromToByAnimation.isAdditive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C135B1B8@<X0>(uint64_t a1@<X8>)
{
  result = FromToByAnimation.trimStart.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C135B228@<X0>(uint64_t a1@<X8>)
{
  result = FromToByAnimation.trimEnd.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C135B298@<X0>(uint64_t a1@<X8>)
{
  result = FromToByAnimation.trimDuration.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C135B428@<X0>(_BYTE *a1@<X8>)
{
  result = FromToByAnimation.repeatMode.getter(&v3);
  *a1 = v3;
  return result;
}

void sub_1C135B4A8(uint64_t a1@<X1>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for FromToByAnimation();
  *a3 = FromToByAnimation.duration.getter(v7);
}

uint64_t sub_1C135B4E4(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = type metadata accessor for FromToByAnimation();
  return FromToByAnimation.duration.setter(v7, v6);
}

uint64_t sub_1C135B538(uint64_t result, uint64_t a2)
{
  v2 = *(result + 4) != 0;
  *(a2 + 208) = *result;
  *(a2 + 212) = v2;
  *(a2 + 213) = 0;
  return result;
}

uint64_t sub_1C135B574(uint64_t result, uint64_t a2)
{
  v2 = *(result + 4) != 0;
  *(a2 + 216) = *result;
  *(a2 + 220) = v2;
  *(a2 + 221) = 0;
  return result;
}

uint64_t sub_1C135B5B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 4) != 0;
  *(a2 + 224) = *result;
  *(a2 + 228) = v2;
  *(a2 + 229) = 0;
  return result;
}

uint64_t sub_1C135B6C8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 208) = *result;
  *(a2 + 216) = v2;
  return result;
}

uint64_t sub_1C135B71C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 224) = *result;
  *(a2 + 232) = v2;
  return result;
}

uint64_t sub_1C135B770(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 240) = *result;
  *(a2 + 248) = v2;
  return result;
}

__n128 sub_1C135B7C4(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  a2[13] = *a1;
  a2[14].n128_u16[0] = v2;
  return result;
}

__n128 sub_1C135B818(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  a2[15] = *a1;
  a2[16].n128_u16[0] = v2;
  return result;
}

__n128 sub_1C135B86C(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  a2[17] = *a1;
  a2[18].n128_u16[0] = v2;
  return result;
}

double sub_1C135B9FC@<D0>(uint64_t a1@<X8>)
{
  FromToByAnimation<>.fromValue.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1C135BA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(a2 + 208) = *a1;
  *(a2 + 224) = v3;
  result = *(a1 + 32);
  *(a2 + 240) = result;
  *(a2 + 256) = v2;
  return result;
}

double sub_1C135BA88@<D0>(uint64_t a1@<X8>)
{
  FromToByAnimation<>.toValue.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1C135BAD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(a2 + 272) = *a1;
  *(a2 + 288) = v3;
  result = *(a1 + 32);
  *(a2 + 304) = result;
  *(a2 + 320) = v2;
  return result;
}

double sub_1C135BB14@<D0>(uint64_t a1@<X8>)
{
  FromToByAnimation<>.byValue.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_1C135BB60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(a2 + 336) = *a1;
  *(a2 + 352) = v3;
  result = *(a1 + 32);
  *(a2 + 368) = result;
  *(a2 + 384) = v2;
  return result;
}

char *sub_1C135BBA0@<X0>(char **a1@<X8>)
{
  result = FromToByAnimation<>.jointNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C135BBCC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 280);

  *(a2 + 280) = v3;
  return result;
}

uint64_t sub_1C135BC20@<X0>(void *a1@<X8>)
{
  result = FromToByAnimation<>.fromValue.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C135BC84@<X0>(void *a1@<X8>)
{
  result = FromToByAnimation<>.toValue.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C135BCE8@<X0>(void *a1@<X8>)
{
  result = FromToByAnimation<>.byValue.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C135BD4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 288);
  if (result == 2)
  {
    if (*(*(a1 + 200) + 16))
    {
      v4 = a2;
      result = RETimelineDefinitionGetSkeletalPoseScaleChannelMask();
      a2 = v4;
    }

    else
    {
      result = 1;
    }
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_1C135BDC0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 289);
  if (result == 2)
  {
    if (*(*(a1 + 200) + 16))
    {
      v4 = a2;
      result = RETimelineDefinitionGetSkeletalPoseRotationChannelMask();
      a2 = v4;
    }

    else
    {
      result = 1;
    }
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_1C135BE34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 290);
  if (result == 2)
  {
    if (*(*(a1 + 200) + 16))
    {
      v4 = a2;
      result = RETimelineDefinitionGetSkeletalPoseTranslationChannelMask();
      a2 = v4;
    }

    else
    {
      result = 1;
    }
  }

  *a2 = result & 1;
  return result;
}

char *sub_1C135BEA8@<X0>(char **a1@<X8>)
{
  result = FromToByAnimation<>.weightNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C135BED4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 296);

  *(a2 + 296) = v3;
  return result;
}

uint64_t sub_1C135BF28@<X0>(void *a1@<X8>)
{
  result = FromToByAnimation<>.fromValue.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C135BF8C@<X0>(void *a1@<X8>)
{
  result = FromToByAnimation<>.toValue.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C135BFF0@<X0>(void *a1@<X8>)
{
  result = FromToByAnimation<>.byValue.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C135C130@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for BindableValue();
  return BindableValue.value.getter(v7, a3);
}

__n128 sub_1C135C17C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_1C135C194(void *result, void *a2)
{
  if (*result != *a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with take of ForceEffectBase(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s17RealityFoundation25_Proto_MeshDeformation_v1V26CustomDeformerComponentGPUVy_xq_q0_GAC0ghI0AacGP10targetDataSDyAA01_c1_d6Scope_F0O11TargetDatumQzGvgTW_0()
{
  _s17RealityFoundation25_Proto_MeshDeformation_v1V26CustomDeformerComponentGPUV10targetDataSDyAA01_c1_d6Scope_F0OxGvgTf4n_g_0();
}

uint64_t _s17RealityFoundation25_Proto_MeshDeformation_v1V26CustomDeformerComponentGPUVy_xq_q0_GAC0ghI0AacGP12dirtyTargetsShyAA01_c1_d6Scope_F0OGvgTW_0()
{
  _s17RealityFoundation25_Proto_MeshDeformation_v1V26CustomDeformerComponentGPUV12dirtyTargetsShyAA01_c1_d6Scope_F0OGvgTf4n_g_0();
}

__n128 sub_1C135C304(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t _s17RealityFoundation25_Proto_MeshDeformation_v1V26CustomDeformerComponentGPUVMi_0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C135C630()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C135C668()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 37, 7);
}

uint64_t sub_1C135C6BC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C135C704@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static __RealityFileURLResolver.weakShared.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C135C72C(uint64_t *a1)
{
  v1 = *a1;

  specialized static __RealityFileURLResolver.weakShared.setter(v2);
}

uint64_t sub_1C135C76C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C135C7A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C135CBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C135CC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 24);

  return v5(a2, a1, v4);
}

uint64_t sub_1C135CCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v5 = (a1 + *(result + 24));
  v6 = *(v5 + 16);
  v7 = 0uLL;
  if ((v6 & 1) == 0)
  {
    v7 = *v5;
  }

  *a2 = v7;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1C135CD0C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v7 = a2 + *(result + 24);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  if ((v5 & 1) == 0)
  {
    *v7 = v3;
    *(v7 + 8) = v4;
    *(v7 + 16) = 0;
  }

  return result;
}

uint64_t sub_1C135CD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C135CDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C135CE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C135CF98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C135D0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C135D194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1C135D24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 36));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 60);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C135D380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 36)) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 60);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C135D4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for __RKEntityHideActionArguments(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = type metadata accessor for __RKEntityShowActionArguments(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_1C135D5EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for __RKEntityHideActionArguments(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = type metadata accessor for __RKEntityShowActionArguments(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C135D738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C135D7FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C135D8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C135D98C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C135DA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C135DB78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C135DCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for __RKEntityActionSpecification(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C135DDC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for __RKEntityActionSpecification(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C135DF48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[1] < 0)
  {
    result = 0;
  }

  else
  {
    v3 = *a1;
  }

  *a2 = result;
  return result;
}

double sub_1C135DF88@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  HasModel.model.getter(v6);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

__n128 sub_1C135DFD4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_1C135DFE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = HasModel.debugModel.getter(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_1C135E01C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return HasModel.debugModel.setter(&v4);
}

__n128 sub_1C135E09C(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_1C135E0B0()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_1C135E100(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 4);
  *a2 = DirectionalLightComponent.lightColor.getter();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1C135E150(CGFloat *a1, id *a2)
{
  GenericRGB = CGColorCreateGenericRGB(*a1, a1[1], a1[2], a1[3]);

  *a2 = GenericRGB;
}

uint64_t sub_1C135E18C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TextureResource.Dimensions2D()
{
  v1 = v0[1];
  MEMORY[0x1C68F4C10](*v0);
  return MEMORY[0x1C68F4C10](v1);
}

uint64_t sub_1C135E248()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C135E308()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1C135E3D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C135E41C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C135E454()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 45, 7);
}

uint64_t sub_1C135E4C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n_0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if ((v1 - 1) > 1)
    {
      __break(1u);
    }

    else
    {
      v2 = *(result + 32);
      if (v1 != 1)
      {
        v3 = *(result + 36);
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C135E550@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static __RKSceneUUIDComponent.registration;
}

uint64_t sub_1C135E5DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C135E668()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 28) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1C135E754()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C135E790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C135E7E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_1C135E828(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

__n128 sub_1C135E86C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  return result;
}

__n128 sub_1C135E878(__n128 *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 40) = *a1;
  return result;
}

void _ss6ResultOy10RealityKit17AudioFileResourceCs5Error_pGSgWOe_0(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of Result<ModelEntity, Error>(a1, a2 & 1, MEMORY[0x1E69E7D48]);
  }
}

uint64_t sub_1C135E8E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C135E924()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  outlined consume of DirectUniformsState(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v5 = *(v0 + 152);

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1C135E994()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C135E9E0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C135EA30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C135EA68()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C135EAD8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C135EB2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 29) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C135EC08()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C135EC58()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C135ECA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10RealityKit15TextureResourceCs5Error_pGMd, &_sScCy10RealityKit15TextureResourceCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Result<ModelEntity, Error>(*(v0 + 16), *(v0 + 24), MEMORY[0x1E69E7D60]);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C135ED9C()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C135EDEC()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C135EE5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C135EE9C()
{
  outlined consume of Result<ModelEntity, Error>(*(v0 + 16), *(v0 + 24), MEMORY[0x1E69E7D60]);
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C135F00C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C135F05C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

  if (v0[16])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  }

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1C135F0E0(uint64_t result, uint64_t a2)
{
  if (*(*result + 16) != *(*(*a2 + 24) + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C135F104@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v4;
}

uint64_t sub_1C135F15C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1C135F1B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

float sub_1C135F224@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 76);
  *a2 = result;
  return result;
}

uint64_t sub_1C135F26C(float *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + 76);
  result = swift_beginAccess();
  if (v2 < 1.0 || v2 > 16.0)
  {
    v2 = *v3;
  }

  *v3 = v2;
  return result;
}

id sub_1C135F2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + 480);
  v3 = *(*a1 + 488);
  *a2 = v2;
  *(a2 + 8) = v3;
  return v3;
}

void sub_1C135F2EC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v5 = *(*a2 + 488);
  *(v3 + 480) = *a1;
  *(v3 + 488) = v2;
  v4 = v2;
}

uint64_t sub_1C135F348(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C135F398(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1C135F440(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 472);
  *(*a2 + 472) = *a1;
}

uint64_t sub_1C135F490(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(a2 + 40) = v3;
  return result;
}

uint64_t _s17RealityFoundation19ShaderGraphMaterialVSgWOg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for AVAudioFormat.ValidationError(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C135F574()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C135F5E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 112);
}

uint64_t sub_1C135F630@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_1C135F678(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 120) = v2;
  return result;
}

uint64_t sub_1C135F6BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1C135F704(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 128) = v2;
  return result;
}

uint64_t sub_1C135F748()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C135F780()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C135F7C8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

float sub_1C135F840@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 164);
  *a2 = result;
  return result;
}

float *sub_1C135F84C(float *result, uint64_t a2)
{
  v2 = *result;
  if (*result < 0.0)
  {
    v2 = 0.0;
  }

  *(a2 + 164) = v2;
  return result;
}

float sub_1C135F864@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 168);
  *a2 = result;
  return result;
}

float *sub_1C135F870(float *result, uint64_t a2)
{
  v2 = *result;
  if (*result < 0.0)
  {
    v2 = 0.0;
  }

  *(a2 + 168) = v2;
  return result;
}

uint64_t sub_1C135F8DC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static __REAnchoring.registration;
}

uint64_t sub_1C135F9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1C135FAA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1C135FB78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetUserData();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FBBC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetClockMode();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FBEC(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return REEngineConfigurationSetClockMode();
}

uint64_t sub_1C135FC00@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetServicesToCreate();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FC30(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return REEngineConfigurationSetServicesToCreate();
}

uint64_t sub_1C135FC44@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetServicesToUpdate();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FC74(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return REEngineConfigurationSetServicesToUpdate();
}

uint64_t sub_1C135FC88@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetStartupOptions();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FCB8(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return REEngineConfigurationSetStartupOptions();
}

id sub_1C135FCCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetEngineQueue();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FD04(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return REEngineConfigurationSetEngineQueue();
}

id sub_1C135FD18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetDevice();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FD50(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return REEngineConfigurationSetDevice();
}

uint64_t sub_1C135FD64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetUseMetal();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FDA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetForExportOnly();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FDEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetEnableVideoSupport();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FE30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetEnablePreloadEngineAssets();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FE74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetEnablePreloadMXIAssets();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FEB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetUseRealityIO();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FEFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetUsePhysicsSceneSystem();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FF40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetAssetRuntimeSizeLimitForResourceShareClient();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FF84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetDisableRenderGraphCaching();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FFC8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetRenderFlags();
  *a2 = result;
  return result;
}

uint64_t sub_1C135FFF8(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return REEngineConfigurationSetRenderFlags();
}

uint64_t sub_1C136000C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetIsHostingSharedAudioSimulation();
  *a2 = result;
  return result;
}

uint64_t sub_1C1360050@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetEnableInteractions();
  *a2 = result;
  return result;
}

uint64_t sub_1C1360094@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetEnableCommitSynchronously();
  *a2 = result;
  return result;
}

uint64_t sub_1C13600D8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetRenderThreadPriority();
  *a2 = result;
  return result;
}

uint64_t sub_1C136011C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetRenderFrameOverlap();
  *a2 = result;
  return result;
}

uint64_t *sub_1C1360160(uint64_t *a1, void (*a2)(uint64_t, void, __int128 *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *MEMORY[0x1E69E9840];
  result = _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(a1, a2, a3, a4, a5, a6);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s17RealityFoundation13PhysicsJointsVSlAASl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized BidirectionalCollection.index(_:offsetBy:)(*a1);
  *a2 = result;
  return result;
}

uint64_t _s17RealityFoundation13PhysicsJointsVSlAASl5index_8offsetBy07limitedG05IndexQzSgAH_SiAHtFTW_0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1C13602AC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static __RKEntityTagsComponent.registration;
}

uint64_t sub_1C1360300@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Entity.__tags.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C136032C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return Entity.__tags.setter(v4);
}

uint64_t sub_1C1360358()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    outlined consume of BindTarget(*(v0 + 32), *(v0 + 40), v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

void _s17RealityFoundation25NotificationActionHandlerVAA0dE8ProtocolA2aDP13actionStarted5eventyAA0D5EventVy0D4TypeQzG_tFTW_0(_OWORD *a1)
{
  v1 = a1[11];
  v8[10] = a1[10];
  v8[11] = v1;
  v2 = a1[13];
  v8[12] = a1[12];
  v8[13] = v2;
  v3 = a1[7];
  v8[6] = a1[6];
  v8[7] = v3;
  v4 = a1[9];
  v8[8] = a1[8];
  v8[9] = v4;
  v5 = a1[3];
  v8[2] = a1[2];
  v8[3] = v5;
  v6 = a1[5];
  v8[4] = a1[4];
  v8[5] = v6;
  v7 = a1[1];
  v8[0] = *a1;
  v8[1] = v7;
  specialized NotificationActionHandler.postNotification(event:)(v8);
}

uint64_t protocol witness for VFXParameter.objectName.getter in conformance VFXResource.VFXParameterImpl()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

double _s17RealityFoundation9UnkeyedECC16IndexedCodingKey33_423B28274EF321550525D008D560505DLLVs0fG0AAsAGP11stringValuexSgSS_tcfCTW_0@<D0>(_OWORD *a1@<X8>)
{

  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t _s17RealityFoundation9UnkeyedECC16IndexedCodingKey33_423B28274EF321550525D008D560505DLLVs0fG0AAsAGP8intValueSiSgvgTW_0()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1C13606B8(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E6998898]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C1360718(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E69988B8]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C1360780()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C13607D0(uint64_t *a1)
{
  v1 = *a1;

  return CustomMaterial.program.setter(v2);
}

uint64_t sub_1C13607FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C136083C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1360874()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C13608AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C13608EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 72))
  {

    v2 = *(v0 + 88);
  }

  if (*(v0 + 120))
  {

    v3 = *(v0 + 136);
  }

  v4 = *(v0 + 152);

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1C13609BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C1360A08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

uint64_t sub_1C1360BF0(double *a1, uint64_t a2)
{
  MEMORY[0x1C68F7300](*(*a2 + 32), *(*a2 + 48), *a1);

  return RENetworkMarkComponentDirty();
}

uint64_t sub_1C1360C40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1360C78()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1360CB0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1360CF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1360D58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = DRBufferGetBytesUsed();
  *a2 = result;
  return result;
}

uint64_t sub_1C1360D88(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  return DRBufferSetBytesUsed();
}

id sub_1C1360DE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = v2;
  return v2;
}

void *specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1C1360E30()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1360E68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = __REAssetManager.syncLoadsShouldWaitForResourceSharing.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1360EA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = __REAssetManager.asyncLoadsShouldWaitForResourceSharing.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1360EE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = __REAssetManager.syncLoadsShouldInitiateResourceSharing.getter();
  *a2 = result & 1;
  return result;
}

uint64_t _s10RealityKit6EntityC12ComponentSetV0A10FoundationE7IndicesVSlAFSl5index_8offsetBy5IndexQzAL_SitFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3[1];
  v5 = v3[2];
  return specialized BidirectionalCollection.index(_:offsetBy:)(*a1, a2, *v3, a3);
}

uint64_t _s10RealityKit6EntityC12ComponentSetV0A10FoundationE7IndicesVSlAFSl5index_8offsetBy07limitedJ05IndexQzSgAM_SiAMtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4[1];
  v6 = v4[2];
  return specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, a4);
}

uint64_t sub_1C1360F98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_1C1360FD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasSynchronization.synchronization.getter(v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 sub_1C136102C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C1361050()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1C1361088(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  v6 = type metadata accessor for Atomic();
  Atomic.wrappedValue.getter(v6, a4);
}

uint64_t sub_1C13610D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for Atomic();
  return specialized Atomic.wrappedValue.setter(a1, v6);
}

uint64_t sub_1C1361144()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136117C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C13611CC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136120C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = HasModel.jointTransforms.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C1361238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return HasModel.jointTransforms.setter(v4);
}

__n128 sub_1C1361270(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C1361280()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  outlined consume of BlendWeight(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1C13612D0()
{
  v1 = *(v0 + 24);

  outlined consume of BlendWeight(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

__n128 sub_1C136134C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C1361358@<X0>(uint64_t *a1@<X8>)
{
  result = BlendTreeAnimation.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1361394@<X0>(_DWORD *a1@<X8>)
{
  result = BlendTreeAnimation.blendLayer.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1361408@<X0>(_BYTE *a1@<X8>)
{
  result = BlendTreeAnimation.fillMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C1361488@<X0>(_BYTE *a1@<X8>)
{
  result = BlendTreeAnimation.isAdditive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C13614EC@<X0>(uint64_t a1@<X8>)
{
  result = BlendTreeAnimation.trimStart.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C136155C@<X0>(uint64_t a1@<X8>)
{
  result = BlendTreeAnimation.trimEnd.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C13615CC@<X0>(uint64_t a1@<X8>)
{
  result = BlendTreeAnimation.trimDuration.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C136175C@<X0>(_BYTE *a1@<X8>)
{
  result = BlendTreeAnimation.repeatMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation19AnimationDefinition_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C13617F4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 64);

  outlined consume of BlendWeight(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

uint64_t sub_1C136187C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13618B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1361920()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1C13619B4@<Q0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = a1->n128_u64[0];
  return result;
}

float sub_1C13619C0(void *a1, uint64_t a2)
{
  *&v2 = *a1;
  *(&v2 + 1) = *(a2 + 8);
  *a2 = v2;
  return *&v2;
}

__n128 sub_1C13619E8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

__n128 sub_1C13619F8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  result.n128_u32[3] = a2->n128_u32[3];
  *a2 = result;
  return result;
}

uint64_t sub_1C1361A28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);

  *(a2 + 16) = v3;
  return PhotogrammetrySample.metadata.didset();
}

id sub_1C1361A70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  return v2;
}

uint64_t sub_1C1361A7C(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);
  v5 = *a1;

  *(a2 + 24) = v3;
  return PhotogrammetrySample.depthDataMap.didset();
}

__n128 sub_1C1361ABC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[3].n128_u64[0];
  v3 = a1[3].n128_u8[8];
  result = a1[2];
  *a2 = result;
  a2[1].n128_u64[0] = v2;
  a2[1].n128_u8[8] = v3;
  return result;
}

uint64_t sub_1C1361AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(a2 + 32) = *a1;
  *(a2 + 48) = v2;
  *(a2 + 56) = v3;
  return PhotogrammetrySample.gravity.didset();
}

id sub_1C1361B14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 64);
  *a2 = v2;
  return v2;
}

uint64_t sub_1C1361B20(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 64);
  v5 = *a1;

  *(a2 + 64) = v3;
  return PhotogrammetrySample.objectMask.didset();
}

uint64_t sub_1C1361B60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

float _s17RealityFoundation14CustomMaterialV9RoughnessVs25ExpressibleByFloatLiteralAAsAFP05floatI0x0hI4TypeQz_tcfCTW_0@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1C1361BE8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1361C20()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1361C70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1361CA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 192);
}

void *sub_1C1361D00@<X0>(void *a1@<X8>)
{
  result = AnimationGroup.group.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1361D2C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t sub_1C1361D74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 168);

  *(a2 + 160) = v4;
  *(a2 + 168) = v3;
  return result;
}

uint64_t sub_1C1361DB8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (*(a1 + 200) == 1)
  {
    result = *(*(a1 + 208) + 16);
    if (result)
    {
      v3 = a2;
      result = RETimelineDefinitionGetAnimationLayer();
      a2 = v3;
    }

    *a2 = result;
  }

  else
  {
    result = *(a1 + 196);
    *a2 = result;
  }

  return result;
}

_DWORD *sub_1C1361E0C(_DWORD *result, uint64_t a2)
{
  *(a2 + 196) = *result;
  *(a2 + 200) = 0;
  return result;
}

double sub_1C1361E1C@<D0>(uint64_t a1@<X8>)
{
  AnimationGroup.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_1C1361E64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 202) == 1)
  {
    result = *(*(a1 + 208) + 16);
    if (result)
    {
      v3 = a2;
      result = RETimelineDefinitionGetFillMode();
      a2 = v3;
    }

    *a2 = result;
  }

  else
  {
    result = *(a1 + 201);
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C1361EC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 203);
  if (result == 2)
  {
    result = *(*(a1 + 208) + 16);
    if (result)
    {
      v4 = a2;
      result = RETimelineDefinitionIsAdditive();
      a2 = v4;
    }
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1361F28(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 8) = *result;
  *(a2 + 16) = v2;
  return result;
}

uint64_t sub_1C1361F44(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 24) = *result;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_1C1361F60(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 40) = *result;
  *(a2 + 48) = v2;
  return result;
}

void *sub_1C1361F7C(void *result, uint64_t a2)
{
  *(a2 + 56) = *result;
  *(a2 + 64) = 0;
  return result;
}

void *sub_1C1361F90(void *result, uint64_t a2)
{
  *(a2 + 72) = *result;
  *(a2 + 80) = 0;
  return result;
}

_DWORD *sub_1C1361FA4(_DWORD *result, uint64_t a2)
{
  *(a2 + 84) = *result;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_1C1361FB4@<X0>(_BYTE *a1@<X8>)
{
  result = AnimationGroup.repeatMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C1362008(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t sub_1C13620A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136214C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 155, 7);
}

double protocol witness for Material.__directUniformsState.getter in conformance UnlitMaterial@<D0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  result = 1.49166815e-154;
  a1[2] = xmmword_1C18A9570;
  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.getter in conformance InvalidAnimationDefinition()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t protocol witness for AnimationDefinition.trimStart.setter in conformance InvalidAnimationDefinition(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t sub_1C13622B0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C13622F0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C1362358()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

__n128 sub_1C1362470(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C136256C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  outlined init with copy of MaterialParameters(a1, v7);
  return Material.parameters.setter(v7, v4, v5);
}

uint64_t sub_1C13625C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C1362610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

void sub_1C136268C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 96);
  specialized Material.getLegacyBase(legacy:)(*(a1 + 80), *(a1 + 88), *(a1 + 104), &v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
}

uint64_t sub_1C13626E0@<X0>(unint64_t *a1@<X8>)
{
  result = specialized Material.getScalarParameter(_:)(0, &v4);
  v3 = v4;
  if (v4 >> 60 == 15)
  {
    v3 = 1065353216;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1C136275C@<X0>(unint64_t *a1@<X8>)
{
  result = specialized Material.getScalarParameter(_:)(1, &v4);
  v3 = v4;
  if (v4 >> 60 == 15)
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1C136288C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  if ((*(result + 136) & 1) == 0)
  {
    if (*(result + 128) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(result + 128);
    }
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C13628FC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  if ((*(result + 56) & 1) == 0)
  {
    if (*(result + 48) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(result + 48);
    }
  }

  *a2 = v2;
  return result;
}

id sub_1C1362954@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + 40) + 16);
  result = REVideoAssetGetAVPlayer();
  *a2 = result;
  return result;
}

uint64_t sub_1C136298C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*(a2 + 40) + 16);
  return REVideoAssetSetAVPlayer();
}

uint64_t sub_1C13629A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*(a2 + 40) + 16);
  return REVideoAssetSetRemotePlayer();
}

uint64_t sub_1C1362A08@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 2;
  if ((*(result + 80) & 1) == 0)
  {
    if (*(result + 72) >= 3uLL)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(result + 72);
    }
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C1362A88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1362B1C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1362B54()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6BDD0](v0, 174, 7);
}

uint64_t sub_1C1362BDC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1362C14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1362C54()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1362C9C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1362CEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if ((*(v0 + 80) - 1) >= 2)
  {
  }

  outlined consume of DirectUniformsState(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  }

  v4 = *(v0 + 184);

  if (*(v0 + 232))
  {

    v5 = *(v0 + 248);
  }

  if (*(v0 + 280))
  {

    v6 = *(v0 + 296);
  }

  if ((*(v0 + 328) - 1) >= 3)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 370, 7);
}

uint64_t sub_1C1362DC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  outlined consume of DirectUniformsState(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_1C1362E24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v4 = *(v0 + 112);

  v5 = *(v0 + 144);

  return MEMORY[0x1EEE6BDD0](v0, 162, 7);
}

double sub_1C1362FCC@<D0>(uint64_t a1@<X8>)
{
  PortalComponent.clippingPlane.getter(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__int128 *sub_1C1363010(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = v1;
  return PortalComponent.clippingPlane.setter(v4);
}

uint64_t sub_1C1363050@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 48);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *(result + 16);
    v4 = *(result + 32);
  }

  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

__int128 *sub_1C1363070(__int128 *result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *result;
    v4 = result[1];
  }

  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 48) = v2;
  return result;
}

uint64_t sub_1C1363090@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 96);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *(result + 64);
    v4 = *(result + 80);
  }

  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

__int128 *sub_1C13630B0(__int128 *result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = 0uLL;
  v4 = 0uLL;
  if ((v2 & 1) == 0)
  {
    v3 = *result;
    v4 = result[1];
  }

  *(a2 + 64) = v3;
  *(a2 + 80) = v4;
  *(a2 + 96) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ParticleEmitterComponent.BirthLocation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParticleEmitterComponent.BirthLocation(uint64_t result, int a2, int a3)
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

  *(result + 33) = v3;
  return result;
}

uint64_t getEnumTag for ParticleEmitterComponent.BirthLocation(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for ParticleEmitterComponent.BirthLocation(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_1C1363164@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static __RKEntityUUIDComponent.registration;
}

uint64_t sub_1C13631E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C1363258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C1363300()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1363348@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C13633A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_1C13633E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

uint64_t sub_1C136342C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 89);
  return result;
}

uint64_t sub_1C1363474(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 89) = v2;
  return result;
}

uint64_t sub_1C13634B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 90);
  return result;
}

uint64_t sub_1C1363500(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 90) = v2;
  return result;
}

uint64_t sub_1C1363544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 104);
  *a2 = *(v3 + 96);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1C1363598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 105);
  return result;
}

uint64_t sub_1C13635E0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 105) = v2;
  return result;
}

uint64_t sub_1C1363624()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C1363660(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v3 = specialized simd_float4x4.init(translation:rotation:scale:)(*a1, *(a1 + 16), COERCE_FLOAT(*(a1 + 32)));
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

void sub_1C1363694(_OWORD *a1, _OWORD *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  key path setter for RETransform.matrix : RETransform(a1, a2);
}

float sub_1C13636EC@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

float sub_1C13636F8(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

float sub_1C1363704@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float sub_1C1363710(float *a1, _DWORD *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C1363734@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 12);
  if (v3)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

int *sub_1C1363750(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  return result;
}

uint64_t sub_1C136376C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  v3 = *(result + 20);
  if (v3)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

int *sub_1C1363788(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(a2 + 16) = v2;
  *(a2 + 20) = v3;
  return result;
}

uint64_t sub_1C13637AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C13637F4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1C1363838@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1C1363880(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 17) = v2;
  return result;
}

uint64_t sub_1C13638C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 18);
  return result;
}

uint64_t sub_1C136390C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 18) = v2;
  return result;
}

uint64_t sub_1C1363A64()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v9 | 7);
}

uint64_t sub_1C1363B5C()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1363BDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C1363C14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1363C4C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1363C84()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1363CEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1C1363D68()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t _s17RealityFoundation5IKRigV21ConstraintsCollectionVSTAAST12makeIterator0G0QzyFTW_0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];

  *a1 = v4;
  a1[1] = 0;
  return result;
}

uint64_t getEnumTag for EnvironmentResource.OptionError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1C1363E40@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v12 = *a1;
  v11 = v4;
  IKRig.JointCollection.subscript.getter(&v11, v13);
  v5 = v13[7];
  v6 = v13[9];
  v7 = v13[10];
  *(a3 + 128) = v13[8];
  *(a3 + 144) = v6;
  *(a3 + 160) = v7;
  v8 = v13[5];
  *(a3 + 64) = v13[4];
  *(a3 + 80) = v8;
  *(a3 + 96) = v13[6];
  *(a3 + 112) = v5;
  v9 = v13[1];
  *a3 = v13[0];
  *(a3 + 16) = v9;
  result = v13[3];
  *(a3 + 32) = v13[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1C1363EC4(_OWORD *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a1[9];
  v13[8] = a1[8];
  v13[9] = v5;
  v13[10] = a1[10];
  v6 = a1[5];
  v13[4] = a1[4];
  v13[5] = v6;
  v7 = a1[7];
  v13[6] = a1[6];
  v13[7] = v7;
  v8 = a1[1];
  v13[0] = *a1;
  v13[1] = v8;
  v9 = a1[3];
  v13[2] = a1[2];
  v13[3] = v9;
  v12 = v4;
  outlined init with copy of [String : String](v13, &v11, &_s17RealityFoundation5IKRigV5JointVSgMd, &_s17RealityFoundation5IKRigV5JointVSgMR);
  return IKRig.JointCollection.subscript.setter(a1, &v12);
}

double sub_1C1363FB0@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v13 = *a1;
  v12 = v4;
  IKRig.ConstraintsCollection.subscript.getter(&v12, v14);
  v5 = v14[7];
  v6 = v14[8];
  a3[6] = v14[6];
  a3[7] = v5;
  v7 = v14[9];
  a3[8] = v6;
  a3[9] = v7;
  v8 = v14[3];
  a3[2] = v14[2];
  a3[3] = v8;
  v9 = v14[5];
  a3[4] = v14[4];
  a3[5] = v9;
  result = *v14;
  v11 = v14[1];
  *a3 = v14[0];
  a3[1] = v11;
  return result;
}

uint64_t sub_1C1364030(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a1[7];
  v13[6] = a1[6];
  v13[7] = v5;
  v6 = a1[9];
  v13[8] = a1[8];
  v13[9] = v6;
  v7 = a1[3];
  v13[2] = a1[2];
  v13[3] = v7;
  v8 = a1[5];
  v13[4] = a1[4];
  v13[5] = v8;
  v9 = a1[1];
  v13[0] = *a1;
  v13[1] = v9;
  v12 = v4;
  outlined init with copy of [String : String](v13, &v11, &_s17RealityFoundation5IKRigV10ConstraintVSgMd, &_s17RealityFoundation5IKRigV10ConstraintVSgMR);
  return IKRig.ConstraintsCollection.subscript.setter(a1, &v12);
}

void _s17RealityFoundation20ImpulseActionHandlerVAA0dE8ProtocolA2aDP13actionStarted5eventyAA0D5EventVy0D4TypeQzG_tFTW_0(float32x4_t *a1)
{
  v1 = a1[13];
  v9[12] = a1[12];
  v9[13] = v1;
  v2 = a1[15];
  v9[14] = a1[14];
  v9[15] = v2;
  v3 = a1[9];
  v9[8] = a1[8];
  v9[9] = v3;
  v4 = a1[11];
  v9[10] = a1[10];
  v9[11] = v4;
  v5 = a1[5];
  v9[4] = a1[4];
  v9[5] = v5;
  v6 = a1[7];
  v9[6] = a1[6];
  v9[7] = v6;
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v8 = a1[3];
  v9[2] = a1[2];
  v9[3] = v8;
  specialized ImpulseActionHandler.applyImpulse(event:)(v9);
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySiG_Tt0G5_0(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySiGMd, &_s17RealityFoundation23SetEntityPropertyActionVySiGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(v13);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Int> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySiGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySo10simd_quatfaG_Tt0G5_0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMd, &_s17RealityFoundation23SetEntityPropertyActionVySo10simd_quatfaGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(__dst);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<simd_quatf> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySo10simd_quatfaGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0Vys5SIMD4VySfGG_Tt0G5_0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD4VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(__dst);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD4<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD4VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0Vys5SIMD3VySfGG_Tt0G5_0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySo10simd_quatfaG_Tt1B5Tm(__dst, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD3VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(__dst);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v2 = __dst[33];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    v5 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD3<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD3VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v3, v2);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0Vys5SIMD2VySfGG_Tt0G5_0(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMd, &_s17RealityFoundation23SetEntityPropertyActionVys5SIMD2VySfGGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(v13);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<SIMD2<Float>> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVys5SIMD2VySfGGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA017SetEntityPropertycD0VySdG_Tt0G5_0(uint64_t a1)
{
  v1 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v1;
  v13[14] = *(a1 + 224);
  v14 = *(a1 + 240);
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v3 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v3;
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v5 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v5;
  v6 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v6;
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  result = _s17RealityFoundation21ActionHandlerProtocolPAAE06actionD0yxSgAA0C5EventVy0C4TypeQzGFZAA017SetEntityPropertycD0VySiG_Tt1B5Tm(v13, &_s17RealityFoundation23SetEntityPropertyActionVySdGMd, &_s17RealityFoundation23SetEntityPropertyActionVySdGMR, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
  if ((result & 1) == 0)
  {
    specialized SetEntityPropertyActionHandler.setKeyValueOnEntity(event:)(v13);
    if (one-time initialization token for actionHandlers != -1)
    {
      swift_once();
    }

    v9 = v14;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    v12 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SetEntityPropertyActionHandler<Double> and conformance SetEntityPropertyActionHandler<A>, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMd, &_s17RealityFoundation30SetEntityPropertyActionHandlerVySdGMR);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v10, v9);
    return swift_endAccess();
  }

  return result;
}

uint64_t _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA013PlayAnimationcD0V_Tt0G5_0(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return _s17RealityFoundation21ActionHandlerProtocolPAAE9subscribeyy0A3Kit8__EngineCSgFZyAA0C5EventVy0C4TypeQzGcfU_AA013PlayAnimationcD0V_Tt0B5Tm(v10);
}

uint64_t sub_1C1364958@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetClockMode();
  *a2 = result;
  return result;
}

uint64_t sub_1C13649C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetUseMetal();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364A18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetForExportOnly();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364A70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetEnableVideoSupport();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364AC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetEnablePreloadMXIAssets();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364B20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetUseRealityIO();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364B78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetUsePhysicsSceneSystem();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364BD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetAssetRuntimeSizeLimitForResourceShareClient();
  *a2 = result;
  return result;
}

id sub_1C1364C28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetDevice();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364C60(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_unknownObjectRetain();
  specialized __Engine.Configuration.device.setter(v2, MEMORY[0x1E6998910]);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1364CB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetIsHostingSharedAudioSimulation();
  *a2 = result;
  return result;
}

id sub_1C1364D10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetEngineQueue();
  *a2 = result;
  return result;
}

void sub_1C1364D48(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  specialized __Engine.Configuration.device.setter(v1, MEMORY[0x1E6998928]);
}

uint64_t sub_1C1364DAC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetServicesToCreate();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364E14@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetServicesToUpdate();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364E7C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetStartupOptions();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364EE4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetRenderFlags();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364F4C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetRenderThreadPriority();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364FA4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEngineConfigurationGetRenderFrameOverlap();
  *a2 = result;
  return result;
}

uint64_t sub_1C1364FFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1C136504C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1C1365094(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_1C13650D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 24);
  result = REEngineGetAcceptingInput();
  *a2 = result;
  return result;
}

void sub_1C1365108(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 24);
  JUMPOUT(0x1C68F93A0);
}

uint64_t sub_1C1365134(uint64_t *a1)
{
  v1 = *a1;

  return __Engine.Configuration.createServices.setter(v2);
}

double sub_1C1365178(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1C13651A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1C13651BC(_OWORD *a1)
{
  result = 0.0;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1C13651E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C1365200()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1C1365238(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1C1365260()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136529C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t _s17RealityFoundation14FromToByActionVys5SIMD4VySfGGSgWOg_0(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

double sub_1C1365300(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[8] = 0u;
  a1[9] = xmmword_1C1887610;
  return result;
}

uint64_t sub_1C1365334()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 208, 15);
}

uint64_t sub_1C13654D4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a2[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1C1365518@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    result = *(*(a1 + 48) + 16);
    if (result)
    {
      v3 = a2;
      result = RETimelineDefinitionGetAnimationLayer();
      a2 = v3;
    }

    *a2 = result;
  }

  else
  {
    result = *(a1 + 36);
    *a2 = result;
  }

  return result;
}

_DWORD *sub_1C136556C(_DWORD *result, uint64_t a2)
{
  *(a2 + 36) = *result;
  *(a2 + 40) = 0;
  return result;
}

double sub_1C136557C@<D0>(uint64_t a1@<X8>)
{
  OrbitAnimation.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_1C13655C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 42) == 1)
  {
    result = *(*(a1 + 48) + 16);
    if (result)
    {
      v3 = a2;
      result = RETimelineDefinitionGetFillMode();
      a2 = v3;
    }

    *a2 = result;
  }

  else
  {
    result = *(a1 + 41);
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C1365628@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 43);
  if (result == 2)
  {
    result = *(*(a1 + 48) + 16);
    if (result)
    {
      v4 = a2;
      result = RETimelineDefinitionIsAdditive();
      a2 = v4;
    }
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1365688(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 56) = *result;
  *(a2 + 64) = v2;
  return result;
}

uint64_t sub_1C13656A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 72) = *result;
  *(a2 + 80) = v2;
  return result;
}

uint64_t sub_1C13656C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 88) = *result;
  *(a2 + 96) = v2;
  return result;
}

void *sub_1C13656DC(void *result, uint64_t a2)
{
  *(a2 + 104) = *result;
  *(a2 + 112) = 0;
  return result;
}

void *sub_1C13656F0(void *result, uint64_t a2)
{
  *(a2 + 120) = *result;
  *(a2 + 128) = 0;
  return result;
}

_DWORD *sub_1C1365704(_DWORD *result, uint64_t a2)
{
  *(a2 + 132) = *result;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_1C1365714@<X0>(_BYTE *a1@<X8>)
{
  result = OrbitAnimation.repeatMode.getter(&v3);
  *a1 = v3;
  return result;
}

double sub_1C136575C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 216))
  {
    if (*(*(a1 + 48) + 16))
    {
      RETimelineDefinitionGetDuration();
      *a2 = result;
    }

    else
    {
      result = 0.0;
      *a2 = 0.0;
    }
  }

  else
  {
    result = *(a1 + 208);
    *a2 = result;
  }

  return result;
}

void *sub_1C13657B8(void *result, uint64_t a2)
{
  *(a2 + 208) = *result;
  *(a2 + 216) = 0;
  return result;
}

double sub_1C13657C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 240))
  {
    if (*(*(a1 + 48) + 16))
    {
      RETimelineDefinitionGetAxis();
      *a2 = v3;
    }

    else
    {
      *&v3 = 0x3F80000000000000;
      *a2 = *&zmmword_1C1887630[16];
    }
  }

  else
  {
    v3 = *(a1 + 224);
    *a2 = v3;
  }

  return *&v3;
}

void *sub_1C1365830(void *result, uint64_t a2)
{
  v2 = result[1];
  *(a2 + 224) = *result;
  *(a2 + 232) = v2;
  *(a2 + 240) = 0;
  return result;
}

void sub_1C1365840(_OWORD *a1@<X8>)
{
  *&v2 = OrbitAnimation.startTransform.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

__n128 sub_1C1365870(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(a2 + 256) = *a1;
  *(a2 + 272) = v3;
  *(a2 + 288) = v5;
  *(a2 + 296) = v4;
  *(a2 + 304) = 0;
  return result;
}

uint64_t sub_1C1365888@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 305);
  if (result == 2)
  {
    if (*(*(a1 + 48) + 16))
    {
      v4 = a2;
      result = RETimelineDefinitionGetSpinClockwise();
      a2 = v4;
    }

    else
    {
      result = 1;
    }
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_1C13658EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 306);
  if (result == 2)
  {
    result = *(*(a1 + 48) + 16);
    if (result)
    {
      v4 = a2;
      result = RETimelineDefinitionGetOrientToPath();
      a2 = v4;
    }
  }

  *a2 = result & 1;
  return result;
}

float sub_1C1365948@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  if (*(a1 + 312))
  {
    if (*(*(a1 + 48) + 16))
    {
      RETimelineDefinitionGetRotationCount();
      *a2 = result;
    }

    else
    {
      result = 1.0;
      *a2 = 1.0;
    }
  }

  else
  {
    result = *(a1 + 308);
    *a2 = result;
  }

  return result;
}

_DWORD *sub_1C13659A4(_DWORD *result, uint64_t a2)
{
  *(a2 + 308) = *result;
  *(a2 + 312) = 0;
  return result;
}

uint64_t sub_1C13659B4@<X0>(uint64_t *a1@<X8>)
{
  result = SampledAnimation.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1C13659F0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C13659FC@<X0>(_DWORD *a1@<X8>)
{
  result = SampledAnimation.blendLayer.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1365A70@<X0>(_BYTE *a1@<X8>)
{
  result = SampledAnimation.fillMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C1365AF0@<X0>(_BYTE *a1@<X8>)
{
  result = SampledAnimation.additive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1365B54@<X0>(uint64_t a1@<X8>)
{
  result = SampledAnimation.trimStart.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1365BC4@<X0>(uint64_t a1@<X8>)
{
  result = SampledAnimation.trimEnd.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1365C34@<X0>(uint64_t a1@<X8>)
{
  result = SampledAnimation.trimDuration.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1365DC4@<X0>(_BYTE *a1@<X8>)
{
  result = SampledAnimation.repeatMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C1365E44@<X0>(_BYTE *a1@<X8>)
{
  result = SampledAnimation.tweenMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C1365FF4@<X0>(uint64_t *a1@<X8>)
{
  result = SampledAnimation<>.frames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1366030@<X0>(uint64_t *a1@<X8>)
{
  result = SampledAnimation<>.frames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C136606C@<X0>(uint64_t *a1@<X8>)
{
  result = SampledAnimation<>.frames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C13660A8@<X0>(uint64_t *a1@<X8>)
{
  result = SampledAnimation<>.frames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C13660E4@<X0>(uint64_t *a1@<X8>)
{
  result = SampledAnimation<>.frames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1366120@<X0>(uint64_t *a1@<X8>)
{
  result = SampledAnimation<>.frames.getter();
  *a1 = result;
  return result;
}

char *sub_1C136615C@<X0>(char **a1@<X8>)
{
  result = SampledAnimation<>.frames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1366198@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 272);
  if (result == 2)
  {
    if (*(*(a1 + 48) + 16))
    {
      v4 = a2;
      result = RETimelineDefinitionGetSkeletalPoseScaleChannelMask();
      a2 = v4;
    }

    else
    {
      result = 1;
    }
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_1C136620C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 273);
  if (result == 2)
  {
    if (*(*(a1 + 48) + 16))
    {
      v4 = a2;
      result = RETimelineDefinitionGetSkeletalPoseRotationChannelMask();
      a2 = v4;
    }

    else
    {
      result = 1;
    }
  }

  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1366280@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 274);
  if (result == 2)
  {
    if (*(*(a1 + 48) + 16))
    {
      v4 = a2;
      result = RETimelineDefinitionGetSkeletalPoseTranslationChannelMask();
      a2 = v4;
    }

    else
    {
      result = 1;
    }
  }

  *a2 = result & 1;
  return result;
}

char *sub_1C13662F4@<X0>(char **a1@<X8>)
{
  result = SampledAnimation<>.frames.getter();
  *a1 = result;
  return result;
}

char *sub_1C1366334@<X0>(char **a1@<X8>)
{
  result = SampledAnimation<>.jointNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1366360(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 264);

  *(a2 + 264) = v3;
  return result;
}

char *sub_1C13663B4@<X0>(char **a1@<X8>)
{
  result = SampledAnimation<>.frames.getter();
  *a1 = result;
  return result;
}

char *sub_1C13663F0@<X0>(char **a1@<X8>)
{
  result = SampledAnimation<>.weightNames.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C136641C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 280);

  *(a2 + 280) = v3;
  return result;
}

unsigned __int8 *sub_1C13665E4(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (*(a2 + 16) == 1 && v2 == 3)
  {
    LOBYTE(v2) = 2;
  }

  *(a2 + 16) = v2;
  return result;
}

__n128 sub_1C1366608@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasVFX.vfxComponent.getter(v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1C136665C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v3;
  v9 = *(a1 + 64);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v5 = *a2;
  outlined init with copy of VFXComponent?(v8, v7);
  return HasVFX.vfxComponent.setter(a1);
}

__n128 sub_1C13666C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C13666DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a1[2];
  v7 = a1[3];
  result = __RKMaterialParameterBlock.buildParametersDictionaryFromCurrentState()();
  *a2 = result;
  return result;
}

uint64_t sub_1C1366728(uint64_t *a1)
{
  v1 = *a1;

  return __RKMaterialParameterBlock.parameters.setter(v2);
}

uint64_t sub_1C1366770@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  *(a2 + 8) = v2;
  return result;
}

uint64_t *sub_1C1366784(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  *(a2 + 33) = 0;
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1C13667B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*(*result + 16))
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 48);
    v7 = *(v2 + 64);
    v6[0] = v3;
    v6[1] = v4;
    *(a2 + 32) = v7;
    *a2 = *(v2 + 32);
    *(a2 + 16) = v4;
    return outlined init with copy of HoverEffectComponent.HoverEffect(v6, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1C1366830@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double *sub_1C136683C(double *result, double *a2)
{
  v2 = *result;
  if (*result > 10.0)
  {
    v2 = 10.0;
  }

  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

double sub_1C1366860@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double *sub_1C136686C(double *result, uint64_t a2)
{
  v2 = *result;
  if (*result > 10.0)
  {
    v2 = 10.0;
  }

  if (v2 <= 0.0)
  {
    v2 = 0.0;
  }

  *(a2 + 8) = v2;
  return result;
}

_DWORD *sub_1C13668A8@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *result == 1;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C13668E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1366918()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C136695C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C13669AC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C13669F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1366A30()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1366A80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void _s17RealityFoundation23PhysicallyBasedMaterialV9RoughnessVs25ExpressibleByFloatLiteralAAsAFP05floatJ0x0iJ4TypeQz_tcfCTW_0(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  outlined consume of MaterialParameters.Texture?(0, 0);
  *a2 = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a2 + 32) = 0;
}

float sub_1C1366B50@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

float sub_1C1366B5C(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

uint64_t sub_1C1366B80@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 12);
  v3 = *(result + 16);
  if (v3)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

int *sub_1C1366B9C(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(a2 + 12) = v2;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1C1366BB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 20);
  v3 = *(result + 24);
  if (v3)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

int *sub_1C1366BD4(int *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 4);
  if (v3)
  {
    v2 = 0;
  }

  *(a2 + 20) = v2;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1C1366BF0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1366C28()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1366C68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10RealityKit21__RKChangeSceneAction_rootEntity;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_1C1366CC8(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  *&v4 = HasTransform.transform.getter();
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
}

__n128 sub_1C1366D30(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1C1366D3C(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  *&v4 = HasTransform.scale.getter();
  *a2 = v4;
}

void sub_1C1366D9C(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  *&v4 = HasTransform.position.getter();
  *a2 = v4;
}

void sub_1C1366DFC(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  *&v4 = HasTransform.orientation.getter();
  *a2 = v4;
}

uint64_t sub_1C1366EF4@<X0>(uint64_t *a1@<X8>)
{
  result = ActionAnimation.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1C1366F30(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C1366F3C@<X0>(_DWORD *a1@<X8>)
{
  result = ActionAnimation.blendLayer.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C1366FB0@<X0>(_BYTE *a1@<X8>)
{
  result = ActionAnimation.fillMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C1367030@<X0>(uint64_t a1@<X8>)
{
  result = ActionAnimation.trimStart.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C13670A0@<X0>(uint64_t a1@<X8>)
{
  result = ActionAnimation.trimEnd.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1367110@<X0>(uint64_t a1@<X8>)
{
  result = ActionAnimation.trimDuration.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C13672A0@<X0>(_BYTE *a1@<X8>)
{
  result = ActionAnimation.repeatMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C1367320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for ActionAnimation();
  return ActionAnimation.action.getter(v7, a3);
}

uint64_t sub_1C136736C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for ActionAnimation();
  result = ActionAnimation.eventDefinitions.getter(v7);
  *a3 = result;
  return result;
}

uint64_t sub_1C13673B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13673F0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1367430()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1367468()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1C13674FC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 56);
  *a2 = result;
  return result;
}

double sub_1C1367508(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 56) = *a1;
  *(a2 + 33) = 1;
  return result;
}

float sub_1C136751C@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_1C1367554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1C13675A4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13675DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 37, 7);
}

uint64_t sub_1C1367614()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1C136769C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012SpatialAudioD0V_Tt0B5(*a1, v7);
  v3 = v11;
  a2[4] = v10;
  a2[5] = v3;
  a2[6] = v12[0];
  *(a2 + 105) = *(v12 + 9);
  v4 = v7[1];
  *a2 = v7[0];
  a2[1] = v4;
  result = *&v8;
  v6 = v9;
  a2[2] = v8;
  a2[3] = v6;
  return result;
}

uint64_t sub_1C13676FC(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[5];
  v6[4] = a1[4];
  v6[5] = v2;
  v7[0] = a1[6];
  *(v7 + 9) = *(a1 + 105);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012SpatialAudioD0V_TtB5Tf4ndn_n(v6, *a2);
}

double sub_1C136774C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 48);
  *a2 = result;
  return result;
}

double sub_1C1367758(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 48) = *a1;
  return result;
}

uint64_t sub_1C136776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C136782C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C13678E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DispatchTime();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1367994(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DispatchTime();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1367A38()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C1367A80()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1367AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1367B38(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVSgtMd, &_sSS_10Foundation3URLVSgtMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1C1367BC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1C1367C10(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return VideoPlaybackController.audioInputMode.setter(&v4);
}

double sub_1C1367C70@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_1C1367C80(void *a1, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 32) = *a1;
  v3 = *(*(v2 + 16) + 16);
  return REVideoAssetSetReverbSendLevelDecibels();
}

uint64_t sub_1C1367CA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of ManipulationComponent(a1, v5);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of ManipulationComponent(v5);
  *a2 = Strong;
  return result;
}

uint64_t sub_1C1367D10(uint64_t *a1)
{
  v1 = *a1;

  return ManipulationComponent.HitTarget.redirectedEntity.setter(v2);
}

uint64_t sub_1C1367D5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

float sub_1C1367DAC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_1C1367DF4(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1C1367E40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 36);
  return result;
}

uint64_t sub_1C1367E88(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 36) = v2;
  return result;
}

uint64_t sub_1C1367ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 37);
  return result;
}

uint64_t sub_1C1367F14(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 37) = v2;
  return result;
}

uint64_t sub_1C1367F58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 38);
  return result;
}

uint64_t sub_1C1367FA0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 38) = v2;
  return result;
}

_BYTE *_s17RealityFoundation15ReverbComponentV0A3Kit0D0AadEP6__load4from6offsetAdE_pSV_SitFZTW_0@<X0>(_BYTE *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *a4 = *result;
  return result;
}

uint64_t static Component.__load(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return static Component.__load(from:)(a1, a2, a3);
}

{
  return (*(*(a2 - 8) + 16))(a3, a1, a2);
}

uint64_t _s17RealityFoundation23PreviewSupportComponentV0A3Kit0E0AadEP6__load4from6offsetAdE_pSV_SitFZTW_0@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  *a4 = *a1;
}

float _s17RealityFoundation41EnvironmentLightingConfigurationComponentV0A3Kit0F0AadEP6__load4fromxSV_tFZTW_0@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float _s17RealityFoundation41EnvironmentLightingConfigurationComponentV0A3Kit0F0AadEP6__load4from6offsetAdE_pSV_SitFZTW_0@<S0>(float *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  result = *a1;
  *a4 = *a1;
  return result;
}

uint64_t protocol witness for static Component.__load(from:offset:) in conformance __SkyboxComponent@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  *a4 = *a1;
}

double _s17RealityFoundation21ChannelAudioComponentV0A3Kit0E0AadEP6__load4fromxSV_tFZTW_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = result;
  *(a2 + 24) = v3;
  return result;
}

float _s17RealityFoundation27OrthographicCameraComponentV0A3Kit0E0AadEP6__load4fromxSV_tFZTW_0@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 8);
  v3 = *(a1 + 12);
  *a2 = *a1;
  *(a2 + 8) = result;
  *(a2 + 12) = v3;
  return result;
}

uint64_t sub_1C13681D0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C1368220()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1368268()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C13682C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 15);
}

uint64_t sub_1C1368300()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1368348()
{
  swift_weakDestroy();
  v1 = v0[4];

  v2 = v0[6];

  if (v0[14])
  {
    swift_weakDestroy();
    v3 = v0[14];

    v4 = v0[16];
  }

  return MEMORY[0x1EEE6BDD0](v0, 176, 15);
}

uint64_t sub_1C13683C0()
{
  v1 = v0[4];

  outlined consume of ImagePresentationComponent.DataSource(v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11]);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C136840C()
{
  v1 = v0[8];
  swift_unknownObjectRelease();
  v2 = v0[11];

  v3 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 149, 15);
}

uint64_t sub_1C1368464()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 248);

  v3 = *(v0 + 528);

  v4 = *(v0 + 640);
  if (v4)
  {

    v5 = *(v0 + 864);
  }

  return MEMORY[0x1EEE6BDD0](v0, 914, 15);
}

uint64_t sub_1C13684F8()
{
  v1 = v0[2];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 277, 15);
}

uint64_t sub_1C1368540()
{
  v1 = v0[5];
  outlined consume of VirtualEnvironmentProbeComponent.Source(v0[2], v0[3], v0[4]);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C13685BC()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C13685FC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1368644()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 49, 15);
}

uint64_t sub_1C136867C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C13686E4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C1368768()
{

  return MEMORY[0x1EEE6BDD0](v0, 44, 7);
}

uint64_t sub_1C13687A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 113, 15);
}

uint64_t sub_1C13687D8()
{
  if (*(v0 + 40) >= 2uLL)
  {
    v1 = *(v0 + 48);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C136881C()
{
  v1 = *(v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 188, 15);
}

uint64_t sub_1C1368854()
{
  v1 = *(v0 + 32);
  outlined consume of ImageBasedLightComponent.Source(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 45, 7);
}

uint64_t sub_1C1368894@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C13688E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  specialized __RKActiveSceneManager.activeScene.setter(v4);
}

uint64_t sub_1C1368924@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = HasModel.blendWeights.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C1368950(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return HasModel.blendWeights.setter(v4);
}

__n128 sub_1C1368988(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C13689A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1C13689E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1368A2C()
{
  v1 = *(v0 + 24);

  outlined consume of BindTarget(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C1368B14()
{
  v1 = type metadata accessor for AnalyticsManager.PhotogrammetrySessionReconstructionResultEvent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v1 + 20);
  type metadata accessor for PhotogrammetrySession.Request(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v0 + v9 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 16, v2 | 7);
}

uint64_t sub_1C1368C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C1368D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C1368E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PhotogrammetrySession.Request(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C1368F1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PhotogrammetrySession.Request(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C136903C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotogrammetrySession.Request(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PhotogrammetrySession.Request();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1C136917C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PhotogrammetrySession.Request(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for PhotogrammetrySession.Request();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1C13692C8()
{
  v17 = type metadata accessor for URL();
  v1 = *(v17 - 8);
  v18 = *(v1 + 80);
  v2 = (v18 + 32) & ~v18;
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for PhotogrammetrySession.Request(0) - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v15 = *(v4 + 64);
  v16 = type metadata accessor for UUID();
  v7 = *(v16 - 8);
  v8 = *(v7 + 80);
  v14 = *(v7 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v1 + 8);
  v10(v0 + v2, v17);
  v11 = *(v0 + v3);

  if (!swift_getEnumCaseMultiPayload())
  {
    v10(v0 + v6, v17);
  }

  v12 = (v6 + v15 + v8) & ~v8;
  (*(v7 + 8))(v0 + v12, v16);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v14, v18 | v5 | v8 | 7);
}

uint64_t sub_1C13694D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C13695B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C13695F0()
{
  v1 = type metadata accessor for PhotogrammetrySession.Output();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C13696B4()
{
  v1 = *(type metadata accessor for AnalyticsManager.PhotogrammetrySessionInitEvent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1369794()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1369828()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS12ContinuationVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for PhotogrammetrySession.Output(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = (v0 + v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_24;
      }

LABEL_5:
      type metadata accessor for PhotogrammetrySession.Request(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_24;
    }

    type metadata accessor for PhotogrammetrySession.Request(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v12 = type metadata accessor for URL();
      (*(*(v12 - 8) + 8))(v0 + v8, v12);
    }

    v10 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMd, &_s17RealityFoundation21PhotogrammetrySessionC7RequestO_AC6ResultOtMR) + 48));
    type metadata accessor for PhotogrammetrySession.Result(0);
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v20 = *v10;
        goto LABEL_23;
      }

      if (v13 != 4)
      {
        goto LABEL_24;
      }

      v17 = *v10;

      v18 = v10[1];

LABEL_22:
      v19 = v10[2];
LABEL_23:

      goto LABEL_24;
    }

    if (!v13)
    {
LABEL_18:
      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 8))(v10, v16);
      goto LABEL_24;
    }

    if (v13 == 1)
    {
      v14 = *v10;
    }
  }

  else
  {
    type metadata accessor for PhotogrammetrySession.Request(0);
    if (!swift_getEnumCaseMultiPayload())
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 8))(v0 + v8, v15);
    }
  }

LABEL_24:

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_1C1369B3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C1369BB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMd, &_sScS8IteratorVy17RealityFoundation21PhotogrammetrySessionC6OutputO_GMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C1369C4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t *sub_1C1369C90(uint64_t *result, _DWORD *a2)
{
  v2 = *result;
  if (*result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

float sub_1C1369CBC@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

float sub_1C1369CC8(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 4) = *a1;
  return result;
}

double sub_1C1369CD4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  MeshBufferContainer.positions.getter(*(a1 + a2 - 16), *(a1 + a2 - 8), v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_1C1369D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *(a1 + 32);
  v8 = *(a1 + 64);
  v12[3] = *(a1 + 48);
  v12[4] = v8;
  v13 = *(a1 + 80);
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  v12[2] = v7;
  outlined init with copy of [String : String](v12, v11, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  return MeshBufferContainer.positions.setter(a1, v5, v6);
}

__n128 sub_1C1369DD0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1C1369F0C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  MeshDescriptor.subscript.getter(*(a1 + a2 - 16), *(a1 + a2 - 8), v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_1C1369F94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1369FCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136A3D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136A410@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static RealityFusionSession.sharedSession;
}

id sub_1C136A464@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1C136A4C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1C136A508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return RealityFusionSession.sharedCount.didset();
}

uint64_t sub_1C136A608()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if ((*(v0 + 80) - 1) >= 2)
  {
  }

  outlined consume of DirectUniformsState(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  }

  v4 = *(v0 + 184);

  if (*(v0 + 232))
  {

    v5 = *(v0 + 248);
  }

  if (*(v0 + 280))
  {

    v6 = *(v0 + 296);
  }

  if ((*(v0 + 328) - 1) >= 3)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 370, 7);
}

uint64_t sub_1C136A6E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = &type metadata for CustomMaterial;
  a2[4] = &protocol witness table for CustomMaterial;
  v4 = swift_allocObject();
  *a2 = v4;

  return outlined init with copy of CustomMaterial(a1, v4 + 16);
}

uint64_t sub_1C136A74C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  outlined consume of DirectUniformsState(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

__n128 sub_1C136A7AC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

int8x16_t sub_1C136A7B8(float64x2_t *a1, int8x16_t *a2)
{
  v2 = vdupq_n_s64(0x40A0000000000000uLL);
  result = vbslq_s8(vcgtq_f64(*a1, v2), v2, *a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C136A7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1C136A8AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_1C136A974@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1C136A9C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_weakAssign();
}

double sub_1C136AA0C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 72);
  REAudioPlayerComponentGetDecibelGainForToken();
  result = v6;
  *a2 = result;
  return result;
}

__n128 _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentType10rootEntity8matchingAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgAA0K0CSgSSSgtAA0N0RzlFAD17VideoPlayerEventsO0Q26ReceiverEndpointDidChangedVSgSo07REVideorqtuwN0VcfU40__0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  return result;
}

uint64_t sub_1C136AACC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136AB04()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C136ABAC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C136AC88()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1C136AD38()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C136AD88()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C136ADD8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];

  v7 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v8 = v0[9];

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C136AECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C136AF88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1C136B038@<Q0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  result = a1[3];
  *a2 = result.n128_u64[0];
  return result;
}

float sub_1C136B044(void *a1, uint64_t a2)
{
  *&v2 = *a1;
  *(&v2 + 1) = *(a2 + 56);
  *(a2 + 48) = v2;
  return *&v2;
}

__n128 sub_1C136B05C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[3];
  *a2 = result;
  return result;
}

__n128 sub_1C136B068(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[3] = *a1;
  return result;
}

uint64_t sub_1C136B074()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C136B0C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 97, 7);
}

float sub_1C136B138@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

float sub_1C136B144(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

uint64_t sub_1C136B17C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1C136B1F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void *sub_1C136B24C(void *result, uint64_t a2)
{
  *(a2 + 48) = *result;
  *(a2 + 56) = 0;
  return result;
}

double sub_1C136B25C@<D0>(uint64_t a1@<X8>)
{
  MeshResource.Part.triangleIndices.getter(v5);
  v2 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1C136B2B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v7[3] = *(a1 + 48);
  v7[4] = v3;
  v8 = *(a1 + 80);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = v2;
  outlined init with copy of [String : String](v7, v6, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMd, &_s17RealityFoundation10MeshBufferVys6UInt32VGSgMR);
  return MeshResource.Part.triangleIndices.setter(a1);
}

double sub_1C136B32C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  MeshResource.Part.subscript.getter(*(a1 + a2 - 16), *(a1 + a2 - 8), v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

__n128 sub_1C136B3A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C136B3B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1C136B3C0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 32);

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

__n128 sub_1C136B404@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  MeshResource.Part.jointInfluences.getter(a1, v8);
  v3 = v9[0];
  *(a2 + 128) = v8[8];
  *(a2 + 144) = v3;
  *(a2 + 153) = *(v9 + 9);
  v4 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v4;
  v5 = v8[7];
  *(a2 + 96) = v8[6];
  *(a2 + 112) = v5;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1C136B468(_OWORD *a1)
{
  v2 = a1[9];
  v9[8] = a1[8];
  v10[0] = v2;
  *(v10 + 9) = *(a1 + 153);
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[7];
  v9[6] = a1[6];
  v9[7] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  outlined init with copy of [String : String](v9, &v8, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMd, &_s10RealityKit12MeshResourceC0A10FoundationE15JointInfluencesVSgMR);
  return MeshResource.Part.jointInfluences.setter(a1);
}

uint64_t sub_1C136B4F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v2;
}

uint64_t sub_1C136B540()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136B578()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C136B5C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C136B600()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C136B678()
{
  outlined consume of Result<MeshResource, Error>(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C136B6B4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t _s10RealityKit6EntityC15ChildCollectionVSlAASl5countSivgTW_0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  ChildCount = REEntityGetChildCount();

  return specialized Collection.distance(from:to:)(0, ChildCount, v1);
}

uint64_t sub_1C136B754@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = Entity.ChildCollection.subscript.getter(*a2);
  *a3 = result;
  return result;
}

float sub_1C136B7A8@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasDirectionalLight.light.getter(&v6);
  result = v7;
  v5 = v8;
  *a2 = v6;
  *(a2 + 8) = result;
  *(a2 + 12) = v5;
  return result;
}

__n128 sub_1C136B804(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1C136B810@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasDirectionalLight.shadow.getter(&v7);
  v4 = v8;
  v5 = v9;
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1C136B85C(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *a2;
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  return HasDirectionalLight.shadow.setter(&v6);
}

uint64_t sub_1C136B8B4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static RKARSystemCore.generateDecimatedMeshes;
  return result;
}

uint64_t sub_1C136B900(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static RKARSystemCore.generateDecimatedMeshes = v1;
  return result;
}

uint64_t sub_1C136B960@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 40) == 1)
  {
    v4 = v3[2];
    v5 = v3[3];
    result = REIkParametersComponentSolverGetMaxIterations();
    v6 = result;
  }

  else
  {
    v6 = v3[4];
  }

  *a2 = v6;
  return result;
}

void *sub_1C136B9A8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 32) = *result;
  *(v2 + 40) = 0;
  return result;
}

uint64_t sub_1C136B9BC@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 48))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    result = REIkParametersComponentSolverGetRetargetingGain();
  }

  else
  {
    v6 = *(v3 + 44);
  }

  *a2 = v6;
  return result;
}

_DWORD *sub_1C136B9FC(_DWORD *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 44) = *result;
  *(v2 + 48) = 0;
  return result;
}

void *sub_1C136BA4C(void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = *a2;
  *(v3 + 48) = *result;
  *(v3 + 56) = v2;
  *(v3 + 64) = 0;
  return result;
}

uint64_t sub_1C136BA60@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 96))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    result = REIkParametersComponentJointGetRotationStiffness();
  }

  else
  {
    v7 = *(v3 + 80);
  }

  *a2 = v7;
  return result;
}

void *sub_1C136BAAC(void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = *a2;
  *(v3 + 80) = *result;
  *(v3 + 88) = v2;
  *(v3 + 96) = 0;
  return result;
}

void sub_1C136BAC0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = IKComponent.Constraint.target.getter();
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
}

__n128 sub_1C136BAF0(uint64_t a1, uint64_t *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *a2;
  *(v6 + 48) = *a1;
  *(v6 + 64) = v3;
  *(v6 + 80) = v5;
  *(v6 + 88) = v4;
  *(v6 + 96) = 0;
  return result;
}

__n128 sub_1C136BB10(uint64_t a1, uint64_t *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *a2;
  *(v6 + 112) = *a1;
  *(v6 + 128) = v3;
  *(v6 + 144) = v5;
  *(v6 + 152) = v4;
  *(v6 + 160) = 0;
  return result;
}

uint64_t sub_1C136BB2C@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *result;
  if (*(*result + 192))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    result = REIkParametersComponentTaskGetLookAtTarget();
  }

  else
  {
    v7 = *(v3 + 176);
  }

  *a2 = v7;
  return result;
}

void *sub_1C136BB78(void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = *a2;
  *(v3 + 176) = *result;
  *(v3 + 184) = v2;
  *(v3 + 192) = 0;
  return result;
}

void *sub_1C136BB90(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 196) = *result;
  *(v2 + 204) = 0;
  return result;
}

uint64_t *sub_1C136BDE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v6 = *a1;
  result = Scene.AnchorCollection.subscript.getter(*a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C136BE24(uint64_t *a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  v4 = *a1;

  return Scene.AnchorCollection.subscript.setter(v5, v6, v3);
}

uint64_t sub_1C136BE80@<X0>(_BYTE *a1@<X8>)
{
  result = GroundingShadowComponent.fadeBehaviorNearPhysicalObjects.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C136BEBC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = &type metadata for GroundingShadowComponent.FadeBehaviorNearPhysicalObjects;
  v4[0] = v2;
  return outlined assign with take of Any?(v4, a2 + 8);
}

float sub_1C136BEF8@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  return result;
}

float sub_1C136BF04(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 40) = *a1;
  return result;
}

uint64_t sub_1C136BF2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1C136BF74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1C136BFB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C136C014()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136C04C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C136C0A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C136C0F4()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  if (v0[4])
  {
    v2 = v0[5];
  }

  if (v0[6])
  {
    v3 = v0[7];
  }

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C136C15C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C136C1B4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C136C28C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C136C368()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v3 = v0[9];

  v4 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C136C3C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C136C418()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C136C490()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136C4C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136C500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1C136C550@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1C136C5AC(uint64_t result, uint64_t a2)
{
  if (*(*result + 16) != *(*a2 + 16))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C136C5D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Scene.__interactionService.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C136C600(_OWORD *a1, uint64_t a2)
{
  v2 = *(*a2 + 208);
  *(*a2 + 208) = *a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C136C648@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 224);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C136C698(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = swift_unknownObjectRetain();
  return Scene.synchronizationService.setter(v5, v3);
}

uint64_t sub_1C136C6D4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 15);
}

uint64_t sub_1C136C798()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136C7D0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C136C810()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[12];

  v5 = v0[14];

  v6 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1C136C870()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136C8A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C136C984()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136C9BC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1C136CA94()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136CACC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C136CB1C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C136CB78()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

void _s17RealityFoundation29SetEntityEnabledActionHandlerVAA0fG8ProtocolA2aDP13actionStarted5eventyAA0F5EventVy0F4TypeQzG_tFTW_0(uint64_t a1)
{
  v1 = *(a1 + 176);
  v7[10] = *(a1 + 160);
  v7[11] = v1;
  v7[12] = *(a1 + 192);
  v8 = *(a1 + 208);
  v2 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v2;
  v3 = *(a1 + 144);
  v7[8] = *(a1 + 128);
  v7[9] = v3;
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v5 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v5;
  v6 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v6;
  specialized SetEntityEnabledActionHandler.setEntityEnabled(event:)(v7);
}

uint64_t sub_1C136CBFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136CC44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136CC7C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    outlined consume of BindTarget(*(v0 + 128), *(v0 + 136), v3);
  }

  v4 = *(v0 + 160);

  return MEMORY[0x1EEE6BDD0](v0, 168, 7);
}

__n128 sub_1C136CD98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1C136CDAC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = *(a1 + 6);
  *a2 = DirectionalLightComponent.lightColor.getter();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1C136CDFC(CGFloat *a1, id *a2)
{
  GenericRGB = CGColorCreateGenericRGB(*a1, a1[1], a1[2], a1[3]);

  *a2 = GenericRGB;
}

void sub_1C136CE48(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 12);
  *a2 = DirectionalLightComponent.lightColor.getter();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1C136CE98(CGFloat *a1, id *a2)
{
  GenericRGB = CGColorCreateGenericRGB(*a1, a1[1], a1[2], a1[3]);

  *a2 = GenericRGB;
}

uint64_t sub_1C136CEDC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if ((*(v0 + 80) - 1) >= 2)
  {
  }

  outlined consume of DirectUniformsState(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  if (*(v0 + 168))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  }

  v4 = *(v0 + 184);

  if (*(v0 + 232))
  {

    v5 = *(v0 + 248);
  }

  if (*(v0 + 280))
  {

    v6 = *(v0 + 296);
  }

  if ((*(v0 + 328) - 1) >= 3)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 370, 7);
}

uint64_t sub_1C136D000(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
}

void *sub_1C136D048(void *result, void *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  return result;
}

uint64_t sub_1C136D17C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  v5 = *(v0 + 152);

  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6BDD0](v0, 174, 7);
}

uint64_t sub_1C136D2D8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 155, 7);
}

uint64_t sub_1C136D410()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v4 = *(v0 + 112);

  v5 = *(v0 + 144);

  return MEMORY[0x1EEE6BDD0](v0, 162, 7);
}

uint64_t sub_1C136D86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  *(a2 + 8) = v3;
}

uint64_t sub_1C136D880(__int16 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = *(a2 + 16);

  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

double sub_1C136D8E4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation019CharacterControllerD0V_Tt0B5(*a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v6[0];
  result = *(v6 + 9);
  *(a2 + 41) = *(v6 + 9);
  return result;
}

uint64_t sub_1C136D934(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation019CharacterControllerD0V_TtB5Tf4ndn_n(v4, *a2);
}

double sub_1C136D974@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation024CharacterControllerStateD0V_Tt0B5(*a1, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

double sub_1C136DA08@<D0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a1;
  v6 = a1[1];
  REDecomposeMatrix();
  result = 0.0;
  *a2 = 0u;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C136DA88(float32x4_t *a1, uint64_t a2)
{
  v8 = *(a2 + 48);
  v9 = *a1;
  LODWORD(v3) = simd_float4x4.scale.getter(*a2, *(a2 + 16), *(a2 + 32)).u32[0];
  *&v4 = specialized simd_float4x4.init(translation:rotation:scale:)(v8, v9, v3);
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
}

__n128 sub_1C136DADC@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[3];
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

__n128 sub_1C136DAEC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  result.n128_u32[3] = a2[3].n128_u32[3];
  a2[3] = result;
  return result;
}

uint64_t sub_1C136DB00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of GeometricPin(a1, v5);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of GeometricPin(v5);
  *a2 = Strong;
  return result;
}

__n128 sub_1C136DB58@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[3];
  *a2 = result;
  return result;
}

__n128 sub_1C136DB64(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[3] = *a1;
  return result;
}

__n128 sub_1C136DB70@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

__n128 sub_1C136DB7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[4] = *a1;
  return result;
}

uint64_t sub_1C136DB88@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static __RKScenePhysics.registration;
}

void *sub_1C136DBDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = Scene.__gravity.getter();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t sub_1C136DC44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = Scene.__adaptiveTimeStep.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1C136DCA8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136DCE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136DD18()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136DD50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136DD88()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C136DDD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136DE08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C136DE48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

float sub_1C136DE84@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasAmbientLight.light.getter(&v5);
  result = v6;
  *a2 = v5;
  *(a2 + 8) = result;
  return result;
}

__n128 sub_1C136DED8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void _s17RealityFoundation25AnimationLibraryComponentV0C10CollectionVSlAASl34_customLastIndexOfEquatableElementy0I0QzSgSg0L0QzFTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_1C136DF54@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized AnimationLibraryDefinition.defaultResourceKey.getter(*a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C136DF88(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);

  result = outlined consume of String??(v5, v6);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1C136E040@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 4);
  result = AnimationLibraryComponent.AnimationCollection.subscript.getter(*a2, a2[1]);
  *a3 = result;
  return result;
}

uint64_t sub_1C136E0C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C136E120@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REEntityGetSelfEnabled();
  *a2 = result;
  return result;
}

uint64_t sub_1C136E150(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  MEMORY[0x1C68F9730](*(*a2 + 16), *a1);
  v3 = *(v2 + 16);

  return RENetworkMarkEntityMetadataDirty();
}

__n128 sub_1C136E1A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL sub_1C136E204(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = v2;
  return static HashableMetatype.== infix(_:_:)(&v5, &v4);
}

__n128 sub_1C136E270(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_1C136E2B4(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  MEMORY[0x1C68F9730](*(*a2 + 16), *a1);
  v3 = *(v2 + 16);

  return RENetworkMarkEntityMetadataDirty();
}

uint64_t sub_1C136E4B4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C136E4EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136E524()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C136E574()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 77, 7);
}

uint64_t sub_1C136E5AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REAudioFileAssetGetStreaming();
  *a2 = result ^ 1;
  return result;
}

uint64_t sub_1C136E5E4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*a1 + 16);
  result = REAudioFileAssetGetLoopCount();
  *a2 = result == -1;
  return result;
}

uint64_t sub_1C136E61C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = (*a1 << 31 >> 31);
  v3 = *(*a2 + 16);
  return REAudioFileAssetSetLoopCount();
}

void sub_1C136E6C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 24);

  *(a2 + 24) = v3;
  LowLevelMesh.Descriptor.vertexLayouts.didset();
}

id sub_1C136E708@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  *a2 = v2;
  return v2;
}

uint64_t sub_1C136E7A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C136E7F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys13OpaquePointerVs5Error_pGMd, _sScCys13OpaquePointerVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C136E884()
{
  v1 = v0[6];
  swift_unknownObjectRelease();
  outlined consume of TextureResource.CopySourceBuffer(v0[8], v0[9]);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

double sub_1C136E8D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012ChannelAudioD0V_Tt0B5(*a1, &v6);
  v3 = v7;
  v4 = v8;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1C136E940@<X0>(_BYTE *a1@<X8>)
{
  result = MXIComponent.splitMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C136E97C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v5 = &type metadata for MXIComponent.MXISplitMode;
  v4[0] = v2;
  return outlined assign with take of Any?(v4, a2 + 16);
}

float sub_1C136E9B8@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 48);
  *a2 = result;
  return result;
}

float sub_1C136E9C4(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 48) = *a1;
  return result;
}

__n128 sub_1C136E9E8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

__n128 sub_1C136E9F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[4] = *a1;
  return result;
}

float sub_1C136EA18@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = *(a1 + 84);
  *a2 = result;
  return result;
}

float sub_1C136EA24(float *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 84) = *a1;
  return result;
}

double sub_1C136EA30@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  HasCollision.collision.getter(&v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

__n128 sub_1C136EA84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C136EA90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = specialized QuerySelectors.ComponentQueryResult.entity.getter();
}

uint64_t sub_1C136EACC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  specialized QuerySelectors.ComponentQueryResult.entity.setter(v4);
}

__n128 sub_1C136EB1C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1C136EBB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C136EBC4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 104);

  *(a2 + 96) = v4;
  *(a2 + 104) = v3;
  return result;
}

uint64_t sub_1C136EC08@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (*(a1 + 136) == 1)
  {
    result = *(*(a1 + 144) + 16);
    if (result)
    {
      v3 = a2;
      result = RETimelineDefinitionGetAnimationLayer();
      a2 = v3;
    }

    *a2 = result;
  }

  else
  {
    result = *(a1 + 132);
    *a2 = result;
  }

  return result;
}

_DWORD *sub_1C136EC5C(_DWORD *result, uint64_t a2)
{
  *(a2 + 132) = *result;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_1C136EC6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 138) == 1)
  {
    result = *(*(a1 + 144) + 16);
    if (result)
    {
      v3 = a2;
      result = RETimelineDefinitionGetFillMode();
      a2 = v3;
    }

    *a2 = result;
  }

  else
  {
    result = *(a1 + 137);
    *a2 = result;
  }

  return result;
}

double sub_1C136ECD0@<D0>(uint64_t a1@<X8>)
{
  AnimationView.bindTarget.getter(&v4);
  v2 = v5;
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_1C136ED1C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1C136ED38(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 16) = *result;
  *(a2 + 24) = v2;
  return result;
}

uint64_t sub_1C136ED54(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 32) = *result;
  *(a2 + 40) = v2;
  return result;
}

void *sub_1C136ED70(void *result, uint64_t a2)
{
  *(a2 + 48) = *result;
  *(a2 + 56) = 0;
  return result;
}

void *sub_1C136ED84(void *result, uint64_t a2)
{
  *(a2 + 64) = *result;
  *(a2 + 72) = 0;
  return result;
}

_DWORD *sub_1C136ED98(_DWORD *result, uint64_t a2)
{
  *(a2 + 76) = *result;
  *(a2 + 80) = 0;
  return result;
}

uint64_t sub_1C136EDA8@<X0>(_BYTE *a1@<X8>)
{
  result = AnimationView.repeatMode.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C136EE4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C136EE84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 120);
  return result;
}

uint64_t sub_1C136EECC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 120) = v2;
  return result;
}

uint64_t sub_1C136EF10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 136);
  *a2 = *(v3 + 128);
  a2[1] = v4;
}

double sub_1C136EF60@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 144);
  *a2 = result;
  return result;
}

uint64_t sub_1C136EFA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 144) = v2;
  return result;
}

uint64_t sub_1C136EFF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 152);
  return result;
}

uint64_t sub_1C136F03C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 152) = v2;
  return result;
}

uint64_t sub_1C136F080@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 153);
  return result;
}

uint64_t sub_1C136F0C8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 153) = v2;
  return result;
}

uint64_t sub_1C136F114@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C136F15C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

float sub_1C136F1A0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 20);
  *a2 = result;
  return result;
}

uint64_t sub_1C136F1E8(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 20) = v2;
  return result;
}

float sub_1C136F234@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_1C136F27C(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

float sub_1C136F2C8@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 28);
  *a2 = result;
  return result;
}

uint64_t sub_1C136F310(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 28) = v2;
  return result;
}

float sub_1C136F35C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_1C136F3A4(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1C136F3F0@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 36);
  return result;
}

uint64_t sub_1C136F438(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 36) = v2;
  return result;
}

uint64_t sub_1C136F47C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1C136F4C4(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1C136F508@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 44);
  return result;
}

uint64_t sub_1C136F550(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 44) = v2;
  return result;
}

uint64_t sub_1C136F594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1C136F5DC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t _s17RealityFoundation15JointTransformsVSlAASl5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized BidirectionalCollection.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance BlendShapeWeightsSet@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = *(v2 + 16);
}

uint64_t sub_1C136F72C@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    *a3 = *(*result + 4 * v3 + 32);
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C136F770@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isPaused.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C136F7A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isComplete.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C136F7D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isValid.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C136F800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = AnimationPlaybackController.isPlaying.getter();
  *a2 = result & 1;
  return result;
}
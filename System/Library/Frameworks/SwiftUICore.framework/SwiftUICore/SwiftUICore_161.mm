void protocol witness for Animatable.animatableData.modify in conformance _IgnoredByLayoutEffect<A>(uint64_t a1, char a2)
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
    specialized _IgnoredByLayoutEffect.animatableData.setter(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    specialized _IgnoredByLayoutEffect.animatableData.setter(*(*a1 + 40), v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t GeometryEffect.ignoredByLayout()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t specialized _IgnoredByLayoutEffect.animatableData.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return (*(v4 + 32))(v8, v3, v4);
}

uint64_t instantiation function for generic protocol witness table for _IgnoredByLayoutEffect<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MaterialEffectItemConfiguration_V1.material.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of Material?(v2, v3);
}

uint64_t MaterialEffectItemConfiguration_V1.material.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = outlined consume of Material?(*v1, v1[1]);
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t (*MaterialEffectItemConfiguration_V1.material.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  v4 = v1[1];
  *a1 = *v1;
  a1[1] = v4;
  outlined copy of Material?(v3, v4);
  return MaterialEffectItemConfiguration_V1.material.modify;
}

uint64_t MaterialEffectItemConfiguration_V1.material.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *v3;
  v6 = v3[1];
  if (a2)
  {
    outlined copy of Material?(*a1, v2);
    outlined consume of Material?(v5, v6);
    *v3 = v4;
    v3[1] = v2;

    return outlined consume of Material?(v4, v2);
  }

  else
  {
    result = outlined consume of Material?(*v3, v3[1]);
    *v3 = v4;
    v3[1] = v2;
  }

  return result;
}

uint64_t MaterialEffectItemConfiguration_V1.tintColor.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t (*MaterialEffectItemConfiguration_V1.tintColor.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return MaterialEffectItemConfiguration_V1.tintColor.modify;
}

uint64_t MaterialEffectItemConfiguration_V1.tintColor.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *(v2 + 24) = v3;
  }

  else
  {

    *(v2 + 24) = v3;
  }

  return result;
}

uint64_t MaterialEffectItemConfiguration_V1.matchedNamespace.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t (*MaterialEffectItemConfiguration_V1.matchedNamespace.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  return MaterialEffectItemConfiguration_V1.matchedNamespace.modify;
}

uint64_t MaterialEffectItemConfiguration_V1.matchedNamespace.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

_DWORD *(*MaterialEffectItemConfiguration_V1.matchedProperties.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 60);
  return MaterialEffectItemConfiguration_V1.matchedProperties.modify;
}

__n128 (*MaterialEffectItemConfiguration_V1.matchedAnchor.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 64);
  return MaterialEffectItemConfiguration_V1.matchedAnchor.modify;
}

__n128 MaterialEffectItemConfiguration_V1.matchedAnchor.modify(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 64) = *a1;
  return result;
}

_BYTE *(*MaterialEffectItemConfiguration_V1.isSource.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 80);
  return MaterialEffectItemConfiguration_V1.isSource.modify;
}

__n128 MaterialEffectItemConfiguration_V1.init()@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for _AnyShapeBox<Capsule>();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *a1 = xmmword_18DDA6AB0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1;
  *(a1 + 60) = 3;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 64) = result;
  *(a1 + 80) = 0;
  return result;
}

uint64_t MaterialEffectItemConfiguration_V1.setShape<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  v8 = AnyShape.init<A>(_:)(v6, a2);

  *(v2 + 16) = v8;
  return result;
}

uint64_t MaterialEffectItemConfiguration_V1.setGroupID<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  AnyHashable2.init<A>(_:)(v6, a2, &v11);
  v8 = v11;

  *(v2 + 32) = v8;
  return result;
}

uint64_t MaterialEffectItemConfiguration_V1.setSourceID<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  AnyHashable2.init<A>(_:)(v6, a2, &v11);
  v8 = v11;

  *(v2 + 40) = v8;
  return result;
}

uint64_t View.materialEffectItem_v1<A>(_:smoothness:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  type metadata accessor for _AnyShapeBox<Capsule>();
  v13 = swift_allocObject();
  *(v13 + 16) = 1;
  LOBYTE(v28[0]) = 1;
  *v21 = v13;
  memset(&v21[8], 0, 32);
  v21[40] = 1;
  *&v21[44] = 3;
  __asm { FMOV            V0.2D, #0.5 }

  v22 = _Q0;
  v23 = 0;
  outlined copy of Material?(v11, v12);
  outlined consume of Material?(0, 0xFFu);
  *&v20 = v11;
  *(&v20 + 1) = v12;
  MaterialEffectItemConfiguration_V1.setShape<A>(_:)(a2, a4);
  v24[3] = *&v21[32];
  v24[4] = v22;
  v25 = 0;
  v24[0] = v20;
  v24[1] = *v21;
  v24[2] = *&v21[16];
  outlined init with copy of MaterialEffectItemConfiguration_V1(v24, v28);
  View.materialEffectItem_v1(_:)(&v20, a3, a5, a6);
  v26[2] = *&v21[16];
  v26[3] = *&v21[32];
  v26[4] = v22;
  v27 = v23;
  v26[0] = v20;
  v26[1] = *v21;
  outlined destroy of MaterialEffectItemConfiguration_V1(v26);
  v28[2] = *&v21[16];
  v28[3] = *&v21[32];
  v28[4] = v22;
  v29 = v23;
  v28[0] = v20;
  v28[1] = *v21;
  return outlined destroy of MaterialEffectItemConfiguration_V1(v28);
}

uint64_t View.materialEffectItem_v1(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a3;
  v46 = a4;
  v40 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for StaticIf();
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for ModifiedContent();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v33 - v10;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 56);
  if (*(a1 + 40) && (v13 & 1) == 0)
  {
    v38 = 0;
    v39 = *(a1 + 60);
    v14 = *(a1 + 72);
    v37 = *(a1 + 64);
    v36 = v14;
  }

  else
  {
    v39 = 0;
    v37 = 0;
    v36 = 0;
    v38 = 1;
  }

  v35 = v13;
  v15 = *(a1 + 16);
  v16 = *(a1 + 32);
  v34 = *(a1 + 48);
  if (v12 == 255)
  {
    v33 = v8;
    v20 = a2;
    v21 = v11;
    if (one-time initialization token for regular != -1)
    {
      swift_once();
    }

    v18 = static Material.regular;
    v19 = byte_1ED520070;
    v17 = dword_1ED520074;
    outlined copy of Material.ID(static Material.regular, byte_1ED520070);
    v11 = v21;
    a2 = v20;
    v8 = v33;
  }

  else
  {
    v17 = HIDWORD(v12);
    v18 = v11;
    v19 = v12;
  }

  *&v55 = v18;
  *(&v55 + 1) = v19 | (v17 << 32) | 0x40000000;
  LOBYTE(v56) = 5;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v54 = v15;
  outlined copy of Material?(v11, v12);
  v22 = lazy protocol witness table accessor for type AnyShape and conformance AnyShape();
  v23 = v41;
  View._glassEffect<A>(_:in:isEnabled:)(&v55, v12 != 255, a2, &type metadata for AnyShape, v41, v22, v8);
  outlined consume of _Glass.Variant.Role(v55, DWORD2(v55));

  *&v55 = v16;
  if (v35)
  {
    v24 = 0;
  }

  else
  {
    v24 = v34;
  }

  type metadata accessor for UncheckedSendable<AnyHashable2>();
  v26 = v25;
  v52 = v23;
  v53 = &protocol witness table for GlassEffectModifier;

  WitnessTable = swift_getWitnessTable();
  v49 = &protocol witness table for GlassEnabledPredicate;
  v50 = WitnessTable;
  v51 = v23;
  v28 = swift_getWitnessTable();
  v29 = lazy protocol witness table accessor for type UncheckedSendable<AnyHashable2> and conformance <A> UncheckedSendable<A>();
  v30 = v42;
  View._glassEffectID<A>(_:in:)(&v55, v24, v6, v26, v28, v29);

  (*(v43 + 8))(v8, v6);
  *&v55 = v39;
  *(&v55 + 1) = v37;
  v56 = v36;
  LOBYTE(v57) = v38;
  v47 = v28;
  v48 = &protocol witness table for GlassEffectIDModifier;
  v31 = v45;
  swift_getWitnessTable();
  View._glassEffectTransition(_:isEnabled:)(&v55, 1, v31);
  return (*(v44 + 8))(v30, v31);
}

uint64_t MaterialEffectContainer_V1<A>.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0x3FF0000000000000;
  type metadata accessor for MaterialEffectContainer_V1();
  return a1();
}

uint64_t MaterialEffectContainer_V1<A>.init(smoothness:content:)@<X0>(uint64_t (*a1)(void)@<X0>, double *a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  type metadata accessor for MaterialEffectContainer_V1();
  return a1();
}

uint64_t MaterialEffectContainer_V1<A>.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for _GlassEffectContainer();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  v12 = *v2;
  v17 = v4;
  v18 = a2;
  v19 = v2;
  _GlassEffectContainer.init(smoothness:content:)(v12, 0, partial apply for closure #1 in MaterialEffectContainer_V1<A>.body.getter, v8);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v8, v5, WitnessTable);
  v14 = *(v6 + 8);
  v14(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)(v11, v5, WitnessTable);
  return (v14)(v11, v5);
}

uint64_t closure #1 in MaterialEffectContainer_V1<A>.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MaterialEffectContainer_V1();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v9 + 28), a2, a3);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

void type metadata accessor for UncheckedSendable<AnyHashable2>()
{
  if (!lazy cache variable for type metadata for UncheckedSendable<AnyHashable2>)
  {
    v0 = type metadata accessor for UncheckedSendable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UncheckedSendable<AnyHashable2>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UncheckedSendable<AnyHashable2> and conformance <A> UncheckedSendable<A>()
{
  result = lazy protocol witness table cache variable for type UncheckedSendable<AnyHashable2> and conformance <A> UncheckedSendable<A>;
  if (!lazy protocol witness table cache variable for type UncheckedSendable<AnyHashable2> and conformance <A> UncheckedSendable<A>)
  {
    type metadata accessor for UncheckedSendable<AnyHashable2>();
    lazy protocol witness table accessor for type AnyHashable2 and conformance AnyHashable2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UncheckedSendable<AnyHashable2> and conformance <A> UncheckedSendable<A>);
  }

  return result;
}

uint64_t type metadata completion function for MaterialEffectContainer_V1()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for MaterialEffectItemConfiguration_V1(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 != 255)
  {
    outlined consume of Material.ID(*a1, v1);
  }
}

uint64_t initializeWithCopy for MaterialEffectItemConfiguration_V1(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (*(a2 + 8) == 0xFF)
  {
    *a1 = *a2;
  }

  else
  {
    v5 = *a2;
    outlined copy of Material.ID(*a2, a2[1]);
    *a1 = v5;
    *(a1 + 8) = v4;
    *(a1 + 12) = HIDWORD(v4);
  }

  v6 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v6;
  v7 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v7;
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 15);
  *(a1 + 64) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for MaterialEffectItemConfiguration_V1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 0xFF)
  {
    if (v4 != 255)
    {
      v5 = *a2;
      outlined copy of Material.ID(*a2, *(a2 + 8));
      *a1 = v5;
      *(a1 + 8) = v4;
LABEL_8:
      *(a1 + 12) = *(a2 + 12);
      goto LABEL_9;
    }
  }

  else
  {
    if (v4 != 255)
    {
      v6 = *a2;
      outlined copy of Material.ID(*a2, *(a2 + 8));
      v7 = *a1;
      *a1 = v6;
      v8 = *(a1 + 8);
      *(a1 + 8) = v4;
      outlined consume of Material.ID(v7, v8);
      goto LABEL_8;
    }

    outlined destroy of Material(a1);
  }

  *a1 = *a2;
LABEL_9:
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v9 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v9;
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithTake for MaterialEffectItemConfiguration_V1(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != 255)
  {
    v5 = *(a2 + 8);
    if (*(a2 + 8) != 0xFF)
    {
      v6 = HIDWORD(v5);
      v7 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v5;
      outlined consume of Material.ID(v7, v4);
      *(a1 + 12) = v6;
      goto LABEL_6;
    }

    outlined destroy of Material(a1);
  }

  *a1 = *a2;
LABEL_6:
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for MaterialEffectItemConfiguration_V1(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MaterialEffectItemConfiguration_V1(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TypeConformance.unsafeExistentialMetatype<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(*(a1 - 8) + 64) == 16)
  {
    return (*(*(a1 - 8) + 16))(a2, &v4);
  }

  __break(1u);
  return result;
}

uint64_t TypeConformance.init(storage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double TimeDataFormatting.UpdateFrequency.magnitude.getter@<D0>(double *a1@<X8>)
{
  result = 1.0 / dbl_18DE0F7A0[*v1];
  *a1 = result;
  return result;
}

uint64_t TimeDataFormatting.UpdateFrequency.init(duration:)@<X0>(char *a1@<X8>)
{
  static Duration.seconds(_:)();
  result = static Duration.< infix(_:_:)();
  if (result)
  {
    static Duration.seconds(_:)();
    result = static Duration.< infix(_:_:)();
    if (result)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TimeDataFormatting.UpdateFrequency.CodingKeys()
{
  v1 = 0x646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x6574756E696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1751607656;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeDataFormatting.UpdateFrequency.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TimeDataFormatting.UpdateFrequency.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.UpdateFrequency.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.UpdateFrequency.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t TimeDataFormatting.UpdateFrequency.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys, &unk_1F00ABEE0, MEMORY[0x1E69E6F58]);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - v5;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.SecondCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys, &unk_1F00ABEC0, v3);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - v7;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.HighCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys, &unk_1F00ABEA0, v3);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.CodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys, &unk_1F00ABE80, v3);
  v31 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = (v12 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys();
      v17 = v25;
      v18 = v31;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v26 + 8))(v17, v27);
      return (*v16)(v14, v18);
    }

    v34 = 2;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys();
    v10 = v28;
    v20 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v29;
    v21 = v30;
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys();
    v20 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v23;
    v21 = v24;
  }

  (*(v22 + 8))(v10, v21);
  return (*v16)(v14, v20);
}

unint64_t lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys()
{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys()
{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys()
{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys;
  if (!lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys);
  }

  return result;
}

Swift::Int TimeDataFormatting.UpdateFrequency.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t TimeDataFormatting.UpdateFrequency.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys, &unk_1F00ABEE0, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - v5;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataFormatting.UpdateFrequency.SecondCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys, &unk_1F00ABEC0, v3);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v32 - v7;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataFormatting.UpdateFrequency.HighCodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys, &unk_1F00ABEA0, v3);
  v9 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TimeDataFormatting.UpdateFrequency.CodingKeys>, lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys, &unk_1F00ABE80, v3);
  v13 = v12;
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.CodingKeys and conformance TimeDataFormatting.UpdateFrequency.CodingKeys();
  v16 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_8;
  }

  v18 = v38;
  v17 = v39;
  v41 = a1;
  v19 = v15;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v42 = v20;
  v43 = v20 + 32;
  v44 = 0;
  v45 = v21;
  v22 = specialized Collection<>.popFirst()();
  if (v22 == 3 || v44 != v45 >> 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)();
    *v27 = &type metadata for TimeDataFormatting.UpdateFrequency;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v40 + 8))(v15, v13);
    swift_unknownObjectRelease();
    a1 = v41;
LABEL_8:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  if (v22)
  {
    LODWORD(v32) = v22;
    v23 = v40;
    if (v22 == 1)
    {
      v46 = 1;
      lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.SecondCodingKeys and conformance TimeDataFormatting.UpdateFrequency.SecondCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v37;
      (*(v34 + 8))(v18, v35);
    }

    else
    {
      v46 = 2;
      lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.MinuteCodingKeys and conformance TimeDataFormatting.UpdateFrequency.MinuteCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v37;
      (*(v33 + 8))(v17, v36);
    }

    (*(v23 + 8))(v19, v13);
    swift_unknownObjectRelease();
    v30 = v32;
  }

  else
  {
    v30 = v22;
    v46 = 0;
    lazy protocol witness table accessor for type TimeDataFormatting.UpdateFrequency.HighCodingKeys and conformance TimeDataFormatting.UpdateFrequency.HighCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v40;
    (*(v32 + 8))(v11, v9);
    (*(v31 + 8))(v15, v13);
    swift_unknownObjectRelease();
    v24 = v37;
  }

  *v24 = v30;
  v28 = v41;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t Date.FormatStyle.updateFrequency(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void, double)@<X1>, void (*a3)(char *)@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v25 = a3;
  v7 = v5;
  v10 = type metadata accessor for Date.FormatStyle.Symbol.SecondFraction();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date.FormatStyle.Symbol.Second();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2(0, v15);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v25 - v21;
  v23 = *a1;
  result = (*(v19 + 16))(a5, v7, v18, v20);
  if (v23)
  {
    if (v23 != 1)
    {
      MEMORY[0x193ABD340](result);
      v25(v17);
      (*(v14 + 8))(v17, v13);
      (*(v19 + 8))(a5, v18);
      (*(v19 + 32))(a5, v22, v18);
    }

    static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
    v28(v12);
    (*(v26 + 8))(v12, v27);
    (*(v19 + 8))(a5, v18);
    return (*(v19 + 32))(a5, v22, v18);
  }

  return result;
}

uint64_t WhitespaceRemovingFormatStyle<>.updateFrequency(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  (*(*(v14 - 8) + 16))(a4, v4, v9);
  v17 = v13;
  (*(a3 + 16))(&v17, v7, a3);
  return (*(v8 + 40))(a4, v11, v7);
}

uint64_t Date.AnchoredRelativeFormatStyle.updateFrequency(_:)@<X0>(char *a1@<X0>, unint64_t a2@<X8>)
{
  v71[4] = *MEMORY[0x1E69E9840];
  v70 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v5 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v56 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v53[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53[-v13];
  v15 = type metadata accessor for Date.AnchoredRelativeFormatStyle();
  v16 = *(v15 - 8);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v19 = &v53[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *a1;
  v21 = *(v16 + 16);
  if (*a1)
  {
    v69 = *a1;
    v22 = v20;
    (v21)(v19, v2, v15, v17.n128_f64[0]);
    v66 = v19;
    v23 = Date.AnchoredRelativeFormatStyle.allowedFields.getter();
    v63 = v53;
    MEMORY[0x1EEE9AC00](v23);
    v25 = &v53[-32];
    v54 = v22;
    v53[-16] = v22;
    v26 = *(v24 + 32);
    v62 = ((1 << v26) + 63) >> 6;
    v55 = v9;
    if ((v26 & 0x3Fu) > 0xD)
    {
      goto LABEL_28;
    }

    while (1)
    {
      v59 = v16;
      v60 = v15;
      v61 = a2;
      v58 = v53;
      MEMORY[0x1EEE9AC00](v24);
      v64 = &v53[-((v27 + 15) & 0x3FFFFFFFFFFFFFF0)];
      bzero(v64, v27);
      v65 = 0;
      v28 = 0;
      v29 = v23;
      v16 = v23 + 56;
      v30 = 1 << *(v23 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      a2 = v31 & *(v23 + 56);
      v15 = (v30 + 63) >> 6;
      v67 = v5 + 8;
      v68 = v5 + 16;
      while (a2)
      {
        v32 = __clz(__rbit64(a2));
        a2 &= a2 - 1;
        v33 = v32 | (v28 << 6);
        v34 = v29;
LABEL_13:
        v23 = v70;
        (*(v5 + 16))(v14, *(v34 + 48) + *(v5 + 72) * v33, v70);
        v25 = v14;
        Date.ComponentsFormatStyle.Field.magnitude.getter(v71);
        v37 = v71[0];
        v38 = 1.0 / dbl_18DE0F7A0[v69];
        (*(v5 + 8))(v14, v23);
        if (v37 < v38)
        {
          *&v64[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
          if (__OFADD__(v65++, 1))
          {
            __break(1u);
LABEL_17:
            v40 = specialized _NativeSet.extractSubset(using:count:)(v64, v62, v65, v34);
            v15 = v60;
            a2 = v61;
            v16 = v59;
            goto LABEL_18;
          }
        }
      }

      v35 = v28;
      v34 = v29;
      while (1)
      {
        v28 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v28 >= v15)
        {
          goto LABEL_17;
        }

        v36 = *(v16 + 8 * v28);
        ++v35;
        if (v36)
        {
          a2 = (v36 - 1) & v36;
          v33 = __clz(__rbit64(v36)) | (v28 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_28:

      v51 = v23;
      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v52 = swift_slowAlloc();
    v40 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation4j3V21klm2V5N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_nTm(v52, v62, v51, partial apply for closure #1 in Date.AnchoredRelativeFormatStyle.updateFrequency(_:), v25, MEMORY[0x1E6969498], specialized _NativeSet.extractSubset(using:count:));

    MEMORY[0x193AC4820](v52, -1, -1);
LABEL_18:
    v41 = v66;
    v42 = Date.AnchoredRelativeFormatStyle.allowedFields.modify();
    specialized Set._subtract<A>(_:)(v40, &lazy cache variable for type metadata for Date.ComponentsFormatStyle.Field?, MEMORY[0x1E6969498], MEMORY[0x1E6969498], specialized Set._Variant.remove(_:));

    v42(v71, 0);
    v43 = *(Date.AnchoredRelativeFormatStyle.allowedFields.getter() + 16);

    if (!v43)
    {
      v44 = v56;
      if (v54 == 1)
      {
        static Date.ComponentsFormatStyle.Field.second.getter();
      }

      else
      {
        static Date.ComponentsFormatStyle.Field.minute.getter();
      }

      v46 = v55;
      v47 = v70;
      (*(v5 + 32))(v55, v44, v70);
      v48 = Date.AnchoredRelativeFormatStyle.allowedFields.modify();
      v49 = v57;
      specialized Set._Variant.insert(_:)(v57, v46);
      v50 = v49;
      v41 = v66;
      (*(v5 + 8))(v50, v47);
      v48(v71, 0);
    }

    return (*(v16 + 32))(a2, v41, v15);
  }

  else
  {

    return v21(a2, v2, v15, v17);
  }
}

uint64_t Duration.UnitsFormatStyle.updateFrequency(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v157[4] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v138 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v126 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v140 = &v126 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v126 - v13;
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v146 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v126 - v18;
  v20 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v21 = *(v20 - 8);
  v154 = v20;
  v155 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v141 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v126 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v134 = &v126 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v126 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v149 = &v126 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v126 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v153 = &v126 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v126 - v38;
  v40 = type metadata accessor for Duration.UnitsFormatStyle();
  v43.n128_f64[0] = MEMORY[0x1EEE9AC00](v40);
  v45 = &v126 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *a1;
  v47 = *(v42 + 16);
  if (!*a1)
  {

    return v47(a2, v2, v43);
  }

  v126 = v25;
  v127 = v42;
  v129 = a2;
  v152 = v46;
  v48 = v46;
  v49 = v45;
  v128 = v41;
  (v47)(v45, v2, v43.n128_f64[0]);
  v148 = v49;
  v50 = Duration.UnitsFormatStyle.allowedUnits.getter();
  v133 = &v126;
  MEMORY[0x1EEE9AC00](v50);
  v52 = (&v126 - 4);
  v145 = v48;
  *(&v126 - 16) = v48;
  v53 = *(v51 + 32);
  v132 = ((1 << v53) + 63) >> 6;
  v147 = v34;
  v144 = v5;
  v143 = v6;
  v142 = v19;
  v130 = v14;
  if ((v53 & 0x3Fu) <= 0xD)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v115 = v50;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_3:
    v131 = &v126;
    MEMORY[0x1EEE9AC00](v51);
    v135 = &v126 - ((v54 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v135, v54);
    v136 = 0;
    v55 = 0;
    v6 = v50;
    v57 = *(v50 + 56);
    v50 += 56;
    v56 = v57;
    v58 = 1 << *(v50 - 24);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v52 = v59 & v56;
    v5 = (v58 + 63) >> 6;
    v150 = (v155 + 8);
    v151 = v155 + 16;
    v19 = v155;
    while (v52)
    {
      v60 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
LABEL_13:
      v63 = v60 | (v55 << 6);
      v64 = v154;
      (*(v19 + 2))(v39, *(v6 + 6) + *(v19 + 9) * v63, v154);
      Duration.UnitsFormatStyle.Unit.magnitude.getter(v157);
      v65 = v157[0];
      v66 = 1.0 / dbl_18DE0F7A0[v152];
      (*(v19 + 1))(v39, v64);
      if (v65 < v66)
      {
        *&v135[(v63 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v63;
        if (__OFADD__(v136++, 1))
        {
          __break(1u);
LABEL_17:
          v68 = specialized _NativeSet.extractSubset(using:count:)(v135, v132, v136, v6);
          v5 = v144;
          v6 = v143;
          v19 = v142;
          goto LABEL_18;
        }
      }
    }

    v61 = v55;
    while (1)
    {
      v55 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v55 >= v5)
      {
        goto LABEL_17;
      }

      v62 = *(v50 + 8 * v55);
      ++v61;
      if (v62)
      {
        v60 = __clz(__rbit64(v62));
        v52 = (v62 - 1) & v62;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
  }

  while (1)
  {
    v125 = swift_slowAlloc();
    v68 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation4j3V21klm2V5N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_nTm(v125, v132, v115, partial apply for closure #1 in Duration.UnitsFormatStyle.updateFrequency(_:), v52, MEMORY[0x1E696A1C0], specialized _NativeSet.extractSubset(using:count:));

    MEMORY[0x193AC4820](v125, -1, -1);
LABEL_18:
    v69 = Duration.UnitsFormatStyle.allowedUnits.modify();
    specialized Set._subtract<A>(_:)(v68, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C0], specialized Set._Variant.remove(_:));

    v69(v157, 0);
    v70 = Duration.UnitsFormatStyle.allowedUnits.getter();
    v50 = v70;
    v52 = v70 + 56;
    v71 = 1 << *(v70 + 32);
    v72 = -1;
    if (v71 < 64)
    {
      v72 = ~(-1 << v71);
    }

    v73 = v72 & *(v70 + 56);
    if (v73)
    {
      v136 = 0;
      v74 = 0;
      v75 = __clz(__rbit64(v73));
      v76 = (v73 - 1) & v73;
      v77 = (v71 + 63) >> 6;
      v78 = v153;
LABEL_29:
      v82 = *(v50 + 48);
      v84 = v155 + 16;
      v83 = *(v155 + 2);
      v151 = *(v155 + 9);
      v152 = v83;
      v83(v78, v82 + v151 * v75, v154);
      v6 = v84 - 8;
      v150 = (v84 + 16);

      v19 = v154;
      while (v76)
      {
        v39 = v74;
LABEL_37:
        v85 = __clz(__rbit64(v76));
        v76 &= v76 - 1;
        v5 = v50;
        v86 = *(v50 + 48) + (v85 | (v39 << 6)) * v151;
        v87 = v147;
        (v152)(v147, v86, v19);
        Duration.UnitsFormatStyle.Unit.magnitude.getter(v157);
        v88 = v157[0];
        v89 = v153;
        Duration.UnitsFormatStyle.Unit.magnitude.getter(&v156);
        v90 = *v6;
        if (v88 >= v156)
        {
          v90(v87, v19);
        }

        else
        {
          v90(v89, v19);
          (*v150)(v89, v87, v19);
        }

        v74 = v39;
        v50 = v5;
      }

      while (1)
      {
        v39 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          goto LABEL_70;
        }

        if (v39 >= v77)
        {

          v19 = v142;
          v91 = v154;
          (*v150)(v142, v153, v154);
          v92 = 0;
          v5 = v144;
          v6 = v143;
          goto LABEL_40;
        }

        v76 = *(v52 + 8 * v39);
        ++v74;
        if (v76)
        {
          goto LABEL_37;
        }
      }
    }

    v80 = 0;
    v77 = (v71 + 63) >> 6;
    v78 = v153;
    while (v77 - 1 != v73)
    {
      v74 = v73 + 1;
      v81 = *(v50 + 64 + 8 * v73);
      v80 -= 64;
      ++v73;
      if (v81)
      {
        v136 = 0;
        v76 = (v81 - 1) & v81;
        v75 = __clz(__rbit64(v81)) - v80;
        goto LABEL_29;
      }
    }

    v92 = 1;
    v91 = v154;
LABEL_40:
    (*(v155 + 7))(v19, v92, 1, v91);

    v93 = v146;
    if (v145)
    {
      v94 = v139;
      if (v145 == 1)
      {
        static Duration.UnitsFormatStyle.Unit.seconds.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.Unit.minutes.getter();
      }
    }

    else
    {
      v94 = v139;
      static Duration.UnitsFormatStyle.Unit.nanoseconds.getter();
    }

    v95 = v155;
    v96 = *(v155 + 4);
    v96(v149, v94, v91);
    v97 = *(v95 + 6);
    if (v97(v19, 1, v91) == 1)
    {
      v153 = v96;
      v98 = v155;
      v99 = v19;
      v100 = v6;
      v101 = v5;
      v102 = v126;
      (*(v155 + 2))(v126, v149, v91);
      v152 = Duration.UnitsFormatStyle.allowedUnits.modify();
      v103 = v134;
      v104 = v102;
      v5 = v101;
      v6 = v100;
      v19 = v99;
      specialized Set._Variant.insert(_:)(v134, v104);
      v93 = v146;
      v105 = v98;
      v96 = v153;
      v105[1](v103, v154);
      (v152)(v157, 0);
      v91 = v154;
    }

    outlined init with copy of Duration.UnitsFormatStyle.Unit?(v19, v93);
    if (v97(v93, 1, v91) == 1)
    {
      v106 = v141;
      (*(v155 + 2))(v141, v149, v91);
      if (v97(v93, 1, v91) != 1)
      {
        outlined destroy of Duration.UnitsFormatStyle.Unit?(v93, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0]);
      }
    }

    else
    {
      v107 = v141;
      v96(v141, v93, v91);
      v106 = v107;
    }

    Duration.UnitsFormatStyle.Unit.magnitude.getter(v157);
    v108 = *(v155 + 1);
    v155 += 8;
    v108(v106, v91);
    if (!v145)
    {
      if (v157[0] == 0.0)
      {
        goto LABEL_58;
      }

      v110 = 0x3FA1111111111111;
LABEL_61:
      v109 = *&v110;
      goto LABEL_62;
    }

    if (v145 != 1)
    {
      if (v157[0] == 0.0)
      {
LABEL_58:
        v111 = INFINITY;
        goto LABEL_63;
      }

      v110 = 0x404E000000000000;
      goto LABEL_61;
    }

    if (v157[0] == 0.0)
    {
      goto LABEL_58;
    }

    v109 = 1.0;
LABEL_62:
    v111 = v109 / v157[0];
LABEL_63:
    v112 = v130;
    Duration.UnitsFormatStyle.fractionalPartDisplay.getter();
    Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.roundingIncrement.getter();
    v114 = v113;
    v116 = *(v6 + 1);
    v6 += 8;
    v115 = v116;
    v116(v112, v5);
    if ((v114 & 1) == 0)
    {
      v117 = Duration.UnitsFormatStyle.fractionalPartDisplay.modify();
      Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.roundingIncrement.setter();
      v117(v157, 0);
    }

    v118 = v140;
    Duration.UnitsFormatStyle.fractionalPartDisplay.getter();
    v52 = Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.getter();
    v115(v118, v5);
    v119 = log10(1.0 / v111);
    if ((*&v119 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  if (v119 <= -9.22337204e18)
  {
    goto LABEL_74;
  }

  if (v119 >= 9.22337204e18)
  {
    goto LABEL_75;
  }

  v120 = v148;
  v121 = Duration.UnitsFormatStyle.fractionalPartDisplay.modify();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.setter();
  v121(v157, 0);
  v122 = v137;
  Duration.UnitsFormatStyle.fractionalPartDisplay.getter();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.minimumLength.getter();
  v115(v122, v5);
  v123 = v138;
  Duration.UnitsFormatStyle.fractionalPartDisplay.getter();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.maximumLength.getter();
  v115(v123, v5);
  v124 = Duration.UnitsFormatStyle.fractionalPartDisplay.modify();
  Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.minimumLength.setter();
  v124(v157, 0);
  v108(v149, v154);
  outlined destroy of Duration.UnitsFormatStyle.Unit?(v19, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0]);
  return (*(v127 + 32))(v129, v120, v128);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation4j3V21klm2V5N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_nTm(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4, a5, a6, a7);
    v15 = v14;

    return v15;
  }

  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v48 = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v42 = v11;
    v43 = v9;
    v36 = v12;
    v47 = v4;
    v38 = &v35;
    MEMORY[0x1EEE9AC00](v9);
    v37 = &v35 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v13);
    v14 = 0;
    v45 = a3;
    v16 = *(a3 + 56);
    a3 += 56;
    v15 = v16;
    v17 = 1 << *(a3 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v11 = ((v17 + 63) >> 6);
    v39 = 0;
    v40 = v8 + 16;
    v41 = (v8 + 8);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v46 = (v19 - 1) & v19;
LABEL_12:
      v12 = v20 | (v14 << 6);
      v23 = *(v45 + 48) + *(v8 + 72) * v12;
      v4 = v8;
      v24 = *(v8 + 16);
      v25 = v42;
      v26 = v43;
      v24(v42, v23, v43);
      v27 = v47;
      v28 = v44(v25);
      v47 = v27;
      if (v27)
      {
        (*v41)(v25, v26);

        return swift_willThrow();
      }

      v29 = v28;
      v9 = (*v41)(v25, v26);
      v8 = v4;
      v19 = v46;
      if (v29)
      {
        *&v37[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
          return specialized _NativeSet.extractSubset(using:count:)(v37, v36, v39, v45);
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        return specialized _NativeSet.extractSubset(using:count:)(v37, v36, v39, v45);
      }

      v22 = *(a3 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v32 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v32;
  }

  v33 = swift_slowAlloc();
  v34 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation4DateV21ComponentsFormatStyleV5FieldVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation4j3V21klm2V5N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_nTm(v33, v12, a3, v44, a2, MEMORY[0x1E6969498], specialized _NativeSet.extractSubset(using:count:));

  result = MEMORY[0x193AC4820](v33, -1, -1);
  if (!v4)
  {
    return v34;
  }

  return result;
}

BOOL partial apply for closure #1 in Date.AnchoredRelativeFormatStyle.updateFrequency(_:)()
{
  v1 = *(v0 + 16);
  Date.ComponentsFormatStyle.Field.magnitude.getter(&v3);
  return v3 < 1.0 / dbl_18DE0F7A0[v1];
}

void specialized closure #1 in _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v9 + 16;
  v37 = v9;
  v34 = 0;
  v35 = (v9 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22, v10);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      (*v35)(v23, v22);
      return;
    }

    v28 = v26;
    (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        v32(v33, v31, v34, v30);
        return;
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(0, &lazy cache variable for type metadata for _SetStorage<AttributedString.AnyAttribute>, lazy protocol witness table accessor for type AttributedString.AnyAttribute and conformance AttributedString.AnyAttribute, &type metadata for AttributedString.AnyAttribute, MEMORY[0x1E69E6A10]);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    Hasher.init(_seed:)();
    if (v17 < 0)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      dispatch thunk of static AttributedStringKey.name.getter();
    }

    String.hash(into:)();

    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v30;
    v10 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

{
  v35 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>();
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v35 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage<Duration.UnitsFormatStyle.Unit>();
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    _s10Foundation4DateV11FormatStyleVAeadAWlTm_1(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit, MEMORY[0x1E696A1C0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

BOOL partial apply for closure #1 in Duration.UnitsFormatStyle.updateFrequency(_:)()
{
  v1 = *(v0 + 16);
  Duration.UnitsFormatStyle.Unit.magnitude.getter(&v3);
  return v3 < 1.0 / dbl_18DE0F7A0[v1];
}

void specialized Set._subtract<A>(_:)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(void, double), void (*a5)(char *))
{
  v25 = a3;
  v26 = a5;
  v24 = a2;
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0, a2, a3);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  v12 = a4(0, v9);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  if (*(*v5 + 16))
  {
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    v23[1] = v13 + 8;
    v23[2] = v13 + 16;

    v20 = 0;
    while (v18)
    {
      v21 = v20;
LABEL_10:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      (*(v13 + 16))(v15, *(a1 + 48) + *(v13 + 72) * (v22 | (v21 << 6)), v12);
      v26(v15);
      (*(v13 + 8))(v15, v12);
      outlined destroy of Duration.UnitsFormatStyle.Unit?(v11, v24, v25);
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v18 = *(a1 + 56 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t outlined init with copy of Duration.UnitsFormatStyle.Unit?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0, &lazy cache variable for type metadata for Duration.UnitsFormatStyle.Unit?, MEMORY[0x1E696A1C0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = specialized Set._Variant.remove(_:)(*(*(v2 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized TimeDataFormatting.UpdateFrequency.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1751607656 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void type metadata accessor for Duration.UnitsFormatStyle.Unit?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of Duration.UnitsFormatStyle.Unit?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for Duration.UnitsFormatStyle.Unit?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for KeyedEncodingContainer<TimeDataFormatting.UpdateFrequency.MinuteCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t State._location.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);

  *(v2 + v4) = a1;
  return result;
}

uint64_t State.init<A>(wrappedValue:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = a1();

  v6 = v4;
  *(&v7 + *(type metadata accessor for State() + 28)) = 0;
  (*(*(a3 - 8) + 32))(&v7, &v6, a3);
  return v7;
}

void (*State.wrappedValue.modify(void *a1, uint64_t a2))(void **a1, char a2)
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
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  State.getValue(forReading:)(1, a2, v11);
  return LazyState.wrappedValue.modify;
}

uint64_t State<A>.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ExpressibleByNilLiteral.init(nilLiteral:)();
  *(a2 + *(type metadata accessor for State() + 28)) = 0;
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t StatePropertyBox.getState<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Binding();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v24 - v16);
  if (v7 == a3 && (v21 = *(v4 + 8)) != 0)
  {
    v22 = v15;

    StoredLocationBase.get()(v9);
    Binding.init(value:location:)(v9, v21, v17);
    (*(v11 + 32))(v13, v17, v22);
    v23 = type metadata accessor for Binding();
    swift_dynamicCast();
    return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
  }

  else
  {
    v18 = type metadata accessor for Binding();
    v19 = *(*(v18 - 8) + 56);

    return v19(a4, 1, 1, v18);
  }
}

unint64_t AnimationContext.init(environment:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = AnimationState.init()(&v7);
  *a3 = v7;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2 & 1;
  *(a3 + 17) = 0;
  return result;
}

uint64_t AnimationContext.environment.getter@<X0>(uint64_t *a1@<X8>)
{
  if ((*(v1 + 16) & 1) != 0 || (WeakValue = AGGraphGetWeakValue()) == 0)
  {
    v10 = 0;
    v11 = 0;
    swift_beginAccess();
    if (static ViewGraphHost.isDefaultEnvironmentConfigured != 1)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v8 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x68);
      v9 = static CoreGlue2.shared;
      v8(&v10);

      result = v10;
      v7 = v11;
      goto LABEL_16;
    }

    if (one-time initialization token for _defaultEnvironment != -1)
    {
      swift_once();
    }

    result = static ViewGraphHost._defaultEnvironment;
    if (static ViewGraphHost._defaultEnvironment)
    {
      v7 = *(static ViewGraphHost._defaultEnvironment + 64);
      if (!v7)
      {
        result = 0;
        goto LABEL_16;
      }
    }

    v7 = 0;
LABEL_16:
    *a1 = result;
    a1[1] = v7;
    return result;
  }

  v5 = *WeakValue;
  v4 = WeakValue[1];
  *a1 = v5;
  a1[1] = v4;
}

uint64_t AnimationContext.state.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

void *AnimationContext.init(state:environment:isLogicallyComplete:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

void *AnimationContext.init(state:environment:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  *(a4 + 17) = 0;
  return result;
}

unint64_t AnimationContext.init(environment:isLogicallyComplete:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = AnimationState.init()(&v9);
  *a4 = v9;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2 & 1;
  *(a4 + 17) = a3;
  return result;
}

uint64_t AnimationContext.init(state:environment:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = AGCreateWeakAttribute();
  *a2 = v3;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t AnimationContext.init(environment:isLogicallyComplete:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  AnimationState.init()(&v6);
  v4 = v6;
  result = AGCreateWeakAttribute();
  *a2 = v4;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 17) = a1;
  return result;
}

uint64_t AnimationContext.init(environment:)@<X0>(uint64_t a1@<X8>)
{
  AnimationState.init()(&v4);
  v2 = v4;
  result = AGCreateWeakAttribute();
  *a1 = v2;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t AnimationContext.withState<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 17);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;
}

uint64_t initializeBufferWithCopyOfBuffer for AnimationContext(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for AnimationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for AnimationContext(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnimationContext(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for AnimationContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _TestApp.RootView.StateType.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for AnyViewStorage<TestIDView<EmptyView, Int>>();
  result = swift_allocObject();
  *(result + 16) = 0;
  a1[1] = result;
  return result;
}

void _TestApp.RootView.StateType.setTestView<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11[0] = a2;
  v11[1] = MEMORY[0x1E69E6530];
  v11[2] = a3;
  v11[3] = MEMORY[0x1E69E6540];
  v6 = type metadata accessor for TestIDView();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v3 + 1;
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    *v3 = v9;
    v11[0] = v9;
    View.testID<A>(_:)(v11, a2, MEMORY[0x1E69E6530], v8);
    v10 = AnyView.init<A>(_:)(v8, v6);

    v4[1] = v10;
  }
}

void *property wrapper backing initializer of _TestApp.RootView.state@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  a2[2] = 0;
  return result;
}

uint64_t _TestApp.RootView.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for AnyViewStorage<TestIDView<EmptyView, Int>>();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = 0;
  a1[1] = result;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t _TestApp.RootView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static CoreGlue2.shared;
  if (!v6)
  {
    v15 = v4;
    v16 = v3;
    v12 = static CoreGlue2.shared;
LABEL_9:

    if (v5)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v8 = one-time initialization token for sharedGraph;
  v9 = static CoreGlue2.shared;

  if (v8 != -1)
  {
    swift_once();
  }

  Counter = AGGraphGetCounter();
  v11 = *v6;
  if (Counter)
  {
    (*(v11 + 104))(1);

    v15 = v4;
    v16 = v3;
    goto LABEL_9;
  }

  (*(v11 + 120))(&v15);

  v3 = v16;
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_12:
  static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v5 = AGMakeUniqueID();
LABEL_15:
  v13 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x70))(v3, v5);

  *a1 = v13;
  return result;
}

uint64_t closure #1 in variable initialization expression of static _TestApp.defaultEnvironment@<X0>(_OWORD *a1@<X8>)
{
  v86 = a1;
  _s10Foundation6LocaleVSgMaTm_1(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v82 = &v76 - v2;
  v81 = type metadata accessor for Calendar.Identifier();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Calendar();
  v4 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v76 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v76 - v9;
  v10 = type metadata accessor for TimeZone();
  v95 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v76 - v15;
  _s10Foundation6LocaleVSgMaTm_1(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v76 - v17;
  v18 = type metadata accessor for Locale();
  v91 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v93 = &v76 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v96 = &v76 - v27;
  EnvironmentValues.init()(&v98);
  type metadata accessor for FontBox<Font.NamedProvider>();
  v28 = swift_allocObject();
  strcpy((v28 + 16), "HelveticaNeue");
  *(v28 + 30) = -4864;
  *(v28 + 32) = 0x4031000000000000;
  *(v28 + 40) = 6;
  EnvironmentValues.font.setter(v28);
  v29 = v98;

  v31 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v30);
  if (!v31 || (value = v29, v31[9] != 2.0))
  {
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>();
    *(swift_allocObject() + 72) = 0x4000000000000000;
    _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, type metadata accessor for EnvironmentPropertyKey);
    value = PropertyList.Element.init(keyType:before:after:)(v33, 0, v29).value;
    *&v98 = value;
  }

  v34 = *(&v98 + 1);
  if (*(&v98 + 1))
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayScaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v29, value);
  }

  v92 = v18;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021SystemColorDefinitionF033_9E3352CE4697DF56A738786E16992848LLVG_Tt2g5(&v98, &type metadata for TestingSystemColorDefinition, &protocol witness table for TestingSystemColorDefinition);

  if (v34)
  {
    v35 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021SystemColorDefinitionK033_9E3352CE4697DF56A738786E16992848LLVG_Ttg5(value, v98);
  }

  else
  {

    v35 = v98;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(&v98, 16.0, 16.0, 16.0, 16.0);

  if (v34)
  {
    v36 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014DefaultPaddingK033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Ttg5(v35, v98);
  }

  else
  {

    v36 = v98;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE019PlatformColorSchemeF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(&v98, 0);

  if (v34)
  {
    v37 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE019PlatformColorSchemeK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v36, v98);
  }

  else
  {

    v37 = v98;
  }

  v38 = v10;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019ColorSchemeContrastF033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt2B5(&v98, 0);

  if (v34)
  {
    v39 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019ColorSchemeContrastK033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Ttg5(v37, v98);
  }

  else
  {

    v39 = v98;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(&v98, 8);

  v40 = v92;
  if (v34)
  {
    v41 = v98;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012SystemAccentgK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v39, v98);
  }

  else
  {

    v41 = v98;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013AppearsActiveF0VG_Tt2g5(&v98, 1);

  v97 = v38;
  v42 = v88;
  if (v34)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013AppearsActiveK0VG_Ttg5(v41, v98);
  }

  v84 = v4;

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v43 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x60);
  v44 = static CoreGlue2.shared;
  v43(&v98);

  v45 = v96;
  Locale.init(identifier:)();
  v46 = v91;
  v47 = *(v91 + 16);
  v47(v25, v45, v40);
  v48 = v93;
  v47(v93, v25, v40);
  v49 = v98;
  v76 = v47;
  v47(v20, v48, v40);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v98, v20);

  v51 = *(v46 + 8);
  v50 = (v46 + 8);
  v90 = v51;
  v51(v20, v40);
  v52 = *(&v98 + 1);
  if (*(&v98 + 1))
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v49, v98);
  }

  v53 = v90;
  v90(v93, v40);
  v93 = v50;
  v53(v25, v40);
  TimeZone.init(abbreviation:)();
  v54 = v97;
  result = (*(v95 + 48))(v42, 1, v97);
  v56 = v87;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v57 = *(v95 + 16);
    v57(v87, v42, v54);
    v58 = v98;
    v59 = v77;
    v57(v77, v56, v97);
    v60 = v95;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v98, v59);

    v61 = *(v60 + 8);
    v62 = v59;
    v63 = v97;
    v61(v62, v97);
    if (v52)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08TimeZoneK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v58, v98);
      v63 = v97;

      v42 = v88;
      v61(v56, v63);
    }

    else
    {
      v61(v56, v63);
    }

    v61(v42, v63);
    v64 = v80;
    v65 = v78;
    v66 = v81;
    (*(v80 + 104))(v78, *MEMORY[0x1E6969868], v81);
    Calendar.init(identifier:)();
    (*(v64 + 8))(v65, v66);
    v67 = v82;
    v76(v82, v96, v40);
    (*(v91 + 56))(v67, 0, 1, v40);
    Calendar.locale.setter();
    v68 = v98;
    if (v52)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v68, v79);
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v98, v79);
    }

    v69 = v85;
    v70 = v84;
    v71 = v94;
    Calendar.timeZone.setter();
    v72 = *(v70 + 16);
    v73 = v89;
    v72(v89, v71, v69);
    v74 = v83;
    v72(v83, v73, v69);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v98, v74);

    v75 = *(v70 + 8);
    v75(v74, v69);
    if (v52)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v68, v98);
    }

    v75(v89, v69);
    v75(v94, v69);
    result = (v90)(v96, v92);
    *v86 = v98;
  }

  return result;
}

uint64_t static _TestApp.defaultEnvironment.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultEnvironment != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1EAB26AB0;
  *a1 = static _TestApp.defaultEnvironment;
  a1[1] = v1;
}

void __swiftcall _TestApp.init()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x50);
  v1 = static CoreGlue2.shared;
  v0();
}

uint64_t static _TestApp.host.getter()
{
  return static _TestApp.host.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t static _TestApp.host.setter(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
  return swift_unknownObjectRelease();
}

uint64_t key path setter for static _TestApp.host : _TestApp.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = *a1;
  v9 = a1[1];
  swift_beginAccess();
  *a5 = v8;
  *a6 = v9;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t static _TestApp.renderOptions.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static _TestApp.renderOptions;
  return result;
}

uint64_t static _TestApp.renderOptions.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static _TestApp.renderOptions = v1;
  return result;
}

uint64_t static _TestApp.setIntents(_:)(void *a1)
{
  v1 = *&static _TestApp.testIntents;
  *&static _TestApp.testIntents = *a1;
  result = swift_beginAccess();
  if (static _TestApp.host)
  {
    v3 = off_1EAB26AC0;
    ObjectType = swift_getObjectType();
    v6 = *&static _TestApp.testIntents;
    v7 = v1;
    v5 = v3[17];
    swift_unknownObjectRetain();
    v5(&v7, &v6, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t static _TestApp.environmentOverride.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = static _TestApp.environmentOverride;
  v3 = unk_1EAB26AF0;
  *a1 = static _TestApp.environmentOverride;
  a1[1] = v3;
  return outlined copy of EnvironmentValues?(v2);
}

uint64_t static _TestApp.environmentOverride.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  v3 = static _TestApp.environmentOverride;
  static _TestApp.environmentOverride = v1;
  unk_1EAB26AF0 = v2;
  return outlined consume of EnvironmentValues?(v3);
}

uint64_t key path setter for static _TestApp.environmentOverride : _TestApp.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  v3 = static _TestApp.environmentOverride;
  static _TestApp.environmentOverride = v1;
  unk_1EAB26AF0 = v2;
  outlined copy of EnvironmentValues?(v1);
  return outlined consume of EnvironmentValues?(v3);
}

uint64_t static _TestApp.updateTestEnvironment(_:)(void (*a1)(uint64_t *))
{
  EnvironmentValues.init()(v4);
  a1(v4);
  v3[0] = v4[0];
  v3[1] = v4[1];

  specialized static _TestApp.setTestEnvironment(_:)(v3);
  outlined consume of EnvironmentValues?(v3[0]);
}

Swift::Void __swiftcall _TestApp.setSemantics(_:)(Swift::String a1)
{
  v1 = a1._countAndFlagsBits == 0x74736574616CLL && a1._object == 0xE600000000000000;
  if (v1 || (object = a1._object, countAndFlagsBits = a1._countAndFlagsBits, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (one-time initialization token for forced == -1)
    {
      v4 = -2;
LABEL_14:
      swift_beginAccess();
      static Semantics.forced = v4;
      byte_1ED53C51C = 0;
      return;
    }

LABEL_20:
    swift_once();
    v4 = -2;
    goto LABEL_14;
  }

  if (countAndFlagsBits == 0x6C616D6978616DLL && object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    v4 = -1;
    goto LABEL_14;
  }

  if ((countAndFlagsBits != 0x6D6574737973 || object != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    _StringGuts.grow(_:)(33);

    MEMORY[0x193ABEDD0](countAndFlagsBits, object);
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t withRenderOptions(_:_:)(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = swift_beginAccess();
  v5 = static _TestApp.renderOptions;
  static _TestApp.renderOptions = v3;
  result = a2(v4);
  static _TestApp.renderOptions = v5;
  return result;
}

uint64_t static EventSourceType.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v2 = 1;
  }

  if (!*a2)
  {
    return v2 == v3;
  }

  if (v3 == 1)
  {
    v3 = 1;
    return v2 == v3;
  }

LABEL_8:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t EventSourceType.hash(into:)()
{
  if (!*v0 || *v0 == 1)
  {
    return MEMORY[0x193AC11A0]();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int EventSourceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    v1 = 1;
LABEL_4:
    MEMORY[0x193AC11A0](v1);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance EventSourceType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 != 1)
    {
      goto LABEL_8;
    }

    v2 = 1;
  }

  if (!*a2)
  {
    return v2 == v3;
  }

  if (v3 == 1)
  {
    v3 = 1;
    return v2 == v3;
  }

LABEL_8:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance EventSourceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (!v1)
  {
    goto LABEL_4;
  }

  if (v1 == 1)
  {
    v1 = 1;
LABEL_4:
    MEMORY[0x193AC11A0](v1);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EventSourceType()
{
  if (!*v0 || *v0 == 1)
  {
    return MEMORY[0x193AC11A0]();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance EventSourceType()
{
  Hasher.init(_seed:)();
  if (*v0 && *v0 != 1)
  {
    result = _diagnoseUnavailableCodeReached()();
    __break(1u);
  }

  else
  {
    MEMORY[0x193AC11A0]();
    return Hasher._finalize()();
  }

  return result;
}

char *protocol witness for static CaseIterable.allCases.getter in conformance EventSourceType@<X0>(char **a1@<X8>)
{
  result = specialized static EventSourceType.allCases.getter();
  *a1 = result;
  return result;
}

_BYTE *static TestingSystemColorDefinition.value(for:environment:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, int32x4_t *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = xmmword_18DE0F8D0;
  v6 = 2143289344;
  switch(*result)
  {
    case 1:
      v5 = xmmword_18DE0F950;
      goto LABEL_17;
    case 2:
      v5 = xmmword_18DE0F940;
      goto LABEL_17;
    case 3:
      v5 = xmmword_18DE0F960;
      goto LABEL_17;
    case 4:
    case 5:
    case 6:
      v5 = xmmword_18DE0F900;
      goto LABEL_17;
    case 7:
      v5 = xmmword_18DDBDEB0;
      goto LABEL_17;
    case 8:
      v5 = xmmword_18DE0F910;
      goto LABEL_17;
    case 9:
      v5 = xmmword_18DE0F920;
      goto LABEL_17;
    case 0xA:
      v5 = xmmword_18DE0F930;
      goto LABEL_17;
    case 0xB:
      v5 = xmmword_18DE0F8F0;
      goto LABEL_17;
    case 0xC:
      goto LABEL_18;
    case 0xD:
      v17.i64[0] = *a2;
      v17.i64[1] = v4;
      v8 = a3;
      result = EnvironmentValues.colorScheme.getter(v15);
      a3 = v8;
      v9 = 1.0;
      if (!LOBYTE(v15[0]))
      {
        v9 = 0.0;
      }

      __asm { FMOV            V0.4S, #1.0 }

      *_Q0.i32 = v9;
      v5 = vzip1q_s32(_Q0, _Q0);
      *&v5.i32[2] = v9;
      goto LABEL_17;
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
      v16 = 12;
      v15[0] = v3;
      v15[1] = v4;
      v7 = a3;
      result = static TestingSystemColorDefinition.value(for:environment:)(&v17, &v16, v15, xmmword_18DE0F8D0, NAN);
      a3 = v7;
      v5 = v17;
      v6 = v18;
      goto LABEL_18;
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
      v5 = xmmword_18DE0F8E0;
      goto LABEL_17;
    default:
      v5 = xmmword_18DE0F970;
LABEL_17:
      v6 = 2143289344;
LABEL_18:
      *a3 = v5;
      a3[1].i32[0] = v6;
      return result;
  }
}

double protocol witness for static SystemColorDefinition.value(for:environment:) in conformance TestingSystemColorDefinition@<D0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, int32x4_t *a3@<X8>)
{
  static TestingSystemColorDefinition.value(for:environment:)(a1, a2, &v5);
  result = *v5.i64;
  *a3 = v5;
  a3[1].i32[0] = v6;
  return result;
}

float protocol witness for static SystemColorDefinition.opacity(at:environment:) in conformance TestingSystemColorDefinition(uint64_t a1)
{
  result = 0.25;
  if (a1 == 2)
  {
    result = 0.5;
  }

  if (a1 == 1)
  {
    result = 0.75;
  }

  if (a1 <= 0)
  {
    return 1.0;
  }

  return result;
}

uint64_t specialized static _TestApp.setTestEnvironment(_:)(Swift::UInt *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == 1)
  {
    swift_beginAccess();
    v3 = static _TestApp.environmentOverride;
    static _TestApp.environmentOverride = 1;
    unk_1EAB26AF0 = v1;
    outlined consume of EnvironmentValues?(v3);
    goto LABEL_20;
  }

  v4 = one-time initialization token for defaultEnvironment;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static _TestApp.defaultEnvironment;
  v5 = unk_1EAB26AB0;
  if (static _TestApp.defaultEnvironment)
  {
    if (v2)
    {
      if (*(static _TestApp.defaultEnvironment + 24))
      {
        _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_0(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
        swift_allocObject();

        swift_retain_n();

        v7.value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v2, v6).value;
      }

      else
      {
        v9 = *(static _TestApp.defaultEnvironment + 32);
        v10 = *(*static _TestApp.defaultEnvironment + 216);

        swift_retain_n();

        v7.value = v10(v11, v9);
      }
    }

    else
    {

      swift_retain_n();
      v7.value = v6;
    }

    v8 = *(v6 + 64);
    goto LABEL_14;
  }

  if (v2)
  {

    v8 = 0;
    v7.value = v2;
LABEL_14:
    if (v8 == *(v7.value + 64))
    {
      v7.value = v6;
    }

    else if (v5)
    {
      PropertyList.Tracker.invalidateAllValues(from:to:)(v6, v7.value);
    }

    goto LABEL_19;
  }

  v7.value = 0;
LABEL_19:
  swift_beginAccess();
  v12 = static _TestApp.environmentOverride;
  static _TestApp.environmentOverride = v7.value;
  unk_1EAB26AF0 = v5;

  outlined consume of EnvironmentValues?(v12);
  outlined consume of EnvironmentValues?(v2);

LABEL_20:
  swift_beginAccess();
  if (static _TestApp.host)
  {
    v13 = off_1EAB26AC0;
    ObjectType = swift_getObjectType();
    v15 = v13[18];
    swift_unknownObjectRetain();
    v15(2, 0, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  result = swift_beginAccess();
  if (static _TestApp.comparisonHost)
  {
    v17 = off_1EAB26AD0;
    v18 = swift_getObjectType();
    v19 = v17[18];
    swift_unknownObjectRetain();
    v19(2, 0, v18, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *specialized static EventSourceType.allCases.getter()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = 1;
  return v0;
}

unint64_t lazy protocol witness table accessor for type EventSourceType and conformance EventSourceType()
{
  result = lazy protocol witness table cache variable for type EventSourceType and conformance EventSourceType;
  if (!lazy protocol witness table cache variable for type EventSourceType and conformance EventSourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventSourceType and conformance EventSourceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [EventSourceType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [EventSourceType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [EventSourceType] and conformance [A])
  {
    type metadata accessor for [EventSourceType]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [EventSourceType] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [EventSourceType]()
{
  if (!lazy cache variable for type metadata for [EventSourceType])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [EventSourceType]);
    }
  }
}

uint64_t keypath_getTm_6@<X0>(_OWORD *a1@<X3>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
  return swift_unknownObjectRetain();
}

void *initializeWithCopy for _TestApp.RootView(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for _TestApp.RootView(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for _TestApp.RootView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *assignWithCopy for _TestApp.RootView.StateType(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for _TestApp.RootView.StateType(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

unint64_t lazy protocol witness table accessor for type RootViewID and conformance RootViewID()
{
  result = lazy protocol witness table cache variable for type RootViewID and conformance RootViewID;
  if (!lazy protocol witness table cache variable for type RootViewID and conformance RootViewID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootViewID and conformance RootViewID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RootViewID and conformance RootViewID;
  if (!lazy protocol witness table cache variable for type RootViewID and conformance RootViewID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootViewID and conformance RootViewID);
  }

  return result;
}

void _s10Foundation6LocaleVSgMaTm_1(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for FontBox<Font.NamedProvider>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.NamedProvider>)
  {
    lazy protocol witness table accessor for type Font.NamedProvider and conformance Font.NamedProvider();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.NamedProvider>);
    }
  }
}

void _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t ObjectCache.__allocating_init(constructor:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjectCache.init(constructor:)(a1, a2);
  return v4;
}

uint64_t ObjectCache.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = *v2;
  v6 = v5[11];
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v25 - v7;
  v33 = type metadata accessor for Optional();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = v5[10];
  v14 = v5[12];
  v15 = dispatch thunk of Hashable.hashValue.getter();
  v37 = 0;
  v36 = 0x80000000;
  ObjectCache.$data.getter(&v35);
  v16 = v35;
  os_unfair_lock_lock(v35 + 4);
  v26 = 4 * (v15 & 7);
  v27 = v15;
  v28 = a1;
  v32 = v13;
  closure #1 in ObjectCache.subscript.getter(&v16[6], v26, v15, a1, &v36, &v37, v13, v6, v12, v14);
  v17 = type metadata accessor for ObjectCache.Data();
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(&v16[4], v16, v17);

  v18 = v30;
  v19 = v33;
  (*(v30 + 16))(v9, v12, v33);
  v20 = (*(v34 + 48))(v9, 1, v6);
  v21 = *(v18 + 8);
  if (v20 == 1)
  {
    v30 = v17;
    v21(v9, v19);
    v22 = v28;
    v9 = v29;
    (v3[2])(v28);
    ObjectCache.$data.getter(&v35);
    v23 = v35;
    os_unfair_lock_lock(v35 + 4);
    closure #2 in ObjectCache.subscript.getter(&v23[6], v26, &v37, v22, v27, v9, v32, v6, v14);
    $defer #1 <A>() in AtomicBox.wrappedValue.getter(&v23[4], v23, v30);
    v21(v12, v33);
  }

  else
  {
    v21(v12, v19);
  }

  return (*(v34 + 32))(v31, v9, v6);
}

uint64_t ObjectCache.Item.init(data:used:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  swift_getTupleTypeMetadata3();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ObjectCache.Item();
  *(a3 + *(result + 44)) = a2;
  return result;
}

uint64_t ObjectCache.Data.init()()
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v1 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for ObjectCache.Item();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(*(TupleTypeMetadata3 - 8) + 56))(v3, 1, 1, TupleTypeMetadata3, v6);
  ObjectCache.Item.init(data:used:)(v3, 0, v8);
  v9 = specialized Array.init(repeating:count:)(v8, 32, v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t property wrapper backing initializer of ObjectCache.data@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = a1;
  v7 = a2;
  v4 = type metadata accessor for ObjectCache.Data();
  return AtomicBox.init(wrappedValue:)(&v6, v4, a3);
}

uint64_t ObjectCache.$data.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for ObjectCache.Data();
  type metadata accessor for AtomicBox();
  return AtomicBox.projectedValue.getter(a1);
}

void *ObjectCache.init(constructor:)(uint64_t a1, uint64_t a2)
{
  v10 = ObjectCache.Data.init()();
  v11 = v5;
  v6 = type metadata accessor for ObjectCache.Data();
  AtomicBox.init(wrappedValue:)(&v10, v6, &v9);
  v7 = v9;
  v2[3] = a2;
  v2[4] = v7;
  v2[2] = a1;
  return v2;
}

void closure #1 in ObjectCache.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a4;
  v68 = a6;
  v70 = a3;
  v58 = a9;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v75 = type metadata accessor for Optional();
  v16 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v18 = &v56 - v17;
  v61 = a10;
  v62 = a7;
  v59 = a8;
  v19 = a5;
  v78 = type metadata accessor for ObjectCache.Item();
  MEMORY[0x1EEE9AC00](v78);
  v65 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v56 - v22;
  v76 = TupleTypeMetadata3;
  MEMORY[0x1EEE9AC00](v23);
  v57 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  v28 = 0;
  v71 = a1;
  v77 = *a1;
  v30 = (v29 + 48);
  v72 = (v29 + 32);
  v73 = (v16 + 32);
  v64 = (v29 + 8);
  v56 = v31;
  v63 = (v31 + 8);
  v69 = (v16 + 8);
  v66 = v19;
  v67 = a2;
  while (1)
  {
    v32 = a2 + v28;
    if (__OFADD__(a2, v28))
    {
      break;
    }

    v33 = v74;
    Array.subscript.getter();
    v34 = v75;
    (*v73)(v18, v33, v75);
    v35 = v76;
    if ((*v30)(v18, 1, v76) == 1)
    {
      (*v69)(v18, v34);
      v36 = 0x7FFFFFFF;
      if (*v19 == 0x7FFFFFFF)
      {
        goto LABEL_3;
      }

LABEL_2:
      *v68 = v28;
      *v19 = v36;
      goto LABEL_3;
    }

    v37 = *v72;
    v38 = v27;
    (*v72)(v27, v18, v35);
    if (*&v27[*(v35 + 48)] == v70)
    {
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = v76;
      if (v39)
      {
        v44 = v59;
        type metadata accessor for ObjectCache.Data();
        v45 = v71;
        v46 = *(v71 + 2) + 1;
        *(v71 + 2) = v46;
        v47 = v78;
        v48 = type metadata accessor for Array();
        Array._makeMutableAndUnique()();
        v49 = *v45;
        Array._checkSubscript_mutating(_:)(v32);
        *(v49 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v32 + *(v47 + 44)) = v46;
        _ViewInputs.base.modify(v48, v50);
        v51 = v57;
        v52 = v76;
        v37(v57, v38, v76);
        v53 = *(v52 + 64);
        v54 = *(v44 - 8);
        v55 = v58;
        (*(v54 + 32))(v58, &v51[v53], v44);
        (*(v54 + 56))(v55, 0, 1, v44);
        (*(*(v62 - 8) + 8))(v51);
        return;
      }
    }

    v40 = *(v71 + 2);
    v41 = v65;
    v42 = v78;
    Array.subscript.getter();
    (*v64)(v27, v35);
    v43 = *&v41[*(v42 + 44)];
    (*v63)(v41, v42);
    v36 = v40 - v43;
    v19 = v66;
    a2 = v67;
    if (*v66 < v36)
    {
      goto LABEL_2;
    }

LABEL_3:
    if (++v28 == 4)
    {
      (*(*(v59 - 8) + 56))(v58, 1, 1);
      return;
    }
  }

  __break(1u);
}

void closure #2 in ObjectCache.subscript.getter(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v36 = a3;
  v37 = a2;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v32 - v14;
  v16 = type metadata accessor for ObjectCache.Item();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v32 - v19;
  v21 = (v37 + *v36);
  if (__OFADD__(v37, *v36))
  {
    __break(1u);
  }

  else
  {
    v22 = *(TupleTypeMetadata3 + 48);
    v32[1] = a9;
    v23 = *(TupleTypeMetadata3 + 64);
    v24 = *(*(a7 - 8) + 16);
    v36 = v21;
    v32[0] = v20;
    v24(v15, v33, a7, v18);
    v25 = v35;
    *&v15[v22] = v34;
    (*(*(a8 - 8) + 16))(&v15[v23], v25, a8);
    (*(*(TupleTypeMetadata3 - 8) + 56))(v15, 0, 1, TupleTypeMetadata3);
    type metadata accessor for ObjectCache.Data();
    v26 = *(a1 + 2) + 1;
    *(a1 + 2) = v26;
    v27 = v32[0];
    ObjectCache.Item.init(data:used:)(v15, v26, v32[0]);
    v28 = type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v29 = *a1;
    v30 = v36;
    Array._checkSubscript_mutating(_:)(v36);
    (*(v17 + 40))(v29 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v30, v27, v16);
    _ViewInputs.base.modify(v28, v31);
  }
}

uint64_t ObjectCache.deinit()
{

  return v0;
}

uint64_t ObjectCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized Array.init(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static Array._allocateUninitialized(_:)();
  v16 = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = v7;
      v9 = *(a3 - 8);
      v10 = *(v9 + 16);
      v10(v7, a1, a3);
      v11 = a2 - 1;
      if (v11)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12;
        do
        {
          v10(v13, a1, a3);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    v14 = type metadata accessor for Array();
    _ViewInputs.base.modify(v14, v15);
    return v16;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ObjectCache.Item(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  v13 = (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  v14 = *(v9 + 64);
  v15 = v13 + v14;
  v16 = v10 | v8;
  if (v10 | v8)
  {
    v17 = v13 + v14;
  }

  else
  {
    v17 = v15 + 1;
  }

  v18 = v12 | *(v7 + 80) & 0xF8;
  if (v18 <= 7 && ((*(v7 + 80) | *(v9 + 80)) & 0x100000) == 0 && ((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4 <= 0x18)
  {
    if (v16)
    {
      if (v8 >= v10)
      {
        if (!(*(v7 + 48))(a2))
        {
          goto LABEL_35;
        }
      }

      else if (!(*(v9 + 48))(((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v10, v5))
      {
LABEL_35:
        (*(v7 + 16))(a1, a2, v6);
        v25 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        v26 = ((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v25 = *v26;
        (*(v9 + 16))(v25 + 1, v26 + 1, v5);
        if (!v16)
        {
          *(a1 + v15) = 0;
        }

        goto LABEL_37;
      }
    }

    else
    {
      if (!*(a2 + v15))
      {
        goto LABEL_35;
      }

      v22 = (*(a2 + v15) - 1) << (8 * v15);
      if (v15 > 3)
      {
        v22 = 0;
      }

      if (v15)
      {
        v23 = v15 <= 3 ? v15 : 4;
        if (v23 > 2)
        {
          v24 = v23 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
        }

        else
        {
          v24 = v23 == 1 ? *a2 : *a2;
        }
      }

      else
      {
        v24 = 0;
      }

      if ((v24 | v22) == 0xFFFFFFFF)
      {
        goto LABEL_35;
      }
    }

    memcpy(a1, a2, v17);
LABEL_37:
    *((a1 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((a2 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    return a1;
  }

  v21 = *a2;
  *a1 = *a2;
  a1 = (v21 + (((v18 | 7) + 16) & ~(v18 | 7)));

  return a1;
}

unsigned __int16 *assignWithCopy for ObjectCache.Item(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v42 = *(a3 + 24);
  v8 = *(v42 - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v41 = ~v11;
  v12 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v8 + 64);
  v13 = v9 | v7;
  v39 = v10;
  v40 = v6;
  if (!(v9 | v7))
  {
    v18 = 8 * v12;
    if (*(a1 + v12))
    {
      v19 = (*(a1 + v12) - 1) << v18;
      if (v12 > 3)
      {
        v19 = 0;
      }

      if (v12)
      {
        v20 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
        if (v20 > 2)
        {
          v21 = v20 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v21 = v20 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v21 | v19) != 0xFFFFFFFF)
      {
        if (!*(a2 + v12))
        {
          goto LABEL_63;
        }

        v24 = (*(a2 + v12) - 1) << v18;
        if (v12 > 3)
        {
          v24 = 0;
        }

        if (v12)
        {
          v25 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
          if (v25 > 2)
          {
            v26 = v25 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
          }

          else
          {
            v26 = v25 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v26 = 0;
        }

        if ((v26 | v24) == 0xFFFFFFFF)
        {
          goto LABEL_63;
        }

LABEL_55:
        if (v13)
        {
          v30 = v12;
        }

        else
        {
          v30 = v12 + 1;
        }

        memcpy(a1, v3, v30);
        goto LABEL_65;
      }
    }

    if (!*(a2 + v12))
    {
      goto LABEL_59;
    }

    v27 = (*(a2 + v12) - 1) << v18;
    if (v12 > 3)
    {
      v27 = 0;
    }

    if (v12)
    {
      v28 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
      if (v28 > 2)
      {
        v29 = v28 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v29 = v28 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v29 = 0;
    }

    v10 = *(*(*(a3 + 16) - 8) + 64);
    v6 = *(*(a3 + 16) - 8);
    if ((v29 | v27) == 0xFFFFFFFF)
    {
LABEL_59:
      (*(v6 + 24))(a1, v3, v5);
      v31 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      v32 = ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v31 = *v32;
      (*(v8 + 24))((v31 + v11 + 8) & v41, (v32 + v11 + 8) & v41, v42);
      goto LABEL_65;
    }

LABEL_54:
    (*(v6 + 8))(a1, v5);
    (*(v8 + 8))((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v42);
    goto LABEL_55;
  }

  v38 = v9 | v7;
  if (v7 < v9)
  {
    v15 = *(*(*(a3 + 16) - 8) + 64);
    v16 = *(v8 + 48);
    v37 = v16((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v9, v42);
    v17 = v16((((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v9, v42);
    v3 = a2;
    v13 = v38;
    if (v37)
    {
      goto LABEL_4;
    }

LABEL_17:
    v10 = v39;
    v6 = v40;
    if (!v17)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  v22 = *(v6 + 48);
  v23 = v22(a1, v7, v5);
  v17 = v22(a2, v7, v5);
  v3 = a2;
  v13 = v38;
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v17)
  {
    goto LABEL_55;
  }

LABEL_63:
  (*(v40 + 16))(a1, v3, v5);
  v33 = ((a1 + v39 + 7) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v3 + v39 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  (*(v8 + 16))((v33 + v11 + 8) & v41, (v34 + v11 + 8) & v41, v42);
  if (!v13)
  {
    *(a1 + v12) = 0;
  }

LABEL_65:
  if (v13)
  {
    v35 = v12;
  }

  else
  {
    v35 = v12 + 1;
  }

  *((a1 + v35 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((v3 + v35 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

void *initializeWithTake for ObjectCache.Item(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  v13 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + *(v9 + 64);
  v14 = v10 | v8;
  if (!(v10 | v8))
  {
    if (!*(a2 + v13))
    {
      goto LABEL_26;
    }

    v15 = (*(a2 + v13) - 1) << (8 * v13);
    if (v13 > 3)
    {
      v15 = 0;
    }

    if (v13)
    {
      v16 = v13 <= 3 ? ((v12 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v12) + *(v9 + 64) : 4;
      if (v16 > 2)
      {
        v17 = v16 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v17 = v16 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v17 = 0;
    }

    if ((v17 | v15) == 0xFFFFFFFF)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  if (v8 >= v10)
  {
    if (!(*(v7 + 48))(a2))
    {
      goto LABEL_26;
    }

LABEL_16:
    if (v14)
    {
      v18 = v13;
    }

    else
    {
      v18 = v13 + 1;
    }

    memcpy(a1, a2, v18);
    goto LABEL_28;
  }

  if ((*(v9 + 48))((((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12, v10, v5))
  {
    goto LABEL_16;
  }

LABEL_26:
  (*(v7 + 32))(a1, a2, v6);
  v19 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((a2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  (*(v9 + 32))((v19 + v12 + 8) & ~v12, (v20 + v12 + 8) & ~v12, v5);
  if (!v14)
  {
    *(a1 + v13) = 0;
  }

LABEL_28:
  if (v14)
  {
    v21 = v13;
  }

  else
  {
    v21 = v13 + 1;
  }

  *((a1 + v21 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((a2 + v21 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

unsigned __int16 *assignWithTake for ObjectCache.Item(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v42 = *(a3 + 24);
  v8 = *(v42 - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v41 = ~v11;
  v12 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v8 + 64);
  v13 = v9 | v7;
  v39 = v10;
  v40 = v6;
  if (!(v9 | v7))
  {
    v18 = 8 * v12;
    if (*(a1 + v12))
    {
      v19 = (*(a1 + v12) - 1) << v18;
      if (v12 > 3)
      {
        v19 = 0;
      }

      if (v12)
      {
        v20 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
        if (v20 > 2)
        {
          v21 = v20 == 3 ? *a1 | (*(a1 + 2) << 16) : *a1;
        }

        else
        {
          v21 = v20 == 1 ? *a1 : *a1;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((v21 | v19) != 0xFFFFFFFF)
      {
        if (!*(a2 + v12))
        {
          goto LABEL_63;
        }

        v24 = (*(a2 + v12) - 1) << v18;
        if (v12 > 3)
        {
          v24 = 0;
        }

        if (v12)
        {
          v25 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
          if (v25 > 2)
          {
            v26 = v25 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
          }

          else
          {
            v26 = v25 == 1 ? *a2 : *a2;
          }
        }

        else
        {
          v26 = 0;
        }

        if ((v26 | v24) == 0xFFFFFFFF)
        {
          goto LABEL_63;
        }

LABEL_55:
        if (v13)
        {
          v30 = v12;
        }

        else
        {
          v30 = v12 + 1;
        }

        memcpy(a1, v3, v30);
        goto LABEL_65;
      }
    }

    if (!*(a2 + v12))
    {
      goto LABEL_59;
    }

    v27 = (*(a2 + v12) - 1) << v18;
    if (v12 > 3)
    {
      v27 = 0;
    }

    if (v12)
    {
      v28 = v12 <= 3 ? ((v11 + ((v10 + 7) & 0xFFFFFFF8) + 8) & ~v11) + *(v8 + 64) : 4;
      if (v28 > 2)
      {
        v29 = v28 == 3 ? *a2 | (*(a2 + 2) << 16) : *a2;
      }

      else
      {
        v29 = v28 == 1 ? *a2 : *a2;
      }
    }

    else
    {
      v29 = 0;
    }

    v10 = *(*(*(a3 + 16) - 8) + 64);
    v6 = *(*(a3 + 16) - 8);
    if ((v29 | v27) == 0xFFFFFFFF)
    {
LABEL_59:
      (*(v6 + 40))(a1, v3, v5);
      v31 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      v32 = ((v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v31 = *v32;
      (*(v8 + 40))((v31 + v11 + 8) & v41, (v32 + v11 + 8) & v41, v42);
      goto LABEL_65;
    }

LABEL_54:
    (*(v6 + 8))(a1, v5);
    (*(v8 + 8))((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v42);
    goto LABEL_55;
  }

  v38 = v9 | v7;
  if (v7 < v9)
  {
    v15 = *(*(*(a3 + 16) - 8) + 64);
    v16 = *(v8 + 48);
    v37 = v16((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v9, v42);
    v17 = v16((((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v41, v9, v42);
    v3 = a2;
    v13 = v38;
    if (v37)
    {
      goto LABEL_4;
    }

LABEL_17:
    v10 = v39;
    v6 = v40;
    if (!v17)
    {
      goto LABEL_59;
    }

    goto LABEL_54;
  }

  v22 = *(v6 + 48);
  v23 = v22(a1, v7, v5);
  v17 = v22(a2, v7, v5);
  v3 = a2;
  v13 = v38;
  if (!v23)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v17)
  {
    goto LABEL_55;
  }

LABEL_63:
  (*(v40 + 32))(a1, v3, v5);
  v33 = ((a1 + v39 + 7) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v3 + v39 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  (*(v8 + 32))((v33 + v11 + 8) & v41, (v34 + v11 + 8) & v41, v42);
  if (!v13)
  {
    *(a1 + v12) = 0;
  }

LABEL_65:
  if (v13)
  {
    v35 = v12;
  }

  else
  {
    v35 = v12 + 1;
  }

  *((a1 + v35 + 3) & 0xFFFFFFFFFFFFFFFCLL) = *((v3 + v35 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for ObjectCache.Item(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64);
  v13 = *(v7 + 80);
  v14 = *(*(v6 - 8) + 64);
  if (!v10)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 < a2)
  {
    v15 = ((v14 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v16 = a2 - v11;
    v17 = v15 & 0xFFFFFFFC;
    if ((v15 & 0xFFFFFFFC) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = v16 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v21 = *(a1 + v15);
        if (v21)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v20)
    {
      v21 = *(a1 + v15);
      if (v21)
      {
LABEL_24:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          v23 = *a1;
        }

        else
        {
          v23 = 0;
        }

        return v11 + (v23 | v22) + 1;
      }
    }
  }

  if (v10 < 2)
  {
    return 0;
  }

  if (v5 >= v9)
  {
    v25 = (*(v4 + 48))(a1, v5);
  }

  else
  {
    v25 = (*(v8 + 48))((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13, v9, v6);
  }

  if (v25 >= 2)
  {
    return v25 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for ObjectCache.Item(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + *(*(v8 - 8) + 64);
  v16 = 3;
  if (!v13)
  {
    v16 = 4;
  }

  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  if (v14 < a3)
  {
    v18 = a3 - v14;
    if (((v16 + v15) & 0xFFFFFFFC) == 0xFFFFFFFC)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (v17)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v14;
    }

    if (v17)
    {
      v22 = ~v14 + a2;
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v17) = v21;
      }

      else
      {
        *(a1 + v17) = v21;
      }
    }

    else if (v5)
    {
      *(a1 + v17) = v21;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v17) = 0;
  }

  else if (v5)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v13 >= 2)
  {
    if (a2 >= v13)
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
        v28 = v27 & (a2 - v13);
        if (v15 <= 3)
        {
          v29 = v15;
        }

        else
        {
          v29 = 4;
        }

        v30 = a1;
        bzero(a1, v15);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v30 = v28;
            *(v30 + 2) = BYTE2(v28);
          }

          else
          {
            *v30 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v30 = v28;
        }

        else
        {
          *v30 = v28;
        }
      }
    }

    else if (v7 >= v10)
    {
      v31 = *(v6 + 56);

      v31();
    }

    else
    {
      v24 = *(v9 + 56);
      v25 = (((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
      v26 = a2 + 1;

      v24(v25, v26, v10, v8);
    }
  }
}

float64x2_t static CGSize.+= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vaddq_f64(*a1, a2);
  *a1 = result;
  return result;
}

float64x2_t static CGSize.-= infix(_:_:)(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  a2.f64[1] = a3;
  result = vsubq_f64(*a1, a2);
  *a1 = result;
  return result;
}

float64x2_t static CGSize.*= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vmulq_n_f64(*a1, a2);
  *a1 = result;
  return result;
}

float64x2_t static CGSize./= infix(_:_:)(float64x2_t *a1, double a2)
{
  result = vmulq_n_f64(*a1, 1.0 / a2);
  *a1 = result;
  return result;
}

CGSize __swiftcall mix(_:_:by:)(CGSize _, CGSize a2, Swift::Double by)
{
  v3 = (a2.width - _.width) * by + _.width;
  v4 = (a2.height - _.height) * by + _.height;
  result.height = v4;
  result.width = v3;
  return result;
}

Swift::Void __swiftcall CGSize.normalize()()
{
  v1 = *v0;
  v2 = vaddvq_f64(vmulq_f64(v1, v1));
  if (v2 != 0.0)
  {
    *v0 = vmulq_n_f64(v1, 1.0 / sqrt(v2));
  }
}

CGSize __swiftcall CGSize.normalized()()
{
  v2 = v0 * v0 + v1 * v1;
  if (v2 != 0.0)
  {
    v3 = 1.0 / sqrt(v2);
    v0 = v3 * v0;
    v1 = v3 * v1;
  }

  result.height = v1;
  result.width = v0;
  return result;
}

uint64_t specialized _ViewList_ID.explicitID<A>(owner:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = (a2 + 48);
    v7 = (a2 + 48);
    while (1)
    {
      v8 = *v7;
      v7 += 6;
      if (v8 == v5)
      {
        v9 = *(**(v6 - 2) + 80);
        v10 = lazy protocol witness table accessor for type UniqueID and conformance UniqueID();

        v9(&v12, &type metadata for UniqueID, &type metadata for UniqueID, v10);

        if ((v13 & 1) == 0)
        {
          break;
        }
      }

      v6 = v7;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    v11 = 0;
    *a3 = v12;
  }

  else
  {
LABEL_7:
    *a3 = 0;
    v11 = 1;
  }

  *(a3 + 8) = v11;
  return result;
}

void static DebugReplaceableView.invalidateEverything()()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static LazyContainerManager.instance);
  v0 = off_1EAB13158;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v1 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v2 = *(v0[2] + 16);
  if (v2)
  {
    v3 = *MEMORY[0x1E698D3F8];

    v4 = 32;
    do
    {
      if (AGWeakAttributeGetAttribute() != v3)
      {
        AGGraphInvalidateValue();
      }

      v4 += 8;
      --v2;
    }

    while (v2);
  }

  static Update.end()();
  _MovableLockUnlock(v1);

  os_unfair_lock_unlock(&static LazyContainerManager.instance);
}

uint64_t LazyContainerManager.removeSignal(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    while (v4 < *(v1 + 16))
    {
      result = static WeakAttribute.== infix(_:_:)();
      if (result)
      {

        return specialized Array.remove(at:)(v4);
      }

      if (v2 == ++v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }

  return result;
}

uint64_t one-time initialization function for instance()
{
  type metadata accessor for LazyContainerManager();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  static LazyContainerManager.instance = 0;
  off_1EAB13158 = result;
  return result;
}

char *static ResettableLazyLayoutsFeature.isEnabled.getter()
{
  swift_beginAccess();
  if (static ResettableLazyLayoutsFeature.isEnabledForTesting)
  {
    return 1;
  }

  result = getenv("XCODE_RUNNING_FOR_PREVIEWS");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

id ResettableContainer.init(content:inputs:outputs:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a2[2];
  v19 = a2[3];
  v20 = a2[4];
  v21 = *(a2 + 20);
  v16 = *a2;
  v17 = a2[1];
  v6 = *a3;
  v7 = a3[1];
  v8 = Attribute.init<A>(body:value:flags:update:)();
  v9 = AGCreateWeakAttribute();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static LazyContainerManager.instance);
  v10 = off_1EAB13158;
  v11 = *(off_1EAB13158 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10[2] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    v10[2] = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  *&v11[8 * v14 + 32] = v9;
  v10[2] = v11;
  os_unfair_lock_unlock(&static LazyContainerManager.instance);
  result = AGSubgraphGetCurrent();
  if (!result)
  {
    __break(1u);
  }

  *(a4 + 40) = v18;
  *(a4 + 56) = v19;
  *(a4 + 72) = v20;
  *(a4 + 8) = v16;
  *a4 = a1;
  *(a4 + 4) = v8;
  *(a4 + 88) = v21;
  *(a4 + 24) = v17;
  *(a4 + 96) = v6;
  *(a4 + 104) = v7;
  *(a4 + 112) = result;
  return result;
}

uint64_t ResettableListContainer.init(content:inputs:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  *a3 = a1;
  *(a3 + 4) = Attribute.init<A>(body:value:flags:update:)();
  v5 = AGCreateWeakAttribute();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static LazyContainerManager.instance);
  v6 = off_1EAB13158;
  v7 = *(off_1EAB13158 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[2] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    v6[2] = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  *&v7[8 * v10 + 32] = v5;
  v6[2] = v7;
  os_unfair_lock_unlock(&static LazyContainerManager.instance);
  outlined init with copy of _ViewListInputs(a2, a3 + 8);
  v11 = AGSubgraphGetCurrent();
  if (!v11)
  {
    __break(1u);
  }

  *(a3 + 144) = v11;
  type metadata accessor for ResettableListContainer.Item();
  type metadata accessor for Unmanaged();
  type metadata accessor for Array();
  type metadata accessor for MutableBox();
  v12 = static Array._allocateUninitialized(_:)();
  outlined destroy of _ViewListInputs(a2);
  v14[0] = v12;
  result = MutableBox.__allocating_init(_:)(v14);
  *(a3 + 152) = result;
  *(a3 + 160) = 0;
  return result;
}

Swift::Void __swiftcall ResettableContainer.updateValue()()
{
  v2 = v0;
  v18[1] = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  v4 = v3;
  type metadata accessor for AGSubgraphRef(0);
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue || (v4 & 1) != 0)
  {
    if (OutputValue)
    {
      v6 = *OutputValue;
      v7 = *(v1 + 96);
      v8 = *(v1 + 108);
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = *MEMORY[0x1E698D3F8];
        v11 = v7 + 48;
        v12 = v6;

        do
        {
          v11 += 24;
          AGGraphSetIndirectAttribute();
          --v9;
        }

        while (v9);
      }

      else
      {
        v13 = v6;

        v10 = *MEMORY[0x1E698D3F8];
      }

      if (v8 != v10)
      {
        AGGraphSetIndirectAttribute();
      }

      AGSubgraphRef.willInvalidate(isInserted:)(1);
      AGSubgraphInvalidate();
    }

    v14 = AGSubgraphGetGraph();
    v15 = AGSubgraphCreate();

    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v16 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in ResettableContainer.updateValue()(v1, v15, *(v2 + 16), *(v2 + 24), v18);
    AGSubgraphSetCurrent();

    v17 = v18[0];
    AGGraphSetUpdate();
    v18[0] = v17;
    AGGraphSetOutputValue();
  }
}

id closure #1 in ResettableContainer.updateValue()@<X0>(unsigned int *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 6);
  v9 = *(a1 + 14);
  v59[2] = *(a1 + 10);
  v59[3] = v9;
  v59[4] = *(a1 + 18);
  v60 = a1[22];
  v59[0] = *(a1 + 2);
  v59[1] = v8;
  v10 = v8;
  v58 = v59[0];
  v11 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = *(a1 + 4);
  *(v57 + 12) = *(a1 + 19);
  v56 = v12;
  v57[0] = v13;
  v55 = v11;
  swift_beginAccess();
  v14 = v10[3];
  v61[1] = v10[2];
  v61[2] = v14;
  v15 = v10[5];
  v61[3] = v10[4];
  v61[4] = v15;
  v61[0] = v10[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v16 = swift_allocObject();
  memmove((v16 + 16), v10 + 1, 0x50uLL);
  outlined init with copy of _ViewInputs(v59, &v62);
  outlined init with copy of CachedEnvironment(v61, &v62);

  _GraphValue.init(_:)(*a1, &v30);
  v17 = v30;
  v62 = v58;
  *v63 = v16;
  *&v63[8] = v55;
  *&v63[24] = v56;
  *&v63[40] = v57[0];
  *&v63[52] = *(v57 + 12);
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v47 = *&v63[16];
  v48 = *&v63[32];
  v49 = *&v63[48];
  v50 = *&v63[64];
  v45 = v62;
  v46 = *v63;
  v19 = *&v63[16];
  LODWORD(v47) = 0;
  LODWORD(v34) = v17;
  v51[0] = v62;
  v51[1] = *v63;
  v52 = *&v63[64];
  v51[3] = *&v63[32];
  v51[4] = *&v63[48];
  v51[2] = v47;
  v41 = v47;
  v42 = *&v63[32];
  v43 = *&v63[48];
  v44 = *&v63[64];
  v39 = v62;
  v40 = *v63;
  v20 = *(a4 + 24);
  outlined init with copy of _ViewInputs(&v62, v53);
  outlined init with copy of _ViewInputs(v51, v53);
  v20(&v31, &v34, &v39, a3, a4);
  v53[2] = v41;
  v53[3] = v42;
  v53[4] = v43;
  v54 = v44;
  v53[0] = v39;
  v53[1] = v40;
  outlined destroy of _ViewInputs(v53);
  LODWORD(v47) = v19;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(&v31, &v45);
    AGSubgraphEndTreeElement();
  }

  v41 = v47;
  v42 = v48;
  v43 = v49;
  v44 = v50;
  v39 = v45;
  v40 = v46;
  outlined destroy of _ViewInputs(&v39);
  v21 = v33;
  v22 = *(a1 + 12);
  v23 = a1[26];
  v24 = a1[27];
  *&v34 = v22;
  DWORD2(v34) = v23;
  v28 = v31;
  v29 = v32;
  swift_bridgeObjectRetain_n();

  PreferencesOutputs.attachIndirectOutputs(to:)(&v28);

  if (v24 != *MEMORY[0x1E698D3F8] && v21 != *MEMORY[0x1E698D3F8])
  {
    AGGraphSetIndirectAttribute();
  }

  v34 = v58;
  v35 = v16;
  v36 = v55;
  v37 = v56;
  v38[0] = v57[0];
  *(v38 + 12) = *(v57 + 12);
  outlined destroy of _ViewInputs(&v34);

  *a5 = a2;

  return a2;
}

Swift::Void __swiftcall ResettableContainer.destroy()()
{
  AGCreateWeakAttribute();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static LazyContainerManager.instance);
  LazyContainerManager.removeSignal(_:)();

  os_unfair_lock_unlock(&static LazyContainerManager.instance);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ResettableContainer<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t ResettableListContainer.updateValue()(uint64_t a1)
{
  v2 = v1;
  v40 = *MEMORY[0x1E69E9840];
  AGGraphGetValue();
  v5 = v4;
  v6 = *(v1 + 160);
  if (!v6)
  {
    v34 = 0;
LABEL_15:
    v13 = *(v2 + 152);
    swift_beginAccess();
    v14 = *(v13 + 16);
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v33 = v15;
    type metadata accessor for ResettableListContainer.Item();
    v17 = type metadata accessor for Unmanaged();

    if (!MEMORY[0x193ABF2C0](v18, v17))
    {
      goto LABEL_25;
    }

    v19 = 0;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v9 = *(v14 + 8 * v19 + 32);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v9 = _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:

          if (AGSubgraphIsValid())
          {
            v22 = AGSubgraphGetGraph();
            v23 = AGSubgraphCreate();

            AGSubgraphAddChild();
            AGGraphClearUpdate();
            v24 = AGSubgraphGetCurrent();
            AGSubgraphSetCurrent();
            closure #1 in ResettableListContainer.updateValue()(v2, v33, v16, v37);
            AGSubgraphSetCurrent();

            v25 = v37[0];
            v26 = BYTE4(v37[0]);
            AGGraphSetUpdate();
            CurrentAttribute = AGGraphGetCurrentAttribute();
            if (CurrentAttribute != *MEMORY[0x1E698D3F8])
            {
              v28 = CurrentAttribute;
              v37[0] = AGMakeUniqueID();
              swift_allocObject();

              v9 = ResettableListContainer.Item.init(owner:list:id:isUnary:subgraph:allItems:)(v28, v25, v37, v26, v23, v13);
              goto LABEL_30;
            }

LABEL_35:
            __break(1u);
          }

          v38 = &type metadata for EmptyViewList;
          WitnessTable = lazy protocol witness table accessor for type EmptyViewList and conformance EmptyViewList();
          type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
          AGGraphSetOutputValue();
          return __swift_destroy_boxed_opaque_existential_1(v37);
        }
      }

      if ((v5 & 1) == 0)
      {

        ++*(v9 + 24);

        AGSubgraphAddChild();
        v29 = *(v9 + 16);

        AGSubgraphApply();

LABEL_30:
        *(v2 + 160) = v9;
        v7 = v34;
        goto LABEL_31;
      }

      ++v19;
      if (v21 == MEMORY[0x193ABF2C0](v14, v17))
      {
        goto LABEL_25;
      }
    }
  }

  v7 = *(v6 + 32);
  v8 = *(v6 + 24);
  if (v4)
  {
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_13:
    *(v6 + 24) = -1;

LABEL_14:
    v34 = v7;

    *(v2 + 160) = 0;
    goto LABEL_15;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  if ((AGSubgraphIsValid() & 1) == 0)
  {
LABEL_8:
    v10 = *(v6 + 16);
    IsValid = AGSubgraphIsValid();

    if (IsValid)
    {
      v12 = v10;
      AGSubgraphApply();

      AGSubgraphRemoveChild();
      v8 = *(v6 + 24);
    }

    *(v6 + 24) = v8 - 1;
    if (v8 == 1)
    {
      ResettableListContainer.Item.invalidate()();
      if (AGSubgraphIsValid())
      {
        AGSubgraphRef.willInvalidate(isInserted:)(0);
        AGSubgraphInvalidate();
      }
    }

    goto LABEL_14;
  }

  v9 = v6;
LABEL_31:

  ResettableListContainer.Item.list.getter(v36);
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_35;
  }

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);

  TransactionID.init<A>(context:)(&v35);
  v30 = v35;
  v38 = type metadata accessor for ResettableListContainer.WrappedList();
  WitnessTable = swift_getWitnessTable();
  v31 = swift_allocObject();
  v37[0] = v31;
  outlined init with take of _ViewList_Elements(v36, v31 + 16);
  *(v31 + 56) = v9;
  *(v31 + 64) = v7;
  *(v31 + 72) = v6 == 0;
  *(v31 + 80) = v30;
  AGGraphSetOutputValue();

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t closure #1 in ResettableListContainer.updateValue()@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of _ViewListInputs((a1 + 2), v21);
  v8 = v22;
  swift_beginAccess();
  v9 = v8[3];
  v24[1] = v8[2];
  v24[2] = v9;
  v10 = v8[5];
  v24[3] = v8[4];
  v24[4] = v10;
  v24[0] = v8[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v11 = swift_allocObject();
  memmove((v11 + 16), v8 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v24, v19);

  v22 = v11;
  v23 = 0;
  type metadata accessor for ResettableListContainer();
  _GraphValue.init(_:)(*a1, &v18);
  v12 = v18;
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  v17 = v12;
  (*(a3 + 32))(v19, &v17, v21, a2, a3);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v12, a2, a3);
  v13 = _ViewListOutputs.makeAttribute(inputs:)(v21);
  outlined destroy of _ViewListInputs(v21);
  *a4 = v13;
  v14 = v19[7];
  v15 = v20;
  result = outlined destroy of _ViewListOutputs(v19);
  *(a4 + 4) = (v14 == 1) & ~v15;
  return result;
}

uint64_t ResettableListContainer.Item.list.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  Value = AGGraphGetValue();

  return outlined init with copy of AnyTrackedValue(Value, a1);
}

uint64_t ResettableListContainer.Item.init(owner:list:id:isUnary:subgraph:allItems:)(int a1, int a2, uint64_t *a3, char a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v9 = *a3;
  *(v7 + 40) = a1;
  *(v7 + 44) = a2;
  *(v7 + 32) = v9;
  *(v7 + 48) = a4;
  *(v7 + 56) = a6;
  *(v7 + 24) = 1;
  *(v7 + 16) = a5;
  swift_beginAccess();
  type metadata accessor for Unmanaged();
  type metadata accessor for Array();

  v10 = a5;

  Array.append(_:)();
  swift_endAccess();

  return v7;
}

uint64_t ResettableListContainer.Item.invalidate()()
{
  swift_beginAccess();
  type metadata accessor for Unmanaged();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  if (v1 != 1)
  {
    swift_beginAccess();
    Array.remove(at:)();
    return swift_endAccess();
  }

  return result;
}

uint64_t ResettableListContainer.Item.bindID(_:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  type metadata accessor for _AnyHashableBox<UniqueID>();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = *(a1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 24 * v10;
  *(v11 + 32) = v6;
  *(v11 + 40) = &type metadata for UniqueID;
  *(v11 + 48) = v4;
  *(v11 + 52) = v5;
  *(a1 + 8) = v7;
  return result;
}

uint64_t ResettableListContainer.Item.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ResettableListContainer.WrappedList.traitKeys.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 32))(&v8, v3, v4);
  v5 = v8;
  if (v8)
  {

    v6 = 1;
  }

  else
  {
    v6 = v9;
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t ResettableListContainer.WrappedList.viewIDs.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  result = (*(v2 + 40))(v1, v2);
  if (result)
  {
    v5 = result;
    closure #1 in ResettableListContainer.WrappedList.viewIDs.getter(&v5, v0, &v4);

    return v4;
  }

  return result;
}

uint64_t closure #1 in ResettableListContainer.WrappedList.viewIDs.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for ResettableListContainer.WrappedIDs();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _ViewList_ID._Views();
  v6 = *(a2 + 40);
  v8[0] = v5;
  v8[1] = v6;
  *a3 = _ViewList_ID._Views.__allocating_init(_:isDataDependent:)(v8, 1);
}

uint64_t ResettableListContainer.WrappedList.appendViewIDs(into:)(uint64_t a1)
{
  v3 = v1[5];
  v4 = *(v3 + 32);
  v5 = *(v3 + 48);
  outlined init with copy of (Hashable, isUnary: Bool)?(a1 + 56, v11);
  v9[3] = &type metadata for UniqueID;
  v9[4] = lazy protocol witness table accessor for type UniqueID and conformance UniqueID();
  v9[0] = v4;
  v10 = v5;
  outlined assign with take of (Hashable, isUnary: Bool)?(v9, a1 + 56);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  (*(v7 + 48))(a1, v6, v7);
  return outlined assign with take of (Hashable, isUnary: Bool)?(v11, a1 + 56);
}

uint64_t ResettableListContainer.WrappedList.applyNodes(from:style:list:transform:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a2;
  v9 = *a4;
  v19 = *(a4 + 8);
  v18[0] = *(v7 + 40);
  v18[1] = v9;
  v10 = *(a7 + 24);
  v13[2] = *(a7 + 16);
  v13[3] = v10;
  v13[5] = a1;
  v13[6] = v8;
  v14 = a3;
  v15 = BYTE4(a3) & 1;
  v16 = a5;
  v17 = a6;
  v11 = type metadata accessor for ResettableListContainer.Transform();

  _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(v18, partial apply for closure #1 in DynamicViewList.WrappedList.applyNodes(from:style:list:transform:to:), v13, MEMORY[0x1E69E6370], v11, &protocol witness table for ResettableListContainer<A>.Transform);

  return v20;
}

uint64_t ResettableListContainer.WrappedList.edit(forID:since:)@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 1);
  v8 = *a2;
  if (*a2 < *(v3 + 64))
  {
    goto LABEL_5;
  }

  if (*(v3 + 56))
  {
    goto LABEL_5;
  }

  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  if (v10 == *(v9 + 32))
  {
    goto LABEL_5;
  }

  result = specialized _ViewList_ID.explicitID<A>(owner:)(*(v9 + 40), v7, &v15);
  if (v16)
  {
    goto LABEL_5;
  }

  if (v15 == v10)
  {
    *a3 = 1;
    return result;
  }

  if (v15 != *(v9 + 32))
  {
LABEL_5:
    v12 = *(v3 + 24);
    v13 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v3, v12);
    v15 = __PAIR64__(v6, v5);
    v16 = v7;
    v14 = v8;
    return (*(v13 + 72))(&v15, &v14, v12, v13);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t ResettableListContainer.WrappedList.firstOffset<A>(forID:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v12 = *v11;
  (*(v13 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v9);
  if ((swift_dynamicCast() & 1) != 0 && v19 == *(v5[5] + 32))
  {
    return 0;
  }

  v16 = v5[3];
  v17 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v16);
  v19 = v12;
  return (*(v17 + 80))(a1, &v19, a4, a5, v16, v17);
}

uint64_t ResettableListContainer.WrappedList.print(into:)(void *a1)
{
  v3 = a1[2];
  if (v3)
  {
    MEMORY[0x193ABEDD0](10, 0xE100000000000000);
    MEMORY[0x193ABEDD0](a1[3], a1[4]);
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    result = MEMORY[0x193ABEDD0](0x6E6F632D7473696CLL, 0xEE0072656E696174);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_10;
    }

    a1[2] = v3 + 1;
    v5 = 8224;
    v6 = 0xE200000000000000;
  }

  else
  {
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v5 = 0x6E6F632D7473696CLL;
    v6 = 0xEE0072656E696174;
  }

  MEMORY[0x193ABEDD0](v5, v6);
  MEMORY[0x193ABEDD0](0x2064693A23, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0, 0xE000000000000000);

  v7 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v7);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x2072656E776F3A23, 0xE800000000000000);

  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList);
  v8 = AGAttribute.description.getter();
  MEMORY[0x193ABEDD0](v8);

  MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  MEMORY[0x193ABEDD0](0x20727474613A23, 0xE700000000000000);

  v9 = v1[3];
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v9);
  result = (*(v10 + 88))(a1, v9, v10);
  v11 = a1[2];
  if (!v11)
  {
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (!v12)
  {
    a1[2] = v13;
    specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    return MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResettableListContainer<A>.WrappedList(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ViewList.debugDescription.getter(a1, WitnessTable);
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance ResettableListContainer<A>.WrappedIDs()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(before:)();
}

void (*protocol witness for Collection.subscript.read in conformance ResettableListContainer<A>.WrappedIDs(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  *(v5 + 32) = ResettableListContainer.WrappedIDs.subscript.read(v5, *a2, *v2);
  return protocol witness for Collection.subscript.read in conformance ArrayWith2Inline<A>;
}

uint64_t (*ResettableListContainer.WrappedIDs.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  (*(*a3 + 96))(a2);
  ResettableListContainer.Item.bindID(_:)(a1);
  return destroy for HostPreferencesCombiner;
}

uint64_t protocol witness for Collection.indices.getter in conformance ResettableListContainer<A>.WrappedIDs()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

uint64_t protocol witness for Collection.index(after:) in conformance ResettableListContainer<A>.WrappedIDs()
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.index(after:)();
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance ResettableListContainer<A>.WrappedIDs(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance ResettableListContainer<A>.WrappedIDs(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance ResettableListContainer<A>.WrappedIDs()
{
  swift_getWitnessTable();

  return Collection._copyToContiguousArray()();
}

uint64_t ResettableListContainer.Transform.apply(sublist:)(uint64_t a1)
{
  ResettableListContainer.Item.bindID(_:)(a1 + 16);

  MEMORY[0x193ABF170](v2);
  if (*((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ResettableListContainer<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t static ResettableLazyLayoutsFeature.isEnabledForTesting.setter(char a1)
{
  result = swift_beginAccess();
  static ResettableLazyLayoutsFeature.isEnabledForTesting = a1;
  return result;
}

char *protocol witness for static Feature.isEnabled.getter in conformance ResettableLazyLayoutsFeature()
{
  swift_beginAccess();
  if (static ResettableLazyLayoutsFeature.isEnabledForTesting)
  {
    return 1;
  }

  result = getenv("XCODE_RUNNING_FOR_PREVIEWS");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

uint64_t destroy for ResettableListContainer(uint64_t a1)
{

  swift_weakDestroy();
}

uint64_t initializeWithCopy for ResettableListContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  swift_weakCopyInit();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a2 + 144);
  v5 = *(a2 + 152);
  *(a1 + 144) = v4;
  *(a1 + 152) = v5;
  *(a1 + 160) = *(a2 + 160);
  v6 = v4;

  return a1;
}

uint64_t assignWithCopy for ResettableListContainer(uint64_t a1, uint64_t a2)
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
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakCopyAssign();
  v4 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v4;
  v5 = *(a2 + 144);
  v6 = *(a1 + 144);
  *(a1 + 144) = v5;
  v7 = v5;

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t initializeWithTake for ResettableListContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakTakeInit();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t assignWithTake for ResettableListContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  swift_weakTakeAssign();
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  v4 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

void destroy for ResettableContainer(uint64_t a1)
{

  v2 = *(a1 + 112);
}

uint64_t initializeWithCopy for ResettableContainer(uint64_t a1, uint64_t a2)
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
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 112);
  *(a1 + 112) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for ResettableContainer(uint64_t a1, uint64_t a2)
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

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  v4 = *(a2 + 112);
  v5 = *(a1 + 112);
  *(a1 + 112) = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for ResettableContainer(uint64_t a1, uint64_t a2)
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
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v4 = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t getEnumTagSinglePayload for ResettableContainer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for ResettableContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ResettableContainer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ResettableListContainer<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t initializeWithCopy for ResettableListContainer.WrappedList(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithCopy for ResettableListContainer.WrappedList(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  v4 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for ResettableListContainer.WrappedList(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for ResettableListContainer<A>.WrappedList(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of (Hashable, isUnary: Bool)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<AGSubgraphRef>(0, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Attribute<AGSubgraphRef>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined assign with take of (Hashable, isUnary: Bool)?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<AGSubgraphRef>(0, &lazy cache variable for type metadata for (Hashable, isUnary: Bool)?, type metadata accessor for (Hashable, isUnary: Bool), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _AnyHashableBox<UniqueID>()
{
  if (!lazy cache variable for type metadata for _AnyHashableBox<UniqueID>)
  {
    lazy protocol witness table accessor for type UniqueID and conformance UniqueID();
    v0 = type metadata accessor for _AnyHashableBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _AnyHashableBox<UniqueID>);
    }
  }
}

uint64_t GesturePhase.paused()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v6 + 16);
  v15(v8, v3, a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v6 + 8))(v8, a1);
    }

    return (v15)(a2, v3, a1);
  }

  else
  {
    v17 = *(v11 + 32);
    v17(v14, v8, v10);
    v17(a2, v14, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t Gesture.dependency(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getAssociatedTypeWitness();
  v8 = v5;
  v6 = type metadata accessor for DependentGesture();
  swift_getWitnessTable();
  return Gesture.modifier<A>(_:)(&v8, a2, v6, a3);
}

Swift::Int GestureDependency.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

unint64_t static DependentGesture._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *)@<X2>, _DWORD *a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v6;
  v7 = *(a2 + 80);
  v22[4] = *(a2 + 64);
  v22[5] = v7;
  v8 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v8;
  v25 = *(a2 + 112);
  v9 = *(a2 + 104);
  v23 = *(a2 + 96);
  v10 = v23;
  v24 = v9;
  v26 = *(a2 + 116);
  v16 = v26;
  a3(v22);
  *&v22[0] = __PAIR64__(*a4, v5);
  DWORD2(v22[0]) = v16;
  v19 = type metadata accessor for GesturePhase();
  v20 = type metadata accessor for DependentPhase();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v22, partial apply for closure #1 in Attribute.init<A>(_:), v18, v20, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  *a4 = v17;
  *&v22[0] = v10;
  result = PreferenceKeys._index(of:)(&type metadata for GestureDependency.Key);
  v14 = *(v10 + 16);
  if (result != v14)
  {
    if (result >= v14)
    {
      __break(1u);
    }

    if (*(v10 + 16 * result + 32) == &type metadata for GestureDependency.Key)
    {
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      LOBYTE(v22[0]) = 0;
      return PreferencesOutputs.subscript.setter(OffsetAttribute2, &type metadata for GestureDependency.Key, &protocol witness table for GestureDependency.Key);
    }
  }

  return result;
}

uint64_t DependentPhase.value.getter@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  MapPhase.phase.getter(&v7 - v4);
  type metadata accessor for DependentGesture();
  v8 = *AGGraphGetValue();
  v7 = *AGGraphGetValue();
  GesturePhase.applyingDependency(_:inheritedPhase:)(&v8, &v7, v2, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t GesturePhase.applyingDependency(_:inheritedPhase:)@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = *a2;
  if (*a1 <= 1u)
  {
    if (*a1 && (v5 & 2) != 0)
    {
      v6 = a3;
      return GesturePhase.paused()(v6, a4);
    }

    return (*(*(a3 - 8) + 16))(a4, v4);
  }

  if (*a1 == 2)
  {
    if ((v5 & 1) == 0)
    {
      v6 = a3;
      return GesturePhase.paused()(v6, a4);
    }

    return (*(*(a3 - 8) + 16))(a4, v4);
  }

  if ((v5 & 2) == 0)
  {
    if ((v5 & 1) == 0)
    {
      v6 = a3;
      return GesturePhase.paused()(v6, a4);
    }

    return (*(*(a3 - 8) + 16))(a4, v4);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized static GestureDependency.Key.reduce(value:nextValue:)(char *a1, void *(*a2)(uint64_t *__return_ptr))
{
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI17GestureDependencyO_SiTt0g5Tf4g_n(&outlined read-only object #0 of static GestureDependency.Key.reduce(value:nextValue:));
  result = a2(&v12);
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v12;
  result = specialized __RawDictionaryStorage.find<A>(_:)(*a1);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!*(v4 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(*(v4 + 56) + 8 * result);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  if ((v9 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v10 = *(*(v4 + 56) + 8 * result);

  v11 = *a1;
  if (v10 >= v8)
  {
    v11 = v6;
  }

  *a1 = v11;
  return result;
}

void SDFShape.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 44);
  if (*v3 != 0.0 || v6 != 0.0)
  {
    v11 = v2;
    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v12 = *(a1 + 8);
    v13 = *(a1 + 24);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v16;
    *&v13[8 * v15 + 32] = v12;
    *(a1 + 24) = v13;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_21:
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      goto LABEL_11;
    }

    *(a1 + 8) = v12 + 1;
    CGPoint.encode(to:)(a1, v5, v6);
    ProtobufEncoder.endLengthDelimited()();
  }

  specialized ProtobufEncoder.messageField<A>(_:_:)(2);
  if (v2)
  {
    return;
  }

  v11 = 0;
  ProtobufEncoder.encodeVarint(_:)(0x2AuLL);
  v16 = *(a1 + 8);
  v7 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v19 = *(v7 + 16);
  v18 = *(v7 + 24);
  if (v19 >= v18 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v7);
    v20 = v11;
    v7 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v20 = v11;
  }

  *(v7 + 16) = v19 + 1;
  *(v7 + 8 * v19 + 32) = v16;
  *(a1 + 24) = v7;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  *(a1 + 8) = v16 + 1;
  SDFStyle.encode(to:)(a1, v8);
  if (!v20)
  {
    ProtobufEncoder.endLengthDelimited()();
    ProtobufEncoder.encodeVarint(_:)(0x30uLL);
    ProtobufEncoder.encodeVarint(_:)(v10);
    if (v9 != 0.0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x3DuLL);
      v21 = *(a1 + 8);
      isUniquelyReferenced_nonNull_native = v21 + 4;
      if (!__OFADD__(v21, 4))
      {
        if (*(a1 + 16) >= isUniquelyReferenced_nonNull_native)
        {
          *(a1 + 8) = isUniquelyReferenced_nonNull_native;
          *(*a1 + v21) = v9;
          return;
        }

LABEL_25:
        *ProtobufEncoder.growBufferSlow(to:)(isUniquelyReferenced_nonNull_native) = v9;
        return;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }
}

unint64_t SDFShape.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0x80;
  v6 = MEMORY[0x1E69E7CC0];
  *(result + 40) = MEMORY[0x1E69E7CC0];
  *(result + 48) = v6;
  v7 = result | 0x8000000000000000;
  v8 = a1[1];
  v9 = a1[2];
  if (v8 >= v9)
  {
    v64 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_4:
    a1[3] = 0;
    *a2 = v11;
    *(a2 + 1) = v12;
    *(a2 + 2) = v6;
    *(a2 + 3) = v13;
    *(a2 + 4) = v7;
    *(a2 + 10) = v10;
    *(a2 + 11) = v64;
    *(a2 + 6) = 0;
    return result;
  }

  v64 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    result = a1[3];
    if (result)
    {
      v14 = a1[4];
      if (v8 < v14)
      {
        goto LABEL_13;
      }

      if (v14 < v8)
      {
        goto LABEL_96;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_105;
    }

    if (result <= 7)
    {
      goto LABEL_96;
    }

LABEL_13:
    v15 = result >> 3;
    if (result >> 3 > 4)
    {
      switch(v15)
      {
        case 5uLL:
          if ((result & 7) != 2)
          {
            goto LABEL_96;
          }

          v26 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
          }

          v28 = *(v26 + 2);
          v27 = *(v26 + 3);
          if (v28 >= v27 >> 1)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
          }

          *(v26 + 2) = v28 + 1;
          *&v26[8 * v28 + 32] = v9;
          a1[5] = v26;
          v29 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_105;
          }

          if (v29 < 0)
          {
            goto LABEL_108;
          }

          v30 = a1[1] + v29;
          if (v9 < v30)
          {
            goto LABEL_96;
          }

          a1[2] = v30;
          v31 = specialized SDFStyle.init(from:)(a1);
          v32 = a1[5];
          if (!*(v32 + 2))
          {
            goto LABEL_111;
          }

          v33 = v31;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v34 = *(v32 + 2);
            if (!v34)
            {
              goto LABEL_113;
            }
          }

          else
          {
            v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
            v34 = *(v32 + 2);
            if (!v34)
            {
              goto LABEL_113;
            }
          }

          v35 = v34 - 1;
          v9 = *&v32[8 * v35 + 32];
          *(v32 + 2) = v35;

          a1[5] = v32;
          a1[2] = v9;
          v7 = v33;
          break;
        case 6uLL:
          if ((result & 7) != 0)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_96;
            }

            v36 = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_105;
            }

            if (v36 < 0)
            {
              goto LABEL_115;
            }

            v37 = a1[1] + v36;
            if (v9 < v37)
            {
              goto LABEL_96;
            }

            a1[3] = 48;
            a1[4] = v37;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_105;
          }

          if (HIDWORD(result))
          {
            v38 = 0;
          }

          else
          {
            v38 = result;
          }

          v64 = v38;
          break;
        case 7uLL:
          if ((result & 7) == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_105;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_114;
            }

            v16 = a1[1];
            if (v9 < v16 + result)
            {
              goto LABEL_96;
            }

            a1[3] = 61;
            a1[4] = v16 + result;
          }

          else
          {
            if ((result & 7) != 5)
            {
              goto LABEL_96;
            }

            v16 = a1[1];
          }

          if (v9 < (v16 + 1))
          {
            goto LABEL_96;
          }

          v10 = *v16;
          a1[1] = v16 + 1;
          break;
        default:
          goto LABEL_69;
      }

      goto LABEL_6;
    }

    if (v15 == 1)
    {
      break;
    }

    if (v15 != 2)
    {
LABEL_69:
      v51 = result & 7;
      if (v51 > 1)
      {
        if (v51 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_105;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_116;
          }

          v52 = a1[1] + result;
          if (v9 < v52)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (v51 != 5)
          {
            goto LABEL_96;
          }

          v52 = a1[1] + 4;
          if (v9 < v52)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_105;
          }

          goto LABEL_6;
        }

        if (v51 != 1)
        {
          goto LABEL_96;
        }

        v52 = a1[1] + 8;
        if (v9 < v52)
        {
          goto LABEL_96;
        }
      }

      a1[1] = v52;
      goto LABEL_6;
    }

    if ((result & 7) != 2)
    {
      goto LABEL_96;
    }

    v17 = a1[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    *&v17[8 * v19 + 32] = v9;
    a1[5] = v17;
    v20 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_105;
    }

    if (v20 < 0)
    {
      goto LABEL_107;
    }

    v21 = a1[1] + v20;
    if (v9 < v21)
    {
      goto LABEL_96;
    }

    a1[2] = v21;
    PathSet.init(from:)(a1, &v56);
    v22 = a1[5];
    if (!*(v22 + 2))
    {
      goto LABEL_110;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = *(v22 + 2);
      if (!v23)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v23 = *(v22 + 2);
      if (!v23)
      {
LABEL_95:
        __break(1u);
LABEL_96:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_105:
        v56 = v11;
        v57 = v12;
        v58 = v6;
        v59 = v13;
        v60 = v7;
        v61 = v10;
        v62 = v64;
        v63 = 0;
        return outlined destroy of SDFShape(&v56);
      }
    }

    v24 = v23 - 1;
    v9 = *&v22[8 * v24 + 32];
    *(v22 + 2) = v24;
    a1[5] = v22;
    a1[2] = v9;
    v25 = v56;
    v13 = v57;

    v6 = v25;
LABEL_6:
    v8 = a1[1];
    if (v8 >= v9)
    {
      goto LABEL_4;
    }
  }

  if ((result & 7) != 2)
  {
    goto LABEL_96;
  }

  v39 = a1[5];
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

  *(v39 + 2) = v41 + 1;
  *&v39[8 * v41 + 32] = v9;
  a1[5] = v39;
  v42 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_105;
  }

  if ((v42 & 0x8000000000000000) == 0)
  {
    v43 = a1[1] + v42;
    if (v9 < v43)
    {
      goto LABEL_96;
    }

    a1[2] = v43;
    specialized CGPoint.init(from:)(a1);
    v46 = a1[5];
    if (!*(v46 + 16))
    {
      goto LABEL_109;
    }

    v47 = v44;
    v48 = v45;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v49 = *(v46 + 16);
      if (!v49)
      {
        goto LABEL_112;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
      v46 = result;
      v49 = *(result + 16);
      if (!v49)
      {
        goto LABEL_112;
      }
    }

    v50 = v49 - 1;
    v9 = *(v46 + 8 * v50 + 32);
    *(v46 + 16) = v50;
    a1[5] = v46;
    a1[2] = v9;
    v11 = v47;
    v12 = v48;
    goto LABEL_6;
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  __break(1u);
LABEL_117:
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v53 = *(a2 + 2);
    if (v53)
    {
      goto LABEL_104;
    }

    __break(1u);
    a2 = a1[5];
    if (!*(a2 + 2))
    {
      goto LABEL_117;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v53 = *(a2 + 2);
      if (v53)
      {
        goto LABEL_104;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v53 = *(a2 + 2);
      if (v53)
      {
        goto LABEL_104;
      }
    }

    __break(1u);
    a2 = a1[5];
  }

  while (!*(a2 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v53 = *(a2 + 2);
    if (v53)
    {
LABEL_104:
      v54 = v53 - 1;
      v55 = *&a2[8 * v54 + 32];
      *(a2 + 2) = v54;
      a1[5] = a2;
      a1[2] = v55;
      goto LABEL_105;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v53 = *(result + 16);
    if (v53)
    {
      goto LABEL_104;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static SDFShape.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 48);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 44);
  v11 = *(a2 + 48);
  v12 = *(a2 + 24);
  v13 = *(a2 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 16);

  v16 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI7PathSetV7ElementV_Tt1g5(v15, v13);

  result = 0;
  if ((v16 & 1) != 0 && v14 == v12)
  {

    v17 = static SDFStyle.== infix(_:_:)(v4, v8);

    result = 0;
    if ((v17 & 1) != 0 && v5 == v9 && v6 == v10)
    {
      if (v11)
      {
        v18 = v7 == v11;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      if (v7)
      {
        return v19;
      }

      else
      {
        return v11 == 0;
      }
    }
  }

  return result;
}

uint64_t destroy for SDFShape()
{
}

uint64_t initializeWithCopy for SDFShape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for SDFShape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for SDFShape(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for SDFShape(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SDFShape(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t EnvironmentValues.enforceButtonDestructiveRoleAppearance.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(v1) & 1;
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(v1);

  return v2 & 1;
}

uint64_t key path getter for EnvironmentValues.enforceButtonDestructiveRoleAppearance : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(*a1);
    v4 = result;
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.enforceButtonDestructiveRoleAppearance : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.enforceButtonDestructiveRoleAppearance.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.enforceButtonDestructiveRoleAppearance.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.enforceButtonDestructiveRoleAppearance.modify;
}

void EnvironmentValues.enforceButtonDestructiveRoleAppearance.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE02__K39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t one-time initialization function for enforceButtonDestructiveRoleAppearance()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.enforceButtonDestructiveRoleAppearance = result;
  return result;
}

uint64_t _GraphInputs.enforceButtonDestructiveRoleAppearance.getter()
{
  if (one-time initialization token for enforceButtonDestructiveRoleAppearance != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.enforceButtonDestructiveRoleAppearance;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t specialized implicit closure #1 in _GraphInputs.enforceButtonDestructiveRoleAppearance.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    swift_retain_n();
    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt1g5(v3);
  }

  else
  {

    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F39_enforceButtonDestructiveRoleAppearance33_3356C828A364EA07A0E2E776C2C2836DLLVG_Tt2g5(v6);
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t View.enforceButtonDestructiveRoleAppearance(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t ResponderNode.makeGesture(inputs:)@<X0>(uint64_t a1@<X8>)
{
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for GesturePhase<()>();
  v3 = specialized GraphHost.intern<A>(_:for:id:)(768, v2, 4);

  v5 = *MEMORY[0x1E698D3F8];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *a1 = v3;
  *(a1 + 4) = v5;
  return result;
}

uint64_t ResponderNode.isDescendant(of:)(uint64_t a1)
{
  swift_retain_n();
  if (v1 == a1)
  {
    goto LABEL_9;
  }

  v3 = *(*v1 + 88);

  v5 = v3(v4);

  if (v5)
  {

    if (v5 != a1)
    {
      do
      {
        v6 = *(*v5 + 88);

        v8 = v6(v7);

        if (!v8)
        {
          goto LABEL_8;
        }

        v5 = v8;
      }

      while (v8 != a1);
    }

LABEL_9:

    v9 = 1;
    goto LABEL_10;
  }

LABEL_8:

  v9 = 0;
LABEL_10:

  return v9;
}

uint64_t ResponderNode.sequence.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = swift_allocObject();
  *(v3 + 16) = specialized implicit closure #1 in ResponderNode.sequence.getter;
  *(v3 + 24) = 0;
  *a1 = v1;
  *(a1 + 8) = 1;
  *(a1 + 16) = partial apply for specialized closure #1 in sequence<A>(first:next:);
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
}

uint64_t specialized implicit closure #1 in ResponderNode.sequence.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t ResponderNode.firstAncestor<A>(ofType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = specialized implicit closure #1 in ResponderNode.sequence.getter;
  *(v4 + 24) = 0;
  type metadata accessor for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>();
  lazy protocol witness table accessor for type UnfoldSequence<ResponderNode, (ResponderNode?, Bool)> and conformance UnfoldSequence<A, B>();
  Sequence.first<A>(ofType:)(a1, a2);
}

Swift::Int ResponderVisitorResult.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
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

void type metadata accessor for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>()
{
  if (!lazy cache variable for type metadata for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>)
  {
    type metadata accessor for ResponderNode();
    type metadata accessor for (ResponderNode?, Bool)();
    v0 = type metadata accessor for UnfoldSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>);
    }
  }
}

void type metadata accessor for (ResponderNode?, Bool)()
{
  if (!lazy cache variable for type metadata for (ResponderNode?, Bool))
  {
    type metadata accessor for ResponderNode?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ResponderNode?, Bool));
    }
  }
}

void type metadata accessor for ResponderNode?()
{
  if (!lazy cache variable for type metadata for ResponderNode?)
  {
    type metadata accessor for ResponderNode();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ResponderNode?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UnfoldSequence<ResponderNode, (ResponderNode?, Bool)> and conformance UnfoldSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type UnfoldSequence<ResponderNode, (ResponderNode?, Bool)> and conformance UnfoldSequence<A, B>;
  if (!lazy protocol witness table cache variable for type UnfoldSequence<ResponderNode, (ResponderNode?, Bool)> and conformance UnfoldSequence<A, B>)
  {
    type metadata accessor for UnfoldSequence<ResponderNode, (ResponderNode?, Bool)>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnfoldSequence<ResponderNode, (ResponderNode?, Bool)> and conformance UnfoldSequence<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResponderVisitorResult and conformance ResponderVisitorResult()
{
  result = lazy protocol witness table cache variable for type ResponderVisitorResult and conformance ResponderVisitorResult;
  if (!lazy protocol witness table cache variable for type ResponderVisitorResult and conformance ResponderVisitorResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResponderVisitorResult and conformance ResponderVisitorResult);
  }

  return result;
}

uint64_t AnyTransition.adjustedForAccessibility(prefersCrossFade:)(char a1, uint64_t a2)
{
  if (((*(*a2 + 104))() & 1) != 0 && (a1 & 1) != 0 && one-time initialization token for opacity != -1)
  {
    swift_once();
  }
}

uint64_t AnyTransition.transaction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = 0;
  v3 = *(*a3 + 80);

  result = v3(v6, &unk_1F00ACE08, &protocol witness table for AnyTransition.FilterVisitor);
  v5 = v7;
  if (v7)
  {

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnyTransition.FilterVisitor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for AnyTransition.FilterVisitor(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for AnyTransition.FilterVisitor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@inout Transaction, @in_guaranteed TransitionPhase) -> (@out ())(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t EnvironmentValues.lazySubviewMinorSizing.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(v1);
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE022LazySubviewMinorSizingI033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt1g5(v1);

  return v2;
}

uint64_t key path getter for EnvironmentValues.lazySubviewMinorSizing : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE022LazySubviewMinorSizingI033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(*a1);
    v4 = result;
    v6 = v8;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.lazySubviewMinorSizing : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a1;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE022LazySubviewMinorSizingF033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Tt2g5(a2, v5, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE022LazySubviewMinorSizingK033_0B6308C3BA3B00B5060A0BAAE3782C53LLVG_Ttg5(v4, *a2);
  }
}

void static LazyLayout_V1.layoutProperties.getter(_WORD *a1@<X8>)
{
  static LazyLayout_V1.layoutProperties.getter(a1);
}

{
  *a1 = 2;
}

uint64_t LazyLayout_V1.proposeSizes(at:subviews:context:cache:in:)()
{
  static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

{
  static os_log_type_t.fault.getter();
  if (one-time initialization token for runtimeIssuesLog != -1)
  {
    swift_once();
  }

  return os_log(_:dso:log:_:_:)();
}

double LazyLayout_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<D0>(_OWORD *a1@<X8>)
{
  Array.subscript.getter();
  *&v10[32] = v7;
  *&v10[48] = v8;
  *&v10[64] = v9;
  *v10 = v5;
  *&v10[16] = v6;
  outlined destroy of Color.VibrancyDefinition(v10);
  v2 = *&v10[24];
  *a1 = *&v10[8];
  a1[1] = v2;
  result = *&v10[40];
  v4 = *&v10[56];
  a1[2] = *&v10[40];
  a1[3] = v4;
  return result;
}

{
  return LazyLayout_V1.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:)(a1);
}

{
  return sub_18D3C143C(a1);
}

__n128 _LazyLayout_PlacedSubview_V1.placement.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

void *static LazyLayoutAdaptor_V1.layoutProperties.getter@<X0>(uint64_t a1@<X1>, _WORD *a2@<X8>)
{
  result = (*(a1 + 24))(&v4);
  *a2 = v4;
  return result;
}

uint64_t static LazyLayoutAdaptor_V1.initialCache.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(a2 + 32))(a1, a2, v8);
  return (*(v7 + 32))(a3, v10, AssociatedTypeWitness);
}

double LazyLayoutAdaptor_V1.sizeThatFits(proposedSize:subviews:context:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  outlined init with copy of _LazyLayout_Subviews(a5, v12);
  v10 = (*(*(a8 + 24) + 40))(a1);
  outlined destroy of _LazyLayout_Subviews_V1(v12);
  return v10;
}

uint64_t LazyLayoutAdaptor_V1.spacing(subviews:context:cache:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  outlined init with copy of _LazyLayout_Subviews(a1, v11);
  v10 = *a2;
  (*(*(a4 + 24) + 48))(&v12, v11, &v10, a3, *(a4 + 16));
  result = outlined destroy of _LazyLayout_Subviews_V1(v11);
  *a5 = v12;
  return result;
}

uint64_t LazyLayoutAdaptor_V1.place(subviews:context:cache:in:)(uint64_t a1, const void *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  memcpy(v14, a2, 0x129uLL);
  v9 = a4[3];
  v18 = a4[2];
  v19 = v9;
  v20 = *(a4 + 64);
  v10 = a4[1];
  v16 = *a4;
  v17 = v10;
  outlined init with copy of _LazyLayout_Subviews(a1, v15);
  (*(*(a5 + 24) + 56))(v15, v14, a3, &v16, *(a5 + 16));
  outlined destroy of _LazyLayout_Subviews_V1(v15);
  v11 = v19;
  a4[2] = v18;
  a4[3] = v11;
  *(a4 + 64) = v20;
  v12 = v17;
  *a4 = v16;
  a4[1] = v12;
  result = AGGraphCancelUpdateIfNeeded();
  *(a4 + 64) = result;
  return result;
}

uint64_t LazyLayoutAdaptor_V1.estimatedPlacement(subviews:context:cache:in:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  memcpy(__dst, a2, 0x129uLL);
  v9 = *(a4 + 8);
  v10 = a4[2];
  v16 = *a4;
  v17 = v9;
  v18 = v10;
  outlined init with copy of _LazyLayout_Subviews(a1, v15);
  (*(*(a5 + 24) + 64))(v15, __dst, a3, &v16, *(a5 + 16));
  result = outlined destroy of _LazyLayout_Subviews_V1(v15);
  v12 = v17;
  v13 = v18;
  *a4 = v16;
  *(a4 + 8) = v12;
  a4[2] = v13;
  return result;
}

uint64_t LazyLayoutAdaptor_V1.proposeSizes(at:subviews:context:cache:in:)(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void *a5, uint64_t a6)
{

  memcpy(__dst, a3, 0x129uLL);
  v12 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  outlined init with copy of _LazyLayout_Subviews(a2, v32);
  (*(*(a6 + 24) + 72))(a1, v32, __dst, a4, &v33, *(a6 + 16));
  outlined destroy of _LazyLayout_Subviews_V1(v32);
  v13 = v33;
  v14 = *(v33 + 16);
  if (v14)
  {
    v26 = a5;
    __dst[0] = v12;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = 0;
    v16 = __dst[0];
    v17 = *(__dst[0] + 16);
    v27 = 48 * v17;
    v28 = v13;
    do
    {
      v18 = v13 + v15;
      v19 = *(v13 + v15 + 32);
      v20 = *(v13 + v15 + 40);
      v29 = *(v13 + v15 + 48);
      v21 = *(v13 + v15 + 56);
      v22 = *(v18 + 64);
      v30 = *(v18 + 72);
      __dst[0] = v16;
      v23 = *(v16 + 24);

      if (v17 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v17 + 1, 1);
        v16 = __dst[0];
      }

      *(v16 + 16) = v17 + 1;
      v24 = v16 + v27 + v15;
      *(v24 + 32) = v19;
      *(v24 + 40) = v20;
      *(v24 + 48) = v29;
      *(v24 + 56) = v21;
      *(v24 + 64) = v22;
      v15 += 48;
      ++v17;
      *(v24 + 72) = v30;
      --v14;
      v13 = v28;
    }

    while (v14);

    a5 = v26;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v16;
  return result;
}

double LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<D0>(void *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  type metadata accessor for _LazyLayout_Subview_V1?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v11 = v10;
  v12 = lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
  v13 = MEMORY[0x1E69E73E0];
  v14 = MEMORY[0x1E69E7410];
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:), 0, v11, &type metadata for _LazyLayout_PlacedSubview_V1, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v15);
  v27[0] = a3;
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:), 0, v11, &type metadata for _LazyLayout_PlacedSubview_V1, v13, v12, v14, v17);
  outlined init with copy of _LazyLayout_Subviews(a5, v27);
  (*(*(a7 + 24) + 80))(v29, a2, v16, v18, a4, __dst, v27, a6, *(a7 + 16), *(a7 + 24));

  outlined destroy of _LazyLayout_Subviews_V1(v27);
  v19 = v29[1];
  *a8 = v29[0];
  a8[1] = v19;
  result = *&v30;
  v21 = v31;
  a8[2] = v30;
  a8[3] = v21;
  return result;
}

double LazyLayoutAdaptor_V1.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:)@<D0>(void *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _OWORD *a8@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  type metadata accessor for _LazyLayout_Subview_V1?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v11 = v10;
  v12 = lazy protocol witness table accessor for type [_LazyLayout_PlacedSubview] and conformance [A]();
  v13 = MEMORY[0x1E69E73E0];
  v14 = MEMORY[0x1E69E7410];
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:), 0, v11, &type metadata for _LazyLayout_PlacedSubview_V1, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v15);
  v27[0] = a3;
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(closure #1 in LazyLayoutAdaptor_V1.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:), 0, v11, &type metadata for _LazyLayout_PlacedSubview_V1, v13, v12, v14, v17);
  outlined init with copy of _LazyLayout_Subviews(a5, v27);
  (*(*(a7 + 24) + 88))(v29, a2, v16, v18, a4, __dst, v27, a6, *(a7 + 16), *(a7 + 24));

  outlined destroy of _LazyLayout_Subviews_V1(v27);
  v19 = v29[1];
  *a8 = v29[0];
  a8[1] = v19;
  result = *&v30;
  v21 = v31;
  a8[2] = v30;
  a8[3] = v21;
  return result;
}

double LazyLayoutAdaptor_V1.boundingRect(at:subviews:context:cache:)@<D0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(v13, __src, 0x129uLL);
  outlined init with copy of _LazyLayout_Subviews(a3, v14);
  (*(*(a5 + 24) + 96))(v15, a2, v14, v13, a4, *(a5 + 16));
  outlined destroy of _LazyLayout_Subviews_V1(v14);
  result = *v15;
  v12 = v15[1];
  *a6 = v15[0];
  *(a6 + 16) = v12;
  *(a6 + 32) = v16;
  return result;
}

double protocol witness for LazyLayout.boundingRect(at:subviews:context:cache:) in conformance LazyLayoutAdaptor_V1<A>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  LazyLayoutAdaptor_V1.boundingRect(at:subviews:context:cache:)(a3, a1, a2, a4, a5, v9);
  result = *v9;
  v8 = v9[1];
  *a6 = v9[0];
  *(a6 + 16) = v8;
  *(a6 + 32) = v10;
  return result;
}

uint64_t (*_LazyLayout_Properties_V1.axes.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return _LazyLayout_Properties_V1.axes.modify;
}

_BYTE *(*_LazyLayout_Properties_V1.multipleViewAxes.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 1);
  return _LazyLayout_Properties_V1.multipleViewAxes.modify;
}

uint64_t _LazyLayout_Subviews_V1.views(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = outlined init with copy of _LazyLayout_Subviews(v2, a2);
  *(a2 + 144) = a1;
  return result;
}

uint64_t _LazyLayout_Subviews_V1.SubviewsSequence.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 144);
  result = outlined init with copy of _LazyLayout_Subviews(v2, a1);
  *(a1 + 144) = v4;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _LazyLayout_Subviews_V1.SubviewsSequence@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  outlined init with copy of _LazyLayout_Subviews(v1, a1);
  *(a1 + 144) = v3;

  return outlined destroy of _LazyLayout_Subviews_V1.SubviewsSequence(v1);
}

_BYTE *protocol witness for Sequence._copyToContiguousArray() in conformance _LazyLayout_Subviews_V1.SubviewsSequence()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(v0);
  outlined destroy of _LazyLayout_Subviews_V1.SubviewsSequence(v0);
  return v1;
}

uint64_t _LazyLayout_Subviews_V1.SubviewsIterator.next()@<X0>(_OWORD *a1@<X8>)
{
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v9 = *(v1 + 144);
  outlined init with copy of _LazyLayout_Subviews(v1, v8);
  v5 = v1;
  v6 = a1;
  v7 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v9, &v7, partial apply for closure #1 in _LazyLayout_Subviews_V1.SubviewsIterator.next(), &v4);
  return outlined destroy of _LazyLayout_Subviews(v8);
}

uint64_t closure #1 in _LazyLayout_Subviews_V1.SubviewsIterator.next()(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  outlined destroy of _LazyLayout_Subview_V1?(a4, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
  result = outlined init with copy of _LazyLayout_Subview(a1, a4);
  *a2 = 1;
  v9 = *(a3 + 144);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 144) = v11;
  }

  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance _LazyLayout_Subviews_V1.SubviewsIterator@<X0>(_OWORD *a1@<X8>)
{
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v9 = *(v1 + 144);
  outlined init with copy of _LazyLayout_Subviews(v1, v8);
  v5 = v1;
  v6 = a1;
  v7 = 2;
  _LazyLayout_Subviews.apply(from:style:to:)(&v9, &v7, closure #1 in _LazyLayout_Subviews_V1.SubviewsIterator.next()partial apply, &v4);
  return outlined destroy of _LazyLayout_Subviews(v8);
}

double _LazyLayout_Subview_V1.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  outlined init with copy of _LazyLayout_Subview(v6, &v22);
  outlined init with copy of _LazyLayout_Subview_V1?(a6, &v17, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
  if (v17)
  {
    outlined init with copy of _LazyLayout_Subview(&v17, v21);
    outlined destroy of _LazyLayout_Subview_V1(&v17);
  }

  else
  {
    outlined destroy of _LazyLayout_Subview_V1?(&v17, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
    memset(v21, 0, sizeof(v21));
  }

  LazyLayoutViewCache.item(data:)(v23);

  v17 = a1;
  v18 = a2 & 1;
  v19 = a3;
  v20 = a4 & 1;
  v13 = LayoutProxy.lengthThatFits(_:in:)(&v17, a5 & 1);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v13);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(partial apply for closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:));
  outlined destroy of _LazyLayout_Subview_V1?(v21, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview);
  outlined destroy of _LazyLayout_Subview(&v22);
  return v15;
}

uint64_t _LazyLayout_Subview_V1.lengthAndSpacing_v2(size:axis:predecessor:uniformSpacing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (AGGraphHasDeadlinePassed())
  {
    result = AGGraphCancelUpdate();
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 1;
  }

  else
  {
    outlined init with copy of _LazyLayout_Subview(v7, &v28);
    outlined init with copy of _LazyLayout_Subview_V1?(a6, &v23, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
    if (v23)
    {
      outlined init with copy of _LazyLayout_Subview(&v23, v27);
      outlined destroy of _LazyLayout_Subview_V1(&v23);
    }

    else
    {
      outlined destroy of _LazyLayout_Subview_V1?(&v23, &lazy cache variable for type metadata for _LazyLayout_Subview_V1?, &type metadata for _LazyLayout_Subview_V1);
      memset(v27, 0, sizeof(v27));
    }

    LazyLayoutViewCache.item(data:)(v29);

    v23 = a1;
    v24 = a2 & 1;
    v25 = a3;
    v26 = a4 & 1;
    v14 = LayoutProxy.lengthThatFits(_:in:)(&v23, a5 & 1);
    v16 = v15;
    MEMORY[0x1EEE9AC00](v14);
    v17 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI19_LazyLayout_SubviewV_s5NeverO12CoreGraphics7CGFloatVTg5(closure #1 in _LazyLayout_Subview.lengthAndSpacing(size:axis:predecessor:uniformSpacing:)partial apply);
    v19 = v18;
    outlined destroy of _LazyLayout_Subview_V1?(v27, &lazy cache variable for type metadata for _LazyLayout_Subview?, &type metadata for _LazyLayout_Subview);
    result = outlined destroy of _LazyLayout_Subview(&v28);
    *a7 = v16;
    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v17;
    }

    *(a7 + 8) = v21;
    *(a7 + 16) = 0;
  }

  return result;
}

__n128 _LazyLayout_Subview_V1.place(at:anchor:proposal:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  LOBYTE(v19[0]) = a2 & 1;
  *&v12 = a1;
  BYTE8(v12) = a2 & 1;
  v13 = a3;
  v14 = a4 & 1;
  v15 = a8;
  v16 = a9;
  v17 = a6;
  v18 = a7;
  _LazyLayout_Subview.place(at:)(&v12, v19);
  v10 = v19[3];
  *(a5 + 32) = v19[2];
  *(a5 + 48) = v10;
  *(a5 + 64) = v19[4];
  result = v19[1];
  *a5 = v19[0];
  *(a5 + 16) = result;
  return result;
}

uint64_t _LazyLayout_Subview_V1.place_v2(at:anchor:proposal:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  if (AGGraphHasDeadlinePassed())
  {
    result = AGGraphCancelUpdate();
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  else
  {
    LOBYTE(v28[0]) = a2 & 1;
    *&v21 = a1;
    BYTE8(v21) = a2 & 1;
    v22 = a3;
    v23 = a4 & 1;
    v24 = a8;
    v25 = a9;
    v26 = a6;
    v27 = a7;
    result = _LazyLayout_Subview.place(at:)(&v21, v28);
    v19 = v28[3];
    a5[2] = v28[2];
    a5[3] = v19;
    a5[4] = v28[4];
    v20 = v28[1];
    *a5 = v28[0];
    a5[1] = v20;
  }

  return result;
}

uint64_t _LazyLayout_Subview_V1.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 8);
  v10 = *(LazyLayoutViewCache.item(data:)((v4 + 16)) + 44);

  v11 = *MEMORY[0x1E698D3F8];
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v13 = a1;
  v14 = a2 & 1;
  v15 = a3;
  v16 = a4 & 1;
  return LayoutProxy.size(in:)(&v13);
}

uint64_t _LazyLayout_Subview_V1.SubviewResult.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v4 + 8))(v7, a1);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

BOOL _LazyLayout_Subview_V1.SubviewResult.isCancelled.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 1) == 1;
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t _LazyLayout_Subview_V1.LengthAndSpacing.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x193AC11E0](*&v3);
}

Swift::Int _LazyLayout_Subview_V1.LengthAndSpacing.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x193AC11E0](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x193AC11E0](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _LazyLayout_Subview_V1.LengthAndSpacing()
{
  Hasher.init(_seed:)();
  _LazyLayout_Subview_V1.LengthAndSpacing.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static _LazyLayout_Subview_V1.SubviewResult<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v30 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _LazyLayout_Subview_V1.SubviewResult();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v26 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v26 - v14;
  v17 = *(v16 + 48);
  v29 = v9;
  v18 = *(v9 + 16);
  v18(&v26 - v14, v30, v8, v13);
  (v18)(&v15[v17], a2, v8);
  v30 = v6;
  v19 = *(v6 + 48);
  if (v19(v15, 1, a3) == 1)
  {
    v20 = 1;
    if (v19(&v15[v17], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v18)(v31, v15, v8);
    if (v19(&v15[v17], 1, a3) != 1)
    {
      v21 = v30;
      v22 = v27;
      (*(v30 + 32))(v27, &v15[v17], a3);
      v23 = v31;
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v21 + 8);
      v24(v22, a3);
      v24(v23, a3);
LABEL_8:
      v12 = v29;
      goto LABEL_9;
    }

    (*(v30 + 8))(v31, a3);
  }

  v20 = 0;
  v8 = TupleTypeMetadata2;
LABEL_9:
  (*(v12 + 8))(v15, v8);
  return v20 & 1;
}

uint64_t _LazyLayout_Subview_V1.SubviewResult<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, v7);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    return MEMORY[0x193AC11A0](1);
  }

  (*(v3 + 32))(v5, v9, v2);
  MEMORY[0x193AC11A0](0);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int _LazyLayout_Subview_V1.SubviewResult<A>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  _LazyLayout_Subview_V1.SubviewResult<A>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> _LazyLayout_Subview_V1.SubviewResult<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  _LazyLayout_Subview_V1.SubviewResult<A>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t _LazyLayout_Subview_V1.SubviewResult<A>.length.getter()
{
  if (v0[16])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t _LazyLayout_Subview_V1.SubviewResult<A>.spacing.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
    return *(v0 + 8);
  }
}

uint64_t _LazyLayout_Subview_V1.proposeSize(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  LOBYTE(v12[0]) = a2 & 1;
  result = _LazyLayout_Subview.proposeSize(_:)(a1, a2 & 1, a3, a4 & 1, v12);
  v7 = v12[1];
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a5 = v12[0];
  *(a5 + 8) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  *(a5 + 40) = v11;
  return result;
}

double _LazyLayout_SizeAndSpacingContext_V1.containerSize.getter()
{
  result = 0.0;
  if (*(v0 + 12) != *MEMORY[0x1E698D3F8])
  {
    return *AGGraphGetValue();
  }

  return result;
}

__n128 _LazyLayout_PlacementContext_V1.containingScrollGeometry.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 104);
  v3 = *(v1 + 136);
  *(a1 + 64) = *(v1 + 120);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 152);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 88);
  *(a1 + 48) = result;
  return result;
}

__n128 _LazyLayout_PlacementContext_V1.nearestScrollGeometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  *(a1 + 64) = *(v1 + 232);
  *(a1 + 80) = v3;
  v4 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v2;
  result = *(v1 + 264);
  *(a1 + 96) = result;
  return result;
}

uint64_t _LazyLayout_PlacementContext_V1.isCancelled.getter()
{
  result = AGGraphHasDeadlinePassed();
  if (result)
  {
    v1 = result;
    AGGraphCancelUpdate();
    return v1;
  }

  return result;
}

double _LazyLayout_PlacementContext_V1.containerSize.getter()
{
  result = 0.0;
  if (*(v0 + 12) != *MEMORY[0x1E698D3F8])
  {
    return *AGGraphGetValue();
  }

  return result;
}

double _LazyLayout_PlacementContext_V1.visibleRect.getter()
{
  v2 = *(v0 + 136);
  if (*(v0 + 296) == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(*(v0 + 280));
  }

  return *&v2;
}

double _LazyLayout_PlacedSubview_V1.origin.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  _LazyLayout_PlacedSubview.size.getter();
  return v2 - v1 * v3;
}

double _LazyLayout_PlacedSubview_V1.frame.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  _LazyLayout_PlacedSubview.size.getter();
  v4 = v2 - v1 * v3;
  _LazyLayout_PlacedSubview.size.getter();
  return v4;
}

uint64_t _LazyLayout_Placements_V1.subviews.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v26;
    v4 = (v1 + 32);
    do
    {
      v21 = *v4;
      v5 = v4[1];
      v6 = v4[2];
      v7 = v4[4];
      v24 = v4[3];
      v25 = v7;
      v22 = v5;
      v23 = v6;
      outlined init with copy of _LazyLayout_PlacedSubview(&v21, &v16);
      v26 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v3 = v26;
      }

      v19 = v24;
      v20 = v25;
      v17 = v22;
      v18 = v23;
      v10 = v21;
      v16 = v21;
      *(v3 + 16) = v9 + 1;
      v11 = (v3 + 80 * v9);
      v11[2] = v10;
      v12 = v17;
      v13 = v18;
      v14 = v20;
      v11[5] = v19;
      v11[6] = v14;
      v11[3] = v12;
      v11[4] = v13;
      v4 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t _LazyLayout_Placements_V1.subviews.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v23;
    v6 = v4 - 1;
    for (i = 32; ; i += 80)
    {
      v8 = *(a1 + i + 48);
      v20 = *(a1 + i + 32);
      v21 = v8;
      v22 = *(a1 + i + 64);
      v9 = *(a1 + i + 16);
      v18 = *(a1 + i);
      v19 = v9;
      outlined init with copy of _LazyLayout_PlacedSubview_V1(&v18, &v17);
      v23 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v5 = v23;
      }

      *(v5 + 16) = v11 + 1;
      v12 = (v5 + 80 * v11);
      v12[2] = v18;
      v13 = v19;
      v14 = v20;
      v15 = v22;
      v12[5] = v21;
      v12[6] = v15;
      v12[3] = v13;
      v12[4] = v14;
      if (!v6)
      {
        break;
      }

      --v6;
    }
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *v2 = v5;
  return result;
}

uint64_t (*_LazyLayout_Placements_V1.subviews.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = _LazyLayout_Placements_V1.subviews.getter();
  return _LazyLayout_Placements_V1.subviews.modify;
}

uint64_t _LazyLayout_Placements_V1.subviews.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return _LazyLayout_Placements_V1.subviews.setter(*a1);
  }

  _LazyLayout_Placements_V1.subviews.setter(v2);
}

void _LazyLayout_Placements_V1.validRect.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void (*_LazyLayout_Placements_V1.validRect.modify(uint64_t *a1))(void **a1)
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
  v4 = *(v1 + 24);
  *v3 = *(v1 + 8);
  *(v3 + 16) = v4;
  return _LazyLayout_Placements_V1.validRect.modify;
}

void _LazyLayout_Placements_V1.validRect.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *(v2 + 8) = *v1;
  *(v2 + 24) = v3;
  free(v1);
}

uint64_t _LazyLayout_EstimatedPlacements_V1.index.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t (*_LazyLayout_EstimatedPlacements_V1.index.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  return _LazyLayout_EstimatedPlacements_V1.index.modify;
}

uint64_t _LazyLayout_EstimatedPlacements_V1.index.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

double _LazyLayout_EstimatedPlacements_V1.subview.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 64);
    v5 = *(v2 + 96);
    v11 = *(v2 + 80);
    v12 = v5;
    v6 = *(v2 + 64);
    v10[1] = v3;
    v10[2] = v4;
    v7 = *(v2 + 48);
    v10[0] = *(v2 + 32);
    a1[3] = v11;
    a1[4] = v5;
    a1[1] = v7;
    a1[2] = v6;
    *a1 = *(v2 + 32);
    outlined init with copy of _LazyLayout_PlacedSubview(v10, &v9);
  }

  else
  {
    result = 0.0;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t key path getter for _LazyLayout_EstimatedPlacements_V1.subview : _LazyLayout_EstimatedPlacements_V1@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + 16);
  if (*(v3 + 16))
  {
    v4 = *(v3 + 48);
    v17 = *(v3 + 32);
    v18 = v4;
    v5 = *(v3 + 80);
    v19 = *(v3 + 64);
    v20 = v5;
    v21 = *(v3 + 96);
    v14 = v18;
    v15 = v17;
    v12 = v5;
    v13 = v19;
    v11 = v21;
    result = outlined init with copy of _LazyLayout_PlacedSubview(&v17, v16);
    v7 = v11;
    v6 = v12;
    v9 = v13;
    v8 = v14;
    v10 = v15;
  }

  else
  {
    v10 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a2 = v10;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

uint64_t key path setter for _LazyLayout_EstimatedPlacements_V1.subview : _LazyLayout_EstimatedPlacements_V1(_OWORD *a1, uint64_t a2)
{
  v3 = a1[1];
  v13[0] = *a1;
  v13[1] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v13[4] = a1[4];
  if (*&v13[0])
  {
    type metadata accessor for _LazyLayout_Subview_V1?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_LazyLayout_PlacedSubview>, &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    v7 = a1[2];
    v8 = a1[3];
    v9 = *a1;
    v6[3] = a1[1];
    v6[4] = v7;
    v10 = a1[4];
    v6[5] = v8;
    v6[6] = v10;
    v6[1] = xmmword_18DDA6EB0;
    v6[2] = v9;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of _LazyLayout_Subview_V1?(v13, &v12, &lazy cache variable for type metadata for _LazyLayout_PlacedSubview_V1?, &type metadata for _LazyLayout_PlacedSubview_V1);

  *(a2 + 16) = v6;
  return result;
}
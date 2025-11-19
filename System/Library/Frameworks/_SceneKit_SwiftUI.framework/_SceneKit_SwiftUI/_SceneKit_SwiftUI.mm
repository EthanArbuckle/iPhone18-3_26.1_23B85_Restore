BOOL sub_23B9593A4(void *a1, uint64_t *a2)
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

void *sub_23B9593D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_23B959400@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23B9594EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B959520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SceneView.init(scene:pointOfView:options:preferredFramesPerSecond:antialiasingMode:delegate:technique:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v8 = *a3;
  *a8 = result;
  a8[1] = a2;
  a8[2] = a4;
  a8[3] = a5;
  a8[4] = a6;
  a8[5] = v8;
  a8[6] = a7;
  return result;
}

uint64_t SceneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  *a1 = *v1;
  v5 = *(v1 + 8);
  *(a1 + 8) = v5;
  *(a1 + 24) = v3;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v4;
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = v6;

  return swift_unknownObjectRetain();
}

unint64_t sub_23B959608()
{
  result = qword_27E195940;
  if (!qword_27E195940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195940);
  }

  return result;
}

unint64_t sub_23B959660()
{
  result = qword_27E195948;
  if (!qword_27E195948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195948);
  }

  return result;
}

unint64_t sub_23B9596B8()
{
  result = qword_27E195950;
  if (!qword_27E195950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195950);
  }

  return result;
}

unint64_t sub_23B959710()
{
  result = qword_27E195958;
  if (!qword_27E195958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195958);
  }

  return result;
}

uint64_t sub_23B959788@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  *a1 = *v1;
  v5 = *(v1 + 8);
  *(a1 + 8) = v5;
  *(a1 + 24) = v3;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v4;
  v6 = v5;
  v7 = v4;
  v8 = v2;
  v9 = v6;

  return swift_unknownObjectRetain();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneView.Options(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SceneView.Options(uint64_t result, int a2, int a3)
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

unint64_t sub_23B959894()
{
  result = qword_27E195D40[0];
  if (!qword_27E195D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E195D40);
  }

  return result;
}

void type metadata accessor for SCNAntialiasingMode()
{
  if (!qword_27E1959C0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E1959C0);
    }
  }
}

uint64_t sub_23B959954()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = v3;
  v10 = *v0;
  v11 = v0[1];
  v5 = *(v0 + 1);
  v6 = *v0;
  v7 = v5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1959C8, &qword_23B95A880);
  sub_23B95A114();
  v8 = v16;
  v12[0] = v10;
  v12[1] = v11;
  v13 = v1;
  v14 = v2;
  v15 = v3;
  sub_23B959D50(v16, v12);

  swift_unknownObjectRelease();
  sub_23B95A114();
  return *&v12[0];
}

void sub_23B959A40()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = v3;
  v9 = *v0;
  v10 = v0[1];
  v5 = *(v0 + 1);
  v6 = v9;
  v7 = v5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1959C8, &qword_23B95A880);
  sub_23B95A114();
  v8 = v15;
  v11[0] = v9;
  v11[1] = v10;
  v12 = v1;
  v13 = v2;
  v14 = v3;
  sub_23B959D50(v15, v11);

  swift_unknownObjectRelease();
}

id sub_23B959B18@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277CDBB20]) init];
  *a1 = result;
  return result;
}

uint64_t sub_23B959BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B959CB4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23B959C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B959CB4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23B959C8C()
{
  sub_23B959CB4();
  sub_23B95A0F4();
  __break(1u);
}

unint64_t sub_23B959CB4()
{
  result = qword_27E195E50;
  if (!qword_27E195E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E195E50);
  }

  return result;
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

void sub_23B959D50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v15 = v4;
  [a1 setScene_];
  [a1 setDelegate_];
  [a1 setAntialiasingMode_];
  [a1 setPreferredFramesPerSecond_];
  [a1 setAllowsCameraControl_];
  [a1 setRendersContinuously_];
  [a1 setAutoenablesDefaultLighting_];
  [a1 setJitteringEnabled_];
  [a1 setTemporalAntialiasingEnabled_];
  [a1 setShowsStatistics_];
  [a1 setTechnique_];
  if (!v4)
  {
    return;
  }

  v10 = [a1 pointOfView];
  if (v10)
  {
    v11 = v10;
    sub_23B959F3C();
    v12 = v15;
    v13 = sub_23B95A154();

    if (v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v14 = v15;
  }

  [a1 setPointOfView_];
LABEL_8:
}

unint64_t sub_23B959F3C()
{
  result = qword_27E1959D0;
  if (!qword_27E1959D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1959D0);
  }

  return result;
}

uint64_t sub_23B959F88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23B959FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}
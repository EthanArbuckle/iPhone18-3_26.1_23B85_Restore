uint64_t sub_1E137FD9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E137FDE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E137FE2C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t DynamicShelfBasedPage.shelfOrdering.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(a2 + 56))(a1, a2);
  (*(a2 + 32))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0);
  swift_getAssociatedConformanceWitness();
  sub_1E1AF5CEC();

  (*(v5 + 8))(v7, AssociatedTypeWitness);
  if (v10)
  {
    return v10;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1E138008C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DynamicShelfBasedPage.shelfOrdering.getter(a1, WitnessTable);
}

uint64_t sub_1E1380168@<X0>(uint64_t (*a1)(void)@<X4>, void *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

double sub_1E1380198(char *a1, uint64_t a2)
{
  v26 = a2;
  v4 = 0x6874646977;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = 0xE500000000000000;
  sub_1E1AF381C();
  v25 = sub_1E1AF379C();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14 & 1) != 0 || (v4 = 0x746867696568, v12 = 0xE600000000000000, sub_1E1AF381C(), sub_1E1AF379C(), v17 = v16, v15(v9, v5), (v17))
  {
    v18 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v20 = v19;
    type metadata accessor for CGSize(0);
    *v20 = v4;
    v20[1] = v12;
    v20[2] = v21;
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69AB690], v18);
    swift_willThrow();
    v22 = sub_1E1AF39DC();
    (*(*(v22 - 8) + 8))(v26, v22);
    v15(a1, v5);
  }

  else
  {
    v2 = *&v25;
    v23 = sub_1E1AF39DC();
    (*(*(v23 - 8) + 8))(v26, v23);
    v15(a1, v5);
  }

  return v2;
}

double sub_1E1380458(char *a1, uint64_t a2)
{
  v26 = a2;
  v4 = sub_1E1AF380C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = 120;
  sub_1E1AF381C();
  v12 = sub_1E1AF379C();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v10, v4);
  if (v14 & 1) != 0 || (v11 = 121, sub_1E1AF381C(), sub_1E1AF379C(), v17 = v16, v15(v8, v4), (v17))
  {
    v18 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    v20 = v19;
    type metadata accessor for CGPoint(0);
    *v20 = v11;
    v20[1] = 0xE100000000000000;
    v20[2] = v21;
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69AB690], v18);
    swift_willThrow();
    v22 = sub_1E1AF39DC();
    (*(*(v22 - 8) + 8))(v26, v22);
    v15(a1, v4);
  }

  else
  {
    v2 = *&v12;
    v23 = sub_1E1AF39DC();
    (*(*(v23 - 8) + 8))(v26, v23);
    v15(a1, v4);
  }

  return v2;
}

unint64_t sub_1E1380704()
{
  result = qword_1EE1E3580;
  if (!qword_1EE1E3580)
  {
    sub_1E1AF5A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3580);
  }

  return result;
}

void sub_1E13807AC()
{
  v1 = *(v0 + 32);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v1 + 1;
    fmin(exp2(v1) * 0.3, 5.0);
    sub_1E15BAC74(0x20000000000001uLL);
  }
}

uint64_t sub_1E138085C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF5DBC();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1E1308058(v11, &qword_1ECEB2DF0);
    goto LABEL_8;
  }

  sub_1E1380D6C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  sub_1E1AEFD5C();

  v5 = 0;
LABEL_9:
  v6 = sub_1E1AEFE6C();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_1E13809B4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1E1AEFE6C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1380BEC(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E1308058(v6, &unk_1ECEBB780);
    v11 = sub_1E1AF5DBC();
    [v2 removeObjectForKey_];

    return sub_1E1308058(a1, &unk_1ECEBB780);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_1E1AEFD6C();
    v14 = v13;
    v15 = sub_1E1AF5DBC();
    [v2 setDouble:v15 forKey:v14];

    sub_1E1308058(a1, &unk_1ECEBB780);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1E1380BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E1380C5C()
{
  v1 = sub_1E1AF5DBC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E1AF6EBC();
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
    sub_1E1380D6C();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_1E1308058(v8, &qword_1ECEB2DF0);
  }

  return 0;
}

unint64_t sub_1E1380D6C()
{
  result = qword_1EE1E31F0;
  if (!qword_1EE1E31F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E31F0);
  }

  return result;
}

uint64_t ImpressionableArtwork.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ImpressionableArtwork.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ImpressionableArtwork.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v48 = a2;
  v40 = *v2;
  v41 = v3;
  v50 = sub_1E1AF39DC();
  v57 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v38 - v7;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  sub_1E1AF381C();
  v17 = sub_1E1AF37CC();
  v49 = v12;
  v47 = v13;
  if (v18)
  {
    v52 = v17;
    v53 = v18;
    sub_1E1AF6F6C();
    v44 = *(v13 + 8);
    v44(v16, v12);
    v19 = v57;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = v8;
    v22 = a1;
    v24 = v23;
    (*(v9 + 8))(v11, v21);
    v52 = v20;
    v53 = v24;
    a1 = v22;
    v19 = v57;
    sub_1E1AF6F6C();
    v44 = *(v13 + 8);
    v44(v16, v12);
  }

  v42 = a1;
  v25 = v55;
  v26 = v51;
  *(v51 + 24) = v54;
  *(v26 + 40) = v25;
  *(v26 + 56) = v56;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v43 = *(v19 + 16);
  v27 = v46;
  v28 = v48;
  v29 = v50;
  v43(v46, v48, v50);
  v30 = v45;
  sub_1E1AF464C();
  v39 = OBJC_IVAR____TtC11AppStoreKit21ImpressionableArtwork_impressionMetrics;
  v31 = v30;
  v32 = v42;
  sub_1E134B7C8(v31, v26 + OBJC_IVAR____TtC11AppStoreKit21ImpressionableArtwork_impressionMetrics);
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v43(v27, v28, v29);
  sub_1E13817F0(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v33 = v54;
  if (v54)
  {
    (*(v57 + 8))(v28, v29);
    v44(v32, v49);
    result = v51;
    *(v51 + 16) = v33;
  }

  else
  {
    v35 = sub_1E1AF5A7C();
    sub_1E13817F0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v36 = 7631457;
    v36[1] = 0xE300000000000000;
    v36[2] = v40;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    (*(v57 + 8))(v28, v29);
    v44(v32, v49);
    v37 = v51;
    sub_1E134B88C(v51 + 24);
    sub_1E13814C0(v37 + v39);
    type metadata accessor for ImpressionableArtwork();
    swift_deallocPartialClassInstance();
    return v37;
  }

  return result;
}

uint64_t sub_1E13814C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ImpressionableArtwork()
{
  result = qword_1EE1DA938;
  if (!qword_1EE1DA938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E13815A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ImpressionableArtwork.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);

  LOBYTE(v2) = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v2, v3);

  return v2 & 1;
}

uint64_t ImpressionableArtwork.deinit()
{

  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit21ImpressionableArtwork_impressionMetrics);
  return v0;
}

uint64_t ImpressionableArtwork.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 24);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit21ImpressionableArtwork_impressionMetrics);

  return swift_deallocClassInstance();
}

uint64_t sub_1E1381718@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ImpressionableArtwork();
  v7 = swift_allocObject();
  result = ImpressionableArtwork.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E13817F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E1381840()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E138194C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B20);
  result = swift_allocObject();
  *(result + 16) = sub_1E138199C;
  *(result + 24) = 0;
  qword_1EE215BA0 = result;
  return result;
}

void sub_1E138199C(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 == sub_1E1AF5DFC() && v7 == v8)
  {
    goto LABEL_14;
  }

  v10 = sub_1E1AF74AC();

  if (v10)
  {
LABEL_6:

LABEL_15:
    v21 = 2.0;
    goto LABEL_16;
  }

  v11 = sub_1E1AF5DFC();
  v13 = v12;
  if (v11 == sub_1E1AF5DFC() && v13 == v14)
  {
    goto LABEL_14;
  }

  v16 = sub_1E1AF74AC();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = sub_1E1AF5DFC();
  v19 = v18;
  if (v17 == sub_1E1AF5DFC() && v19 == v20)
  {
LABEL_14:

    goto LABEL_15;
  }

  v22 = sub_1E1AF74AC();

  if (v22)
  {
    goto LABEL_6;
  }

  v23 = sub_1E1AF5DFC();
  v25 = v24;
  if (v23 == sub_1E1AF5DFC() && v25 == v26)
  {
    goto LABEL_20;
  }

  v27 = sub_1E1AF74AC();

  if (v27)
  {

    v21 = 3.0;
    goto LABEL_16;
  }

  v28 = sub_1E1AF5DFC();
  v30 = v29;
  if (v28 == sub_1E1AF5DFC() && v30 == v31)
  {
LABEL_20:

    v21 = 3.0;
  }

  else
  {
    v32 = sub_1E1AF74AC();

    v21 = 1.0;
    if (v32)
    {
      v21 = 3.0;
    }
  }

LABEL_16:
  *a2 = v21;
}

uint64_t FlowcaseItemLayout.init(metrics:artworkView:captionView:titleText:subtitleText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v11 = sub_1E1AEFF8C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FlowcaseItemLayout(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E1381FB4(a1, v18 + *(v16 + 40));
  sub_1E1300B24(a2, v18);
  sub_1E1AEFF4C();
  v19 = sub_1E1AEFF5C();
  (*(v12 + 8))(v14, v11);
  if (v19)
  {
    sub_1E1300B24(a3, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC8);
    if (swift_dynamicCast())
    {
      sub_1E1308EC0(v27, v32);
      __swift_project_boxed_opaque_existential_1Tm(v32, v32[3]);
      sub_1E1AF14BC();
      v20 = v30;
      v21 = v31;
      v22 = __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      v18[8] = v20;
      v18[9] = *(v21 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18 + 5);
      (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v22, v20);
      __swift_destroy_boxed_opaque_existential_1(v29);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      sub_1E1382094(v27);
      sub_1E1300B24(a3, (v18 + 5));
    }

    __swift_project_boxed_opaque_existential_1Tm(a4, a4[3]);
    sub_1E1AF14BC();
    __swift_project_boxed_opaque_existential_1Tm(a5, a5[3]);
    sub_1E1AF14BC();
    __swift_destroy_boxed_opaque_existential_1(a3);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1E1382038(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1E1382038(a1);
    sub_1E1308EC0(a3, (v18 + 5));
    sub_1E1300B24(a4, (v18 + 10));
    sub_1E1300B24(a5, (v18 + 15));
  }

  sub_1E1382708(v18, v26, type metadata accessor for FlowcaseItemLayout);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return __swift_destroy_boxed_opaque_existential_1(a4);
}

uint64_t sub_1E1381FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1382038(uint64_t a1)
{
  v2 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1382094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 FlowcaseItemLayout.Metrics.init(captionSpace:titleSpace:subtitleSpace:textArtworkMargin:artworkAspectRatio:bottomSpace:textLayoutMargins:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  v17 = a8 + v16[10];
  sub_1E1308EC0(a1, a8);
  sub_1E1308EC0(a2, a8 + 40);
  sub_1E1308EC0(a3, a8 + 80);
  sub_1E1308EC0(a4, a8 + 120);
  v18 = v16[8];
  v19 = sub_1E1AF127C();
  (*(*(v19 - 8) + 32))(a8 + v18, a5, v19);
  sub_1E1308EC0(a6, a8 + v16[9]);
  result = *a7;
  v21 = *(a7 + 16);
  *v17 = *a7;
  *(v17 + 16) = v21;
  *(v17 + 32) = *(a7 + 32);
  return result;
}

uint64_t FlowcaseItemLayout.Metrics.captionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t FlowcaseItemLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t FlowcaseItemLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_1E1308EC0(a1, v1 + 80);
}

uint64_t FlowcaseItemLayout.Metrics.textArtworkMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t FlowcaseItemLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 32);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseItemLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 32);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseItemLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 36);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

__n128 FlowcaseItemLayout.Metrics.textLayoutMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 40);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 FlowcaseItemLayout.Metrics.textLayoutMargins.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_1E1382708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FlowcaseItemLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout(0) + 32);

  return sub_1E1381FB4(v3, a1);
}

uint64_t FlowcaseItemLayout.metrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout(0) + 32);

  return sub_1E1382828(a1, v3);
}

uint64_t sub_1E1382828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FlowcaseItemLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v110 = a1;
  v7 = sub_1E1AF180C();
  v82 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v83 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1E1AF181C();
  v85 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AD8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v89 = v80 - v11;
  v12 = sub_1E1AF159C();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v90 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1E1AF184C();
  *&v112 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E1AF188C();
  *&v111 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v86 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF18BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v106 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1E1AF18DC();
  v109 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v108 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E1AF745C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1300B24((v3 + 5), v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AC8);
  v24 = swift_dynamicCast();
  v95 = a2;
  v84 = v7;
  if (v24)
  {
    sub_1E1308EC0(&v119, &v113);
    __swift_project_boxed_opaque_existential_1Tm(&v113, *(&v114 + 1));
    sub_1E1AF146C();
    __swift_destroy_boxed_opaque_existential_1(&v113);
  }

  else
  {
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    sub_1E1382094(&v119);
  }

  if (qword_1EE1DE028 != -1)
  {
    swift_once();
  }

  *&v113 = qword_1EE215BA0;

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(v110, v23);
  v26 = v25;
  v27 = v25;
  (*(v21 + 8))(v23, v20);

  result = __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v3[18]);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v26;
  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v3[18]);
  v30 = sub_1E1AF112C();
  __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
  sub_1E1AF146C();
  if (v30)
  {
    v104 = a3;
    __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
    result = sub_1E1AF14AC();
    if (result == 1)
    {
      __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
      result = sub_1E1AF146C();
    }

    v31 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
      result = sub_1E1AF145C();
      v32 = v31 - result;
      if (!__OFSUB__(v31, result))
      {
        __swift_project_boxed_opaque_existential_1Tm(v4 + 15, v4[18]);
        if (v32 >= 1)
        {
          sub_1E1AF146C();
          __swift_project_boxed_opaque_existential_1Tm(v4 + 15, v4[18]);
        }

        sub_1E1AF118C();
        __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
        sub_1E1AF11BC();
        goto LABEL_18;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1Tm(v3 + 15, v3[18]);
  sub_1E1AF118C();
  v33 = v3[13];
  v34 = v4[14];
  v35 = __swift_project_boxed_opaque_existential_1Tm(v4 + 10, v4[13]);
  v127[3] = v33;
  v127[4] = *(v34 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v127);
  (*(*(v33 - 8) + 16))(boxed_opaque_existential_0, v35, v33);
LABEL_18:
  (*(v17 + 104))(v106, *MEMORY[0x1E69ABA28], v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
  v37 = *(sub_1E1AF189C() - 8);
  v81 = *(v37 + 72);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v80[0] = 2 * v81;
  v39 = swift_allocObject();
  v80[1] = v39;
  *(v39 + 16) = xmmword_1E1B03760;
  v96 = v39 + v38;
  v40 = v4 + *(type metadata accessor for FlowcaseItemLayout(0) + 32);
  v103 = *MEMORY[0x1E69ABA08];
  v41 = v111;
  v42 = *(v111 + 104);
  v101 = v111 + 104;
  v102 = v42;
  v43 = v86;
  v42(v86);
  *&v113 = MEMORY[0x1E69E7CC0];
  v98 = sub_1E1383FCC(&qword_1EE1D2A80, MEMORY[0x1E69AB9F8]);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
  v99 = sub_1E1383E14();
  v45 = v87;
  v44 = v88;
  sub_1E1AF6EEC();
  v104 = *&v40;
  sub_1E1AF186C();
  v97 = *(v112 + 8);
  *&v112 = v112 + 8;
  v97(v45, v44);
  v46 = v41 + 8;
  v47 = *(v41 + 8);
  v48 = v107;
  v47(v43, v107);
  *&v111 = v46;
  v102(v43, v103, v48);
  *&v113 = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  sub_1E1AF186C();
  v97(v45, v44);
  v47(v43, v48);
  v49 = v4[18];
  v50 = v4[19];
  v81 = v4;
  v51 = __swift_project_boxed_opaque_existential_1Tm(v4 + 15, v49);
  *(&v114 + 1) = v49;
  *&v115 = *(v50 + 8);
  v52 = __swift_allocate_boxed_opaque_existential_0(&v113);
  (*(*(v49 - 8) + 16))(v52, v51, v49);
  v102(v43, v103, v48);
  v123[0] = MEMORY[0x1E69E7CC0];
  sub_1E1AF6EEC();
  v53 = v104;
  sub_1E1AF186C();
  v97(v45, v44);
  v47(v43, v48);
  __swift_destroy_boxed_opaque_existential_1(&v113);
  *(&v114 + 1) = sub_1E1AF140C();
  *&v115 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v113);
  sub_1E1AF13FC();
  v54 = v108;
  sub_1E1AF18CC();
  v55 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  v56 = (*&v53 + *(v55 + 40));
  v57 = (v109 + 16);
  v58 = v105;
  if (v56[2])
  {
    v124 = v105;
    v125 = MEMORY[0x1E69ABA38];
    v126 = MEMORY[0x1E69ABA40];
    v59 = __swift_allocate_boxed_opaque_existential_0(v123);
    (*v57)(v59, v54, v58);
  }

  else
  {
    *(&v120 + 1) = v105;
    v121 = MEMORY[0x1E69ABA38];
    v122 = MEMORY[0x1E69ABA40];
    v60 = *v56;
    v111 = v56[1];
    v112 = v60;
    v61 = __swift_allocate_boxed_opaque_existential_0(&v119);
    (*v57)(v61, v54, v58);
    v124 = &type metadata for InsetLayout;
    v125 = sub_1E1383EDC();
    v126 = sub_1E1383F30();
    sub_1E1337DC8(&v119, &v113);
    v117 = v111;
    v116 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B10);
    v62 = swift_allocObject();
    v63 = v116;
    v62[3] = v115;
    v62[4] = v63;
    v62[5] = v117;
    v64 = v114;
    v62[1] = v113;
    v62[2] = v64;
    v123[0] = v62;
  }

  v66 = v84;
  v65 = v85;
  v68 = v82;
  v67 = v83;
  sub_1E1300B24(v81, &v113);
  v69 = *(v55 + 32);
  v70 = sub_1E1AF127C();
  v71 = *(v70 - 8);
  v72 = v104;
  v73 = *&v104 + v69;
  v74 = v89;
  (*(v71 + 16))(v89, v73, v70);
  (*(v71 + 56))(v74, 0, 1, v70);
  v75 = v90;
  sub_1E1AF158C();
  sub_1E1383E78(v123, &v113);
  v76 = v92;
  *(&v120 + 1) = v92;
  v121 = MEMORY[0x1E69AB958];
  v122 = MEMORY[0x1E69AB960];
  v77 = __swift_allocate_boxed_opaque_existential_0(&v119);
  v78 = v91;
  (*(v91 + 16))(v77, v75, v76);
  (*(v68 + 104))(v67, *MEMORY[0x1E69AB9E0], v66);
  sub_1E1300B24(*&v72 + 120, &v118);
  v79 = v93;
  sub_1E1AF17FC();
  sub_1E1AF17EC();
  (*(v65 + 8))(v79, v94);
  (*(v78 + 8))(v75, v76);
  (*(v109 + 8))(v108, v105);
  __swift_destroy_boxed_opaque_existential_1(v123);
  return __swift_destroy_boxed_opaque_existential_1(v127);
}

uint64_t sub_1E1383860(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1E1383FCC(&qword_1ECEB2B18, type metadata accessor for FlowcaseItemLayout);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, v10, a3, v11, v12);
}

double _s11AppStoreKit18FlowcaseItemLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF162C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF165C();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1DE028 != -1)
  {
    swift_once();
  }

  v31[0] = qword_1EE215BA0;

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(a2, v14);
  (*(v12 + 8))(v14, v11);

  v15 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  v16 = a1 + *(v15 + 40);
  if (*(v16 + 32))
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *v16 + *(v16 + 16);
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E69AB970], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7DE0];
  *(v18 + 16) = xmmword_1E1B03770;
  v32 = v19;
  v33 = MEMORY[0x1E69AB858];
  *v31 = v17;
  v20 = sub_1E1AF1A1C();
  v21 = MEMORY[0x1E69ABA90];
  *(v18 + 56) = v20;
  *(v18 + 64) = v21;
  __swift_allocate_boxed_opaque_existential_0((v18 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1, v31);
  *(v18 + 96) = v20;
  *(v18 + 104) = v21;
  __swift_allocate_boxed_opaque_existential_0((v18 + 72));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1, v31);
  v22 = sub_1E1AF18EC();
  v23 = MEMORY[0x1E69ABA48];
  *(v18 + 136) = v22;
  *(v18 + 144) = v23;
  __swift_allocate_boxed_opaque_existential_0((v18 + 112));
  sub_1E1AF18FC();
  sub_1E1300B24(a1 + 40, v31);
  *(v18 + 176) = v20;
  *(v18 + 184) = v21;
  __swift_allocate_boxed_opaque_existential_0((v18 + 152));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 40, v31);
  *(v18 + 216) = v22;
  *(v18 + 224) = v23;
  __swift_allocate_boxed_opaque_existential_0((v18 + 192));
  sub_1E1AF18FC();
  sub_1E1300B24(a1 + 80, v31);
  *(v18 + 256) = v20;
  *(v18 + 264) = v21;
  __swift_allocate_boxed_opaque_existential_0((v18 + 232));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 80, v31);
  *(v18 + 296) = v22;
  *(v18 + 304) = v23;
  __swift_allocate_boxed_opaque_existential_0((v18 + 272));
  sub_1E1AF18FC();
  sub_1E1300B24(a1 + 120, v31);
  *(v18 + 336) = v20;
  *(v18 + 344) = v21;
  __swift_allocate_boxed_opaque_existential_0((v18 + 312));
  sub_1E1AF1A2C();
  sub_1E1AF123C();
  v32 = MEMORY[0x1E69E7DE0];
  v33 = MEMORY[0x1E69AB858];
  v31[0] = v24;
  *(v18 + 376) = v20;
  *(v18 + 384) = v21;
  __swift_allocate_boxed_opaque_existential_0((v18 + 352));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + *(v15 + 36), v31);
  *(v18 + 416) = v20;
  *(v18 + 424) = v21;
  __swift_allocate_boxed_opaque_existential_0((v18 + 392));
  sub_1E1AF1A2C();
  sub_1E1AF163C();
  sub_1E1AF161C();
  v26 = v25;
  (*(v29 + 8))(v10, v30);
  return v26;
}

unint64_t sub_1E1383E14()
{
  result = qword_1EE1D2630;
  if (!qword_1EE1D2630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB2AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2630);
  }

  return result;
}

uint64_t sub_1E1383E78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1E1383EDC()
{
  result = qword_1ECEB2B00;
  if (!qword_1ECEB2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2B00);
  }

  return result;
}

unint64_t sub_1E1383F30()
{
  result = qword_1ECEB2B08;
  if (!qword_1ECEB2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2B08);
  }

  return result;
}

uint64_t sub_1E1383FCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E138403C()
{
  result = sub_1E138432C(319, &qword_1EE1D2AE0);
  if (v1 <= 0x3F)
  {
    result = sub_1E138432C(319, &qword_1EE1D2AB0);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FlowcaseItemLayout.Metrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 24);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1E1384278()
{
  sub_1E138432C(319, &qword_1EE1D2AC0);
  if (v0 <= 0x3F)
  {
    sub_1E1AF127C();
    if (v1 <= 0x3F)
    {
      sub_1E1384388();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E138432C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1E1384388()
{
  if (!qword_1EE1D25A0)
  {
    type metadata accessor for UIEdgeInsets(255);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D25A0);
    }
  }
}

uint64_t GameCenterReengagement.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GameCenterReengagement.init(deserializing:using:)(a1, a2);
  return v4;
}

void *GameCenterReengagement.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v145 = a2;
  v125 = sub_1E1AF05FC();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v131 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF39DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v123 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v127 = &v118 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v146 = &v118 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v118 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v138 = &v118 - v16;
  v148 = sub_1E1AEFEAC();
  v143 = *(v148 - 1);
  MEMORY[0x1EEE9AC00](v148);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF380C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v121 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v122 = &v118 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v126 = &v118 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v132 = &v118 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v137 = &v118 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v118 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v118 - v34;
  v135 = OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_clickAction;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_clickAction) = 0;
  v136 = OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_heroAction;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_heroAction) = 0;
  v154 = a1;
  sub_1E1AF381C();
  v36 = sub_1E1AF37CC();
  v147 = v6;
  v141 = v33;
  v142 = v19;
  if (v37)
  {
    v149 = v36;
    v150 = v37;
    sub_1E1AF6F6C();
    v38 = *(v20 + 8);
    v143 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v148 = v38;
    (v38)(v35, v19);
    v39 = v7;
  }

  else
  {
    sub_1E1AEFE9C();
    v40 = sub_1E1AEFE7C();
    v41 = v7;
    v42 = v19;
    v43 = v3;
    v45 = v44;
    (*(v143 + 8))(v18, v148);
    v149 = v40;
    v150 = v45;
    v3 = v43;
    v39 = v41;
    sub_1E1AF6F6C();
    v46 = *(v20 + 8);
    v143 = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v148 = v46;
    (v46)(v35, v42);
  }

  v144 = v39;
  v47 = v3 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_id;
  v48 = v152;
  *v47 = v151;
  *(v47 + 16) = v48;
  v134 = v47;
  *(v47 + 32) = v153;
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v49 = v3;
  v50 = (v39 + 16);
  v51 = *(v39 + 16);
  v52 = v145;
  v53 = v147;
  v51(v140, v145, v147);
  v54 = v138;
  sub_1E1AF464C();
  v139 = v49;
  v133 = OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_impressionMetrics;
  sub_1E134B7C8(v54, v49 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_impressionMetrics);
  v138 = v50;
  v130 = v51;
  v51(v146, v52, v53);
  v55 = v154;
  v56 = v137;
  sub_1E1AF381C();
  v57 = sub_1E1AF37CC();
  v59 = v58;
  v60 = v142;
  v61 = v148;
  v62 = v144;
  (v148)(v56, v142);
  if (!v59)
  {
    v75 = sub_1E1AF5A7C();
    sub_1E1385B18(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v148 = v61;
    v76 = v147;
    v78 = v77;
    v79 = type metadata accessor for GameCenterReengagement();
    *v78 = 0x656C746974;
    v78[1] = 0xE500000000000000;
    v78[2] = v79;
    (*(*(v75 - 8) + 104))(v78, *MEMORY[0x1E69AB690], v75);
    swift_willThrow();
    v80 = *(v62 + 8);
    v80(v145, v76);
    (v148)(v55, v60);
    v80(v146, v76);
    goto LABEL_10;
  }

  v129 = v59;
  v120 = v57;
  v63 = v141;
  sub_1E1AF381C();
  v119 = sub_1E1AF37CC();
  v65 = v64;
  (v61)(v63, v60);
  v66 = v132;
  sub_1E1AF381C();
  v67 = JSONObject.appStoreColor.getter();
  (v61)(v66, v60);
  if (!v67)
  {

    v81 = sub_1E1AF5A7C();
    sub_1E1385B18(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v82 = v147;
    v84 = v83;
    v85 = type metadata accessor for GameCenterReengagement();
    *v84 = 0x756F72676B636162;
    v84[1] = 0xEF726F6C6F43646ELL;
    v84[2] = v85;
    (*(*(v81 - 8) + 104))(v84, *MEMORY[0x1E69AB690], v81);
    swift_willThrow();
    v86 = *(v144 + 8);
    v86(v145, v82);
    (v61)(v55, v60);
    v86(v146, v82);
    goto LABEL_10;
  }

  v137 = v65;
  v68 = v126;
  sub_1E1AF381C();
  v69 = v127;
  v71 = v146;
  v70 = v147;
  v72 = v130;
  v130(v127, v146, v147);
  v73 = v128;
  Achievement.init(deserializing:using:)(v68, v69, v131);
  if (v73)
  {

    v74 = *(v144 + 8);
    v74(v145, v70);
    (v148)(v154, v142);
    v74(v71, v70);
LABEL_10:
    v87 = v139;

    sub_1E134B88C(v134);
    sub_1E13814C0(v87 + v133);
    type metadata accessor for GameCenterReengagement();
    swift_deallocPartialClassInstance();
    return v87;
  }

  v89 = v122;
  sub_1E1AF381C();
  v90 = v123;
  v72(v123, v71, v70);
  type metadata accessor for Lockup();
  swift_allocObject();
  v91 = Lockup.init(deserializing:using:)(v89, v90);
  v132 = 0;
  v136 = v91;
  v92 = v121;
  sub_1E1AF381C();
  v93 = sub_1E1AF37CC();
  v95 = v94;
  v96 = v92;
  v97 = v142;
  v98 = v148;
  (v148)(v96, v142);
  v99 = v137;
  v100 = v129;
  v148 = v98;
  if (v95)
  {
    v101 = v141;
    sub_1E1AF381C();
    v102 = sub_1E1AF37CC();
    v104 = v103;
    (v98)(v101, v97);
    v99 = v137;
  }

  else
  {
    v104 = 0;
    v102 = v93;
    v101 = v141;
  }

  v87 = v139;
  v139[2] = v102;
  v87[3] = v104;
  v87[4] = v93;
  v87[5] = v95;
  v87[6] = v120;
  v87[7] = v100;
  v87[8] = v119;
  v87[9] = v99;
  v87[10] = v67;
  type metadata accessor for Artwork();
  v138 = v67;
  v105 = v154;
  sub_1E1AF381C();
  v130(v140, v146, v147);
  sub_1E1385B18(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  v87[11] = v151;
  v106 = v124;
  (*(v124 + 16))(v87 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_achievement, v131, v125);
  v107 = v136;
  *(v87 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_lockup) = v136;
  v108 = *(v107 + 264);
  v109 = OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_clickAction;
  swift_beginAccess();
  *(v87 + v109) = v108;

  type metadata accessor for Action();
  sub_1E1AF381C();
  v110 = v101;
  v111 = v146;
  v140 = static Action.tryToMakeInstance(byDeserializing:using:)(v110, v146);

  v112 = *(v144 + 8);
  v113 = v147;
  v112(v145, v147);
  v114 = v105;
  v115 = v142;
  v116 = v148;
  (v148)(v114, v142);
  v116(v141, v115);
  (*(v106 + 8))(v131, v125);
  v112(v111, v113);
  v117 = OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_heroAction;
  swift_beginAccess();
  *(v87 + v117) = v140;

  return v87;
}

uint64_t type metadata accessor for GameCenterReengagement()
{
  result = qword_1EE1EC618;
  if (!qword_1EE1EC618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameCenterReengagement.badgeGlyph.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GameCenterReengagement.badge.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GameCenterReengagement.title.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t GameCenterReengagement.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t GameCenterReengagement.achievement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_achievement;
  v4 = sub_1E1AF05FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E138552C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_1E13855EC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

double sub_1E13856A0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1E13856AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_lockup);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1E1B02CC0;
    *(v2 + 56) = type metadata accessor for Lockup();
    *(v2 + 64) = sub_1E1385B18(qword_1EE1E4F68, type metadata accessor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t GameCenterReengagement.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_achievement;
  v2 = sub_1E1AF05FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_id);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_impressionMetrics);
  return v0;
}

uint64_t GameCenterReengagement.__deallocating_deinit()
{
  GameCenterReengagement.deinit();

  return swift_deallocClassInstance();
}

void *sub_1E13858EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for GameCenterReengagement();
  v7 = swift_allocObject();
  result = GameCenterReengagement.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E13859A4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11AppStoreKit22GameCenterReengagement_lockup);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1E1B02CC0;
    *(v2 + 56) = type metadata accessor for Lockup();
    *(v2 + 64) = sub_1E1385B18(qword_1EE1E4F68, type metadata accessor for Lockup);
    *(v2 + 32) = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1E1385AC0(uint64_t a1)
{
  result = sub_1E1385B18(qword_1EE1EC638, type metadata accessor for GameCenterReengagement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1385B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void sub_1E1385BC0()
{
  sub_1E1AF05FC();
  if (v0 <= 0x3F)
  {
    sub_1E134EAF4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t CanaryFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id CanaryFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_1EE1F1410 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE1F1418;
  [qword_1EE1F1418 lock];
  v4 = qword_1EE1DEB58;
  v3 = qword_1EE1DEB60;

  result = [v2 unlock];
  if (v3)
  {
    v6[3] = MEMORY[0x1E69E6158];
    v6[0] = v4;
    v6[1] = v3;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_1E1AF4A1C();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t sub_1E1385F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E130B5DC;

  return MEMORY[0x1EEE17028](a1, a2, a3, a4);
}

uint64_t _s11AppStoreKit25ImpressionsFieldsProviderV8category9JetEngine07MetricseF8CategoryOvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF524C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for CanaryFieldsProvider()
{
  result = qword_1EE1EDB60;
  if (!qword_1EE1EDB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1386198()
{
  result = sub_1E1AF524C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t JSMetricsEventLinter.init(asPartOf:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();

  sub_1E1AF55EC();

  a2[1] = v4;
  return result;
}

uint64_t JSMetricsEventLinter.init(objectGraph:intentDispatcher:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E13862F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();

  sub_1E1AF55EC();

  a2[1] = v4;
  return result;
}

uint64_t sub_1E1386374(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E13863BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ArcadeLaunchAttributionAction.__allocating_init(bundleIdentifier:additionalMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ArcadeLaunchAttributionAction.init(bundleIdentifier:additionalMetrics:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a4;
  v9 = sub_1E1AEFEAC();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (v5 + OBJC_IVAR____TtC11AppStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);
  *v18 = a1;
  v18[1] = a2;
  v19 = [objc_opt_self() mainBundle];
  v20 = [v19 bundleIdentifier];

  v21 = MEMORY[0x1E69E6158];
  if (v20)
  {
    v22 = sub_1E1AF5DFC();
    v24 = v23;

    *(&v53 + 1) = v21;
    *&v52 = v22;
    *(&v52 + 1) = v24;
    sub_1E1301CF0(&v52, &v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = a3;
    sub_1E159827C(&v49, 0x707041666572, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    a3 = v46;
  }

  if (qword_1EE1F3430 != -1)
  {
    swift_once();
  }

  v26 = *(off_1EE1F3438 + 3);
  if (v26)
  {
    v27 = *(off_1EE1F3438 + 2);
    *(&v53 + 1) = v21;
    *&v52 = v27;
    *(&v52 + 1) = v26;
    sub_1E1301CF0(&v52, &v49);

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = a3;
    sub_1E159827C(&v49, 0x4365676150666572, 0xEE00747865746E6FLL, v28);
    a3 = v46;
  }

  *(v5 + OBJC_IVAR____TtC11AppStoreKit29ArcadeLaunchAttributionAction_additionalMetrics) = a3;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v29 = v43;
  (*(v15 + 16))(v17, v43, v14);
  v30 = sub_1E1AF46DC();
  (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  v31 = (v5 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v31 = 0u;
  v31[1] = 0u;
  sub_1E138853C(&v52, &v46);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    v32 = v40;
    sub_1E1AEFE9C();
    v33 = sub_1E1AEFE7C();
    v35 = v34;
    (*(v41 + 8))(v32, v42);
    v44 = v33;
    v45 = v35;
    sub_1E1AF6F6C();
    sub_1E1308058(&v46, &unk_1ECEB5670);
  }

  (*(v15 + 8))(v29, v14);
  sub_1E1308058(&v52, &unk_1ECEB5670);
  v36 = v5 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v36 + 32) = v51;
  v37 = v50;
  *v36 = v49;
  *(v36 + 16) = v37;
  sub_1E134B7C8(v13, v5 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  (*(v15 + 32))(v5 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v17, v14);
  return v5;
}

uint64_t sub_1E138692C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1E1301CF0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1E159827C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1E1308058(a1, &qword_1ECEB2DF0);
    sub_1E1496610(a2, a3, v9);

    return sub_1E1308058(v9, &qword_1ECEB2DF0);
  }

  return result;
}

uint64_t sub_1E1386A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1E1598D2C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1E13018F8(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1E1415E90();
        v16 = v18;
      }

      result = sub_1E14132F4(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1E1386B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1E1308EC0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1E1598E7C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1E1308058(a1, &qword_1ECEB2B60);
    sub_1E1496784(a2, a3, v9);

    return sub_1E1308058(v9, &qword_1ECEB2B60);
  }

  return result;
}

uint64_t sub_1E1386C10(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1E1308058(a1, &qword_1ECEB2B58);
    sub_1E14967C4(a2, v7);
    v12 = sub_1E1AEFEAC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1E1308058(v7, &qword_1ECEB2B58);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1E1598ED0(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1E1AEFEAC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1E1386E44(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1E1308058(a1, &qword_1ECEB2D90);
    sub_1E1496800(a2, v7);
    v12 = sub_1E1AEFEAC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1E1308058(v7, &qword_1ECEB2D90);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1E15990E0(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_1E1AEFEAC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1E1387078(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1E15992F0(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E134B88C(a2);
    *v2 = v13;
  }

  else
  {
    v8 = sub_1E135FCF4(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        sub_1E14169B0();
        v12 = v14;
      }

      sub_1E134B88C(*(v12 + 48) + 40 * v10);

      sub_1E141D264(v10, v12);
      result = sub_1E134B88C(a2);
      *v3 = v12;
    }

    else
    {

      return sub_1E134B88C(a2);
    }
  }

  return result;
}

uint64_t sub_1E1387180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1E1308EC0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1E1599BC4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1E1308058(a1, &qword_1ECEB2B50);
    sub_1E1496B70(a2, a3, v9);

    return sub_1E1308058(v9, &qword_1ECEB2B50);
  }

  return result;
}

uint64_t sub_1E1387250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1E1599EF8(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1E159549C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1E1417784();
        v11 = v13;
      }

      result = sub_1E1413C48(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1E1387310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1E159A348(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E134B88C(a2);
    *v2 = v13;
  }

  else
  {
    v8 = sub_1E135FCF4(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        sub_1E1418004();
        v12 = v14;
      }

      sub_1E134B88C(*(v12 + 48) + 40 * v10);

      sub_1E141D264(v10, v12);
      result = sub_1E134B88C(a2);
      *v3 = v12;
    }

    else
    {

      return sub_1E134B88C(a2);
    }
  }

  return result;
}

uint64_t sub_1E1387418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1E159A4EC(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1E134B88C(a3);
    *v3 = v15;
  }

  else
  {
    v10 = sub_1E135FCF4(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_1E1418018();
        v14 = v16;
      }

      sub_1E134B88C(*(v14 + 48) + 40 * v12);

      sub_1E141D26C(v12, v14);
      result = sub_1E134B88C(a3);
      *v4 = v14;
    }

    else
    {

      return sub_1E134B88C(a3);
    }
  }

  return result;
}

uint64_t sub_1E1387538(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E1595354(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v21 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E1418438();
        v10 = v21;
      }

      v11 = *(v10 + 48);
      v12 = sub_1E1AF468C();
      v13 = *(v12 - 8);
      v14 = *(v13 + 8);
      v14(v11 + *(v13 + 72) * v8, v12);
      sub_1E14142BC(v8, v10);
      result = (v14)(a3, v12);
      *v4 = v10;
    }

    else
    {
      v19 = sub_1E1AF468C();
      v20 = *(*(v19 - 8) + 8);

      return v20(a3, v19);
    }
  }

  else
  {
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1E159A804(a1, a3, v17);
    v18 = sub_1E1AF468C();
    result = (*(*(v18 - 8) + 8))(a3, v18);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1E13876EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1E159A638(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_1E1AF468C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1E1595354(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1E14181B8();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_1E1AF468C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1E14142BC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_1E1AF468C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

unint64_t sub_1E13878AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1E159AC6C(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1E131A7E8(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1E1418DA8();
        v11 = v13;
      }

      result = sub_1E14145DC(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1E138796C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1E159B2F8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1E13018F8(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1E1419B44();
        v14 = v16;
      }

      result = sub_1E141D25C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1E1387AA0(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t, uint64_t), uint64_t *a4, uint64_t a5, void (*a6)(_OWORD *__return_ptr, uint64_t))
{
  if (*(a1 + 24))
  {
    v9 = *(a1 + 48);
    v16[2] = *(a1 + 32);
    v16[3] = v9;
    v16[4] = *(a1 + 64);
    v17 = *(a1 + 80);
    v10 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v6;
    a3(v16, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1E138867C(a2);
    *v6 = v15;
  }

  else
  {
    sub_1E1308058(a1, a4);
    a6(v16, a2);
    sub_1E138867C(a2);
    return sub_1E1308058(v16, a4);
  }

  return result;
}

uint64_t sub_1E1387B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1E159CF54(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1E15A47D8(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1E141C234();
        v14 = v16;
      }

      result = sub_1E1413144(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t ArcadeLaunchAttributionAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v51 = a2;
  v43 = *v3;
  v5 = sub_1E1AF39DC();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v45 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v48 = a1;
  sub_1E1AF381C();
  v19 = sub_1E1AF37CC();
  v21 = v20;
  v44 = v11;
  v22 = v18;
  v23 = *(v11 + 8);
  v23(v22, v10);
  if (!v21)
  {
    v32 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v33 = 0xD000000000000010;
    v33[1] = 0x80000001E1B5AAA0;
    v33[2] = v43;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x1E69AB690], v32);
    swift_willThrow();
    (*(v49 + 8))(v51, v50);
    v23(v48, v10);
    swift_deallocPartialClassInstance();
    return v10;
  }

  v43 = v3;
  v24 = (v3 + OBJC_IVAR____TtC11AppStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);
  *v24 = v19;
  v24[1] = v21;
  v25 = v48;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v42 = v23;
  v23(v16, v10);
  v26 = sub_1E1AF40DC();
  v27 = *(v26 - 8);
  v28 = v25;
  v29 = v10;
  if ((*(v27 + 48))(v9, 1, v26) == 1)
  {
    sub_1E1308058(v9, &qword_1ECEB2B28);
    v30 = v51;
    v31 = v49;
LABEL_6:
    v34 = sub_1E1303A74(MEMORY[0x1E69E7CC0]);

    goto LABEL_7;
  }

  v34 = sub_1E1AF40BC();
  (*(v27 + 8))(v9, v26);
  v30 = v51;
  v31 = v49;
  if (!v34)
  {
    goto LABEL_6;
  }

LABEL_7:
  v35 = v44;
  v36 = v50;
  *(v43 + OBJC_IVAR____TtC11AppStoreKit29ArcadeLaunchAttributionAction_additionalMetrics) = v34;
  v37 = v45;
  (*(v35 + 16))(v45, v28, v10);
  v10 = v46;
  (*(v31 + 16))(v46, v30, v36);
  v38 = v47;
  v39 = Action.init(deserializing:using:)(v37, v10);
  if (!v38)
  {
    v10 = v39;
  }

  (*(v31 + 8))(v30, v36);
  v42(v28, v29);
  return v10;
}

uint64_t ArcadeLaunchAttributionAction.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit29ArcadeLaunchAttributionAction_bundleIdentifier);

  return v1;
}

uint64_t sub_1E13882BC()
{
}

uint64_t ArcadeLaunchAttributionAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t ArcadeLaunchAttributionAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t sub_1E138853C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ArcadeLaunchAttributionAction()
{
  result = qword_1ECEB2B30;
  if (!qword_1ECEB2B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FinanceType.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = *v1;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      sub_1E1AF5DFC();
      sub_1E1AEFCAC();

      v24 = sub_1E1AEFCCC();
      v25 = *(v24 - 8);
      result = (*(v25 + 48))(v12, 1, v24);
      if (result != 1)
      {
        return (*(v25 + 32))(a1, v12, v24);
      }

      __break(1u);
    }

    else
    {
      if (v18 != 3)
      {
        sub_1E1AF5DFC();
        sub_1E1AEFCAC();

        v26 = sub_1E1AEFCCC();
        v27 = *(v26 - 8);
        result = (*(v27 + 48))(v6, 1, v26);
        if (result != 1)
        {
          return (*(v27 + 32))(a1, v6, v26);
        }

        goto LABEL_19;
      }

      sub_1E1AF5DFC();
      sub_1E1AEFCAC();

      v19 = sub_1E1AEFCCC();
      v20 = *(v19 - 8);
      result = (*(v20 + 48))(v9, 1, v19);
      if (result != 1)
      {
        return (*(v20 + 32))(a1, v9, v19);
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!*v1)
  {
    sub_1E1AF5DFC();
    sub_1E1AEFCAC();

    v22 = sub_1E1AEFCCC();
    v23 = *(v22 - 8);
    result = (*(v23 + 48))(v17, 1, v22);
    if (result != 1)
    {
      return (*(v23 + 32))(a1, v17, v22);
    }

    goto LABEL_18;
  }

  sub_1E1AF5DFC();
  sub_1E1AEFCAC();

  v28 = sub_1E1AEFCCC();
  v29 = *(v28 - 8);
  result = (*(v29 + 48))(v15, 1, v28);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  return (*(v29 + 32))(a1, v15, v28);
}

AppStoreKit::FinanceType_optional __swiftcall FinanceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FinanceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 1952868711;
  v4 = 0x6D6F74737563;
  if (v1 != 3)
  {
    v4 = 0x79746972616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6565646572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1E1388C14()
{
  result = qword_1ECEB2B68;
  if (!qword_1ECEB2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2B68);
  }

  return result;
}

uint64_t sub_1E1388C68()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1388D3C()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1388DFC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1388ED8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E756F636361;
  v5 = 0xE400000000000000;
  v6 = 1952868711;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (v2 != 3)
  {
    v8 = 0x79746972616863;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D6565646572;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for FinanceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinanceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E1389180(uint64_t a1)
{
  swift_beginAccess();
  sub_1E13891EC(a1, v1 + 40);
  swift_endAccess();
  sub_1E138B568();
  return sub_1E1308058(a1, &qword_1ECEB2588);
}

uint64_t sub_1E13891EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2588);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_1E138925C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E13892B0;
}

uint64_t sub_1E13892B0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E138B568();
  }

  return result;
}

uint64_t sub_1E13892E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v4 = sub_1E1AF436C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1E138936C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v4 = sub_1E1AF436C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1E138951C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E13895E0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1E1389640(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

double sub_1E13896FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - v2;
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  if (qword_1EE1E2E90 != -1)
  {
    swift_once();
  }

  sub_1E1AF535C();
  sub_1E1AF532C();

  (*(v1 + 8))(v3, v0);
  return *&v5[1];
}

uint64_t sub_1E1389938@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v6, a3, a2);
}

uint64_t sub_1E13899C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  sub_1E13619D8(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t sub_1E1389B70(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t BasePresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1E138C578(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t BasePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1E138C578(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1E1389D04()
{
  v1 = v0;
  v31 = sub_1E1AF4A9C();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E1AF436C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v7 = v36;
  v8 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v32 = *(v4 + 16);
  v32(v6, v0 + v8, v3);
  type metadata accessor for PendingPageRender(0);
  swift_allocObject();

  v33 = v7;
  v10 = PendingPageRender.init(bag:metricsPipeline:)(v9, v6);
  swift_beginAccess();
  *(v1 + 16) = v10;

  if (v10)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = &v10[OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_contextProvider];
    swift_beginAccess();
    *v12 = sub_1E138D44C;
    v12[1] = v11;
  }

  v13 = *(v1 + 16);
  if (v13)
  {
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = (v13 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v28 = v6;
    v17 = *v15;
    v16 = v15[1];
    *v15 = sub_1E138D454;
    v15[1] = v14;

    v6 = v28;
    sub_1E1361B18(v17, v16);
  }

  sub_1E1AF772C();
  sub_1E1AF3ACC();
  v32(v6, v1 + v8, v3);
  sub_1E1AF50BC();
  swift_allocObject();
  v18 = sub_1E1AF50AC();
  swift_beginAccess();
  *(v1 + 24) = v18;

  v19 = (v1 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageContext);
  swift_beginAccess();
  v20 = v19[1];
  if (!v20 || !*(v1 + 24))
  {
  }

  v21 = *v19;
  v22 = qword_1EE1E3990;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = v31;
  __swift_project_value_buffer(v31, qword_1EE1E3998);
  v34 = v21;
  v35 = v20;
  if (qword_1EE1E39B8 != -1)
  {
    swift_once();
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
  __swift_project_value_buffer(v24, qword_1EE1E39C0);
  v25 = v29;
  sub_1E1AF4A3C();

  sub_1E1AF505C();

  return (*(v30 + 8))(v25, v23);
}

uint64_t sub_1E138A278(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
}

uint64_t sub_1E138A2D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

uint64_t sub_1E138A338@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7210);
  v74 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v63 - v3;
  v4 = sub_1E1AF4A9C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v80 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v63 - v8;
  v10 = sub_1E1AF3C3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v67 = v2;
    v72 = a1;
    v81 = *(Strong + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsTracker);
    v15 = Strong;
    swift_beginAccess();
    v77 = v15;
    sub_1E134FD1C(v15 + 40, v86, &qword_1ECEB2588);
    v16 = v87;
    if (v87)
    {
      v78 = v88;
      v17 = __swift_project_boxed_opaque_existential_1Tm(v86, v87);
      v79 = &v63;
      v18 = v4;
      v19 = v5;
      v20 = *(v16 - 8);
      MEMORY[0x1EEE9AC00](v17);
      v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v22);
      swift_unknownObjectRetain();
      sub_1E1308058(v86, &qword_1ECEB2588);
      sub_1E1AF5B8C();
      (*(v20 + 8))(v22, v16);
      v5 = v19;
      v4 = v18;
      v23 = sub_1E1AF3AEC();
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_1E1308058(v86, &qword_1ECEB2588);
      v23 = 0;
    }

    v26 = v80;
    v76 = v23;
    v27 = v77;
    v28 = (v77 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageContext);
    swift_beginAccess();
    v29 = v28[1];
    v64 = *v28;
    v30 = (v27 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_referrer);
    swift_beginAccess();
    v31 = v30[1];
    v65 = *v30;
    v32 = qword_1EE1F3430;
    v33 = v81;
    swift_unknownObjectRetain();
    v79 = v29;

    v78 = v31;

    if (v32 != -1)
    {
      swift_once();
    }

    v34 = off_1EE1F3438;
    swift_beginAccess();
    v69 = *(v34 + 80);
    v35 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_advertRotationData;
    swift_beginAccess();
    sub_1E134FD1C(v27 + v35, v86, &unk_1ECEB7230);
    v36 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_searchGhostHintData;
    swift_beginAccess();
    sub_1E134FD1C(v27 + v36, v85, &qword_1ECEB2B70);
    swift_beginAccess();
    v37 = v34[17];
    v38 = (v27 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_deviceWindowData);
    swift_beginAccess();
    v39 = *v38;
    v68 = v38[1];
    v40 = (v27 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsAppendixData);
    swift_beginAccess();
    v41 = *v40;
    v66 = v40[1];
    v75 = v41;
    swift_unknownObjectRetain();
    v80 = v37;

    v70 = v39;
    swift_unknownObjectRetain();
    sub_1E1AF4A8C();
    v42 = qword_1EE1E3948;
    swift_unknownObjectRetain();
    if (v42 != -1)
    {
      swift_once();
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B80);
    __swift_project_value_buffer(v43, qword_1EE1E3950);
    v84[0] = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
    sub_1E1AF4A3C();
    v44 = *(v5 + 8);
    v44(v9, v4);
    v71 = v33;
    swift_unknownObjectRelease();
    v45 = *(v5 + 32);
    *&v81 = v5 + 32;
    v45(v9, v26, v4);
    if (v79)
    {
      *&v84[0] = v64;
      *(&v84[0] + 1) = v79;
      if (qword_1EE1E39B8 != -1)
      {
        swift_once();
      }

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
      __swift_project_value_buffer(v46, qword_1EE1E39C0);
      sub_1E1AF4A3C();
      v44(v9, v4);
      v45(v9, v26, v4);
    }

    if (v78)
    {
      *&v84[0] = v65;
      *(&v84[0] + 1) = v78;
      if (qword_1EE1E3970 != -1)
      {
        swift_once();
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B78);
      __swift_project_value_buffer(v47, qword_1EE1E3978);
      sub_1E1AF4A3C();
      v44(v9, v4);
      v45(v9, v26, v4);
    }

    LOBYTE(v84[0]) = 0;
    if (qword_1EE1E3928 != -1)
    {
      swift_once();
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B90);
    __swift_project_value_buffer(v48, qword_1EE1E3930);
    sub_1E1AF4A3C();
    v44(v9, v4);
    v45(v9, v26, v4);
    if (v76)
    {
      *&v84[0] = v76;
      v49 = v45;
      v50 = v44;
      v51 = v73;
      sub_1E1AF4A5C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
      sub_1E1AF4A3C();
      v52 = v51;
      v44 = v50;
      v45 = v49;
      (*(v74 + 8))(v52, v67);
      v44(v9, v4);
      v49(v9, v26, v4);
    }

    if (v69 != 2)
    {
      LOBYTE(v84[0]) = v69 & 1;
      if (qword_1ECEB0E70 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v48, qword_1EE1D2960);
      sub_1E1AF4A3C();
      v44(v9, v4);
      v45(v9, v26, v4);
    }

    sub_1E134FD1C(v86, &v82, &unk_1ECEB7230);
    if (v83)
    {
      sub_1E1308EC0(&v82, v84);
      v53 = v70;
      if (qword_1EE1D28F8 != -1)
      {
        swift_once();
      }

      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7250);
      __swift_project_value_buffer(v54, qword_1EE1D2900);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC8);
      sub_1E1AF4A3C();
      __swift_destroy_boxed_opaque_existential_1(v84);
      v44(v9, v4);
      v45(v9, v26, v4);
    }

    else
    {
      sub_1E1308058(&v82, &unk_1ECEB7230);
      v53 = v70;
    }

    sub_1E134FD1C(v85, &v82, &qword_1ECEB2B70);
    v55 = v80;
    if (v83)
    {
      sub_1E1308EC0(&v82, v84);
      if (qword_1EE1D28B0 != -1)
      {
        swift_once();
      }

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7240);
      __swift_project_value_buffer(v56, qword_1EE1D28B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BC0);
      sub_1E1AF4A3C();
      __swift_destroy_boxed_opaque_existential_1(v84);
      v44(v9, v4);
      v45(v9, v26, v4);
      v55 = v80;
      if (!v80)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_1E1308058(&v82, &qword_1ECEB2B70);
      if (!v55)
      {
LABEL_42:
        if (v75)
        {
          *&v84[0] = v75;
          *(&v84[0] + 1) = v66;
          v59 = qword_1EE1D28D0;
          swift_unknownObjectRetain();
          if (v59 != -1)
          {
            swift_once();
          }

          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA8);
          __swift_project_value_buffer(v60, qword_1EE1D28D8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB0);
          sub_1E1AF4A3C();
          v44(v9, v4);
          swift_unknownObjectRelease();
          v45(v9, v26, v4);
        }

        if (v53)
        {
          *&v84[0] = v53;
          *(&v84[0] + 1) = v68;
          v61 = qword_1EE1D2918;
          swift_unknownObjectRetain();
          if (v61 != -1)
          {
            swift_once();
          }

          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B98);
          __swift_project_value_buffer(v62, qword_1EE1D2920);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
          sub_1E1AF4A3C();

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v44(v9, v4);
          sub_1E1308058(v85, &qword_1ECEB2B70);
          sub_1E1308058(v86, &unk_1ECEB7230);
          swift_unknownObjectRelease();
          v45(v9, v26, v4);
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();

          sub_1E1308058(v85, &qword_1ECEB2B70);
          sub_1E1308058(v86, &unk_1ECEB7230);
        }

        return (v45)(v72, v9, v4);
      }
    }

    *&v84[0] = v55;
    v57 = qword_1ECEB0E78;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BB8);
    __swift_project_value_buffer(v58, qword_1ECEB5998);
    type metadata accessor for Action();
    sub_1E1AF4A3C();
    v44(v9, v4);

    v45(v9, v26, v4);
    goto LABEL_42;
  }

  if (qword_1EE1E3990 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v4, qword_1EE1E3998);
  return (*(v5 + 16))(a1, v24, v4);
}

uint64_t sub_1E138B2C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t sub_1E138B3C8(char a1)
{
  v3 = swift_beginAccess();
  v1[32] = a1;
  result = (*(*v1 + 256))(v3);
  v6 = v5;
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, v6);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v8 = swift_getObjectType();
    (*(v6 + 16))(v8, v6);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1E138B4D8(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v5, &qword_1ECEB2588);
  v3 = *a2;
  swift_beginAccess();
  sub_1E13891EC(v5, v3 + 40);
  swift_endAccess();
  sub_1E138B568();
  return sub_1E1308058(v5, &qword_1ECEB2588);
}

uint64_t sub_1E138B568()
{
  v1 = sub_1E1AF3C1C();
  v43 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v55 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v38 - v4;
  v5 = sub_1E1AF3B5C();
  v50 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = sub_1E1AF3C3C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1E134FD1C(v0 + 40, &v58, &qword_1ECEB2588);
  if (v59)
  {
    v39 = v0;
    sub_1E1337DC8(&v58, &v60);
    __swift_project_boxed_opaque_existential_1Tm(&v60, v61);
    sub_1E1AF5B8C();
    v14 = sub_1E1AF3B8C();
    result = (*(v11 + 8))(v13, v10);
    v49 = *(v14 + 16);
    if (v49)
    {
      v16 = 0;
      v45 = v50 + 16;
      v54 = v43 + 16;
      v56 = (v43 + 8);
      v40 = (v50 + 32);
      v42 = MEMORY[0x1E69E7CC0];
      v44 = (v50 + 8);
      v48 = v5;
      v47 = v9;
      v46 = v14;
      v17 = v55;
      while (v16 < *(v14 + 16))
      {
        v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v53 = v16;
        v51 = *(v50 + 72);
        (*(v50 + 16))(v9, v14 + v52 + v51 * v16, v5);
        v18 = sub_1E1AF3AFC();
        sub_1E1AF3C0C();
        if (*(v18 + 16) && (sub_1E138D45C(&qword_1EE1E3B28, MEMORY[0x1E69AAF70]), v19 = sub_1E1AF5D0C(), v20 = -1 << *(v18 + 32), v21 = v19 & ~v20, ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
        {
          v22 = ~v20;
          v23 = *(v43 + 72);
          v24 = *(v43 + 16);
          while (1)
          {
            v24(v17, *(v18 + 48) + v23 * v21, v1);
            sub_1E138D45C(&qword_1EE1E3B20, MEMORY[0x1E69AAF70]);
            v25 = sub_1E1AF5DAC();
            v26 = *v56;
            (*v56)(v17, v1);
            if (v25)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v26(v57, v1);
          v27 = *v40;
          v9 = v47;
          v5 = v48;
          (*v40)(v41, v47, v48);
          v28 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v28;
          *&v58 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E135C168(0, *(v28 + 16) + 1, 1);
            v30 = v58;
          }

          v32 = *(v30 + 16);
          v31 = *(v30 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1E135C168(v31 > 1, v32 + 1, 1);
            v30 = v58;
          }

          *(v30 + 16) = v32 + 1;
          v42 = v30;
          result = v27((v30 + v52 + v32 * v51), v41, v5);
        }

        else
        {
LABEL_4:

          (*v56)(v57, v1);
          v9 = v47;
          v5 = v48;
          result = (*v44)(v47, v48);
        }

        v16 = v53 + 1;
        v14 = v46;
        if (v53 + 1 == v49)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
LABEL_21:

      v35 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageEnterGate;
      v36 = v39;
      swift_beginAccess();
      if (*(v36 + v35))
      {
        v37 = *(v42 + 16);

        MetricsPageEnterGate.hasMetricsPage.setter(v37 != 0);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v60);
    }
  }

  else
  {
    sub_1E1308058(&v58, &qword_1ECEB2588);
    v33 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageEnterGate;
    result = swift_beginAccess();
    v34 = *(v0 + v33);
    if (v34)
    {
      result = swift_beginAccess();
      *(v34 + 34) = 0;
    }
  }

  return result;
}

uint64_t sub_1E138BC8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  v5 = sub_1E1AF436C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1E138BD18(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E1AF436C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_metricsPipeline;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_1E138BE30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1E138BE98(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1E138BF44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  sub_1E134FD1C(a1, v13, a5);
  v10 = *a2;
  v11 = *a7;
  swift_beginAccess();
  sub_1E13619D8(v13, v10 + v11, a5);
  return swift_endAccess();
}

uint64_t sub_1E138BFC8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v5;
  v7[1] = v6;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t BasePresenter.deinit()
{

  sub_1E1308058(v0 + 40, &qword_1ECEB2588);
  v1 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_metricsPipeline;
  v2 = sub_1E1AF436C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_advertRotationData, &unk_1ECEB7230);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_searchGhostHintData, &qword_1ECEB2B70);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BasePresenter.__deallocating_deinit()
{
  BasePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E138C2C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_1E138C328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = (v5 + *a5);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;
}

uint64_t sub_1E138C41C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v6, a3, a2);
}

uint64_t sub_1E138C538()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_1E138C578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a2;
  v45 = a4;
  v41 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = sub_1E1AF3D0C();
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF436C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  v17 = (v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageContext);
  *v17 = 0;
  v17[1] = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageEnterGate) = 0;
  v18 = (v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_referrer);
  *v18 = 0;
  v18[1] = 0;
  v19 = v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_advertRotationData;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v20 = v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_searchGhostHintData;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  v21 = (v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsAppendixData);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_deviceWindowData);
  *v22 = 0.0;
  v22[1] = 0.0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph) = a1;
  sub_1E1AF421C();

  sub_1E1AF55EC();
  (*(v14 + 32))(v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_metricsPipeline, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2BA0);
  sub_1E1AF413C();
  v23 = v46;
  v24 = v47;
  swift_beginAccess();
  *v22 = v23;
  *(v22 + 1) = v24;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract();
  sub_1E1AF55EC();
  if (v44)
  {
    v25 = v44;
    v26 = v45;
    v27 = v41;
  }

  else
  {
    v28 = v40;
    sub_1E1AF4EAC();
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    (*(v28 + 104))(v12, *MEMORY[0x1E69AAFB8], v10);
    sub_1E1AF52AC();
    (*(v28 + 8))(v12, v10);
    v29 = v43;
    sub_1E1AF532C();
    (*(v42 + 8))(v9, v29);
    v25 = sub_1E1AF4E9C();
    v27 = MEMORY[0x1E69AB380];
    v26 = v45;
  }

  v30 = (v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsTracker);
  *v30 = v25;
  v30[1] = v27;
  if (v26)
  {
    swift_unknownObjectRetain();
    v31 = v26;
  }

  else
  {
    v32 = qword_1EE1E2E90;
    swift_unknownObjectRetain();
    if (v32 != -1)
    {
      swift_once();
    }

    sub_1E1AF535C();
    v33 = v43;
    sub_1E1AF532C();
    (*(v42 + 8))(v9, v33);
    v34 = v46;
    v35 = v30[1];
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();
    v36 = swift_unknownObjectRetain();
    v31 = sub_1E1812F7C(v34, v36, v35);
    swift_unknownObjectRelease();
  }

  *(v5 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_impressionsCalculator) = v31;
  type metadata accessor for MetricsPageEnterGate();
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + 32) = 0;
  *(v37 + 34) = 0;
  *(v37 + 24) = &protocol witness table for BasePresenter;
  swift_unknownObjectWeakAssign();
  v38 = OBJC_IVAR____TtC11AppStoreKit13BasePresenter_pageEnterGate;
  swift_beginAccess();
  *(v5 + v38) = v37;

  sub_1E1389D04();

  return v5;
}

uint64_t sub_1E138CB50(uint64_t a1)
{
  result = sub_1E138D45C(qword_1EE1F56F0, type metadata accessor for BasePresenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BasePresenter()
{
  result = qword_1EE1F56D8;
  if (!qword_1EE1F56D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E138CBF4(uint64_t a1)
{
  result = sub_1E138D45C(&qword_1EE1F56E8, type metadata accessor for BasePresenter);
  *(a1 + 24) = result;
  return result;
}

uint64_t keypath_get_11Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t keypath_get_17Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_1E134FD1C(v6 + v7, a4, a3);
}

uint64_t keypath_get_21Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return swift_unknownObjectRetain();
}

uint64_t sub_1E138CD74()
{
  result = sub_1E1AF436C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1E138D45C(unint64_t *a1, void (*a2)(uint64_t))
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

void *OfferAlertAction.__allocating_init(title:message:footerMessage:isCancelable:checkRestrictionsForContentRating:shouldCheckForAvailableDiskSpace:remoteControllerRequirement:spatialControllerRequirement:shouldIncludeActiveAccountInFooterMessage:shouldPromptForConfirmation:completionAction:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, char a9, char a10, char *a11, char *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v49 = a8;
  v54 = a1;
  v55 = a2;
  v52 = a16;
  v53 = a17;
  v51 = a15;
  v50 = a14;
  v47 = a7;
  v48 = a13;
  v46 = sub_1E1AEFEAC();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v24 = *a11;
  v25 = *a12;
  v26 = (v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_message);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_footerMessage);
  *v27 = a5;
  v27[1] = a6;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_isCancelable) = v47;
  v28 = v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_checkRestrictionsForContentRating;
  *v28 = v49;
  v28[8] = a9 & 1;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_shouldCheckForAvailableDiskSpace) = a10;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_remoteControllerRequirement) = v24;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_spatialControllerRequirement) = v25;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_shouldIncludeActiveAccountInFooterMessage) = v48;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_shouldPromptForConfirmation) = v50;
  *(v23 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_completionAction) = v51;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  v29 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v30 = sub_1E1AF3E1C();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v23 + v29, a18, v30);
  v32 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v33 = sub_1E1AF46DC();
  (*(*(v33 - 8) + 56))(v23 + v32, 1, 1, v33);
  v34 = (v23 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  v35 = v23 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v61, &v58);
  if (*(&v59 + 1))
  {
    v36 = v59;
    *v35 = v58;
    *(v35 + 1) = v36;
    *(v35 + 4) = v60;
  }

  else
  {
    v37 = v44;
    sub_1E1AEFE9C();
    v38 = sub_1E1AEFE7C();
    v40 = v39;
    (*(v45 + 8))(v37, v46);
    v56 = v38;
    v57 = v40;
    sub_1E1AF6F6C();
    sub_1E1308058(&v58, &unk_1ECEB5670);
  }

  (*(v31 + 8))(a18, v30);
  sub_1E1308058(v61, &unk_1ECEB5670);
  v41 = v55;
  v23[2] = v54;
  v23[3] = v41;
  v42 = v53;
  v23[4] = v52;
  v23[5] = v42;
  return v23;
}

void *OfferAlertAction.init(title:message:footerMessage:isCancelable:checkRestrictionsForContentRating:shouldCheckForAvailableDiskSpace:remoteControllerRequirement:spatialControllerRequirement:shouldIncludeActiveAccountInFooterMessage:shouldPromptForConfirmation:completionAction:artwork:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, _BYTE *a11, char *a12, unsigned __int8 a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v54 = a8;
  v52 = a7;
  v51 = a6;
  v49 = a5;
  v47 = a4;
  v59 = a1;
  v60 = a2;
  v58 = a17;
  v57 = a16;
  v56 = a15;
  v55 = a14;
  v53 = a13;
  v50 = a10;
  v48 = a9;
  v46 = sub_1E1AEFEAC();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v45 - v24;
  v26 = sub_1E1AF3E1C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v28) = *a11;
  v30 = *a12;
  v31 = (v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_message);
  v32 = v47;
  *v31 = a3;
  v31[1] = v32;
  v33 = (v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_footerMessage);
  *v33 = v49;
  v33[1] = v51;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_isCancelable) = v52;
  v34 = v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_checkRestrictionsForContentRating;
  *v34 = v54;
  v34[8] = v48 & 1;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_shouldCheckForAvailableDiskSpace) = v50;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_remoteControllerRequirement) = v28;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_spatialControllerRequirement) = v30;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_shouldIncludeActiveAccountInFooterMessage) = v53;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_shouldPromptForConfirmation) = v55;
  *(v19 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_completionAction) = v56;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  (*(v27 + 16))(v29, a18, v26);
  v35 = sub_1E1AF46DC();
  (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
  v36 = (v19 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v36 = 0u;
  v36[1] = 0u;
  sub_1E138853C(v69, &v63);
  if (*(&v64 + 1))
  {
    v66 = v63;
    v67 = v64;
    v68 = v65;
  }

  else
  {
    sub_1E1AEFE9C();
    v37 = sub_1E1AEFE7C();
    v39 = v38;
    (*(v45 + 8))(v22, v46);
    v61 = v37;
    v62 = v39;
    sub_1E1AF6F6C();
    sub_1E1308058(&v63, &unk_1ECEB5670);
  }

  (*(v27 + 8))(a18, v26);
  sub_1E1308058(v69, &unk_1ECEB5670);
  v40 = v19 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v40 + 4) = v68;
  v41 = v67;
  *v40 = v66;
  *(v40 + 1) = v41;
  sub_1E134B7C8(v25, v19 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v42 = v60;
  v19[2] = v59;
  v19[3] = v42;
  v43 = v58;
  v19[4] = v57;
  v19[5] = v43;
  (*(v27 + 32))(v19 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v29, v26);
  return v19;
}

char *OfferAlertAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v57 = sub_1E1AF39DC();
  v61 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v62 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF380C();
  v64 = *(v6 - 8);
  v7 = v64;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v59 = &v55 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v55 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v55 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v23 = v22;
  v24 = *(v7 + 8);
  v65 = v6;
  v24(v20, v6);
  v25 = (v3 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_message);
  *v25 = v21;
  v25[1] = v23;
  sub_1E1AF381C();
  v26 = sub_1E1AF37CC();
  v28 = v27;
  v24(v20, v6);
  v29 = v3;
  v30 = (v3 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_footerMessage);
  *v30 = v26;
  v30[1] = v28;
  sub_1E1AF381C();
  LOBYTE(v26) = sub_1E1AF370C();
  v31 = v65;
  v24(v18, v65);
  *(v29 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_isCancelable) = (v26 == 2) | v26 & 1;
  sub_1E1AF381C();
  v32 = sub_1E1AF36EC();
  LOBYTE(v28) = v33;
  v24(v20, v31);
  v34 = v29 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_checkRestrictionsForContentRating;
  *v34 = v32;
  *(v34 + 8) = v28 & 1;
  v35 = v56;
  sub_1E1AF381C();
  LOBYTE(v32) = sub_1E1AF370C();
  v36 = v35;
  v37 = v31;
  v24(v36, v31);
  v38 = v29;
  *(v29 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_shouldCheckForAvailableDiskSpace) = v32 & 1;
  sub_1E1AF381C();
  sub_1E138E3CC();
  sub_1E1AF36DC();
  v24(v20, v37);
  *(v29 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_remoteControllerRequirement) = v67;
  v39 = a1;
  sub_1E1AF381C();
  sub_1E138E420();
  sub_1E1AF36DC();
  v40 = v37;
  v24(v20, v37);
  *(v38 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_spatialControllerRequirement) = v66;
  v41 = v58;
  sub_1E1AF381C();
  LOBYTE(v32) = sub_1E1AF370C();
  v24(v41, v40);
  *(v38 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_shouldIncludeActiveAccountInFooterMessage) = v32 & 1;
  v42 = v59;
  sub_1E1AF381C();
  LOBYTE(v32) = sub_1E1AF370C();
  v24(v42, v40);
  *(v38 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_shouldPromptForConfirmation) = v32 & 1;
  type metadata accessor for Action();
  v43 = v61;
  sub_1E1AF381C();
  v44 = v63;
  v45 = static Action.tryToMakeInstance(byDeserializing:using:)(v20, v63);
  v46 = v20;
  v47 = v65;
  v59 = v24;
  v24(v46, v65);
  *(v38 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_completionAction) = v45;
  v48 = *(v64 + 16);
  v49 = v60;
  v50 = v47;
  v64 = v39;
  v48(v60, v39, v47);
  v51 = v62;
  v52 = v57;
  (*(v43 + 16))(v62, v44);
  v53 = Action.init(deserializing:using:)(v49, v51);
  (*(v43 + 8))(v44, v52);
  (v59)(v64, v50);
  return v53;
}

unint64_t sub_1E138E3CC()
{
  result = qword_1ECEB2BD0;
  if (!qword_1ECEB2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2BD0);
  }

  return result;
}

unint64_t sub_1E138E420()
{
  result = qword_1ECEB2BD8;
  if (!qword_1ECEB2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2BD8);
  }

  return result;
}

uint64_t OfferAlertAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_message);

  return v1;
}

uint64_t OfferAlertAction.footerMessage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit16OfferAlertAction_footerMessage);

  return v1;
}

uint64_t sub_1E138E5AC()
{
}

uint64_t OfferAlertAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t OfferAlertAction.__deallocating_deinit()
{
  OfferAlertAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferAlertAction()
{
  result = qword_1ECEB2BE0;
  if (!qword_1ECEB2BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeLockup.__allocating_init(id:title:subscribedSubtitle:nonsubscribedSubtitle:unsubscribedButtonAction:subscribedButtonAction:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a11;
  v36 = a2;
  v38 = a3;
  v39 = a10;
  v37 = a9;
  v17 = sub_1E1AEFEAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  sub_1E134FD1C(a1, &v42, &unk_1ECEB5670);
  if (*(&v43 + 1))
  {
    v22 = v43;
    *(v21 + 88) = v42;
    *(v21 + 104) = v22;
    *(v21 + 120) = v44;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v33 = a4;
    v34 = a5;
    v24 = a6;
    v25 = a8;
    v26 = v23;
    v27 = a7;
    v29 = v28;
    (*(v18 + 8))(v20, v17);
    v40 = v26;
    v41 = v29;
    a8 = v25;
    a6 = v24;
    a7 = v27;
    a4 = v33;
    a5 = v34;
    sub_1E1AF6F6C();
    sub_1E1308058(&v42, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(v35, v21 + OBJC_IVAR____TtC11AppStoreKit12ArcadeLockup_impressionMetrics);
  v30 = v37;
  v31 = v38;
  *(v21 + 16) = v36;
  *(v21 + 24) = v31;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  *(v21 + 48) = a6;
  *(v21 + 56) = a7;
  *(v21 + 64) = a8;
  *(v21 + 72) = v30;
  *(v21 + 80) = v39;
  return v21;
}

uint64_t ArcadeLockup.init(id:title:subscribedSubtitle:nonsubscribedSubtitle:unsubscribedButtonAction:subscribedButtonAction:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v36 = a11;
  v37 = a2;
  v39 = a3;
  v40 = a10;
  v38 = a9;
  v19 = sub_1E1AEFEAC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v43, &unk_1ECEB5670);
  if (*(&v44 + 1))
  {
    v46 = v43;
    v47 = v44;
    v48 = v45;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v34 = a4;
    v35 = a5;
    v24 = a6;
    v25 = a8;
    v26 = v23;
    v27 = a7;
    v29 = v28;
    (*(v20 + 8))(v22, v19);
    v41 = v26;
    v42 = v29;
    a8 = v25;
    a6 = v24;
    a7 = v27;
    a4 = v34;
    a5 = v35;
    sub_1E1AF6F6C();
    sub_1E1308058(&v43, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v30 = v47;
  *(v12 + 88) = v46;
  *(v12 + 104) = v30;
  *(v12 + 120) = v48;
  sub_1E134B7C8(v36, v12 + OBJC_IVAR____TtC11AppStoreKit12ArcadeLockup_impressionMetrics);
  v31 = v38;
  v32 = v39;
  *(v12 + 16) = v37;
  *(v12 + 24) = v32;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a7;
  *(v12 + 64) = a8;
  *(v12 + 72) = v31;
  *(v12 + 80) = v40;
  return v12;
}

char *ArcadeLockup.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v98 = a2;
  v79 = sub_1E1AEFEAC();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v86 = &v69 - v7;
  v8 = sub_1E1AF39DC();
  v91 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v81 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v69 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v69 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - v22;
  v24 = a1;
  sub_1E1AF381C();
  v82 = sub_1E1AF37CC();
  v26 = v25;
  v29 = *(v11 + 8);
  v28 = v11 + 8;
  v27 = v29;
  v29(v23, v10);
  if (!v26)
  {
    v35 = sub_1E1AF5A7C();
    sub_1E138F980(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v36 = 0x656C746974;
    v37 = v89;
    v36[1] = 0xE500000000000000;
    v36[2] = v37;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E69AB690], v35);
    swift_willThrow();
    (*(v91 + 8))(v98, v8);
    v34 = v24;
    goto LABEL_5;
  }

  v85 = v26;
  v88 = v8;
  sub_1E1AF381C();
  v76 = sub_1E1AF37CC();
  v89 = v30;
  v27(v21, v10);
  sub_1E1AF381C();
  v75 = sub_1E1AF37CC();
  v87 = v31;
  v27(v21, v10);
  type metadata accessor for Action();
  sub_1E1AF381C();
  v32 = v90;
  v33 = static Action.makeInstance(byDeserializing:using:)(v18, v98);
  if (v32)
  {

    (*(v91 + 8))(v98, v88);
    v27(v24, v10);
    v34 = v18;
LABEL_5:
    v27(v34, v10);
    return v21;
  }

  v74 = v33;
  v73 = v28;
  v27(v18, v10);
  v39 = v24;
  v40 = v84;
  v90 = v39;
  sub_1E1AF381C();
  v41 = v98;
  v42 = static Action.makeInstance(byDeserializing:using:)(v40, v98);
  v43 = v27;
  v44 = v91;
  v71 = v42;
  v72 = 0;
  v69 = v43;
  v43(v40, v10);
  type metadata accessor for OfferDisplayProperties();
  sub_1E1AF381C();
  v45 = *(v44 + 16);
  v46 = v80;
  v70 = v10;
  v47 = v88;
  v45(v80, v41, v88);
  sub_1E138F980(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties);
  sub_1E1AF464C();
  v84 = v97[0];
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v45(v46, v41, v47);
  sub_1E1AF464C();
  v48 = v81;
  sub_1E1AF381C();
  v49 = sub_1E1AF37CC();
  if (v50)
  {
    *&v94 = v49;
    *(&v94 + 1) = v50;
  }

  else
  {
    v51 = v77;
    sub_1E1AEFE9C();
    v52 = sub_1E1AEFE7C();
    v54 = v53;
    (*(v78 + 8))(v51, v79);
    *&v94 = v52;
    *(&v94 + 1) = v54;
  }

  sub_1E1AF6F6C();
  v55 = v70;
  v56 = v69;
  v69(v48, v70);
  v57 = v87;
  v58 = v83;
  sub_1E134FD1C(v86, v83, &unk_1ECEB1770);
  type metadata accessor for ArcadeLockup();
  v21 = swift_allocObject();
  sub_1E134FD1C(v97, &v94, &unk_1ECEB5670);
  v59 = v98;
  v60 = v91;
  v61 = v89;
  if (*(&v95 + 1))
  {
    v62 = v95;
    *(v21 + 88) = v94;
    *(v21 + 104) = v62;
    *(v21 + 15) = v96;
  }

  else
  {
    v63 = v77;
    sub_1E1AEFE9C();
    v64 = sub_1E1AEFE7C();
    v66 = v65;
    (*(v78 + 8))(v63, v79);
    v92 = v64;
    v93 = v66;
    v57 = v87;
    v58 = v83;
    v61 = v89;
    sub_1E1AF6F6C();
    sub_1E1308058(&v94, &unk_1ECEB5670);
  }

  (*(v60 + 8))(v59, v88);
  v56(v90, v55);
  sub_1E1308058(v97, &unk_1ECEB5670);
  sub_1E1308058(v86, &unk_1ECEB1770);
  sub_1E134B7C8(v58, &v21[OBJC_IVAR____TtC11AppStoreKit12ArcadeLockup_impressionMetrics]);
  v67 = v85;
  *(v21 + 2) = v82;
  *(v21 + 3) = v67;
  *(v21 + 4) = v76;
  *(v21 + 5) = v61;
  *(v21 + 6) = v75;
  *(v21 + 7) = v57;
  v68 = v71;
  *(v21 + 8) = v74;
  *(v21 + 9) = v68;
  *(v21 + 10) = v84;
  return v21;
}

uint64_t type metadata accessor for ArcadeLockup()
{
  result = qword_1EE1E0530;
  if (!qword_1EE1E0530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeLockup.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeLockup.subscribedSubtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArcadeLockup.nonsubscribedSubtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ArcadeLockup.deinit()
{

  sub_1E134B88C(v0 + 88);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12ArcadeLockup_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t ArcadeLockup.__deallocating_deinit()
{
  ArcadeLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E138F980(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1E138F9D8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = ArcadeLockup.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E138FA48()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t NetworkInterface.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t _s11AppStoreKit21ArcadeIntroOfferStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E138FC48()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E138FC90()
{
  result = qword_1ECEB2BF8;
  if (!qword_1ECEB2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2BF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NetworkInterface(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkInterface(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AppSearchResult.__allocating_init(id:lockup:shouldDisplayMedia:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a5;
  v10 = a3;
  v11 = sub_1E1AEFEAC();
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  v17 = swift_allocObject();
  v31 = *a4;
  v18 = OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
  *(v17 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup) = a2;
  swift_beginAccess();
  *(v17 + v18) = (v10 == 2) | a3 & 1;
  v19 = a1;
  sub_1E134FD1C(a1, v39, &unk_1ECEB5670);
  v20 = *(a2 + 264);
  if (v20)
  {
    v21 = type metadata accessor for Action();
    v22 = sub_1E139136C(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = v33;
  sub_1E134FD1C(v33, v16, &unk_1ECEB1770);
  *(v17 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v39, &v36, &unk_1ECEB5670);
  if (*(&v37 + 1))
  {
    v24 = v37;
    *(v17 + 24) = v36;
    *(v17 + 40) = v24;
    *(v17 + 56) = v38;
  }

  else
  {

    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v27 = v26;
    (*(v30 + 8))(v13, v11);
    v34 = v25;
    v35 = v27;
    v23 = v33;
    v19 = a1;
    sub_1E1AF6F6C();
    sub_1E1308058(&v36, &unk_1ECEB5670);
  }

  sub_1E1308058(v23, &unk_1ECEB1770);
  sub_1E1308058(v19, &unk_1ECEB5670);
  sub_1E1308058(v39, &unk_1ECEB5670);
  *(v17 + 64) = v20;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0;
  *(v17 + 88) = v21;
  *(v17 + 96) = v22;
  sub_1E134B7C8(v16, v17 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v17 + 17) = 0;
  *(v17 + 16) = v31;
  v28 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v17 + v28) = v32;
  return v17;
}

uint64_t AppSearchResult.init(id:lockup:shouldDisplayMedia:condensedBehavior:impressionMetrics:searchAdOpportunity:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v37 = a6;
  v13 = a3;
  v14 = sub_1E1AEFEAC();
  v35 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - v18;
  v36 = *a4;
  v20 = OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
  *(v7 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup) = a2;
  swift_beginAccess();
  *(v7 + v20) = (v13 == 2) | a3 & 1;
  sub_1E134FD1C(a1, v46, &unk_1ECEB5670);
  v21 = *(a2 + 264);
  if (v21)
  {
    v22 = type metadata accessor for Action();
    v23 = sub_1E139136C(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  sub_1E134FD1C(a5, v19, &unk_1ECEB1770);
  *(v7 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_1E134FD1C(v46, &v40, &unk_1ECEB5670);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {

    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v25 = v14;
    v26 = v23;
    v27 = a5;
    v28 = a1;
    v29 = v22;
    v31 = v30;
    (*(v35 + 8))(v16, v25);
    v38 = v24;
    v39 = v31;
    v22 = v29;
    a1 = v28;
    a5 = v27;
    v23 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v40, &unk_1ECEB5670);
  }

  sub_1E1308058(a5, &unk_1ECEB1770);
  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E1308058(v46, &unk_1ECEB5670);
  v32 = v44;
  *(v7 + 24) = v43;
  *(v7 + 40) = v32;
  *(v7 + 56) = v45;
  *(v7 + 64) = v21;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = v22;
  *(v7 + 96) = v23;
  sub_1E134B7C8(v19, v7 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
  *(v7 + 17) = 0;
  *(v7 + 16) = v36;
  v33 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v7 + v33) = v37;

  return v7;
}

uint64_t sub_1E139061C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E1390674@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

uint64_t AppSearchResult.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t AppSearchResult.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + 64, &unk_1ECEB1780);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E139083C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup);
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

uint64_t sub_1E13908A8(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = v54 - v7;
  v59 = sub_1E1AEFEAC();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF39DC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v54 - v13;
  v69 = sub_1E1AF380C();
  v66 = *(v69 - 8);
  v15 = MEMORY[0x1EEE9AC00](v69);
  v62 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v61 = v54 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v60 = v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v54 - v21;
  v67 = a1;
  sub_1E1AF381C();
  v23 = *(v10 + 16);
  (v23)(v14, a2, v9);
  type metadata accessor for MixedMediaLockup();
  swift_allocObject();
  v24 = v65;
  v25 = MixedMediaLockup.init(deserializing:using:)(v22, v14);
  if (v24)
  {
    (*(v10 + 8))(a2, v9);
    (*(v66 + 8))(v67, v69);
  }

  else
  {
    v26 = v25;
    v54[0] = v23;
    v54[1] = v10 + 16;
    v54[2] = 0;
    v55 = v10;
    v56 = v9;
    v65 = a2;
    v27 = v60;
    v28 = v67;
    sub_1E1AF381C();
    v29 = sub_1E1AF37CC();
    if (v30)
    {
      v75 = v29;
      v76 = v30;
    }

    else
    {
      v31 = v57;
      sub_1E1AEFE9C();
      v32 = sub_1E1AEFE7C();
      v34 = v33;
      (*(v58 + 8))(v31, v59);
      v75 = v32;
      v76 = v34;
    }

    sub_1E1AF6F6C();
    v35 = *(v66 + 8);
    v36 = v69;
    v35(v27, v69);
    v37 = v62;
    v38 = v61;
    sub_1E1AF381C();
    v39 = sub_1E1AF370C();
    v40 = v38;
    LOBYTE(v38) = v39;
    LODWORD(v62) = v39;
    v35(v40, v36);
    sub_1E1AF381C();
    sub_1E134B92C();
    sub_1E1AF369C();
    v67 = v35;
    v35(v37, v36);
    LODWORD(v66) = v78[63];
    sub_1E134FD1C(v26 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v68, &unk_1ECEB1770);
    type metadata accessor for SearchAdOpportunity();

    sub_1E1AF381C();
    (v54[0])(v63, v65, v56);
    sub_1E139136C(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity);
    sub_1E1AF464C();
    v63 = v77;
    type metadata accessor for AppSearchResult();
    v23 = swift_allocObject();
    v41 = OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia;
    *(v23 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_shouldDisplayMedia) = 1;
    *(v23 + OBJC_IVAR____TtC11AppStoreKit15AppSearchResult_lockup) = v26;
    LOBYTE(v36) = (v62 == 2) | v38;
    swift_beginAccess();
    *(v23 + v41) = v36 & 1;
    sub_1E134FD1C(v78, &v75, &unk_1ECEB5670);
    v42 = *(v26 + 264);

    if (v42)
    {
      v43 = type metadata accessor for Action();
      v44 = sub_1E139136C(qword_1EE1D2F80, type metadata accessor for Action);
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    sub_1E134FD1C(v68, v64, &unk_1ECEB1770);
    *(v23 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity) = 0;
    sub_1E134FD1C(&v75, &v72, &unk_1ECEB5670);
    v45 = v65;
    if (*(&v73 + 1))
    {
      v46 = v28;
      v47 = v73;
      *(v23 + 24) = v72;
      *(v23 + 40) = v47;
      *(v23 + 56) = v74;
    }

    else
    {
      v48 = v57;
      sub_1E1AEFE9C();
      v49 = sub_1E1AEFE7C();
      v51 = v50;
      (*(v58 + 8))(v48, v59);
      v70 = v49;
      v71 = v51;
      v45 = v65;
      v46 = v28;
      sub_1E1AF6F6C();
      sub_1E1308058(&v72, &unk_1ECEB5670);
    }

    (*(v55 + 8))(v45, v56);
    v67(v46, v69);
    sub_1E1308058(&v75, &unk_1ECEB5670);
    sub_1E1308058(v68, &unk_1ECEB1770);
    sub_1E1308058(v78, &unk_1ECEB5670);
    *(v23 + 64) = v42;
    *(v23 + 72) = 0;
    *(v23 + 80) = 0;
    *(v23 + 88) = v43;
    *(v23 + 96) = v44;
    sub_1E134B7C8(v64, v23 + OBJC_IVAR____TtC11AppStoreKit12SearchResult_impressionMetrics);
    *(v23 + 17) = 0;
    *(v23 + 16) = v66;
    v52 = OBJC_IVAR____TtC11AppStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v23 + v52) = v63;
  }

  return v23;
}

uint64_t type metadata accessor for AppSearchResult()
{
  result = qword_1EE1F9220;
  if (!qword_1EE1F9220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E139136C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ItemLayoutContext.MetadataKey.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static ItemLayoutContext.MetadataKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E1AF74AC();
  }
}

uint64_t ItemLayoutContext.MetadataKey.hashValue.getter()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1391448()
{
  sub_1E1AF762C();
  ItemLayoutContext.MetadataKey.hash(into:)();
  return sub_1E1AF767C();
}

AppStoreKit::ItemLayoutContext::Metadata __swiftcall ItemLayoutContext.Metadata.init()()
{
  v1 = v0;
  result.contents._rawValue = sub_1E159EAEC(MEMORY[0x1E69E7CC0]);
  v1->contents._rawValue = result.contents._rawValue;
  return result;
}

uint64_t ItemLayoutContext.Metadata.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  if (*(v6 + 16) && (v7 = sub_1E13018F8(*a1, a1[1]), (v8 & 1) != 0))
  {
    sub_1E1300B24(*(v6 + 56) + 40 * v7, v11);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B60);
  v9 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
}

uint64_t sub_1E1391590@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *a1;
  v7 = *a2;
  v9[1] = a2[1];
  v9[2] = v6;
  v9[0] = v7;

  ItemLayoutContext.Metadata.subscript.getter(v9, v5, a4);
}

uint64_t sub_1E1391608(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;

  return sub_1E13924A4(a1, v9, v5, v6);
}

uint64_t ItemLayoutContext.Metadata.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1E13924A4(a1, a2, a3, a4);
  v5 = sub_1E1AF6D9C();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*ItemLayoutContext.Metadata.subscript.modify(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1E1AF6D9C();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v17 = *a2;
  v18 = a2[1];
  v11[6] = v15;
  v11[7] = v17;
  v11[8] = v18;
  v19 = *v4;
  v21[1] = v18;
  v21[2] = v19;
  v21[0] = v17;
  swift_bridgeObjectRetain_n();
  ItemLayoutContext.Metadata.subscript.getter(v21, a3, v16);

  return sub_1E139183C;
}

void sub_1E139183C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[5], v6, v7);
    v12 = v4;
    v13 = v3;
    sub_1E13924A4(v5, &v12, v10, v9);
    v11 = *(v8 + 8);
    v11(v5, v7);
    v11(v6, v7);
  }

  else
  {
    v12 = (*a1)[7];
    v13 = v3;
    sub_1E13924A4(v6, &v12, v10, v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v2);
}

uint64_t ItemLayoutContext.id.getter()
{
  type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DAC();
}

uint64_t ItemLayoutContext.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ItemLayoutContext() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ItemLayoutContext.metadata.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for ItemLayoutContext() + 24));
}

uint64_t sub_1E1391ADC(uint64_t (*a1)(char *, void *, void, uint64_t, unint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-1] - v4;
  v6 = type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DAC();

  sub_1E1AF5BAC();
  v7 = v1 + *(v6 + 32);
  v12[0] = *(v7 + *(type metadata accessor for ShelfLayoutContext() + 36));

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C00);
  v9 = sub_1E139268C();
  return a1(v5, v12, MEMORY[0x1E69E73E0], v8, v9);
}

void ItemLayoutContext.indexPath.getter()
{
  type metadata accessor for ItemLayoutContext();
  type metadata accessor for ShelfLayoutContext();

  JUMPOUT(0x1E68F8EA0);
}

uint64_t ItemLayoutContext.componentLayoutOptions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ItemLayoutContext();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ItemLayoutContext.parentShelfLayoutContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ItemLayoutContext() + 32);

  return sub_1E13926F0(v3, a1);
}

uint64_t ItemLayoutContext.subscript.getter()
{
  type metadata accessor for ItemLayoutContext();

  return swift_getAtKeyPath();
}

uint64_t ItemLayoutContext.withUpdatedLayoutOptions(_:)@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *)@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ItemLayoutContext();
  v14 = *(v2 + v6[7]);
  v7 = *v2;
  v8 = v6[5];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  (*(*(v9 - 8) + 16))(&a2[v8], v2 + v8, v9);
  v10 = *(v2 + v6[6]);

  a1(&v13, &v14);
  v11 = v13;
  result = sub_1E13926F0(v3 + v6[8], &a2[v6[8]]);
  *a2 = v7;
  *&a2[v6[6]] = v10;
  *&a2[v6[7]] = v11;
  return result;
}

uint64_t ItemLayoutContext.typedModel<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  v4 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v4 ^ 1u, 1, a1);
}

{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  v4 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v4 ^ 1u, 1, a1);
}

uint64_t ItemLayoutContext.typedModel<A>(is:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    (*(v3 + 8))(v5, a2);
    return v7;
  }

  return result;
}

{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    (*(v3 + 8))(v5, a2);
    return v7;
  }

  return result;
}

uint64_t sub_1E13922DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(char *, void *, void, uint64_t, unint64_t), uint64_t (*a7)(char *, uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24[-1] - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24[-1] - v16;
  v18 = type metadata accessor for ItemLayoutContext();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  sub_1E1AF3DAC();

  sub_1E1AF5BAC();
  v19 = v7 + *(v18 + 32);
  v24[0] = *(v19 + *(type metadata accessor for ShelfLayoutContext() + 36));

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C00);
  v21 = sub_1E139268C();
  a6(v14, v24, MEMORY[0x1E69E73E0], v20, v21);
  return a7(v17, a2);
}

uint64_t sub_1E13924A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AF6D9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *a2;
  v13 = a2[1];
  (*(v9 + 16))(&v17 - v10, a1, v8);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v11, 1, a3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = a3;
    v19 = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
    (*(v14 + 32))(boxed_opaque_existential_0, v11, a3);
  }

  return sub_1E1386B40(&v17, v12, v13);
}

uint64_t type metadata accessor for ItemLayoutContext()
{
  result = qword_1EE1F12F0;
  if (!qword_1EE1F12F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E139268C()
{
  result = qword_1EE1E39E0;
  if (!qword_1EE1E39E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E39E0);
  }

  return result;
}

uint64_t sub_1E13926F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfLayoutContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E1392798()
{
  sub_1E1392844();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ShelfLayoutContext();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E1392844()
{
  if (!qword_1EE1E3B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB24B0);
    v0 = sub_1E1AF3DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E3B10);
    }
  }
}

uint64_t sub_1E13928A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E13928E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E139292C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionWrapper(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ActionWrapper(uint64_t result, int a2, int a3)
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

Swift::String_optional __swiftcall ACAccount.localizedName(style:)(NSPersonNameComponentsFormatterStyle style)
{
  v2 = v1;
  v4 = sub_1E1AEFA7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 ams_firstName];
  if (v8)
  {
    v9 = v8;
    sub_1E1AF5DFC();

    sub_1E1AEFA6C();
    sub_1E1AEFA3C();
    v10 = [v2 ams_lastName];
    if (v10)
    {
      v11 = v10;
      sub_1E1AF5DFC();
    }

    sub_1E1AEFA4C();
    v14 = objc_opt_self();
    v15 = sub_1E1AEFA5C();
    v16 = [v14 localizedStringFromPersonNameComponents:v15 style:style options:0];

    v12 = sub_1E1AF5DFC();
    v13 = v17;

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v18 = v12;
  v19 = v13;
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  return result;
}

id ACAccount.localizedInitials.getter()
{
  v1 = v0;
  v2 = sub_1E1AEFA7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 ams_firstName];
  if (result)
  {
    v7 = result;
    sub_1E1AF5DFC();

    sub_1E1AEFA6C();
    sub_1E1AEFA3C();
    v8 = [v1 ams_lastName];
    if (v8)
    {
      v9 = v8;
      sub_1E1AF5DFC();
    }

    sub_1E1AEFA4C();
    v10 = objc_opt_self();
    v11 = sub_1E1AEFA5C();
    v12 = [v10 localizedStringFromPersonNameComponents:v11 style:4 options:0];

    v13 = sub_1E1AF5DFC();
    (*(v3 + 8))(v5, v2);
    v14 = sub_1E1AF5F1C();
    if (v14 > 0 && v14 < 3)
    {
      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1E1392E40(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_1E139A0D4(&v5, &v7) & 1;
}

char *sub_1E1392E8C()
{
  result = 0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 73);
  if (v7 <= 2)
  {
    if (*(v0 + 73))
    {
      if (v7 != 1)
      {
        return result;
      }

      v12 = *v0;
      if (v3 == 1)
      {
        return 0;
      }
    }

    else
    {
      v3 = ((*(v0 + 41) << 8) | ((*(v0 + 45) | (*(v0 + 47) << 16)) << 40) | v6);
      v12 = *(v0 + 32);
      v4 = *(v0 + 56);
      v5 = *(v0 + 64);
      v2 = *(v0 + 48);
      LOBYTE(v6) = *(v0 + 72);
      if (v3 == 1)
      {
        return 0;
      }
    }

    if ((v6 & 1) == 0)
    {
      if (v3)
      {
        v71 = objc_allocWithZone(MEMORY[0x1E696AAF0]);
        sub_1E139D340(v12, v3, v2, v4);
        v72 = v3;
        v73 = [v71 init];
        v74 = [v73 stringFromByteCount_];
        v75 = sub_1E1AF5DFC();
        v120 = v76;

        v77 = [v73 stringFromByteCount_];
        v78 = sub_1E1AF5DFC();
        v80 = v79;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E1B02CD0;
        *(inited + 32) = 0x6574656C706D6F63;
        *(inited + 40) = 0xEF746E756F635F64;
        *(inited + 48) = v75;
        *(inited + 56) = v120;
        *(inited + 64) = 0x6F635F6C61746F74;
        *(inited + 72) = 0xEB00000000746E75;
        *(inited + 80) = v78;
        *(inited + 88) = v80;
        v82 = sub_1E13017E4(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
        swift_arrayDestroy();
        v83._countAndFlagsBits = 0xD000000000000017;
        v83._object = 0x80000001E1B5B4F0;
        countAndFlagsBits = localizedString(_:with:)(v83, v82)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      return 0;
    }

    if (!v3)
    {
      return 0;
    }

    if (v4)
    {
      v42 = objc_allocWithZone(MEMORY[0x1E696AAF0]);
      sub_1E139D340(v12, v3, v2, v4);
      v43 = v3;
      v44 = v4;
      v45 = [v42 init];
      v46 = [v44 completedUnitCount];
      result = [v43 completedUnitCount];
      if (!__OFADD__(v46, result))
      {
        v47 = [v45 stringFromByteCount_];
        v48 = sub_1E1AF5DFC();
        v119 = v49;

        if ([v44 completedUnitCount] < 1 || (v50 = objc_msgSend(v43, sel_totalUnitCount), result = objc_msgSend(v44, sel_totalUnitCount), v5 = &result[v50], !__OFADD__(v50, result)))
        {
          v51 = [v45 stringFromByteCount_];
          v52 = sub_1E1AF5DFC();
          v54 = v53;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_1E1B02CD0;
          *(v55 + 32) = 0x6574656C706D6F63;
          *(v55 + 40) = 0xEF746E756F635F64;
          *(v55 + 48) = v48;
          *(v55 + 56) = v119;
          *(v55 + 64) = 0x6F635F6C61746F74;
          *(v55 + 72) = 0xEB00000000746E75;
          *(v55 + 80) = v52;
          *(v55 + 88) = v54;
          v56 = sub_1E13017E4(v55);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
          swift_arrayDestroy();
          v57._countAndFlagsBits = 0xD000000000000017;
          v57._object = 0x80000001E1B5B4F0;
          v58 = localizedString(_:with:)(v57, v56)._countAndFlagsBits;

          return v58;
        }

        goto LABEL_66;
      }

      goto LABEL_64;
    }

    sub_1E139D340(v12, v3, v2, 0);

    goto LABEL_48;
  }

  switch(v7)
  {
    case 5u:
      if (v6)
      {
        if (!v3 || !v4)
        {
          return 0;
        }

        v13 = objc_allocWithZone(MEMORY[0x1E696AAF0]);
        v14 = v3;
        v15 = v4;
        v16 = [v13 init];
        v17 = [v15 completedUnitCount];
        result = [v14 completedUnitCount];
        if (__OFADD__(v17, result))
        {
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          return result;
        }

        v18 = [v16 stringFromByteCount_];
        v19 = sub_1E1AF5DFC();
        v21 = v20;

        v22 = [v15 completedUnitCount];
        v23 = v5;
        if (v22 >= 1)
        {
          v24 = [v14 totalUnitCount];
          result = [v15 totalUnitCount];
          v23 = &result[v24];
          if (__OFADD__(v24, result))
          {
            goto LABEL_65;
          }
        }

        v25 = [v16 stringFromByteCount_];
        v26 = sub_1E1AF5DFC();
        v28 = v27;

        if (v5)
        {
          if (v5 >= 1)
          {
            v29 = sub_1E1AF676C();
            if ((v30 & 1) == 0)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          v29 = sub_1E1AF676C();
          if ((v102 & 1) == 0)
          {
LABEL_58:
            v112 = [v16 stringFromByteCount_];
            v118 = sub_1E1AF5DFC();
            v114 = v113;

            v122 = ".AdditionalContent.NoThroughput";
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
            v115 = swift_initStackObject();
            *(v115 + 16) = xmmword_1E1B03760;
            *(v115 + 32) = 0x6574656C706D6F63;
            *(v115 + 40) = 0xEF746E756F635F64;
            *(v115 + 48) = v19;
            *(v115 + 56) = v21;
            *(v115 + 64) = 0x6F635F6C61746F74;
            *(v115 + 72) = 0xEB00000000746E75;
            *(v115 + 80) = v26;
            *(v115 + 88) = v28;
            *(v115 + 96) = 0xD000000000000010;
            *(v115 + 104) = 0x80000001E1B5B5D0;
            *(v115 + 112) = v118;
            *(v115 + 120) = v114;
            v104 = sub_1E13017E4(v115);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
            swift_arrayDestroy();
            v105 = 0xD000000000000022;
LABEL_59:
            v106 = v122 | 0x8000000000000000;
            goto LABEL_60;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
        v103 = swift_initStackObject();
        *(v103 + 16) = xmmword_1E1B02CD0;
        *(v103 + 32) = 0x6574656C706D6F63;
        *(v103 + 40) = 0xEF746E756F635F64;
        *(v103 + 48) = v19;
        *(v103 + 56) = v21;
        *(v103 + 64) = 0x6F635F6C61746F74;
        *(v103 + 72) = 0xEB00000000746E75;
        *(v103 + 80) = v26;
        *(v103 + 88) = v28;
        v104 = sub_1E13017E4(v103);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
        swift_arrayDestroy();
        v105 = 0xD00000000000002FLL;
        v106 = 0x80000001E1B5B570;
LABEL_60:
        v116 = localizedString(_:with:)(*&v105, v104)._countAndFlagsBits;

        return v116;
      }

      if (!v2)
      {
        v8 = "OfferButton.Hint.Paused";
        v9 = 0xD00000000000001FLL;
        goto LABEL_6;
      }

      [*(v0 + 16) fractionCompleted];
      v60 = v59;
      v2 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
      [v2 setNumberStyle_];
      v61 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v62 = [v2 stringFromNumber_];

      if (v62)
      {
        v63 = sub_1E1AF5DFC();
        v65 = v64;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
        v66 = swift_initStackObject();
        *(v66 + 16) = xmmword_1E1B02CC0;
        *(v66 + 32) = 0xD000000000000010;
        v67 = v66 + 32;
        *(v66 + 40) = 0x80000001E1B5B550;
        *(v66 + 48) = v63;
        *(v66 + 56) = v65;
        v68 = sub_1E13017E4(v66);
        swift_setDeallocating();
        sub_1E1308058(v67, &unk_1ECEB9500);
        v69._countAndFlagsBits = 0xD00000000000001BLL;
        v69._object = 0x80000001E1B5B530;
        v70 = localizedString(_:with:)(v69, v68)._countAndFlagsBits;

        return v70;
      }

LABEL_48:

      return 0;
    case 4u:
      if (v3 && v4)
      {
        v31 = objc_allocWithZone(MEMORY[0x1E696AAF0]);
        v14 = v3;
        v15 = v4;
        v16 = [v31 init];
        v32 = [v14 completedUnitCount];
        result = [v15 completedUnitCount];
        if (__OFADD__(v32, result))
        {
          __break(1u);
        }

        else
        {
          v33 = [v16 stringFromByteCount_];
          v34 = sub_1E1AF5DFC();
          v36 = v35;

          if ([v15 completedUnitCount] < 1)
          {
            if (v5 >= 1)
            {
              v85 = [v16 stringFromByteCount_];
              v39 = sub_1E1AF5DFC();
              v41 = v86;

LABEL_45:
              v87 = sub_1E1AF676C();
              if ((v88 & 1) == 0)
              {
                v89 = [v16 stringFromByteCount_];
                v90 = sub_1E1AF5DFC();
                v121 = v14;
                v92 = v91;

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
                v93 = swift_initStackObject();
                *(v93 + 16) = xmmword_1E1B03760;
                *(v93 + 32) = 0x6574656C706D6F63;
                *(v93 + 40) = 0xEF746E756F635F64;
                *(v93 + 48) = v34;
                *(v93 + 56) = v36;
                *(v93 + 64) = 0x6F635F6C61746F74;
                *(v93 + 72) = 0xEB00000000746E75;
                *(v93 + 80) = v39;
                *(v93 + 88) = v41;
                *(v93 + 96) = 0xD000000000000010;
                *(v93 + 104) = 0x80000001E1B5B5D0;
                *(v93 + 112) = v90;
                *(v93 + 120) = v92;
                v94 = sub_1E13017E4(v93);
                swift_setDeallocating();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
                swift_arrayDestroy();
                v95._countAndFlagsBits = 0xD00000000000001CLL;
                v95._object = 0x80000001E1B5B3C0;
                v96 = localizedString(_:with:)(v95, v94)._countAndFlagsBits;

                return v96;
              }

LABEL_52:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
              v99 = swift_initStackObject();
              *(v99 + 16) = xmmword_1E1B02CD0;
              *(v99 + 32) = 0x6574656C706D6F63;
              *(v99 + 40) = 0xEF746E756F635F64;
              *(v99 + 48) = v34;
              *(v99 + 56) = v36;
              *(v99 + 64) = 0x6F635F6C61746F74;
              *(v99 + 72) = 0xEB00000000746E75;
              *(v99 + 80) = v39;
              *(v99 + 88) = v41;
              v100 = sub_1E13017E4(v99);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
              swift_arrayDestroy();
              v101._countAndFlagsBits = 0xD000000000000029;
              v101._object = 0x80000001E1B5B5F0;
              v96 = localizedString(_:with:)(v101, v100)._countAndFlagsBits;

              return v96;
            }

            [v14 totalUnitCount];
            goto LABEL_26;
          }

          v37 = [v14 totalUnitCount];
          result = [v15 totalUnitCount];
          if (!__OFADD__(v37, result))
          {
LABEL_26:
            v38 = [v16 stringFromByteCount_];
            v39 = sub_1E1AF5DFC();
            v41 = v40;

            if (v5)
            {
              if (v5 < 1)
              {
                goto LABEL_52;
              }

              goto LABEL_45;
            }

            v97 = sub_1E1AF676C();
            if (v98)
            {
              goto LABEL_52;
            }

            v107 = [v16 stringFromByteCount_];
            v117 = sub_1E1AF5DFC();
            v108 = v36;
            v110 = v109;

            v122 = "de.Title.PreorderedSubscribed";
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
            v111 = swift_allocObject();
            *(v111 + 16) = xmmword_1E1B03760;
            *(v111 + 32) = 0x6574656C706D6F63;
            *(v111 + 40) = 0xEF746E756F635F64;
            *(v111 + 48) = v34;
            *(v111 + 56) = v108;
            *(v111 + 64) = 0x6F635F6C61746F74;
            *(v111 + 72) = 0xEB00000000746E75;
            *(v111 + 80) = v39;
            *(v111 + 88) = v41;
            *(v111 + 96) = 0xD000000000000010;
            *(v111 + 104) = 0x80000001E1B5B5D0;
            *(v111 + 112) = v117;
            *(v111 + 120) = v110;
            v104 = sub_1E13017E4(v111);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v105 = 0xD00000000000001CLL;
            goto LABEL_59;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      return 0;
    case 3u:
      v8 = "OfferButton.Hint.Downloading";
      v9 = 0xD000000000000022;
LABEL_6:
      v10 = v8 | 0x8000000000000000;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      return localizedString(_:comment:)(*&v9, v11)._countAndFlagsBits;
  }

  return result;
}

uint64_t sub_1E1393DD0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 10) = *(a1 + 58);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 10) = *(a2 + 58);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1E139A298(v7, v9) & 1;
}

uint64_t sub_1E1393E68(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  sub_1E139CDAC(v2, v1);

  return swift_unknownObjectRelease();
}

uint64_t AppOfferButtonPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  sub_1E139CDAC(a1, a2);

  return swift_unknownObjectRelease();
}

void (*AppOfferButtonPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E1393F88;
}

void sub_1E1393F88(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1E139A868();
    *(v3 + 24) = v4;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v2[5];
      v6 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      (*(v6 + 104))(v5, sel_offerButtonTapped, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E139A868();
    *(v3 + 24) = v4;
    swift_unknownObjectWeakAssign();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = v2[5];
      v9 = *(v8 + 24);
      v10 = swift_getObjectType();
      (*(v9 + 104))(v8, sel_offerButtonTapped, v10, v9);
      swift_unknownObjectRelease();
    }

    _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  swift_unknownObjectRelease();

  free(v2);
}

void AppOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
}

void AppOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 154);
  *a1 = *(v1 + 150);
  *(a1 + 4) = v2;
}

uint64_t sub_1E1394114(uint64_t result)
{
  if (*(v1 + 158) != (result & 1))
  {
    if (*(v1 + 158))
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v2 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = *(v2 + 88);

      v5(sub_1E139D534, v4, ObjectType, v2);
    }

    else
    {
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v6 = *(v1 + 24);
      v7 = swift_getObjectType();
      (*(v6 + 96))(v7, v6);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E1394248()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + 158);
    *(v1 + 158) = 0;
    sub_1E1394114(v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t AppOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7, unsigned int *a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v85 = a6;
  v86 = a5;
  v82 = a4;
  v84 = a3;
  v87 = a2;
  v88 = a1;
  LODWORD(v81) = a11;
  v80 = a10;
  v79 = a9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C98);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v75 - v13;
  v14 = swift_allocObject();
  v15 = *a7;
  v16 = a7[1];
  v17 = a7[2];
  v18 = a7[3];
  v19 = a7[4];
  v20 = a7[5];
  v21 = *a8 | (*(a8 + 2) << 32);
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 158) = 0;
  *(v14 + 160) = [objc_opt_self() defaultCenter];
  *(v14 + 168) = 0u;
  v83 = v14 + 168;
  *(v14 + 184) = 0u;
  *(v14 + 280) = 0u;
  *(v14 + 296) = 0u;
  *(v14 + 312) = 0u;
  *(v14 + 328) = 0u;
  *(v14 + 344) = 0;
  *(v14 + 352) = -256;
  *(v14 + 354) = 0;
  *(v14 + 200) = 0;
  *(v14 + 273) = 3;
  v22 = v88;
  *(v14 + 32) = v87;
  *(v14 + 40) = v22;
  *(v14 + 150) = v15;
  *(v14 + 151) = v16;
  *(v14 + 152) = v17;
  *(v14 + 153) = v18;
  *(v14 + 154) = v19;
  *(v14 + 155) = v20;
  if (v21 == 3)
  {
    v89[0] = v15;
    v89[1] = v16;
    v89[2] = v17;
    v89[3] = v18;
    v89[4] = v19;
    v89[5] = v20;
    sub_1E148BBAC(v89, &aBlock, 0);
    LOBYTE(v21) = aBlock;
    v23.i32[0] = *(&aBlock + 1);
    v24 = vmovl_u8(v23).u64[0];
    LOBYTE(v25) = BYTE5(aBlock);
  }

  else
  {
    v26 = vdupq_n_s64(v21);
    v24 = vmovn_s32(vuzp1q_s32(vshlq_u64(v26, xmmword_1E1B04480), vshlq_u64(v26, xmmword_1E1B04470)));
    v25 = v21 >> 40;
  }

  *(v14 + 144) = v21;
  *(v14 + 145) = vuzp1_s8(v24, v24).u32[0];
  *(v14 + 149) = v25;
  *(v14 + 156) = v79 & 1;
  sub_1E1300B24(v86, v14 + 48);
  sub_1E1300B24(v85, v14 + 88);
  *(v14 + 159) = v80 & 1;
  *(v14 + 157) = v81 & 1;
  v27 = v88;
  v28 = v82;
  if (v88)
  {
    ObjectType = swift_getObjectType();
    v30 = *(v27 + 32);
    *&aBlock = *(v27 + 24);
    *(&aBlock + 1) = v30;
    v31 = *(v28 + 56);

    swift_retain_n();
    v81 = ObjectType;
    v32 = v31(&aBlock, ObjectType, v28);
    v34 = v33;

    *(v14 + 128) = v32;
    *(v14 + 136) = v34;
    v35 = swift_getObjectType();
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = v28;
    v38 = *(v34 + 72);

    v38(v14, sub_1E139CEA0, v36, v35, v34);
    v27 = v88;

    v39 = *(v27 + 64);
    if (v39)
    {
      *&aBlock = *(v27 + 56);
      *(&aBlock + 1) = v39;

      v31(&aBlock, v81, v37);
      v41 = v40;

      v42 = swift_getObjectType();
      (*(v41 + 16))(&aBlock, v42, v41);
      if (*&v93[0] >> 60)
      {
        if (*&v93[0] >> 60 != 8)
        {
LABEL_13:
          sub_1E139CEA8(&aBlock);
LABEL_23:
          LOBYTE(v45) = 1;
          goto LABEL_24;
        }

        v43 = *(&v92 + 1) | *(&v93[0] + 1);
        v44 = *(&v91 + 1) | v91 | *(&aBlock + 1);
        if (*&v93[0] != 0x8000000000000000 || v43 | aBlock | v92 | v44)
        {
          if (*&v93[0] == 0x8000000000000000 && aBlock == 4)
          {
            v45 = v43 | v92 | v44;
            if (!v45)
            {
LABEL_24:
              *(v14 + 354) = v45;
              v73 = swift_allocObject();
              swift_weakInit();
              v74 = *(v41 + 72);

              v74(v14, sub_1E139CEFC, v73, v42, v41);
              swift_unknownObjectRelease();

              v27 = v88;
              v53 = *(v14 + 128);
              if (!v53)
              {
                goto LABEL_17;
              }

              goto LABEL_16;
            }
          }

          goto LABEL_13;
        }
      }

      else if (aBlock != 1)
      {
        goto LABEL_23;
      }

      LOBYTE(v45) = 0;
      goto LABEL_24;
    }
  }

  else
  {
    *(v14 + 128) = 0;
    *(v14 + 136) = 0;

    v46 = sub_1E13957E8();
    v48 = v47;
    v49 = sub_1E13959D4();
    v50 = *(v14 + 248);
    v92 = *(v14 + 232);
    v93[0] = v50;
    *(v93 + 10) = *(v14 + 258);
    v51 = *(v14 + 216);
    aBlock = *(v14 + 200);
    v91 = v51;
    *(v14 + 200) = v46;
    *(v14 + 208) = v48;
    *(v14 + 216) = v49;
    *(v14 + 224) = v52;
    *(v14 + 232) = xmmword_1E1B04490;
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
    *(v14 + 264) = 0;
    *(v14 + 272) = 0;
    sub_1E139CE5C(&aBlock);
  }

  v53 = *(v14 + 128);
  if (v53)
  {
LABEL_16:
    v54 = *(v14 + 136);
    v55 = swift_unknownObjectRetain();
    sub_1E139561C(v55, v54, 2);
    v56 = v86[3];
    v57 = v86[4];
    __swift_project_boxed_opaque_existential_1Tm(v86, v56);
    (*(v57 + 16))(v56, v57);
    v58 = swift_allocObject();
    swift_weakInit();
    v59 = swift_allocObject();
    v59[2] = v58;
    v59[3] = v53;
    v59[4] = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CA0);
    sub_1E1302CD4(&qword_1EE1E3C48, &qword_1ECEB2CA0);
    swift_unknownObjectRetain();
    sub_1E1AF3CDC();
    v60 = v76;
    sub_1E1AF3CFC();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    (*(v77 + 8))(v60, v78);
  }

LABEL_17:
  if (v27 && (*(v27 + 136) & 1) == 0)
  {
    v61 = *(v14 + 160);

    v62 = sub_1E1AF5DBC();
    __swift_project_boxed_opaque_existential_1Tm(v85, v85[3]);
    [v61 addObserver:v14 selector:sel_isEnabledDidChange_ name:v62 object:sub_1E1AF748C()];

    swift_unknownObjectRelease();
  }

  v63 = *(v14 + 160);
  v64 = *MEMORY[0x1E698B430];
  v65 = objc_opt_self();
  v66 = v63;
  v67 = [v65 mainQueue];
  v68 = swift_allocObject();
  swift_weakInit();
  *&v92 = sub_1E139CE8C;
  *(&v92 + 1) = v68;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v91 = sub_1E1395DC0;
  *(&v91 + 1) = &block_descriptor_1;
  v69 = _Block_copy(&aBlock);

  v70 = [v66 addObserverForName:v64 object:0 queue:v67 usingBlock:v69];
  _Block_release(v69);

  *(&v91 + 1) = swift_getObjectType();
  swift_unknownObjectRelease();

  *&aBlock = v70;
  __swift_destroy_boxed_opaque_existential_1(v85);
  v71 = v83;
  swift_beginAccess();
  sub_1E137F818(&aBlock, v71);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v86);
  return v14;
}

uint64_t AppOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:appStoreInstallStateMonitor:restrictions:subtitlePosition:alignment:hasCompactRedownloads:arePreordersCancellable:includeBetaApps:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7, unsigned int *a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v12 = v11;
  v86 = a6;
  v87 = a5;
  v82 = a4;
  v84 = a3;
  LODWORD(v81) = a11;
  v80 = a10;
  v79 = a9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2C98);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v76 - v17;
  v18 = *a7;
  v19 = a7[1];
  v20 = a7[2];
  v21 = a7[3];
  v22 = a7[4];
  v23 = a7[5];
  v24 = *a8 | (*(a8 + 2) << 32);
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 158) = 0;
  v25 = [objc_opt_self() defaultCenter];
  *(v12 + 168) = 0u;
  *(v12 + 160) = v25;
  *(v12 + 184) = 0u;
  *(v12 + 280) = 0u;
  *(v12 + 296) = 0u;
  *(v12 + 312) = 0u;
  *(v12 + 328) = 0u;
  *(v12 + 344) = 0;
  *(v12 + 352) = -256;
  *(v12 + 354) = 0;
  *(v12 + 200) = 0;
  *(v12 + 273) = 3;
  v83 = a2;
  *(v12 + 32) = a2;
  *(v12 + 40) = a1;
  v85 = a1;
  *(v12 + 150) = v18;
  *(v12 + 151) = v19;
  *(v12 + 152) = v20;
  *(v12 + 153) = v21;
  *(v12 + 154) = v22;
  *(v12 + 155) = v23;
  if (v24 == 3)
  {
    v88[0] = v18;
    v88[1] = v19;
    v88[2] = v20;
    v88[3] = v21;
    v88[4] = v22;
    v88[5] = v23;
    sub_1E148BBAC(v88, &aBlock, 0);
    LOBYTE(v24) = aBlock;
    v26.i32[0] = *(&aBlock + 1);
    v27 = vmovl_u8(v26).u64[0];
    LOBYTE(v28) = BYTE5(aBlock);
  }

  else
  {
    v29 = vdupq_n_s64(v24);
    v27 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1E1B04480), vshlq_u64(v29, xmmword_1E1B04470)));
    v28 = v24 >> 40;
  }

  *(v12 + 144) = v24;
  *(v12 + 145) = vuzp1_s8(v27, v27).u32[0];
  *(v12 + 149) = v28;
  *(v12 + 156) = v79 & 1;
  sub_1E1300B24(v87, v12 + 48);
  sub_1E1300B24(v86, v12 + 88);
  *(v12 + 159) = v80 & 1;
  *(v12 + 157) = v81 & 1;
  v30 = v85;
  v31 = v82;
  if (v85)
  {
    ObjectType = swift_getObjectType();
    v33 = *(v30 + 32);
    *&aBlock = *(v30 + 24);
    *(&aBlock + 1) = v33;
    v34 = *(v31 + 56);

    swift_retain_n();

    v81 = ObjectType;
    v35 = v34(&aBlock, ObjectType, v31);
    v37 = v36;

    *(v12 + 128) = v35;
    *(v12 + 136) = v37;
    v38 = swift_getObjectType();
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = *(v37 + 72);

    v40(v12, sub_1E139D730, v39, v38, v37);
    v30 = v85;

    v41 = *(v30 + 64);
    if (v41)
    {
      *&aBlock = *(v30 + 56);
      *(&aBlock + 1) = v41;

      v34(&aBlock, v81, v82);
      v43 = v42;

      v44 = swift_getObjectType();
      (*(v43 + 16))(&aBlock, v44, v43);
      if (*&v92[0] >> 60)
      {
        if (*&v92[0] >> 60 != 8)
        {
LABEL_13:
          sub_1E139CEA8(&aBlock);
LABEL_23:
          LOBYTE(v47) = 1;
          goto LABEL_24;
        }

        v45 = *(&v91 + 1) | *(&v92[0] + 1);
        v46 = *(&v90 + 1) | v90 | *(&aBlock + 1);
        if (*&v92[0] != 0x8000000000000000 || v45 | aBlock | v91 | v46)
        {
          if (*&v92[0] == 0x8000000000000000 && aBlock == 4)
          {
            v47 = v45 | v91 | v46;
            if (!v47)
            {
LABEL_24:
              *(v12 + 354) = v47;
              v74 = swift_allocObject();
              swift_weakInit();
              v75 = *(v43 + 72);

              v75(v12, sub_1E139D734, v74, v44, v43);
              swift_unknownObjectRelease();

              v30 = v85;
              v55 = *(v12 + 128);
              if (!v55)
              {
                goto LABEL_17;
              }

              goto LABEL_16;
            }
          }

          goto LABEL_13;
        }
      }

      else if (aBlock != 1)
      {
        goto LABEL_23;
      }

      LOBYTE(v47) = 0;
      goto LABEL_24;
    }
  }

  else
  {
    *(v12 + 128) = 0;
    *(v12 + 136) = 0;

    v48 = sub_1E13957E8();
    v50 = v49;
    v51 = sub_1E13959D4();
    v52 = *(v12 + 248);
    v91 = *(v12 + 232);
    v92[0] = v52;
    *(v92 + 10) = *(v12 + 258);
    v53 = *(v12 + 216);
    aBlock = *(v12 + 200);
    v90 = v53;
    *(v12 + 200) = v48;
    *(v12 + 208) = v50;
    *(v12 + 216) = v51;
    *(v12 + 224) = v54;
    *(v12 + 232) = xmmword_1E1B04490;
    *(v12 + 248) = 0;
    *(v12 + 256) = 0;
    *(v12 + 264) = 0;
    *(v12 + 272) = 0;
    sub_1E139CE5C(&aBlock);
  }

  v55 = *(v12 + 128);
  if (v55)
  {
LABEL_16:
    v56 = *(v12 + 136);
    v57 = swift_unknownObjectRetain();
    sub_1E139561C(v57, v56, 2);
    v58 = v87[3];
    v59 = v87[4];
    __swift_project_boxed_opaque_existential_1Tm(v87, v58);
    (*(v59 + 16))(v58, v59);
    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    v61[2] = v60;
    v61[3] = v55;
    v61[4] = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CA0);
    sub_1E1302CD4(&qword_1EE1E3C48, &qword_1ECEB2CA0);
    swift_unknownObjectRetain();
    sub_1E1AF3CDC();
    v62 = v76;
    sub_1E1AF3CFC();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    (*(v77 + 8))(v62, v78);
  }

LABEL_17:
  if (v30 && (*(v30 + 136) & 1) == 0)
  {
    v63 = *(v12 + 160);

    v64 = sub_1E1AF5DBC();
    __swift_project_boxed_opaque_existential_1Tm(v86, v86[3]);
    [v63 addObserver:v12 selector:sel_isEnabledDidChange_ name:v64 object:sub_1E1AF748C()];

    swift_unknownObjectRelease();
  }

  v65 = *(v12 + 160);
  v66 = *MEMORY[0x1E698B430];
  v67 = objc_opt_self();
  v68 = v65;
  v69 = [v67 mainQueue];
  v70 = swift_allocObject();
  swift_weakInit();
  *&v91 = sub_1E139D72C;
  *(&v91 + 1) = v70;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v90 = sub_1E1395DC0;
  *(&v90 + 1) = &block_descriptor_11_0;
  v71 = _Block_copy(&aBlock);

  v72 = [v68 addObserverForName:v66 object:0 queue:v69 usingBlock:v71];
  _Block_release(v71);

  *(&v90 + 1) = swift_getObjectType();
  swift_unknownObjectRelease();

  *&aBlock = v72;
  __swift_destroy_boxed_opaque_existential_1(v86);
  swift_beginAccess();
  sub_1E137F818(&aBlock, v12 + 168);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v87);
  return v12;
}

uint64_t sub_1E139555C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 240);
    v6 = *(result + 273);
    v7 = 2;
    if (v6 > 3)
    {
      if (v6 != 4 && v6 != 5)
      {
        goto LABEL_11;
      }

      v8 = (v5 >> 8) & 1;
    }

    else if (v6 == 1)
    {
      v8 = (v5 >> 8) & 1;
    }

    else
    {
      if (v6 != 3)
      {
LABEL_11:
        sub_1E139561C(a1, a2, v7);
      }

      LODWORD(v8) = *(result + 200);
    }

    v7 = v8 & 1;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1E139561C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1E1398640();
  if (result)
  {
    v9 = *(v3 + 40);
    if (v9)
    {
      v10 = *(v9 + 72);
      if (*(v10 + 16))
      {

        v11 = sub_1E1595560(12);
        if (v12)
        {
          v13 = (*(v10 + 56) + 16 * v11);
          v15 = *v13;
          v14 = v13[1];

          v16 = *(v4 + 216);
          v17 = *(v4 + 248);
          v32 = *(v4 + 232);
          v33[0] = v17;
          *(v33 + 10) = *(v4 + 258);
          v30 = *(v4 + 200);
          v31 = v16;
          v28 = v32;
          v29[0] = v17;
          *(v29 + 10) = *(v33 + 10);
          v26 = v30;
          v27 = v16;
          *(v4 + 200) = v15;
          *(v4 + 208) = v14;
          *(v4 + 273) = 11;

          sub_1E139D308(&v30, v24);
          sub_1E139CE5C(&v26);
          sub_1E139858C(&v30);
          sub_1E139CE5C(&v30);
        }
      }
    }
  }

  if (a1)
  {
    v18 = swift_unknownObjectRetain();
    sub_1E1397820(v18, a2, a3, &v26);
    v19 = *(v4 + 216);
    v20 = *(v4 + 248);
    v32 = *(v4 + 232);
    v33[0] = v20;
    *(v33 + 10) = *(v4 + 258);
    v30 = *(v4 + 200);
    v31 = v19;
    v24[2] = v32;
    v25[0] = v20;
    *(v25 + 10) = *(v33 + 10);
    v24[0] = v30;
    v24[1] = v19;
    v21 = v27;
    *(v4 + 200) = v26;
    *(v4 + 258) = *(v29 + 10);
    v22 = v28;
    *(v4 + 248) = v29[0];
    *(v4 + 232) = v22;
    *(v4 + 216) = v21;
    sub_1E139D308(&v30, v23);
    sub_1E139D308(&v26, v23);
    sub_1E139CE5C(v24);
    sub_1E139858C(&v30);
    sub_1E139CE5C(&v30);
    sub_1E139CE5C(&v26);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E13957E8()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    goto LABEL_16;
  }

  if (*(v1 + 122) != 1 || ((v2 = *(v1 + 97), v3 = v2 > 0xC, v4 = (1 << v2) & 0x1380, !v3) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v11 = *(v1 + 72);
    if (*(v11 + 16))
    {

      v12 = sub_1E1595560(0);
      if (v13)
      {
        countAndFlagsBits = *(*(v11 + 56) + 16 * v12);

        goto LABEL_23;
      }
    }

LABEL_16:
    v15 = *(v0 + 32);
    if (v15 && *(v15 + 24))
    {
      countAndFlagsBits = *(v15 + 16);

      return countAndFlagsBits;
    }

    if (v1 && *(v1 + 208) == 1)
    {

      v16._object = 0x80000001E1B5B320;
      v16._countAndFlagsBits = 0xD000000000000015;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v16)._countAndFlagsBits;

      goto LABEL_25;
    }

    v17._object = 0x80000001E1B5B320;
    v17._countAndFlagsBits = 0xD000000000000015;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v17, v18)._countAndFlagsBits;
LABEL_23:

    return countAndFlagsBits;
  }

  v6 = *(v1 + 72);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = sub_1E1595560(13);
    if (v9)
    {
      countAndFlagsBits = *(*(v6 + 56) + 16 * v8);

LABEL_25:

      return countAndFlagsBits;
    }
  }

  if (*(v1 + 208) != 1)
  {
    v19._countAndFlagsBits = 0xD00000000000002BLL;
    v19._object = 0x80000001E1B5B340;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v19, v20)._countAndFlagsBits;
    goto LABEL_25;
  }

  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v14._object = 0x80000001E1B5B340;
  countAndFlagsBits = localizedStringForAdsLanguage(_:)(v14)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1E13959D4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (*(v2 + 16))
    {

      v3 = sub_1E1595560(0);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }
  }

  return 0;
}

uint64_t sub_1E1395A58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v9, ObjectType, a2);
    if (v12 >> 60)
    {
      if (v12 >> 60 != 8)
      {
LABEL_9:
        sub_1E139CEA8(v9);
LABEL_12:
        LOBYTE(v8) = 1;
        goto LABEL_13;
      }

      v6 = v11 | v13;
      v7 = v9[3] | v9[2] | v9[1];
      if (v12 != 0x8000000000000000 || v6 | v9[0] | v10 | v7)
      {
        if (v12 == 0x8000000000000000 && v9[0] == 4)
        {
          v8 = v6 | v10 | v7;
          if (!v8)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v9[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v8) = 0;
LABEL_13:
    *(v4 + 354) = v8;
    _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_1E1395B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 240);
    v8 = *(result + 273);
    v9 = 2;
    if (v8 > 3)
    {
      if (v8 != 4 && v8 != 5)
      {
        goto LABEL_11;
      }

      v10 = (v7 >> 8) & 1;
    }

    else if (v8 == 1)
    {
      v10 = (v7 >> 8) & 1;
    }

    else
    {
      if (v8 != 3)
      {
LABEL_11:
        sub_1E139561C(a3, a4, v9);
      }

      LODWORD(v10) = *(result + 200);
    }

    v9 = v10 & 1;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1E1395C3C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EE1D2778 != -1)
    {
      swift_once();
    }

    v1 = sub_1E1AF591C();
    __swift_project_value_buffer(v1, qword_1EE1D2780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t sub_1E1395DC0(uint64_t a1)
{
  v2 = sub_1E1AEF55C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1E1AEF50C();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t AppOfferButtonPresenter.deinit()
{
  [*(v0 + 160) removeObserver_];
  if (*(v0 + 128))
  {
    v1 = *(v0 + 136);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 80);
    swift_unknownObjectRetain();
    v3(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  sub_1E1337DEC(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  swift_unknownObjectRelease();

  sub_1E1308058(v0 + 168, &qword_1ECEB2DF0);
  sub_1E139CF44(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), HIBYTE(*(v0 + 272)));
  sub_1E139D134(*(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), *(v0 + 352));
  return v0;
}

uint64_t AppOfferButtonPresenter.__deallocating_deinit()
{
  AppOfferButtonPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1396018()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 304);
  v43 = *(v0 + 312);
  v44 = *(v0 + 320);
  v5 = *(v0 + 352);
  if (v5 >> 8 > 0xFE || (v5 & 0xFF00) != 0x500)
  {
    return 0;
  }

  v6 = *(v0 + 321);
  v7 = (v0 + 322);
  if (v1 >= 0.97 || (v8 = *(v0 + 273), v8 > 9) || ((1 << v8) & 0x244) == 0)
  {
    *&v40 = v1;
    *(&v40 + 1) = v3;
    *&v41 = v2;
    v21 = *(v0 + 312);
    *(&v41 + 1) = v4;
    *v42 = v21;
    v42[8] = *(v0 + 320);
    v42[9] = v6;
    *&v42[10] = *v7;
    *&v42[24] = *(v0 + 336);
    *&v42[40] = v5;
    sub_1E139D308(&v40, v35);
    goto LABEL_11;
  }

  v9 = *(v0 + 328);
  v33[2] = *(v0 + 312);
  v34[0] = v9;
  *(v34 + 10) = *(v0 + 338);
  v10 = *(v0 + 296);
  v33[0] = *(v0 + 280);
  v33[1] = v10;
  *(v0 + 280) = 0x3FF0000000000000;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0;
  *(v0 + 321) = v6 & 1;
  *(v0 + 353) = 5;
  *v35 = v1;
  v35[1] = v3;
  v35[2] = v2;
  v36 = v44;
  v35[3] = v4;
  v35[4] = v43;
  v37 = v6;
  v11 = *v7;
  *&v38[14] = *(v0 + 336);
  *v38 = v11;
  v39 = v5;
  sub_1E139D308(v35, &v40);
  sub_1E1308058(v33, &qword_1ECEB2CC8);
  v12 = objc_opt_self();
  if ([v12 disableActions])
  {
LABEL_11:

    return 0;
  }

  [v12 begin];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v13 = *(v0 + 148);
    v31 = *(v0 + 144);
    v32 = v13;
    v14 = *(v0 + 248);
    *v42 = *(v0 + 232);
    *&v42[16] = v14;
    *&v42[26] = *(v0 + 258);
    v15 = *(v0 + 216);
    v40 = *(v0 + 200);
    v41 = v15;
    v16 = *(v0 + 40);
    sub_1E139D308(&v40, &aBlock);
    sub_1E13963D4(&v40, v16, &aBlock);
    sub_1E139CE5C(&v40);
    v24 = aBlock;
    v25 = v27;
    (*(v22 + 64))(0, 0, &v31, &v24, v6 & 1, ObjectType, 1.0);
    swift_unknownObjectRelease();
    sub_1E139D53C(v25, *(&v25 + 1));
  }

  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = 0x3FD6666666666666;
  *(v18 + 24) = v17;
  v29 = sub_1E139D5C4;
  v30 = v18;
  aBlock = MEMORY[0x1E69E9820];
  *&v27 = 1107296256;
  *(&v27 + 1) = sub_1E1302D64;
  v28 = &block_descriptor_35;
  v19 = _Block_copy(&aBlock);

  [v12 setCompletionBlock_];
  _Block_release(v19);
  [v12 commit];

  return 1;
}

unsigned __int8 *sub_1E13963D4@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v12 = 0;
    v11 = 16;
    v13 = 3;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v4 = *(a2 + 240);
  if (v4)
  {
    if (*(v4 + 16))
    {
      v5 = result[73];
      if (v5 <= 9 && ((0x207u >> v5) & 1) != 0)
      {
        v6 = qword_1E1B048D8[result[73]];
        v7 = a2;
        v8 = objc_opt_self();

        v9 = sub_1E1AF620C();
        LODWORD(v6) = [v8 isCapableOfAction:v6 capabilities:v9];

        a2 = v7;
        if (!v6)
        {
          v11 = *(v7 + 97);
          v13 = *(v7 + 104);
          v12 = *(v7 + 112);
          result = sub_1E139D580(v13, v12);
          v10 = 5;
          goto LABEL_15;
        }
      }
    }
  }

  v10 = *(a2 + 96);
  v11 = *(a2 + 97);
  v13 = *(a2 + 104);
  v12 = *(a2 + 112);
  result = sub_1E139D580(v13, v12);
  if (v10 == 7)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (v11 == 16)
  {
    v11 = 0;
  }

  if (v13 == 3)
  {
    v13 = 0;
    v12 = 0;
  }

LABEL_15:
  *a3 = v10;
  *(a3 + 1) = v11;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_1E1396510()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_1E1595560(1);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v8 = *(v1 + 208);
    if (*(v1 + 121) == 1)
    {

      v9 = 0x80000001E1B5B470;
      v10 = 0xD00000000000001CLL;
      if (!v8)
      {
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        countAndFlagsBits = localizedString(_:comment:)(*&v10, v11)._countAndFlagsBits;
LABEL_13:
        v13 = countAndFlagsBits;

        return v13;
      }

LABEL_12:
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(*&v10)._countAndFlagsBits;
      goto LABEL_13;
    }

    v7 = 0x80000001E1B5B450;
    if (*(v1 + 208))
    {

      v10 = 0xD00000000000001CLL;
      v9 = 0x80000001E1B5B450;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0x80000001E1B5B450;
  }

  v14 = 0xD00000000000001CLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v15)._countAndFlagsBits;
}

uint64_t sub_1E1396644()
{
  v1 = *(v0 + 40);
  if (v1)
  {

    v2 = sub_1E13957E8();
    v4 = *(v1 + 224);
    if (v4)
    {
      if (v2 == *(v1 + 216) && v4 == v3)
      {

LABEL_15:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E1B02CC0;
        *(inited + 32) = 0x6563697270;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = sub_1E13957E8();
        *(inited + 56) = v9;
        v10 = sub_1E13017E4(inited);
        swift_setDeallocating();
        sub_1E1308058(inited + 32, &unk_1ECEB9500);
        v11._object = 0x80000001E1B5B490;
        v11._countAndFlagsBits = 0xD000000000000018;
        countAndFlagsBits = localizedString(_:with:)(v11, v10)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      v6 = sub_1E1AF74AC();

      if (v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  return sub_1E13957E8();
}

uint64_t sub_1E13967C0()
{
  v1 = *(v0 + 273);
  if (v1 == 11)
  {
    v2 = 1;
    return v2 & 1;
  }

  if (v1 != 8)
  {
    v3 = (v0 + 200);
    v4 = *(v0 + 40);
    if (v4)
    {
      if (*(v4 + 96) == 5)
      {
        if (qword_1EE1D2778 != -1)
        {
          swift_once();
        }

        v5 = sub_1E1AF591C();
        __swift_project_value_buffer(v5, qword_1EE1D2780);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
        sub_1E1AF38CC();
LABEL_10:
        sub_1E1AF382C();
        sub_1E1AF548C();

        v2 = 0;
        return v2 & 1;
      }

      v8 = *(v0 + 248);
      v19 = *(v0 + 232);
      *v20 = v8;
      *&v20[10] = *(v0 + 258);
      v9 = *(v0 + 216);
      v17 = *v3;
      v18 = v9;
      v10 = *(v4 + 240);
      if (v10)
      {
        if (*(v10 + 16))
        {
          if (v20[25] <= 9u && ((0x207u >> v20[25]) & 1) != 0)
          {
            v11 = qword_1E1B048D8[v20[25]];
            v12 = objc_opt_self();
            sub_1E139D308(&v17, &v16);

            v13 = sub_1E1AF620C();
            LODWORD(v11) = [v12 isCapableOfAction:v11 capabilities:v13];
            sub_1E139CE5C(&v17);

            if (!v11)
            {
              if (qword_1EE1D2778 != -1)
              {
                swift_once();
              }

              v15 = sub_1E1AF591C();
              __swift_project_value_buffer(v15, qword_1EE1D2780);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
              sub_1E1AF38EC();
              *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
              sub_1E1AF38CC();
              goto LABEL_10;
            }
          }
        }
      }
    }

    else
    {
      v6 = *(v0 + 248);
      v19 = *(v0 + 232);
      *v20 = v6;
      *&v20[10] = *(v0 + 258);
      v7 = *(v0 + 216);
      v17 = *v3;
      v18 = v7;
    }

    v2 = !sub_1E1398640();
    return v2 & 1;
  }

  v2 = *(v0 + 159);
  return v2 & 1;
}

uint64_t sub_1E1396B4C(uint64_t a1)
{
  v20 = sub_1E1AF320C();
  v23 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF326C();
  v19 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  sub_1E13006E4(0, &qword_1EE1E3430);
  v14 = sub_1E1AF68EC();
  sub_1E1AF325C();
  sub_1E1AF32DC();
  v18 = *(v8 + 8);
  v18(v11, v7);
  aBlock[4] = sub_1E139D5D0;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_38;
  v15 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  v16 = v20;
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF5E0](v13, v6, v3, v15);
  _Block_release(v15);

  (*(v23 + 8))(v3, v16);
  (*(v21 + 8))(v6, v22);
  return (v18)(v13, v19);
}

uint64_t sub_1E1396EEC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

unsigned __int8 *sub_1E1396F44@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v4 = 0uLL;
  if (!v2[4])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v5 = 0;
    v7 = 0;
    v17 = 0uLL;
    v18 = -256;
    goto LABEL_44;
  }

  v5 = v2;
  v41 = *result;
  v6 = *(result + 1) | ((*(result + 5) | (result[7] << 16)) << 32);
  v35 = *(result + 2);
  v36 = *(result + 1);
  v34 = *(result + 3);
  v7 = *(result + 6);
  v38 = *(result + 5);
  v39 = *(result + 4);
  v37 = *(result + 7);
  v8 = v2[9];
  v9 = v2[10];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 6, v8);
  v10 = *(v9 + 8);

  v11 = v10(v8, v9);
  v12 = v2[5];
  if (v12)
  {
    v13 = v12[120];
    if (v11)
    {
      goto LABEL_8;
    }

LABEL_7:
    LOBYTE(v43[0]) = v41;
    *(v43 + 1) = v6;
    HIBYTE(v43[0]) = BYTE6(v6);
    *(v43 + 5) = WORD2(v6);
    v43[1] = v36;
    v43[2] = v35;
    v43[3] = v34;
    v43[4] = v39;
    v43[5] = v38;
    v43[6] = v7;
    v43[7] = v37;
    sub_1E1397398(v43, v44);
    v18 = v48;
    if (HIBYTE(v48) <= 0xFEu)
    {
      v14 = v44[0];
      v15 = v44[1];
      v16 = v44[2];
      v5 = v44[3];
      v40 = v46;
      v42 = v45;
      v7 = v47;

      v4 = v40;
      v17 = v42;
      goto LABEL_44;
    }

    goto LABEL_8;
  }

  v13 = 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  type metadata accessor for SelectAppAction();
  if (swift_dynamicCastClass())
  {
    v19 = v7 >> 60;
    if (v7 >> 60 == 1)
    {
      if (!v12 || (v41 & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v12[122])
      {
        goto LABEL_41;
      }

      v29 = v12[16];
      if (v29 <= 1)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v19 != 4)
      {
        if (v19 == 8)
        {
          if ((v20 = v41 | (v6 << 8), v21 = v35 | v36 | v34, v7 == 0x8000000000000000) && !(v21 | v39 | v38 | v37 | v20) || v7 == 0x8000000000000000 && v20 == 4 && !(v21 | v39 | v38 | v37))
          {
            v14 = sub_1E13957E8();
            v15 = v22;
            if ((v13 & 1) == 0)
            {
              goto LABEL_42;
            }

LABEL_34:

            v16 = 0;
            v5 = 0;
LABEL_43:
            v18 = 2560;
            goto LABEL_44;
          }
        }

LABEL_33:
        v14 = sub_1E13957E8();
        v15 = v30;
        goto LABEL_34;
      }

      if (!v12)
      {
        goto LABEL_33;
      }

      v29 = v12[16];
      if (v29 <= 1)
      {
LABEL_38:
        v7 = sub_1E1AF74AC();

        v14 = sub_1E13957E8();
        v15 = v31;
        if (v7)
        {
          goto LABEL_42;
        }

        goto LABEL_34;
      }
    }

    if (v29 == 2)
    {
      goto LABEL_38;
    }

LABEL_41:
    v14 = sub_1E13957E8();
    v15 = v32;
LABEL_42:
    v16 = sub_1E13959D4();
    v5 = v33;

    goto LABEL_43;
  }

  type metadata accessor for UnhideAppAction();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = OBJC_IVAR____TtC11AppStoreKit15UnhideAppAction_isHidden;
    v25 = v23;
    swift_beginAccess();
    if (*(v25 + v24) == 1)
    {
      v14 = sub_1E13957E8();
      v15 = v26;
      v16 = sub_1E13959D4();
      v5 = v27;

      v7 = 0;
      v18 = 0;
      v17 = xmmword_1E1B04490;
LABEL_36:
      v4 = 0uLL;
      goto LABEL_44;
    }
  }

  if ((sub_1E13974E8(v5[16], v5[17]) & 1) == 0)
  {

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v5 = 0;
    v7 = 0;
    v17 = 0uLL;
    v18 = -256;
    goto LABEL_36;
  }

  v16 = v5;
  v14 = sub_1E1397644();
  v15 = v28;

  v18 = 2304;
LABEL_44:
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v5;
  *(a2 + 32) = v17;
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  *(a2 + 72) = v18;
  return result;
}

uint64_t sub_1E1397398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[6];
  if (v4 >> 60 == 3)
  {
    goto LABEL_10;
  }

  if (v4 >> 60 != 8)
  {
    result = 0;
    object = 0;
    v13 = 0;
    v11 = -256;
    goto LABEL_16;
  }

  v5 = a1[4];
  v6 = *a1;
  v7 = a1[5] | a1[7];
  v8 = a1[3] | a1[2] | a1[1];
  if (v4 == 0x8000000000000000 && (v7 | *a1 | v5 | v8) == 0)
  {
    goto LABEL_10;
  }

  result = 0;
  v11 = -256;
  if (v4 != 0x8000000000000000 || v6 != 4)
  {
    object = 0;
    v13 = 0;
    goto LABEL_16;
  }

  object = 0;
  v13 = 0;
  if (!(v7 | v5 | v8))
  {
LABEL_10:
    v14 = *(v2 + 40);
    if (v14 && *(v14 + 208) == 1)
    {

      v15._object = 0x80000001E1B5B300;
      v15._countAndFlagsBits = 0xD000000000000016;
      v16 = localizedStringForAdsLanguage(_:)(v15);

      object = v16._object;
      result = v16._countAndFlagsBits;
    }

    else
    {
      v17._object = 0x80000001E1B5B300;
      v17._countAndFlagsBits = 0xD000000000000016;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v19 = localizedString(_:comment:)(v17, v18);
      object = v19._object;
      result = v19._countAndFlagsBits;
    }

    v11 = 0;
    v13 = 1;
  }

LABEL_16:
  *a2 = result;
  *(a2 + 8) = object;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v13;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = v11;
  return result;
}

uint64_t sub_1E13974E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (!v3)
  {
    return 0;
  }

  if (*(v3 + 124) != 1)
  {
    return 0;
  }

  v4 = *(v3 + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  v8 = *(v3 + 40);
  objc_allocWithZone(MEMORY[0x1E69635F8]);

  v9 = sub_1E1399FF8(v8, v4, 0);
  v10 = [v9 isPlaceholder];

  if (v10)
  {
    return 0;
  }

  if (a1)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(v14, *(v5 + 157), ObjectType, a2);
    v12 = v15 >> 60;
    if ((v15 >> 60) > 4)
    {
      if (v12 != 6 && v12 != 5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!v12)
      {
        return 0;
      }

      if (v12 != 4)
      {
LABEL_14:
        sub_1E139CEA8(v14);
        return 1;
      }
    }

    sub_1E139CEA8(v14);
    return 0;
  }

  return 1;
}

uint64_t sub_1E1397644()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    v7 = 0x80000001E1B5B260;
LABEL_6:
    v8 = 0xD000000000000016;
    goto LABEL_17;
  }

  v2 = *(v1 + 72);
  if (*(v2 + 16))
  {

    v3 = sub_1E1595560(4);
    if (v4)
    {
      v5 = *(*(v2 + 56) + 16 * v3);

      return v5;
    }
  }

  if (*(v1 + 16) > 2u)
  {
  }

  else
  {
    v9 = sub_1E1AF74AC();

    if ((v9 & 1) == 0)
    {
      v7 = 0x80000001E1B5B260;
      if (*(v1 + 208) == 1)
      {

        v10 = 0xD000000000000016;
        v11 = 0x80000001E1B5B260;
LABEL_15:
        countAndFlagsBits = localizedStringForAdsLanguage(_:)(*&v10)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      goto LABEL_6;
    }
  }

  if (*(v1 + 208) == 1)
  {

    v10 = 0xD00000000000001DLL;
    v11 = 0x80000001E1B5B280;
    goto LABEL_15;
  }

  v8 = 0xD00000000000001DLL;
  v7 = 0x80000001E1B5B280;
LABEL_17:
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v13)._countAndFlagsBits;
}

unint64_t sub_1E1397820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 40))(&v69, *(v4 + 157), ObjectType, a2);
  v10 = *(v4 + 40);
  if (v10)
  {
    v11 = *(v10 + 123);
    v12 = *(v10 + 120) ^ 1 | v11;
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  v64[0] = v69;
  v64[1] = v70;
  v64[2] = v71;
  v64[3] = v72;
  result = sub_1E1396F44(v64, v65);
  LODWORD(v14) = HIBYTE(v68);
  if (v14 <= 0xFE)
  {
    a3 = v67;
    v63 = v66;
    v10 = v65[4];
    v22 = v65[5];
    v25 = v65[2];
    a2 = v65[3];
    v21 = v68;
    v15 = v65[0];
    a1 = v65[1];
    result = sub_1E139CEA8(&v69);
    v20 = v63;
    v19 = v25;
    v11 = v15 >> 8;
    v23 = v22 >> 8;
    v24 = v22 & 0xFFFFFFFFFFFF0000;
    goto LABEL_11;
  }

  LOBYTE(v15) = v69;
  v16 = *(&v72 + 5) | (BYTE7(v72) << 16);
  v17 = v16 >> 20;
  if (v16 >> 20 <= 3)
  {
    if (v16 >> 20 > 1)
    {
      if (v17 == 2)
      {
        v15 = sub_1E1398198();
        a1 = v26;
        result = sub_1E139CEA8(&v69);
        v21 = 0;
        LOBYTE(v22) = 0;
        LOBYTE(v23) = 0;
        v24 = 0;
        v11 = v15 >> 8;
        LOBYTE(v14) = 2;
        goto LABEL_11;
      }

      if (v11)
      {
        v40 = sub_1E1398500(6);
LABEL_30:
        v15 = v40;
        a1 = v41;
        v45 = sub_1E13959D4();
        a2 = v46;
        result = sub_1E139CEA8(&v69);
        v19 = v45;
LABEL_31:
        v10 = 0;
        a3 = 0;
        v21 = 0;
        LOBYTE(v14) = 0;
        LOBYTE(v23) = 0;
        v24 = 0;
        v11 = v15 >> 8;
        v20 = 0uLL;
        LOBYTE(v22) = 1;
        goto LABEL_11;
      }

      goto LABEL_33;
    }

    if (!v17)
    {
      result = sub_1E1397EE4(a1, a2, a3, 2u);
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      LOBYTE(v15) = result & 1;
      LOBYTE(v14) = 3;
      goto LABEL_11;
    }

    if ((v69 & 1) == 0)
    {
      result = sub_1E1398290();
      a1 = v52;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      v11 = result >> 8;
      LOBYTE(v14) = 7;
      goto LABEL_40;
    }

    if (v10)
    {
      if (*(v10 + 122) == 1)
      {
        v15 = sub_1E1398388();
        a1 = v38;
        result = sub_1E13959D4();
        v19 = result;
        a2 = v39;
        v21 = 0;
        LOBYTE(v22) = 0;
        LOBYTE(v23) = 0;
        v24 = 0;
        v11 = v15 >> 8;
        LOBYTE(v14) = 8;
        goto LABEL_11;
      }

      if (*(v10 + 16) <= 1u || *(v10 + 16) == 2)
      {
        v56 = sub_1E1AF74AC();

        if ((v56 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

      v15 = sub_1E13957E8();
      a1 = v57;
      result = sub_1E13959D4();
      v19 = result;
      a2 = v58;
      goto LABEL_31;
    }

LABEL_55:
    result = sub_1E1397EE4(a1, a2, a3, 0);
    v19 = 0;
    a2 = 0;
    v10 = 0;
    v21 = 0;
    LOBYTE(v22) = 0;
    v24 = 0;
    LOBYTE(v15) = 0;
    v11 = 0;
    LOBYTE(v23) = result & 1;
    goto LABEL_56;
  }

  v11 = *(&v69 + 1) | ((*(&v69 + 5) | (BYTE7(v69) << 16)) << 32);
  v14 = v70;
  v62 = *(&v71 + 1);
  v10 = v72;
  if (v16 >> 20 > 5)
  {
    if (v17 == 6)
    {
      v22 = v71;
      v59 = *(&v70 + 1);
      v33 = v71;
      v60 = v14;
      v34 = v14;
      v35 = v59;
      v36 = a2;
      a2 = v22;
      v37 = sub_1E1397EE4(a1, v36, a3, 2u);
      result = sub_1E139CEA8(&v69);
      v19 = v59;
      a1 = v60;
      v21 = 0;
      v24 = 0;
      LOBYTE(v22) = v10 & 1;
      LOBYTE(v23) = v37 & 1;
      LOBYTE(v14) = 5;
      v10 = v62;
      goto LABEL_11;
    }

    if (v17 == 7)
    {
      v15 = sub_1E1397644();
      a1 = v18;
      result = sub_1E139CEA8(&v69);
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      v11 = v15 >> 8;
      LOBYTE(v14) = 9;
      goto LABEL_11;
    }

    v42 = v69 | (v11 << 8);
    v43 = v72 | ((*(&v72 + 1) | ((*&v16 & 0xFFFFFFLL) << 32)) << 8);
    v24 = *(&v72 + 1);
    v44 = v70 | *(&v69 + 1) | *(&v70 + 1);
    if (v43 == 0x8000000000000000 && !(v44 | v71 | *(&v71 + 1) | *(&v72 + 1) | v42))
    {
LABEL_28:
      if (v12)
      {
        v40 = sub_1E13957E8();
        goto LABEL_30;
      }

LABEL_33:
      v51 = sub_1E1397EE4(a1, a2, a3, 2u);
      result = sub_1E139CEA8(&v69);
      v19 = 0;
      a2 = 0;
      v10 = 0;
      v21 = 0;
      LOBYTE(v22) = 0;
      v24 = 0;
      LOBYTE(v15) = 0;
      v11 = 0;
      LOBYTE(v23) = v51 & 1;
LABEL_56:
      a1 = 1;
      LOBYTE(v14) = 1;
      goto LABEL_11;
    }

    v53 = v44 | v71 | *(&v71 + 1);
    if (v42 != 1 || v53 || v43 != 0x8000000000000000 || *(&v72 + 1))
    {
      if (v42 == 2 && !v53 && v43 == 0x8000000000000000 && !*(&v72 + 1))
      {
        a1 = 0;
        v19 = 0;
        a2 = 0;
        v10 = 0;
        a3 = 0;
        v21 = 0;
        LOBYTE(v22) = 0;
        LOBYTE(v23) = 0;
        LOBYTE(v15) = 0;
        v11 = 0;
        v20 = 0uLL;
        LOBYTE(v14) = 12;
        goto LABEL_11;
      }

      if (v42 != 3 || v53 || v43 != 0x8000000000000000 || *(&v72 + 1))
      {
        goto LABEL_28;
      }

      result = sub_1E1398500(12);
      a1 = v55;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      v11 = result >> 8;
      LOBYTE(v14) = 11;
    }

    else
    {
      result = sub_1E13980A0();
      a1 = v54;
      v21 = 0;
      LOBYTE(v22) = 0;
      LOBYTE(v23) = 0;
      v24 = 0;
      v11 = result >> 8;
      LOBYTE(v14) = 6;
    }

LABEL_40:
    LOBYTE(v15) = result;
    goto LABEL_11;
  }

  if (v17 == 4)
  {
    LOBYTE(v22) = v72 & 1;
    v27 = v71;
    v28 = v71;
    v29 = v14;
    v30 = a1;
    a1 = v14;
    v31 = a2;
    a2 = v27;
    v32 = sub_1E1397EE4(v30, v31, a3, 2u);
    result = sub_1E139CEA8(&v69);
    v19 = 0;
    v21 = 0;
    v24 = 0;
    LOBYTE(v23) = v32 & 1;
    LOBYTE(v14) = 1;
    v10 = v62;
  }

  else
  {
    v22 = v71;
    v47 = v71;
    v61 = v14;
    v48 = v14;
    v49 = a2;
    a2 = v22;
    v50 = sub_1E1397EE4(a1, v49, a3, 2u);
    result = sub_1E139CEA8(&v69);
    v19 = 0;
    v21 = 0;
    v24 = 0;
    LOBYTE(v22) = v10 & 1;
    a1 = v61;
    v10 = v62;
    LOBYTE(v23) = v50 & 1;
    LOBYTE(v14) = 4;
  }

LABEL_11:
  *a4 = v15 | (v11 << 8);
  *(a4 + 8) = a1;
  *(a4 + 16) = v19;
  *(a4 + 24) = a2;
  *(a4 + 32) = v10;
  *(a4 + 40) = v24 | v22 | (v23 << 8);
  *(a4 + 48) = v20;
  *(a4 + 64) = a3;
  *(a4 + 72) = v21;
  *(a4 + 73) = v14;
  return result;
}

uint64_t sub_1E1397EE4(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  if (*(v4 + 156) != 1)
  {
    goto LABEL_10;
  }

  v19 = v4;
  ObjectType = swift_getObjectType();
  v8 = *(a2 + 56);
  if (v8(ObjectType, a2))
  {
    v9 = swift_getObjectType();
    (*(a2 + 8))(&v22, ObjectType, a2);
    v20 = v22;
    v21 = v23;
    v10.underlyingAdamID._countAndFlagsBits = &v20;
    v10.underlyingAdamID._object = v9;
    v11 = AppStateController.isLocalApplication(for:)(v10);
    swift_unknownObjectRelease();

    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (a3 == 2)
  {
    v12 = *(v19 + 40);
    if (v12 && (*(v12 + 120) & 1) != 0 || v8(ObjectType, a2) && (v14 = v13, v15 = swift_getObjectType(), (*(a2 + 8))(&v22, ObjectType, a2), v20 = v22, v21 = v23, v16 = (*(v14 + 96))(&v20, a4, v15, v14), swift_unknownObjectRelease(), , (v16 & 1) != 0))
    {
      a3 = 1;
      return a3 & 1;
    }

LABEL_10:
    a3 = 0;
  }

  return a3 & 1;
}

uint64_t sub_1E13980A0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_1E1595560(8);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v7 = 0x80000001E1B5B2A0;
    if (*(v1 + 208) == 1)
    {

      v8._countAndFlagsBits = 0xD00000000000001CLL;
      v8._object = 0x80000001E1B5B2A0;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    v7 = 0x80000001E1B5B2A0;
  }

  v10 = 0xD00000000000001CLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v11)._countAndFlagsBits;
}

uint64_t sub_1E1398198()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_1E1595560(5);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v7 = 0x80000001E1B5B2C0;
    if (*(v1 + 208) == 1)
    {

      v8._countAndFlagsBits = 0xD000000000000018;
      v8._object = 0x80000001E1B5B2C0;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    v7 = 0x80000001E1B5B2C0;
  }

  v10 = 0xD000000000000018;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v11)._countAndFlagsBits;
}

uint64_t sub_1E1398290()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (*(v2 + 16))
    {

      v3 = sub_1E1595560(7);
      if (v4)
      {
        v5 = *(*(v2 + 56) + 16 * v3);

        return v5;
      }
    }

    v7 = 0x80000001E1B5B2E0;
    if (*(v1 + 208) == 1)
    {

      v8._countAndFlagsBits = 0xD00000000000001BLL;
      v8._object = 0x80000001E1B5B2E0;
      countAndFlagsBits = localizedStringForAdsLanguage(_:)(v8)._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  else
  {
    v7 = 0x80000001E1B5B2E0;
  }

  v10 = 0xD00000000000001BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  return localizedString(_:comment:)(*(&v7 - 1), v11)._countAndFlagsBits;
}

uint64_t sub_1E1398388()
{
  result = 0x6C69662E6C6C6562;
  v2 = *(v0 + 40);
  if (v2 && *(v2 + 122) == 1)
  {
    if (*(v2 + 16) > 1u)
    {
      if (*(v2 + 16) != 2)
      {

        goto LABEL_12;
      }

      v3 = 0x6C69662E6C6C6562;
    }

    else
    {
      v3 = 0x6C69662E6C6C6562;
    }

    v4 = sub_1E1AF74AC();

    if ((v4 & 1) == 0)
    {
      v5 = *(v2 + 80);
      if (!*(v5 + 16))
      {
        return v3;
      }

      v6 = sub_1E1595560(0);
      if ((v7 & 1) == 0)
      {
LABEL_15:

        return v3;
      }

LABEL_14:
      v3 = *(*(v5 + 56) + 16 * v6);

      goto LABEL_15;
    }

LABEL_12:
    result = 0x72616D6B63656863;
    v5 = *(v2 + 80);
    if (!*(v5 + 16))
    {
      return result;
    }

    v3 = 0x72616D6B63656863;

    v6 = sub_1E1595560(15);
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1E1398500(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v2 + 72);
    if (*(v3 + 16))
    {

      v5 = sub_1E1595560(a1);
      if (v6)
      {
        v7 = *(*(v3 + 56) + 16 * v5);

        return v7;
      }
    }
  }

  return sub_1E13957E8();
}

void sub_1E139858C(_OWORD *a1)
{
  v3 = *(v1 + 328);
  v9[2] = *(v1 + 312);
  v10[0] = v3;
  *(v10 + 10) = *(v1 + 338);
  v4 = *(v1 + 296);
  v9[0] = *(v1 + 280);
  v9[1] = v4;
  v5 = a1[3];
  *(v1 + 312) = a1[2];
  *(v1 + 328) = v5;
  *(v1 + 338) = *(a1 + 58);
  v6 = a1[1];
  *(v1 + 280) = *a1;
  *(v1 + 296) = v6;
  sub_1E1308058(v9, &qword_1ECEB2CC8);
  if (*(v1 + 273))
  {
    v7 = *(v1 + 158);
    *(v1 + 158) = 0;
    sub_1E139D308(a1, v8);
    sub_1E1394114(v7);
  }

  else
  {
    sub_1E139D308(a1, v8);
  }

  _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

BOOL sub_1E1398640()
{
  if (*(v0 + 273) >= 3u)
  {
    v1 = 3;
  }

  else
  {
    v1 = *(v0 + 273);
  }

  __swift_project_boxed_opaque_existential_1Tm((v0 + 88), *(v0 + 112));
  v5[0] = v1;
  v2 = RestrictionsProtocol.doesAllow(_:properties:)(v5, *(v0 + 40));
  if (v2)
  {
    if (qword_1EE1D2778 != -1)
    {
      swift_once();
    }

    v3 = sub_1E1AF591C();
    __swift_project_value_buffer(v3, qword_1EE1D2780);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B03760;
    sub_1E1AF38CC();
    v6 = &type metadata for RestrictionsCheckIntent;
    v5[0] = v1;
    sub_1E1AF38BC();
    sub_1E1308058(v5, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF548C();
  }

  return !v2;
}

uint64_t AppOfferButtonPresenter.actionForCurrentState.getter()
{
  sub_1E13988B0(&v4);
  v0 = v4;
  if (v4)
  {
    v1 = &qword_1ECEB2DF0;
    v2 = &v5;
  }

  else
  {
    v1 = &unk_1ECEB2CA8;
    v2 = &v4;
  }

  sub_1E1308058(v2, v1);
  return v0;
}

void sub_1E13988B0(unint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v1 + 216);
  v6 = *(v1 + 248);
  v55[2] = *(v1 + 232);
  v56[0] = v6;
  *(v56 + 10) = *(v1 + 258);
  v55[0] = *(v1 + 200);
  v55[1] = v5;
  v7 = *(v1 + 40);
  sub_1E139D308(v55, &v52);
  sub_1E13963D4(v55, v7, &v52);
  sub_1E139CE5C(v55);
  v8 = *(v2 + 32);
  if (!v8 || v52 == 5)
  {
    sub_1E139D53C(v53, v54);
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v50 = v53;
  v51 = v54;
  Strong = *(v2 + 128);
  v9 = *(v2 + 136);

  if (sub_1E13974E8(Strong, v9))
  {
    type metadata accessor for OfferStateAction();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      type metadata accessor for CompoundAction();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions);
        v48 = v8;
        v49 = a1;
        v46 = v9;
        v47 = Strong;
        if (v14 >> 62)
        {
LABEL_135:
          v15 = sub_1E1AF71CC();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15)
        {
          v16 = 0;
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E68FFD80](v16, v14);
              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_133;
              }

              v17 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            v18 = swift_dynamicCastClass();
            if (v18)
            {
              break;
            }

            ++v16;
            if (v17 == v15)
            {
              goto LABEL_21;
            }
          }

          v12 = v18;
        }

        else
        {
LABEL_21:

          v12 = 0;
        }

        v8 = v48;
        a1 = v49;
        v9 = v46;
        Strong = v47;
      }

      else
      {
        v12 = 0;
      }
    }

    if (sub_1E1398640())
    {
      if (!v12)
      {
        goto LABEL_37;
      }

      v19 = v12;
      v20 = *(v12 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_restrictedAction);
      if (v20)
      {
        *a1 = v20;
        if (Strong)
        {
          ObjectType = swift_getObjectType();

          swift_unknownObjectRetain();

          sub_1E139D53C(v50, v51);
        }

        else
        {

          sub_1E139D53C(v50, v51);
          ObjectType = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }

        *(a1 + 8) = Strong;
        *(a1 + 32) = ObjectType;
        goto LABEL_70;
      }
    }

    else
    {
      if (!v12)
      {
        goto LABEL_37;
      }

      v19 = v12;
    }

    v22 = *(v19 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_openAction);
    if (v22)
    {
      type metadata accessor for SheetAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v23 = swift_getObjectType();
LABEL_67:

          sub_1E139D53C(v50, v51);
          *a1 = v22;
          *(a1 + 8) = Strong;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 32) = v23;
LABEL_70:
          *(a1 + 40) = 2;
          return;
        }
      }

      else if (Strong)
      {
        v23 = swift_getObjectType();
        swift_unknownObjectRetain();
        goto LABEL_67;
      }

      v23 = 0;
      goto LABEL_67;
    }
  }

LABEL_37:
  v24 = *(v2 + 273);
  if (v24 <= 5)
  {
    if (v24 - 1 >= 4)
    {
      if (*(v2 + 273))
      {
        goto LABEL_116;
      }

      type metadata accessor for OfferConfirmationAction();
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        if (*(v2 + 158) == 1)
        {
          v32 = *(v31 + OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_buyAction);
          if (Strong)
          {
            v4 = swift_getObjectType();
            swift_unknownObjectRetain();

            v33 = 0;
          }

          else
          {

            v33 = 0;
            v4 = 0;
          }
        }

        else
        {
          v32 = *(v31 + OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_confirmationInitiationAction);

          v33 = 1;
          Strong = v2;
        }

        sub_1E139D53C(v50, v51);
        v8 = v32;
        goto LABEL_145;
      }

      goto LABEL_139;
    }

    goto LABEL_45;
  }

  if (*(v2 + 273) > 9u)
  {
    if (v24 == 10)
    {
      goto LABEL_139;
    }

    if (v24 != 11)
    {
      goto LABEL_116;
    }

LABEL_45:
    type metadata accessor for OfferConfirmationAction();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v26 = *(v27 + OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_buyAction);
      if (Strong)
      {
        v4 = swift_getObjectType();
        swift_unknownObjectRetain();
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_62;
    }

    type metadata accessor for OfferStateAction();
    if (swift_dynamicCastClass() && Strong)
    {

      v28 = swift_unknownObjectRetain();
      OfferStateAction.preferredAction(for:)(v28, v9);
      type metadata accessor for SheetAction();
      if (swift_dynamicCastClass())
      {

        swift_beginAccess();
        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v4 = swift_getObjectType();

          swift_unknownObjectRelease();
LABEL_101:
          sub_1E139D53C(v50, v51);
          v33 = 2;
          Strong = v30;
          goto LABEL_145;
        }

        swift_unknownObjectRelease();
        goto LABEL_127;
      }

      swift_unknownObjectRelease();
    }

    type metadata accessor for CompoundAction();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v47 = Strong;
      v35 = *(v34 + OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions);
      v52 = MEMORY[0x1E69E7CC0];
      if (v35 >> 62)
      {
        v14 = sub_1E1AF71CC();
      }

      else
      {
        v14 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = v8;
      v49 = a1;

      if (v14)
      {
        v36 = 0;
        v4 = v35 & 0xC000000000000001;
        v37 = MEMORY[0x1E69E7CC0];
        v46 = v9;
        while (2)
        {
          v38 = v36;
          while (1)
          {
            if (v4)
            {
              MEMORY[0x1E68FFD80](v38, v35);
              v36 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_131;
              }
            }

            else
            {
              if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_132;
              }

              v36 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
LABEL_131:
                __break(1u);
LABEL_132:
                __break(1u);
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
                goto LABEL_135;
              }
            }

            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v38;
            if (v36 == v14)
            {
              v9 = v46;
              goto LABEL_92;
            }
          }

          MEMORY[0x1E68FEF20]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();
          v37 = v52;
          v9 = v46;
          if (v36 != v14)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
      }

LABEL_92:
      v39 = v37;
      if (v37 >> 62)
      {
        v8 = v48;
        a1 = v49;
        if (sub_1E1AF71CC())
        {
          goto LABEL_94;
        }
      }

      else
      {
        v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v8 = v48;
        a1 = v49;
        if (v40)
        {
LABEL_94:
          if ((v39 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E68FFD80](0, v39);
          }

          else
          {
            if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_148;
            }
          }

          if (!Strong)
          {

LABEL_120:

LABEL_142:
            sub_1E139D53C(v50, v51);
            goto LABEL_143;
          }

          v41 = swift_unknownObjectRetain();
          OfferStateAction.preferredAction(for:)(v41, v9);
          type metadata accessor for SheetAction();
          if (swift_dynamicCastClass())
          {

            swift_beginAccess();
            v42 = swift_unknownObjectWeakLoadStrong();
            if (v42)
            {
              v30 = v42;
              v4 = swift_getObjectType();

              swift_unknownObjectRelease();

              goto LABEL_101;
            }

            swift_unknownObjectRelease();

LABEL_127:
            sub_1E139D53C(v50, v51);
            Strong = 0;
LABEL_143:
            v4 = 0;
            goto LABEL_144;
          }

          swift_unknownObjectRelease();

LABEL_140:
          v4 = swift_getObjectType();
          swift_unknownObjectRetain();
          goto LABEL_141;
        }
      }
    }

LABEL_139:
    if (!Strong)
    {
      goto LABEL_142;
    }

    goto LABEL_140;
  }

  if (v24 - 6 < 2 || v24 != 8)
  {
    goto LABEL_45;
  }

  type metadata accessor for OfferStateAction();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    type metadata accessor for CompoundAction();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      v14 = *(v43 + OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions);
      v49 = a1;
      if (!(v14 >> 62))
      {
        v44 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_105;
      }

LABEL_148:
      v44 = sub_1E1AF71CC();
LABEL_105:

      if (!v44)
      {
LABEL_123:

        sub_1E139D53C(v50, v51);

        Strong = 0;
        v8 = 0;
        v4 = 0;
        v33 = 0;
        a1 = v49;
        goto LABEL_145;
      }

      v45 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1E68FFD80](v45, v14);
          a1 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v45 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_134;
          }

          v4 = *(v14 + 8 * v45 + 32);

          a1 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }
        }

        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v45;
        if (a1 == v44)
        {
          goto LABEL_123;
        }
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      a1 = v49;
      if (Strong)
      {
        v4 = swift_getObjectType();

LABEL_141:
        sub_1E139D53C(v50, v51);
LABEL_144:
        v33 = 2;
        goto LABEL_145;
      }

      goto LABEL_120;
    }

LABEL_116:

    sub_1E139D53C(v50, v51);
    Strong = 0;
    v8 = 0;
    v4 = 0;
    v33 = 0;
    goto LABEL_145;
  }

  v26 = *(v25 + OBJC_IVAR____TtC11AppStoreKit16OfferStateAction_defaultAction);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_1E139D53C(v50, v51);
    v4 = 0;
    goto LABEL_63;
  }

  v4 = swift_getObjectType();
LABEL_62:

  sub_1E139D53C(v50, v51);
LABEL_63:
  v33 = 2;
  v8 = v26;
LABEL_145:
  *a1 = v8;
  *(a1 + 8) = Strong;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = v33;
}
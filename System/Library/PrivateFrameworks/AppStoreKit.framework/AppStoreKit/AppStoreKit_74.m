unint64_t sub_1E1A384B8()
{
  result = qword_1EE1E0270;
  if (!qword_1EE1E0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0270);
  }

  return result;
}

unint64_t sub_1E1A3850C()
{
  result = qword_1ECEBCEA8;
  if (!qword_1ECEBCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCEA8);
  }

  return result;
}

uint64_t type metadata accessor for PerformanceTestCase()
{
  result = qword_1ECEBCEB8;
  if (!qword_1ECEBCEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PerformanceTestCase.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PerformanceTestCase.pushToURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PerformanceTestCase() + 32);

  return sub_1E1307FE8(v3, a1);
}

uint64_t PerformanceTestCase.searchTerm.getter()
{
  v1 = *(v0 + *(type metadata accessor for PerformanceTestCase() + 44));

  return v1;
}

unint64_t sub_1E1A386F0()
{
  result = qword_1ECEBCEB0;
  if (!qword_1ECEBCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCEB0);
  }

  return result;
}

void sub_1E1A3877C()
{
  sub_1E130072C();
  if (v0 <= 0x3F)
  {
    sub_1E14282AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t AppStoreDeepLink.init(userActivity:refApp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a2;
  v82 = a3;
  v80 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74 - v11;
  v13 = sub_1E1AEFCCC();
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  v21 = type metadata accessor for AppStoreDeepLink();
  v79 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  v25 = [a1 activityType];
  v26 = sub_1E1AF5DFC();
  v28 = v27;

  if (sub_1E1AF5DFC() == v26 && v29 == v28)
  {
  }

  else
  {
    v30 = sub_1E1AF74AC();

    if ((v30 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v31 = [v83 webpageURL];
  if (v31)
  {
    v32 = v31;
    sub_1E1AEFC5C();

    v33 = v78;
    (*(v78 + 32))(v20, v17, v13);
    v76 = *(v33 + 16);
    (v76)(v24, v20, v13);
    v34 = sub_1E1AEFBDC();
    v35 = &v24[*(v21 + 20)];
    *v35 = v34;
    v35[1] = v36;
    v37 = v82;
    if (!v82)
    {
      v38 = [v83 _sourceApplication];
      if (v38)
      {
        v39 = v38;
        v81 = sub_1E1AF5DFC();
        v37 = v40;
      }

      else
      {
        v81 = 0;
        v37 = 0;
      }
    }

    v44 = &v24[*(v21 + 24)];
    *v44 = v81;
    v44[1] = v37;

    v45 = [v83 referrerURL];
    v82 = v37;
    v74 = v20;
    if (v45)
    {
      v46 = v45;
      sub_1E1AEFC5C();

      v47 = 0;
    }

    else
    {
      v47 = 1;
    }

    v48 = v76;
    v76 = v21;
    v49 = *(v33 + 56);
    v49(v9, v47, 1, v13);
    sub_1E13E23F8(v9, v12);
    if ((*(v33 + 48))(v12, 1, v13))
    {
      sub_1E13ECBA0(v12);
      v50 = 0;
      v51 = v48;
      v52 = 0;
    }

    else
    {
      v53 = v75;
      v48(v75, v12, v13);
      sub_1E13ECBA0(v12);
      v51 = v48;
      v50 = sub_1E1AEFBDC();
      v52 = v54;
      (*(v33 + 8))(v53, v13);
    }

    v55 = &v24[*(v76 + 28)];
    v75 = v50;
    *v55 = v50;
    v55[1] = v52;
    v56 = v77;
    v51(v77, v24, v13);
    v49(v56, 0, 1, v13);

    v57 = v83;
    v58 = [v83 _originatingProcess];
    v59 = [v57 _sourceApplication];
    if (v59)
    {
      v60 = v59;
      v61 = sub_1E1AF5DFC();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    v64 = v77;
    v65 = v81;
    v66 = v82;
    sub_1E194D3FC(v77, v58, v61, v63, &v84);

    sub_1E13ECBA0(v64);
    (*(v78 + 8))(v74, v13);
    v67 = v84;
    v68 = v85;
    v69 = v75;
    v70 = v76;
    v71 = &v24[*(v76 + 32)];
    *v71 = v84;
    v71[8] = v68;
    v72 = &v24[*(v70 + 36)];
    *v72 = v65;
    *(v72 + 1) = v66;
    *(v72 + 2) = v69;
    *(v72 + 3) = v52;
    *(v72 + 4) = v67;
    v72[40] = v68;
    v73 = v80;
    sub_1E14282FC(v24, v80);
    (*(v79 + 56))(v73, 0, 1, v70);
    return sub_1E13E23E4(v67, v68);
  }

LABEL_9:

  v41 = v80;
  v42 = *(v79 + 56);

  return v42(v41, 1, 1, v21);
}

uint64_t sub_1E1A38EAC(uint64_t a1)
{
  v2 = sub_1E1AF523C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v6 = type metadata accessor for Restrictions();
  v42 = v45;
  v44 = a1;
  v41 = v6;
  sub_1E1AF55EC();
  v43 = v45;
  v7 = type metadata accessor for AppStateFieldsProvider();
  v46 = v7;
  v47 = sub_1E1A39E24(qword_1EE1F8F48, type metadata accessor for AppStateFieldsProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v9 = *(v7 + 20);
  v10 = *MEMORY[0x1E69AB4D8];
  v11 = sub_1E1AF524C();
  v12 = *(*(v11 - 8) + 104);
  v12(boxed_opaque_existential_0 + v9, v10, v11);
  v13 = v42;
  *boxed_opaque_existential_0 = v42;
  v14 = qword_1EE1E3680;
  *&v42 = v13;
  swift_unknownObjectRetain();
  if (v14 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E3688);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for ImpressionsFieldsProvider(0);
  v47 = sub_1E1A39E24(qword_1EE1EAF50, type metadata accessor for ImpressionsFieldsProvider);
  v15 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v15, v10, v11);
  if (qword_1EE1E3808 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E3810);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for FastImpressionsFieldsProvider(0);
  v47 = sub_1E1A39E24(&qword_1EE1E8CF8, type metadata accessor for FastImpressionsFieldsProvider);
  v16 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v16, v10, v11);
  if (qword_1EE1E3780 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E3788);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for SnapshotImpressionsFieldsProvider(0);
  v47 = sub_1E1A39E24(qword_1EE1E7670, type metadata accessor for SnapshotImpressionsFieldsProvider);
  v17 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v17, v10, v11);
  sub_1E1AF520C();
  sub_1E1AF4EEC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for CrossfireReferralFieldsProvider(0);
  v47 = sub_1E1A39E24(qword_1EE1E7F58, type metadata accessor for CrossfireReferralFieldsProvider);
  v18 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v18, v10, v11);
  if (qword_1EE1E3708 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E3710);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for CrossfireReferralCandidateFieldsProvider(0);
  v47 = sub_1E1A39E24(qword_1EE1E6758, type metadata accessor for CrossfireReferralCandidateFieldsProvider);
  v19 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v19, v10, v11);
  v20 = v41;
  if (qword_1EE1E36A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E36A8);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for RefURLFieldsProvider();
  v47 = sub_1E1A39E24(&qword_1EE1ED6A0, type metadata accessor for RefURLFieldsProvider);
  v21 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v22 = *MEMORY[0x1E69AB4E0];
  v12(v21, v22, v11);
  if (qword_1EE1E37C8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E37D0);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for PreloadingFieldsProvider();
  v47 = sub_1E1A39E24(qword_1EE1EB710, type metadata accessor for PreloadingFieldsProvider);
  v23 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v23, v22, v11);
  if (qword_1EE1E3828 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E3830);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for SearchAdRotationFieldsProvider();
  v47 = sub_1E1A39E24(qword_1EE1E8068, type metadata accessor for SearchAdRotationFieldsProvider);
  v24 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v24, v10, v11);
  if (qword_1EE1E37A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E37A8);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for SearchGhostHintFieldsProvider();
  v47 = sub_1E1A39E24(qword_1EE1E8540, type metadata accessor for SearchGhostHintFieldsProvider);
  v25 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v25, v10, v11);
  if (qword_1EE1E3758 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E3760);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for GuidedSearchFieldsProvider();
  v47 = sub_1E1A39E24(qword_1EE1EA8E0, type metadata accessor for GuidedSearchFieldsProvider);
  v26 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v26, v10, v11);
  if (qword_1EE1E37E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E37F0);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for ImpressionsAppendixFieldsProvider();
  v47 = sub_1E1A39E24(&qword_1EE1E7830, type metadata accessor for ImpressionsAppendixFieldsProvider);
  v27 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v27, v10, v11);
  if (qword_1EE1E36C0 != -1)
  {
    swift_once();
  }

  HIDWORD(v40) = v22;
  __swift_project_value_buffer(v2, qword_1EE1E36C8);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for AdvertDeviceWindowFieldsProvider();
  v47 = sub_1E1A39E24(qword_1EE1E7C38, type metadata accessor for AdvertDeviceWindowFieldsProvider);
  v28 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v28, v10, v11);
  if (qword_1EE1E36E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1E36F0);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = &type metadata for UserContentRestrictionProvider;
  v47 = sub_1E1A39D7C();
  v29 = swift_allocObject();
  *&v45 = v29;
  v29[5] = v20;
  v29[6] = &protocol witness table for Restrictions;
  v30 = v43;
  v29[2] = v43;
  v31 = qword_1EE1D2850;

  if (v31 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1D2858);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = &type metadata for ContentRestrictionReasonsProvider;
  v47 = sub_1E1A39DD0();
  v32 = swift_allocObject();
  *&v45 = v32;
  v32[5] = v20;
  v32[6] = &protocol witness table for Restrictions;
  v32[2] = v30;
  v33 = qword_1EE1D2828;

  if (v33 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EE1D2830);
  sub_1E1AF4EEC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for MetricsActivityFieldsProvider(0);
  v47 = sub_1E1A39E24(&unk_1EE1E88F8, type metadata accessor for MetricsActivityFieldsProvider);
  v34 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v34, v10, v11);
  v35 = HIDWORD(v40);
  if (qword_1EE1E38D0 != -1)
  {
    swift_once();
  }

  v36 = sub_1E1AF51EC();
  __swift_project_value_buffer(v36, qword_1EE1E38D8);
  sub_1E1AF4EFC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for CanaryFieldsProvider();
  v47 = sub_1E1A39E24(qword_1EE1EDB70, type metadata accessor for CanaryFieldsProvider);
  v37 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v37, v10, v11);
  if (qword_1EE1E3848 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v36, qword_1EE1E3850);
  sub_1E1AF4EFC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  v46 = type metadata accessor for AMSMetricsIdentifierFieldsProvider();
  v47 = sub_1E1A39E24(&unk_1EE1E75F0, type metadata accessor for AMSMetricsIdentifierFieldsProvider);
  v38 = __swift_allocate_boxed_opaque_existential_0(&v45);
  v12(v38, v35, v11);
  if (qword_1EE1E38F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v36, qword_1EE1E3900);
  sub_1E1AF4EFC();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  type metadata accessor for MetricsIdStore();
  sub_1E1AF416C();
  v46 = &type metadata for MetricsUserIdFieldsProvider;
  v47 = sub_1E1A39E6C();
  if (qword_1EE1E38A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v36, qword_1EE1E38B0);
  sub_1E1AF4EFC();

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v45);
}

unint64_t sub_1E1A39D7C()
{
  result = qword_1EE1D5FE8;
  if (!qword_1EE1D5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D5FE8);
  }

  return result;
}

unint64_t sub_1E1A39DD0()
{
  result = qword_1EE1D5DA8;
  if (!qword_1EE1D5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D5DA8);
  }

  return result;
}

uint64_t sub_1E1A39E24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E1A39E6C()
{
  result = qword_1EE1EA1F8;
  if (!qword_1EE1EA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EA1F8);
  }

  return result;
}

id HideCriteria.isHidden.getter()
{
  v1 = *v0;
  v2 = objc_opt_self();

  v3 = sub_1E1AF620C();

  v4 = [v2 isCapableOfAction:v1 capabilities:v3];

  return v4;
}

uint64_t sub_1E1A39F64()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1A39FD8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E1A3A02C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  *a1 = v2 != 0;
  return result;
}

uint64_t HideCriteria.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v33 = a3;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = a1;
  sub_1E1AF381C();
  sub_1E1A3A538();
  sub_1E1AF36AC();
  if (v3)
  {
    v19 = sub_1E1AF39DC();
    (*(*(v19 - 8) + 8))(v34, v19);
    v20 = *(v9 + 8);
    v20(a1, v8);
    return (v20)(v17, v8);
  }

  else
  {
    v22 = v17;
    v23 = *(v9 + 8);
    v23(v22, v8);
    sub_1E1AF381C();
    sub_1E1A3A58C();
    sub_1E1AF36AC();
    v23(v14, v8);
    v35 = v36;
    sub_1E1AF381C();
    sub_1E1AF374C();
    v24 = v7;
    v23(v11, v8);
    v25 = sub_1E1AF5A6C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v7, 1, v25) == 1)
    {
      v27 = sub_1E1AF39DC();
      (*(*(v27 - 8) + 8))(v34, v27);
      v23(v18, v8);
      result = sub_1E14352B8(v7);
      v28 = 0;
    }

    else
    {
      v29 = v23;
      v30 = v24;
      v28 = sub_1E1AF59FC();
      v31 = sub_1E1AF39DC();
      (*(*(v31 - 8) + 8))(v34, v31);
      v29(v18, v8);
      result = (*(v26 + 8))(v30, v25);
    }

    v32 = v33;
    *v33 = v35;
    *(v32 + 1) = v28;
  }

  return result;
}

unint64_t sub_1E1A3A538()
{
  result = qword_1ECEBCEC8;
  if (!qword_1ECEBCEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCEC8);
  }

  return result;
}

unint64_t sub_1E1A3A58C()
{
  result = qword_1ECEBCED0;
  if (!qword_1ECEBCED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCED0);
  }

  return result;
}

AppStoreKit::AppAction_optional __swiftcall AppAction.init(rawValue:)(Swift::String rawValue)
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

uint64_t AppAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6C6174736E69;
  v3 = 0x65726F74736572;
  v4 = 0x68636E75616CLL;
  if (v1 != 3)
  {
    v4 = 0x7369747265766461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657461647075;
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

unint64_t sub_1E1A3A6FC()
{
  result = qword_1ECEBCED8;
  if (!qword_1ECEBCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCED8);
  }

  return result;
}

uint64_t sub_1E1A3A750()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1A3A830()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1A3A8FC()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1A3A9E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C6C6174736E69;
  v5 = 0xE700000000000000;
  v6 = 0x65726F74736572;
  v7 = 0xE600000000000000;
  v8 = 0x68636E75616CLL;
  if (v2 != 3)
  {
    v8 = 0x7369747265766461;
    v7 = 0xE900000000000065;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x657461647075;
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

uint64_t sub_1E1A3AA80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1E1A3AADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1E1A3AB60()
{
  result = qword_1ECEBCEE0;
  if (!qword_1ECEBCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCEE0);
  }

  return result;
}

__n128 OffsetGridLayout.__allocating_init(metrics:views:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v4 + 48) = result;
  *(v4 + 64) = v7;
  *(v4 + 80) = a2;
  return result;
}

uint64_t OffsetGridLayout.init(metrics:views:)(_OWORD *a1, uint64_t a2)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  v4 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v4;
  *(v2 + 80) = a2;
  return v2;
}

__n128 OffsetGridLayout.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t OffsetGridLayout.Metrics.init(itemSize:interItemSpacing:lineSpacing:numberOfRows:originOffset:interRowHorizontalOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  return result;
}

double static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  result = (a3 + a5) * 0.5;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = result;
  return result;
}

uint64_t static OffsetGridLayout.numberOfViewsNeeded(toFill:with:)(_OWORD *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  v7 = *(sub_1E1A3AF84(v9, a2, a3, a4, a5) + 2);

  return v7;
}

uint64_t sub_1E1A3ACF4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v6 = *(v4 + 32);
  v17 = *(v4 + 16);
  v18 = v6;
  v7 = *(v4 + 64);
  v19 = *(v4 + 48);
  v20 = v7;
  result = sub_1E1A3AF84(&v17, a1, a2, a3, a4);
  v9 = result;
  v10 = *(v4 + 80);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    v14 = result + 56;
    while (v12 < *(v10 + 16))
    {
      result = sub_1E1300B24(v13, v16);
      v15 = *(v9 + 16);
      if (v12 == v15)
      {

        __swift_destroy_boxed_opaque_existential_1(v16);
        return sub_1E1AF106C();
      }

      if (v12 >= v15)
      {
        goto LABEL_11;
      }

      ++v12;
      sub_1E1361B28(v16, &v17);
      __swift_project_boxed_opaque_existential_1Tm(&v17, *(&v18 + 1));
      sub_1E1AF116C();
      result = __swift_destroy_boxed_opaque_existential_1(&v17);
      v13 += 40;
      v14 += 32;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:

    return sub_1E1AF106C();
  }

  return result;
}

uint64_t OffsetGridLayout.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A3AEE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  WitnessTable = swift_getWitnessTable();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x1EEE18170](a1, a2, WitnessTable, a3, v11, v12);
}

__n128 sub_1E1A3AF6C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *a1 = *(*v1 + 16);
  *(a1 + 16) = v3;
  result = *(v2 + 48);
  v5 = *(v2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

char *sub_1E1A3AF84(char *result, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = *(result + 4);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v5)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v9 = 0;
    v10 = *result;
    v11 = *(result + 1);
    v18 = v11 + *(result + 3);
    v12 = *result + *(result + 2);
    v19 = *(result + 5) - v12 * trunc(*(result + 5) / v12);
    v20 = *(result + 7);
    v13 = MEMORY[0x1E69E7CC0];
    do
    {
      v14 = v19 + v20 * v9 - v12 * ceil((v19 + v20 * v9) / v12);
      v22.origin.x = a2;
      v22.origin.y = a3;
      v22.size.width = a4;
      v22.size.height = a5;
      if (v14 < CGRectGetMaxX(v22))
      {
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1E172D670(0, *(v13 + 2) + 1, 1, v13);
          }

          v16 = *(v13 + 2);
          v15 = *(v13 + 3);
          if (v16 >= v15 >> 1)
          {
            v13 = sub_1E172D670((v15 > 1), v16 + 1, 1, v13);
          }

          *(v13 + 2) = v16 + 1;
          v17 = &v13[32 * v16];
          v17[4] = v14;
          v17[5] = v18 * v9;
          v17[6] = v10;
          v17[7] = v11;
          v14 = v12 + v14;
          v23.origin.x = a2;
          v23.origin.y = a3;
          v23.size.width = a4;
          v23.size.height = a5;
        }

        while (v14 < CGRectGetMaxX(v23));
      }

      ++v9;
    }

    while (v9 != v5);
    return v13;
  }

  return result;
}

uint64_t _s11AppStoreKit16OffsetGridLayoutC21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_1E1AF162C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF165C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v13 = a1[3];
  v14 = a1[4];
  (*(v4 + 104))(v6, *MEMORY[0x1E69AB970], v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7DE0];
  v17 = MEMORY[0x1E69AB858];
  *(v15 + 16) = xmmword_1E1B02CD0;
  v23 = v16;
  v24 = v17;
  v22 = v12;
  v18 = sub_1E1AF1A1C();
  v19 = MEMORY[0x1E69ABA90];
  *(v15 + 56) = v18;
  *(v15 + 64) = v19;
  __swift_allocate_boxed_opaque_existential_0((v15 + 32));
  result = sub_1E1AF1A2C();
  v23 = v16;
  v24 = v17;
  v22 = v13;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    *(v15 + 96) = v18;
    *(v15 + 104) = v19;
    __swift_allocate_boxed_opaque_existential_0((v15 + 72));
    sub_1E1AF1A2C();
    sub_1E1AF163C();
    sub_1E1AF161C();
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

unint64_t sub_1E1A3B3C8()
{
  result = qword_1EE1DF178;
  if (!qword_1EE1DF178)
  {
    type metadata accessor for OffsetGridLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF178);
  }

  return result;
}

uint64_t sub_1E1A3B4A0()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEBCEE8);
  __swift_project_value_buffer(v4, qword_1ECEBCEE8);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E1A3B5F4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1E1A3B6D8()
{
  sub_1E1A3B5F4();

  return swift_deallocClassInstance();
}

id sub_1E1A3B730()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = sub_1E1A3B788();
    v4 = *(v0 + 152);
    *(v0 + 152) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1E1A3B788()
{
  v0 = sub_1E1AEFF8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v7 setNumberStyle_];
  [v7 setFormatterBehavior_];
  sub_1E1AEFF4C();
  Locale.normalizedLocale.getter(v3);
  v8 = *(v1 + 8);
  v8(v6, v0);
  v9 = sub_1E1AEFF2C();
  v8(v3, v0);
  [v7 setLocale_];

  [v7 setMinimumFractionDigits_];
  return v7;
}

uint64_t sub_1E1A3B908(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF320C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF324C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = sub_1E14F9DB8(*(v2 + 160), a1);
  if ((result & 1) == 0)
  {
    sub_1E13006E4(0, &qword_1EE1E3430);
    v13 = sub_1E1AF68EC();
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1E1A3F784;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_11_2;
    v15 = _Block_copy(aBlock);

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E139D5D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v11, v7, v15);
    _Block_release(v15);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_1E1A3BBC8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1E1AF5BCC();
  }

  return result;
}

uint64_t sub_1E1A3BC34(uint64_t a1)
{
  v2 = sub_1E1AF320C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF324C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v10 = sub_1E1AF68EC();
  aBlock[4] = sub_1E1A3F590;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_27_1;
  v11 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v9, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1E1A3BEB4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 136) = 1;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E1A3BF74(0, 0, 1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1A3C314();
  }

  return result;
}

void sub_1E1A3BF74(int a1, int a2, int a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  if (*(v4 + 136) == 1)
  {
    v21 = a3;
    v22 = a2;
    if (qword_1ECEB16F0 != -1)
    {
      swift_once();
    }

    v20 = sub_1E1AF591C();
    v18 = __swift_project_value_buffer(v20, qword_1ECEBCEE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B09FF0;
    sub_1E1AF382C();
    v11 = MEMORY[0x1E69E6370];
    v24 = MEMORY[0x1E69E6370];
    v19 = a1 & 1;
    v23[0] = a1 & 1;
    sub_1E1AF38BC();
    sub_1E1308058(v23, &qword_1ECEB2DF0);
    v16 = a1;
    sub_1E1AF382C();
    v24 = v11;
    v12 = v22;
    v17 = v22 & 1;
    v23[0] = v22 & 1;
    sub_1E1AF38BC();
    sub_1E1308058(v23, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    v24 = v11;
    v23[0] = v21 & 1;
    sub_1E1AF38BC();
    sub_1E1308058(v23, &qword_1ECEB2DF0);
    sub_1E1AF382C();
    sub_1E1AF549C();

    *(v4 + 96) = 1;
    if (v16 & 1) != 0 || (v12)
    {
      sub_1E1A3C6B8();
    }

    v13 = sub_1E1AF649C();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v4;
    *(v14 + 40) = v19;
    *(v14 + 41) = v17;

    sub_1E154AF74(0, 0, v10, &unk_1E1B4DB68, v14);
  }
}

uint64_t sub_1E1A3C314()
{
  v23 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v22 = &v22 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v22 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCF00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  *v6 = 1;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8640], v3, v12);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E1AF64EC();

  v15 = sub_1E1AF649C();
  v16 = v22;
  (*(*(v15 - 8) + 56))(v22, 1, 1, v15);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v14, v7);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v8 + 32))(v20 + v18, v10, v7);
  *(v20 + v19) = v17;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  sub_1E154AF74(0, 0, v16, &unk_1E1B4DB98, v20);

  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_1E1A3C6B8()
{
  v1 = v0;
  v46 = sub_1E1AF320C();
  v2 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1E1AF324C();
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v1 + 160);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v40 = (v2 + 8);
  v41 = v50;
  v39 = (v4 + 8);
  v48 = v6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v43 = v1;
  while (v10)
  {
LABEL_9:
    v14 = *(*(v48 + 48) + (__clz(__rbit64(v10)) | (v12 << 6)));
    v15 = *(v1 + 160);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v15;
    v18 = sub_1E130A768(v14);
    v19 = *(v15 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_24;
    }

    v22 = v17;
    if (*(v15 + 24) >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = aBlock[0];
        if (v17)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1E1417624();
        v25 = aBlock[0];
        if (v22)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_1E168B790(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_1E130A768(v14);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_26;
      }

      v18 = v23;
      v25 = aBlock[0];
      if (v22)
      {
LABEL_16:
        *(v25[7] + v18) = 0;
        goto LABEL_20;
      }
    }

    v25[(v18 >> 6) + 8] |= 1 << v18;
    *(v25[6] + v18) = v14;
    *(v25[7] + v18) = 0;
    v26 = v25[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_25;
    }

    v25[2] = v28;
LABEL_20:
    v10 &= v10 - 1;
    v29 = *(v1 + 160);
    *(v1 + 160) = v25;
    v30 = sub_1E14F9DB8(v25, v29);

    if ((v30 & 1) == 0)
    {
      sub_1E13006E4(0, &qword_1EE1E3430);
      v47 = sub_1E1AF68EC();
      v31 = swift_allocObject();
      swift_weakInit();
      v50[2] = sub_1E1A3F2EC;
      v50[3] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v50[0] = sub_1E1302D64;
      v50[1] = &block_descriptor_102;
      v32 = _Block_copy(aBlock);

      v33 = v42;
      sub_1E1AF322C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E139D5D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FE650();
      v34 = v45;
      v35 = v46;
      sub_1E1AF6EEC();
      v36 = v47;
      MEMORY[0x1E68FF640](0, v33, v34, v32);
      _Block_release(v32);

      v37 = v34;
      v1 = v43;
      (*v40)(v37, v35);
      (*v39)(v33, v44);
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E1A3CB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 65) = a6;
  *(v6 + 64) = a5;
  *(v6 + 40) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E1A3CB8C, 0, 0);
}

uint64_t sub_1E1A3CB8C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A3CC34;
  v2 = *(v0 + 65);
  v3 = *(v0 + 64);

  return AppUpdatesDataSource.getUpdatesLockups(fromServer:forceReloadFromServer:)(v0 + 16, v3, v2);
}

uint64_t sub_1E1A3CC34()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1E1A3CDE4;
  }

  else
  {
    v2 = sub_1E1A3CD48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1A3CD48()
{
  v7 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  *(v0[5] + 96) = 0;
  v6[0] = v1;
  v6[1] = v2;
  v6[2] = v3;
  sub_1E1A3CE58(v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E1A3CDE4()
{
  v1 = v0[7];
  *(v0[5] + 96) = 0;
  sub_1E1AF5BCC();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E1A3CE58(uint64_t *a1)
{
  v2 = sub_1E1AF320C();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (qword_1ECEB16F0 != -1)
  {
    swift_once();
  }

  v9 = sub_1E1AF591C();
  __swift_project_value_buffer(v9, qword_1ECEBCEE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  aBlock = v7;
  v26 = v6;
  v27 = v8;
  v28 = &type metadata for AppUpdatesLockups;

  sub_1E1AF38BC();
  sub_1E1308058(&aBlock, &qword_1ECEB2DF0);
  sub_1E1AF548C();

  sub_1E13006E4(0, &qword_1EE1E3430);
  v10 = sub_1E1AF68EC();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v7;
  v12[4] = v6;
  v12[5] = v8;
  v29 = sub_1E1A3F2F4;
  v30 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1E1302D64;
  v28 = &block_descriptor_19_2;
  v13 = _Block_copy(&aBlock);

  v14 = v19;
  sub_1E1AF322C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E13FE650();
  v15 = v22;
  v16 = v24;
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v14, v15, v13);
  _Block_release(v13);

  (*(v23 + 8))(v15, v16);
  return (*(v20 + 8))(v14, v21);
}

void *sub_1E1A3D2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    result[6] = a2;
    result[7] = a3;
    result[8] = a4;

    v8[9] = a2;

    v8[10] = a3;

    v8[11] = a4;

    sub_1E1A3D408();
    v9 = v8[9];
    if (v9 >> 62)
    {
      v10 = sub_1E1AF71CC();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1E1A3F454(v10);
    sub_1E1AF5BCC();
    sub_1E1A3DB70();
  }

  return result;
}

void sub_1E1A3D408()
{
  *&v49 = *(v0 + 72);

  sub_1E1728330(v1);
  v2 = v49;
  if (v49 >> 62)
  {
LABEL_22:
    v3 = sub_1E1AF71CC();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = *(v43 + 128);
      ObjectType = swift_getObjectType();
      v38 = v4;
      v33 = 0;
      v5 = 0;
      v36 = *(v4 + 56);
      v40 = v2 & 0xC000000000000001;
      v34 = v2 & 0xFFFFFFFFFFFFFF8;
      v39 = v2;
      v35 = v3;
      while (1)
      {
        if (v40)
        {
          v6 = MEMORY[0x1E68FFD80](v5, v2);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v5 >= *(v34 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v6 = *(v2 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:

            v33 = 1;
            goto LABEL_24;
          }
        }

        v42 = v7;
        v8 = *(v6 + 24);
        *&v45 = *(v6 + 16);
        *(&v45 + 1) = v8;

        v36(&v45, ObjectType, v38);
        v10 = v9;

        v11 = swift_getObjectType();
        (*(v10 + 80))(v43, v11, v10);
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = *(v10 + 72);

        v13(v43, sub_1E1A3F580, v12, v11, v10);

        (*(v10 + 16))(&v45, v11, v10);
        v49 = v45;
        v50 = v46;
        v51 = v47;
        v52 = v48;
        if ((v48 >> 60) <= 6 && ((1 << (v48 >> 60)) & 0x75) != 0)
        {

          sub_1E139CEA8(&v49);
          swift_unknownObjectRelease();
          if (v42 == v35)
          {

            goto LABEL_24;
          }

          ++v5;
          v2 = v39;
        }

        else
        {
          if (qword_1ECEB16F0 != -1)
          {
            swift_once();
          }

          v14 = sub_1E1AF591C();
          __swift_project_value_buffer(v14, qword_1ECEBCEE8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = xmmword_1E1B05090;
          sub_1E1AF382C();
          v15 = *(v6 + 16);
          v16 = *(v6 + 24);

          *(&v46 + 1) = &type metadata for AdamId;
          *&v45 = v15;
          *(&v45 + 1) = v16;
          sub_1E1AF383C();
          sub_1E1308058(&v45, &qword_1ECEB2DF0);
          sub_1E1AF382C();
          v44[3] = &type metadata for LegacyAppState;
          v17 = swift_allocObject();
          v44[0] = v17;
          v18 = v50;
          v17[1] = v49;
          v17[2] = v18;
          v19 = v52;
          v17[3] = v51;
          v17[4] = v19;
          sub_1E141CF5C(&v49, &v45);
          sub_1E1AF38BC();
          sub_1E1308058(v44, &qword_1ECEB2DF0);
          sub_1E1AF549C();

          sub_1E139CEA8(&v49);

          swift_unknownObjectRelease();
          v5 = v42;
          if (v42 == v35)
          {
            goto LABEL_20;
          }

          v33 = 1;
          v2 = v39;
        }
      }
    }
  }

  v33 = 0;
LABEL_24:
  v20 = *(v43 + 88);
  if (v20 >> 62)
  {
    v21 = sub_1E1AF71CC();
    if (!v21)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_33;
    }
  }

  if (v21 < 1)
  {
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_35;
  }

  v22 = *(v43 + 128);
  v41 = swift_getObjectType();
  v23 = *(v22 + 56);
  v24 = v20 & 0xC000000000000001;

  v25 = 0;
  v26 = v20;
  do
  {
    if (v24)
    {
      v27 = MEMORY[0x1E68FFD80](v25, v20);
    }

    else
    {
      v27 = *(v20 + 8 * v25 + 32);
    }

    ++v25;
    v28 = *(v27 + 24);
    *&v49 = *(v27 + 16);
    *(&v49 + 1) = v28;

    v23(&v49, v41, v22);
    v30 = v29;

    v31 = swift_getObjectType();
    (*(v30 + 80))(v43, v31, v30);

    swift_unknownObjectRelease();
    v20 = v26;
  }

  while (v21 != v25);

LABEL_33:
  if ((v33 & 1) == 0)
  {
    return;
  }

  if (qword_1ECEB16F0 != -1)
  {
    goto LABEL_40;
  }

LABEL_35:
  v32 = sub_1E1AF591C();
  __swift_project_value_buffer(v32, qword_1ECEBCEE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF549C();

  swift_getObjectType();
  AppStateController.refreshDataSources()();
}

uint64_t sub_1E1A3DB70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CD0;
  *(inited + 32) = 0;
  *(inited + 40) = *(v0 + 72);
  *(inited + 48) = 1;
  *(inited + 56) = *(v0 + 80);
  v2 = sub_1E15A00C0(inited);
  swift_setDeallocating();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F40);
  swift_arrayDestroy();
  v31 = v2;
  v3 = v2 + 8;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2[8];
  v35 = v0;
  result = swift_beginAccess();
  v8 = 0;
  v9 = (v4 + 63) >> 6;
  v29 = v9;
  v30 = v3;
  while (1)
  {
    if (!v6)
    {
      do
      {
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_29;
        }

        if (v14 >= v9)
        {
        }

        v6 = v3[v14];
        ++v8;
      }

      while (!v6);
      v8 = v14;
    }

    v32 = v8;
    v33 = v6;
    v15 = __clz(__rbit64(v6)) | (v8 << 6);
    v16 = *(v31[7] + 8 * v15);
    v34 = *(v31[6] + v15);
    v17 = v16 >> 62 ? sub_1E1AF71CC() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v17)
    {
      break;
    }

LABEL_4:

    v10 = 0;
LABEL_5:
    v6 = (v33 - 1) & v33;
    v11 = *(v35 + 160);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38[0] = v11;
    sub_1E1599DA8(v10, v34, isUniquelyReferenced_nonNull_native);
    v13 = *(v35 + 160);
    *(v35 + 160) = *&v38[0];
    sub_1E1A3B908(v13);

    v9 = v29;
    v3 = v30;
    v8 = v32;
  }

  v18 = 0;
  while ((v16 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1E68FFD80](v18, v16);
    v19 = result;
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_27;
    }

LABEL_18:
    v21 = *(v35 + 128);
    ObjectType = swift_getObjectType();
    v23 = *(v19 + 24);
    *&v36[0] = *(v19 + 16);
    *(&v36[0] + 1) = v23;
    v24 = *(v21 + 56);

    v24(v36, ObjectType, v21);
    v26 = v25;

    v27 = swift_getObjectType();
    (*(v26 + 16))(v36, v27, v26);

    swift_unknownObjectRelease();
    v38[0] = v36[0];
    v38[1] = v36[1];
    v38[2] = v36[2];
    v38[3] = v37;
    v28 = ((v37 >> 60) - 2) & 0xFFFFFFFD;
    result = sub_1E139CEA8(v38);
    if (!v28)
    {

      v10 = 1;
      goto LABEL_5;
    }

    ++v18;
    if (v20 == v17)
    {
      goto LABEL_4;
    }
  }

  if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  v19 = *(v16 + 8 * v18 + 32);

  v20 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_18;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E1A3DEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCF08);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E1A3DF90, 0, 0);
}

uint64_t sub_1E1A3DF90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCF00);
  sub_1E1AF64CC();
  swift_beginAccess();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A3E08C;
  v2 = *(v0 + 176);

  return MEMORY[0x1EEE6D9C8](v0 + 64, 0, 0, v2);
}

uint64_t sub_1E1A3E08C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E1A3E188, 0, 0);
}

uint64_t sub_1E1A3E188()
{
  v1 = v0[8];
  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    Strong = swift_weakLoadStrong();
    if (Strong && (v6 = Strong[6], v5 = Strong[7], v7 = Strong[8], , , , , v6))
    {
      v0[14] = v6;
      v0[15] = v5;
      v0[16] = v7;
      v0[17] = v1;
      v0[18] = v3;
      v0[19] = v2;
      sub_1E1A3F72C(v1);
      sub_1E1A3F72C(v6);
      v13 = _s11AppStoreKit0A14UpdatesLockupsV2eeoiySbAC_ACtFZ_0(v0 + 14, v0 + 17);

      sub_1E1A3F6E0(v6);
      if (v13)
      {
        sub_1E1A3F6E0(v1);
        if (qword_1ECEB16F0 != -1)
        {
          swift_once();
        }

        v8 = sub_1E1AF591C();
        __swift_project_value_buffer(v8, qword_1ECEBCEE8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF382C();
        sub_1E1AF548C();

LABEL_15:
        v11 = swift_task_alloc();
        v0[25] = v11;
        *v11 = v0;
        v11[1] = sub_1E1A3E08C;
        v12 = v0[22];

        return MEMORY[0x1EEE6D9C8](v0 + 8, 0, 0, v12);
      }
    }

    else
    {

      sub_1E1A3F6E0(0);
      sub_1E1A3F6E0(v1);
    }

    if (swift_weakLoadStrong())
    {
      v0[11] = v1;
      v0[12] = v3;
      v0[13] = v2;
      sub_1E1A3CE58(v0 + 11);
    }

    sub_1E1A3F6E0(v1);
    goto LABEL_15;
  }

  (*(v0[23] + 8))(v0[24], v0[22]);

  v9 = v0[1];

  return v9();
}

BOOL sub_1E1A3E538(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v2 = v1[10];
    }

    else
    {
      v2 = v1[11];
    }
  }

  else
  {
    v2 = v1[9];
  }

  if (v2 >> 62)
  {
    v3 = sub_1E1AF71CC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

uint64_t sub_1E1A3E59C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E1A3DB70();
  }

  return result;
}

uint64_t sub_1E1A3E5F4(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      return 0;
    }

    v2 = *(v1 + 80);
  }

  else
  {
    v2 = *(v1 + 72);
  }

  if (v2 >> 62)
  {
    if (sub_1E1AF71CC() < 1)
    {
      return 0;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return 0;
  }

  v3 = sub_1E1A3B730();
  sub_1E13006E4(0, &qword_1EE1E31F0);
  v4 = sub_1E1AF6CEC();
  v5 = [v3 stringFromNumber_];

  if (v5)
  {
    v6 = sub_1E1AF5DFC();

    return v6;
  }

  return 0;
}

uint64_t sub_1E1A3E6EC(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 160);
  if (*(v3 + 16) && (v4 = sub_1E130A768(v2), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + v4);
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

uint64_t sub_1E1A3E75C(_BYTE *a1)
{
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v55 - v6;
  v8 = sub_1E1AF3E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v55 - v13;
  v14 = *a1;
  if (!*a1)
  {
    v15 = 72;
LABEL_5:
    v16 = *(v64 + v15);
    swift_bridgeObjectRetain_n();
    if (!(v16 >> 62))
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  if (v14 == 1)
  {
    v15 = 80;
    goto LABEL_5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
LABEL_6:
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v17)
    {
      v55 = v3;
      v56 = v2;
      v58 = v11;
      v59 = v7;
      v60 = v9;
      v61 = v8;
      v62 = v14;
      v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v66 = v16 & 0xFFFFFFFFFFFFFF8;
      v67 = v19;
      goto LABEL_8;
    }

LABEL_33:
  }

LABEL_28:
  if (v16 < 0)
  {
    v42 = v16;
  }

  else
  {
    v42 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v67 = v42;
  v43 = sub_1E1AF71CC();

  if (!v43)
  {
    goto LABEL_33;
  }

  v66 = v16 & 0xFFFFFFFFFFFFFF8;
  v55 = v3;
  v56 = v2;
  v58 = v11;
  v59 = v7;
  v60 = v9;
  v61 = v8;
  v62 = v14;
  result = sub_1E1AF71CC();
  v67 = result;
LABEL_8:
  v20 = 0;
  v21 = v16;
  v22 = v16 & 0xC000000000000001;
  v65 = MEMORY[0x1E69E7CC0];
  while (v67 != v20)
  {
    if (v22)
    {
      result = MEMORY[0x1E68FFD80](v20, v21);
      v27 = result;
      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v20 >= *(v66 + 16))
      {
        goto LABEL_39;
      }

      v27 = *(v21 + 8 * v20 + 32);

      v28 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return result;
      }
    }

    v29 = v27[5];
    if (v29)
    {
      v23 = v27[3];
      v24 = v27[4];
      v25 = v27[2];

      v26 = v29;
    }

    else
    {
      v25 = 0;
      v23 = 0;
      v24 = 0;
      v26 = 0;
    }

    ++v20;
    if (v23)
    {
      v30 = v65;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E172E0D0(0, v30[2] + 1, 1, v30);
        v30 = result;
      }

      v32 = v30[2];
      v31 = v30[3];
      if (v32 >= v31 >> 1)
      {
        result = sub_1E172E0D0((v31 > 1), v32 + 1, 1, v30);
        v30 = result;
      }

      v30[2] = v32 + 1;
      v65 = v30;
      v33 = &v30[4 * v32];
      v33[4] = v25;
      v33[5] = v23;
      v33[6] = v24;
      v33[7] = v26;
      v20 = v28;
    }
  }

  v34 = v63;
  sub_1E1AF3DFC();
  type metadata accessor for UpdateAllAction();
  v35 = swift_allocObject();
  *(v35 + OBJC_IVAR____TtC11AppStoreKit15UpdateAllAction_ordering) = v65;
  memset(v76, 0, 40);
  v36 = v60;
  v37 = v58;
  v38 = v61;
  (*(v60 + 16))(v58, v34, v61);
  v39 = sub_1E1AF46DC();
  v40 = v59;
  (*(*(v39 - 8) + 56))(v59, 1, 1, v39);
  v41 = (v35 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v41 = 0u;
  v41[1] = 0u;
  sub_1E138853C(v76, &v70);
  if (*(&v71 + 1))
  {
    v73 = v70;
    v74 = v71;
    v75 = v72;
  }

  else
  {
    v44 = v57;
    sub_1E1AEFE9C();
    v45 = sub_1E1AEFE7C();
    v47 = v46;
    (*(v55 + 8))(v44, v56);
    v68 = v45;
    v69 = v47;
    sub_1E1AF6F6C();
    sub_1E1308058(&v70, &unk_1ECEB5670);
  }

  v48 = v62;
  sub_1E1308058(v76, &unk_1ECEB5670);
  (*(v36 + 8))(v63, v38);
  v49 = v35 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  v50 = v74;
  *v49 = v73;
  *(v49 + 16) = v50;
  *(v49 + 32) = v75;
  sub_1E134B7C8(v40, v35 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v35 + 16) = 0u;
  *(v35 + 32) = 0u;
  (*(v36 + 32))(v35 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v37, v38);
  v51 = v64;
  *&v76[0] = v35;
  memset(v76 + 8, 0, 32);

  sub_1E1AF5BCC();
  sub_1E1308058(v76, &qword_1ECEB24C8);
  swift_beginAccess();
  v52 = *(v51 + 160);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v73 = v52;
  sub_1E1599DA8(0, v48, isUniquelyReferenced_nonNull_native);
  v54 = *(v51 + 160);
  *(v51 + 160) = v73;
  sub_1E1A3B908(v54);
}

uint64_t sub_1E1A3EE78(uint64_t result, char a2)
{
  v2 = *(result + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_whatsNew);
  if (v2)
  {
    v3 = result;
    v4 = *(result + 16);
    v5 = *(result + 24);
    if (a2)
    {
      result = swift_beginAccess();
      if (*(v2 + 50) != 1)
      {
        return result;
      }

      swift_beginAccess();

      sub_1E18943C0(&v7, v4, v5);
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();

      sub_1E18943C0(&v6, v4, v5);
      swift_endAccess();

      swift_beginAccess();
    }

    *(v2 + 50) = 0;
    v6 = v3;
    sub_1E1AF5BCC();
  }

  return result;
}

uint64_t sub_1E1A3F04C()
{
  v1 = *(*v0 + 128);
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = *(v1 + 16);

  v4(sub_1E1A3F588, v3, ObjectType, v1);
}

uint64_t sub_1E1A3F150(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);

  v7 = sub_1E14AACA8(v5, v6, v4);

  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_whatsNew);
  if (v8)
  {
    swift_beginAccess();
    *(v8 + 50) = (v7 ^ 1) & 1;
  }

  return (v7 ^ 1) & 1;
}

uint64_t sub_1E1A3F220(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E130B5D8;

  return sub_1E1A3CB64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E1A3F300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v4 + 16) = sub_1E1AF5BEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *(v4 + 24) = sub_1E1AF5BEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F58);
  swift_allocObject();
  *(v4 + 32) = sub_1E1AF5BEC();
  swift_allocObject();
  v8 = sub_1E1AF5BEC();
  v9 = MEMORY[0x1E69E7CC0];
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  *(v4 + 56) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = v9;
  *(v4 + 80) = v9;
  *(v4 + 88) = v9;
  *(v4 + 96) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = MEMORY[0x1E69E7CD0];
  *(v4 + 152) = 0;
  *(v4 + 160) = sub_1E159FFE0(&unk_1F5C2DE58);
  type metadata accessor for AppUpdatesDataSource();
  sub_1E1AF416C();
  *(v4 + 104) = v11;
  *(v4 + 112) = a2;
  *(v4 + 120) = a3;
  *(v4 + 128) = a4;
  return v4;
}

void sub_1E1A3F454(uint64_t a1)
{
  sub_1E1AF44CC();
  swift_allocObject();
  sub_1E1AF44AC();
  if (qword_1ECEB15C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3F50);
  __swift_project_value_buffer(v2, qword_1EE1DF2C0);
  sub_1E1AF3C8C();

  if (v4 != 2 && (v4 & 1) == 0 || a1 >= 1)
  {
    v3 = [objc_opt_self() defaultService];
    [v3 showApplicationBadgeForPendingUpdates];
  }
}

uint64_t sub_1E1A3F598(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCF00) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E130B5DC;

  return sub_1E1A3DEC4(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_1E1A3F6E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E1A3F72C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t GenericAccountPage.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GenericAccountPage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *GenericAccountPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v29 = sub_1E1AF3C3C();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E1AF39DC();
  v4 = *(v30 - 8);
  v5 = MEMORY[0x1EEE9AC00](v30);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v40 = a1;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v10 + 8);
  v37 = v9;
  v18 = v9;
  v19 = v39;
  v34 = v10 + 8;
  v35 = v17;
  v17(v13, v18);
  v19[2] = v14;
  v19[3] = v16;
  sub_1E1AF381C();
  v38 = v4;
  v20 = *(v4 + 16);
  v21 = v32;
  v22 = v30;
  v20(v8, v32, v30);
  type metadata accessor for AccountSection();
  sub_1E1A3FD4C(&qword_1ECEBCF10, type metadata accessor for AccountSection);
  v28 = v8;
  v19[4] = sub_1E1AF630C();
  sub_1E1AF381C();
  v20(v31, v21, v22);
  v23 = v33;
  v24 = v36;
  sub_1E1AF3BAC();
  if (v24)
  {
    (*(v38 + 8))(v21, v22);
    v35(v40, v37);

    type metadata accessor for GenericAccountPage();
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v27 + 32))(v19 + OBJC_IVAR____TtC11AppStoreKit18GenericAccountPage_pageMetrics, v23, v29);
    type metadata accessor for PageRenderMetricsEvent();
    v25 = v40;
    sub_1E1AF381C();
    v20(v28, v21, v22);
    sub_1E1A3FD4C(&qword_1EE1EC280, type metadata accessor for PageRenderMetricsEvent);
    sub_1E1AF464C();
    (*(v38 + 8))(v21, v22);
    v35(v25, v37);
    v19 = v39;
    *(v39 + OBJC_IVAR____TtC11AppStoreKit18GenericAccountPage_pageRenderEvent) = v41;
  }

  return v19;
}

uint64_t type metadata accessor for GenericAccountPage()
{
  result = qword_1ECEBCF18;
  if (!qword_1ECEBCF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1A3FD4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GenericAccountPage.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GenericAccountPage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18GenericAccountPage_pageMetrics;
  v4 = sub_1E1AF3C3C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GenericAccountPage.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit18GenericAccountPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GenericAccountPage.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit18GenericAccountPage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1E1A3FF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for GenericAccountPage();
  v7 = swift_allocObject();
  result = GenericAccountPage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E1A40010@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit18GenericAccountPage_pageMetrics;
  v5 = sub_1E1AF3C3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1E1A40094()
{
  result = sub_1E1AF3C3C();
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

uint64_t TopChartsPagePresenter.init(objectGraph:topChartsPage:topChartsPageUrl:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  v7 = sub_1E1AEFCCC();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_hasData) = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_initialSegmentIndex) = 0;
  sub_1E1AF01EC();
  v8 = (v3 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_title);
  *v8 = 0;
  v8[1] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_segmentPresenters) = MEMORY[0x1E69E7CC0];
  v10 = (v3 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categoriesButtonTitle);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories) = v9;
  swift_beginAccess();
  sub_1E1A403C4(a3, v3 + v6);
  swift_endAccess();

  v14 = sub_1E138C578(v13, 0, 0, 0);

  if (a2)
  {
    sub_1E1A41824(a2);

    sub_1E1308058(a3, &unk_1ECEB4B60);
  }

  else
  {
    sub_1E1308058(a3, &unk_1ECEB4B60);
  }

  return v14;
}

uint64_t sub_1E1A403C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1A40484(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E1A404F0(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t sub_1E1A405F0()
{
  v1 = v0;
  sub_1E1A40808(0);
  v2 = v0 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_title;
  swift_beginAccess();
  if (*(v2 + 8))
  {
    v3 = v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  v6 = v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categoriesButtonTitle;
  swift_beginAccess();
  if (*(v6 + 8))
  {
    v7 = v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      v9 = swift_getObjectType();
      (*(v8 + 24))(v9, v8);
      swift_unknownObjectRelease();
    }
  }

  v10 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    result = sub_1E1AF71CC();
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

  v13 = v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v13 + 8);
    v15 = *(v1 + v10);
    if (v15 >> 62)
    {
      v16 = sub_1E1AF71CC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = swift_getObjectType();
    (*(v14 + 40))(0, v16, v17, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E1A40808(int a1)
{
  v3 = type metadata accessor for TopChartsPageIntent();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF504C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v46 = v1;
  if (*(v1 + 32) == 1)
  {
    v37 = v11;
    v39 = v8;
    v40 = v6;
    v42 = v15;
    v16 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_segmentPresenters;
    v17 = v46;
    swift_beginAccess();
    v18 = *(v17 + v16);
    v44 = v12;
    v43 = v13;
    v41 = v5;
    v38 = a1;
    if (v18 >> 62)
    {
      goto LABEL_29;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v19)
    {
      v20 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1E68FFD80](v20, v18);
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_29:
            v19 = sub_1E1AF71CC();
            goto LABEL_4;
          }

          v21 = *(v18 + 8 * v20 + 32);

          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_14;
          }
        }

        v23 = OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage;
        swift_beginAccess();
        v24 = *(v21 + v23);

        if (v24)
        {
        }

        ++v20;
      }

      while (v22 != v19);
    }

    v12 = v44;
    v13 = v43;
    v15 = v42;
    v5 = v41;
    v6 = v40;
    v8 = v39;
    LOBYTE(a1) = v38;
    v11 = v37;
  }

  v25 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  v26 = v46;
  swift_beginAccess();
  sub_1E1307FE8(v26 + v25, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1E1308058(v11, &unk_1ECEB4B60);
  }

  (*(v13 + 32))(v15, v11, v12);
  if (*(v46 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_hasData) == 1 && (a1 & 1) == 0)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v28 = v46;
  *(v46 + 32) = 1;
  v29 = v28 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v30 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  v32 = v46;
  swift_beginAccess();
  if (*(v32 + 24))
  {
    *v8 = 1;
    (*(v6 + 104))(v8, *MEMORY[0x1E69AB450], v5);

    sub_1E1AF509C();

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v33 = v45;
  (*(v13 + 16))(v45, v15, v12);
  sub_1E1AF4C1C();

  sub_1E1AF422C();

  sub_1E1AF4BEC();

  v34 = sub_1E1AF4BFC();

  sub_1E13671B0(v33, v34, "AppStoreKit/TopChartsPagePresenter.swift", 40, 2);
  v35 = sub_1E1361A80();
  swift_retain_n();
  v36 = sub_1E1AF68EC();
  v47[3] = v35;
  v47[4] = MEMORY[0x1E69AB720];
  v47[0] = v36;
  sub_1E1AF57FC();

  sub_1E17CC304(v33);
  (*(v13 + 8))(v15, v12);
  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1E1A40EEC(unint64_t *a1, uint64_t a2)
{
  v4 = sub_1E1AF503C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  swift_beginAccess();
  if (*(a2 + 24))
  {
    v9 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v10 = sub_1E1AF3C3C();
    (*(*(v10 - 8) + 16))(v7, v8 + v9, v10);
    (*(v5 + 104))(v7, *MEMORY[0x1E69AB440], v4);

    sub_1E1AF508C();

    (*(v5 + 8))(v7, v4);
  }

  sub_1E1A41824(v8);
  swift_beginAccess();
  *(a2 + 32) = 0;
  v11 = a2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v13 + 8) + 16))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E1A410F8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-v5];
  v7 = sub_1E1AF503C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(a2 + 24))
  {
    *v10 = a1;
    (*(v8 + 104))(v10, *MEMORY[0x1E69AB430], v7);

    v11 = a1;
    sub_1E1AF508C();

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  *(a2 + 32) = 0;
  v12 = a2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v13 + 8) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v12 + 8);
    v16 = swift_getObjectType();
    v17 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl;
    swift_beginAccess();
    sub_1E1307FE8(a2 + v17, v6);
    v18 = type metadata accessor for PresenterError();
    sub_1E1A44E6C(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v19 = swift_allocError();
    *v20 = a1;
    sub_1E13E23F8(v6, v20 + *(v18 + 20));
    v21 = *(v15 + 8);
    v22 = *(v21 + 24);
    v23 = a1;
    v22(v19, v16, v21);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E1A413DC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1E1307FE8(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  sub_1E13F931C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1E1A4149C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  return sub_1E1307FE8(v1 + v3, a1);
}

uint64_t sub_1E1A414F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  sub_1E13F931C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E1A415B4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E1A415F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  v5 = sub_1E1AF01FC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1E1A41684(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E1AF01FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1E1A4179C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  v4 = sub_1E1AF01FC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1E1A41824(unint64_t a1)
{
  v63 = sub_1E1AEFE6C();
  v3 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF01FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_hasData) = 1;
  v9 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_title);
  v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_title + 8);

  sub_1E1A42238(v9, v10);
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categoriesButtonTitle);
  v12 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categoriesButtonTitle + 8);

  sub_1E1A423EC(v11, v12);
  v13 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_genreId + 8);
  v14 = (v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
  *v14 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_genreId);
  v14[1] = v13;

  v15 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_ageBandId + 8);
  v16 = (v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
  *v16 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_ageBandId);
  v16[1] = v15;

  *(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories) = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_categories);

  v17 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_initialSegmentIndex);
  v18 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_initialSegmentIndex;
  swift_beginAccess();
  *(v1 + v18) = v17;

  v20 = sub_1E1A442C8(v19);

  MEMORY[0x1E68F8EF0](v20);
  v21 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  (*(v6 + 40))(v1 + v21, v8, v5);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  v65 = v1;
  v23 = *(v1 + v22);
  v68 = v23;
  if (v23 >> 62)
  {
    goto LABEL_55;
  }

  v60 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v24 = *(a1 + OBJC_IVAR____TtC11AppStoreKit13TopChartsPage_segments);
  v58 = v22;
  if (v24 >> 62)
  {
    v59 = sub_1E1AF71CC();
    v22 = sub_1E1AF71CC();
  }

  else
  {
    v22 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = v22;
  }

  if (v22)
  {
    v67 = v24 & 0xC000000000000001;
    v66 = v24 & 0xFFFFFFFFFFFFFF8;
    v61 = (v3 + 8);
    v25 = 4;
    v64 = v22;
    do
    {
      a1 = v25 - 4;
      if (v67)
      {
        v3 = MEMORY[0x1E68FFD80](v25 - 4, v24);
        v26 = v25 - 3;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (a1 >= *(v66 + 16))
        {
          goto LABEL_51;
        }

        v3 = *(v24 + 8 * v25);

        v26 = v25 - 3;
        if (__OFADD__(a1, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          v60 = sub_1E1AF71CC();
          goto LABEL_3;
        }
      }

      if (v23 >> 62)
      {
        if (a1 >= sub_1E1AF71CC())
        {
LABEL_21:
          v27 = v24;
          v28 = v65;
          type metadata accessor for TopChartSegmentPresenter();
          v29 = swift_allocObject();
          *(v29 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_view + 8) = 0;
          swift_unknownObjectWeakInit();
          *(v29 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_isPreparingNextPage) = 0;
          *(v29 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment) = 0;
          *(v29 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
          *(v29 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
          *(v29 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
          *(v29 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];

          v31 = sub_1E138C578(v30, 0, 0, 0);

          v32 = (v28 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_referrer);
          swift_beginAccess();
          v34 = *v32;
          v33 = v32[1];
          v35 = (v31 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_referrer);
          swift_beginAccess();
          *v35 = v34;
          v35[1] = v33;
          swift_retain_n();

          MEMORY[0x1E68FEF20](v36);
          if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();

          v23 = v68;
          v24 = v27;
          v22 = v64;
          goto LABEL_24;
        }
      }

      else if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E68FFD80](v25 - 4, v23);
      }

      else
      {
        if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }
      }

      sub_1E1389D04();

LABEL_24:
      if ((v23 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1E68FFD80](v25 - 4, v23);
      }

      else
      {
        if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v37 = *(v23 + 8 * v25);
      }

      v38 = *(v37 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment);
      *(v37 + OBJC_IVAR____TtC11AppStoreKit24TopChartSegmentPresenter_segment) = v3;
      swift_retain_n();
      sub_1E162B0EC(v38);

      if (v25 == 4)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x1E68FFD80](0, v23);
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v39 = *(v23 + 32);
        }

        swift_beginAccess();
        v40 = *(v39 + 16);

        if (v40)
        {
          v41 = v62;
          sub_1E1AEFE5C();
          sub_1E1AEFE1C();
          v43 = v42;
          (*v61)(v41, v63);
          v44 = v40 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_initialRequestEndTime;
          swift_beginAccess();
          v45 = *v44;
          v46 = *(v44 + 8);
          *v44 = v43;
          *(v44 + 8) = 0;
          if ((v46 & 1) != 0 || v43 != v45)
          {
            v47 = *(v40 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasInitialRequestEndTime);
            swift_beginAccess();
            *(v47 + 40) = 1;
            swift_beginAccess();
            if (swift_weakLoadStrong())
            {
              sub_1E149DEE8();
            }

            PendingPageRender.tryToEstablishUserReadyTime()();
          }
        }
      }

      ++v25;
    }

    while (v26 != v22);
  }

  v48 = v60;
  v49 = v59;
  if (v59 < v60)
  {
    result = v60 - v59;
    if (__OFSUB__(v60, v59))
    {
      __break(1u);
      return result;
    }

    sub_1E1A42174(result);
  }

  if (v48 != v49)
  {
    v51 = v65;
    *(v65 + v58) = v68;

    v52 = v51 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v52 + 8);
      ObjectType = swift_getObjectType();
      (*(v53 + 40))(v48, v49, ObjectType, v53);
      swift_unknownObjectRelease();
    }
  }

  v55 = v65 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v55 + 8);
    v57 = swift_getObjectType();
    (*(v56 + 32))(v57, v56);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E1A42174(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = -v2;
    if (!__OFSUB__(0, v2))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  v2 = sub_1E1AF71CC();
  result = v6;
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    goto LABEL_22;
  }

  result = v2 - result;
  if (__OFADD__(v2, v4))
  {
    goto LABEL_20;
  }

  if (v2 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_1E1922144(result, v2);
}

uint64_t sub_1E1A42238(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_title);
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_1E1AF74AC() & 1) != 0)
      {
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  v10 = v2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E1A42330(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1E1A423EC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categoriesButtonTitle);
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_1E1AF74AC() & 1) != 0)
      {
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  v10 = v2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(ObjectType, v11);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E1A424E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_segmentPresenters;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    if (!sub_1E1AF71CC())
    {
      goto LABEL_7;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v8 = *(v1 + v6);
  if (v8 >> 62)
  {
    v9 = sub_1E1AF71CC();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + v6) = MEMORY[0x1E69E7CC0];

  v10 = v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(v9, 0, ObjectType, v11);
    swift_unknownObjectRelease();
  }

LABEL_7:
  v13 = OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_url;
  v14 = sub_1E1AEFCCC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v5, a1 + v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  v16 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl;
  swift_beginAccess();
  sub_1E13F931C(v5, v1 + v16);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_hasData) = 0;
  return sub_1E1A40808(1);
}

uint64_t sub_1E1A42740(uint64_t a1)
{
  v3 = sub_1E1AF01FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B90);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v28 - v13;
  v15 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories;
  v30 = v1;
  v16 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories);
  v17 = *(v4 + 16);
  v28[1] = a1;
  v17(v9, a1, v3, v12);
  (*(v4 + 32))(v6, v9, v3);
  v18 = MEMORY[0x1E6969C28];
  sub_1E1A44E6C(&qword_1ECEB7BB8, MEMORY[0x1E6969C28]);

  sub_1E1AF60AC();
  v29 = *(v11 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BA0) + 36);
  sub_1E1A44E6C(&qword_1ECEB8BA8, v18);
  sub_1E1AF668C();
  if (*&v14[v19] == v31[0])
  {
    v20 = 0;
LABEL_3:

    *&v14[v29] = v20;
    return sub_1E1308058(v14, &qword_1ECEB8B90);
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_1E1AF66FC();
      v24 = *v23;
      v22(v31, 0);
      sub_1E1AF669C();
      ++v20;
      result = sub_1E1AF01AC();
      if (v20 >= result)
      {
        break;
      }

      v25 = *(v30 + v15);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x1E68FFD80](v24, v25);

        v16 = *(v26 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v27 = MEMORY[0x1E68FFD80](v24, v16);
LABEL_17:

          sub_1E1308058(v14, &qword_1ECEB8B90);
          sub_1E1A424E4(v27);
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
      }

      sub_1E1AF668C();
      if (*&v14[v19] == v31[0])
      {
        goto LABEL_3;
      }
    }

    *&v14[v29] = v20;
    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v16 + 8 * v24 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E1A42B88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF01FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B88);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B90);
  v11 = MEMORY[0x1EEE9AC00](v28);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories;
  v15 = *(v2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories);
  (*(v5 + 16))(v10, a1, v4, v11);
  (*(v5 + 32))(v7, v10, v4);
  v16 = MEMORY[0x1E6969C28];
  sub_1E1A44E6C(&qword_1ECEB7BB8, MEMORY[0x1E6969C28]);

  sub_1E1AF60AC();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BA0) + 36);
  sub_1E1A44E6C(&qword_1ECEB8BA8, v16);
  sub_1E1AF668C();
  if (*&v13[v17] != v29[0])
  {
    v21 = 0;
    while (1)
    {

      v22 = sub_1E1AF66FC();
      v24 = *v23;
      v22(v29, 0);
      sub_1E1AF669C();
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = *(v2 + v14);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x1E68FFD80](v24, v25);

        v15 = *(v26 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
      }

      sub_1E1AF668C();
      ++v21;
      if (*&v13[v17] == v29[0])
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = 0;
LABEL_3:
  *&v13[*(v28 + 36)] = v18;
  sub_1E1308058(v13, &qword_1ECEB8B90);
  if (v15 >> 62)
  {
LABEL_18:
    v19 = sub_1E1AF71CC();
    goto LABEL_5;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  return v19;
}

uint64_t sub_1E1A42F64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF01FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B88);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B90);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories;
  v30 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories);
  (*(v5 + 16))(v10, a1, v4, v13);
  (*(v5 + 32))(v7, v10, v4);
  v18 = MEMORY[0x1E6969C28];
  sub_1E1A44E6C(&qword_1ECEB7BB8, MEMORY[0x1E6969C28]);

  sub_1E1AF60AC();
  v29 = *(v12 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BA0) + 36);
  sub_1E1A44E6C(&qword_1ECEB8BA8, v18);
  sub_1E1AF668C();
  if (*&v15[v19] == v31[0])
  {
    v20 = 0;
LABEL_3:

    *&v15[v29] = v20;
    sub_1E1308058(v15, &qword_1ECEB8B90);
    return 0;
  }

  v20 = 0;
  while (1)
  {
    v22 = sub_1E1AF66FC();
    v24 = *v23;
    v22(v31, 0);
    sub_1E1AF669C();
    ++v20;
    result = sub_1E1AF01AC();
    if (v20 >= result)
    {
      *&v15[v29] = v20;
      if ((v17 & 0xC000000000000001) != 0)
      {
        goto LABEL_24;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v24 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = *(v17 + 8 * v24 + 32);

        goto LABEL_17;
      }

      __break(1u);
      return result;
    }

    v25 = *(v30 + v16);
    if ((v25 & 0xC000000000000001) != 0)
    {

      v26 = MEMORY[0x1E68FFD80](v24, v25);

      v17 = *(v26 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v17 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);

LABEL_10:
    sub_1E1AF668C();
    if (*&v15[v19] == v31[0])
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  v27 = MEMORY[0x1E68FFD80](v24, v17);
LABEL_17:

  sub_1E1308058(v15, &qword_1ECEB8B90);
  if (*(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName + 8))
  {
    v28 = *(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_longName);
  }

  else
  {
    v28 = *(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_shortName);
  }

  return v28;
}

uint64_t sub_1E1A433EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF01FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B88);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B90);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories;
  v31 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories);
  (*(v5 + 16))(v10, a1, v4, v13);
  (*(v5 + 32))(v7, v10, v4);
  v18 = MEMORY[0x1E6969C28];
  sub_1E1A44E6C(&qword_1ECEB7BB8, MEMORY[0x1E6969C28]);

  sub_1E1AF60AC();
  v30 = *(v12 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BA0) + 36);
  sub_1E1A44E6C(&qword_1ECEB8BA8, v18);
  sub_1E1AF668C();
  if (*&v15[v19] == v32[0])
  {
    v20 = 0;
LABEL_3:

    *&v15[v30] = v20;
    sub_1E1308058(v15, &qword_1ECEB8B90);
    return 0;
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_1E1AF66FC();
      v24 = *v23;
      v22(v32, 0);
      sub_1E1AF669C();
      ++v20;
      result = sub_1E1AF01AC();
      if (v20 >= result)
      {
        break;
      }

      v25 = *(v31 + v16);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x1E68FFD80](v24, v25);

        v17 = *(v26 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v29 = MEMORY[0x1E68FFD80](v24, v17);

          sub_1E1308058(v15, &qword_1ECEB8B90);
          v28 = *(v29 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_artwork);

          swift_unknownObjectRelease();
          return v28;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v17 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
      }

      sub_1E1AF668C();
      if (*&v15[v19] == v32[0])
      {
        goto LABEL_3;
      }
    }

    *&v15[v30] = v20;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v17 + 8 * v24 + 32);

      sub_1E1308058(v15, &qword_1ECEB8B90);
      v28 = *(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_artwork);

      return v28;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E1A43884(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF01FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B88);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B90);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories;
  v31 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories);
  (*(v5 + 16))(v10, a1, v4, v13);
  (*(v5 + 32))(v7, v10, v4);
  v18 = MEMORY[0x1E6969C28];
  sub_1E1A44E6C(&qword_1ECEB7BB8, MEMORY[0x1E6969C28]);

  sub_1E1AF60AC();
  v30 = *(v12 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BA0) + 36);
  sub_1E1A44E6C(&qword_1ECEB8BA8, v18);
  sub_1E1AF668C();
  if (*&v15[v19] == v32[0])
  {
    v20 = 0;
LABEL_3:

    *&v15[v30] = v20;
    sub_1E1308058(v15, &qword_1ECEB8B90);
    return 0;
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_1E1AF66FC();
      v24 = *v23;
      v22(v32, 0);
      sub_1E1AF669C();
      ++v20;
      result = sub_1E1AF01AC();
      if (v20 >= result)
      {
        break;
      }

      v25 = *(v31 + v16);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x1E68FFD80](v24, v25);

        v17 = *(v26 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v27 = MEMORY[0x1E68FFD80](v24, v17);
LABEL_17:

          sub_1E1308058(v15, &qword_1ECEB8B90);
          v28 = *(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
          if (!(v28 >> 62))
          {
            v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

            return v29 > 0;
          }

LABEL_25:
          v29 = sub_1E1AF71CC();
          goto LABEL_19;
        }

        if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v17 = *(*(v25 + 8 * v24 + 32) + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
      }

      sub_1E1AF668C();
      if (*&v15[v19] == v32[0])
      {
        goto LABEL_3;
      }
    }

    *&v15[v30] = v20;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_23;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v24 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(v17 + 8 * v24 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E1A43D00(uint64_t a1)
{
  v3 = sub_1E1AF01FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B88);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8B90);
  v11 = v10 - 8;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v29 - v13;
  v15 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories;
  v31 = v1;
  v16 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_categories);
  v17 = *(v4 + 16);
  v29[1] = a1;
  v17(v9, a1, v3, v12);
  (*(v4 + 32))(v6, v9, v3);
  v18 = MEMORY[0x1E6969C28];
  sub_1E1A44E6C(&qword_1ECEB7BB8, MEMORY[0x1E6969C28]);

  sub_1E1AF60AC();
  v30 = *(v11 + 44);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8BA0) + 36);
  sub_1E1A44E6C(&qword_1ECEB8BA8, v18);
  sub_1E1AF668C();
  if (*&v14[v19] == v32[0])
  {
    v20 = 0;
LABEL_3:

    v21 = 0;
    *&v14[v30] = v20;
LABEL_18:
    sub_1E1308058(v14, &qword_1ECEB8B90);
    v28 = sub_1E1A4413C(v21);

    return v28 & 1;
  }

  else
  {
    v20 = 0;
    while (1)
    {
      v22 = sub_1E1AF66FC();
      v24 = *v23;
      v22(v32, 0);
      sub_1E1AF669C();
      ++v20;
      result = sub_1E1AF01AC();
      if (v20 >= result)
      {
        break;
      }

      v26 = *(v31 + v15);
      if ((v26 & 0xC000000000000001) != 0)
      {

        v27 = MEMORY[0x1E68FFD80](v24, v26);

        v16 = *(v27 + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v21 = MEMORY[0x1E68FFD80](v24, v16);
LABEL_17:

          goto LABEL_18;
        }

        if (v24 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(*(v26 + 8 * v24 + 32) + OBJC_IVAR____TtC11AppStoreKit16TopChartCategory_children);
      }

      sub_1E1AF668C();
      if (*&v14[v19] == v32[0])
      {
        goto LABEL_3;
      }
    }

    *&v14[v30] = v20;
    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v16 + 8 * v24 + 32);

      goto LABEL_17;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E1A4413C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId + 8);
  if (!a1)
  {
    v7 = v2 == 0;
    LOBYTE(v9) = v2 == 0;
    v10 = v2 == 0;
    if (*(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryGenreId + 8))
    {
      goto LABEL_26;
    }

    if (!v2)
    {
      return v10 & 1;
    }

LABEL_35:
    if ((v10 & 1) == 0)
    {
      return v10 & 1;
    }

    goto LABEL_36;
  }

  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
  v6 = a1[4];
  v5 = a1[5];
  v7 = v2 == 0;

  if (v2)
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_17;
    }

    if (v4 == v6 && v2 == v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1E1AF74AC();
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v9 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v9 = 1;
LABEL_17:
  v11 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
  v12 = *(v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryGenreId + 8);
  v14 = a1[2];
  v13 = a1[3];

  if (!v12)
  {
    if (v13)
    {

      goto LABEL_26;
    }

    v10 = v9;
    if (!v2)
    {
      return v10 & 1;
    }

    goto LABEL_35;
  }

  if (v13)
  {
    if (v11 == v14 && v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_1E1AF74AC();
    }

    if (!v2 || ((v9 ^ 1) & 1) != 0)
    {
      v10 = v16 & v9;
      return v10 & 1;
    }

LABEL_36:
    v10 = 1;
    return v10 & 1;
  }

LABEL_26:
  v10 = 0;
  if (!v7 && (v9 & 1) != 0)
  {
    goto LABEL_36;
  }

  return v10 & 1;
}

uint64_t sub_1E1A442C8(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_34:
    v4 = sub_1E1AF71CC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = (v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryAgeBandId);
      v19 = (v1 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryGenreId);
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E68FFD80](v5, a1);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_1E1B02CC0;
            *(v16 + 32) = v5;
            v20 = v16;
            sub_1E1728970(v2);

            return v20;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_34;
          }

          v7 = *(a1 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_30;
          }
        }

        v2 = sub_1E1A442C8(v9);

        if (*(v2 + 16))
        {
          goto LABEL_31;
        }

        v10 = v4;

        v11 = 0;
        v2 = v6[1];
        v12 = v7[5];
        v13 = (v2 | v12) == 0;
        if (v2 && v12)
        {
          if (*v6 == v7[4] && v2 == v12)
          {
            v11 = 1;
            v13 = 1;
          }

          else
          {
            v11 = sub_1E1AF74AC();
            v13 = v11;
          }
        }

        v14 = v19[1];
        v15 = v7[3];
        if (v14)
        {
          if (v15)
          {
            if (*v19 == v7[2] && v14 == v15)
            {
              if ((v11 | v13))
              {
                goto LABEL_32;
              }
            }

            else if ((v11 | sub_1E1AF74AC() & v13))
            {
              goto LABEL_32;
            }

            goto LABEL_5;
          }
        }

        else if (!v15)
        {
          if (v13)
          {
            goto LABEL_32;
          }

          goto LABEL_5;
        }

        if (v2 && v13)
        {
LABEL_32:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_1E1B02CC0;
          *(v18 + 32) = v5;

          return v18;
        }

LABEL_5:

        ++v5;
        v4 = v10;
      }

      while (v8 != v10);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E1A445A0()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl, &unk_1ECEB4B60);
  v1 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  v2 = sub_1E1AF01FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t TopChartsPagePresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_view);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_topChartsPageUrl, &unk_1ECEB4B60);
  v1 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  v2 = sub_1E1AF01FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TopChartsPagePresenter.__deallocating_deinit()
{
  TopChartsPagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1A44804@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit22TopChartsPagePresenter_selectedCategoryIndexPath;
  swift_beginAccess();
  v5 = sub_1E1AF01FC();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t keypath_set_8Tm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t type metadata accessor for TopChartsPagePresenter()
{
  result = qword_1ECEBCF48;
  if (!qword_1ECEBCF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1A44A48()
{
  sub_1E130072C();
  if (v0 <= 0x3F)
  {
    sub_1E1AF01FC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E1A44E6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OfferConfirmationAction.__allocating_init(buyAction:confirmationInitiationAction:confirmationAccessibilityAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E1AEFEAC();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_1E1AF3E1C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_buyAction) = a1;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_confirmationInitiationAction) = a2;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_confirmationAccessibilityAction) = a3;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  (*(v15 + 16))(v17, a4, v14);
  v19 = sub_1E1AF46DC();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = (v18 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = v18 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v35, &v32);
  if (*(&v33 + 1))
  {
    v22 = v33;
    *v21 = v32;
    *(v21 + 16) = v22;
    *(v21 + 32) = v34;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v28 + 8))(v10, v29);
    v30 = v23;
    v31 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v32, &unk_1ECEB5670);
  }

  (*(v15 + 8))(a4, v14);
  sub_1E1308058(v35, &unk_1ECEB5670);
  sub_1E134B7C8(v13, v18 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  (*(v15 + 32))(v18 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v17, v14);
  return v18;
}

uint64_t OfferConfirmationAction.init(buyAction:confirmationInitiationAction:confirmationAccessibilityAction:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1E1AEFEAC();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_buyAction) = a1;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_confirmationInitiationAction) = a2;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_confirmationAccessibilityAction) = a3;
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  (*(v17 + 16))(v19, a4, v16);
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = (v5 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v21 = 0u;
  v21[1] = 0u;
  sub_1E138853C(v39, &v33);
  if (*(&v34 + 1))
  {
    v36 = v33;
    v37 = v34;
    v38 = v35;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v24 = v23;
    (*(v29 + 8))(v12, v30);
    v31 = v22;
    v32 = v24;
    sub_1E1AF6F6C();
    sub_1E1308058(&v33, &unk_1ECEB5670);
  }

  (*(v17 + 8))(a4, v16);
  sub_1E1308058(v39, &unk_1ECEB5670);
  v25 = v5 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v25 + 32) = v38;
  v26 = v37;
  *v25 = v36;
  *(v25 + 16) = v26;
  sub_1E134B7C8(v15, v5 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

char *OfferConfirmationAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v72 = *v3;
  v79 = sub_1E1AF39DC();
  v78 = *(v79 - 8);
  v6 = MEMORY[0x1EEE9AC00](v79);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v69 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v58 - v11;
  v75 = sub_1E1AF380C();
  v12 = *(v75 - 8);
  v13 = MEMORY[0x1EEE9AC00](v75);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v58 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v58 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v70 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v58 - v24;
  v26 = type metadata accessor for Action();
  v77 = a1;
  sub_1E1AF381C();
  v76 = a2;
  v27 = v73;
  v28 = static Action.makeInstance(byDeserializing:using:)(v25, a2);
  if (v27)
  {
    (*(v78 + 8))(v76, v79);
    v29 = *(v12 + 8);
    v30 = v75;
    v29(v77, v75);
    v29(v25, v30);
    v31 = v74;
  }

  else
  {
    v32 = v28;
    v62 = v26;
    v63 = v18;
    v64 = v15;
    v65 = v8;
    v33 = *(v12 + 8);
    v67 = 0;
    v68 = v33;
    v34 = v75;
    v73 = v12 + 8;
    v33(v25, v75);
    v66 = OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_buyAction;
    *&v74[OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_buyAction] = v32;
    v35 = v70;
    sub_1E1AF381C();
    v37 = v78 + 16;
    v36 = *(v78 + 16);
    v38 = v71;
    v39 = v79;
    v36(v71, v76, v79);
    type metadata accessor for BlankAction();
    swift_allocObject();
    v59 = *(v12 + 16);
    v59(v21, v35, v34);
    v40 = v69;
    v60 = v36;
    v61 = v37;
    v36(v69, v38, v39);
    v41 = v67;
    v42 = Action.init(deserializing:using:)(v21, v40);
    v31 = v74;
    if (!v41)
    {
      v48 = v42;
      v49 = *(v78 + 8);
      v78 += 8;
      v72 = v49;
      v49(v71, v79);
      v50 = v75;
      v51 = v68;
      v68(v70, v75);
      *&v31[OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_confirmationInitiationAction] = v48;
      v52 = v63;
      v53 = v77;
      sub_1E1AF381C();
      v54 = v76;
      v55 = static Action.tryToMakeInstance(byDeserializing:using:)(v52, v76);
      v51(v52, v50);
      *&v31[OBJC_IVAR____TtC11AppStoreKit23OfferConfirmationAction_confirmationAccessibilityAction] = v55;
      v56 = v64;
      v59(v64, v53, v50);
      v57 = v65;
      v60(v65, v54, v79);
      v31 = Action.init(deserializing:using:)(v56, v57);
      v72(v76, v79);
      v68(v77, v50);
      return v31;
    }

    v43 = *(v78 + 8);
    v44 = v79;
    v43(v76, v79);
    v45 = v75;
    v46 = v68;
    v68(v77, v75);
    v43(v71, v44);
    v46(v70, v45);
  }

  swift_deallocPartialClassInstance();
  return v31;
}

uint64_t sub_1E1A45C80()
{
}

uint64_t OfferConfirmationAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t OfferConfirmationAction.__deallocating_deinit()
{
  OfferConfirmationAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfferConfirmationAction()
{
  result = qword_1EE1D9A68;
  if (!qword_1EE1D9A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TodayDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:triggerController:pendingPageRender:pageRenderMetrics:isRunningPPTs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v86 = a3;
  v88 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v82 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v83 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v78 - v15;
  v79 = &v78 - v15;
  v17 = swift_allocObject();
  *(v17 + qword_1EE1D5C80) = a4;
  v80 = a7 & 1;
  *(v17 + qword_1EE1D5C88) = a7;
  v85 = a2;
  sub_1E134FD1C(a2, v16, &unk_1ECEB4B60);
  *(v17 + qword_1EE1E9D48) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v19 = qword_1EE2166A0;
  v89 = a6;

  v84 = a4;

  v87 = a5;

  *(v17 + v19) = sub_1E159D6F0(v18);
  v20 = (v17 + qword_1EE1E9E00);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v17 + qword_1EE1E9EA0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v17 + qword_1EE1E9E08);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v17 + qword_1EE1E9DF0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v17 + qword_1EE1E9E98);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v17 + qword_1EE216698);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 25) = 0u;
  *(v17 + qword_1EE2166D0) = 0;
  *(v17 + qword_1EE1E9D50) = 0;
  *(v17 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v17 + qword_1EE2166C8) = 0;
  v26 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D0);
  swift_allocObject();
  *(v17 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v17 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31E0);
  swift_allocObject();
  *(v17 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE2166B0;
  swift_allocObject();
  *(v17 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v17 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v17 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE1E9DD8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v34 = *(*(v33 - 8) + 56);
  v34(v17 + v32, 1, 1, v33);
  v34(v17 + qword_1EE1E9DE0, 1, 1, v33);
  v35 = v86;
  *(v17 + 16) = v88;
  sub_1E13E23F8(v79, v17 + qword_1EE216678);
  v36 = *v20;
  *v20 = 0;
  v20[1] = 0;
  sub_1E1300EA8(v36);
  v37 = *v22;
  *v22 = 0;
  v22[1] = 0;
  sub_1E1300EA8(v37);
  if (v35)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    v39 = sub_1E138157C;
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v40 = *v21;
  *v21 = v39;
  v21[1] = v38;
  sub_1E1300EA8(v40);
  v41 = *v23;
  *v23 = 0;
  v23[1] = 0;
  sub_1E1300EA8(v41);
  v42 = *v24;
  *v24 = 0;
  v24[1] = 0;
  sub_1E1300EA8(v42);
  *(v17 + qword_1EE1E9E90) = v87;
  v43 = v89;
  *(v17 + qword_1EE216690) = v89;
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = v85;
  v46 = v83;
  sub_1E134FD1C(v85, v83, &unk_1ECEB4B60);
  v47 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v48 = (v47 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v47 + v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  sub_1E13E23F8(v46, v50 + v47);
  v51 = v50 + v48;
  *v51 = v44;
  *(v51 + 8) = v80;
  v52 = v88;
  *(v50 + v49) = v88;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v43;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E1445E64;
  *(v54 + 24) = v52;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1E1A47B2C;
  *(v55 + 24) = v50;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1E1543608;
  *(v56 + 24) = v55;
  v57 = (v17 + qword_1EE1E9E00);
  v58 = *(v17 + qword_1EE1E9E00);
  *v57 = sub_1E13E24A0;
  v57[1] = v56;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E1300EA8(v58);
  v59 = (v17 + qword_1EE1E9EA0);
  v60 = *(v17 + qword_1EE1E9EA0);
  v61 = *(v17 + qword_1EE1E9EA0 + 8);
  if (v60)
  {
    v62 = swift_allocObject();
    *(v62 + 16) = v60;
    *(v62 + 24) = v61;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1E154366C;
    *(v63 + 24) = v62;
    v64 = sub_1E13E24C0;
  }

  else
  {
    v64 = 0;
    v63 = *(v17 + qword_1EE1E9EA0 + 8);
  }

  *v59 = v64;
  v59[1] = v63;
  sub_1E1300E34(v60);
  sub_1E1300EA8(v60);
  v65 = (v17 + qword_1EE1E9E08);
  v66 = *(v17 + qword_1EE1E9E08);
  v67 = *(v17 + qword_1EE1E9E08 + 8);
  if (v66)
  {
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    *(v68 + 24) = v67;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1E1543638;
    *(v69 + 24) = v68;
    v70 = sub_1E13E24B0;
  }

  else
  {
    v70 = 0;
    v69 = *(v17 + qword_1EE1E9E08 + 8);
  }

  *v65 = v70;
  v65[1] = v69;
  sub_1E1300E34(v66);
  sub_1E1300EA8(v66);
  v71 = (v17 + qword_1EE1E9DF0);
  v72 = *(v17 + qword_1EE1E9DF0);
  *v71 = sub_1E1445E5C;
  v71[1] = v53;

  sub_1E1300EA8(v72);
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1E155BA28;
  *(v73 + 24) = v54;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1E1543608;
  *(v74 + 24) = v73;
  v75 = (v17 + qword_1EE1E9E98);
  v76 = *(v17 + qword_1EE1E9E98);
  *v75 = sub_1E13E24A0;
  v75[1] = v74;

  sub_1E1300EA8(v76);

  sub_1E1308058(v45, &unk_1ECEB4B60);
  return v17;
}

uint64_t TodayDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:triggerController:pendingPageRender:pageRenderMetrics:isRunningPPTs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v85 = a3;
  v87 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v78 - v17;
  *(v8 + qword_1EE1D5C80) = a4;
  v82 = a7 & 1;
  *(v8 + qword_1EE1D5C88) = a7;
  v89 = a2;
  sub_1E134FD1C(a2, &v78 - v17, &unk_1ECEB4B60);
  *(v8 + qword_1EE1E9D48) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v8 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v19 = qword_1EE2166A0;
  v88 = a6;

  v84 = a4;

  v86 = a5;

  *(v8 + v19) = sub_1E159D6F0(v18);
  v20 = (v8 + qword_1EE1E9E00);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v8 + qword_1EE1E9EA0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v8 + qword_1EE1E9E08);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v8 + qword_1EE1E9DF0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v8 + qword_1EE1E9E98);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v8 + qword_1EE216698);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 25) = 0u;
  *(v8 + qword_1EE2166D0) = 0;
  *(v8 + qword_1EE1E9D50) = 0;
  *(v8 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v8 + qword_1EE2166C8) = 0;
  v26 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31D0);
  swift_allocObject();
  *(v8 + v26) = sub_1E1AF5BEC();
  v27 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v8 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31E0);
  swift_allocObject();
  *(v8 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE2166B0;
  swift_allocObject();
  *(v8 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v8 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  *(v8 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE1E9DD8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v34 = *(*(v33 - 8) + 56);
  v34(v8 + v32, 1, 1, v33);
  v35 = v33;
  v36 = v85;
  v34(v8 + qword_1EE1E9DE0, 1, 1, v35);
  *(v8 + 16) = v87;
  sub_1E13E23F8(v79, v8 + qword_1EE216678);
  v37 = *v20;
  *v20 = 0;
  v20[1] = 0;
  sub_1E1300EA8(v37);
  v38 = *v22;
  *v22 = 0;
  v22[1] = 0;
  sub_1E1300EA8(v38);
  if (v36)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    v40 = sub_1E17C52D8;
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  v41 = *v21;
  *v21 = v40;
  v21[1] = v39;
  sub_1E1300EA8(v41);
  v42 = *v23;
  *v23 = 0;
  v23[1] = 0;
  sub_1E1300EA8(v42);
  v43 = *v24;
  *v24 = 0;
  v24[1] = 0;
  sub_1E1300EA8(v43);
  *(v8 + qword_1EE1E9E90) = v86;
  v44 = v88;
  *(v8 + qword_1EE216690) = v88;
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = v83;
  sub_1E134FD1C(v89, v83, &unk_1ECEB4B60);
  v47 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v48 = (v47 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v47 + v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  sub_1E13E23F8(v46, v50 + v47);
  v51 = v50 + v48;
  *v51 = v45;
  *(v51 + 8) = v82;
  v52 = v87;
  *(v50 + v49) = v87;
  *(v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8)) = v44;
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  *(v53 + 24) = v44;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1E1A47EA4;
  *(v54 + 24) = v52;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1E1A47EA0;
  *(v55 + 24) = v50;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1E17C52CC;
  *(v56 + 24) = v55;
  v57 = (v8 + qword_1EE1E9E00);
  v58 = *(v8 + qword_1EE1E9E00);
  *v57 = sub_1E17C5300;
  v57[1] = v56;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E1300EA8(v58);
  v59 = (v8 + qword_1EE1E9EA0);
  v60 = *(v8 + qword_1EE1E9EA0);
  v61 = *(v8 + qword_1EE1E9EA0 + 8);
  if (v60)
  {
    v62 = swift_allocObject();
    *(v62 + 16) = v60;
    *(v62 + 24) = v61;
    v63 = swift_allocObject();
    *(v63 + 16) = sub_1E16DBD44;
    *(v63 + 24) = v62;
    v64 = sub_1E17C52D0;
  }

  else
  {
    v64 = 0;
    v63 = *(v8 + qword_1EE1E9EA0 + 8);
  }

  *v59 = v64;
  v59[1] = v63;
  sub_1E1300E34(v60);
  sub_1E1300EA8(v60);
  v65 = (v8 + qword_1EE1E9E08);
  v66 = *(v8 + qword_1EE1E9E08);
  v67 = *(v8 + qword_1EE1E9E08 + 8);
  if (v66)
  {
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    *(v68 + 24) = v67;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1E17C52C8;
    *(v69 + 24) = v68;
    v70 = sub_1E17C5304;
  }

  else
  {
    v70 = 0;
    v69 = *(v8 + qword_1EE1E9E08 + 8);
  }

  *v65 = v70;
  v65[1] = v69;
  sub_1E1300E34(v66);
  sub_1E1300EA8(v66);
  v71 = (v8 + qword_1EE1E9DF0);
  v72 = *(v8 + qword_1EE1E9DF0);
  *v71 = sub_1E1A47ECC;
  v71[1] = v53;

  sub_1E1300EA8(v72);
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1E171A85C;
  *(v73 + 24) = v54;
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1E17C52CC;
  *(v74 + 24) = v73;
  v75 = (v8 + qword_1EE1E9E98);
  v76 = *(v8 + qword_1EE1E9E98);
  *v75 = sub_1E17C5300;
  v75[1] = v74;

  sub_1E1300EA8(v76);

  sub_1E1308058(v89, &unk_1ECEB4B60);
  return v8;
}

uint64_t sub_1E1A4710C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v33 = a5;
  v31 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_1E1AEFCCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  sub_1E134FD1C(a2, v9, &unk_1ECEB4B60);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1E1308058(v9, &unk_1ECEB4B60);
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCF58);
    sub_1E1302CD4(&qword_1ECEBCF60, &qword_1ECEBCF58);
    swift_allocError();
    *v20 = 0;
    return sub_1E1AF581C();
  }

  v17 = *(v11 + 32);
  v17(v16, v9, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_7;
  }

  v19 = *(Strong + qword_1EE1D5C80);
  v29 = v17;
  if (v19)
  {

    sub_1E1AE037C();

    v30 = *(v19 + 112);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCF68);
    v34[0] = MEMORY[0x1E69E7CC0];
    v30 = sub_1E1AF582C();
  }

  (*(v11 + 16))(v13, v16, v10);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = v22 + v12;
  v24 = (v22 + v12) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v29(v25 + v22, v13, v10);
  *(v25 + v23) = v31 & 1;
  v26 = v32;
  *(v25 + v24 + 8) = v33;
  *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v34[3] = sub_1E1AF470C();
  v34[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_0(v34);

  sub_1E1AF46FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A60);
  sub_1E1302CD4(&qword_1EE1D27F0, &qword_1ECEB2A60);
  v27 = sub_1E1AF585C();

  (*(v11 + 8))(v16, v10);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v27;
}

uint64_t sub_1E1A47568(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for TodayPageIntent();
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v16[0] = 0x6761507961646F54;
  v16[1] = 0xEF746E65746E4965;
  sub_1E1AF6F6C();
  v11 = v7[7];
  v12 = sub_1E1AEFCCC();
  (*(*(v12 - 8) + 16))(&v9[v11], a2, v12);
  *&v9[v7[8]] = v10;
  v9[v7[9]] = a3;
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();

  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v13 = sub_1E1AF4BFC();

  v14 = sub_1E136B6F4(v9, v13, "AppStoreKit/TodayDiffablePageContentPresenter.swift", 51, 2);

  sub_1E1A47E40(v9);
  return v14;
}

uint64_t sub_1E1A47758(uint64_t a1)
{
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  sub_1E1AF4BEC();

  v2 = sub_1E1AF4C0C();

  v3 = sub_1E1367B40(a1, v2, "AppStoreKit/TodayDiffablePageContentPresenter.swift", 51, 2);

  return v3;
}

uint64_t sub_1E1A47848(uint64_t a1, uint64_t a2)
{
  sub_1E134FD1C(a1, &v6, &qword_1ECEB2DF0);
  if (v7[1])
  {
    sub_1E1301CF0(&v6, v8);
    sub_1E137A5C4(v8, v7);
    *&v6 = 0xD000000000000013;
    *(&v6 + 1) = 0x80000001E1B84C50;
    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    v3 = sub_1E136B98C(&v6, a2, "AppStoreKit/TodayDiffablePageContentPresenter.swift", 51, 2);

    sub_1E1A47D40(&v6);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v3;
  }

  else
  {
    sub_1E1308058(&v6, &qword_1ECEB2DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCF58);
    sub_1E1302CD4(&qword_1ECEBCF60, &qword_1ECEBCF58);
    swift_allocError();
    *v5 = 2;
    return sub_1E1AF581C();
  }
}

uint64_t TodayDiffablePageContentPresenter.deinit()
{
  v0 = _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return v0;
}

uint64_t TodayDiffablePageContentPresenter.__deallocating_deinit()
{
  _s11AppStoreKit39SearchFocusDiffablePageContentPresenterCfd_0();

  return swift_deallocClassInstance();
}

void sub_1E1A47AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1E1300EA8(a10);
  sub_1E1300EA8(a6);
  sub_1E1300EA8(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t objectdestroy_2Tm_4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E1AEFCCC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t type metadata accessor for TodayDiffablePageContentPresenter()
{
  result = qword_1EE1D5C70;
  if (!qword_1EE1D5C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1A47D94(uint64_t *a1)
{
  v3 = *(sub_1E1AEFCCC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + v4 + *(v3 + 64));

  return sub_1E1A47568(a1, v1 + v4, v5);
}

uint64_t sub_1E1A47E40(uint64_t a1)
{
  v2 = type metadata accessor for TodayPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E1A47EE0(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1Tm((v1 + 16), *(v1 + 40));
    v6 = [v3 valueWithObject:sub_1E1AF748C() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      sub_1E1AF6C5C();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1A47FC0()
{
  result = qword_1ECEBCF70;
  if (!qword_1ECEBCF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCF70);
  }

  return result;
}

uint64_t ArcadeDebugSubscriptionState.arcadeState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v5 = -127;
    }

    else
    {
      v5 = -64;
    }

    if (*v1)
    {
      result = 0;
    }

    else
    {
      result = *v1;
    }

    if (*v1)
    {
      v4 = v5;
    }

    else
    {
      v4 = -126;
    }
  }

  else if (*v1 > 4u)
  {
    if (v2 == 5)
    {
      v4 = 0;
      result = 2;
    }

    else
    {
      v6 = a1;
      result = swift_allocObject();
      a1 = v6;
      *(result + 16) = 2;
      *(result + 24) = 0;
      v4 = 64;
    }
  }

  else
  {
    result = 1;
    if (v2 == 3)
    {
      v4 = -64;
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

uint64_t static ArcadeDebugSubscriptionState.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1ECEBCF78 = a1;
}

uint64_t sub_1E1A481C4(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1ECEBCF78 = v1;
}

uint64_t ArcadeDebugSubscriptionState.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E1A482A8()
{
  result = qword_1ECEBCF80;
  if (!qword_1ECEBCF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCF80);
  }

  return result;
}

unint64_t sub_1E1A48300()
{
  result = qword_1ECEBCF88;
  if (!qword_1ECEBCF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBCF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCF88);
  }

  return result;
}

uint64_t sub_1E1A48364@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1ECEBCF78;
}

__n128 ProductAnnotationLayout.init(metrics:titleText:summaryText:detailViews:linkText:disclosureView:isExpanded:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  memcpy((a8 + 176), __src, 0x149uLL);
  sub_1E1308EC0(a2, a8);
  sub_1E1308EC0(a3, a8 + 40);
  *(a8 + 80) = a4;
  v15 = *(a5 + 16);
  *(a8 + 88) = *a5;
  *(a8 + 104) = v15;
  *(a8 + 120) = *(a5 + 32);
  result = *a6;
  v17 = *(a6 + 16);
  *(a8 + 128) = *a6;
  *(a8 + 144) = v17;
  *(a8 + 160) = *(a6 + 32);
  *(a8 + 168) = a7;
  return result;
}

uint64_t ProductAnnotationLayout.Metrics.init(disclosureSize:disclosureContentInsets:disclosureMargin:titleSpace:detailSpace:detailMargin:linkSpace:bottomSpace:horizontalSpacing:shouldDisclosureAlignWithContent:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a12;
  *(a9 + 24) = a13;
  *(a9 + 32) = a14;
  *(a9 + 40) = a15;
  sub_1E1308EC0(a1, a9 + 48);
  sub_1E1308EC0(a2, a9 + 88);
  sub_1E1308EC0(a3, a9 + 128);
  sub_1E1308EC0(a4, a9 + 168);
  sub_1E1308EC0(a5, a9 + 208);
  sub_1E1308EC0(a6, a9 + 248);
  result = sub_1E1308EC0(a7, a9 + 288);
  *(a9 + 328) = a8;
  return result;
}

void ProductAnnotationLayout.Metrics.disclosureContentInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t ProductAnnotationLayout.Metrics.disclosureMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 48);

  return sub_1E1308EC0(a1, v1 + 48);
}

uint64_t ProductAnnotationLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 88);

  return sub_1E1308EC0(a1, v1 + 88);
}

uint64_t ProductAnnotationLayout.Metrics.detailSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 128);

  return sub_1E1308EC0(a1, v1 + 128);
}

uint64_t ProductAnnotationLayout.Metrics.detailMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 168);

  return sub_1E1308EC0(a1, v1 + 168);
}

uint64_t ProductAnnotationLayout.Metrics.linkSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 208);

  return sub_1E1308EC0(a1, v1 + 208);
}

uint64_t ProductAnnotationLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 248);

  return sub_1E1308EC0(a1, v1 + 248);
}

uint64_t ProductAnnotationLayout.Metrics.horizontalSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 288);

  return sub_1E1308EC0(a1, v1 + 288);
}

uint64_t static ProductAnnotationLayout.isSummaryPlacedBelow(in:)(void *a1)
{
  v1 = [a1 traitCollection];
  if (sub_1E1AF696C())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1E1AF698C();
  }

  return v2 & 1;
}

double ProductAnnotationLayout.measurements(fitting:in:)(void *a1)
{
  v2 = v1;
  v4 = sub_1E1AF162C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF165C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69AB970], v4, v10);
  sub_1E1AF163C();
  sub_1E1300B24(v2 + 264, v31);
  v13 = sub_1E1AF1A1C();
  v14 = MEMORY[0x1E69ABA90];
  v35 = v13;
  v36 = MEMORY[0x1E69ABA90];
  __swift_allocate_boxed_opaque_existential_0(v34);
  sub_1E1AF1A2C();
  sub_1E1AF164C();
  __swift_destroy_boxed_opaque_existential_1(v34);
  v15 = [a1 traitCollection];
  if (sub_1E1AF696C())
  {
  }

  else
  {
    v16 = sub_1E1AF698C();

    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if ((*(v2 + 168) & 1) == 0)
  {
    sub_1E1300B24(v2 + 304, v31);
    v35 = v13;
    v36 = v14;
    __swift_allocate_boxed_opaque_existential_0(v34);
    sub_1E1AF1A2C();
    sub_1E1AF164C();
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_6:
  if (*(v2 + 168) == 1)
  {
    sub_1E1A48EA4(v34);
    v32 = &type metadata for MeasurablePlaceable;
    v33 = sub_1E1A490F8();
    v31[0] = swift_allocObject();
    sub_1E1A4914C(v34, v31[0] + 16);
    sub_1E1AF164C();
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1E14F59A8(v2 + 88, &v28);
    if (v29)
    {
      sub_1E1308EC0(&v28, v31);
      v17 = v32;
      v18 = v33;
      v19 = __swift_project_boxed_opaque_existential_1Tm(v31, v32);
      v27[3] = v17;
      v27[4] = *(v18 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
      (*(v17[-1].Description + 2))(boxed_opaque_existential_0, v19, v17);
      sub_1E1300B24(v2 + 384, v26);
      v25[3] = sub_1E1AF140C();
      v25[4] = MEMORY[0x1E69AB908];
      __swift_allocate_boxed_opaque_existential_0(v25);
      sub_1E1AF13FC();
      v29 = sub_1E1AF1A6C();
      v30 = MEMORY[0x1E69ABAA0];
      __swift_allocate_boxed_opaque_existential_0(&v28);
      sub_1E1AF1A5C();
      sub_1E1AF164C();
      sub_1E1A49184(v34);
      __swift_destroy_boxed_opaque_existential_1(&v28);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      sub_1E1A49184(v34);
      sub_1E14F60F8(&v28);
    }
  }

  sub_1E1300B24(v2 + 424, v31);
  v35 = v13;
  v36 = v14;
  __swift_allocate_boxed_opaque_existential_0(v34);
  sub_1E1AF1A2C();
  sub_1E1AF164C();
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_1E1AF161C();
  v22 = v21;
  (*(v9 + 8))(v12, v8);
  return v22;
}

uint64_t sub_1E1A48EA4@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v20 = sub_1E1AF13EC();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E1AF13CC();
  v5 = 0;
  v6 = *(v1 + 80);
  v7 = *(v6 + 16);
  while (1)
  {
    v8 = 0uLL;
    v9 = v7;
    v10 = 0uLL;
    v11 = 0uLL;
    if (v5 == v7)
    {
      goto LABEL_5;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    v9 = v5 + 1;
    *&v22[0] = v5;
    sub_1E1300B24(v6 + 32 + 40 * v5, v22 + 8);
    v8 = v22[0];
    v10 = v22[1];
    v11 = v22[2];
LABEL_5:
    v26[0] = v8;
    v26[1] = v10;
    v26[2] = v11;
    if (!v11)
    {
      v13 = MEMORY[0x1E69AB8F8];
      v14 = v19;
      v15 = v20;
      v19[3] = v20;
      v14[4] = v13;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
      return (*(v18 + 32))(boxed_opaque_existential_0, v3, v15);
    }

    v21 = v8;
    sub_1E1308EC0((v26 + 8), v24);
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    sub_1E1AF118C();
    __swift_project_boxed_opaque_existential_1Tm(v24, v25);
    sub_1E1AF11FC();
    sub_1E1A4C484(v1, v22);
    v12 = swift_allocObject();
    *(v12 + 16) = v21;
    memcpy((v12 + 24), v22, 0x1F9uLL);
    sub_1E1AF138C();

    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    v5 = v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E1A490F8()
{
  result = qword_1ECEBCF98;
  if (!qword_1ECEBCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBCF98);
  }

  return result;
}

CGFloat sub_1E1A491B4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_1E1AF745C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E14F59A8(v5 + 128, &v23);
  if (v24)
  {
    sub_1E1308EC0(&v23, v25);
    __swift_project_boxed_opaque_existential_1Tm(v25, v25[3]);
    if ((sub_1E1AF117C() & 1) == 0)
    {
      v15 = *(v5 + 176);
      __swift_project_boxed_opaque_existential_1Tm((v5 + 224), *(v5 + 248));
      sub_1E13BC274();
      sub_1E1AF12DC();
      v17 = v16;
      (*(v12 + 8))(v14, v11);
      v18 = a4 - (v15 + v17);
      v19 = [a1 traitCollection];
      v20 = sub_1E1AF697C();

      if (v20)
      {
        v26.origin.x = a2;
        v26.origin.y = a3;
        v26.size.width = a4;
        v26.size.height = a5;
        MaxX = CGRectGetMaxX(v26);
        v27.origin.x = a2;
        v27.origin.y = a3;
        v27.size.width = v18;
        v27.size.height = a5;
        a2 = MaxX - CGRectGetWidth(v27);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_1E14F60F8(&v23);
  }

  return a2;
}

uint64_t sub_1E1A493D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v61 = sub_1E1AF1CAC();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF1CBC();
  v62 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1E1AF184C();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF188C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF18BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1E1AF18DC();
  v66 = *(v67 - 8);
  v17 = MEMORY[0x1EEE9AC00](v67);
  v64 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v19 = [a1 traitCollection];
  if (sub_1E1AF696C())
  {

LABEL_4:
    v21 = *MEMORY[0x1E69ABA28];
    v22 = *(v14 + 104);
    v63 = v16;
    v22(v16, v21, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
    v23 = *(sub_1E1AF189C() - 8);
    v61 = *(v23 + 72);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v25 = swift_allocObject();
    v62 = v25;
    *(v25 + 16) = xmmword_1E1B02CD0;
    v58 = v25 + v24;
    v26 = v70;
    v27 = v70[3];
    v28 = v70[4];
    v29 = __swift_project_boxed_opaque_existential_1Tm(v70, v27);
    v77 = v27;
    v78 = *(v28 + 8);
    v30 = __swift_allocate_boxed_opaque_existential_0(&v76);
    (*(*(v27 - 8) + 16))(v30, v29, v27);
    LODWORD(v60) = *MEMORY[0x1E69ABA08];
    v31 = v10;
    v59 = *(v10 + 104);
    v32 = v9;
    v53 = v9;
    v59(v12);
    v75[0] = MEMORY[0x1E69E7CC0];
    v56 = sub_1E1A4C43C(&qword_1EE1D2A80, MEMORY[0x1E69AB9F8]);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
    v57 = sub_1E1383E14();
    v33 = v65;
    v34 = v69;
    sub_1E1AF6EEC();
    sub_1E1AF186C();
    v68 = *(v68 + 8);
    (v68)(v33, v34);
    v54 = *(v31 + 8);
    v54(v12, v32);
    __swift_destroy_boxed_opaque_existential_1(&v76);
    v35 = v26[8];
    v36 = v26[9];
    v37 = __swift_project_boxed_opaque_existential_1Tm(v26 + 5, v35);
    v77 = v35;
    v78 = *(v36 + 8);
    v38 = __swift_allocate_boxed_opaque_existential_0(&v76);
    (*(*(v35 - 8) + 16))(v38, v37, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA440);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1E1B02CC0;
    sub_1E1AF183C();
    v75[0] = v39;
    sub_1E1AF6EEC();
    v40 = v53;
    (v59)(v12, v60, v53);
    sub_1E1AF186C();
    v54(v12, v40);
    (v68)(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(&v76);
    v77 = sub_1E1AF140C();
    v78 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(&v76);
    sub_1E1AF13FC();
    v41 = v64;
    sub_1E1AF18CC();
    sub_1E1AF182C();
    return (*(v66 + 8))(v41, v67);
  }

  v59 = v5;
  v20 = sub_1E1AF698C();

  if (v20)
  {
    goto LABEL_4;
  }

  v43 = v70;
  v44 = v70[3];
  v45 = v70[4];
  v46 = __swift_project_boxed_opaque_existential_1Tm(v70, v44);
  v77 = v44;
  v78 = *(v45 + 8);
  v47 = __swift_allocate_boxed_opaque_existential_0(&v76);
  (*(*(v44 - 8) + 16))(v47, v46, v44);
  v48 = v43[8];
  v49 = v43[9];
  v50 = __swift_project_boxed_opaque_existential_1Tm(v43 + 5, v48);
  v75[3] = v48;
  v75[4] = *(v49 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
  (*(*(v48 - 8) + 16))(boxed_opaque_existential_0, v50, v48);
  (*(v60 + 104))(v4, *MEMORY[0x1E69ABB78], v61);
  sub_1E1300B24((v43 + 33), v74);
  sub_1E1300B24((v43 + 58), v73);
  sub_1E1AF1C7C();
  sub_1E1AF1C9C();
  return (*(v62 + 8))(v7, v59);
}

uint64_t sub_1E1A49D78(void *a1)
{
  if (*(v1 + 168) == 1)
  {
    sub_1E1A48EA4(v9);
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v3 = [a1 traitCollection];
    sub_1E1AF1D9C();

    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v4 = [a1 traitCollection];
    sub_1E1AF1DAC();

    sub_1E1AF107C();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    v6 = *(v1 + 80);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      do
      {
        sub_1E1300B24(v8, v9);
        __swift_project_boxed_opaque_existential_1Tm(v9, v10);
        sub_1E1AF118C();
        __swift_project_boxed_opaque_existential_1Tm(v9, v10);
        sub_1E1AF116C();
        __swift_destroy_boxed_opaque_existential_1(v9);
        v8 += 40;
        --v7;
      }

      while (v7);
    }

    return sub_1E1AF10AC();
  }
}

uint64_t sub_1E1A49F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_1E1AF13BC();
    sub_1E1AF136C();
    v4 = 344;
  }

  else
  {
    sub_1E1AF13AC();
    sub_1E1AF136C();
    v4 = 304;
  }

  sub_1E1300B24(a3 + v4, v6);
  return sub_1E1AF134C();
}

double sub_1E1A49FB4(int a1, id a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = [a2 traitCollection];
  v11 = sub_1E1AF697C();

  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v11)
  {
    MaxX = CGRectGetMaxX(*&v12);
    v19.origin.x = a3;
    v19.origin.y = a4;
    v19.size.width = a5;
    v19.size.height = a6;
    MinX = MaxX - CGRectGetWidth(v19);
  }

  else
  {
    MinX = CGRectGetMinX(*&v12);
  }

  sub_1E1AF10EC();
  sub_1E1AF109C();
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  CGRectGetWidth(v20);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  CGRectGetMaxY(v21);
  sub_1E1AF10EC();
  sub_1E1AF109C();
  return MinX;
}

uint64_t sub_1E1A4A0DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF111C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF184C();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF188C();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF18BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF18DC();
  MEMORY[0x1EEE9AC00](v17);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 168) == 1)
  {
    v30 = v19;
    v31 = v18;
    sub_1E14F59A8(v2 + 88, &v37);
    if (v38)
    {
      sub_1E1308EC0(&v37, v40);
      v29 = v4;
      v28 = v5;
      __swift_project_boxed_opaque_existential_1Tm(v40, v41);
      v27[1] = a1;
      sub_1E1AF118C();
      (*(v14 + 104))(v16, *MEMORY[0x1E69ABA28], v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AE0);
      sub_1E1AF189C();
      v27[0] = swift_allocObject();
      *(v27[0] + 16) = xmmword_1E1B02CC0;
      v22 = v32;
      v23 = v33;
      (*(v32 + 104))(v12, *MEMORY[0x1E69ABA08], v33);
      *&v37 = MEMORY[0x1E69E7CC0];
      sub_1E1A4C43C(&qword_1EE1D2A80, MEMORY[0x1E69AB9F8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
      sub_1E1383E14();
      v24 = v35;
      sub_1E1AF6EEC();
      sub_1E1AF186C();
      (*(v34 + 8))(v9, v24);
      (*(v22 + 8))(v12, v23);
      v38 = sub_1E1AF140C();
      v39 = MEMORY[0x1E69AB908];
      __swift_allocate_boxed_opaque_existential_0(&v37);
      sub_1E1AF13FC();
      sub_1E1AF18CC();
      v25 = v36;
      sub_1E1AF182C();
      (*(v28 + 8))(v25, v29);
      (*(v30 + 8))(v21, v31);
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    sub_1E14F60F8(&v37);
  }

  sub_1E14F59A8(v2 + 88, v40);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1Tm(v40, v41);
    sub_1E1AF118C();
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_1E14F60F8(v40);
  }

  sub_1E14F59A8(v2 + 88, v40);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1Tm(v40, v41);
    sub_1E1AF116C();
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return sub_1E14F60F8(v40);
}

uint64_t ProductAnnotationLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v60 = sub_1E1AF1D6C();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF745C();
  v58 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF111C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = sub_1E1A491B4(a1, a3, a4, a5, a6);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1E1A493D0(a1, v24);
  v32 = sub_1E1A49FB4(v24, a1, v25, v27, v29, v31);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1E1A49D78(a1);
  sub_1E1A49FB4(v21, a1, v32, v34, v36, v38);
  sub_1E1A4A0DC(a1);
  sub_1E14F59A8((v6 + 16), &v63);
  if (v64)
  {
    v57 = v16;
    v62 = a2;
    sub_1E1308EC0(&v63, v65);
    __swift_project_boxed_opaque_existential_1Tm(v65, v66);
    if (sub_1E1AF117C())
    {
      __swift_destroy_boxed_opaque_existential_1(v65);
    }

    else
    {
      v39 = v6[25];
      v56 = v6[26];
      v40 = v6[27];
      v41 = [a1 traitCollection];
      v42 = sub_1E1AF697C();

      if (*(v7 + 504) == 1)
      {
        __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
        sub_1E1AF11CC();
        v60 = v43;
        __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
        sub_1E1AF115C();
        v48 = (v58 + 1);
        if (v42)
        {
          CGRectGetMinX(*&v44);
          v59 = v40;
        }

        else
        {
          CGRectGetMaxX(*&v44);
          v59 = v39;
        }

        v58 = __swift_project_boxed_opaque_existential_1Tm(v7 + 28, v7[31]);
        v49 = v61;
        sub_1E13BC274();
        sub_1E1AF12DC();
        (*v48)(v49, v57);
        __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
        sub_1E1AF115C();
        CGRectGetMinY(v67);
      }

      else
      {
        v50 = a3;
        v51 = a4;
        v52 = a5;
        v53 = a6;
        if (v42)
        {
          CGRectGetMinX(*&v50);
        }

        else
        {
          CGRectGetMaxX(*&v50);
        }

        sub_1E1AF110C();
        sub_1E1AF1D2C();
        (*(v59 + 8))(v15, v60);
      }

      __swift_project_boxed_opaque_existential_1Tm(v65, v66);
      sub_1E1AF116C();
      __swift_destroy_boxed_opaque_existential_1(v65);
    }
  }

  else
  {
    sub_1E14F60F8(&v63);
  }

  sub_1E1AF106C();
  v54 = *(v19 + 8);
  v54(v21, v18);
  return (v54)(v24, v18);
}

uint64_t ProductAnnotationLayout.ItemLayout.Metrics.listTextTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t ProductAnnotationLayout.ItemLayout.Metrics.horizontalPairTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t ProductAnnotationLayout.ItemLayout.Metrics.init(headingArtworkTopSpace:headingArtworkBottomSpace:textSpacing:listTextTopSpace:horizontalPairTextSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  sub_1E1308EC0(a1, a6);
  sub_1E1308EC0(a2, a6 + 40);
  sub_1E1308EC0(a3, a6 + 80);
  sub_1E1308EC0(a4, a6 + 120);

  return sub_1E1308EC0(a5, a6 + 160);
}

uint64_t ProductAnnotationLayout.ItemLayout.init(metrics:headingText:headingArtwork:text:listText:leadingTextPairs:trailingTextPairs:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *(a1 + 176);
  *(a8 + 160) = *(a1 + 160);
  *(a8 + 176) = v14;
  *(a8 + 192) = *(a1 + 192);
  v15 = *(a1 + 112);
  *(a8 + 96) = *(a1 + 96);
  *(a8 + 112) = v15;
  v16 = *(a1 + 144);
  *(a8 + 128) = *(a1 + 128);
  *(a8 + 144) = v16;
  v17 = *(a1 + 48);
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = v17;
  v18 = *(a1 + 80);
  *(a8 + 64) = *(a1 + 64);
  *(a8 + 80) = v18;
  v19 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v19;
  sub_1E1308EC0(a3, a8 + 200);
  sub_1E1308EC0(a2, a8 + 240);
  sub_1E1308EC0(a4, a8 + 280);
  result = sub_1E1308EC0(a5, a8 + 320);
  *(a8 + 360) = a6;
  *(a8 + 368) = a7;
  return result;
}

double ProductAnnotationLayout.ItemLayout.measurements(fitting:in:)(void *a1)
{
  sub_1E1A4B13C(a1, v6);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  v2 = [a1 traitCollection];
  sub_1E1AF1DAC();
  v4 = v3;

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1E1A4B13C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v68 = a1;
  v51 = a2;
  v64 = sub_1E1AF1CAC();
  v4 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E1AF1CBC();
  v6 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E1AF13EC();
  v52 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v51 - v12;
  sub_1E1AF13CC();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_1E1300B24((v2 + 10), v88);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 25, v2[28]);
  if (sub_1E1AF112C())
  {
    __swift_project_boxed_opaque_existential_1Tm(v2 + 25, v2[28]);
    sub_1E1AF11FC();
    sub_1E1A4C3D0(v2, v72);
    v14 = swift_allocObject();
    memcpy((v14 + 16), v72, 0x178uLL);
    sub_1E1AF138C();

    __swift_destroy_boxed_opaque_existential_1(&v73);
    *(v13 + 16) = 1;
  }

  __swift_project_boxed_opaque_existential_1Tm(v2 + 30, v2[33]);
  if (sub_1E1AF112C())
  {
    __swift_project_boxed_opaque_existential_1Tm(v2 + 30, v2[33]);
    sub_1E1AF11FC();
    sub_1E1300B24(v88, &v73);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    sub_1E1308EC0(&v73, v15 + 24);

    sub_1E1AF138C();

    __swift_destroy_boxed_opaque_existential_1(v72);
    swift_beginAccess();
    *(v13 + 16) = 1;
  }

  __swift_project_boxed_opaque_existential_1Tm(v2 + 35, v2[38]);
  if (sub_1E1AF112C())
  {
    __swift_project_boxed_opaque_existential_1Tm(v2 + 35, v2[38]);
    sub_1E1AF11FC();
    sub_1E1300B24(v88, &v73);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    sub_1E1308EC0(&v73, v16 + 24);

    sub_1E1AF138C();

    __swift_destroy_boxed_opaque_existential_1(v72);
    swift_beginAccess();
    *(v13 + 16) = 1;
  }

  __swift_project_boxed_opaque_existential_1Tm(v2 + 40, v2[43]);
  if (sub_1E1AF112C())
  {
    __swift_project_boxed_opaque_existential_1Tm(v2 + 40, v2[43]);
    sub_1E1AF11FC();
    sub_1E1A4C3D0(v2, v72);
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    memcpy((v17 + 24), v72, 0x178uLL);

    sub_1E1AF138C();

    __swift_destroy_boxed_opaque_existential_1(&v73);
    swift_beginAccess();
    *(v13 + 16) = 1;
  }

  v18 = v2[45];
  v69 = v2[46];
  v70 = v18;
  v19 = *(v18 + 16);
  result = swift_beginAccess();
  v67 = v19;
  if (v19)
  {
    v21 = 0;
    v22 = v70 + 32;
    v23 = v69 + 32;
    v57 = *MEMORY[0x1E69ABB80];
    v55 = (v6 + 16);
    v56 = (v4 + 104);
    v53 = (v52 + 8);
    v54 = (v6 + 8);
    v58 = v13;
    while (v21 < *(v70 + 16))
    {
      result = sub_1E1300B24(v22, &v73);
      v36 = *(v69 + 16);
      if (v21 == v36)
      {
        __swift_destroy_boxed_opaque_existential_1(&v73);
        goto LABEL_19;
      }

      if (v21 >= v36)
      {
        goto LABEL_21;
      }

      sub_1E1308EC0(&v73, v72);
      sub_1E1300B24(v23, &v72[40]);
      sub_1E1308EC0(v72, v85);
      sub_1E1308EC0(&v72[40], v82);
      v37 = [v68 traitCollection];
      v38 = sub_1E1AF698C();

      if (v38)
      {
        v39 = v60;
        sub_1E1AF13CC();
        __swift_project_boxed_opaque_existential_1Tm(v85, v86);
        sub_1E1AF11FC();
        v40 = v59;
        sub_1E1AF13DC();
        __swift_destroy_boxed_opaque_existential_1(&v73);
        v66 = v23;
        v41 = *v53;
        v42 = v39;
        v43 = v3;
        v44 = v65;
        (*v53)(v42, v65);
        __swift_project_boxed_opaque_existential_1Tm(v82, v83);
        sub_1E1AF11FC();
        sub_1E1300B24(v88, v77);
        v45 = swift_allocObject();
        sub_1E1308EC0(v77, v45 + 16);
        v80 = v44;
        v81 = MEMORY[0x1E69AB8F8];
        __swift_allocate_boxed_opaque_existential_0(v79);
        sub_1E1AF13DC();

        __swift_destroy_boxed_opaque_existential_1(&v73);
        v46 = v40;
        v13 = v58;
        v47 = v44;
        v3 = v43;
        v41(v46, v47);
        v23 = v66;
      }

      else
      {
        v24 = v86;
        v25 = v87;
        v26 = __swift_project_boxed_opaque_existential_1Tm(v85, v86);
        v74 = v24;
        v75 = *(v25 + 8);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v73);
        (*(*(v24 - 8) + 16))(boxed_opaque_existential_0, v26, v24);
        v28 = v83;
        v29 = v84;
        v30 = __swift_project_boxed_opaque_existential_1Tm(v82, v83);
        v80 = v28;
        v81 = *(v29 + 8);
        v31 = __swift_allocate_boxed_opaque_existential_0(v79);
        (*(*(v28 - 8) + 16))(v31, v30, v28);
        (*v56)(v63, v57, v64);
        v78 = 0;
        memset(v77, 0, sizeof(v77));
        sub_1E1300B24((v3 + 20), &v76);
        v32 = v61;
        sub_1E1AF1C7C();
        v80 = type metadata accessor for HorizontalPairLayoutMeasurable();
        v81 = sub_1E1A4C43C(&qword_1ECEBCFA0, type metadata accessor for HorizontalPairLayoutMeasurable);
        v33 = __swift_allocate_boxed_opaque_existential_0(v79);
        v34 = v62;
        (*v55)(v33, v32, v62);
        sub_1E1AF1B8C();
        __swift_destroy_boxed_opaque_existential_1(v79);
        __swift_project_boxed_opaque_existential_1Tm(&v73, v74);
        sub_1E1AF11FC();
        (*v54)(v32, v34);
        __swift_destroy_boxed_opaque_existential_1(&v73);
      }

      ++v21;
      sub_1E1300B24(v88, &v73);
      v35 = swift_allocObject();
      *(v35 + 16) = v13;
      sub_1E1308EC0(&v73, v35 + 24);

      sub_1E1AF138C();

      __swift_destroy_boxed_opaque_existential_1(v79);
      *(v13 + 16) = 1;
      __swift_destroy_boxed_opaque_existential_1(v82);
      result = __swift_destroy_boxed_opaque_existential_1(v85);
      v22 += 40;
      v23 += 40;
      if (v67 == v21)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_19:
    v48 = v51;
    v49 = v65;
    v51[3] = v65;
    v48[4] = MEMORY[0x1E69AB8F8];
    v50 = __swift_allocate_boxed_opaque_existential_0(v48);
    (*(v52 + 32))(v50, v71, v49);
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  return result;
}

uint64_t ProductAnnotationLayout.ItemLayout.placeChildren(relativeTo:in:)(void *a1)
{
  sub_1E1A4B13C(a1, v5);
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v2 = [a1 traitCollection];
  sub_1E1AF1D9C();

  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v3 = [a1 traitCollection];
  sub_1E1AF1DAC();

  sub_1E1AF107C();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1E1A4BD54(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a2, v4);
  sub_1E1AF134C();
  sub_1E1300B24(a2 + 40, v4);
  return sub_1E1AF135C();
}

uint64_t sub_1E1A4BDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    sub_1E1300B24(a3, v6);
  }

  else
  {
    v6[3] = MEMORY[0x1E69E63B0];
    v6[4] = MEMORY[0x1E69ABBA8];
    v6[0] = 0;
  }

  return sub_1E1AF134C();
}

uint64_t sub_1E1A4BE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    sub_1E1300B24(a3 + 120, v6);
  }

  else
  {
    v6[3] = MEMORY[0x1E69E63B0];
    v6[4] = MEMORY[0x1E69ABBA8];
    v6[0] = 0;
  }

  return sub_1E1AF134C();
}

uint64_t sub_1E1A4BEB8(void *a1)
{
  sub_1E1A4B13C(a1, v5);
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v2 = [a1 traitCollection];
  sub_1E1AF1D9C();

  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  v3 = [a1 traitCollection];
  sub_1E1AF1DAC();

  sub_1E1AF107C();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

double sub_1E1A4BFF8(void *a1)
{
  sub_1E1A4B13C(a1, v6);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  v2 = [a1 traitCollection];
  sub_1E1AF1DAC();
  v4 = v3;

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1E1A4C0DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 329))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1A4C124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 329) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 329) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1E1A4C1FC(double a1)
{
  sub_1E1AF1C8C();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  sub_1E1AF11CC();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return a1;
}

double sub_1E1A4C29C(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v3 = [a1 traitCollection];
  sub_1E1AF1DAC();
  v5 = v4;

  return v5;
}

uint64_t type metadata accessor for HorizontalPairLayoutMeasurable()
{
  result = qword_1ECEBCFA8;
  if (!qword_1ECEBCFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1A4C43C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1A4C4F0()
{
  result = sub_1E1AF1CBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E1A4C560(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.isPreparingNextPage.getter(a1, WitnessTable);
}

uint64_t PaginatedPagePresenter.isPreparingNextPage.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v4);
  v2 = v5;
  if (v5 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_1E1360B10(v4);
  }

  return v2;
}

BOOL sub_1E1A4C610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.shouldPrepareNextPage.getter(a1, WitnessTable);
}

BOOL PaginatedPagePresenter.shouldPrepareNextPage.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&v5);
  if (v8)
  {
    sub_1E1360B10(&v5);
    return 0;
  }

  else
  {

    v4[0] = v5;
    v4[1] = v6;
    v2 = *(&v6 + 1) != 0;
    sub_1E13E44F8(v4);
  }

  return v2;
}

void sub_1E1A4C6E0()
{
  swift_getWitnessTable();

  PaginatedPagePresenter.prepareNextPage()();
}

double PaginatedPagePresenter.nextPage.getter@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  (*(a1 + 24))(v5);
  if (v7)
  {
    sub_1E1301CF0(v5, a2);
  }

  else
  {

    result = *v5;
    v4 = v5[1];
    *a2 = v5[0];
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_1E1A4C7EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.isPreparingNextPage.getter(a1, WitnessTable);
}

BOOL sub_1E1A4C840(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return PaginatedPagePresenter.shouldPrepareNextPage.getter(a1, WitnessTable);
}

void sub_1E1A4C894()
{
  swift_getWitnessTable();

  PaginatedPagePresenter.prepareNextPage()();
}

void *FlowAction.__allocating_init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char *a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v57 = a8;
  v61 = a2;
  v62 = a3;
  v63 = a17;
  v64 = a4;
  v59 = a1;
  v60 = a15;
  v58 = a16;
  v65 = a10;
  v56 = sub_1E1AEFEAC();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v22 = *a5;
  v23 = *(a9 + 32);
  LOBYTE(a5) = *(a9 + 40);
  v24 = *a12;
  v25 = *a13;
  v26 = *a14;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v27 = v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = (v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v28 = 0;
  v28[1] = 0;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = v22;
  v66 = a6;
  sub_1E134FD1C(a6, v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
  v29 = (v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
  v30 = v57;
  *v29 = a7;
  v29[1] = v30;
  v31 = v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  v32 = *(a9 + 16);
  *v31 = *a9;
  *(v31 + 1) = v32;
  *(v31 + 4) = v23;
  v31[40] = a5;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = v24;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = v25;
  *(v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = v26;
  v33 = v59;
  v34 = (v21 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  v35 = v63;
  *v34 = v58;
  v34[1] = v35;
  sub_1E134FD1C(v33, v72, &unk_1ECEB5670);
  v36 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v37 = sub_1E1AF3E1C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 16);
  v63 = a11;
  v39(v21 + v36, a11, v37);
  v40 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v41 = sub_1E1AF46DC();
  (*(*(v41 - 8) + 56))(v21 + v40, 1, 1, v41);
  v42 = (v21 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v42 = 0u;
  v42[1] = 0u;
  v43 = v21 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v72, &v69, &unk_1ECEB5670);
  if (*(&v70 + 1))
  {
    v44 = v70;
    *v43 = v69;
    *(v43 + 1) = v44;
    *(v43 + 4) = v71;
    v45 = v64;
  }

  else
  {
    v45 = v64;

    v46 = v54;
    sub_1E1AEFE9C();
    v47 = sub_1E1AEFE7C();
    v49 = v48;
    (*(v55 + 8))(v46, v56);
    v67 = v47;
    v68 = v49;
    sub_1E1AF6F6C();
    sub_1E1308058(&v69, &unk_1ECEB5670);
  }

  sub_1E1308058(v72, &unk_1ECEB5670);
  v50 = v62;
  v21[2] = v61;
  v21[3] = v50;
  v51 = v60;
  v21[4] = v45;
  v21[5] = v51;

  v52 = v65;
  FlowAction.setPageData(_:)(v65);

  (*(v38 + 8))(v63, v37);
  sub_1E1308058(v52, &qword_1ECEB2DF0);
  sub_1E1308058(v66, &unk_1ECEB4B60);
  sub_1E1308058(v33, &unk_1ECEB5670);
  return v21;
}

uint64_t FlowAction.setPageData(_:)(uint64_t a1)
{
  sub_1E134FD1C(a1, v8, &qword_1ECEB2DF0);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCFC8);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1E1308EC0(&v9, &v12);
        sub_1E1308EC0(&v12, &v9);
        v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
        swift_beginAccess();
        v4 = &v9;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1E1308058(v8, &qword_1ECEB2DF0);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  sub_1E1308058(&v9, &qword_1ECEBCFB8);
  sub_1E134FD1C(a1, &v12, &qword_1ECEB2DF0);
  if (!*(&v13 + 1))
  {
    sub_1E1308058(&v12, &qword_1ECEB2DF0);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v6 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
    swift_beginAccess();
    sub_1E1A4EFD4(&v12, v1 + v6);
    return swift_endAccess();
  }

  sub_1E1301CF0(&v12, &v9);
  sub_1E137A5C4(&v9, &v12);
  v5 = swift_allocObject();
  sub_1E1301CF0(&v12, (v5 + 16));
  *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCFC0);
  v14 = &off_1F5C5FBE0;
  __swift_allocate_boxed_opaque_existential_0(&v12);
  sub_1E1AF53BC();
  __swift_destroy_boxed_opaque_existential_1(&v9);
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  swift_beginAccess();
  v4 = &v12;
LABEL_9:
  sub_1E1A4EFD4(v4, v1 + v3);
  return swift_endAccess();
}

uint64_t FlowAction.pageData<A>(as:or:)@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35[1] = a3;
  v36 = a2;
  v38 = a5;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF6D9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v16 = (v5 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData);
  swift_beginAccess();
  v17 = v16[3];
  if (v17)
  {
    v18 = v16[4];
    v19 = __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
    v35[0] = v35;
    v20 = v9;
    v21 = *(v17 - 8);
    v22 = MEMORY[0x1EEE9AC00](v19);
    v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    (*(v18 + 8))(v39, v17, v18);
    (*(v21 + 8))(v24, v17);
    v9 = v20;
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0);
  v25 = swift_dynamicCast();
  v26 = *(v7 + 56);
  v26(v15, v25 ^ 1u, 1, a4);
  (*(v10 + 16))(v12, v15, v9);
  if ((*(v7 + 48))(v12, 1, a4) == 1)
  {
    v27 = *(v10 + 8);
    v37 = v9;
    v28 = v27(v12, v9);
    v36(v39, v28);
    v29 = v38;
    v30 = swift_dynamicCast();
    v26(v29, v30 ^ 1u, 1, a4);
    return v27(v15, v37);
  }

  else
  {
    v32 = *(v7 + 32);
    v33 = v37;
    v32(v37, v12, a4);
    v34 = v38;
    v32(v38, v33, a4);
    v26(v34, 0, 1, a4);
    return (*(v10 + 8))(v15, v9);
  }
}

AppStoreKit::FlowPage_optional __swiftcall FlowPage.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF750C();

  v5 = 0;
  v6 = 37;
  switch(v3)
  {
    case 0:
      goto LABEL_51;
    case 1:
      v5 = 1;
      goto LABEL_51;
    case 2:
      v5 = 2;
      goto LABEL_51;
    case 3:
      v5 = 3;
      goto LABEL_51;
    case 4:
      v5 = 4;
      goto LABEL_51;
    case 5:
      v5 = 5;
      goto LABEL_51;
    case 6:
      v5 = 6;
      goto LABEL_51;
    case 7:
      v5 = 7;
      goto LABEL_51;
    case 8:
      v5 = 8;
      goto LABEL_51;
    case 9:
      v5 = 9;
      goto LABEL_51;
    case 10:
      v5 = 10;
      goto LABEL_51;
    case 11:
      v5 = 11;
      goto LABEL_51;
    case 12:
      v5 = 12;
      goto LABEL_51;
    case 13:
      v5 = 13;
      goto LABEL_51;
    case 14:
      v5 = 14;
      goto LABEL_51;
    case 15:
      v5 = 15;
      goto LABEL_51;
    case 16:
      v5 = 16;
      goto LABEL_51;
    case 17:
      v5 = 17;
      goto LABEL_51;
    case 18:
      v5 = 18;
      goto LABEL_51;
    case 19:
      v5 = 19;
      goto LABEL_51;
    case 20:
      v5 = 20;
      goto LABEL_51;
    case 21:
      v5 = 21;
      goto LABEL_51;
    case 22:
      v5 = 22;
      goto LABEL_51;
    case 23:
      v5 = 23;
      goto LABEL_51;
    case 24:
      v5 = 24;
      goto LABEL_51;
    case 25:
      v5 = 25;
      goto LABEL_51;
    case 26:
      v5 = 26;
      goto LABEL_51;
    case 27:
      v5 = 27;
      goto LABEL_51;
    case 28:
      v5 = 28;
      goto LABEL_51;
    case 29:
      v5 = 29;
      goto LABEL_51;
    case 30:
      v5 = 30;
      goto LABEL_51;
    case 31:
      v5 = 31;
      goto LABEL_51;
    case 32:
      v5 = 32;
      goto LABEL_51;
    case 33:
      v5 = 33;
      goto LABEL_51;
    case 34:
      v5 = 34;
      goto LABEL_51;
    case 35:
      v5 = 35;
      goto LABEL_51;
    case 36:
      v5 = 36;
LABEL_51:
      v6 = v5;
      break;
    case 37:
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    default:
      v6 = 55;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FlowPage.rawValue.getter()
{
  result = 0x686372616573;
  switch(*v0)
  {
    case 1:
      result = 0x746375646F7270;
      break;
    case 2:
      result = 0x5563696D616E7964;
      break;
    case 3:
      result = 0x77656956626577;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    case 5:
      result = 0x746E6F4377656976;
      break;
    case 6:
      result = 0x7972656C6C6167;
      break;
    case 7:
      result = 0x6F65646976;
      break;
    case 8:
      result = 1701273968;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 0xA:
      result = 0x7472616843706F74;
      break;
    case 0xB:
      result = 0x73657461647075;
      break;
    case 0xC:
      result = 0x7961646F74;
      break;
    case 0xD:
      result = 0x656C6369747261;
      break;
    case 0xE:
      result = 0x6573616863727570;
      break;
    case 0xF:
    case 0x21:
    case 0x2C:
      result = 0xD000000000000014;
      break;
    case 0x10:
      result = 0x7665526574697277;
      break;
    case 0x11:
      result = 0x73776569766572;
      break;
    case 0x12:
      result = 0x746E756F636361;
      break;
    case 0x13:
      result = 0x65636E616E6966;
      break;
    case 0x14:
      result = 0x75506E6564646968;
      break;
    case 0x15:
      result = 7304045;
      break;
    case 0x16:
      result = 0x486E6F6973726576;
      break;
    case 0x17:
      result = 0x696472616F626E6FLL;
      break;
    case 0x18:
      result = 0x6544776569766572;
      break;
    case 0x19:
      result = 0xD000000000000013;
      break;
    case 0x1A:
      result = 0x656461637261;
      break;
    case 0x1B:
      result = 0x7553656461637261;
      break;
    case 0x1C:
      result = 0xD000000000000013;
      break;
    case 0x1D:
    case 0x20:
      result = 0xD000000000000011;
      break;
    case 0x1E:
      result = 0x6557656461637261;
      break;
    case 0x1F:
      result = 0xD00000000000001CLL;
      break;
    case 0x22:
    case 0x31:
      result = 0xD000000000000010;
      break;
    case 0x23:
      result = 0xD000000000000013;
      break;
    case 0x24:
    case 0x34:
      result = 0xD000000000000016;
      break;
    case 0x25:
      result = 0xD000000000000017;
      break;
    case 0x26:
      result = 0x434174726F706572;
      break;
    case 0x27:
      result = 0xD00000000000001ALL;
      break;
    case 0x28:
      result = 0x6568536572616873;
      break;
    case 0x29:
      result = 0x6563614665676170;
      break;
    case 0x2A:
      result = 0x4479636176697270;
      break;
    case 0x2B:
      result = 0xD000000000000012;
      break;
    case 0x2D:
      result = 0x746E657645707061;
      break;
    case 0x2E:
    case 0x33:
      result = 0xD000000000000015;
      break;
    case 0x2F:
      result = 0x657449726566666FLL;
      break;
    case 0x30:
      result = 0x6472614374786574;
      break;
    case 0x32:
      result = 0x7465536775626564;
      break;
    case 0x35:
      result = 0xD00000000000001BLL;
      break;
    case 0x36:
      result = 0x73656D6167;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E1A4DC60()
{
  v0 = FlowPage.rawValue.getter();
  v2 = v1;
  if (v0 == FlowPage.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

uint64_t sub_1E1A4DCFC()
{
  sub_1E1AF762C();
  FlowPage.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1A4DD64()
{
  FlowPage.rawValue.getter();
  sub_1E1AF5F0C();
}

uint64_t sub_1E1A4DDC8()
{
  sub_1E1AF762C();
  FlowPage.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

unint64_t sub_1E1A4DE38@<X0>(unint64_t *a1@<X8>)
{
  result = FlowPage.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FlowPresentationContext.presentationStyle.getter()
{
  v1 = *v0;
  if (v1 <= 5)
  {
    if (v1 == 4)
    {
      return 2;
    }

    if (v1 == 5)
    {
      return 1;
    }
  }

  else
  {
    switch(v1)
    {
      case 6u:
        return 0;
      case 7u:
        return 5;
      case 8u:
        return 7;
    }
  }

  return 0;
}

AppStoreKit::FlowPresentationContext_optional __swiftcall FlowPresentationContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FlowPresentationContext.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x7265666E69;
    v8 = 1752397168;
    v9 = 0x4D746E6573657270;
    if (v1 != 3)
    {
      v9 = 0xD000000000000015;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x61746544776F6873;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    v3 = 0x7463656C6573;
    if (v1 != 9)
    {
      v3 = 0x6563616C706572;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    v5 = 0xD00000000000001ALL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000016;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E1A4E0A8()
{
  sub_1E1AF762C();
  sub_1E19DB744();
  return sub_1E1AF767C();
}

uint64_t sub_1E1A4E0F8()
{
  sub_1E1AF762C();
  sub_1E19DB744();
  return sub_1E1AF767C();
}

unint64_t sub_1E1A4E148@<X0>(unint64_t *a1@<X8>)
{
  result = FlowPresentationContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

AppStoreKit::FlowAnimationBehavior_optional __swiftcall FlowAnimationBehavior.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FlowAnimationBehavior.rawValue.getter()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x737961776C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265666E69;
  }
}

uint64_t sub_1E1A4E21C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7265666E69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x726576656ELL;
  if (*a2 != 1)
  {
    v8 = 0x737961776C61;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265666E69;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E1A4E308()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1A4E3A0()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1A4E424()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E1A4E4C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726576656ELL;
  if (v2 != 1)
  {
    v5 = 0x737961776C61;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265666E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static FlowOrigin.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616E7265747865;
  }

  else
  {
    v3 = 0x7070616E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616E7265747865;
  }

  else
  {
    v5 = 0x7070616E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t FlowOrigin.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C616E7265747865;
  }

  else
  {
    return 0x7070616E69;
  }
}

AppStoreKit::FlowOrigin_optional __swiftcall FlowOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E1A4E658()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1A4E6D8()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1A4E744()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1A4E7C0@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E1A4E820(uint64_t *a1@<X8>)
{
  v2 = 0x7070616E69;
  if (*v1)
  {
    v2 = 0x6C616E7265747865;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E1A4E85C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616E7265747865;
  }

  else
  {
    v3 = 0x7070616E69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C616E7265747865;
  }

  else
  {
    v5 = 0x7070616E69;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

unint64_t FlowAction.debugDescription.getter()
{
  sub_1E1AF6FEC();

  v0 = sub_1E1AF6F1C();
  MEMORY[0x1E68FECA0](v0);

  MEMORY[0x1E68FECA0](0x3A65676170202C22, 0xE900000000000020);
  v1 = FlowPage.rawValue.getter();
  MEMORY[0x1E68FECA0](v1);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

void *FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, char *a13, unsigned __int8 *a14, uint64_t a15, uint64_t a16, char *a17)
{
  v18 = v17;
  v62 = a8;
  v61 = a7;
  v69 = a4;
  v68 = a3;
  v67 = a2;
  v63 = a1;
  v65 = a17;
  v66 = a15;
  v64 = a16;
  v71 = a14;
  v72 = a11;
  v70 = a10;
  v58 = sub_1E1AEFEAC();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v56 - v23;
  v25 = sub_1E1AF3E1C();
  v60 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26) = *a5;
  v28 = *(a9 + 32);
  v29 = *(a9 + 40);
  v30 = *a12;
  v31 = *a13;
  v59 = *v71;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v32 = v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v32 = 0u;
  *(v32 + 1) = 0u;
  *(v32 + 4) = 0;
  v33 = (v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v33 = 0;
  v33[1] = 0;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = v26;
  v71 = a6;
  sub_1E134FD1C(a6, v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
  v34 = (v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
  v35 = v62;
  *v34 = v61;
  v34[1] = v35;
  v36 = v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  v37 = *(a9 + 16);
  *v36 = *a9;
  *(v36 + 1) = v37;
  *(v36 + 4) = v28;
  v38 = v63;
  v36[40] = v29;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = v30;
  v39 = v60;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = v31;
  *(v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = v59;
  v40 = (v18 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
  v41 = v65;
  *v40 = v64;
  v40[1] = v41;
  sub_1E134FD1C(v38, v81, &unk_1ECEB5670);
  v42 = *(v39 + 16);
  v65 = v27;
  v42(v27, v72, v25);
  v43 = sub_1E1AF46DC();
  (*(*(v43 - 8) + 56))(v24, 1, 1, v43);
  v44 = (v18 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v44 = 0u;
  v44[1] = 0u;
  sub_1E134FD1C(v81, &v75, &unk_1ECEB5670);
  if (*(&v76 + 1))
  {
    v78 = v75;
    v79 = v76;
    v80 = v77;
    v45 = v69;
  }

  else
  {
    v45 = v69;

    v46 = v56;
    sub_1E1AEFE9C();
    v47 = sub_1E1AEFE7C();
    v49 = v48;
    (*(v57 + 8))(v46, v58);
    v73 = v47;
    v74 = v49;
    sub_1E1AF6F6C();
    sub_1E1308058(&v75, &unk_1ECEB5670);
  }

  sub_1E1308058(v81, &unk_1ECEB5670);
  v50 = v18 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v50 + 4) = v80;
  v51 = v79;
  *v50 = v78;
  *(v50 + 1) = v51;
  sub_1E137F600(v24, v18 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  v52 = v68;
  v18[2] = v67;
  v18[3] = v52;
  v53 = v66;
  v18[4] = v45;
  v18[5] = v53;
  (*(v39 + 32))(v18 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v65, v25);

  v54 = v70;
  FlowAction.setPageData(_:)(v70);

  (*(v39 + 8))(v72, v25);
  sub_1E1308058(v54, &qword_1ECEB2DF0);
  sub_1E1308058(v71, &unk_1ECEB4B60);
  sub_1E1308058(v38, &unk_1ECEB5670);
  return v18;
}

uint64_t sub_1E1A4EFD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCFB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *FlowAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v75 = a2;
  v6 = *v4;
  v73 = v3;
  v74 = v6;
  v7 = sub_1E1AF39DC();
  v78 = *(v7 - 8);
  v79 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v72 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66 - v12;
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v68 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v70 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v66 - v20;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v22 = v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v23 = (v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
  *v23 = 0;
  v23[1] = 0;
  v76 = a1;
  sub_1E1AF381C();
  sub_1E1A5317C();
  sub_1E1AF36DC();
  v71 = v15;
  v25 = *(v15 + 8);
  v24 = v15 + 8;
  v77 = v14;
  v26 = v14;
  v27 = v25;
  (v25)(v21, v26);
  v28 = v82;
  if (v82 == 55)
  {
    v29 = sub_1E1AF5A7C();
    sub_1E1A55828(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v30 = 1701273968;
    v31 = v74;
    v30[1] = 0xE400000000000000;
    v30[2] = v31;
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x1E69AB690], v29);
    swift_willThrow();
    (*(v78 + 8))(v75, v79);
    (v27)(v76, v77);

    sub_1E1308058(v22, &qword_1ECEBCFB8);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = v82;
    v32 = v76;
    v66 = v28;
    sub_1E1AF381C();
    sub_1E1AF36FC();
    v33 = v77;
    (v27)(v21);
    sub_1E137F600(v13, v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
    sub_1E1AF381C();
    sub_1E1A531D0();
    sub_1E1AF369C();
    (v27)(v21, v33);
    *(v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = v82;
    sub_1E1AF381C();
    sub_1E1A53224();
    sub_1E1AF369C();
    (v27)(v21, v33);
    *(v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = v82;
    sub_1E1AF381C();
    sub_1E1A53278();
    sub_1E1AF369C();
    (v27)(v21, v33);
    *(v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = v82;
    sub_1E1AF381C();
    v34 = sub_1E1AF37CC();
    v36 = v35;
    (v27)(v21, v33);
    v37 = (v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
    *v37 = v34;
    v37[1] = v36;
    sub_1E1AF381C();
    v38 = v75;
    v67 = *(v78 + 16);
    v67(v69, v75, v79);
    sub_1E15D7EC0();
    sub_1E1AF464C();
    v39 = v84;
    v40 = v85;
    v41 = v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
    v42 = v83;
    *v41 = v82;
    *(v41 + 1) = v42;
    *(v41 + 4) = v39;
    v41[40] = v40;
    sub_1E1AF381C();
    sub_1E1A532CC();
    sub_1E1AF36DC();
    v43 = v77;
    v69 = v27;
    (v27)(v21, v77);
    v44 = *(&v82 + 1);
    v45 = v32;
    v46 = v43;
    v47 = v24;
    if (*(&v82 + 1))
    {
      v48 = v38;
      v49 = v82;
    }

    else if (v66 <= 0x31 && ((1 << v66) & 0x31400135D000CLL) != 0)
    {
      v48 = v38;
      v49 = sub_1E1AF4CFC();
    }

    else
    {
      v48 = v38;
      v49 = sub_1E1AF4D0C();
    }

    v50 = v79;
    v51 = (v4 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
    *v51 = v49;
    v51[1] = v44;
    v52 = v70;
    (*(v71 + 16))(v70, v45, v46);
    v53 = v72;
    v67(v72, v48, v50);
    v54 = v73;
    v55 = Action.init(deserializing:using:)(v52, v53);
    v56 = v78;
    if (v54)
    {
      (*(v78 + 8))(v48, v50);
      (v69)(v45, v46);
    }

    else
    {
      v4 = v55;
      v73 = v47;
      v57 = v46;
      v86 = v66;
      v58 = v68;
      sub_1E1AF381C();
      v59 = sub_1E1A4FA5C(&v86, v58, v48, &v82);
      v60 = v69;
      (v69)(v58, v57, v59);
      v61 = *(&v83 + 1);
      if (*(&v83 + 1))
      {
        v62 = __swift_project_boxed_opaque_existential_1Tm(&v82, *(&v83 + 1));
        *(&v81 + 1) = v61;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v80);
        v64 = v62;
        v60 = v69;
        (*(*(v61 - 8) + 16))(boxed_opaque_existential_0, v64, v61);
        __swift_destroy_boxed_opaque_existential_1(&v82);
      }

      else
      {
        sub_1E1308058(&v82, &qword_1ECEBCFB8);
        v80 = 0u;
        v81 = 0u;
      }

      FlowAction.setPageData(_:)(&v80);
      (*(v56 + 8))(v75, v79);
      v60(v76, v57);
      sub_1E1308058(&v80, &qword_1ECEB2DF0);
    }
  }

  return v4;
}

double sub_1E1A4FA5C@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v317 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v313 - v8;
  v10 = sub_1E1AF5A6C();
  v315 = *(v10 - 8);
  v316 = v10;
  v11 = *(v315 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v313 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v313 - v14;
  v324 = sub_1E1AF39DC();
  v319 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v318 = v16;
  v323 = &v313 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_1E1AF380C();
  v17 = *(v322 - 1);
  MEMORY[0x1EEE9AC00](v322);
  v320 = v18;
  v321 = &v313 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (sub_1E1AF37AC())
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v314 = a4;
    switch(v19)
    {
      case 0:
        v21 = v321;
        v22 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v23 = v319;
        v24 = v323;
        v25 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v26 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v27 = (v320 + *(v23 + 80) + v26) & ~*(v23 + 80);
        v28 = swift_allocObject();
        (*(v17 + 32))(v28 + v26, v21, v22);
        (*(v23 + 32))(v28 + v27, v24, v25);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD098);
        v30 = v314;
        v314[3] = v29;
        v30[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v30);
        type metadata accessor for SearchAction();
        goto LABEL_36;
      case 1:
        v230 = v321;
        v231 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v232 = v319;
        v233 = v323;
        v234 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v235 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v236 = (v320 + *(v232 + 80) + v235) & ~*(v232 + 80);
        v237 = swift_allocObject();
        (*(v17 + 32))(v237 + v235, v230, v231);
        (*(v232 + 32))(v237 + v236, v233, v234);
        v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD0E0);
        v239 = v314;
        v314[3] = v238;
        v239[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v239);
        type metadata accessor for ShelfBasedProductPage();
        goto LABEL_36;
      case 2:
        v210 = v321;
        v211 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v212 = v319;
        v213 = v323;
        v214 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v215 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v216 = (v320 + *(v212 + 80) + v215) & ~*(v212 + 80);
        v217 = swift_allocObject();
        (*(v17 + 32))(v217 + v215, v210, v211);
        (*(v212 + 32))(v217 + v216, v213, v214);
        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD050);
        v219 = v314;
        v314[3] = v218;
        v219[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v219);
        type metadata accessor for DynamicUIRequestInfo();
        goto LABEL_36;
      case 6:
        sub_1E1AF374C();
        v157 = v315;
        v158 = v316;
        if ((*(v315 + 48))(v9, 1, v316) == 1)
        {
          sub_1E1308058(v9, &qword_1ECEB1F90);
          result = 0.0;
          v159 = v314;
          *v314 = 0u;
          *(v159 + 1) = 0u;
          v159[4] = 0;
        }

        else
        {
          v322 = *(v157 + 32);
          (v322)(v15, v9, v158);
          (*(v157 + 16))(v13, v15, v158);
          v307 = v319;
          (*(v319 + 16))(v323, v317, v324);
          v308 = (*(v157 + 80) + 16) & ~*(v157 + 80);
          v309 = (v11 + *(v307 + 80) + v308) & ~*(v307 + 80);
          v310 = swift_allocObject();
          (v322)(v310 + v308, v13, v158);
          (*(v307 + 32))(v310 + v309, v323, v324);
          v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD0D0);
          v312 = v314;
          v314[3] = v311;
          v312[4] = &off_1F5C5FBE0;
          __swift_allocate_boxed_opaque_existential_0(v312);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD0D8);
          sub_1E1AF53BC();
          (*(v157 + 8))(v15, v158);
        }

        return result;
      case 7:
        v160 = v321;
        v161 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v162 = v319;
        v163 = v323;
        v164 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v165 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v166 = (v320 + *(v162 + 80) + v165) & ~*(v162 + 80);
        v167 = swift_allocObject();
        (*(v17 + 32))(v167 + v165, v160, v161);
        (*(v162 + 32))(v167 + v166, v163, v164);
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD0C8);
        v169 = v314;
        v314[3] = v168;
        v169[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v169);
        type metadata accessor for Video();
        goto LABEL_36;
      case 8:
      case 22:
      case 42:
      case 43:
      case 44:
      case 48:
        v296 = v321;
        v297 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v298 = v319;
        v299 = v323;
        v300 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v301 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v302 = (v320 + *(v298 + 80) + v301) & ~*(v298 + 80);
        v303 = swift_allocObject();
        (*(v17 + 32))(v303 + v301, v296, v297);
        (*(v298 + 32))(v303 + v302, v299, v300);
        v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD030);
        v305 = v314;
        v314[3] = v304;
        v305[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v305);
        type metadata accessor for GenericPage();
        goto LABEL_36;
      case 10:
        v137 = v321;
        v138 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v139 = v319;
        v140 = v323;
        v141 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v142 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v143 = (v320 + *(v139 + 80) + v142) & ~*(v139 + 80);
        v144 = swift_allocObject();
        (*(v17 + 32))(v144 + v142, v137, v138);
        (*(v139 + 32))(v144 + v143, v140, v141);
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD0C0);
        v146 = v314;
        v314[3] = v145;
        v146[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v146);
        type metadata accessor for TopChartsPage();
        goto LABEL_36;
      case 12:
        v147 = v321;
        v148 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v149 = v319;
        v150 = v323;
        v151 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v152 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v153 = (v320 + *(v149 + 80) + v152) & ~*(v149 + 80);
        v154 = swift_allocObject();
        (*(v17 + 32))(v154 + v152, v147, v148);
        (*(v149 + 32))(v154 + v153, v150, v151);
        v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD0B8);
        v156 = v314;
        v314[3] = v155;
        v156[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v156);
        type metadata accessor for TodayPage();
        goto LABEL_36;
      case 13:
        v190 = v321;
        v191 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v192 = v319;
        v193 = v323;
        v194 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v195 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v196 = (v320 + *(v192 + 80) + v195) & ~*(v192 + 80);
        v197 = swift_allocObject();
        (*(v17 + 32))(v197 + v195, v190, v191);
        (*(v192 + 32))(v197 + v196, v193, v194);
        v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD0B0);
        v199 = v314;
        v314[3] = v198;
        v199[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v199);
        type metadata accessor for ArticlePage();
        goto LABEL_36;
      case 15:
        v180 = v321;
        v181 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v182 = v319;
        v183 = v323;
        v184 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v185 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v186 = (v320 + *(v182 + 80) + v185) & ~*(v182 + 80);
        v187 = swift_allocObject();
        (*(v17 + 32))(v187 + v185, v180, v181);
        (*(v182 + 32))(v187 + v186, v183, v184);
        v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD0A8);
        v189 = v314;
        v314[3] = v188;
        v189[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v189);
        type metadata accessor for InAppPurchaseInstallPage();
        goto LABEL_36;
      case 16:
        v270 = sub_1E1AF37CC();
        v272 = v314;
        if (v271)
        {
          v273 = v270;
          v274 = v271;
          v275 = swift_allocObject();
          *(v275 + 16) = v273;
          *(v275 + 24) = v274;
          v272[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD090);
          v272[4] = &off_1F5C5FBE0;
          __swift_allocate_boxed_opaque_existential_0(v272);
LABEL_36:
          sub_1E1AF53BC();
        }

        else
        {
          v314[4] = 0;
          result = 0.0;
          *v272 = 0u;
          *(v272 + 1) = 0u;
        }

        break;
      case 17:
        v87 = v321;
        v88 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v89 = v319;
        v90 = v323;
        v91 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v92 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v93 = (v320 + *(v89 + 80) + v92) & ~*(v89 + 80);
        v94 = swift_allocObject();
        (*(v17 + 32))(v94 + v92, v87, v88);
        (*(v89 + 32))(v94 + v93, v90, v91);
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD0A0);
        v96 = v314;
        v314[3] = v95;
        v96[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v96);
        type metadata accessor for ReviewsPage(0);
        goto LABEL_36;
      case 18:
        v77 = v321;
        v78 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v79 = v319;
        v80 = v323;
        v81 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v82 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v83 = (v320 + *(v79 + 80) + v82) & ~*(v79 + 80);
        v84 = swift_allocObject();
        (*(v17 + 32))(v84 + v82, v77, v78);
        (*(v79 + 32))(v84 + v83, v80, v81);
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD088);
        v86 = v314;
        v314[3] = v85;
        v86[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v86);
        type metadata accessor for GenericAccountPage();
        goto LABEL_36;
      case 24:
        v200 = v321;
        v201 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v202 = v319;
        v203 = v323;
        v204 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v205 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v206 = (v320 + *(v202 + 80) + v205) & ~*(v202 + 80);
        v207 = swift_allocObject();
        (*(v17 + 32))(v207 + v205, v200, v201);
        (*(v202 + 32))(v207 + v206, v203, v204);
        v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD000);
        v209 = v314;
        v314[3] = v208;
        v209[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v209);
        type metadata accessor for Review(0);
        goto LABEL_36;
      case 25:
        v220 = v321;
        v221 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v222 = v319;
        v223 = v323;
        v224 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v225 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v226 = (v320 + *(v222 + 80) + v225) & ~*(v222 + 80);
        v227 = swift_allocObject();
        (*(v17 + 32))(v227 + v225, v220, v221);
        (*(v222 + 32))(v227 + v226, v223, v224);
        v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCFF8);
        v229 = v314;
        v314[3] = v228;
        v229[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v229);
        type metadata accessor for EditorsChoice();
        goto LABEL_36;
      case 26:
        v276 = v321;
        v277 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v278 = v319;
        v279 = v323;
        v280 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v281 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v282 = (v320 + *(v278 + 80) + v281) & ~*(v278 + 80);
        v283 = swift_allocObject();
        (*(v17 + 32))(v283 + v281, v276, v277);
        (*(v278 + 32))(v283 + v282, v279, v280);
        v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD080);
        v285 = v314;
        v314[3] = v284;
        v285[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v285);
        type metadata accessor for ArcadePage();
        goto LABEL_36;
      case 27:
        v250 = v321;
        v251 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v252 = v319;
        v253 = v323;
        v254 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v255 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v256 = (v320 + *(v252 + 80) + v255) & ~*(v252 + 80);
        v257 = swift_allocObject();
        (*(v17 + 32))(v257 + v255, v250, v251);
        (*(v252 + 32))(v257 + v256, v253, v254);
        v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD078);
        v259 = v314;
        v314[3] = v258;
        v259[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v259);
        type metadata accessor for ArcadeSubscribePage();
        goto LABEL_36;
      case 28:
        v31 = v321;
        v32 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v33 = v319;
        v34 = v323;
        v35 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v36 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v37 = (v320 + *(v33 + 80) + v36) & ~*(v33 + 80);
        v38 = swift_allocObject();
        (*(v17 + 32))(v38 + v36, v31, v32);
        (*(v33 + 32))(v38 + v37, v34, v35);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD058);
        v40 = v314;
        v314[3] = v39;
        v40[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v40);
        type metadata accessor for MarketingItemRequestInfo();
        goto LABEL_36;
      case 29:
        v107 = v321;
        v108 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v109 = v319;
        v110 = v323;
        v111 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v112 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v113 = (v320 + *(v109 + 80) + v112) & ~*(v109 + 80);
        v114 = swift_allocObject();
        (*(v17 + 32))(v114 + v112, v107, v108);
        (*(v109 + 32))(v114 + v113, v110, v111);
        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD068);
        v116 = v314;
        v314[3] = v115;
        v116[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v116);
        type metadata accessor for ArcadeSeeAllGamesPage();
        goto LABEL_36;
      case 30:
        v286 = v321;
        v287 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v288 = v319;
        v289 = v323;
        v290 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v291 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v292 = (v320 + *(v288 + 80) + v291) & ~*(v288 + 80);
        v293 = swift_allocObject();
        (*(v17 + 32))(v293 + v291, v286, v287);
        (*(v288 + 32))(v293 + v292, v289, v290);
        v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD070);
        v295 = v314;
        v314[3] = v294;
        v295[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v295);
        type metadata accessor for ArcadeWelcomePage();
        goto LABEL_36;
      case 31:
        v42 = v321;
        v41 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v43 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v44 = swift_allocObject();
        (*(v17 + 32))(v44 + v43, v42, v41);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD060);
        v46 = v314;
        v314[3] = v45;
        v46[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
        goto LABEL_36;
      case 35:
        v97 = v321;
        v98 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v99 = v319;
        v100 = v323;
        v101 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v102 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v103 = (v320 + *(v99 + 80) + v102) & ~*(v99 + 80);
        v104 = swift_allocObject();
        (*(v17 + 32))(v104 + v102, v97, v98);
        (*(v99 + 32))(v104 + v103, v100, v101);
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD010);
        v106 = v314;
        v314[3] = v105;
        v106[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v106);
        type metadata accessor for GameCenterDashboardAction();
        goto LABEL_36;
      case 37:
        v57 = v321;
        v58 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v59 = v319;
        v60 = v323;
        v61 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v62 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v63 = (v320 + *(v59 + 80) + v62) & ~*(v59 + 80);
        v64 = swift_allocObject();
        (*(v17 + 32))(v64 + v62, v57, v58);
        (*(v59 + 32))(v64 + v63, v60, v61);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD018);
        v66 = v314;
        v314[3] = v65;
        v66[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v66);
        type metadata accessor for GameCenterPlayerProfileAction();
        goto LABEL_36;
      case 39:
        v170 = v321;
        v171 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v172 = v319;
        v173 = v323;
        v174 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v175 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v176 = (v320 + *(v172 + 80) + v175) & ~*(v172 + 80);
        v177 = swift_allocObject();
        (*(v17 + 32))(v177 + v175, v170, v171);
        (*(v172 + 32))(v177 + v176, v173, v174);
        v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD008);
        v179 = v314;
        v314[3] = v178;
        v179[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v179);
        type metadata accessor for ReviewSummaryReportConcernAction();
        goto LABEL_36;
      case 40:
        v47 = v321;
        v48 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v49 = v319;
        v50 = v323;
        v51 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v52 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v53 = (v320 + *(v49 + 80) + v52) & ~*(v49 + 80);
        v54 = swift_allocObject();
        (*(v17 + 32))(v54 + v52, v47, v48);
        (*(v49 + 32))(v54 + v53, v50, v51);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD020);
        v56 = v314;
        v314[3] = v55;
        v56[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v56);
        type metadata accessor for ShareSheetAction();
        goto LABEL_36;
      case 45:
        v117 = v321;
        v118 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v119 = v319;
        v120 = v323;
        v121 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v122 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v123 = (v320 + *(v119 + 80) + v122) & ~*(v119 + 80);
        v124 = swift_allocObject();
        (*(v17 + 32))(v124 + v122, v117, v118);
        (*(v119 + 32))(v124 + v123, v120, v121);
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD048);
        v126 = v314;
        v314[3] = v125;
        v126[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v126);
        type metadata accessor for AppEventDetailPage();
        goto LABEL_36;
      case 46:
        v240 = v321;
        v241 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v242 = v319;
        v243 = v323;
        v244 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v245 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v246 = (v320 + *(v242 + 80) + v245) & ~*(v242 + 80);
        v247 = swift_allocObject();
        (*(v17 + 32))(v247 + v245, v240, v241);
        (*(v242 + 32))(v247 + v246, v243, v244);
        v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD040);
        v249 = v314;
        v314[3] = v248;
        v249[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v249);
        type metadata accessor for ContingentOfferDetailPage();
        goto LABEL_36;
      case 47:
        v127 = v321;
        v128 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v129 = v319;
        v130 = v323;
        v131 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v132 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v133 = (v320 + *(v129 + 80) + v132) & ~*(v129 + 80);
        v134 = swift_allocObject();
        (*(v17 + 32))(v134 + v132, v127, v128);
        (*(v129 + 32))(v134 + v133, v130, v131);
        v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD038);
        v136 = v314;
        v314[3] = v135;
        v136[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v136);
        type metadata accessor for OfferItemDetailPage();
        goto LABEL_36;
      case 49:
        v67 = v321;
        v68 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v69 = v319;
        v70 = v323;
        v71 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v72 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v73 = (v320 + *(v69 + 80) + v72) & ~*(v69 + 80);
        v74 = swift_allocObject();
        (*(v17 + 32))(v74 + v72, v67, v68);
        (*(v69 + 32))(v74 + v73, v70, v71);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBD028);
        v76 = v314;
        v314[3] = v75;
        v76[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v76);
        goto LABEL_36;
      case 53:
        v260 = v321;
        v261 = v322;
        (*(v17 + 16))(v321, a2, v322);
        v262 = v319;
        v263 = v323;
        v264 = v324;
        (*(v319 + 16))(v323, v317, v324);
        v265 = (*(v17 + 80) + 16) & ~*(v17 + 80);
        v266 = (v320 + *(v262 + 80) + v265) & ~*(v262 + 80);
        v267 = swift_allocObject();
        (*(v17 + 32))(v267 + v265, v260, v261);
        (*(v262 + 32))(v267 + v266, v263, v264);
        v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBCFF0);
        v269 = v314;
        v314[3] = v268;
        v269[4] = &off_1F5C5FBE0;
        __swift_allocate_boxed_opaque_existential_0(v269);
        type metadata accessor for PersonalizationTransparencyPage();
        goto LABEL_36;
      default:
        v306 = v314;
        v314[4] = 0;
        result = 0.0;
        *v306 = 0u;
        *(v306 + 1) = 0u;
        return result;
    }
  }

  return result;
}

uint64_t FlowAction.referrerUrl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);

  return v1;
}

void FlowAction.referrerData.getter(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 16);
  v6 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 24);
  v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(v2 + 40);
  *(a1 + 40) = v8;
  sub_1E13E2380(v3, v4, v5, v6, v7, v8);
}

uint64_t FlowAction.pageDataPageRenderMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t FlowAction.presentationContext.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t FlowAction.presentationContext.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t FlowAction.animationBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t FlowAction.animationBehavior.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t FlowAction.origin.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t FlowAction.origin.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}
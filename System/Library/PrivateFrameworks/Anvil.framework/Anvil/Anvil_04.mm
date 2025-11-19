unint64_t sub_1DD9570D4()
{
  result = qword_1ECD83240;
  if (!qword_1ECD83240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECD83238, &qword_1DDA199F8);
    sub_1DD957158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83240);
  }

  return result;
}

unint64_t sub_1DD957158()
{
  result = qword_1ECD83248;
  if (!qword_1ECD83248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83248);
  }

  return result;
}

unint64_t sub_1DD9571AC()
{
  result = qword_1ECD83258;
  if (!qword_1ECD83258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83258);
  }

  return result;
}

unint64_t sub_1DD957200()
{
  result = qword_1ECD83260;
  if (!qword_1ECD83260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83260);
  }

  return result;
}

unint64_t sub_1DD957254()
{
  result = qword_1ECD83270;
  if (!qword_1ECD83270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83270);
  }

  return result;
}

unint64_t sub_1DD9572A8()
{
  result = qword_1ECD83278;
  if (!qword_1ECD83278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83278);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPClient.ErrorResponse.Error.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HTTPClient.ErrorResponse.Error.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD9574E8()
{
  result = qword_1ECD83280;
  if (!qword_1ECD83280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83280);
  }

  return result;
}

unint64_t sub_1DD957540()
{
  result = qword_1ECD83288;
  if (!qword_1ECD83288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83288);
  }

  return result;
}

unint64_t sub_1DD957598()
{
  result = qword_1ECD83290;
  if (!qword_1ECD83290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83290);
  }

  return result;
}

unint64_t sub_1DD9575F0()
{
  result = qword_1ECD83298;
  if (!qword_1ECD83298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83298);
  }

  return result;
}

unint64_t sub_1DD957648()
{
  result = qword_1ECD832A0;
  if (!qword_1ECD832A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832A0);
  }

  return result;
}

unint64_t sub_1DD9576A0()
{
  result = qword_1ECD832A8;
  if (!qword_1ECD832A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832A8);
  }

  return result;
}

unint64_t sub_1DD9576F8()
{
  result = qword_1ECD832B0;
  if (!qword_1ECD832B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832B0);
  }

  return result;
}

unint64_t sub_1DD957750()
{
  result = qword_1ECD832B8;
  if (!qword_1ECD832B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832B8);
  }

  return result;
}

unint64_t sub_1DD9577A8()
{
  result = qword_1ECD832C0;
  if (!qword_1ECD832C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832C0);
  }

  return result;
}

unint64_t sub_1DD957800()
{
  result = qword_1ECD832C8;
  if (!qword_1ECD832C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832C8);
  }

  return result;
}

uint64_t sub_1DD957854(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD832D0, &qword_1DDA19E78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DD957A18();
  sub_1DDA15620();
  if (!v1)
  {
    v10[14] = 0;
    sub_1DD957A6C();
    sub_1DDA152C0();
    v8 = v10[15];
    v10[13] = 1;
    sub_1DDA15280();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DD957A18()
{
  result = qword_1ECD832D8;
  if (!qword_1ECD832D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832D8);
  }

  return result;
}

unint64_t sub_1DD957A6C()
{
  result = qword_1ECD832E0;
  if (!qword_1ECD832E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832E0);
  }

  return result;
}

unint64_t sub_1DD957AE4()
{
  result = qword_1ECD832E8;
  if (!qword_1ECD832E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832E8);
  }

  return result;
}

unint64_t sub_1DD957B3C()
{
  result = qword_1ECD832F0;
  if (!qword_1ECD832F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832F0);
  }

  return result;
}

unint64_t sub_1DD957B94()
{
  result = qword_1ECD832F8;
  if (!qword_1ECD832F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD832F8);
  }

  return result;
}

unint64_t sub_1DD957BEC()
{
  result = qword_1ECD83300;
  if (!qword_1ECD83300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83300);
  }

  return result;
}

unint64_t sub_1DD957C40()
{
  result = qword_1ECD83308;
  if (!qword_1ECD83308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD83308);
  }

  return result;
}

uint64_t sub_1DD957C94()
{
  v0 = sub_1DDA151E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

off_t sub_1DD957CEC()
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v7, 0, sizeof(v7));
  if (fstat(*(v0 + 16), &v7))
  {
    if (qword_1ECD827A0 != -1)
    {
      swift_once();
    }

    v1 = sub_1DDA14810();
    __swift_project_value_buffer(v1, qword_1ECDA20C8);
    v2 = sub_1DDA147F0();
    v3 = sub_1DDA14EE0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DD8F8000, v2, v3, "Unable to access file size", v4, 2u);
      MEMORY[0x1E12B8CE0](v4, -1, -1);
    }

    result = -1;
  }

  else
  {
    result = v7.st_size;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD957E2C()
{
  close(v0[4]);
  v1 = OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url;
  v2 = sub_1DDA134E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_metadata);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t type metadata accessor for ImmutableFileHandle()
{
  result = qword_1ECD83310;
  if (!qword_1ECD83310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD957F34()
{
  result = sub_1DDA134E0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD957FE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83328, qword_1DDA1A108);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC5Anvil28BlackPowderInferenceProvider____lazy_storage___handler;
  swift_beginAccess();
  sub_1DD960C28(v1 + v11, v10);
  v12 = sub_1DDA13BA0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_1DD90D378(v10, &qword_1ECD83328, qword_1DDA1A108);
  v35 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83348, &qword_1DDA1A208);
  v14 = sub_1DDA14B70();
  v33 = v15;
  v34 = v14;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v32 = swift_allocObject();
  *(v32 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v16 = swift_allocObject();
  v24 = a1;
  *(v16 + 16) = v1;
  v27 = v12;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83350, &unk_1DDA1A250);
  v25 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D28, &unk_1DDA18600);
  sub_1DD9613D0(&qword_1ECD83358, &qword_1ECD83350, &unk_1DDA1A250);
  sub_1DD9613D0(&qword_1ECD83360, &qword_1ECD82D28, &unk_1DDA18600);
  v17 = v24;
  sub_1DDA13B90();
  swift_unownedRelease();
  swift_unownedRelease();
  swift_unownedRelease();
  swift_unownedRelease();
  v18 = v25;
  v19 = v27;
  (*(v13 + 16))(v25, v17, v27);
  v20 = v18;
  (*(v13 + 56))(v18, 0, 1, v19);
  v21 = v28;
  swift_beginAccess();
  sub_1DD961008(v20, v1 + v21);
  return swift_endAccess();
}

uint64_t sub_1DD9584B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD9584D8, 0, 0);
}

uint64_t sub_1DD9584D8()
{
  v1 = v0[5];
  swift_unownedRetainStrong();
  v0[6] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DD958598;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DD9586D4(v5, v3, v4);
}

uint64_t sub_1DD958598()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD96161C, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DD9586D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83368, &qword_1DDA1A268) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_1DDA13EE0();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_1DDA138A0();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_1DDA136B0();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = sub_1DDA13FF0();
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9588E4, 0, 0);
}

uint64_t sub_1DD9588E4()
{
  v54 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[4];
  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20C8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14F00();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  if (v8)
  {
    v49 = v0[16];
    v12 = v0[14];
    v13 = v0[15];
    v14 = v0[13];
    v15 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v15 = 136315138;
    v50 = v7;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8]);
    v16 = sub_1DDA15400();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v49);
    v19 = sub_1DD93FA54(v16, v18, &v53);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DD8F8000, v6, v50, "Received count tokens request with identifier: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1E12B8CE0](v51, -1, -1);
    MEMORY[0x1E12B8CE0](v15, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];
  v23 = v0[4];
  v52 = v0[5];
  v24 = v0[3];
  v25 = sub_1DDA13FE0();
  v27 = v26;
  v28 = sub_1DDA13FD0();
  v30 = v29;
  sub_1DDA139E0();
  v31 = sub_1DDA13890();
  (*(v21 + 8))(v20, v22);
  v32 = sub_1DD9C13D0(v28, v30, v31);
  v34 = v33;
  LOBYTE(v30) = v35;
  sub_1DD95FD2C(v25, v27, v32, v33, v35 & 1);
  sub_1DD928DD4(v32, v34, v30 & 1);

  v37 = v0[8];
  v36 = v0[9];
  v38 = v0[7];
  v39 = v0[3];
  sub_1DDA139D0();
  sub_1DD928688(v36);
  (*(v37 + 8))(v36, v38);
  v41 = v0[18];
  v42 = v0[15];
  v43 = v0[12];
  v44 = v0[9];
  v45 = v0[6];
  v46 = v0[2];
  v47 = sub_1DDA13ED0();
  (*(*(v47 - 8) + 56))(v45, 1, 1, v47);
  sub_1DDA13A90();

  v48 = v0[1];

  return v48();
}

uint64_t sub_1DD958D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD958D58, 0, 0);
}

uint64_t sub_1DD958D58()
{
  v1 = v0[5];
  swift_unownedRetainStrong();
  v0[6] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DD958598;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DD958E18(v5, v3, v4);
}

uint64_t sub_1DD958E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_1DDA13A80();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = sub_1DDA139B0();
  v4[14] = v13;
  v14 = *(v13 - 8);
  v4[15] = v14;
  v15 = *(v14 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v16 = sub_1DDA138A0();
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();
  v19 = sub_1DDA136B0();
  v4[21] = v19;
  v20 = *(v19 - 8);
  v4[22] = v20;
  v21 = *(v20 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v22 = sub_1DDA13FF0();
  v4[27] = v22;
  v23 = *(v22 - 8);
  v4[28] = v23;
  v24 = *(v23 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9591A0, 0, 0);
}

uint64_t sub_1DD9591A0()
{
  v83 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[4];
  v5 = sub_1DDA14810();
  v0[31] = __swift_project_value_buffer(v5, qword_1ECDA20C8);
  v6 = *(v3 + 16);
  v0[32] = v6;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14F00();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  if (v9)
  {
    v13 = v0[26];
    v14 = v0[21];
    v15 = v0[22];
    v16 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v82 = v79;
    *v16 = 136315138;
    v77 = v11;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8]);
    v17 = sub_1DDA15400();
    v75 = v8;
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v77);
    v21 = sub_1DD93FA54(v17, v19, &v82);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1DD8F8000, v7, v75, "Received complete prompt request with identifier: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1E12B8CE0](v79, -1, -1);
    MEMORY[0x1E12B8CE0](v16, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[34] = v20;
  v23 = v0[19];
  v22 = v0[20];
  v24 = v0[18];
  v25 = v0[4];
  v80 = v0[5];
  v26 = v0[3];
  v27 = sub_1DDA13FE0();
  v29 = v28;
  v30 = sub_1DDA13FD0();
  v32 = v31;
  sub_1DDA13B30();
  v33 = sub_1DDA13890();
  (*(v23 + 8))(v22, v24);
  v34 = sub_1DD9C13D0(v30, v32, v33);
  v36 = v35;
  LOBYTE(v32) = v37;
  v0[35] = sub_1DD95FD2C(v27, v29, v34, v35, v37 & 1);
  sub_1DD928DD4(v34, v36, v32 & 1);

  v38 = v0[24];
  v39 = v0[25];
  v40 = v0[22];
  v41 = v0[21];
  v66 = v0[23];
  v67 = v0[13];
  v68 = v0[12];
  v69 = v0[11];
  v70 = v0[10];
  v71 = v0[7];
  v72 = v0[6];
  v42 = v0[3];
  v43 = v0[4];
  v44 = sub_1DDA13FD0();
  v78 = v45;
  v81 = v44;
  v0[36] = v45;
  sub_1DDA13FC0();
  v46 = sub_1DDA13690();
  v74 = v47;
  v76 = v46;
  v0[37] = v47;
  v48 = *(v40 + 8);
  v0[38] = v48;
  v0[39] = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v39, v41);
  sub_1DDA13FB0();
  v73 = sub_1DDA13690();
  v50 = v49;
  v0[40] = v49;
  v48(v38, v41);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  v51 = sub_1DDA13F30();
  (*(*(v51 - 8) + 56))(v68, 1, 1, v51);
  sub_1DDA13B20();
  v52 = sub_1DDA13EE0();
  (*(*(v52 - 8) + 56))(v69, 0, 1, v52);
  sub_1DDA13AE0();
  v53 = sub_1DDA13B10();
  v54 = sub_1DD9610EC(v53);
  v0[41] = v54;

  sub_1DDA13AF0();
  v55 = sub_1DDA13B40();
  v0[42] = v55;
  sub_1DDA13B00();
  v56 = swift_task_alloc();
  v0[43] = v56;
  *v56 = v0;
  v56[1] = sub_1DD9597D0;
  v57 = v0[23];
  v58 = v0[17];
  v60 = v0[12];
  v59 = v0[13];
  v62 = v0[10];
  v61 = v0[11];
  v64 = v0[6];
  v63 = v0[7];
  v91 = v55;
  v92 = v64;
  v89 = v54;
  v90 = v63;
  v87 = v61;
  v88 = v62;
  v85 = v59;
  v86 = v60;

  return sub_1DD923798(v58, v81, v78, v76, v74, v73, v50, v57);
}

uint64_t sub_1DD9597D0()
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 328);
  v5 = *(*v1 + 320);
  v21 = *(*v1 + 312);
  v20 = *(*v1 + 304);
  v6 = *(*v1 + 296);
  v7 = *(*v1 + 288);
  v19 = *(*v1 + 184);
  v18 = *(*v1 + 168);
  v17 = *(*v1 + 104);
  v16 = *(*v1 + 96);
  v15 = *(*v1 + 88);
  v14 = *(*v1 + 80);
  v8 = *(*v1 + 72);
  v13 = *(*v1 + 64);
  v9 = *(*v1 + 56);
  v10 = *(*v1 + 48);
  v22 = *v1;
  *(*v1 + 352) = v0;

  sub_1DD90D378(v10, &qword_1ECD83008, &qword_1DDA1A280);
  sub_1DD90D378(v9, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v8 + 8))(v14, v13);
  sub_1DD90D378(v15, &qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DD90D378(v16, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90D378(v17, &qword_1ECD82F60, &qword_1DDA18890);
  v20(v19, v18);
  if (v0)
  {
    v11 = sub_1DD959E8C;
  }

  else
  {
    v11 = sub_1DD959B3C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DD959B3C()
{
  v54 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[4];
  v7 = v0[2];
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  sub_1DDA13B50();
  v2(v4, v6, v5);
  v8 = sub_1DDA147F0();
  v9 = sub_1DDA14F00();
  if (os_log_type_enabled(v8, v9))
  {
    v41 = v0[38];
    v42 = v0[39];
    v43 = v0[34];
    v10 = v0[29];
    v11 = v0[26];
    v39 = v0[28];
    v40 = v0[27];
    v12 = v0[21];
    v45 = v0[15];
    v47 = v0[35];
    v49 = v0[14];
    v51 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v53 = v14;
    *v13 = 136315138;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8]);
    v15 = sub_1DDA15400();
    v17 = v16;
    v41(v11, v12);
    v43(v10, v40);
    v18 = sub_1DD93FA54(v15, v17, &v53);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DD8F8000, v8, v9, "Finished complete prompt request with identifier: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
    MEMORY[0x1E12B8CE0](v13, -1, -1);

    (*(v45 + 8))(v51, v49);
  }

  else
  {
    v20 = v0[34];
    v19 = v0[35];
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    v24 = v0[17];
    v25 = v0[14];
    v26 = v0[15];

    v20(v21, v23);
    (*(v26 + 8))(v24, v25);
  }

  v28 = v0[29];
  v27 = v0[30];
  v30 = v0[25];
  v29 = v0[26];
  v32 = v0[23];
  v31 = v0[24];
  v33 = v0[20];
  v35 = v0[16];
  v34 = v0[17];
  v36 = v0[13];
  v44 = v0[12];
  v46 = v0[11];
  v48 = v0[10];
  v50 = v0[7];
  v52 = v0[6];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1DD959E8C()
{
  v1 = v0[35];

  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[13];
  v14 = v0[12];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[6];
  v19 = v0[44];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DD959FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD959FDC, 0, 0);
}

uint64_t sub_1DD959FDC()
{
  v1 = v0[5];
  swift_unownedRetainStrong();
  v0[6] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DD958598;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DD95A09C(v5, v3, v4);
}

uint64_t sub_1DD95A09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_1DDA13A80();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = sub_1DDA139B0();
  v4[14] = v13;
  v14 = *(v13 - 8);
  v4[15] = v14;
  v15 = *(v14 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v16 = sub_1DDA138A0();
  v4[18] = v16;
  v17 = *(v16 - 8);
  v4[19] = v17;
  v18 = *(v17 + 64) + 15;
  v4[20] = swift_task_alloc();
  v19 = sub_1DDA136B0();
  v4[21] = v19;
  v20 = *(v19 - 8);
  v4[22] = v20;
  v21 = *(v20 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v22 = sub_1DDA13FF0();
  v4[27] = v22;
  v23 = *(v22 - 8);
  v4[28] = v23;
  v24 = *(v23 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD95A424, 0, 0);
}

uint64_t sub_1DD95A424()
{
  v82 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[4];
  v5 = sub_1DDA14810();
  v0[31] = __swift_project_value_buffer(v5, qword_1ECDA20C8);
  v6 = *(v3 + 16);
  v0[32] = v6;
  v0[33] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_1DDA147F0();
  v8 = sub_1DDA14F00();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v11 = v0[27];
  v12 = v0[28];
  if (v9)
  {
    v13 = v0[26];
    v14 = v0[21];
    v15 = v0[22];
    v16 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v81 = v78;
    *v16 = 136315138;
    v76 = v11;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8]);
    v17 = sub_1DDA15400();
    v74 = v8;
    v19 = v18;
    (*(v15 + 8))(v13, v14);
    v20 = *(v12 + 8);
    v20(v10, v76);
    v21 = sub_1DD93FA54(v17, v19, &v81);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1DD8F8000, v7, v74, "Received complete prompt template request with identifier: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x1E12B8CE0](v78, -1, -1);
    MEMORY[0x1E12B8CE0](v16, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[34] = v20;
  v23 = v0[19];
  v22 = v0[20];
  v24 = v0[18];
  v25 = v0[4];
  v79 = v0[5];
  v26 = v0[3];
  v27 = sub_1DDA13FE0();
  v29 = v28;
  v30 = sub_1DDA13FD0();
  v32 = v31;
  sub_1DDA13C50();
  v33 = sub_1DDA13890();
  (*(v23 + 8))(v22, v24);
  v34 = sub_1DD9C13D0(v30, v32, v33);
  v36 = v35;
  LOBYTE(v32) = v37;
  v0[35] = sub_1DD95FD2C(v27, v29, v34, v35, v37 & 1);
  sub_1DD928DD4(v34, v36, v32 & 1);

  v38 = v0[24];
  v39 = v0[25];
  v40 = v0[22];
  v41 = v0[21];
  v65 = v0[23];
  v66 = v0[13];
  v67 = v0[12];
  v68 = v0[11];
  v69 = v0[10];
  v70 = v0[7];
  v71 = v0[6];
  v42 = v0[3];
  v43 = v0[4];
  v44 = sub_1DDA13FD0();
  v77 = v45;
  v80 = v44;
  v0[36] = v45;
  sub_1DDA13FC0();
  v46 = sub_1DDA13690();
  v73 = v47;
  v75 = v46;
  v0[37] = v47;
  v48 = *(v40 + 8);
  v0[38] = v48;
  v0[39] = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v39, v41);
  sub_1DDA13FB0();
  v72 = sub_1DDA13690();
  v50 = v49;
  v0[40] = v49;
  v48(v38, v41);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  sub_1DDA13BF0();
  v51 = sub_1DDA13F30();
  (*(*(v51 - 8) + 56))(v67, 0, 1, v51);
  sub_1DDA13C40();
  sub_1DDA13C00();
  v52 = sub_1DDA13C30();
  v53 = sub_1DD9610EC(v52);
  v0[41] = v53;

  sub_1DDA13C10();
  v54 = sub_1DDA13C60();
  v0[42] = v54;
  sub_1DDA13C20();
  v55 = swift_task_alloc();
  v0[43] = v55;
  *v55 = v0;
  v55[1] = sub_1DD95AA1C;
  v56 = v0[23];
  v57 = v0[17];
  v59 = v0[12];
  v58 = v0[13];
  v61 = v0[10];
  v60 = v0[11];
  v63 = v0[6];
  v62 = v0[7];
  v90 = v54;
  v91 = v63;
  v88 = v53;
  v89 = v62;
  v86 = v60;
  v87 = v61;
  v84 = v58;
  v85 = v59;

  return sub_1DD923798(v57, v80, v77, v75, v73, v72, v50, v56);
}

uint64_t sub_1DD95AA1C()
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 328);
  v5 = *(*v1 + 320);
  v21 = *(*v1 + 312);
  v20 = *(*v1 + 304);
  v6 = *(*v1 + 296);
  v7 = *(*v1 + 288);
  v19 = *(*v1 + 184);
  v18 = *(*v1 + 168);
  v17 = *(*v1 + 104);
  v16 = *(*v1 + 96);
  v15 = *(*v1 + 88);
  v14 = *(*v1 + 80);
  v8 = *(*v1 + 72);
  v13 = *(*v1 + 64);
  v9 = *(*v1 + 56);
  v10 = *(*v1 + 48);
  v22 = *v1;
  *(*v1 + 352) = v0;

  sub_1DD90D378(v10, &qword_1ECD83008, &qword_1DDA1A280);
  sub_1DD90D378(v9, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v8 + 8))(v14, v13);
  sub_1DD90D378(v15, &qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DD90D378(v16, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90D378(v17, &qword_1ECD82F60, &qword_1DDA18890);
  v20(v19, v18);
  if (v0)
  {
    v11 = sub_1DD961618;
  }

  else
  {
    v11 = sub_1DD95AD88;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1DD95AD88()
{
  v54 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[4];
  v7 = v0[2];
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  sub_1DDA13B50();
  v2(v4, v6, v5);
  v8 = sub_1DDA147F0();
  v9 = sub_1DDA14F00();
  if (os_log_type_enabled(v8, v9))
  {
    v41 = v0[38];
    v42 = v0[39];
    v43 = v0[34];
    v10 = v0[29];
    v11 = v0[26];
    v39 = v0[28];
    v40 = v0[27];
    v12 = v0[21];
    v45 = v0[15];
    v47 = v0[35];
    v49 = v0[14];
    v51 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v53 = v14;
    *v13 = 136315138;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8]);
    v15 = sub_1DDA15400();
    v17 = v16;
    v41(v11, v12);
    v43(v10, v40);
    v18 = sub_1DD93FA54(v15, v17, &v53);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DD8F8000, v8, v9, "Finished complete prompt template request with identifier: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12B8CE0](v14, -1, -1);
    MEMORY[0x1E12B8CE0](v13, -1, -1);

    (*(v45 + 8))(v51, v49);
  }

  else
  {
    v20 = v0[34];
    v19 = v0[35];
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    v24 = v0[17];
    v25 = v0[14];
    v26 = v0[15];

    v20(v21, v23);
    (*(v26 + 8))(v24, v25);
  }

  v28 = v0[29];
  v27 = v0[30];
  v30 = v0[25];
  v29 = v0[26];
  v32 = v0[23];
  v31 = v0[24];
  v33 = v0[20];
  v35 = v0[16];
  v34 = v0[17];
  v36 = v0[13];
  v44 = v0[12];
  v46 = v0[11];
  v48 = v0[10];
  v50 = v0[7];
  v52 = v0[6];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1DD95B0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83378, &qword_1DDA1A278);
  v125 = *(v123 - 8);
  v6 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v124 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v119 = &v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v106 - v13;
  v118 = sub_1DDA13A80();
  v116 = *(v118 - 8);
  v14 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v113 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v112 = &v106 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v127 = &v106 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v134 = &v106 - v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  v25 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v126 = &v106 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288);
  v121 = *(v27 - 8);
  v122 = v27;
  v28 = *(v121 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v115 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v120 = &v106 - v31;
  v32 = sub_1DDA138A0();
  v131 = *(v32 - 8);
  v33 = *(v131 + 8);
  MEMORY[0x1EEE9AC00](v32);
  v130 = (&v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1DDA136B0();
  v36 = *(v35 - 8);
  v135 = v35;
  v136 = v36;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v133 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v110 = &v106 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v129 = &v106 - v42;
  v43 = sub_1DDA13FF0();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v48 = sub_1DDA14810();
  __swift_project_value_buffer(v48, qword_1ECDA20C8);
  (*(v44 + 16))(v47, a2, v43);
  v49 = sub_1DDA147F0();
  v50 = sub_1DDA14F00();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v109 = a1;
    v52 = v51;
    v53 = swift_slowAlloc();
    v128 = a3;
    v106 = v53;
    v137 = v53;
    *v52 = 136315138;
    v107 = v32;
    v54 = v129;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8]);
    v55 = v135;
    v56 = sub_1DDA15400();
    v108 = a2;
    v58 = v57;
    v59 = v54;
    v32 = v107;
    (*(v136 + 8))(v59, v55);
    (*(v44 + 8))(v47, v43);
    v60 = sub_1DD93FA54(v56, v58, &v137);

    *(v52 + 4) = v60;
    _os_log_impl(&dword_1DD8F8000, v49, v50, "Received streaming complete prompt request with identifier: %s", v52, 0xCu);
    v61 = v106;
    __swift_destroy_boxed_opaque_existential_1(v106);
    a3 = v128;
    MEMORY[0x1E12B8CE0](v61, -1, -1);
    MEMORY[0x1E12B8CE0](v52, -1, -1);
  }

  else
  {

    (*(v44 + 8))(v47, v43);
  }

  v62 = sub_1DDA13FE0();
  v64 = v63;
  v65 = sub_1DDA13FD0();
  v67 = v66;
  v68 = v130;
  sub_1DDA13B30();
  v69 = sub_1DDA13890();
  (*(v131 + 1))(v68, v32);
  v70 = sub_1DD9C13D0(v65, v67, v69);
  v72 = v71;
  LOBYTE(v68) = v73 & 1;
  v132 = sub_1DD95FD2C(v62, v64, v70, v71, v73 & 1);
  sub_1DD928DD4(v70, v72, v68);

  v74 = sub_1DDA13FD0();
  v130 = v75;
  v76 = v129;
  sub_1DDA13FC0();
  v77 = sub_1DDA13690();
  v124 = v78;
  v125 = v77;
  v79 = v135;
  v81 = v136 + 8;
  v80 = *(v136 + 8);
  v80(v76, v135);
  v136 = v81;
  v131 = v80;
  v82 = v110;
  sub_1DDA13FB0();
  v129 = sub_1DDA13690();
  v123 = v83;
  v80(v82, v79);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  v84 = sub_1DDA13F30();
  v85 = v127;
  (*(*(v84 - 8) + 56))();
  v86 = v112;
  sub_1DDA13B20();
  v87 = sub_1DDA13EE0();
  (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
  v88 = v113;
  sub_1DDA13AE0();
  v89 = sub_1DDA13B10();
  v90 = sub_1DD9610EC(v89);

  v91 = v117;
  sub_1DDA13AF0();
  v92 = sub_1DDA13B40();
  v128 = a3;
  v93 = v92;
  v94 = v119;
  sub_1DDA13B00();
  sub_1DD9225A0(v74, v130, v125, v124, v129, v123, v133, v134, v126, v85, v86, v88, v90, v91, v93, v94);

  sub_1DD90D378(v94, &qword_1ECD83008, &qword_1DDA1A280);
  sub_1DD90D378(v91, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v116 + 8))(v88, v118);
  sub_1DD90D378(v86, &qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DD90D378(v127, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90D378(v134, &qword_1ECD82F60, &qword_1DDA18890);
  v131(v133, v135);
  sub_1DDA13BD0();
  sub_1DD9613D0(&qword_1ECD83020, &qword_1ECD82FD8, &qword_1DDA189B0);
  v95 = v120;
  sub_1DDA15170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83388, &qword_1DDA1A298);
  v96 = swift_allocBox();
  v98 = v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83390, &qword_1DDA1A2A0);
  (*(*(v99 - 8) + 56))(v98, 1, 1, v99);
  v101 = v121;
  v100 = v122;
  v102 = v115;
  (*(v121 + 16))(v115, v95, v122);
  v103 = (*(v101 + 80) + 24) & ~*(v101 + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = v96;
  (*(v101 + 32))(v104 + v103, v102, v100);

  sub_1DDA14E30();

  (*(v101 + 8))(v95, v100);
}

uint64_t sub_1DD95BE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v136 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83378, &qword_1DDA1A278);
  v124 = *(v5 - 8);
  v125 = v5;
  v6 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v109 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83008, &qword_1DDA1A280);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v119 = &v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC0, &qword_1DDA18998);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v109 - v13;
  v118 = sub_1DDA13A80();
  v116 = *(v118 - 8);
  v14 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v113 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FC8, &qword_1DDA189A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v129 = &v109 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD0, &qword_1DDA189A8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v128 = &v109 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v126 = &v109 - v24;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FD8, &qword_1DDA189B0);
  v25 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v127 = &v109 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288);
  v121 = *(v27 - 8);
  v122 = v27;
  v28 = *(v121 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v115 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v120 = &v109 - v31;
  v32 = sub_1DDA138A0();
  v133 = *(v32 - 8);
  v134 = v32;
  v33 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v132 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1DDA136B0();
  v36 = *(v35 - 8);
  v138 = v35;
  v139 = v36;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35);
  v137 = &v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v109 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v131 = &v109 - v43;
  v44 = sub_1DDA13FF0();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v109 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v49 = sub_1DDA14810();
  __swift_project_value_buffer(v49, qword_1ECDA20C8);
  (*(v45 + 16))(v48, a2, v44);
  v50 = sub_1DDA147F0();
  v51 = sub_1DDA14F00();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v130 = a3;
    v53 = v52;
    v109 = v52;
    v54 = swift_slowAlloc();
    v111 = a2;
    v110 = v54;
    v140 = v54;
    *v53 = 136315138;
    v55 = v131;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8]);
    v56 = v42;
    v57 = v138;
    v58 = sub_1DDA15400();
    v60 = v59;
    v61 = v57;
    v42 = v56;
    (*(v139 + 8))(v55, v61);
    (*(v45 + 8))(v48, v44);
    v62 = sub_1DD93FA54(v58, v60, &v140);

    v63 = v109;
    *(v109 + 4) = v62;
    v64 = v63;
    _os_log_impl(&dword_1DD8F8000, v50, v51, "Received streaming complete prompt template request with identifier: %s", v63, 0xCu);
    v65 = v110;
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1E12B8CE0](v65, -1, -1);
    a3 = v130;
    MEMORY[0x1E12B8CE0](v64, -1, -1);
  }

  else
  {

    (*(v45 + 8))(v48, v44);
  }

  v66 = sub_1DDA13FE0();
  v68 = v67;
  v69 = sub_1DDA13FD0();
  v71 = v70;
  v72 = v132;
  sub_1DDA13C50();
  v73 = sub_1DDA13890();
  (*(v133 + 8))(v72, v134);
  v74 = sub_1DD9C13D0(v69, v71, v73);
  v76 = v75;
  LOBYTE(v72) = v77 & 1;
  v135 = sub_1DD95FD2C(v66, v68, v74, v75, v77 & 1);
  sub_1DD928DD4(v74, v76, v72);

  v133 = sub_1DDA13FD0();
  v79 = v78;
  v80 = v131;
  sub_1DDA13FC0();
  v132 = sub_1DDA13690();
  v125 = v81;
  v82 = v138;
  v84 = v139 + 8;
  v83 = *(v139 + 8);
  v83(v80, v138);
  v139 = v84;
  v134 = v83;
  sub_1DDA13FB0();
  v85 = sub_1DDA13690();
  v130 = a3;
  v131 = v85;
  v124 = v86;
  v83(v42, v82);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  v87 = v128;
  sub_1DDA13BF0();
  v88 = sub_1DDA13F30();
  v89 = v87;
  (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
  v90 = v129;
  sub_1DDA13C40();
  v91 = v113;
  sub_1DDA13C00();
  v92 = sub_1DDA13C30();
  v93 = sub_1DD9610EC(v92);

  v94 = v117;
  sub_1DDA13C10();
  v95 = sub_1DDA13C60();
  v96 = v119;
  sub_1DDA13C20();
  v97 = v126;
  sub_1DD9225A0(v133, v79, v132, v125, v131, v124, v137, v126, v127, v89, v90, v91, v93, v94, v95, v96);

  sub_1DD90D378(v96, &qword_1ECD83008, &qword_1DDA1A280);
  sub_1DD90D378(v94, &qword_1ECD82FC0, &qword_1DDA18998);
  (*(v116 + 8))(v91, v118);
  sub_1DD90D378(v129, &qword_1ECD82FC8, &qword_1DDA189A0);
  sub_1DD90D378(v128, &qword_1ECD82FD0, &qword_1DDA189A8);
  sub_1DD90D378(v97, &qword_1ECD82F60, &qword_1DDA18890);
  v134(v137, v138);
  sub_1DDA13BD0();
  sub_1DD9613D0(&qword_1ECD83020, &qword_1ECD82FD8, &qword_1DDA189B0);
  v98 = v120;
  sub_1DDA15170();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83388, &qword_1DDA1A298);
  v99 = swift_allocBox();
  v101 = v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83390, &qword_1DDA1A2A0);
  (*(*(v102 - 8) + 56))(v101, 1, 1, v102);
  v104 = v121;
  v103 = v122;
  v105 = v115;
  (*(v121 + 16))(v115, v98, v122);
  v106 = (*(v104 + 80) + 24) & ~*(v104 + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = v99;
  (*(v104 + 32))(v107 + v106, v105, v103);

  sub_1DDA14E30();

  (*(v104 + 8))(v98, v103);
}

uint64_t sub_1DD95CB94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_unownedRetainStrong();
  v8 = *(a3 + 16);

  a4(a1, a2);
}

uint64_t sub_1DD95CC1C@<X0>(void (*a1)(_BYTE *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v115 = a1;
  v110 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D38, &unk_1DDA18610);
  v104 = *(v4 - 8);
  v105 = v4;
  v5 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v93[-v6];
  v116 = sub_1DDA134E0();
  v96 = *(v116 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v9 = &v93[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1DDA140A0();
  v98 = *(v10 - 8);
  v11 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v93[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v93[-v16];
  v18 = sub_1DDA138A0();
  v108 = *(v18 - 8);
  v109 = v18;
  v19 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v107 = &v93[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1DDA136B0();
  v22 = *(v21 - 8);
  v111 = v21;
  v112 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v106 = &v93[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v102 = &v93[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v101 = &v93[-v29];
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v93[-v30];
  v32 = sub_1DDA13FF0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v93[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v37 = sub_1DDA14810();
  __swift_project_value_buffer(v37, qword_1ECDA20C8);
  v38 = *(v33 + 16);
  v114 = a2;
  v38(v36, a2, v32);
  v39 = sub_1DDA147F0();
  v40 = sub_1DDA14F00();
  v41 = os_log_type_enabled(v39, v40);
  v99 = v10;
  v100 = v9;
  v97 = v13;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v117 = v95;
    *v42 = 136315138;
    v94 = v40;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8]);
    v43 = v31;
    v44 = v111;
    v45 = sub_1DDA15400();
    v46 = v17;
    v48 = v47;
    (*(v112 + 8))(v43, v44);
    (*(v33 + 8))(v36, v32);
    v49 = sub_1DD93FA54(v45, v48, &v117);
    v17 = v46;

    *(v42 + 4) = v49;
    _os_log_impl(&dword_1DD8F8000, v39, v94, "Received register document(s) request with identifier: %s", v42, 0xCu);
    v50 = v95;
    __swift_destroy_boxed_opaque_existential_1(v95);
    MEMORY[0x1E12B8CE0](v50, -1, -1);
    MEMORY[0x1E12B8CE0](v42, -1, -1);
  }

  else
  {

    (*(v33 + 8))(v36, v32);
  }

  v51 = sub_1DDA13FE0();
  v53 = v52;
  v54 = sub_1DDA13FD0();
  v56 = v55;
  v57 = v107;
  sub_1DDA13BB0();
  v58 = sub_1DDA13890();
  (*(v108 + 8))(v57, v109);
  v59 = sub_1DD9C13D0(v54, v56, v58);
  v61 = v60;
  LOBYTE(v57) = v62;
  v109 = sub_1DD95FD2C(v51, v53, v59, v60, v62 & 1);
  sub_1DD928DD4(v59, v61, v57 & 1);

  v107 = sub_1DDA13FD0();
  v64 = v63;
  v65 = v101;
  sub_1DDA13FC0();
  v105 = sub_1DDA13690();
  v108 = v66;
  v68 = v112 + 8;
  v67 = *(v112 + 8);
  v69 = v65;
  v70 = v111;
  (v67)(v69, v111);
  v71 = v102;
  sub_1DDA13FB0();
  v103 = sub_1DDA13690();
  v104 = v72;
  v112 = v68;
  (v67)(v71, v70);
  sub_1DDA13FA0();
  sub_1DDA13F90();
  v73 = sub_1DDA13BC0();
  v74 = *(v73 + 16);
  if (v74)
  {
    v95 = v64;
    v101 = v67;
    v102 = v17;
    v117 = MEMORY[0x1E69E7CC0];
    sub_1DDA15120();
    v75 = v99;
    v77 = v98 + 16;
    v76 = *(v98 + 16);
    v78 = *(v98 + 80);
    v98 = v73;
    v79 = v73 + ((v78 + 32) & ~v78);
    v114 = *(v77 + 56);
    v115 = v76;
    v113 = (v77 - 8);
    v80 = (v96 + 32);
    v81 = v100;
    v82 = v97;
    do
    {
      v115(v82, v79, v75);
      v83 = sub_1DDA14070();
      sub_1DDA14080();
      v84 = sub_1DDA14090();
      (*v113)(v82, v75);
      v85 = type metadata accessor for ImmutableFileHandle();
      v86 = *(v85 + 48);
      v87 = *(v85 + 52);
      v88 = swift_allocObject();
      *(v88 + 16) = v83;
      (*v80)(v88 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url, v81, v116);
      *(v88 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_metadata) = v84;
      sub_1DDA15100();
      v89 = v117[2];
      sub_1DDA15130();
      sub_1DDA15140();
      sub_1DDA15110();
      v79 += v114;
      --v74;
    }

    while (v74);

    v90 = v117;
    v67 = v101;
    v17 = v102;
    v64 = v95;
  }

  else
  {

    v90 = MEMORY[0x1E69E7CC0];
  }

  v91 = v106;
  sub_1DD9184B0(v107, v64, v105, v108, v103, v104, v106, v17, v110, v90);

  sub_1DD90D378(v17, &qword_1ECD82F60, &qword_1DDA18890);
  return (v67)(v91, v111);
}

uint64_t sub_1DD95D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD95D63C, 0, 0);
}

uint64_t sub_1DD95D63C()
{
  v1 = v0[5];
  swift_unownedRetainStrong();
  v0[6] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1DD95D6FC;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DD95D89C(v5, v3, v4);
}

uint64_t sub_1DD95D6FC()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD95D838, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DD95D838()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1DD95D89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83368, &qword_1DDA1A268) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_1DDA13F30();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_1DDA138A0();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_1DDA136B0();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = sub_1DDA13FF0();
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD95DAAC, 0, 0);
}

uint64_t sub_1DD95DAAC()
{
  v46 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[4];
  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20C8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14F00();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  if (v8)
  {
    v41 = v0[16];
    v12 = v0[14];
    v13 = v0[15];
    v14 = v0[13];
    v15 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v15 = 136315138;
    v42 = v7;
    sub_1DDA13FA0();
    sub_1DD961078(&qword_1ECD83370, MEMORY[0x1E69695A8]);
    v16 = sub_1DDA15400();
    v18 = v17;
    (*(v12 + 8))(v13, v14);
    (*(v10 + 8))(v9, v41);
    v19 = sub_1DD93FA54(v16, v18, &v45);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1DD8F8000, v6, v42, "Received count tokens in prompt template request with identifier: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1E12B8CE0](v43, -1, -1);
    MEMORY[0x1E12B8CE0](v15, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[10];
  v23 = v0[4];
  v44 = v0[5];
  v24 = v0[3];
  v25 = sub_1DDA13FE0();
  v27 = v26;
  v28 = sub_1DDA13FD0();
  v30 = v29;
  sub_1DDA13C80();
  v31 = sub_1DDA13890();
  (*(v21 + 8))(v20, v22);
  v32 = sub_1DD9C13D0(v28, v30, v31);
  v34 = v33;
  LOBYTE(v28) = v35;
  v0[19] = sub_1DD95FD2C(v25, v27, v32, v33, v35 & 1);
  sub_1DD928DD4(v32, v34, v28 & 1);

  v36 = v0[9];
  v37 = v0[3];
  sub_1DDA13C70();
  v38 = swift_task_alloc();
  v0[20] = v38;
  *v38 = v0;
  v38[1] = sub_1DD95DEAC;
  v39 = v0[9];

  return sub_1DD928A40();
}

uint64_t sub_1DD95DEAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  v4[21] = v1;

  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_1DD95E144;
  }

  else
  {
    v4[22] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_1DD95E034;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DD95E034()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[2];
  v9 = sub_1DDA13ED0();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1DDA13A90();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DD95E144()
{
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t BlackPowderInferenceProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  BlackPowderInferenceProvider.init()();
  return v3;
}

void BlackPowderInferenceProvider.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Anvil28BlackPowderInferenceProvider____lazy_storage___handler;
  v3 = sub_1DDA13BA0();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  type metadata accessor for InferenceProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 16) = v4;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DDA14810();
  __swift_project_value_buffer(v5, qword_1ECDA20C8);
  v6 = sub_1DDA147F0();
  v7 = sub_1DDA14F00();
  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_6;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v24 = v9;
  *v8 = 136315650;
  v10 = objc_opt_self();
  v11 = [v10 processInfo];
  v12 = [v11 processName];

  v13 = sub_1DDA14B10();
  v15 = v14;

  v16 = sub_1DD93FA54(v13, v15, &v24);

  *(v8 + 4) = v16;
  *(v8 + 12) = 2080;
  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  if (v18)
  {
    v19 = sub_1DDA14B10();
    v21 = v20;

    v22 = sub_1DD93FA54(v19, v21, &v24);

    *(v8 + 14) = v22;
    *(v8 + 22) = 1024;
    v23 = [v10 processInfo];
    LODWORD(v22) = [v23 processIdentifier];

    *(v8 + 24) = v22;
    _os_log_impl(&dword_1DD8F8000, v6, v7, "Starting process: %s, bundle identifier: %s, pid: %d", v8, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v9, -1, -1);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
LABEL_6:

    return;
  }

  __break(1u);
}

uint64_t BlackPowderInferenceProvider.loadIn(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD95E54C, 0, 0);
}

uint64_t sub_1DD95E54C()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DD941194;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1DD95E5E8(v4, v3);
}

uint64_t sub_1DD95E5E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD95E60C, 0, 0);
}

uint64_t sub_1DD95E60C()
{
  v14 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA20C8);

  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14F00();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DD93FA54(v6, v5, &v13);
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Received load in request for asset: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v9 = *(v0[4] + 16);
  v0[5] = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_1DD95E830;

    return sub_1DD927F80();
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DD95E830()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD95E96C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DD95E96C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t BlackPowderInferenceProvider.loadOut(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD95E9F4, 0, 0);
}

uint64_t sub_1DD95E9F4()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DD941194;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1DD95EA90(v4, v3);
}

uint64_t sub_1DD95EA90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD95EAB4, 0, 0);
}

uint64_t sub_1DD95EAB4()
{
  v14 = v0;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1DDA14810();
  __swift_project_value_buffer(v2, qword_1ECDA20C8);

  v3 = sub_1DDA147F0();
  v4 = sub_1DDA14F00();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1DD93FA54(v6, v5, &v13);
    _os_log_impl(&dword_1DD8F8000, v3, v4, "Received load out request for asset: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12B8CE0](v8, -1, -1);
    MEMORY[0x1E12B8CE0](v7, -1, -1);
  }

  v9 = *(v0[4] + 16);
  v0[5] = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_1DD95ECD8;

    return sub_1DD928114();
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DD95ECD8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD961614, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t BlackPowderInferenceProvider.requestStream(clientData:configuration:)()
{
  v0 = sub_1DDA13BA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD957FE0(v4);
  sub_1DDA13B70();
  return (*(v1 + 8))(v4, v0);
}

{
  v0 = sub_1DDA13BA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD957FE0(v4);
  sub_1DDA13B60();
  return (*(v1 + 8))(v4, v0);
}

uint64_t BlackPowderInferenceProvider.requestOneShot(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1DDA13BA0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD95F0C0, 0, 0);
}

uint64_t sub_1DD95F0C0()
{
  v1 = v0[5];
  sub_1DD957FE0(v0[8]);
  v2 = *(MEMORY[0x1E69DA5B0] + 4);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1DD95F16C;
  v4 = v0[8];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x1EEE4A098](v7, v5, v6);
}

uint64_t sub_1DD95F16C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  (*(v6[7] + 8))(v6[8], v6[6]);
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD95F324, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_1DD95F324()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t BlackPowderInferenceProvider.deinit()
{
  v1 = *(v0 + 16);

  sub_1DD90D378(v0 + OBJC_IVAR____TtC5Anvil28BlackPowderInferenceProvider____lazy_storage___handler, &qword_1ECD83328, qword_1DDA1A108);
  return v0;
}

uint64_t BlackPowderInferenceProvider.__deallocating_deinit()
{
  v1 = v0[2];

  sub_1DD90D378(v0 + OBJC_IVAR____TtC5Anvil28BlackPowderInferenceProvider____lazy_storage___handler, &qword_1ECD83328, qword_1DDA1A108);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void sub_1DD95F444(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  BlackPowderInferenceProvider.init()();
  *a1 = v5;
}

uint64_t sub_1DD95F480(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DD95F4A8, 0, 0);
}

uint64_t sub_1DD95F4A8()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DD93DEB4;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1DD95E5E8(v4, v3);
}

uint64_t sub_1DD95F544(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DD95E9F4, 0, 0);
}

void sub_1DD95F56C()
{
  v1 = *(MEMORY[0x1E69B2688] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1DD92BD10;

  JUMPOUT(0x1E12B6E40);
}

uint64_t sub_1DD95F634()
{
  v1 = sub_1DDA13BA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1DD957FE0(v5);
  sub_1DDA13B70();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1DD95F730()
{
  v1 = sub_1DDA13BA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1DD957FE0(v5);
  sub_1DDA13B60();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1DD95F824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_1DDA13BA0();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v3;
  v4[7] = v8;
  v4[8] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1DD95F8EC, 0, 0);
}

uint64_t sub_1DD95F8EC()
{
  v1 = v0[8];
  sub_1DD957FE0(v0[7]);
  v2 = *(MEMORY[0x1E69DA5B0] + 4);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1DD95F994;
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x1EEE4A098](v7, v5, v6);
}

uint64_t sub_1DD95F994(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  (*(v6[6] + 8))(v6[7], v6[5]);
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD95FB4C, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_1DD95FB4C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1DD95FBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x1E69B2680] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1DD92BD10;

  return MEMORY[0x1EEE1F398](a1, a2, a3, a4, a5);
}

void sub_1DD95FC7C()
{
  v1 = *(MEMORY[0x1E69B2678] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1DD9165BC;

  JUMPOUT(0x1E12B6E20);
}

uint64_t sub_1DD95FD2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1DDA14810();
  __swift_project_value_buffer(v12, qword_1ECDA20C8);

  sub_1DD928DB4(a3, a4, a5 & 1);
  v13 = sub_1DDA147F0();
  v14 = sub_1DDA14F00();

  sub_1DD928DD4(a3, a4, a5 & 1);
  v35 = a4;
  v32 = a3;
  if (os_log_type_enabled(v13, v14))
  {
    v31 = v6;
    v15 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v15 = 136315394;
    *(v15 + 4) = sub_1DD93FA54(a1, a2, &v33);
    *(v15 + 12) = 2080;
    v16 = sub_1DD9C0FBC(a3, a4, a5 & 1);
    a3 = v17;
    v18 = sub_1DD93FA54(v16, v17, &v33);

    *(v15 + 14) = v18;
    _os_log_impl(&dword_1DD8F8000, v13, v14, "Load model %s for client: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v30, -1, -1);
    v19 = v15;
    v6 = v31;
    MEMORY[0x1E12B8CE0](v19, -1, -1);
  }

  if (!*(v6 + 16) || a1 == 0xD000000000000018 && 0x80000001DDA262D0 == a2 || (result = sub_1DDA15440(), (result & 1) != 0))
  {
    v21 = sub_1DD917D58(a1, a2, v32, v35, a5 & 1);
    if (v21)
    {
      a3 = v21;
      v22 = *(v6 + 16);
      *(v6 + 16) = v21;

      v23 = sub_1DDA147F0();
      v24 = sub_1DDA14F00();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_1DD93FA54(a1, a2, &v33);
        _os_log_impl(&dword_1DD8F8000, v23, v24, "Successfully loaded model %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1E12B8CE0](v26, -1, -1);
        MEMORY[0x1E12B8CE0](v25, -1, -1);
      }
    }

    else
    {
      v27 = sub_1DDA13840();
      sub_1DD961078(&qword_1ECD82F58, MEMORY[0x1E69DA4E8]);
      swift_allocError();
      v29 = v28;
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_1DDA15070();

      v33 = 0xD000000000000027;
      v34 = 0x80000001DDA27E60;
      MEMORY[0x1E12B7AB0](a1, a2);
      sub_1DDA13800();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69DA4D0], v27);
      swift_willThrow();
    }

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD960184(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD9601A4, 0, 0);
}

uint64_t sub_1DD9601A4()
{
  v1 = v0[7];
  sub_1DD929A28(v0[8], (v0 + 2));
  sub_1DDA13BE0();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DD960214(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD961610, 0, 0);
}

uint64_t sub_1DD960234(int a1, id a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1DDA14E00();
}

uint64_t sub_1DD960294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_1DDA138C0();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DDA14730();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v60 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DDA13AD0();
  v59 = *(v61 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DDA145C0();
  v64 = *(v11 - 8);
  v12 = v64[8];
  MEMORY[0x1EEE9AC00](v11);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DDA14660();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DDA13EF0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v54[1] = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v54 - v25;
  sub_1DDA138B0();
  v27 = (*(v21 + 88))(v26, v20);
  if (v27 == *MEMORY[0x1E69DA668])
  {
    (*(v21 + 96))(v26, v20);
    (*(v16 + 32))(v19, v26, v15);
    v28 = v65;
    sub_1DDA14680();
    (*(v16 + 8))(v19, v15);
    v29 = sub_1DDA14720();
    return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  }

  v31 = v65;
  if (v27 == *MEMORY[0x1E69DA660])
  {
    (*(v21 + 96))(v26, v20);
    v32 = v64;
    (v64[4])(v14, v26, v11);
    sub_1DDA14670();
    (v32[1])(v14, v11);
LABEL_11:
    v37 = sub_1DDA14720();
    return (*(*(v37 - 8) + 56))(v31, 0, 1, v37);
  }

  if (v27 == *MEMORY[0x1E69DA680])
  {
    (*(v21 + 96))(v26, v20);
    v33 = v58;
    v34 = v59;
    v35 = v61;
    (*(v59 + 32))(v58, v26, v61);
    sub_1DDA13AC0();
    sub_1DDA13AA0();
    v36 = v60;
    sub_1DDA13AB0();
    sub_1DDA14710();

    (*(v62 + 1))(v36, v63);
    (*(v34 + 8))(v33, v35);
    goto LABEL_11;
  }

  if (v27 == *MEMORY[0x1E69DA678])
  {
    sub_1DDA146C0();
    goto LABEL_11;
  }

  if (v27 == *MEMORY[0x1E69DA670])
  {
    sub_1DDA14690();
    goto LABEL_11;
  }

  v54[0] = v20;
  if (qword_1ECD827A0 != -1)
  {
    swift_once();
  }

  v38 = sub_1DDA14810();
  __swift_project_value_buffer(v38, qword_1ECDA20C8);
  v39 = v55;
  v40 = v56;
  v41 = v57;
  (*(v56 + 16))(v55, a1, v57);
  v42 = sub_1DDA147F0();
  v43 = sub_1DDA14EE0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v62 = v44;
    v64 = swift_slowAlloc();
    v66 = v64;
    *v44 = 136315138;
    LODWORD(v63) = v43;
    sub_1DDA138B0();
    v45 = sub_1DDA14B70();
    v46 = v39;
    v48 = v47;
    (*(v40 + 8))(v46, v57);
    v49 = sub_1DD93FA54(v45, v48, &v66);

    v50 = v62;
    *(v62 + 1) = v49;
    v51 = v50;
    _os_log_impl(&dword_1DD8F8000, v42, v63, "Unknown tool type: %s", v50, 0xCu);
    v52 = v64;
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1E12B8CE0](v52, -1, -1);
    MEMORY[0x1E12B8CE0](v51, -1, -1);
  }

  else
  {

    (*(v40 + 8))(v39, v41);
  }

  v53 = sub_1DDA14720();
  (*(*(v53 - 8) + 56))(v31, 1, 1, v53);
  return (*(v21 + 8))(v26, v54[0]);
}

uint64_t sub_1DD960A78()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t type metadata accessor for BlackPowderInferenceProvider()
{
  result = qword_1ECD83330;
  if (!qword_1ECD83330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD960B04()
{
  sub_1DD960BD0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DD960BD0()
{
  if (!qword_1ECD83340)
  {
    sub_1DDA13BA0();
    v0 = sub_1DDA14F50();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECD83340);
    }
  }
}

uint64_t sub_1DD960C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83328, qword_1DDA1A108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD960C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD92BD10;

  return sub_1DD9584B4(a1, a2, a3, v8);
}

uint64_t sub_1DD960D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD92BD10;

  return sub_1DD958D34(a1, a2, a3, v8);
}

uint64_t sub_1DD960E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD92BD10;

  return sub_1DD959FB8(a1, a2, a3, v8);
}

uint64_t sub_1DD960F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DD9165BC;

  return sub_1DD95D618(a1, a2, a3, v8);
}

uint64_t sub_1DD961008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83328, qword_1DDA1A108);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD961078(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1DD9610EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83398, &qword_1DDA1A2B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_1DDA14720();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v27 = &v24 - v12;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v14 = *(sub_1DDA138C0() - 8);
  v15 = (v7 + 48);
  v16 = (v7 + 32);
  v17 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v28 = *(v14 + 72);
  v18 = MEMORY[0x1E69E7CC0];
  v25 = v11;
  v26 = v7;
  v24 = (v7 + 48);
  do
  {
    sub_1DD960294(v17, v5);
    if ((*v15)(v5, 1, v6) == 1)
    {
      sub_1DD90D378(v5, &qword_1ECD83398, &qword_1DDA1A2B0);
    }

    else
    {
      v19 = *v16;
      v20 = v27;
      (*v16)(v27, v5, v6);
      v19(v11, v20, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DD9092A8(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1DD9092A8(v21 > 1, v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      v11 = v25;
      v19(&v18[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v25, v6);
      v15 = v24;
    }

    v17 += v28;
    --v13;
  }

  while (v13);
  return v18;
}

uint64_t sub_1DD9613D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD961424(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD92BD10;

  return sub_1DD9903E4(a1, v6, v1 + v5);
}

uint64_t objectdestroy_52Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DD961624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833B8, &qword_1DDA1A310);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16[-v7];
  v9 = sub_1DDA141F0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DDA14240();
  v18 = a2;
  sub_1DDA142C0();
  sub_1DDA14200();
  sub_1DDA142A0();
  v11 = swift_allocBox();
  v17 = a3;
  sub_1DDA142C0();
  *v8 = v11;
  v12 = *MEMORY[0x1E69AA620];
  v13 = sub_1DDA142B0();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v8, v12, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  return sub_1DDA14230();
}

uint64_t sub_1DD961850(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833C0, &qword_1DDA1A318);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Credentials(0);
  v12 = *(*(v11 - 8) + 48);
  v12(a2, 1, v11);
  sub_1DDA14270();
  sub_1DD962314(a2, v6);
  if (v12(v6, 1, v11) == 1)
  {
    sub_1DD962384(v6);
    v13 = sub_1DDA14260();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  else
  {
    v14 = v6[32];
    sub_1DD9623EC(v6);
    v15 = sub_1DDA14260();
    v16 = *(v15 - 8);
    v17 = MEMORY[0x1E69AA5F0];
    if (!v14)
    {
      v17 = MEMORY[0x1E69AA5E8];
    }

    (*(*(v15 - 8) + 104))(v10, *v17, v15);
    (*(v16 + 56))(v10, 0, 1, v15);
  }

  return sub_1DDA14280();
}

uint64_t sub_1DD961A94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833B8, &qword_1DDA1A310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14[-v5];
  v7 = sub_1DDA141F0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DDA14240();
  v15 = a2;
  sub_1DDA142C0();
  sub_1DDA14200();
  sub_1DDA142A0();
  v9 = swift_allocBox();
  sub_1DDA142C0();
  *v6 = v9;
  v10 = *MEMORY[0x1E69AA620];
  v11 = sub_1DDA142B0();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v6, v10, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  return sub_1DDA14230();
}

uint64_t sub_1DD961CE8(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1DDA141F0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833B0, &qword_1DDA1A308);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14[-v9];
  sub_1DDA14240();
  v11 = sub_1DDA14210();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v10, **(&unk_1E8659220 + a2), v11);
  sub_1DDA14210();
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1DDA14220();
  v15 = a3;
  sub_1DDA142C0();
  return sub_1DDA14200();
}

uint64_t sub_1DD961EE0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1DDA141F0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833B0, &qword_1DDA1A308);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14[-v9];
  sub_1DDA14240();
  v11 = sub_1DDA14210();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v10, **(&unk_1E8659220 + a2), v11);
  sub_1DDA14210();
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1DDA14220();
  v15 = a3;
  sub_1DDA142C0();
  return sub_1DDA14200();
}

uint64_t sub_1DD9620D8()
{
  v0 = sub_1DDA141F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1DDA14240();
  sub_1DDA142C0();
  return sub_1DDA14200();
}

uint64_t sub_1DD9621D0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833A8, &qword_1DDA1A300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1DDA136B0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_1DDA141E0();
}

uint64_t sub_1DD962314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD962384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD9623EC(uint64_t a1)
{
  v2 = type metadata accessor for Credentials(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DD962448()
{
  v0 = sub_1DDA14B00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833C8, &qword_1DDA1A320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DDA1A2F0;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1DDA14E60();
  *(inited + 56) = 0x746E65696C63;
  *(inited + 64) = 0xE600000000000000;
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processName];
  if (v3)
  {
    v4 = v3;

    *(inited + 72) = v4;
    sub_1DD94001C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD833D0, &qword_1DDA1A328);
    swift_arrayDestroy();
    sub_1DD9625D0();
    v5 = sub_1DDA14A90();

    AnalyticsSendEvent();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1DD9625D0()
{
  result = qword_1ECD831A0;
  if (!qword_1ECD831A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECD831A0);
  }

  return result;
}

uint64_t type metadata accessor for Instrumentation()
{
  result = qword_1ECD833D8;
  if (!qword_1ECD833D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD962690()
{
  result = sub_1DDA136B0();
  if (v1 <= 0x3F)
  {
    result = sub_1DDA14840();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD96272C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x737574617473;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x74757074756FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000012;
    v4 = 0x80000001DDA26C60;
  }

  else
  {
    v3 = 0x65756E69746E6F63;
    v4 = 0xEC0000006C72755FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x737574617473;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x74757074756FLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001DDA26C60;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC0000006C72755FLL;
    if (v3 != 0x65756E69746E6F63)
    {
LABEL_31:
      v7 = sub_1DDA15440();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1DD9628C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7865646E69;
    }

    else
    {
      v5 = 0x746E65746E6F63;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7865646E69;
  if (a2 != 2)
  {
    v8 = 0x746E65746E6F63;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD962A10(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x646E695F6D657469;
    }

    else
    {
      v4 = 0x695F6563696F6863;
    }

    if (v2)
    {
      v3 = 0xEA00000000007865;
    }

    else
    {
      v3 = 0xEC0000007865646ELL;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x5F746E65746E6F63;
    v3 = 0xED00007865646E69;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7865646E69;
  }

  else
  {
    v4 = 0x697461746F6E6E61;
    v3 = 0xEA00000000006E6FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x646E695F6D657469;
    }

    else
    {
      v9 = 0x695F6563696F6863;
    }

    if (a2)
    {
      v8 = 0xEA00000000007865;
    }

    else
    {
      v8 = 0xEC0000007865646ELL;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7865646E69;
    if (a2 != 3)
    {
      v6 = 0x697461746F6E6E61;
      v5 = 0xEA00000000006E6FLL;
    }

    if (a2 == 2)
    {
      v7 = 0x5F746E65746E6F63;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xED00007865646E69;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DDA15440();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DD962BC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE400000000000000;
  v6 = 1701667182;
  if (a1 != 5)
  {
    v6 = 1702521203;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x737574617473;
  if (a1 != 3)
  {
    v8 = 0x7079745F656D696DLL;
    v7 = 0xE900000000000065;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x5F64657461657263;
  v10 = 0xEA00000000007461;
  if (a1 != 1)
  {
    v9 = 0x6574656C706D6F63;
    v10 = 0xEC00000074615F64;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xEA00000000007461;
        if (v11 != 0x5F64657461657263)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v13 = 0xEC00000074615F64;
        if (v11 != 0x6574656C706D6F63)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_38;
      }
    }
  }

  else if (a2 > 4u)
  {
    v13 = 0xE400000000000000;
    if (a2 == 5)
    {
      if (v11 != 1701667182)
      {
        goto LABEL_38;
      }
    }

    else if (v11 != 1702521203)
    {
LABEL_38:
      v14 = sub_1DDA15440();
      goto LABEL_39;
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x737574617473)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0xE900000000000065;
    if (v11 != 0x7079745F656D696DLL)
    {
      goto LABEL_38;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_38;
  }

  v14 = 1;
LABEL_39:

  return v14 & 1;
}

uint64_t sub_1DD962DE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000001DDA26870;
  v6 = 0xD000000000000020;
  if (a1 != 6)
  {
    v6 = 0x7463757274736E69;
    v5 = 0xEC000000736E6F69;
  }

  v7 = 0xE700000000000000;
  v8 = 0x736563696F6863;
  if (a1 != 4)
  {
    v8 = 0x73656369746F6ELL;
    v7 = 0xE700000000000000;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000019;
  v10 = 0x80000001DDA26C10;
  if (a1 != 2)
  {
    v9 = 0x6C65646F6DLL;
    v10 = 0xE500000000000000;
  }

  if (a1)
  {
    v4 = 0x5F6E6F6973736573;
    v3 = 0xEA00000000006469;
  }

  if (a1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v7;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x80000001DDA26870;
        if (v11 != 0xD000000000000020)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v13 = 0xEC000000736E6F69;
        if (v11 != 0x7463757274736E69)
        {
LABEL_44:
          v15 = sub_1DDA15440();
          goto LABEL_45;
        }
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (a2 == 4)
      {
        v14 = 1768908899;
      }

      else
      {
        v14 = 1769238382;
      }

      if (v11 != (v14 | 0x73656300000000))
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0x80000001DDA26C10;
      if (v11 != 0xD000000000000019)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6C65646F6DLL)
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006469;
    if (v11 != 0x5F6E6F6973736573)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_44;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_44;
  }

  v15 = 1;
LABEL_45:

  return v15 & 1;
}

uint64_t sub_1DD963050(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5F746E65746E6F63;
    }

    else
    {
      v5 = 0x6C617375666572;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007865646E69;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0x5F746E65746E6F63;
  v8 = 0xED00007865646E69;
  if (a2 != 2)
  {
    v7 = 0x6C617375666572;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9631B8(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4)
{
  v6 = 0xEA00000000006E6FLL;
  v7 = 0x6974617265646F6DLL;
  if (a2 <= 1)
  {
    v9 = 0x6974617265646F6DLL;
    v8 = 0xEA00000000006E6FLL;
    if (!a2)
    {
      goto LABEL_14;
    }

    if (a2 != 1)
    {
      goto LABEL_24;
    }

    v8 = 0xE500000000000000;
    v9 = 0x726568746FLL;
    if (a4 > 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 == 4)
        {
          v8 = 0x80000001DDA28010;
          v9 = 0xD00000000000001CLL;
          if (a4 <= 1)
          {
            goto LABEL_25;
          }

LABEL_15:
          switch(a4)
          {
            case 2:
              v6 = 0xEE007265746C6966;
              if (v9 != 0x5F746E65746E6F63)
              {
                goto LABEL_32;
              }

              goto LABEL_29;
            case 3:
              v6 = 0x80000001DDA28030;
              if (v9 != 0xD00000000000001BLL)
              {
                goto LABEL_32;
              }

              goto LABEL_29;
            case 4:
              v6 = 0x80000001DDA28010;
              if (v9 != 0xD00000000000001CLL)
              {
                goto LABEL_32;
              }

              goto LABEL_29;
          }

          goto LABEL_31;
        }

LABEL_24:
        v9 = a1;
        v8 = a2;
        if (a4 <= 1)
        {
          goto LABEL_25;
        }

        goto LABEL_15;
      }

      v9 = 0xD00000000000001BLL;
      v8 = 0x80000001DDA28030;
LABEL_14:
      if (a4 <= 1)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    v9 = 0x5F746E65746E6F63;
    v8 = 0xEE007265746C6966;
    if (a4 > 1)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  if (!a4)
  {
    goto LABEL_28;
  }

  if (a4 != 1)
  {
LABEL_31:
    v6 = a4;
    if (v9 != a3)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v6 = 0xE500000000000000;
  v7 = 0x726568746FLL;
LABEL_28:
  if (v9 != v7)
  {
LABEL_32:
    v11 = a1;
    v12 = a2;
    v13 = sub_1DDA15440();
    a2 = v12;
    v10 = v13;
    a1 = v11;
    goto LABEL_33;
  }

LABEL_29:
  if (v8 != v6)
  {
    goto LABEL_32;
  }

  v10 = 1;
LABEL_33:
  sub_1DD928DC0(a1, a2);
  sub_1DD928DC0(a3, a4);

  return v10 & 1;
}

uint64_t sub_1DD9633FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5F746E65746E6F63;
    }

    else
    {
      v5 = 0x61746C6564;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007865646E69;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0x5F746E65746E6F63;
  v8 = 0xED00007865646E69;
  if (a2 != 2)
  {
    v7 = 0x61746C6564;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD96355C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x5F746E65746E6F63;
    }

    else
    {
      v5 = 0x65756C6176;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007865646E69;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0x5F746E65746E6F63;
  v8 = 0xED00007865646E69;
  if (a2 != 2)
  {
    v7 = 0x65756C6176;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD9636BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000015;
      v4 = 0x80000001DDA26D40;
    }

    else
    {
      v3 = 0x65736E6F70736572;
      v4 = 0xE900000000000073;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x6C70755F656C6966;
    }

    else
    {
      v3 = 0xD000000000000016;
    }

    if (v2)
    {
      v4 = 0xEC0000007364616FLL;
    }

    else
    {
      v4 = 0x80000001DDA26D10;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000001DDA26D40;
      if (v3 != 0xD000000000000015)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE900000000000073;
      if (v3 != 0x65736E6F70736572)
      {
LABEL_26:
        v7 = sub_1DDA15440();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x6C70755F656C6966;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (a2)
    {
      v6 = 0xEC0000007364616FLL;
    }

    else
    {
      v6 = 0x80000001DDA26D10;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_1DD963824(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7865646E69;
    }

    else
    {
      v5 = 0x6567616D69;
    }

    v6 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0x7865646E69;
  if (a2 != 2)
  {
    v7 = 0x6567616D69;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DDA15440();
  }

  return v10 & 1;
}

uint64_t sub_1DD963964(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x695F6563696F6863;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7865646E69;
    }

    else
    {
      v5 = 1701603686;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x646E695F6D657469;
    }

    else
    {
      v5 = 0x695F6563696F6863;
    }

    if (v4)
    {
      v6 = 0xEA00000000007865;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7865646E69;
  if (a2 != 2)
  {
    v8 = 1701603686;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x646E695F6D657469;
    v2 = 0xEA00000000007865;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD963A9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x79745F746E617267;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x735F746E65696C63;
    }

    else
    {
      v5 = 0x5F68736572666572;
    }

    if (v4 == 2)
    {
      v6 = 0xED00007465726365;
    }

    else
    {
      v6 = 0xED00006E656B6F74;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x695F746E65696C63;
    }

    else
    {
      v5 = 0x79745F746E617267;
    }

    if (v4)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xEA00000000006570;
    }
  }

  v7 = 0x735F746E65696C63;
  v8 = 0xED00007465726365;
  if (a2 != 2)
  {
    v7 = 0x5F68736572666572;
    v8 = 0xED00006E656B6F74;
  }

  if (a2)
  {
    v3 = 0x695F746E65696C63;
    v2 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD963C18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x79745F746E617267;
  v4 = a1;
  v5 = 0x695F746E65696C63;
  v6 = 0xE900000000000064;
  v7 = 0x735F746E65696C63;
  v8 = 0xED00007465726365;
  if (a1 != 4)
  {
    v7 = 0x7463657269646572;
    v8 = 0xEC0000006972755FLL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1701080931;
  if (a1 != 1)
  {
    v10 = 0x7265765F65646F63;
    v9 = 0xED00007265696669;
  }

  if (!a1)
  {
    v10 = 0x79745F746E617267;
    v9 = 0xEA00000000006570;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE900000000000064;
      if (v11 != 0x695F746E65696C63)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00007465726365;
      if (v11 != 0x735F746E65696C63)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEC0000006972755FLL;
      if (v11 != 0x7463657269646572)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1701080931)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x7265765F65646F63;
      v2 = 0xED00007265696669;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1DDA15440();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1DD963E28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF746E69685F6570;
  v3 = 0x79745F6E656B6F74;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x695F746E65696C63;
    }

    else
    {
      v5 = 0x735F746E65696C63;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xED00007465726365;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E656B6F74;
    }

    else
    {
      v5 = 0x79745F6E656B6F74;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEF746E69685F6570;
    }
  }

  v7 = 0x695F746E65696C63;
  v8 = 0xE900000000000064;
  if (a2 != 2)
  {
    v7 = 0x735F746E65696C63;
    v8 = 0xED00007465726365;
  }

  if (a2)
  {
    v3 = 0x6E656B6F74;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD963F8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E656B6FLL;
  v3 = 0x745F737365636361;
  v4 = a1;
  v5 = 0x79745F6E656B6F74;
  if (a1 == 5)
  {
    v6 = 0xEA00000000006570;
  }

  else
  {
    v5 = 0x735F656369766564;
    v6 = 0xED00007465726365;
  }

  v7 = 0x65706F6373;
  v8 = 0xEA00000000006E69;
  if (a1 == 3)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v7 = 0x5F73657269707865;
  }

  if (a1 > 4u)
  {
    v8 = v6;
  }

  else
  {
    v5 = v7;
  }

  v9 = 0x5F68736572666572;
  v10 = 0xED00006E656B6F74;
  if (a1 != 1)
  {
    v9 = 0x6E656B6F745F6469;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x745F737365636361;
    v10 = 0xEC0000006E656B6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6E656B6F745F6469)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v13 = 0x5F68736572666572;
    v14 = 0x6E656B6F74;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x65706F6373)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }

      v3 = 0x5F73657269707865;
      v2 = 0xEA00000000006E69;
LABEL_34:
      if (v11 != v3)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (a2 == 5)
    {
      v2 = 0xEA00000000006570;
      if (v11 != 0x79745F6E656B6F74)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v13 = 0x735F656369766564;
    v14 = 0x7465726365;
  }

  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v11 != v13)
  {
LABEL_40:
    v15 = sub_1DDA15440();
    goto LABEL_41;
  }

LABEL_38:
  if (v12 != v2)
  {
    goto LABEL_40;
  }

  v15 = 1;
LABEL_41:

  return v15 & 1;
}

uint64_t sub_1DD9641E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006F697461;
  v3 = 0x725F746365707361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C65646F6DLL;
    }

    else
    {
      v5 = 0x6C6961746564;
    }

    if (v4 == 2)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x67616D695F6D756ELL;
    }

    else
    {
      v5 = 0x725F746365707361;
    }

    if (v4)
    {
      v6 = 0xEA00000000007365;
    }

    else
    {
      v6 = 0xEC0000006F697461;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C65646F6DLL;
  if (a2 != 2)
  {
    v8 = 0x6C6961746564;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x67616D695F6D756ELL;
    v2 = 0xEA00000000007365;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD964320(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  if (a1 != 5)
  {
    v5 = 0x766F5F776F6C6C61;
    v4 = 0xEF73656469727265;
  }

  v6 = 0x656C7069746C756DLL;
  if (a1 != 3)
  {
    v6 = 0x6465726975716572;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  if (a1 != 1)
  {
    v8 = 0x736E6F6974706FLL;
    v7 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1701869940)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE700000000000000;
        if (v9 != 0x736E6F6974706FLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE400000000000000;
      if (v9 != 1701667182)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x746C7561666564)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xEF73656469727265;
      if (v9 != 0x766F5F776F6C6C61)
      {
LABEL_39:
        v12 = sub_1DDA15440();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x656C7069746C756DLL)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x6465726975716572)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1DD96454C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7972657571;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD000000000000026;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001DDA26B10;
    }

    else
    {
      v5 = 0x80000001DDA26B30;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7972657571;
    }

    else
    {
      v4 = 0xD00000000000001FLL;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0x80000001DDA26AE0;
    }
  }

  v6 = 0x80000001DDA26B10;
  v7 = 0xD000000000000026;
  if (a2 == 2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x80000001DDA26B30;
  }

  if (a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
    v8 = 0x80000001DDA26AE0;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD964674(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F64657461657263;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEA00000000007461;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x7463615F7473616CLL;
    v4 = 0xEE0074615F657669;
  }

  else
  {
    v3 = 0x5F73657269707865;
    if (v2 == 3)
    {
      v4 = 0xEA00000000007461;
    }

    else
    {
      v4 = 0xED00007265746661;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x5F64657461657263;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEA00000000007461;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEE0074615F657669;
    if (v3 != 0x7463615F7473616CLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA00000000007461;
    if (v3 != 0x5F73657269707865)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00007265746661;
    if (v3 != 0x5F73657269707865)
    {
LABEL_31:
      v7 = sub_1DDA15440();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1DD964838(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7827308;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1751607656;
    }

    else
    {
      v4 = 0x6465727265666E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 7827308;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1751607656;
  if (a2 != 2)
  {
    v8 = 0x6465727265666E69;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6D756964656DLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD96495C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6465727265666E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1819042164;
    }

    else
    {
      v4 = 1701079415;
    }

    v5 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x657261757173;
    }

    else
    {
      v4 = 0x6465727265666E69;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 1819042164;
  if (a2 != 2)
  {
    v7 = 1701079415;
  }

  if (a2)
  {
    v2 = 0x657261757173;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DDA15440();
  }

  return v10 & 1;
}

uint64_t sub_1DD964A78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C6C616D73;
    }

    else
    {
      v4 = 0x6465727265666E69;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x656772616CLL;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x656772616C78;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6C6C616D73;
    }

    else
    {
      v9 = 0x6465727265666E69;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x656772616CLL;
    if (a2 != 3)
    {
      v6 = 0x656772616C78;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DDA15440();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DD964BE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65675F6567616D69;
    }

    else
    {
      v4 = 0x6E65675F656C6966;
    }

    if (v3 == 2)
    {
      v5 = 0xEF726F746172656ELL;
    }

    else
    {
      v5 = 0xEE00726F74617265;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6E6F6974636E7566;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x65675F6567616D69;
  v8 = 0xEF726F746172656ELL;
  if (a2 != 2)
  {
    v7 = 0x6E65675F656C6966;
    v8 = 0xEE00726F74617265;
  }

  if (a2)
  {
    v2 = 0x6E6F6974636E7566;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD964D50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x7463656A626FLL;
    }

    else
    {
      v4 = 1635017060;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x64695F7473726966;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x64695F7473616CLL;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x65726F6D5F736168;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7463656A626FLL;
    }

    else
    {
      v9 = 1635017060;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x64695F7473616CLL;
    if (a2 != 3)
    {
      v6 = 0x65726F6D5F736168;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x64695F7473726966;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DDA15440();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DD964ECC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6C69616D65;
    }

    else
    {
      v3 = 0x5F746E756F636361;
    }

    if (v2 == 2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xEE00737574617473;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0xE500000000000000;
  v8 = 0x6C69616D65;
  if (a2 != 2)
  {
    v8 = 0x5F746E756F636361;
    v7 = 0xEE00737574617473;
  }

  if (a2)
  {
    v6 = 1701667182;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD965008(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0x746369727473;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001DDA26BA0;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x616D65686373;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xD000000000000010;
  v8 = 0x80000001DDA26BA0;
  if (a2 != 2)
  {
    v7 = 0x746369727473;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x616D65686373;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

uint64_t sub_1DD965130(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000010;
      v4 = 0x80000001DDA26910;
    }

    else
    {
      v3 = 0x6C70755F656C6966;
      v4 = 0xEB0000000064616FLL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x65675F6567616D69;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xEF726F746172656ELL;
    }

    else
    {
      v4 = 0x80000001DDA268E0;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000001DDA26910;
      if (v3 != 0xD000000000000010)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xEB0000000064616FLL;
      if (v3 != 0x6C70755F656C6966)
      {
LABEL_26:
        v7 = sub_1DDA15440();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x65675F6567616D69;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = 0xEF726F746172656ELL;
    }

    else
    {
      v6 = 0x80000001DDA268E0;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_1DD9652A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6567617373656DLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1701869940;
    }

    else
    {
      v4 = 0x6567617373656DLL;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE400000000000000;
    v4 = 1701080931;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0xD000000000000020;
    }

    else
    {
      v4 = 0xD000000000000023;
    }

    if (v3 == 3)
    {
      v5 = 0x80000001DDA26870;
    }

    else
    {
      v5 = 0x80000001DDA268A0;
    }
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xE400000000000000;
    v8 = 1701869940;
    v9 = a2 == 0;
LABEL_20:
    if (v9)
    {
      v10 = v2;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (v4 != v10)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (a2 != 2)
  {
    v2 = 0xD000000000000020;
    v6 = 0x80000001DDA26870;
    v7 = 0x80000001DDA268A0;
    v8 = 0xD000000000000023;
    v9 = a2 == 3;
    goto LABEL_20;
  }

  v11 = 0xE400000000000000;
  if (v4 != 1701080931)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (v5 != v11)
  {
LABEL_30:
    v12 = sub_1DDA15440();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_1DD96540C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7107189;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7079745F656D696DLL;
    }

    else
    {
      v4 = 1702521203;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6D616E5F656C6966;
    }

    else
    {
      v4 = 7107189;
    }

    if (v3)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0x7079745F656D696DLL;
  v8 = 0xE900000000000065;
  if (a2 != 2)
  {
    v7 = 1702521203;
    v8 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x6D616E5F656C6966;
    v6 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DDA15440();
  }

  return v11 & 1;
}

unint64_t sub_1DD965548(unint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    while (1)
    {
      v6 = *v5++;
      v7 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
      sub_1DD96D6CC(v6);
      sub_1DD96A62C();
      sub_1DDA15420();
      v8 = v6;
      if (v2)
      {
        break;
      }

      result = sub_1DD96D364(v8);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_1DD96D364(v8);
  }

  return result;
}

uint64_t sub_1DD965608(uint64_t a1)
{
  v2 = v1;
  if (v1[3])
  {
    v4 = v1[2];
    sub_1DDA15590();

    sub_1DDA14BC0();
  }

  else
  {
    sub_1DDA15590();
  }

  v5 = v1[4];
  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        v6 = 6;
      }

      else
      {
        if (v5 != 7)
        {
          goto LABEL_39;
        }

        v6 = 8;
      }
    }

    else if (v5 == 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = 5;
    }

LABEL_21:
    MEMORY[0x1E12B8440](v6);
    v7 = v1[5];
    if (v7)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    goto LABEL_21;
  }

  if (!v5)
  {
    v6 = 0;
    goto LABEL_21;
  }

  if (v5 == 1)
  {
    v6 = 1;
    goto LABEL_21;
  }

LABEL_39:
  MEMORY[0x1E12B8440](7);

  sub_1DD96CD2C(a1, v5);
  sub_1DD96D364(v5);
  v7 = v1[5];
  if (v7)
  {
LABEL_22:
    sub_1DDA15590();

    sub_1DD96D208(a1, v7);

    v8 = v1[6];
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_41:
    sub_1DDA15590();
    v13 = v1[7];
    if (v13)
    {
      goto LABEL_28;
    }

LABEL_42:
    sub_1DDA15590();
    v18 = v2[8];
    if (v18)
    {
      goto LABEL_33;
    }

    goto LABEL_43;
  }

LABEL_40:
  sub_1DDA15590();
  v8 = v1[6];
  if (!v8)
  {
    goto LABEL_41;
  }

LABEL_23:
  sub_1DDA15590();
  MEMORY[0x1E12B8440](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      sub_1DDA14BC0();

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  v13 = v2[7];
  if (!v13)
  {
    goto LABEL_42;
  }

LABEL_28:
  sub_1DDA15590();
  MEMORY[0x1E12B8440](*(v13 + 16));
  v14 = *(v13 + 16);
  if (v14)
  {

    v15 = (v13 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      sub_1DDA14BC0();

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  v18 = v2[8];
  if (v18)
  {
LABEL_33:
    sub_1DDA15590();
    MEMORY[0x1E12B8440](*(v18 + 16));
    v19 = *(v18 + 16);
    if (v19)
    {

      v20 = (v18 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        sub_1DDA14BC0();

        v20 += 2;
        --v19;
      }

      while (v19);
    }

    if (v2[9])
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

LABEL_43:
  sub_1DDA15590();
  if (v2[9])
  {
LABEL_38:
    sub_1DDA15590();

    sub_1DD965608(a1);

    goto LABEL_45;
  }

LABEL_44:
  sub_1DDA15590();
LABEL_45:
  if (*(v2 + 80) != 2)
  {
    sub_1DDA15590();
  }

  sub_1DDA15590();
  v23 = v2[11];
  if (!v23)
  {
    sub_1DDA15590();
    goto LABEL_58;
  }

  sub_1DDA15590();
  if (v23 >> 62)
  {
    v29 = sub_1DDA15190();
    MEMORY[0x1E12B8440](v29);
    result = sub_1DDA15190();
    v25 = result;
    if (!result)
    {
      goto LABEL_58;
    }
  }

  else
  {
    result = MEMORY[0x1E12B8440](*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_58;
    }
  }

  if (v25 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v25; ++i)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B7F50](i, v23);
    }

    else
    {
      v27 = *(v23 + 8 * i + 32);
    }

    sub_1DD965608(a1);
  }

LABEL_58:
  if (!v2[13])
  {
    return sub_1DDA15590();
  }

  v28 = v2[12];
  sub_1DDA15590();

  sub_1DDA14BC0();
}

unint64_t sub_1DD965AC0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000014;
    v6 = 0x664F796E61;
    if (a1 != 8)
    {
      v6 = 0x74736E6F63;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 1836412517;
    if (a1 != 5)
    {
      v7 = 0x736D657469;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7470697263736564;
    v2 = 0x69747265706F7270;
    v3 = 0x726564726F2D78;
    if (a1 != 3)
    {
      v3 = 0x6465726975716572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DD965BEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DD965AC0(*a1);
  v5 = v4;
  if (v3 == sub_1DD965AC0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DDA15440();
  }

  return v8 & 1;
}

uint64_t sub_1DD965C74()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DD965AC0(v1);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD965CD8()
{
  sub_1DD965AC0(*v0);
  sub_1DDA14BC0();
}

uint64_t sub_1DD965D2C()
{
  v1 = *v0;
  sub_1DDA15570();
  sub_1DD965AC0(v1);
  sub_1DDA14BC0();

  return sub_1DDA155B0();
}

uint64_t sub_1DD965D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD96DD3C();
  *a2 = result;
  return result;
}

unint64_t sub_1DD965DBC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD965AC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD965E04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD96DD3C();
  *a1 = result;
  return result;
}

uint64_t sub_1DD965E38(uint64_t a1)
{
  v2 = sub_1DD96A304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD965E74(uint64_t a1)
{
  v2 = sub_1DD96A304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD965EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1DD9AF0DC(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v10 = *(v4 - 2);
      v11 = *(v4 - 1);
      v12 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834A0, &qword_1DDA1A5B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834A8, &qword_1DDA1A5C0);
      swift_dynamicCast();
      v5 = v14;
      v7 = *(v15 + 16);
      v6 = *(v15 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1DD9AF0DC((v6 > 1), v7 + 1, 1);
        v5 = v14;
      }

      *(v15 + 16) = v7 + 1;
      v8 = v15 + 24 * v7;
      *(v8 + 32) = v13;
      *(v8 + 40) = v5;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DD966000(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83440, &qword_1DDA1A598);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD96A304();
  sub_1DDA15650();
  v13 = v4[2];
  v14 = v4[3];
  LOBYTE(v22) = 0;

  sub_1DDA15300();
  if (v3)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {

    v22 = v4[5];
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83410, &qword_1DDA1A588);
    sub_1DD96A468();
    sub_1DDA15330();
    v22 = v4[6];
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82818, &qword_1DDA1A780);
    sub_1DD96A524(&qword_1ECD83458);
    sub_1DDA15330();
    v22 = v4[7];
    v21 = 4;
    sub_1DDA15330();
    v22 = v4[8];
    v21 = 5;
    sub_1DDA15330();
    v22 = v4[9];
    v21 = 6;
    sub_1DD96E4A0(&qword_1ECD83450, v16, type metadata accessor for JSONSchema);
    sub_1DDA15330();
    v17 = *(v4 + 80);
    LOBYTE(v22) = 7;
    sub_1DDA15310();
    v18 = v4[12];
    v19 = v4[13];
    LOBYTE(v22) = 9;

    sub_1DDA15300();

    v22 = v4[11];
    v21 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83430, &qword_1DDA1A590);
    sub_1DD96A590(&qword_1ECD83460, &qword_1ECD83450);
    sub_1DDA15330();
    if (!v4[11])
    {
      v22 = v4[4];
      v21 = 1;
      sub_1DD96A62C();
      sub_1DDA15380();
    }

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_1DD9664B4(void *a1, unint64_t a2)
{
  v3 = a1[4];
  if (a2 >= 8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DDA15630();
    sub_1DD965548(a2, v5);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DDA15640();
    v5[6] = a2;
    sub_1DD96D6CC(a2);
    sub_1DDA14B70();
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1DDA15470();
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1DD966664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1DD96EA30(v21, v18, a4);
        sub_1DD96EA30(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_1DD96EB00(v15, a6);
        sub_1DD96EB00(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_1DD9668AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileGeneratorCall.File(0);
  v132 = *(v4 - 8);
  v5 = *(v132 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v130 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v116 - v8;
  v10 = type metadata accessor for ImageGeneratorCall.Image(0);
  v131 = *(v10 - 8);
  v11 = *(v131 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v129 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v116 - v14;
  v16 = type metadata accessor for MessageContent(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v128 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v121 = &v116 - v21;
  v122 = v22;
  v126 = v15;
  v24 = 0;
  v25 = a1 + 32;
  v26 = a2 + 32;
  v118 = v23;
  v117 = v25;
  v116 = v26;
  while (1)
  {
    if (v24 == v23)
    {
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v36 = v25 + 56 * v24;
    v38 = *v36;
    v37 = *(v36 + 8);
    v39 = *(v36 + 16);
    v40 = *(v36 + 24);
    v41 = *(v36 + 40);
    v140 = *(v36 + 32);
    v42 = *(v36 + 48);
    v43 = v26 + 56 * v24;
    v44 = *(v43 + 8);
    v134 = *v43;
    v135 = v39;
    v138 = v44;
    v46 = *(v43 + 16);
    v45 = *(v43 + 24);
    v139 = *(v43 + 32);
    v133 = *(v43 + 40);
    v47 = *(v43 + 48);
    v136 = v37;
    v137 = v46;
    if (v42 > 1)
    {
      if (v42 == 2)
      {
        if (v47 != 2)
        {
          return 0;
        }

        v125 = 2;
        if (v38 != v134 || v37 != v138)
        {
          v68 = v38;
          v69 = v45;
          result = sub_1DDA15440();
          v46 = v137;
          v45 = v69;
          v38 = v68;
          v39 = v135;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v39 != v46 || v40 != v45)
        {
          v71 = v38;
          v72 = v45;
          result = sub_1DDA15440();
          v46 = v137;
          v45 = v72;
          v38 = v71;
          v39 = v135;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v127 = v40;
        v73 = *(v140 + 16);
        if (v73 != *(v139 + 16))
        {
          return 0;
        }

        if (v73 && v140 != v139)
        {
          v74 = (*(v131 + 80) + 32) & ~*(v131 + 80);
          v75 = v140;
          v76 = v140 + v74;
          v77 = v41;
          v78 = v139 + v74;
          v79 = v37;
          v80 = v39;
          v123 = v45;
          sub_1DD96E3E4(v134, v138, v46, v45, v139, v133, 2u);
          v124 = v38;
          v120 = v77;
          result = sub_1DD96E3E4(v38, v79, v80, v127, v75, v77, 2u);
          v81 = 0;
          while (v81 < *(v140 + 16))
          {
            v82 = *(v131 + 72) * v81;
            v83 = v126;
            result = sub_1DD96EA30(v76 + v82, v126, type metadata accessor for ImageGeneratorCall.Image);
            if (v81 >= *(v139 + 16))
            {
              goto LABEL_118;
            }

            v84 = v129;
            sub_1DD96EA30(v78 + v82, v129, type metadata accessor for ImageGeneratorCall.Image);
            v85 = sub_1DDA13490();
            sub_1DD96EB00(v84, type metadata accessor for ImageGeneratorCall.Image);
            result = sub_1DD96EB00(v83, type metadata accessor for ImageGeneratorCall.Image);
            if ((v85 & 1) == 0)
            {
              goto LABEL_111;
            }

            if (v73 == ++v81)
            {
              v87 = v133;
              v86 = v134;
              v89 = v137;
              v88 = v138;
              v90 = v123;
              v91 = v139;
              v92 = 2;
              goto LABEL_102;
            }
          }

          goto LABEL_117;
        }
      }

      else if (v42 == 3)
      {
        if (v47 != 3)
        {
          return 0;
        }

        v125 = 3;
        if (v38 != v134 || v37 != v138)
        {
          v49 = v38;
          v50 = v45;
          result = sub_1DDA15440();
          v46 = v137;
          v45 = v50;
          v38 = v49;
          v39 = v135;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v127 = v40;
        v51 = *(v39 + 16);
        if (v51 != *(v46 + 16))
        {
          return 0;
        }

        if (v51 && v39 != v46)
        {
          v52 = (*(v132 + 80) + 32) & ~*(v132 + 80);
          v53 = v39 + v52;
          v54 = v41;
          v55 = v46 + v52;
          v56 = v39;
          v123 = v45;
          sub_1DD96E3E4(v134, v138, v46, v45, v139, v133, 3u);
          v124 = v38;
          v120 = v54;
          result = sub_1DD96E3E4(v38, v37, v56, v127, v140, v54, 3u);
          v57 = 0;
          while (v57 < *(v135 + 16))
          {
            v58 = *(v132 + 72) * v57;
            result = sub_1DD96EA30(v53 + v58, v9, type metadata accessor for FileGeneratorCall.File);
            if (v57 >= *(v137 + 16))
            {
              goto LABEL_116;
            }

            v59 = v9;
            v60 = v130;
            sub_1DD96EA30(v55 + v58, v130, type metadata accessor for FileGeneratorCall.File);
            v61 = sub_1DDA13490();
            v62 = v60;
            v9 = v59;
            sub_1DD96EB00(v62, type metadata accessor for FileGeneratorCall.File);
            result = sub_1DD96EB00(v59, type metadata accessor for FileGeneratorCall.File);
            if ((v61 & 1) == 0)
            {
              goto LABEL_111;
            }

            ++v57;
            v63 = v136;
            if (v51 == v57)
            {
              v32 = v133;
              v27 = v134;
              v29 = v137;
              v28 = v138;
              v30 = v123;
              v31 = v139;
              v33 = 3;
              goto LABEL_7;
            }
          }

          goto LABEL_115;
        }
      }

      else if (v39 | v37 | v38 | v40 | v140 | v41)
      {
        if (v47 != 4)
        {
          return 0;
        }

        result = 0;
        if (v134 != 1 || v46 | v138 | v45 | v139 | v133)
        {
          return result;
        }
      }

      else if (v47 != 4 || v46 | v138 | v134 | v45 | v139 | v133)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if (v42)
    {
      if (v47 != 1)
      {
        return 0;
      }

      if (v38 != v134 || v37 != v138)
      {
        v94 = v45;
        result = sub_1DDA15440();
        v46 = v137;
        v45 = v94;
        v39 = v135;
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      if (v39 != v46 || v40 != v45)
      {
        result = sub_1DDA15440();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      if (v140 != v139 || v41 != v133)
      {
        result = sub_1DDA15440();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_9;
    }

    if (v47)
    {
      return 0;
    }

    v125 = 0;
    if (v38)
    {
      v64 = v134;
      if (v38 == 1)
      {
        v65 = 0xE900000000000074;
        v66 = 0x6E61747369737361;
      }

      else
      {
        v65 = 0xE400000000000000;
        v66 = 1919251317;
      }
    }

    else
    {
      v65 = 0xE600000000000000;
      v66 = 0x6D6574737973;
      v64 = v134;
    }

    v124 = v38;
    if (v64)
    {
      if (v64 == 1)
      {
        v97 = 0xE900000000000074;
        v98 = 0x6E61747369737361;
      }

      else
      {
        v97 = 0xE400000000000000;
        v98 = 1919251317;
      }
    }

    else
    {
      v97 = 0xE600000000000000;
      v98 = 0x6D6574737973;
    }

    v120 = v41;
    v127 = v40;
    v123 = v45;
    if (v66 == v98 && v65 == v97)
    {
      sub_1DD96E3E4(v64, v138, v137, v45, v139, v133, 0);
      sub_1DD96E3E4(v124, v136, v135, v40, v140, v41, 0);
    }

    else
    {
      v99 = v45;
      v100 = sub_1DDA15440();
      sub_1DD96E3E4(v64, v138, v137, v99, v139, v133, 0);
      sub_1DD96E3E4(v124, v136, v135, v40, v140, v41, 0);

      if ((v100 & 1) == 0)
      {
        goto LABEL_111;
      }
    }

    if (v127)
    {
      break;
    }

    if (v123)
    {
      goto LABEL_111;
    }

    v102 = v135;
    v63 = v136;
    if (v136 == v138 && v135 == v137)
    {
      v27 = v134;
      v28 = v136;
      v29 = v135;
      goto LABEL_6;
    }

    v103 = v137;
    v104 = v138;
    v105 = v136;
    v106 = sub_1DDA15440();
    sub_1DD96E310(v134, v104, v103, v123, v139, v133, 0);
    result = sub_1DD96E310(v124, v105, v102, v127, v140, v120, 0);
    v23 = v118;
    v25 = v117;
    v26 = v116;
    if ((v106 & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    if (++v24 == v23)
    {
      return 1;
    }
  }

  if ((v123 & 1) == 0 || (v101 = *(v136 + 16), v101 != *(v138 + 16)))
  {
LABEL_111:
    v115 = v125;
    sub_1DD96E310(v134, v138, v137, v123, v139, v133, v125);
    sub_1DD96E310(v124, v136, v135, v127, v140, v120, v115);
    return 0;
  }

  if (!v101)
  {
    v87 = v133;
    v86 = v134;
    v89 = v137;
    v88 = v138;
    v90 = v123;
    v91 = v139;
    v92 = 0;
LABEL_102:
    sub_1DD96E310(v86, v88, v89, v90, v91, v87, v92);
    v23 = v118;
    v25 = v117;
    v26 = v116;
    v34 = v120;
    v35 = v127;
    v63 = v136;
    goto LABEL_8;
  }

  v63 = v136;
  if (v136 == v138)
  {
    v27 = v134;
    v28 = v136;
LABEL_109:
    v29 = v137;
LABEL_6:
    v30 = v123;
    v31 = v139;
    v32 = v133;
    v33 = 0;
LABEL_7:
    sub_1DD96E310(v27, v28, v29, v30, v31, v32, v33);
    v23 = v118;
    v25 = v117;
    v26 = v116;
    v34 = v120;
    v35 = v127;
LABEL_8:
    result = sub_1DD96E310(v124, v63, v135, v35, v140, v34, v125);
    goto LABEL_9;
  }

  v107 = 0;
  v108 = v122;
  v109 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v119 = v136 + v109;
  v110 = v138 + v109;
  while (v107 < *(v63 + 16))
  {
    v111 = *(v108 + 72) * v107;
    v112 = v121;
    result = sub_1DD96EA30(v119 + v111, v121, type metadata accessor for MessageContent);
    if (v107 >= *(v138 + 16))
    {
      goto LABEL_120;
    }

    v113 = v128;
    sub_1DD96EA30(v110 + v111, v128, type metadata accessor for MessageContent);
    v114 = sub_1DD9F8D0C(v112, v113);
    sub_1DD96EB00(v113, type metadata accessor for MessageContent);
    result = sub_1DD96EB00(v112, type metadata accessor for MessageContent);
    if ((v114 & 1) == 0)
    {
      goto LABEL_111;
    }

    ++v107;
    v108 = v122;
    v63 = v136;
    if (v101 == v107)
    {
      v27 = v134;
      v28 = v138;
      goto LABEL_109;
    }
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
  return result;
}

uint64_t sub_1DD9674A4(uint64_t a1, uint64_t a2)
{
  v52 = type metadata accessor for TextAnnotation.URLCitation(0);
  v4 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TextAnnotation.Type(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v50 = (v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = v45 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD834D0, &qword_1DDA1E1B0);
  v13 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v15 = v45 - v14;
  v16 = type metadata accessor for TextAnnotation(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v23 = v45 - v22;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v45[1] = v12;
  v46 = v20;
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v47 = *(v21 + 72);
  v48 = v45 - v22;
  v49 = v15;
  v51 = v7;
  v28 = v12;
  while (1)
  {
    sub_1DD96EA30(v26, v23, type metadata accessor for TextAnnotation);
    sub_1DD96EA30(v27, v20, type metadata accessor for TextAnnotation);
    v29 = &v15[*(v53 + 48)];
    sub_1DD96EA30(v23, v15, type metadata accessor for TextAnnotation.Type);
    sub_1DD96EA30(v20, v29, type metadata accessor for TextAnnotation.Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DD96EA30(v15, v28, type metadata accessor for TextAnnotation.Type);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1DD96EA98(v29, v6, type metadata accessor for TextAnnotation.URLCitation);
        if ((sub_1DDA13490() & 1) == 0 || ((v40 = *(v52 + 20), v41 = *(v28 + v40), v42 = *(v28 + v40 + 8), v43 = &v6[v40], v41 != *v43) || v42 != *(v43 + 1)) && (sub_1DDA15440() & 1) == 0 || *(v28 + *(v52 + 24)) != *&v6[*(v52 + 24)])
        {
          sub_1DD96EB00(v6, type metadata accessor for TextAnnotation.URLCitation);
          sub_1DD96EB00(v28, type metadata accessor for TextAnnotation.URLCitation);
          sub_1DD96EB00(v15, type metadata accessor for TextAnnotation.Type);
          goto LABEL_29;
        }

        sub_1DD96EB00(v6, type metadata accessor for TextAnnotation.URLCitation);
        sub_1DD96EB00(v28, type metadata accessor for TextAnnotation.URLCitation);
        goto LABEL_6;
      }

      sub_1DD96EB00(v28, type metadata accessor for TextAnnotation.URLCitation);
LABEL_27:
      sub_1DD90D378(v15, &qword_1ECD834D0, &qword_1DDA1E1B0);
      goto LABEL_29;
    }

    v30 = v15;
    v31 = v50;
    sub_1DD96EA30(v30, v50, type metadata accessor for TextAnnotation.Type);
    v33 = *v31;
    v32 = v31[1];
    v34 = v31[2];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v23 = v48;
      v15 = v49;
      v20 = v46;
      goto LABEL_27;
    }

    v35 = *v29;
    v36 = *(v29 + 1);
    v37 = *(v29 + 2);
    if (v33 != v35 || v32 != v36)
    {
      break;
    }

    v20 = v46;
    if (v34 != v37)
    {
      goto LABEL_28;
    }

LABEL_6:
    v15 = v49;
    sub_1DD96EB00(v49, type metadata accessor for TextAnnotation.Type);
    sub_1DD96EB00(v20, type metadata accessor for TextAnnotation);
    v23 = v48;
    sub_1DD96EB00(v48, type metadata accessor for TextAnnotation);
    v27 += v47;
    v26 += v47;
    if (!--v24)
    {
      return 1;
    }
  }

  v39 = sub_1DDA15440();

  v20 = v46;
  if ((v39 & 1) != 0 && v34 == v37)
  {
    goto LABEL_6;
  }

LABEL_28:
  sub_1DD96EB00(v49, type metadata accessor for TextAnnotation.Type);
  v23 = v48;
LABEL_29:
  sub_1DD96EB00(v20, type metadata accessor for TextAnnotation);
  sub_1DD96EB00(v23, type metadata accessor for TextAnnotation);
  return 0;
}

uint64_t sub_1DD967A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_1DD96A680(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1DD967B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DDA15440() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DD967BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v9 = a1;
    v10 = *(a1 + 32);
    v11 = a2;
    v12 = sub_1DDA15440();
    a2 = v11;
    v13 = v12;
    a1 = v9;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = a1 + 32;
  v14 = a2 + 32;
  v15 = 1;
  while (1)
  {
    if (v5 <= 1u)
    {
      if (v5)
      {
        sub_1DD940DFC(v6, v7, v8);
        if (v8 != 1)
        {
LABEL_42:
          sub_1DD96E820(v6, v7, v8);
          return 0;
        }

        if (v3 != v6)
        {
          return 0;
        }
      }

      else
      {
        sub_1DD940DFC(v6, v7, v8);
        if (v8)
        {
          goto LABEL_42;
        }

        if ((v6 ^ v3))
        {
          return 0;
        }
      }

      goto LABEL_26;
    }

    if (v5 == 2)
    {
      if (v8 != 2 || (v3 != v6 || v4 != v7) && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (v8 != 3)
    {
      return 0;
    }

    v16 = *(v3 + 16);
    if (v16 != *(v6 + 16))
    {
      return 0;
    }

    if (v16 && v3 != v6)
    {
      break;
    }

LABEL_26:
    if (v15 == v2)
    {
      return 1;
    }

    v17 = v15 + 1;
    v18 = v25 + 40 * v15;
    v3 = *(v18 + 16);
    v4 = *(v18 + 24);
    v5 = *(v18 + 32);
    v19 = v14 + 40 * v15;
    v6 = *(v19 + 16);
    v7 = *(v19 + 24);
    v8 = *(v19 + 32);
    v20 = *v18 == *v19 && *(v18 + 8) == *(v19 + 8);
    ++v15;
    if (!v20)
    {
      v15 = v17;
      if ((sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }
    }
  }

  v21 = (v3 + 40);
  v22 = (v6 + 40);
  while (1)
  {
    v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
    if (!v23 && (sub_1DDA15440() & 1) == 0)
    {
      return 0;
    }

    v21 += 2;
    v22 += 2;
    if (!--v16)
    {
      goto LABEL_26;
    }
  }
}

uint64_t sub_1DD967DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    do
    {
      v6 = (v4 + 72 * v3);
      v7 = v6[1];
      v62 = *v6;
      v63 = v7;
      v8 = v6[3];
      v64 = v6[2];
      v65 = v8;
      v66 = *(v6 + 32);
      v9 = (v5 + 72 * v3);
      v10 = v9[3];
      v69 = v9[2];
      v70 = v10;
      v71 = *(v9 + 32);
      v11 = v9[1];
      v67 = *v9;
      v68 = v11;
      if (v62 != v67 && (sub_1DDA15440() & 1) == 0 || v63 != v68 && (sub_1DDA15440() & 1) == 0)
      {
        return 0;
      }

      v12 = v64;
      v13 = v69;
      if (v64)
      {
        if (!v69)
        {
          return 0;
        }

        v14 = *(v64 + 16);
        if (v14 != *(v69 + 16))
        {
          return 0;
        }

        if (v14 && v64 != v69)
        {
          v58 = v69 + 32;
          v59 = v64 + 32;
          sub_1DD96E844(&v62, v61);
          sub_1DD96E844(&v67, v61);

          v16 = 0;
          v54 = v3;
          v55 = v2;
          v52 = v5;
          v53 = v4;
          v56 = v13;
          v50 = v14;
          v51 = v12;
          while (v16 < *(v12 + 16))
          {
            if (v16 >= *(v13 + 16))
            {
              goto LABEL_87;
            }

            v17 = *(v59 + 8 * v16);
            v18 = *(v58 + 8 * v16);
            if (v17 != v18)
            {
              if (*(v17 + 16) != *(v18 + 16))
              {
LABEL_81:

                goto LABEL_82;
              }

              v57 = v16;
              v19 = v17 + 64;
              v20 = 1 << *(v17 + 32);
              if (v20 < 64)
              {
                v21 = ~(-1 << v20);
              }

              else
              {
                v21 = -1;
              }

              v22 = v21 & *(v17 + 64);
              v23 = (v20 + 63) >> 6;
              v60 = v17;

              v24 = 0;
              while (v22)
              {
                v25 = __clz(__rbit64(v22));
                v22 &= v22 - 1;
                v26 = v25 | (v24 << 6);
                result = v60;
LABEL_33:
                v29 = 16 * v26;
                v30 = (*(result + 48) + v29);
                v31 = *v30;
                v32 = v30[1];
                v33 = (*(result + 56) + v29);
                v35 = *v33;
                v34 = v33[1];

                v36 = sub_1DD96AC38(v31, v32);
                v38 = v37;

                if ((v38 & 1) == 0)
                {

LABEL_80:

                  goto LABEL_81;
                }

                v39 = (*(v18 + 56) + 16 * v36);
                if (*v39 == v35 && v39[1] == v34)
                {
                }

                else
                {
                  v41 = sub_1DDA15440();

                  if ((v41 & 1) == 0)
                  {
                    goto LABEL_80;
                  }
                }
              }

              v27 = v24;
              result = v60;
              while (1)
              {
                v24 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  break;
                }

                if (v24 >= v23)
                {

                  v3 = v54;
                  v2 = v55;
                  v5 = v52;
                  v4 = v53;
                  v13 = v56;
                  v16 = v57;
                  v14 = v50;
                  v12 = v51;
                  goto LABEL_16;
                }

                v28 = *(v19 + 8 * v24);
                ++v27;
                if (v28)
                {
                  v22 = (v28 - 1) & v28;
                  v26 = __clz(__rbit64(v28)) | (v24 << 6);
                  goto LABEL_33;
                }
              }

              __break(1u);
              break;
            }

LABEL_16:
            if (++v16 == v14)
            {

              goto LABEL_42;
            }
          }

          __break(1u);
LABEL_87:
          __break(1u);
          __break(1u);
          return result;
        }
      }

      else if (v69)
      {
        return 0;
      }

      sub_1DD96E844(&v62, v61);
      sub_1DD96E844(&v67, v61);
LABEL_42:
      if (BYTE8(v64) != BYTE8(v69) || BYTE9(v64) != BYTE9(v69))
      {
        goto LABEL_82;
      }

      v42 = v71;
      if (v66 == 255)
      {
        sub_1DD96E8A0(&v67);
        sub_1DD96E8A0(&v62);
        if (v42 != 255)
        {
          return 0;
        }
      }

      else
      {
        if (v71 == 255)
        {
          goto LABEL_82;
        }

        v43 = v65;
        v44 = v70;
        if (v66 > 1u)
        {
          if (v66 == 2)
          {
            if (v71 != 2)
            {
              goto LABEL_82;
            }

            if (v65 != v70)
            {
              v45 = sub_1DDA15440();
              sub_1DD96E8A0(&v67);
              sub_1DD96E8A0(&v62);
              if ((v45 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_66;
            }
          }

          else
          {
            if (v71 != 3)
            {
              goto LABEL_82;
            }

            v46 = *(v65 + 16);
            if (v46 != *(v70 + 16))
            {
              goto LABEL_82;
            }

            if (v46 && v65 != v70)
            {
              v47 = (v65 + 40);
              v48 = (v70 + 40);
              while (1)
              {
                v49 = *(v47 - 1) == *(v48 - 1) && *v47 == *v48;
                if (!v49 && (sub_1DDA15440() & 1) == 0)
                {
                  break;
                }

                v47 += 2;
                v48 += 2;
                if (!--v46)
                {
                  goto LABEL_65;
                }
              }

LABEL_82:
              sub_1DD96E8A0(&v67);
              sub_1DD96E8A0(&v62);
              return 0;
            }
          }

LABEL_65:
          sub_1DD96E8A0(&v67);
          sub_1DD96E8A0(&v62);
        }

        else if (v66)
        {
          if (v71 != 1)
          {
            goto LABEL_82;
          }

          sub_1DD940DFC(v70, *(&v70 + 1), 1);
          sub_1DD96E8A0(&v67);
          sub_1DD96E8A0(&v62);
          if (v43 != v44)
          {
            return 0;
          }
        }

        else
        {
          if (v71)
          {
            goto LABEL_82;
          }

          sub_1DD940DFC(v70, *(&v70 + 1), 0);
          sub_1DD96E8A0(&v67);
          sub_1DD96E8A0(&v62);
          if ((v44 ^ v43))
          {
            return 0;
          }
        }
      }

LABEL_66:
      if (HIBYTE(v66) != HIBYTE(v71))
      {
        return 0;
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return 1;
}

uint64_t sub_1DD96831C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 72);
  for (i = a1 + 40; ; i += 48)
  {
    v14 = *(i - 8);
    v13 = *i;
    v16 = *(i + 8);
    v15 = *(i + 16);
    v17 = *(i + 24);
    LODWORD(v18) = *(i + 32);
    v20 = *(v3 - 5);
    v19 = *(v3 - 4);
    v21 = *(v3 - 3);
    v22 = *(v3 - 2);
    v23 = *(v3 - 1);
    v24 = *v3;
    if (!(v18 >> 6))
    {
      if (v24 >= 0x40)
      {
        return 0;
      }

      v122 = *(i + 24);
      v115 = i;
      v110 = v3;
      v119 = v2;
      v41 = *(v3 - 1);
      v127 = *(i + 32);
      v42 = *(i - 8);
      if (v14 != v20 || v13 != v19)
      {
        v43 = *i;
        v44 = *(i + 8);
        v45 = *(v3 - 3);
        v46 = *(v3 - 5);
        v47 = v19;
        v48 = *(i + 16);
        v49 = sub_1DDA15440();
        v16 = v44;
        v15 = v48;
        v19 = v47;
        v20 = v46;
        v21 = v45;
        v13 = v43;
        if ((v49 & 1) == 0)
        {
          return 0;
        }
      }

      v50 = v13;
      if (v16 != v21 || v15 != v22)
      {
        v51 = v16;
        v52 = v21;
        v53 = v20;
        v54 = v19;
        v55 = v15;
        v56 = sub_1DDA15440();
        v16 = v51;
        v15 = v55;
        v19 = v54;
        v20 = v53;
        v21 = v52;
        if ((v56 & 1) == 0)
        {
          return 0;
        }
      }

      v125 = v19;
      v129 = v21;
      v57 = v16;
      v58 = v15;
      sub_1DD96E9C0(v20, v19, v21, v22, v41, v24);
      sub_1DD96E9C0(v42, v50, v57, v58, v122, v127);
      if ((sub_1DD96D458(v122, v41) & 1) == 0)
      {
        sub_1DD96E950(v20, v125, v129, v22, v41, v24);
        v101 = v42;
        v102 = v50;
        v103 = v57;
        v104 = v58;
        v105 = v122;
        v106 = v127;
        goto LABEL_151;
      }

      sub_1DD96E950(v42, v50, v57, v58, v122, v127);
      sub_1DD96E950(v20, v125, v129, v22, v41, v24);
      v2 = v119;
      v3 = v110;
      i = v115;
      if ((v24 ^ v127))
      {
        return 0;
      }

      goto LABEL_7;
    }

    if (v18 >> 6 != 1)
    {
      if (v16 | v13 | v14 | v15 | v17 || v18 != 128)
      {
        v60 = v16 | v13 | v15 | v17;
        if (v18 == 128 && v14 == 1 && !v60)
        {
          if ((v24 & 0xC0) != 0x80)
          {
            return 0;
          }

          result = 0;
          if (v24 != 128 || v20 != 1)
          {
            return result;
          }
        }

        else if (v18 == 128 && v14 == 2 && !v60)
        {
          if ((v24 & 0xC0) != 0x80)
          {
            return 0;
          }

          result = 0;
          if (v24 != 128 || v20 != 2)
          {
            return result;
          }
        }

        else
        {
          if ((v24 & 0xC0) != 0x80)
          {
            return 0;
          }

          result = 0;
          if (v24 != 128 || v20 != 3)
          {
            return result;
          }
        }

        if (v21 | v19 | v22 | v23)
        {
          return result;
        }
      }

      else
      {
        if ((v24 & 0xC0) != 0x80)
        {
          return 0;
        }

        result = 0;
        if (v21 | v19 | v20 | v22 | v23 || v24 != 128)
        {
          return result;
        }
      }

      goto LABEL_7;
    }

    if ((v24 & 0xC0) != 0x40)
    {
      return 0;
    }

    v25 = *(i - 8);
    v26 = *(v3 - 5);
    v114 = *(i + 16);
    v121 = *(i + 8);
    v118 = *i;
    v126 = *(i + 32);
    v112 = *(v3 - 2);
    v128 = *(v3 - 3);
    v124 = *(v3 - 4);
    v113 = *(v3 - 1);
    v117 = *v3;
    if (v25 == 5)
    {
      if (v26 != 5)
      {
        return 0;
      }

      v27 = *(i + 24);
      v28 = *(v3 - 1);
      v29 = *(i - 8);
      v18 = *i;
      v30 = *(i + 8);
      v31 = i;
      v32 = *(i + 16);
      sub_1DD96E9C0(v20, v19, v21, *(v3 - 2), v28, *v3);
      v33 = v29;
      v34 = v18;
      LOBYTE(v18) = v126;
      v35 = v29;
      v23 = v28;
      v36 = v30;
      v37 = v32;
      v38 = v32;
      i = v31;
      v39 = v27;
      v40 = v27;
      v14 = v35;
      sub_1DD96E9C0(v33, v34, v36, v38, v40, v126);
      goto LABEL_72;
    }

    if (v26 == 5)
    {
      return 0;
    }

    if (*(i - 8) <= 1u)
    {
      if (*(i - 8))
      {
        v61 = 0xE500000000000000;
        v62 = 0x6C6C616D73;
        if (*(v3 - 5) <= 1u)
        {
LABEL_42:
          if (*(v3 - 5))
          {
            v63 = 0xE500000000000000;
            v64 = 0x6C6C616D73;
          }

          else
          {
            v63 = 0xE800000000000000;
            v64 = 0x6465727265666E69;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v61 = 0xE800000000000000;
        v62 = 0x6465727265666E69;
        if (*(v3 - 5) <= 1u)
        {
          goto LABEL_42;
        }
      }
    }

    else if (v25 == 2)
    {
      v61 = 0xE600000000000000;
      v62 = 0x6D756964656DLL;
      if (*(v3 - 5) <= 1u)
      {
        goto LABEL_42;
      }
    }

    else if (v25 == 3)
    {
      v61 = 0xE500000000000000;
      v62 = 0x656772616CLL;
      if (*(v3 - 5) <= 1u)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v61 = 0xE600000000000000;
      v62 = 0x656772616C78;
      if (*(v3 - 5) <= 1u)
      {
        goto LABEL_42;
      }
    }

    if (v26 == 2)
    {
      v63 = 0xE600000000000000;
      v64 = 0x6D756964656DLL;
    }

    else if (v26 == 3)
    {
      v63 = 0xE500000000000000;
      v64 = 0x656772616CLL;
    }

    else
    {
      v63 = 0xE600000000000000;
      v64 = 0x656772616C78;
    }

LABEL_68:
    if (v62 == v64 && v61 == v63)
    {
      sub_1DD96E9C0(v20, v19, v21, v22, v23, v24);
      v39 = v17;
      sub_1DD96E9C0(v14, v118, v121, v114, v17, v18);

      v37 = v114;

      goto LABEL_72;
    }

    v39 = *(i + 24);
    v65 = *(v3 - 2);
    v66 = v2;
    v67 = *(v3 - 3);
    v68 = v3;
    v69 = *(v3 - 5);
    v70 = v19;
    v109 = sub_1DDA15440();
    v71 = v69;
    v72 = v70;
    v20 = v69;
    v3 = v68;
    v73 = v67;
    v2 = v66;
    v23 = v113;
    sub_1DD96E9C0(v71, v72, v73, v65, v113, v117);
    v37 = v114;
    sub_1DD96E9C0(v14, v118, v121, v114, v39, v18);

    if ((v109 & 1) == 0)
    {
      break;
    }

LABEL_72:
    v120 = v20;
    v74 = BYTE1(v20);
    v123 = v39;
    if (BYTE1(v14) == 4)
    {
      v75 = v121;
      v76 = v112;
      v77 = v37;
      if (v74 != 4)
      {
        goto LABEL_146;
      }

      goto LABEL_95;
    }

    if (BYTE1(v20) == 4)
    {
      sub_1DD96E950(v20, v124, v128, v112, v23, v117);
      v101 = v14;
      v102 = v118;
      v103 = v121;
      goto LABEL_149;
    }

    if (BYTE1(v14) > 1u)
    {
      v78 = 0xE400000000000000;
      if (BYTE1(v14) == 2)
      {
        v79 = 1819042164;
        if (BYTE1(v20) <= 1u)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v79 = 1701079415;
        if (BYTE1(v20) <= 1u)
        {
LABEL_87:
          if (BYTE1(v20))
          {
            v80 = 0xE600000000000000;
            v81 = 0x657261757173;
          }

          else
          {
            v80 = 0xE800000000000000;
            v81 = 0x6465727265666E69;
          }

          goto LABEL_91;
        }
      }
    }

    else if (BYTE1(v14))
    {
      v78 = 0xE600000000000000;
      v79 = 0x657261757173;
      if (BYTE1(v20) <= 1u)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v78 = 0xE800000000000000;
      v79 = 0x6465727265666E69;
      if (BYTE1(v20) <= 1u)
      {
        goto LABEL_87;
      }
    }

    v80 = 0xE400000000000000;
    if (v74 == 2)
    {
      v81 = 1819042164;
    }

    else
    {
      v81 = 1701079415;
    }

LABEL_91:
    if (v79 == v81 && v78 == v80)
    {

      v75 = v121;
      v76 = v112;
      v23 = v113;
      v77 = v114;
    }

    else
    {
      v82 = sub_1DDA15440();

      v75 = v121;
      v76 = v112;
      v23 = v113;
      v77 = v114;
      if ((v82 & 1) == 0)
      {
        goto LABEL_146;
      }
    }

LABEL_95:
    if (BYTE2(v14) == 4)
    {
      if (BYTE2(v120) != 4)
      {
        goto LABEL_146;
      }

      goto LABEL_120;
    }

    if (BYTE2(v120) == 4)
    {
      goto LABEL_146;
    }

    if (BYTE2(v14) > 1u)
    {
      if (BYTE2(v14) == 2)
      {
        v83 = 0xE400000000000000;
        v84 = 1751607656;
        if (BYTE2(v120) > 1u)
        {
          goto LABEL_105;
        }
      }

      else
      {
        v83 = 0xE800000000000000;
        v84 = 0x6465727265666E69;
        if (BYTE2(v120) > 1u)
        {
LABEL_105:
          if (BYTE2(v120) == 2)
          {
            v85 = 0xE400000000000000;
            v86 = 1751607656;
          }

          else
          {
            v85 = 0xE800000000000000;
            v86 = 0x6465727265666E69;
          }

          goto LABEL_114;
        }
      }
    }

    else if (BYTE2(v14))
    {
      v83 = 0xE600000000000000;
      v84 = 0x6D756964656DLL;
      if (BYTE2(v120) > 1u)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v83 = 0xE300000000000000;
      v84 = 7827308;
      if (BYTE2(v120) > 1u)
      {
        goto LABEL_105;
      }
    }

    if (BYTE2(v120))
    {
      v85 = 0xE600000000000000;
      v86 = 0x6D756964656DLL;
    }

    else
    {
      v85 = 0xE300000000000000;
      v86 = 7827308;
    }

LABEL_114:
    v87 = v76;
    if (v84 == v86 && v83 == v85)
    {

      v75 = v121;
      v76 = v87;
      v23 = v113;
      v77 = v114;
      if ((v121 & 0x100) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_117;
    }

    v92 = sub_1DDA15440();

    v75 = v121;
    v76 = v87;
    v23 = v113;
    v77 = v114;
    if ((v92 & 1) == 0)
    {
      goto LABEL_146;
    }

LABEL_120:
    if ((v75 & 0x100) == 0)
    {
LABEL_121:
      v90 = v39;
      if ((v128 & 0x100) != 0)
      {
LABEL_146:
        v108 = v77;
        sub_1DD96E950(v120, v124, v128, v76, v23, v117);
        v101 = v14;
        v102 = v118;
        v103 = v75;
        v104 = v108;
        v105 = v39;
        goto LABEL_150;
      }

      v88 = v14;
      v89 = v117;
      if (v75)
      {
        v91 = v118;
        if ((v128 & 1) == 0)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v91 = v118;
        if ((v128 & 1) != 0 || v118 != v124)
        {
LABEL_141:
          v97 = v120;
          v98 = v124;
          v99 = v128;
          v100 = v23;
LABEL_144:
          v107 = v77;
          sub_1DD96E950(v97, v98, v99, v76, v100, v89);
          v101 = v88;
          v102 = v91;
          v103 = v75;
          v104 = v107;
          v105 = v90;
          v106 = v126;
          goto LABEL_151;
        }
      }

      goto LABEL_127;
    }

LABEL_117:
    v88 = v14;
    v89 = v117;
    v90 = v123;
    v91 = v118;
    if ((v128 & 0x100) == 0)
    {
      goto LABEL_141;
    }

LABEL_127:
    if (!v90)
    {
      v96 = v76;
      sub_1DD96E950(v88, v91, v75, v77, 0, v126);
      if (v23)
      {
        v101 = v120;
        v102 = v124;
        v103 = v128;
        v104 = v96;
        v105 = v23;
        v106 = v89;
        goto LABEL_151;
      }

      v7 = v120;
      v8 = v124;
      v9 = v128;
      v10 = v96;
      v11 = 0;
      v12 = v89;
      goto LABEL_6;
    }

    if (!v23)
    {
      v97 = v120;
      v98 = v124;
      v99 = v128;
      v100 = 0;
      goto LABEL_144;
    }

    if (v77 == v76 && v90 == v23)
    {
      v5 = v89;
      v6 = v77;
      sub_1DD96E950(v120, v124, v128, v77, v90, v5);
      v7 = v88;
      v8 = v91;
      v9 = v75;
      v10 = v6;
      v11 = v90;
      v12 = v126;
LABEL_6:
      sub_1DD96E950(v7, v8, v9, v10, v11, v12);
      goto LABEL_7;
    }

    v93 = v76;
    v116 = i;
    v94 = v77;
    v111 = sub_1DDA15440();
    sub_1DD96E950(v120, v124, v128, v93, v23, v89);
    v95 = v94;
    i = v116;
    sub_1DD96E950(v88, v91, v75, v95, v90, v126);
    if ((v111 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v3 += 48;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_1DD96E950(v20, v124, v128, v112, v113, v117);
  v101 = v14;
  v102 = v118;
  v103 = v121;
LABEL_149:
  v104 = v37;
  v105 = v39;
LABEL_150:
  v106 = v18;
LABEL_151:
  sub_1DD96E950(v101, v102, v103, v104, v105, v106);
  return 0;
}

uint64_t sub_1DD968EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1DDA15440() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1DDA15440() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DD968FB8(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for JSONSchema();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E12B7F50](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v14 = *(v3 + 8 * v12);

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v15 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v15 = MEMORY[0x1E12B7F50](v12 - 4, a2);
LABEL_26:
        LOBYTE(v4) = sub_1DD96D458(v14, v15);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v16 = (v3 + 32);
    v17 = (a2 + 32);
    v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v5 - 1;
    while (1)
    {
      if (!v18)
      {
        goto LABEL_40;
      }

      if (!v19)
      {
        break;
      }

      v21 = *v16++;
      a2 = v21;
      v22 = *v17++;
      v3 = v22;

      v4 = sub_1DD96D458(a2, v22);

      v24 = v20-- != 0;
      if (v4)
      {
        --v19;
        --v18;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1DDA15190();
  }

  result = sub_1DDA15190();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}
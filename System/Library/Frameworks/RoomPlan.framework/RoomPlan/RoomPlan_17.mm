uint64_t sub_23A9EA058(void *a1)
{
  v2 = type metadata accessor for ARViewCameraEntity();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_23AA0C1A4();
  v6 = type metadata accessor for DollHouseCamera();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_23A9BBAEC(a1, v5, 0, 0.9273);
  v20 = *(MEMORY[0x277D860B8] + 16);
  v21 = *MEMORY[0x277D860B8];
  v19 = *(MEMORY[0x277D860B8] + 32);
  v22 = *(MEMORY[0x277D860B8] + 48);
  v10 = sub_23AA0C2A4();
  v12 = v11;
  sub_23AA0DCD4();
  v18 = v13;
  sub_23AA0D4D4();
  v17 = v14;
  sub_23AA0D4C4();
  *v12 = v15;
  v12[1] = v17;
  v12[2] = v18;
  v10(v23, 0);
  *(v9 + qword_27DFC09E0) = 0;
  *(v9 + qword_27DFB0EA8) = 1067030938;
  sub_23A9BB400();
  sub_23AA0C984();
  sub_23A9EA5E8();

  sub_23AA0C704();

  return v9;
}

uint64_t type metadata accessor for DollHouseCameraController()
{
  result = qword_27DFB1658;
  if (!qword_27DFB1658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9EA238@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8RoomPlan25DollHouseCameraController_delegate;
  swift_beginAccess();
  return sub_23A9E8C8C(v3 + v4, a2);
}

uint64_t sub_23A9EA2B4()
{
  result = sub_23AA0C064();
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

uint64_t sub_23A9EA580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1608, qword_23AA1B780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A9EA5E8()
{
  result = qword_27DFB10F0;
  if (!qword_27DFB10F0)
  {
    type metadata accessor for DollHouseCamera();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB10F0);
  }

  return result;
}

id sub_23A9EA6D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorldSpaceManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23A9EA778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_23A9D9A7C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_23A9EDDFC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_23A90CF8C();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_23A91077C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_23A9EA864(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_23A9D9E48(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_23AA0C0E4();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_23A9EDD28(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_23A90CFDC();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_23AA0C0E4();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_23A910778(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_23AA0C0E4();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_23A9EAA24(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_23AA0BFB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    sub_23A9EC080(a1);
    sub_23A905A70(a2, v8);

    return sub_23A9EC080(v8);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_23A9DB77C(v14, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v19;
  }

  return result;
}

uint64_t sub_23A9EABD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_23AA0BFB4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_23A9EC080(a1);
    v16 = *v3;
    v17 = sub_23A9EE0C8(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23A90FE5C();
        v22 = v27;
      }

      (*(v11 + 32))(v9, *(v22 + 56) + *(v11 + 72) * v19, v10);
      sub_23A90CB84(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_23A9EC080(v9);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_23A9DB8F8(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_23A9EAE00(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x23EE90360](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_23AA0D7F4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_23A9EAF28(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_23A9EAFCC(uint64_t a1)
{
  v2 = sub_23AA0BFB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260]);
  result = MEMORY[0x23EE8FEA0](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 56) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_23A9EFC30(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CapturedRoom.ModelProvider.modelFileURL(for:)@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_23AA0BFB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  v14 = v2[1];
  v22 = *v2;
  v23 = v14;
  v16 = type metadata accessor for CapturedRoom.Object(0);
  result = CapturedRoom.ModelProvider.modelFileURL(for:)(*&a1[*(v16 + 36)], v8);
  if (!v3)
  {
    v18 = v21;
    v20 = 0;
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_23A9EC080(v8);
      v22 = v15;
      v23 = v14;
      v24 = *a1;
      return CapturedRoom.ModelProvider.modelFileURL(for:)(&v24, v18);
    }

    else
    {
      v19 = *(v10 + 32);
      v19(v13, v8, v9);
      v19(v18, v13, v9);
      return (*(v10 + 56))(v18, 0, 1, v9);
    }
  }

  return result;
}

{
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = *v2;
  if (!*(v15 + 16))
  {
    return (*(v7 + 56))(a2, 1, 1, v6, v12);
  }

  v16 = sub_23A9EE0C8(*a1);
  if ((v17 & 1) == 0)
  {
    return (*(v7 + 56))(a2, 1, 1, v6, v12);
  }

  v28 = v3;
  v18 = *(v15 + 56) + *(v7 + 72) * v16;
  v27 = *(v7 + 16);
  v27(v10, v18, v6);
  v26 = *(v7 + 32);
  v26(v14, v10, v6);
  v19 = [objc_opt_self() defaultManager];
  sub_23AA0BF84();
  v20 = sub_23AA0D104();

  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
    v26(a2, v14, v6);
    return (*(v7 + 56))(a2, 0, 1, v6);
  }

  else
  {
    type metadata accessor for CapturedRoom.ModelProvider.Error();
    sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error);
    swift_allocError();
    v24 = v23;
    v27(v23, v14, v6);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    swift_willThrow();
    return (*(v7 + 8))(v14, v6);
  }
}

Swift::Bool __swiftcall CapturedRoom.Object.Category.supportsCombination(_:)(Swift::OpaquePointer a1)
{
  v49 = *v1;
  v3 = CapturedRoom.Object.Category.supportedCombinations.getter();
  v4 = *(v3 + 16);
  if (v4)
  {
    rawValue = a1._rawValue;
    v48 = MEMORY[0x277D84F90];
    v5 = v3;
    sub_23A97607C(0, v4, 0);
    v6 = v5;
    v7 = 0;
    v8 = v48;
    v39 = v5 + 32;
    v40 = v5;
    v38 = v4;
    while (v7 < *(v6 + 16))
    {
      v9 = *(v39 + 8 * v7);
      v10 = *(v9 + 16);
      if (v10)
      {
        v41 = v8;
        v47 = MEMORY[0x277D84F90];

        sub_23A97605C(0, v10, 0);
        v11 = v47;
        v12 = v9 + 32;
        do
        {
          sub_23A8CA9D8(v12, v42);
          v13 = v43;
          v14 = v44;
          v15 = __swift_project_boxed_opaque_existential_1(v42, v43);
          v16 = *(*(v13 - 8) + 64);
          v17 = MEMORY[0x28223BE20](v15);
          v19 = &rawValue - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v20 + 16))(v19, v17);
          sub_23A936390(v19, v13, v14, v45);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v47 = v11;
          v22 = *(v11 + 16);
          v21 = *(v11 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_23A97605C((v21 > 1), v22 + 1, 1);
            v11 = v47;
          }

          *(v11 + 16) = v22 + 1;
          v23 = v11 + 40 * v22;
          v24 = v45[0];
          v25 = v45[1];
          *(v23 + 64) = v46;
          *(v23 + 32) = v24;
          *(v23 + 48) = v25;
          v12 += 40;
          --v10;
        }

        while (v10);

        v8 = v41;
        v4 = v38;
      }

      else
      {
        v11 = MEMORY[0x277D84F90];
      }

      v26 = *(v11 + 16);
      v27 = sub_23A9106D0();
      v47 = MEMORY[0x23EE8FEA0](v26, &type metadata for AnyCapturedRoomAttribute, v27);
      v28 = *(v11 + 16);
      if (v28)
      {
        v29 = v11 + 32;
        do
        {
          sub_23A910674(v29, v45);
          sub_23A9EF964(v42, v45);
          sub_23A910724(v42);
          v29 += 40;
          --v28;
        }

        while (v28);
      }

      v30 = v47;
      v48 = v8;
      v32 = *(v8 + 16);
      v31 = *(v8 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_23A97607C((v31 > 1), v32 + 1, 1);
        v8 = v48;
      }

      ++v7;
      *(v8 + 16) = v32 + 1;
      *(v8 + 8 * v32 + 32) = v30;
      v6 = v40;
      if (v7 == v4)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
LABEL_19:

    *&v45[0] = sub_23A9F510C(v33);
    MEMORY[0x28223BE20](*&v45[0]);
    v36[2] = v45;
    v34 = sub_23A9EAF28(sub_23A9F52E0, v36, v8);

    LOBYTE(v6) = v34 & 1;
  }

  return v6;
}

unint64_t CapturedRoom.ModelProvider.Error.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_23AA0BFB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CapturedRoom.ModelProvider.Error();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A9F5634(v1, v10, type metadata accessor for CapturedRoom.ModelProvider.Error);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    return 0xD00000000000002ALL;
  }

  (*(v3 + 32))(v6, v10, v2);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_23AA0D8A4();

  strcpy(v15, "File at path ");
  HIWORD(v15[1]) = -4864;
  v13 = sub_23AA0BF84();
  MEMORY[0x23EE8FCA0](v13);

  MEMORY[0x23EE8FCA0](0x74276E73656F6420, 0xEE00747369786520);
  v12 = v15[0];
  (*(v3 + 8))(v6, v2);
  return v12;
}

size_t CapturedRoom.ModelProvider.modelFileURLs.getter()
{
  v1 = *v0;
  v2 = v0[1];

  v4 = sub_23A9EAFCC(v3);

  v6 = sub_23A9EAFCC(v5);
  sub_23A9EBB08(v6, v4);
  v8 = v7;
  v9 = *(v7 + 16);
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_23A9EDB80(*(v7 + 16), 0, &qword_27DFB1700, &qword_23AA1B9E0, MEMORY[0x277CC9260]);
  v11 = *(sub_23AA0BFB4() - 8);
  sub_23A9F4858(&v15, (v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80))), v9, v8);
  v13 = v12;
  sub_23A8CA904();
  if (v13 != v9)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v10;
}

void sub_23A9EBB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23AA0BFB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v13.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4, v13);
      (*(v5 + 32))(v8, v15, v4);
      sub_23A9EFC30(v11, v8);
      (*(v5 + 8))(v11, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void CapturedRoom.ModelProvider.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  a1[1] = v1;
}

uint64_t CapturedRoom.ModelProvider.modelFileURL(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  if (!*(a1 + 16))
  {
    v26 = *(v7 + 56);
    v27 = a2;
    return v26(v27, 1, 1, v6);
  }

  v14 = v2[1];
  v33 = *v2;
  v34 = v14;
  result = sub_23A9EC3F4(a1);
  if (v3)
  {
    return result;
  }

  v35 = a2;

  v17 = sub_23A9F510C(v16);
  if (!*(v14 + 16))
  {

    goto LABEL_9;
  }

  v18 = sub_23A9EE264(v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_9:
    v26 = *(v7 + 56);
    v27 = v35;
    return v26(v27, 1, 1, v6);
  }

  v21 = *(v14 + 56) + *(v7 + 72) * v18;
  v32 = *(v7 + 16);
  v32(v10, v21, v6);
  v31 = *(v7 + 32);
  v31(v13, v10, v6);
  v22 = [objc_opt_self() defaultManager];
  sub_23AA0BF84();
  v23 = sub_23AA0D104();

  v24 = [v22 fileExistsAtPath_];

  if (v24)
  {
    v25 = v35;
    v31(v35, v13, v6);
    return (*(v7 + 56))(v25, 0, 1, v6);
  }

  else
  {
    type metadata accessor for CapturedRoom.ModelProvider.Error();
    sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error);
    swift_allocError();
    v29 = v28;
    v32(v28, v13, v6);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
    (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    swift_willThrow();
    return (*(v7 + 8))(v13, v6);
  }
}

uint64_t sub_23A9EC080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A9EC3F4(uint64_t result)
{
  if (*(result + 16))
  {
    v1._rawValue = result;
    sub_23A8CA9D8(result + 32, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    swift_getDynamicType();
    (*(v5[4] + 24))(&v6);
    if (BYTE1(v6) > 0xFEu || (v6 & 0x100) == 0 || !CapturedRoom.Object.Category.supportsCombination(_:)(v1))
    {
      type metadata accessor for CapturedRoom.ModelProvider.Error();
      sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error);
      swift_allocError();
      v3 = v2;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
      (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t CapturedRoom.ModelProvider.setModelFileURL(_:for:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v34 = sub_23AA0BFB4();
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v34);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2[1];
  v32 = *v2;
  v33 = v18;

  sub_23A9EC3F4(a2);

  if (!v4)
  {
    sub_23A9F5364(a1, v13);
    if ((*(v14 + 48))(v13, 1, v34) == 1)
    {
      sub_23A9EC080(v13);
LABEL_6:

      v24 = sub_23A9F510C(v23);
      sub_23A9F5364(a1, v10);
      return sub_23A9EAA24(v10, v24);
    }

    v31 = v14;
    (*(v14 + 32))(v17, v13, v34);
    v20 = [objc_opt_self() defaultManager];
    sub_23AA0BF84();
    v21 = sub_23AA0D104();

    v22 = [v20 fileExistsAtPath_];

    if (v22)
    {
      (*(v31 + 8))(v17, v34);
      goto LABEL_6;
    }

    type metadata accessor for CapturedRoom.ModelProvider.Error();
    sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error);
    swift_allocError();
    v26 = v25;
    v27 = v31;
    v28 = v34;
    (*(v31 + 16))(v25, v17, v34);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
    (*(*(v29 - 8) + 56))(v26, 0, 1, v29);
    swift_willThrow();
    return (*(v27 + 8))(v17, v28);
  }

  return result;
}

uint64_t CapturedRoom.ModelProvider.setModelFileURL(_:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  v13 = sub_23AA0BFB4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  sub_23A9F5364(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23A9EC080(v12);
LABEL_5:
    sub_23A9F5364(a1, v9);
    return sub_23A9EABD0(v9, v18);
  }

  v26[1] = v3;
  v26[3] = v2;
  (*(v14 + 32))(v17, v12, v13);
  v19 = [objc_opt_self() defaultManager];
  sub_23AA0BF84();
  v20 = sub_23AA0D104();

  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
    (*(v14 + 8))(v17, v13);
    goto LABEL_5;
  }

  type metadata accessor for CapturedRoom.ModelProvider.Error();
  sub_23A9F56F0(&qword_27DFB16A8, type metadata accessor for CapturedRoom.ModelProvider.Error);
  swift_allocError();
  v24 = v23;
  (*(v14 + 16))(v23, v17, v13);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  swift_willThrow();
  return (*(v14 + 8))(v17, v13);
}

__n128 sub_23A9ECC18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F8, &qword_23AA1B9D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA1B8C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF680, &qword_23AA14418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AA11C20;
  *(v1 + 56) = &type metadata for ChairType;
  v2 = sub_23A9668A0();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0;
  *(v1 + 96) = &type metadata for ChairBackType;
  v3 = sub_23A9668F4();
  *(v1 + 104) = v3;
  *(v1 + 72) = 0;
  *(v1 + 136) = &type metadata for ChairLegType;
  v4 = sub_23A966948();
  *(v1 + 144) = v4;
  *(v1 + 112) = 0;
  *(v1 + 176) = &type metadata for ChairArmType;
  v5 = sub_23A96699C();
  *(v1 + 184) = v5;
  *(v1 + 152) = 0;
  *(v0 + 32) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23AA11C20;
  *(v6 + 56) = &type metadata for ChairType;
  *(v6 + 64) = v2;
  *(v6 + 32) = 0;
  *(v6 + 96) = &type metadata for ChairBackType;
  *(v6 + 104) = v3;
  *(v6 + 72) = 0;
  *(v6 + 136) = &type metadata for ChairLegType;
  *(v6 + 144) = v4;
  *(v6 + 112) = 0;
  *(v6 + 176) = &type metadata for ChairArmType;
  *(v6 + 184) = v5;
  *(v6 + 152) = 1;
  *(v0 + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23AA11C20;
  *(v7 + 56) = &type metadata for ChairType;
  *(v7 + 64) = v2;
  *(v7 + 32) = 1;
  *(v7 + 96) = &type metadata for ChairBackType;
  *(v7 + 104) = v3;
  *(v7 + 72) = 1;
  *(v7 + 136) = &type metadata for ChairLegType;
  *(v7 + 144) = v4;
  *(v7 + 112) = 0;
  *(v7 + 176) = &type metadata for ChairArmType;
  *(v7 + 184) = v5;
  *(v7 + 152) = 1;
  *(v0 + 48) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AA11C20;
  *(v8 + 56) = &type metadata for ChairType;
  *(v8 + 64) = v2;
  *(v8 + 32) = 1;
  *(v8 + 96) = &type metadata for ChairBackType;
  *(v8 + 104) = v3;
  *(v8 + 72) = 1;
  *(v8 + 136) = &type metadata for ChairLegType;
  *(v8 + 144) = v4;
  *(v8 + 112) = 1;
  *(v8 + 176) = &type metadata for ChairArmType;
  *(v8 + 184) = v5;
  *(v8 + 152) = 1;
  *(v0 + 56) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA11C20;
  *(v9 + 56) = &type metadata for ChairType;
  *(v9 + 64) = v2;
  *(v9 + 32) = 1;
  *(v9 + 96) = &type metadata for ChairBackType;
  *(v9 + 104) = v3;
  *(v9 + 72) = 1;
  *(v9 + 136) = &type metadata for ChairLegType;
  *(v9 + 144) = v4;
  *(v9 + 112) = 2;
  *(v9 + 176) = &type metadata for ChairArmType;
  *(v9 + 184) = v5;
  *(v9 + 152) = 1;
  *(v0 + 64) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23AA11C20;
  *(v10 + 56) = &type metadata for ChairType;
  *(v10 + 64) = v2;
  *(v10 + 32) = 1;
  *(v10 + 96) = &type metadata for ChairBackType;
  *(v10 + 104) = v3;
  *(v10 + 72) = 1;
  *(v10 + 136) = &type metadata for ChairLegType;
  *(v10 + 144) = v4;
  *(v10 + 112) = 0;
  *(v10 + 176) = &type metadata for ChairArmType;
  *(v10 + 184) = v5;
  *(v10 + 152) = 0;
  *(v0 + 72) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23AA11C20;
  *(v11 + 56) = &type metadata for ChairType;
  *(v11 + 64) = v2;
  *(v11 + 32) = 1;
  *(v11 + 96) = &type metadata for ChairBackType;
  *(v11 + 104) = v3;
  *(v11 + 72) = 1;
  *(v11 + 136) = &type metadata for ChairLegType;
  *(v11 + 144) = v4;
  *(v11 + 112) = 1;
  *(v11 + 176) = &type metadata for ChairArmType;
  *(v11 + 184) = v5;
  *(v11 + 152) = 0;
  *(v0 + 80) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23AA11C20;
  *(v12 + 56) = &type metadata for ChairType;
  *(v12 + 64) = v2;
  *(v12 + 32) = 1;
  *(v12 + 96) = &type metadata for ChairBackType;
  *(v12 + 104) = v3;
  *(v12 + 72) = 1;
  *(v12 + 136) = &type metadata for ChairLegType;
  *(v12 + 144) = v4;
  *(v12 + 112) = 2;
  *(v12 + 176) = &type metadata for ChairArmType;
  *(v12 + 184) = v5;
  *(v12 + 152) = 0;
  *(v0 + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23AA11C20;
  *(v13 + 56) = &type metadata for ChairType;
  *(v13 + 64) = v2;
  *(v13 + 32) = 2;
  *(v13 + 96) = &type metadata for ChairBackType;
  *(v13 + 104) = v3;
  *(v13 + 72) = 0;
  *(v13 + 136) = &type metadata for ChairLegType;
  *(v13 + 144) = v4;
  *(v13 + 112) = 1;
  *(v13 + 176) = &type metadata for ChairArmType;
  *(v13 + 184) = v5;
  *(v13 + 152) = 0;
  *(v0 + 96) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23AA11C20;
  *(v14 + 56) = &type metadata for ChairType;
  *(v14 + 64) = v2;
  *(v14 + 32) = 2;
  *(v14 + 96) = &type metadata for ChairBackType;
  *(v14 + 104) = v3;
  *(v14 + 72) = 0;
  *(v14 + 136) = &type metadata for ChairLegType;
  *(v14 + 144) = v4;
  *(v14 + 112) = 1;
  *(v14 + 176) = &type metadata for ChairArmType;
  *(v14 + 184) = v5;
  *(v14 + 152) = 1;
  *(v0 + 104) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23AA11C20;
  *(v15 + 56) = &type metadata for ChairType;
  *(v15 + 64) = v2;
  *(v15 + 32) = 3;
  *(v15 + 96) = &type metadata for ChairBackType;
  *(v15 + 104) = v3;
  *(v15 + 72) = 0;
  *(v15 + 136) = &type metadata for ChairLegType;
  *(v15 + 144) = v4;
  *(v15 + 112) = 0;
  *(v15 + 176) = &type metadata for ChairArmType;
  *(v15 + 184) = v5;
  *(v15 + 152) = 0;
  *(v0 + 112) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23AA11C20;
  *(v16 + 56) = &type metadata for ChairType;
  *(v16 + 64) = v2;
  *(v16 + 32) = 3;
  *(v16 + 96) = &type metadata for ChairBackType;
  *(v16 + 104) = v3;
  *(v16 + 72) = 0;
  *(v16 + 136) = &type metadata for ChairLegType;
  *(v16 + 144) = v4;
  *(v16 + 112) = 0;
  *(v16 + 176) = &type metadata for ChairArmType;
  *(v16 + 184) = v5;
  *(v16 + 152) = 1;
  *(v0 + 120) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23AA11C20;
  *(v17 + 56) = &type metadata for ChairType;
  *(v17 + 64) = v2;
  *(v17 + 32) = 3;
  *(v17 + 96) = &type metadata for ChairBackType;
  *(v17 + 104) = v3;
  *(v17 + 72) = 0;
  *(v17 + 136) = &type metadata for ChairLegType;
  *(v17 + 144) = v4;
  *(v17 + 112) = 1;
  *(v17 + 176) = &type metadata for ChairArmType;
  *(v17 + 184) = v5;
  *(v17 + 152) = 0;
  *(v0 + 128) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23AA11C20;
  *(v18 + 56) = &type metadata for ChairType;
  *(v18 + 64) = v2;
  *(v18 + 32) = 3;
  *(v18 + 96) = &type metadata for ChairBackType;
  *(v18 + 104) = v3;
  *(v18 + 72) = 0;
  *(v18 + 136) = &type metadata for ChairLegType;
  *(v18 + 144) = v4;
  *(v18 + 112) = 1;
  *(v18 + 176) = &type metadata for ChairArmType;
  *(v18 + 184) = v5;
  *(v18 + 152) = 1;
  *(v0 + 136) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23AA11C20;
  *(v19 + 56) = &type metadata for ChairType;
  *(v19 + 64) = v2;
  *(v19 + 32) = 3;
  *(v19 + 96) = &type metadata for ChairBackType;
  *(v19 + 104) = v3;
  *(v19 + 72) = 0;
  *(v19 + 136) = &type metadata for ChairLegType;
  *(v19 + 144) = v4;
  *(v19 + 112) = 2;
  *(v19 + 176) = &type metadata for ChairArmType;
  *(v19 + 184) = v5;
  *(v19 + 152) = 0;
  *(v0 + 144) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23AA11C20;
  *(v20 + 56) = &type metadata for ChairType;
  *(v20 + 64) = v2;
  *(v20 + 32) = 3;
  *(v20 + 96) = &type metadata for ChairBackType;
  *(v20 + 104) = v3;
  *(v20 + 72) = 0;
  *(v20 + 136) = &type metadata for ChairLegType;
  *(v20 + 144) = v4;
  *(v20 + 112) = 2;
  *(v20 + 176) = &type metadata for ChairArmType;
  *(v20 + 184) = v5;
  *(v20 + 152) = 1;
  *(v0 + 152) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23AA11C20;
  *(v21 + 56) = &type metadata for ChairType;
  *(v21 + 64) = v2;
  *(v21 + 32) = 3;
  *(v21 + 96) = &type metadata for ChairBackType;
  *(v21 + 104) = v3;
  *(v21 + 72) = 1;
  *(v21 + 136) = &type metadata for ChairLegType;
  *(v21 + 144) = v4;
  *(v21 + 112) = 0;
  *(v21 + 176) = &type metadata for ChairArmType;
  *(v21 + 184) = v5;
  *(v21 + 152) = 0;
  *(v0 + 160) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23AA11C20;
  *(v22 + 56) = &type metadata for ChairType;
  *(v22 + 64) = v2;
  *(v22 + 32) = 3;
  *(v22 + 96) = &type metadata for ChairBackType;
  *(v22 + 104) = v3;
  *(v22 + 72) = 1;
  *(v22 + 136) = &type metadata for ChairLegType;
  *(v22 + 144) = v4;
  *(v22 + 112) = 0;
  *(v22 + 176) = &type metadata for ChairArmType;
  *(v22 + 184) = v5;
  *(v22 + 152) = 1;
  *(v0 + 168) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23AA11C20;
  *(v23 + 56) = &type metadata for ChairType;
  *(v23 + 64) = v2;
  *(v23 + 32) = 3;
  *(v23 + 96) = &type metadata for ChairBackType;
  *(v23 + 104) = v3;
  *(v23 + 72) = 1;
  *(v23 + 136) = &type metadata for ChairLegType;
  *(v23 + 144) = v4;
  *(v23 + 112) = 1;
  *(v23 + 176) = &type metadata for ChairArmType;
  *(v23 + 184) = v5;
  *(v23 + 152) = 0;
  *(v0 + 176) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_23AA11C20;
  *(v24 + 56) = &type metadata for ChairType;
  *(v24 + 64) = v2;
  *(v24 + 32) = 3;
  *(v24 + 96) = &type metadata for ChairBackType;
  *(v24 + 104) = v3;
  *(v24 + 72) = 1;
  *(v24 + 136) = &type metadata for ChairLegType;
  *(v24 + 144) = v4;
  *(v24 + 112) = 1;
  *(v24 + 176) = &type metadata for ChairArmType;
  *(v24 + 184) = v5;
  *(v24 + 152) = 1;
  *(v0 + 184) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_23AA11C20;
  *(v25 + 56) = &type metadata for ChairType;
  *(v25 + 64) = v2;
  *(v25 + 32) = 3;
  *(v25 + 96) = &type metadata for ChairBackType;
  *(v25 + 104) = v3;
  *(v25 + 72) = 1;
  *(v25 + 136) = &type metadata for ChairLegType;
  *(v25 + 144) = v4;
  *(v25 + 112) = 2;
  *(v25 + 176) = &type metadata for ChairArmType;
  *(v25 + 184) = v5;
  *(v25 + 152) = 0;
  *(v0 + 192) = v25;
  v26 = swift_allocObject();
  result = xmmword_23AA11C20;
  *(v26 + 16) = xmmword_23AA11C20;
  *(v26 + 56) = &type metadata for ChairType;
  *(v26 + 64) = v2;
  *(v26 + 32) = 3;
  *(v26 + 96) = &type metadata for ChairBackType;
  *(v26 + 104) = v3;
  *(v26 + 72) = 1;
  *(v26 + 136) = &type metadata for ChairLegType;
  *(v26 + 144) = v4;
  *(v26 + 112) = 2;
  *(v26 + 176) = &type metadata for ChairArmType;
  *(v26 + 184) = v5;
  *(v26 + 152) = 1;
  *(v0 + 200) = v26;
  qword_27DFB1680 = v0;
  return result;
}

__n128 sub_23A9ED38C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F8, &qword_23AA1B9D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA19830;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF680, &qword_23AA14418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AA10FC0;
  *(v1 + 56) = &type metadata for SofaType;
  v2 = sub_23A96684C();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0;
  *(v0 + 32) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23AA10FC0;
  *(v3 + 56) = &type metadata for SofaType;
  *(v3 + 64) = v2;
  *(v3 + 32) = 1;
  *(v0 + 40) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AA10FC0;
  *(v4 + 56) = &type metadata for SofaType;
  *(v4 + 64) = v2;
  *(v4 + 32) = 2;
  *(v0 + 48) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23AA10FC0;
  *(v5 + 56) = &type metadata for SofaType;
  *(v5 + 64) = v2;
  *(v5 + 32) = 3;
  *(v0 + 56) = v5;
  v6 = swift_allocObject();
  result = xmmword_23AA10FC0;
  *(v6 + 16) = xmmword_23AA10FC0;
  *(v6 + 56) = &type metadata for SofaType;
  *(v6 + 64) = v2;
  *(v6 + 32) = 4;
  *(v0 + 64) = v6;
  qword_27DFB1688 = v0;
  return result;
}

__n128 sub_23A9ED4F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F8, &qword_23AA1B9D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA1B8D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF680, &qword_23AA14418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AA11C10;
  *(v1 + 56) = &type metadata for TableType;
  v2 = sub_23A9667A4();
  *(v1 + 64) = v2;
  *(v1 + 32) = 1;
  *(v1 + 96) = &type metadata for TableShapeType;
  v3 = sub_23A9667F8();
  *(v1 + 104) = v3;
  *(v1 + 72) = 0;
  *(v0 + 32) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23AA11C10;
  *(v4 + 56) = &type metadata for TableType;
  *(v4 + 64) = v2;
  *(v4 + 32) = 1;
  *(v4 + 96) = &type metadata for TableShapeType;
  *(v4 + 104) = v3;
  *(v4 + 72) = 1;
  *(v0 + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23AA11C10;
  *(v5 + 56) = &type metadata for TableType;
  *(v5 + 64) = v2;
  *(v5 + 32) = 1;
  *(v5 + 96) = &type metadata for TableShapeType;
  *(v5 + 104) = v3;
  *(v5 + 72) = 3;
  *(v0 + 48) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23AA11C10;
  *(v6 + 56) = &type metadata for TableType;
  *(v6 + 64) = v2;
  *(v6 + 32) = 0;
  *(v6 + 96) = &type metadata for TableShapeType;
  *(v6 + 104) = v3;
  *(v6 + 72) = 0;
  *(v0 + 56) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23AA11C10;
  *(v7 + 56) = &type metadata for TableType;
  *(v7 + 64) = v2;
  *(v7 + 32) = 0;
  *(v7 + 96) = &type metadata for TableShapeType;
  *(v7 + 104) = v3;
  *(v7 + 72) = 1;
  *(v0 + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23AA11C10;
  *(v8 + 56) = &type metadata for TableType;
  *(v8 + 64) = v2;
  *(v8 + 32) = 0;
  *(v8 + 96) = &type metadata for TableShapeType;
  *(v8 + 104) = v3;
  *(v8 + 72) = 2;
  *(v0 + 72) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23AA11C10;
  *(v9 + 56) = &type metadata for TableType;
  *(v9 + 64) = v2;
  *(v9 + 32) = 0;
  *(v9 + 96) = &type metadata for TableShapeType;
  *(v9 + 104) = v3;
  *(v9 + 72) = 3;
  *(v0 + 80) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23AA11C10;
  *(v10 + 56) = &type metadata for TableType;
  *(v10 + 64) = v2;
  *(v10 + 32) = 2;
  *(v10 + 96) = &type metadata for TableShapeType;
  *(v10 + 104) = v3;
  *(v10 + 72) = 0;
  *(v0 + 88) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23AA11C10;
  *(v11 + 56) = &type metadata for TableType;
  *(v11 + 64) = v2;
  *(v11 + 32) = 2;
  *(v11 + 96) = &type metadata for TableShapeType;
  *(v11 + 104) = v3;
  *(v11 + 72) = 1;
  *(v0 + 96) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23AA11C10;
  *(v12 + 56) = &type metadata for TableType;
  *(v12 + 64) = v2;
  *(v12 + 32) = 2;
  *(v12 + 96) = &type metadata for TableShapeType;
  *(v12 + 104) = v3;
  *(v12 + 72) = 2;
  *(v0 + 104) = v12;
  v13 = swift_allocObject();
  result = xmmword_23AA11C10;
  *(v13 + 16) = xmmword_23AA11C10;
  *(v13 + 56) = &type metadata for TableType;
  *(v13 + 64) = v2;
  *(v13 + 32) = 2;
  *(v13 + 96) = &type metadata for TableShapeType;
  *(v13 + 104) = v3;
  *(v13 + 72) = 3;
  *(v0 + 112) = v13;
  qword_27DFB1690 = v0;
  return result;
}

__n128 sub_23A9ED7A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F8, &qword_23AA1B9D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23AA11C10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF680, &qword_23AA14418);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23AA10FC0;
  *(v1 + 56) = &type metadata for StorageType;
  v2 = sub_23A966750();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0;
  *(v0 + 32) = v1;
  v3 = swift_allocObject();
  result = xmmword_23AA10FC0;
  *(v3 + 16) = xmmword_23AA10FC0;
  *(v3 + 56) = &type metadata for StorageType;
  *(v3 + 64) = v2;
  *(v3 + 32) = 1;
  *(v0 + 40) = v3;
  qword_27DFB1698 = v0;
  return result;
}

uint64_t CapturedRoom.Object.Category.supportedCombinations.getter()
{
  v1 = *v0;
  result = MEMORY[0x277D84F90];
  if (v1 > 9)
  {
    if (*v0 <= 0xCu)
    {
      if (v1 == 10)
      {
        if (qword_27DFAE500 != -1)
        {
          swift_once();
        }

        v3 = &qword_27DFB1690;
      }

      else if (v1 == 11)
      {
        if (qword_27DFAE4F8 != -1)
        {
          swift_once();
        }

        v3 = &qword_27DFB1688;
      }

      else
      {
        if (qword_27DFAE4F0 != -1)
        {
          swift_once();
        }

        v3 = &qword_27DFB1680;
      }

      goto LABEL_19;
    }
  }

  else if (v1 - 1 >= 9)
  {
    if (qword_27DFAE508 != -1)
    {
      swift_once();
    }

    v3 = &qword_27DFB1698;
LABEL_19:
    v4 = *v3;
  }

  return result;
}

void *sub_23A9EDA18(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_23A9EDAB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

size_t sub_23A9EDB80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23A9EDC7C(uint64_t a1)
{
  v3 = *(v1 + 40);
  type metadata accessor for ScanEntity();
  sub_23A9F56F0(&qword_27DFAEF28, type metadata accessor for ScanEntity);
  v4 = sub_23AA0D054();
  return sub_23A9EE57C(a1, v4);
}

unint64_t sub_23A9EDD28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23AA0C0E4();
  v5 = MEMORY[0x277CC95F0];
  sub_23A9F56F0(&unk_27DFAF2C0, MEMORY[0x277CC95F0]);
  v6 = sub_23AA0D054();
  return sub_23A9EEDDC(a1, v6, MEMORY[0x277CC95F0], &qword_27DFAE8C8, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_23A9EDDFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23AA0DD14();
  sub_23AA0D1D4();
  v6 = sub_23AA0DD54();

  return sub_23A9EE678(a1, a2, v6);
}

unint64_t sub_23A9EDE74(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23AA0DD14();
  sub_23AA0C0B4();
  v4 = sub_23AA0DD54();

  return sub_23A9EE730(a1, v4);
}

unint64_t sub_23A9EDEEC(float32x2_t a1)
{
  v3 = *(v1 + 40);
  sub_23AA0DD14();
  sub_23A947E78();
  v4 = sub_23AA0DD54();

  return sub_23A9EE834(v4, a1);
}

unint64_t sub_23A9EDF54(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_23AA0DD04();

  return sub_23A9EE8A8(a1, v4);
}

unint64_t sub_23A9EDF98(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23AA0DD14();
  v4 = *(a1 + 48);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v8 = sub_23AA0DC84();
      MEMORY[0x23EE907C0](v8);
      --v5;
    }

    while (v5);
  }

  v9 = sub_23AA0DD54();
  return sub_23A9EE914(a1, v9);
}

unint64_t sub_23A9EE050(int32x2_t a1)
{
  v2 = *(v1 + 40);
  sub_23AA0DD14();
  sub_23AA0DD44();
  sub_23AA0DD44();
  v3 = sub_23AA0DD54();

  return sub_23A9EE9E4(v3, a1);
}

unint64_t sub_23A9EE0C8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](a1);
  v4 = sub_23AA0DD54();
  return sub_23A9EEA58(a1, v4);
}

unint64_t sub_23A9EE130(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_23AA0DD14();
  sub_23AA0D1D4();

  v4 = sub_23AA0DD54();

  return sub_23A9EEAC8(a1, v4);
}

unint64_t sub_23A9EE264(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23AA0DD14();
  sub_23A9102A8(v6, a1);
  v4 = sub_23AA0DD54();

  return sub_23A9EED24(a1, v4);
}

unint64_t sub_23A9EE2D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23AA0BFB4();
  v5 = MEMORY[0x277CC9260];
  sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260]);
  v6 = sub_23AA0D054();
  return sub_23A9EEDDC(a1, v6, MEMORY[0x277CC9260], &qword_27DFB16E8, v5, MEMORY[0x277CC9278]);
}

unint64_t sub_23A9EE3A4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23AA0DD14();
  type metadata accessor for CFString(0);
  sub_23A9F56F0(&qword_27DFB16D0, type metadata accessor for CFString);
  sub_23AA0CB44();
  v4 = sub_23AA0DD54();

  return sub_23A9EEF7C(a1, v4);
}

unint64_t sub_23A9EE458(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23AA0DD14();
  v4 = *(a1 + 16);
  v5 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v5);
  v6 = *(a1 + 24);
  v7 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v7);
  v8 = *(a1 + 32);
  v9 = sub_23AA0DD64();
  MEMORY[0x23EE907C0](v9);
  v10 = sub_23AA0DD54();

  return sub_23A9EF088(a1, v10);
}

unint64_t sub_23A9EE4E8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23AA0D134();
  sub_23AA0DD14();
  sub_23AA0D1D4();
  v4 = sub_23AA0DD54();

  return sub_23A9EF120(a1, v4);
}

unint64_t sub_23A9EE57C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for ScanEntity();
    sub_23A9F56F0(&qword_27DFB16C0, type metadata accessor for ScanEntity);
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_23AA0D084())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23A9EE678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23AA0DBD4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23A9EE730(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
    do
    {
      v8 = *(*(v2 + 48) + 8 * v4);

      if (sub_23AA0C094())
      {
        v9 = *(v8 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

        if (v9 == *(a1 + v7))
        {
          return v4;
        }
      }

      else
      {
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23A9EE834(uint64_t a1, float32x2_t a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      v6 = vceq_f32(*(*(v2 + 48) + 8 * result), a2);
      if (v6.i8[0] & v6.i8[4])
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EE8A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EE914(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 48);
    v8 = v7[2];
    while (1)
    {
      v9 = *(*(*(v2 + 48) + 8 * result) + 48);
      if (*&v9[2] == *&v8)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (*&v8 && v9 != v7)
    {
      v10 = v9 + 4;
      v11 = v7 + 4;
      v12 = v7[2];
      while (v12)
      {
        v13 = vceq_f32(*v10, *v11);
        if ((v13.i32[0] & v13.i32[1] & 1) == 0)
        {
          goto LABEL_3;
        }

        ++v10;
        ++v11;
        if (!--*&v12)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_23A9EE9E4(uint64_t a1, int32x2_t a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      v6 = vceq_s32(*(*(v2 + 48) + 8 * result), a2);
      if (v6.i8[0] & v6.i8[4])
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EEA58(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EEAC8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
          v8 = 0x6E65686374696BLL;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x6F52676E696E6964;
          }

          else
          {
            v8 = 0x69746E6564696E75;
          }

          if (v7 == 4)
          {
            v9 = 0xEA00000000006D6FLL;
          }

          else
          {
            v9 = 0xEC00000064656966;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x6D6F6F72646562;
        }

        else
        {
          v8 = 0x6D6F6F7268746162;
        }

        if (v7 == 1)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }
      }

      else
      {
        v8 = 0x6F52676E6976696CLL;
        v9 = 0xEA00000000006D6FLL;
      }

      v10 = 0x6F52676E696E6964;
      if (v6 != 4)
      {
        v10 = 0x69746E6564696E75;
      }

      v11 = 0xEC00000064656966;
      if (v6 == 4)
      {
        v11 = 0xEA00000000006D6FLL;
      }

      if (v6 == 3)
      {
        v10 = 0x6E65686374696BLL;
        v11 = 0xE700000000000000;
      }

      v12 = 0x6D6F6F7268746162;
      if (v6 == 1)
      {
        v12 = 0x6D6F6F72646562;
      }

      v13 = 0xE800000000000000;
      if (v6 == 1)
      {
        v13 = 0xE700000000000000;
      }

      if (!v6)
      {
        v12 = 0x6F52676E6976696CLL;
        v13 = 0xEA00000000006D6FLL;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_23AA0DBD4();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23A9EED24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);

      v9 = sub_23A9F4AFC(v8, a1);

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23A9EEDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_23A9F56F0(v24, v25);
      v20 = sub_23AA0D084();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_23A9EEF7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23A9F56F0(&qword_27DFB16D0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23AA0CB34();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23A9EF088(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + 8 * result);
      if (*(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24) && *(v7 + 32) == *(a1 + 32))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23A9EF120(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23AA0D134();
      v9 = v8;
      if (v7 == sub_23AA0D134() && v9 == v10)
      {
        break;
      }

      v12 = sub_23AA0DBD4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_23A9EF224(float *a1, float a2)
{
  v3 = a2;
  v5 = *v2;
  v6 = a2 == 0.0;
  v7 = 0.0;
  if (!v6)
  {
    v7 = v3;
  }

  v8 = MEMORY[0x23EE90790](*(*v2 + 40), LODWORD(v7), 4);
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v5 + 48);
      if (*(v12 + 4 * v10) == v3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    v3 = *(v12 + 4 * v10);
  }

  else
  {
LABEL_7:
    v13 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_23A9F16E0(v10, isUniquelyReferenced_nonNull_native, v3);
    *v2 = v16;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_23A9EF31C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_23AA0D804();

    if (v8)
    {

      type metadata accessor for HullPointUUID();
      swift_dynamicCast();
      result = 0;
      *a1 = v26;
      return result;
    }

    result = sub_23AA0D7F4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_23A9EFF10(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_23A9F0590(v22 + 1);
    }

    sub_23A9F153C(v23, v21);

    *v3 = v21;
    *a1 = a2;
  }

  else
  {
    v24 = v2;
    v10 = *(v6 + 40);
    sub_23AA0DD14();
    sub_23AA0C0B4();
    v11 = sub_23AA0DD54();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      v15 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      do
      {
        v16 = *(*(v6 + 48) + 8 * v13);

        if (sub_23AA0C094())
        {
          v17 = *(v16 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

          if (v17 == *(a2 + v15))
          {

            *a1 = *(*(v6 + 48) + 8 * v13);

            return 0;
          }
        }

        else
        {
        }

        v13 = (v13 + 1) & v14;
      }

      while (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    v18 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;

    sub_23A9F1810(v20, v13, isUniquelyReferenced_nonNull_native);
    *v24 = v27;
    *a1 = a2;
  }

  return 1;
}

uint64_t sub_23A9EF59C(double *a1, float32x2_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_23AA0DD14();
  sub_23A947E78();
  v7 = sub_23AA0DD54();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      v12 = vceq_f32(*(v11 + 8 * v9), a2);
      if (v12.i32[0] & v12.i32[1])
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v13 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_23A9F19DC(v9, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v16;
    result = 1;
  }

  *a1 = *&a2;
  return result;
}

uint64_t sub_23A9EF6AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_23AA0D804();

    if (v8)
    {

      type metadata accessor for CDTTriangle();
      swift_dynamicCast();
      result = 0;
      *a1 = v32;
      return result;
    }

    result = sub_23AA0D7F4();
    if (!__OFADD__(result, 1))
    {
      v26 = sub_23A9F011C(v7, result + 1);
      v27 = *(v26 + 16);
      if (*(v26 + 24) <= v27)
      {
        sub_23A9F0A70(v27 + 1);
      }

      sub_23A9F15EC(v28, v26);

      *v3 = v26;
      goto LABEL_26;
    }
  }

  else
  {
    v10 = *(v6 + 40);
    sub_23AA0DD14();
    v11 = *(a2 + 48);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = (v11 + 32);
      do
      {
        v14 = *v13++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v15 = sub_23AA0DC84();
        MEMORY[0x23EE907C0](v15);
        --v12;
      }

      while (v12);
    }

    result = sub_23AA0DD54();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_25:
      v29 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *v2;

      sub_23A9F1B48(v31, v17, isUniquelyReferenced_nonNull_native);
      *v2 = v33;
LABEL_26:
      *a1 = a2;
      return 1;
    }

    v18 = ~v16;
    v19 = *(a2 + 48);
    v20 = v19[2];
    while (1)
    {
      v21 = *(*(*(v6 + 48) + 8 * v17) + 48);
      if (*&v21[2] == *&v20)
      {
        break;
      }

LABEL_12:
      v17 = (v17 + 1) & v18;
      if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (!*&v20 || v21 == v19)
    {
LABEL_20:

      *a1 = *(*(v6 + 48) + 8 * v17);

      return 0;
    }

    v22 = v21 + 4;
    v23 = v19 + 4;
    v24 = v19[2];
    while (v24)
    {
      v25 = vceq_f32(*v22, *v23);
      result = v25.u32[0];
      if ((v25.i32[0] & v25.i32[1] & 1) == 0)
      {
        goto LABEL_12;
      }

      ++v22;
      ++v23;
      if (!--*&v24)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9EF964(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_23A9106D0();
  v6 = sub_23AA0D054();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      sub_23A910674(*(v4 + 48) + 40 * v8, v19);
      v10 = sub_23AA0D054();
      v11 = sub_23AA0D054();
      sub_23A910724(v19);
      if (v10 == v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_23A910724(a2);
    sub_23A910674(*(v4 + 48) + 40 * v8, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v12 = *v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23A910674(a2, v19);
    v18 = *v16;
    sub_23A9F1D64(v19, v8, isUniquelyReferenced_nonNull_native);
    *v16 = v18;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_23A9EFB10(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](a2);
  v11 = sub_23AA0DD54();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_23A9F1F20(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23A9EFC30(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260]);
  v36 = a2;
  v13 = sub_23AA0D054();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_23A9F56F0(&qword_27DFB16E8, MEMORY[0x277CC9260]);
      v23 = sub_23AA0D084();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23A9F2090(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23A9EFF10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
    v2 = sub_23AA0D874();
    v16 = v2;
    sub_23AA0D7B4();
    if (sub_23AA0D824())
    {
      type metadata accessor for HullPointUUID();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_23A9F0590(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_23AA0DD14();
        sub_23AA0C0B4();
        result = sub_23AA0DD54();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_23AA0D824());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23A9F011C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16C8, &qword_23AA1B9C0);
    v2 = sub_23AA0D874();
    v21 = v2;
    sub_23AA0D7B4();
    if (sub_23AA0D824())
    {
      type metadata accessor for CDTTriangle();
      do
      {
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_23A9F0A70(v4 + 1);
        }

        v2 = v21;
        v5 = *(v21 + 40);
        sub_23AA0DD14();
        v6 = *(v20 + 48);
        v7 = *(v6 + 16);
        if (v7)
        {
          v8 = (v6 + 32);
          do
          {
            v9 = *v8++;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
            v10 = sub_23AA0DC84();
            MEMORY[0x23EE907C0](v10);
            --v7;
          }

          while (v7);
        }

        result = sub_23AA0DD54();
        v12 = v21 + 56;
        v13 = -1 << *(v21 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v21 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v14) & ~*(v21 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v15 == v17;
            if (v15 == v17)
            {
              v15 = 0;
            }

            v16 |= v18;
            v19 = *(v12 + 8 * v15);
          }

          while (v19 == -1);
          v3 = __clz(__rbit64(~v19)) + (v15 << 6);
        }

        *(v12 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v21 + 48) + 8 * v3) = v20;
        ++*(v21 + 16);
      }

      while (sub_23AA0D824());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23A9F0358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F0, &qword_23AA1B9D0);
  result = sub_23AA0D864();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = v15 | (v7 << 6);
      v19 = *(v3 + 48);
      v20 = *(v19 + 4 * v18);
      if (v20 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = *(v19 + 4 * v18);
      }

      result = MEMORY[0x23EE90790](*(v6 + 40), LODWORD(v21), 4);
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23A9F0590(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
  result = sub_23AA0D864();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_23AA0DD14();
      sub_23AA0C0B4();
      result = sub_23AA0DD54();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23A9F07EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0658, &qword_23AA19358);
  result = sub_23AA0D864();
  v7 = result;
  if (*(v3 + 16))
  {
    v8 = 0;
    v9 = (v3 + 56);
    v10 = 1 << *(v3 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v3 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      *&v6 = *(*(v3 + 48) + 8 * (v16 | (v8 << 6)));
      v28 = v6;
      v19 = *(v7 + 40);
      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      result = sub_23AA0DD54();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(&v6 + 1) = *(&v28 + 1);
      *(*(v7 + 48) + 8 * v15) = v28;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23A9F0A70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16C8, &qword_23AA1B9C0);
  result = sub_23AA0D864();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_23AA0DD14();
      v35 = v18;
      v20 = *(v18 + 48);
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = (v20 + 32);
        do
        {
          v23 = *v22++;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
          v24 = sub_23AA0DC84();
          MEMORY[0x23EE907C0](v24);
          --v21;
        }

        while (v21);
      }

      result = sub_23AA0DD54();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v3 = v34;
      *(*(v6 + 48) + 8 * v14) = v35;
      ++*(v6 + 16);
      v11 = v36;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23A9F0D20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1710, &qword_23AA1B9F0);
  result = sub_23AA0D864();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      sub_23A9106D0();
      result = sub_23AA0D054();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *(v15 + 32) = v32;
      *v15 = v30;
      *(v15 + 16) = v31;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23A9F0F98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23AA0D864();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v20);
      result = sub_23AA0DD54();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_23A9F11E0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23AA0BFB4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1708, &qword_23AA1B9E8);
  result = sub_23AA0D864();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260]);
      result = sub_23AA0D054();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_23A9F153C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_23AA0DD14();
  sub_23AA0C0B4();
  sub_23AA0DD54();
  v5 = -1 << *(a2 + 32);
  result = sub_23AA0D794();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_23A9F15EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_23AA0DD14();
  v5 = *(a1 + 48);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
      v9 = sub_23AA0DC84();
      MEMORY[0x23EE907C0](v9);
      --v6;
    }

    while (v6);
  }

  sub_23AA0DD54();
  v10 = -1 << *(a2 + 32);
  result = sub_23AA0D794();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_23A9F16E0(unint64_t result, char a2, float a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a2)
  {
    sub_23A9F0358(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_23A9F2334();
      result = v7;
      goto LABEL_14;
    }

    sub_23A9F2BE8(v5 + 1);
  }

  v8 = *v3;
  v9 = 0.0;
  if (a3 != 0.0)
  {
    v9 = a3;
  }

  v10 = MEMORY[0x23EE90790](*(*v3 + 40), LODWORD(v9), 4);
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    while (*(*(v8 + 48) + 4 * result) != a3)
    {
      result = (result + 1) & v12;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_17;
  }

LABEL_14:
  v13 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v13 + 48) + 4 * result) = a3;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_23AA0DC14();
  __break(1u);
  return result;
}

uint64_t sub_23A9F1810(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_23A9F0590(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_23A9F25C8(&qword_27DFB0A30, &qword_23AA19BF0);
      goto LABEL_15;
    }

    sub_23A9F2DEC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_23AA0DD14();
  sub_23AA0C0B4();
  result = sub_23AA0DD54();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for HullPointUUID();
    v12 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);

      if (sub_23AA0C094())
      {
        v14 = *(v13 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

        if (v14 == *(v5 + v12))
        {
          result = sub_23AA0DC14();
          __break(1u);
          break;
        }
      }

      else
      {
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v18;
  }

  return result;
}

unint64_t sub_23A9F19DC(unint64_t result, char a2, float32x2_t a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_23A9F07EC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_23A9F2488();
      result = v7;
      goto LABEL_12;
    }

    sub_23A9F3020(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_23AA0DD14();
  sub_23A947E78();
  v10 = sub_23AA0DD54();
  v11 = -1 << *(v8 + 32);
  result = v10 & ~v11;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v11;
    do
    {
      v13 = vceq_f32(*(*(v8 + 48) + 8 * result), a3);
      if (v13.i32[0] & v13.i32[1])
      {
        goto LABEL_15;
      }

      result = (result + 1) & v12;
    }

    while (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v14 + 48) + 8 * result) = *&a3;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
  result = sub_23AA0DC14();
  __break(1u);
  return result;
}

uint64_t sub_23A9F1B48(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23A9F0A70(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        result = sub_23A9F25C8(&qword_27DFB16C8, &qword_23AA1B9C0);
        a2 = v7;
        goto LABEL_22;
      }

      sub_23A9F3268(v5 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_23AA0DD14();
    v10 = *(v4 + 48);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 32);
      do
      {
        v13 = *v12++;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
        v14 = sub_23AA0DC84();
        MEMORY[0x23EE907C0](v14);
        --v11;
      }

      while (v11);
    }

    result = sub_23AA0DD54();
    v15 = -1 << *(v8 + 32);
    a2 = result & ~v15;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v16 = ~v15;
      v17 = result & ~v15;
      result = type metadata accessor for CDTTriangle();
      a2 = v17;
      v18 = *(v4 + 48);
      v19 = v18[2];
      while (1)
      {
        v20 = *(*(*(v8 + 48) + 8 * a2) + 48);
        if (*&v20[2] == *&v19)
        {
          break;
        }

LABEL_13:
        a2 = (a2 + 1) & v16;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (*&v19 && v20 != v18)
      {
        v21 = v20 + 4;
        v22 = v18 + 4;
        v23 = v18[2];
        while (v23)
        {
          v24 = vceq_f32(*v21, *v22);
          if ((v24.i32[0] & v24.i32[1] & 1) == 0)
          {
            goto LABEL_13;
          }

          ++v21;
          ++v22;
          if (!--*&v23)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      result = sub_23AA0DC14();
      __break(1u);
    }
  }

LABEL_22:
  v25 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + 8 * a2) = v4;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_23A9F1D64(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A9F0D20(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_23A9F2708();
      goto LABEL_12;
    }

    sub_23A9F34F8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_23A9106D0();
  result = sub_23AA0D054();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_23A910674(*(v8 + 48) + 40 * a2, v22);
      v12 = sub_23AA0D054();
      v13 = sub_23AA0D054();
      result = sub_23A910724(v22);
      if (v12 == v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *v5;
  v17 = *(v5 + 16);
  *(v15 + 32) = *(v5 + 32);
  *v15 = v16;
  *(v15 + 16) = v17;
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v14 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23AA0DC14();
  __break(1u);
  return result;
}

uint64_t sub_23A9F1F20(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A9F0F98(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_23A9F2880(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_23A9F373C(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v6);
  result = sub_23AA0DD54();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23AA0DC14();
  __break(1u);
  return result;
}

uint64_t sub_23A9F2090(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_23AA0BFB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A9F11E0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_23A9F29B0();
      goto LABEL_12;
    }

    sub_23A9F3954(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260]);
  v16 = sub_23AA0D054();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_23A9F56F0(&qword_27DFB16E8, MEMORY[0x277CC9260]);
      v24 = sub_23AA0D084();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23AA0DC14();
  __break(1u);
  return result;
}

void *sub_23A9F2334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F0, &qword_23AA1B9D0);
  v2 = *v0;
  v3 = sub_23AA0D854();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23A9F2488()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0658, &qword_23AA19358);
  v2 = *v0;
  v3 = sub_23AA0D854();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23A9F25C8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0D854();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_23A9F2708()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1710, &qword_23AA1B9F0);
  v2 = *v0;
  v3 = sub_23AA0D854();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_23A910674(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23A9F2880(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23AA0D854();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_23A9F29B0()
{
  v1 = v0;
  v2 = sub_23AA0BFB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1708, &qword_23AA1B9E8);
  v7 = *v0;
  v8 = sub_23AA0D854();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_23A9F2BE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16F0, &qword_23AA1B9D0);
  result = sub_23AA0D864();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = v14 | (v7 << 6);
      v18 = *(v3 + 48);
      v19 = *(v18 + 4 * v17);
      if (v19 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = *(v18 + 4 * v17);
      }

      result = MEMORY[0x23EE90790](*(v6 + 40), LODWORD(v20), 4);
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v19;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_29:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_23A9F2DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
  result = sub_23AA0D864();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_23AA0DD14();

      sub_23AA0C0B4();
      result = sub_23AA0DD54();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23A9F3020(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0658, &qword_23AA19358);
  result = sub_23AA0D864();
  v7 = result;
  if (*(v3 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      *&v6 = *(*(v3 + 48) + 8 * (v15 | (v8 << 6)));
      v26 = v6;
      v18 = *(v7 + 40);
      sub_23AA0DD14();
      sub_23AA0DD44();
      sub_23AA0DD44();
      result = sub_23AA0DD54();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(&v6 + 1) = *(&v26 + 1);
      *(*(v7 + 48) + 8 * v14) = v26;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_26;
      }

      v17 = *(v3 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v7;
  }

  return result;
}

uint64_t sub_23A9F3268(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16C8, &qword_23AA1B9C0);
  result = sub_23AA0D864();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v34 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_23AA0DD14();
      v20 = *(v18 + 48);
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = (v20 + 32);

        do
        {
          v23 = *v22++;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB14C0, &qword_23AA15D90);
          v24 = sub_23AA0DC84();
          MEMORY[0x23EE907C0](v24);
          --v21;
        }

        while (v21);
      }

      else
      {
      }

      result = sub_23AA0DD54();
      v6 = v34;
      v25 = -1 << *(v34 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_35;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v34 + 48) + 8 * v14) = v18;
      ++*(v34 + 16);
      v3 = v33;
      v11 = v35;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_33;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23A9F34F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1710, &qword_23AA1B9F0);
  result = sub_23AA0D864();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_23A910674(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      sub_23A9106D0();
      result = sub_23AA0D054();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v29[0];
      v16 = v29[1];
      *(v14 + 32) = v30;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23A9F373C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23AA0D864();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v19);
      result = sub_23AA0DD54();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_23A9F3954(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23AA0BFB4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1708, &qword_23AA1B9E8);
  v10 = sub_23AA0D864();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_23A9F56F0(&qword_27DFAEFD0, MEMORY[0x277CC9260]);
      result = sub_23AA0D054();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23A9F3C70(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_23AA0D7B4();
  type metadata accessor for HullPointUUID();
  sub_23A9F56F0(&qword_27DFB0630, type metadata accessor for HullPointUUID);
  result = sub_23AA0D424();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_23AA0D824())
      {
        goto LABEL_30;
      }

      type metadata accessor for HullPointUUID();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_23A9F3E9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_23A9F3F9C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_23A9F409C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_23A9F41F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_23AA0C0E4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_23A9F4494(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_23A9F4614(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v40 = a6;
  v41 = a7;
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = a4 + 8;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[8];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    v21 = 0;
    v35 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[7];
      v28 = v38;
      v29 = *(v39 + 72);
      sub_23A9F5634(v27 + v29 * (v26 | (v21 << 6)), v38, v40);
      v30 = v28;
      v31 = v41;
      sub_23A9C25A8(v30, v16, v41);
      sub_23A9C25A8(v16, a2, v31);
      if (v23 == v37)
      {
        a4 = a1;
        a1 = v36;
        goto LABEL_23;
      }

      a2 += v29;
      v32 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v33 = v21 + 1;
    }

    else
    {
      v33 = v22;
    }

    v21 = v33 - 1;
    a1 = v36;
LABEL_23:
    v18 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_23A9F4858(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_23AA0BFB4();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_23A9F4AFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v20 = v8;
  v21 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v22 = (v7 - 1) & v7;
LABEL_13:
      sub_23A910674(*(result + 48) + 40 * (v10 | (v3 << 6)), v26);
      v24[0] = v26[0];
      v24[1] = v26[1];
      v25 = v27;
      v13 = *(a2 + 40);
      sub_23A9106D0();
      v14 = sub_23AA0D054();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        sub_23A910674(*(a2 + 48) + 40 * v16, v23);
        v18 = sub_23AA0D054();
        v19 = sub_23AA0D054();
        sub_23A910724(v23);
        if (v18 == v19)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_23A910724(v24);
      v8 = v20;
      result = v21;
      v7 = v22;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_23A910724(v24);
    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v22 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9F4D08(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_23AA0D7F4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for HullPointUUID();
  v5 = sub_23A9F56F0(&qword_27DFB0630, type metadata accessor for HullPointUUID);
  result = MEMORY[0x23EE8FEA0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE90360](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_23A9EF31C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_23AA0D7F4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23A9F4E74(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_23AA0D7F4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for CDTTriangle();
  v5 = sub_23A9F56F0(&qword_27DFB0650, type metadata accessor for CDTTriangle);
  result = MEMORY[0x23EE8FEA0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE90360](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_23A9EF6AC(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_23AA0D7F4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23A9F4FE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23A9106D0();
  result = MEMORY[0x23EE8FEA0](v2, &type metadata for AnyCapturedRoomAttribute, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      sub_23A910674(v5, v6);
      sub_23A9EF964(v7, v6);
      sub_23A910724(v7);
      v5 += 40;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23A9F506C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23A9F569C();
  result = MEMORY[0x23EE8FEA0](v2, &type metadata for CapturedRoom.Object.Category, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_23A9EFB10(&v7, v6, &qword_27DFB16E0, &qword_23AA1B9C8);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23A9F510C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v26 = MEMORY[0x277D84F90];
    sub_23A97605C(0, v2, 0);
    v3 = v26;
    v4 = a1 + 32;
    do
    {
      sub_23A8CA9D8(v4, v21);
      v5 = v22;
      v6 = v23;
      v7 = __swift_project_boxed_opaque_existential_1(v21, v22);
      v8 = *(*(v5 - 8) + 64);
      v9 = MEMORY[0x28223BE20](v7);
      v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11, v9);
      sub_23A936390(v11, v5, v6, v24);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v26 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23A97605C((v13 > 1), v14 + 1, 1);
        v3 = v26;
      }

      *(v3 + 16) = v14 + 1;
      v15 = v3 + 40 * v14;
      v16 = v24[0];
      v17 = v24[1];
      *(v15 + 64) = v25;
      *(v15 + 32) = v16;
      *(v15 + 48) = v17;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v18 = sub_23A9F4FE0(v3);

  return v18;
}

uint64_t type metadata accessor for CapturedRoom.ModelProvider.Error()
{
  result = qword_27DFB16B0;
  if (!qword_27DFB16B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9F5364(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF210, &qword_23AA12EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A9F541C(uint64_t *a1, int a2)
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

uint64_t sub_23A9F5464(uint64_t result, int a2, int a3)
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

uint64_t sub_23A9F54C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A9F5550(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB16A0, &qword_23AA1B8E0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23A9F55DC()
{
  sub_23A930458();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_23A9F5634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23A9F569C()
{
  result = qword_27DFB16D8;
  if (!qword_27DFB16D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB16D8);
  }

  return result;
}

uint64_t sub_23A9F56F0(unint64_t *a1, void (*a2)(uint64_t))
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

int8x8_t sub_23A9F5774(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, double a9, double a10, float32x4_t a11, float32x4_t a12)
{
  v12 = a2;
  v41 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v37 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
  v38 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
  v40 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
  v39 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
  v14 = sub_23A97E68C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, v37, v38, v40, v39, 0, *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions));
  v15 = *&v41;
  if (v16)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  result = vbic_s8(v14, vdup_n_s32(v17));
  v19 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides);
  v20 = 0.0 - (0.5 * *&v41);
  v21 = vabds_f32(*result.i32, v20);
  v22 = 3.4028e38;
  if ((v19 & 1) == 0)
  {
    v21 = 3.4028e38;
  }

  v23 = (0.5 * *&v41) + 0.0;
  v24 = vabds_f32(*result.i32, v23);
  if ((v19 & 2) == 0)
  {
    v24 = 3.4028e38;
  }

  v25 = vmuls_lane_f32(0.5, *&v41, 1);
  v26 = v25 + 0.0;
  v27 = vabds_f32(*&result.i32[1], v25 + 0.0);
  if ((v19 & 8) != 0)
  {
    v22 = v27;
  }

  v28 = 0.0 - v25;
  if ((v19 & 4) != 0)
  {
    v29 = vabds_f32(*&result.i32[1], v28);
    if (v24 >= v21)
    {
      v30 = v21;
    }

    else
    {
      v30 = v24;
    }

    if (v22 < v30)
    {
      v30 = v22;
    }

    if (v29 >= v30)
    {
      v29 = v30;
    }

    goto LABEL_26;
  }

  if (v24 < v21)
  {
    if (v22 >= v24)
    {
      v29 = v24;
      if (v24 > 3.4028e38)
      {
        return result;
      }

      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v22 < v21)
  {
LABEL_23:
    v29 = v22;
    if (v22 > 3.4028e38)
    {
      return result;
    }

    goto LABEL_26;
  }

  v29 = v21;
  if (v21 > 3.4028e38)
  {
    return result;
  }

LABEL_26:
  if (v29 != 3.4028e38)
  {
    if (v29 == v21)
    {
      v31 = v20 + 0.1;
    }

    else
    {
      if (v29 != v24)
      {
        if (v29 == v22)
        {
          v35 = v26 + -0.1;
        }

        else
        {
          v35 = v28 + 0.1;
        }

        v32 = __PAIR64__(LODWORD(v35), result.u32[0]);
        if ((v12 & 1) == 0)
        {
LABEL_33:
          v42 = result;
          v36 = v32;
          v33 = sub_23A97E638(*&result, 0.0, v15);
          v32 = v36;
          v34 = v42;
          if (v33)
          {
            return vaddq_f32(v39, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v34.f32[0]), v38, v34, 1), 0, v40)).u64[0];
          }
        }

LABEL_39:
        v34 = v32;
        return vaddq_f32(v39, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v34.f32[0]), v38, v34, 1), 0, v40)).u64[0];
      }

      v31 = v23 + -0.1;
    }

    v32 = __PAIR64__(result.u32[1], LODWORD(v31));
    if ((v12 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  return result;
}

uint64_t sub_23A9F59B8(uint64_t a1, int a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  *&v79[32] = a5;
  *&v79[48] = a6;
  *v79 = a3;
  *&v79[16] = a4;
  v7 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform);
  v8 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 16);
  v9 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 32);
  v10 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform + 48);
  v11 = vextq_s8(*(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions), *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions), 8uLL).u64[0];
  v12 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v13 = v12;
  v12.i32[0] = v11.i32[0];
  v91 = v12.i64[0];
  HIDWORD(v14) = 0;
  *&v15 = vsubq_f32(0, v8).u64[0];
  v16 = vmuls_lane_f32(0.5, *v13.f32, 1);
  v17 = vmuls_lane_f32(v16, v8, 2);
  v18 = vmul_n_f32(*v8.f32, v16);
  v8.i32[3] = 0;
  v89 = v8;
  v19 = vmuls_lane_f32(0.5 * v13.f32[0], v7, 2);
  *&v20 = vsubq_f32(0, v7).u64[0];
  *v8.f32 = vmul_n_f32(*v7.f32, 0.5 * v13.f32[0]);
  v7.i32[3] = 0;
  v87 = v7;
  *&v14 = vaddq_f32(v9, 0).u64[0];
  *(&v14 + 2) = v9.f32[2] + 0.0;
  *(&v20 + 2) = 0.0 - v7.f32[2];
  HIDWORD(v20) = 0;
  v82 = v20;
  v85 = v14;
  *&v14 = vsub_f32(*&v10, *v8.f32);
  *(&v14 + 2) = *(&v10 + 2) - v19;
  HIDWORD(v14) = 1.0;
  v75 = v14;
  *&v21 = vadd_f32(*&v10, *v8.f32);
  *(&v21 + 2) = *(&v10 + 2) + v19;
  v22 = vzip1_s32(*v13.f32, v11);
  HIDWORD(v21) = 1.0;
  v76 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v78 = v21;
  *(&v15 + 2) = 0.0 - v8.f32[2];
  HIDWORD(v15) = 0;
  v80 = v15;
  *v12.f32 = vadd_f32(*&v10, v18);
  v12.f32[2] = *(&v10 + 2) + v17;
  v12.i32[3] = 1.0;
  v74 = v12;
  *v12.f32 = vsub_f32(*&v10, v18);
  v12.f32[2] = *(&v10 + 2) - v17;
  v12.i32[3] = 1.0;
  v73 = v12;
  v12.f32[0] = vmuls_lane_f32(0.5, v13, 2);
  v23 = -(v9.f32[2] * v12.f32[0]);
  *v9.f32 = vneg_f32(*v9.f32);
  *v12.f32 = vmul_n_f32(*v9.f32, v12.f32[0]);
  v9.f32[2] = -v9.f32[2];
  v9.i32[3] = 0;
  v70 = v9;
  *&v24 = vadd_f32(*&v10, *v12.f32);
  *(&v24 + 2) = *(&v10 + 2) + v23;
  HIDWORD(v24) = 1.0;
  v72 = v24;
  *&v24 = vsub_f32(*&v10, *v12.f32);
  *(&v24 + 2) = *(&v10 + 2) - v23;
  HIDWORD(v24) = 1.0;
  v71 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1718, &qword_23AA1BA20);
  v25 = swift_allocObject();
  v33 = v25;
  v34 = 0;
  *(v25 + 16) = xmmword_23AA12260;
  *(v25 + 32) = v70;
  *(v25 + 48) = v89;
  *(v25 + 64) = v87;
  *(v25 + 80) = v75;
  *(v25 + 96) = 0;
  *(v25 + 104) = v91;
  *(v25 + 112) = v85;
  *(v25 + 128) = v89;
  *(v25 + 144) = v82;
  *(v25 + 160) = v78;
  *(v25 + 176) = 0;
  *(v25 + 184) = v91;
  *(v25 + 192) = v87;
  *(v25 + 208) = v85;
  *(v25 + 224) = v80;
  *(v25 + 240) = v74;
  *(v25 + 256) = 0;
  *(v25 + 264) = v22;
  *(v25 + 272) = v87;
  *(v25 + 288) = v70;
  *(v25 + 304) = v89;
  *(v25 + 320) = v73;
  *(v25 + 336) = 0;
  *(v25 + 344) = v22;
  *(v25 + 352) = v87;
  *(v25 + 368) = v89;
  *(v25 + 384) = v85;
  *(v25 + 400) = v72;
  *(v25 + 416) = 0;
  *(v25 + 424) = v76;
  *(v25 + 432) = v82;
  *(v25 + 448) = v89;
  *(v25 + 464) = v70;
  *(v25 + 480) = v71;
  v35 = a2 ^ 1;
  *(v25 + 496) = 0;
  *(v25 + 504) = v76;
  v36 = MEMORY[0x277D84F90];
  do
  {
    v81 = *(v33 + v34 + 104);
    v83 = *(v33 + v34 + 96);
    v86 = *(v33 + v34 + 32);
    v88 = *(v33 + v34 + 48);
    v90 = *(v33 + v34 + 80);
    v92 = *(v33 + v34 + 64);
    v25 = sub_23A97E68C(v25, v26, v27, v28, v29, v30, v31, v32, *v79, *&v79[16], *&v79[32], *&v79[48], v86, v88, v92, v90, v83, v81);
    if ((v26 & 1) == 0)
    {
      v39 = v25;
      v40 = *&v83 - (0.5 * *&v81);
      v41 = vabds_f32(*&v25, v40);
      v42 = *&v83 + (0.5 * *&v81);
      v43 = vabds_f32(*&v25, v42);
      v44 = vmuls_lane_f32(0.5, v81, 1);
      v45 = *(&v83 + 1) + v44;
      v46 = vabds_f32(*(&v25 + 1), *(&v83 + 1) + v44);
      v47 = *(&v83 + 1) - v44;
      v48 = vabds_f32(*(&v25 + 1), *(&v83 + 1) - v44);
      if (v43 >= v41)
      {
        v49 = v41;
      }

      else
      {
        v49 = v43;
      }

      if (v46 < v49)
      {
        v49 = v46;
      }

      if (v48 >= v49)
      {
        v48 = v49;
      }

      v77 = v25;
      if (v48 == v41)
      {
        *&v39 = v40 + 0.1;
      }

      else if (v48 == v43)
      {
        *&v39 = v42 + -0.1;
      }

      else
      {
        if (v48 == v46)
        {
          v50 = v45 + -0.1;
        }

        else
        {
          v50 = v47 + 0.1;
        }

        *(&v39 + 1) = v50;
      }

      v84 = v39;
      v52 = v42 >= *&v25 && v40 <= *&v25;
      v53 = v35 & v52;
      v55 = *(&v25 + 1) <= v45 && v47 <= *(&v25 + 1);
      if ((v53 & v55) != 0)
      {
        v56 = -1;
      }

      else
      {
        v56 = 0;
      }

      LODWORD(v25) = swift_isUniquelyReferenced_nonNull_native();
      if ((v25 & 1) == 0)
      {
        v25 = sub_23A9388A8(0, *(v36 + 16) + 1, 1, v36);
        v36 = v25;
      }

      v58 = *(v36 + 16);
      v57 = *(v36 + 24);
      v59 = v77;
      v60 = HIDWORD(v78);
      if (v58 >= v57 >> 1)
      {
        v25 = sub_23A9388A8((v57 > 1), v58 + 1, 1, v36);
        v59 = v77;
        v60 = HIDWORD(v78);
        v36 = v25;
      }

      v37 = vbsl_s8(vdup_n_s32(v56), v59, v84);
      v38 = vaddq_f32(v90, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v86, v37.f32[0]), v88, v37, 1), 0, v92));
      v38.i32[3] = v60;
      *(v36 + 16) = v58 + 1;
      *(v36 + 16 * v58 + 32) = v38;
      HIDWORD(v78) = v60;
    }

    v34 += 80;
  }

  while (v34 != 480);

  v93 = __invert_f4(*v79);
  v61 = *(v36 + 16);
  if (v61)
  {
    v62 = 0;
    v63 = -v61;
    v64 = 3.4028e38;
    do
    {
      v65 = v62 + 2;
      while (1)
      {
        v66 = vaddq_f32(v93.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93.columns[0], COERCE_FLOAT(*(v36 + 16 * v65))), v93.columns[1], *(v36 + 16 * v65), 1), v93.columns[2], *(v36 + 16 * v65), 2));
        v67 = sqrtf(vaddv_f32(*&vmulq_f32(v66, v66)));
        if (v67 < v64)
        {
          break;
        }

        ++v65;
        if (v63 + v65 == 2)
        {
        }
      }

      v68 = v63 + v65;
      v62 = v65 - 1;
      v64 = v67;
    }

    while (v68 != 1);
  }
}

uint64_t sub_23A9F5EC8(void *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1728, &unk_23AA1BA38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_23AA0C7C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v44 - v13;
  MEMORY[0x28223BE20](v14);
  v47 = &v44 - v15;
  MEMORY[0x28223BE20](v16);
  v51 = &v44 - v17;
  sub_23AA0067C(v52);
  if (v52[0])
  {
    v18 = 30.0;
  }

  else
  {
    v18 = 0.0;
  }

  sub_23A9FF8B4(v52);
  sub_23A9F7AB4(v52);
  v20 = v19;
  sub_23AA0C934();
  if (v21 != v18)
  {
    sub_23AA0C944();
    sub_23AA0C964();
  }

  sub_23A9F7954(a1, v20);
  v50 = a1;
  v22 = [a1 layer];
  v23 = [v22 sublayers];

  if (v23)
  {
    sub_23A8D6C58(0, &qword_27DFB1720, 0x277CD9ED0);
    v24 = sub_23AA0D2F4();

    v46 = v8;
    v45 = v9;
    v44 = v7;
    if (v24 >> 62)
    {
LABEL_24:
      v25 = sub_23AA0D7F4();
      if (v25)
      {
LABEL_9:
        v26 = 0;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x23EE90360](v26, v24);
          }

          else
          {
            if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_23;
            }

            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

          objc_opt_self();
          v30 = swift_dynamicCastObjCClass();
          if (v30)
          {
            break;
          }

          ++v26;
          if (v29 == v25)
          {
            goto LABEL_25;
          }
        }

        v31 = v30;

        swift_beginAccess();
        if (a2[141])
        {
          v32 = 81;
        }

        else
        {
          v32 = 553;
        }

        [v31 setPixelFormat_];

        goto LABEL_26;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        goto LABEL_9;
      }
    }

LABEL_25:

LABEL_26:
    v8 = v46;
    v9 = v45;
    v7 = v44;
  }

  swift_beginAccess();
  v33 = a2[142];
  sub_23AA0C924();
  swift_beginAccess();
  if (a2[143] == 1)
  {
    v34 = v47;
    sub_23AA0C7B4();
    v35 = sub_23AA0C7D4();
    v36 = v51;
    sub_23A9C3BF4(v51, v34);
    v37 = *(v9 + 8);
    v37(v34, v8);
    v37(v36, v8);
    return v35(v52, 0);
  }

  else
  {
    v39 = v48;
    sub_23AA0C7B4();
    v40 = sub_23AA0C7D4();
    (*(v9 + 16))(v51);
    sub_23A9F7B98();
    v41 = v49;
    sub_23AA0D714();
    if (sub_23AA0D724())
    {
      v42 = *(v9 + 8);
      v42(v41, v8);
      v42(v39, v8);
      v43 = 1;
    }

    else
    {
      sub_23AA0D734();
      (*(v9 + 8))(v39, v8);
      (*(v9 + 32))(v7, v41, v8);
      v43 = 0;
    }

    (*(v9 + 56))(v7, v43, 1, v8);
    sub_23A9F7BF0(v7);
    return v40(v52, 0);
  }
}

void *sub_23A9F643C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(a1 + 182);
  v5 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  *(v2 + v5) = v4;
  v6 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
  v7 = *(v2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (!v7)
  {
    goto LABEL_53;
  }

  *(v7 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = v4;
  result = *(v7 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!result)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  [result setHidden_];
  v9 = *(v2 + v6);
  if (!v9)
  {
    goto LABEL_53;
  }

  result = *(v9 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
  if (!result)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v10 = [result layer];
  v11 = [v10 sublayers];

  if (v11)
  {
    sub_23A8D6C58(0, &qword_27DFB1720, 0x277CD9ED0);
    v12 = sub_23AA0D2F4();

    if (v12 >> 62)
    {
LABEL_23:
      v13 = sub_23AA0D7F4();
      if (v13)
      {
LABEL_8:
        v14 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x23EE90360](v14, v12);
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            break;
          }

          ++v14;
          if (v17 == v13)
          {
            goto LABEL_24;
          }
        }

        v19 = v18;

        swift_beginAccess();
        if (*(a1 + 141))
        {
          v20 = 81;
        }

        else
        {
          v20 = 553;
        }

        [v19 setPixelFormat_];

        goto LABEL_25;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_8;
      }
    }

LABEL_24:
  }

LABEL_25:
  v21 = *(v2 + v6);
  if (!v21)
  {
    goto LABEL_53;
  }

  swift_beginAccess();
  v22 = *(a1 + 183);
  v23 = v21;
  sub_23A9E7A9C(v22);

  v24 = *(v2 + v6);
  if (!v24)
  {
    goto LABEL_53;
  }

  result = swift_beginAccess();
  v25 = *&v24[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse];
  if (!v25)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  *(v25 + qword_27DFAE618) = *(a1 + 184);
  v26 = v24;

  sub_23A8C7878();

  v27 = *(v2 + v6);
  if (v27)
  {
    swift_beginAccess();
    v28 = *(a1 + 188);
    v29 = v27;
    sub_23A9E7BC0(v28);

    v27 = *(v2 + v6);
    if (v27)
    {
      swift_beginAccess();
      v30 = *(a1 + 192);
      v31 = v27;
      sub_23A9E7C08(v30);

      v32 = *(v2 + v6);
      if (!v32)
      {
        goto LABEL_53;
      }

      result = swift_beginAccess();
      if (!*&v32[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_ambientLight])
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v33 = *(a1 + 196);
      v34 = v32;

      sub_23AA0C1B4();
      v35 = sub_23AA0CD94();
      sub_23AA0C654();
      v35(v75, 0);

      v36 = *(v2 + v6);
      if (!v36)
      {
        goto LABEL_53;
      }

      result = swift_beginAccess();
      v37 = *(a1 + 208);
      *&v36[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLightDirection] = v37;
      if (!*&v36[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight])
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v73 = *&v37;
      __sincosf_stret(vmuls_lane_f32(0.5, *&v37, 1));
      __sincosf_stret(0.5 * v73);
      sub_23AA0C534();
      v38 = v36;

      sub_23AA0C254();

      v39 = *(v2 + v6);
      if (!v39)
      {
        goto LABEL_53;
      }

      v40 = v6;
      result = swift_beginAccess();
      if (!*&v39[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight])
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v41 = *(a1 + 224);
      v42 = v39;

      v43 = sub_23AA0C614();
      sub_23AA0C6C4();
      v43(v75, 0);

      v44 = *(v2 + v6);
      if (!v44)
      {
        goto LABEL_53;
      }

      result = swift_beginAccess();
      if (!*&v44[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v45 = *(a1 + 232);
      v46 = v44;

      v47.n128_u64[0] = v45;
      sub_23A8C7E78(v47);

      v27 = *(v2 + v6);
      if (v27)
      {
        result = swift_beginAccess();
        if (!*(v27 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight))
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v48 = *(a1 + 248);
        v49 = v27;

        v50 = sub_23AA0C624();
        v52 = v51;
        v53 = sub_23AA0C6B4();
        v74 = *(*(v53 - 8) + 48);
        if (!v74(v52, 1, v53))
        {
          sub_23AA0C6A4();
        }

        v50(v75, 0);

        v6 = v40;
        v54 = *(v2 + v40);
        if (!v54)
        {
          goto LABEL_53;
        }

        result = swift_beginAccess();
        if (!*&v54[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
        {
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v55 = *(a1 + 240);
        v56 = v54;

        v57.n128_u64[0] = v55;
        sub_23A8C8364(v57);

        v27 = *(v2 + v40);
        if (v27)
        {
          result = swift_beginAccess();
          if (!*(v27 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_directionalLight))
          {
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          v58 = *(a1 + 252);
          v59 = v27;

          v60 = sub_23AA0C624();
          if (!v74(v61, 1, v53))
          {
            sub_23AA0C694();
          }

          v60(v75, 0);

          v6 = v40;
          v62 = *(v2 + v40);
          if (v62)
          {
            result = swift_beginAccess();
            v63 = *&v62[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse];
            if (!v63)
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

            *(v63 + qword_27DFAE608) = *(a1 + 181);
            v64 = v62;

            sub_23A8C6BA0();

            v65 = *(v2 + v40);
            if (v65)
            {
              if (!*(v65 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
              {
LABEL_84:
                __break(1u);
                return result;
              }

              v27 = *(sub_23A8C6298() + 16);

              goto LABEL_54;
            }
          }

LABEL_53:
          v27 = 0;
        }
      }
    }
  }

LABEL_54:
  swift_beginAccess();
  if (*(a1 + 180) == 1)
  {
    swift_beginAccess();
    v66 = v27 & 0xFFFFFFFFFFFFFFF9 | 2;
    if ((v27 & 4) == 0)
    {
      v66 = v27 | 2;
    }

    v67 = v27 | 6;
    if ((v27 & 4) != 0)
    {
      v67 = v27 | 2;
    }

    if (*(a1 + 181) == 1)
    {
      v68 = v67;
    }

    else
    {
      v68 = v66;
    }
  }

  else
  {
    v68 = v27 & 0xFFFFFFFFFFFFFFF9;
  }

  result = swift_beginAccess();
  if (*(a1 + 181) == 1)
  {
    v69 = (v68 & 0xFFFFFFFFFFFFFFFELL) + 1;
  }

  else
  {
    v69 = v68 & 0xFFFFFFFFFFFFFFFELL;
  }

  v70 = *(v2 + v6);
  if (v70)
  {
    if (*(v70 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
    {
      v71 = *(v70 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse);
      v72 = sub_23A8C6298();
      *(v72 + 16) = v69;

      sub_23A947F18((v68 & 2) != 0);
      if ((*(v72 + 16) & 1) == 0)
      {
        sub_23A94BEE4();
        sub_23A8DFFB8();
      }
    }

    goto LABEL_73;
  }

  return result;
}

uint64_t sub_23A9F6DAC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager);
  if (v2)
  {
    v3 = result;
    v4 = *(*(v2 + OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager) + 24);
    v5 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);

    if (v5)
    {
      v6 = v5;
      [v6 contentScaleFactor];
      v8 = v7;
      *(v4 + 140) = v8;
      swift_beginAccess();
      *(v4 + 156) = *(v3 + 176) * v8;
      sub_23A8E02B4();
    }

    swift_beginAccess();
    v9 = *(v3 + 181);
    sub_23A9BCBEC(&v9);
  }

  return result;
}

void *sub_23A9F6ECC(_BYTE *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[170] == 1)
  {
    result = swift_beginAccess();
    if (!*(v2 + v4))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v6 = sub_23A9CCB9C();

    v7 = *(v6 + 17) | 3;
    goto LABEL_7;
  }

  result = swift_beginAccess();
  if (!*(v2 + v4))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v6 = sub_23A9CCB9C();

  if ((*(v6 + 17) & 3) != 0)
  {
    v7 = *(v6 + 17) & 0xFC;
LABEL_7:
    *(v6 + 17) = v7;
  }

  swift_beginAccess();
  v8 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[172] == 1)
  {
    result = swift_beginAccess();
    if (!*(v2 + v8))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v9 = sub_23A9CCB9C();

    v10 = *(v9 + 17) | 0x38;
    goto LABEL_14;
  }

  result = swift_beginAccess();
  if (!*(v2 + v8))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v9 = sub_23A9CCB9C();

  if ((*(v9 + 17) & 0x38) != 0)
  {
    v10 = *(v9 + 17) & 0xC7;
LABEL_14:
    *(v9 + 17) = v10;
  }

  swift_beginAccess();
  v11 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[171] == 1)
  {
    result = swift_beginAccess();
    if (!*(v2 + v11))
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v12 = sub_23A9CCB9C();

    v13 = *(v12 + 17) | 4;
    goto LABEL_21;
  }

  result = swift_beginAccess();
  if (!*(v2 + v11))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v12 = sub_23A9CCB9C();

  if ((*(v12 + 17) & 4) != 0)
  {
    v13 = *(v12 + 17) & 0xFB;
LABEL_21:
    *(v12 + 17) = v13;
  }

  swift_beginAccess();
  v14 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[174] == 1)
  {
    result = swift_beginAccess();
    if (!*(v2 + v14))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v15 = sub_23A9CCB9C();

    v16 = *(v15 + 17) | 2;
    goto LABEL_28;
  }

  result = swift_beginAccess();
  if (!*(v2 + v14))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v15 = sub_23A9CCB9C();

  if ((*(v15 + 17) & 2) != 0)
  {
    v16 = *(v15 + 17) & 0xFD;
LABEL_28:
    *(v15 + 17) = v16;
  }

  swift_beginAccess();
  v17 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  if (a1[162] == 1)
  {
    result = swift_beginAccess();
    v18 = *(v2 + v17);
    if (!v18)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    result = *(v18 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
    if (!result)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v19 = 24;
    goto LABEL_36;
  }

  result = swift_beginAccess();
  v20 = *(v2 + v17);
  if (!v20)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  result = *(v20 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_arWorldTrackingConfiguration);
  if (result)
  {
    v19 = 8;
LABEL_36:
    [result setFrameSemantics_];
    v21 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
    result = swift_beginAccess();
    if (*(v2 + v21))
    {
      v22 = *(v2 + v21);

      v23 = sub_23A9CCB9C();

      swift_beginAccess();
      *(v23 + 16) = a1[163] == 1;

      if (qword_27DFAE530 != -1)
      {
        swift_once();
      }

      v24 = qword_27DFC0BB0;
      v25 = a1[163] == 2;
      *(qword_27DFC0BB0 + 16) = v25;
      if (v25)
      {
        v26 = &off_284D86F40;
        if (!*(v2 + v21))
        {
          v26 = 0;
        }

        *(v24 + 32) = v26;
        swift_unknownObjectWeakAssign();
      }

      if (qword_27DFAE498 != -1)
      {
        swift_once();
      }

      v27 = qword_27DFC07E8;
      swift_beginAccess();
      *(v27 + 32) = a1[166];
      if (qword_27DFAE410 != -1)
      {
        swift_once();
      }

      v28 = qword_27DFC0670;
      result = swift_beginAccess();
      *(v28 + 32) = a1[167];
      v29 = *(v2 + v21);
      if (v29)
      {
        swift_beginAccess();
        *(v29 + OBJC_IVAR____TtC8RoomPlan18RoomCaptureSession_enableLiveDump) = a1[168];
        swift_beginAccess();
        v30 = a1[169];
        result = swift_beginAccess();
        *(v29 + 64) = v30;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_63:
  __break(1u);
  return result;
}

void sub_23A9F745C(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v2)
  {
    v4 = qword_27DFAE518;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = off_27DFB17B0;
    swift_beginAccess();
    v7 = v6[38];
    swift_beginAccess();
    v8 = *(v6 + 156);
    sub_23AA0067C(&v13);
    v9 = v13;
    sub_23AA0C934();
    if (v7 <= a1)
    {
      v11 = !v9;
    }

    else
    {
      v11 = v8 == 0;
    }

    if (v11)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 30.0;
    }

    if (v10 != v12)
    {
      sub_23AA0C944();
      sub_23AA0C964();
    }
  }
}

void sub_23A9F7570(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v2)
  {
    v4 = qword_27DFAE518;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = off_27DFB17B0;
    swift_beginAccess();
    v7 = v6[37];
    swift_beginAccess();
    v18 = *(v6 + 158);
    sub_23A9F7AB4(&v18);
    v9 = v8;
    sub_23A9FF8B4(&v18);
    sub_23A9F7AB4(&v18);
    v11 = v10;
    [v5 contentScaleFactor];
    v13 = v12;
    v14 = [objc_opt_self() mainScreen];
    [v14 scale];
    v16 = v15;

    v17 = v13 / v16;
    if (v7 <= a1)
    {
      if (v17 != v9)
      {
        goto LABEL_8;
      }
    }

    else if (v17 != v11)
    {
      v9 = v11;
LABEL_8:
      sub_23A9F7954(v5, v9);
    }
  }
}

uint64_t sub_23A9F76E8()
{
  result = sub_23A9F7708();
  dword_27DFC0B48 = result;
  return result;
}

uint64_t sub_23A9F7708()
{
  v0 = sub_23AA0CE84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A8D6C58(0, &qword_27DFB0628, 0x277CE53B0);
  v5 = [swift_getObjCClassFromMetadata() configurableCaptureDeviceForPrimaryCamera];
  if (!v5)
  {
    return 60;
  }

  v6 = v5;
  [v5 activeVideoMinFrameDuration];
  v7 = v14;
  [v6 activeVideoMinFrameDuration];
  v8 = v14;
  if (v14 == v7)
  {
  }

  else
  {
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v10 = sub_23AA0CE54();
    v11 = sub_23AA0D494();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23A8B4000, v10, v11, "Varying framerate, taking max framerate as native value", v12, 2u);
      MEMORY[0x23EE91710](v12, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  if (v7 <= v8)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

id sub_23A9F7954(void *a1, double a2)
{
  [a1 contentScaleFactor];
  v6 = v5;
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  [a1 setContentScaleFactor_];
  result = [a1 contentScaleFactor];
  if (v11 != v6)
  {
    v12 = *(v2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager);
    if (v12)
    {
      v13 = *(*(v12 + OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager) + 24);

      [a1 contentScaleFactor];
      *&v14 = v14;
      *(v13 + 140) = LODWORD(v14);
      if (qword_27DFAE518 != -1)
      {
        swift_once();
      }

      v15 = off_27DFB17B0;
      swift_beginAccess();
      *(v13 + 156) = v15[44] * *(v13 + 140);
      sub_23A8E02B4();
    }
  }

  return result;
}

void sub_23A9F7AB4(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  CGRectGetWidth(v3);
  [v2 bounds];
  CGRectGetHeight(v4);
  [v2 scale];
}

unint64_t sub_23A9F7B98()
{
  result = qword_27DFB1118;
  if (!qword_27DFB1118)
  {
    sub_23AA0C7C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1118);
  }

  return result;
}

uint64_t sub_23A9F7BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1728, &unk_23AA1BA38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FloorEntity()
{
  result = qword_27DFB1730;
  if (!qword_27DFB1730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PlaceholderEntity()
{
  result = qword_27DFB1740;
  if (!qword_27DFB1740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A9F7D38()
{
  result = sub_23AA0C0E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23A9F7E44()
{
  v1 = v0;
  v2 = sub_23AA0C184();
  v70 = *(v2 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v67 = sub_23AA0CA04();
  *&v66 = *(v67 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1750, &unk_23AA1BB00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - v13;
  v15 = sub_23AA0C5F4();
  *&v68 = *(v15 - 8);
  v16 = *(v68 + 64);
  MEMORY[0x28223BE20](v15);
  *&v64 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  *&v65 = &v61 - v19;
  v20 = sub_23AA0C0E4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v25 = qword_27DFC04B0;
  (*(v21 + 16))(v24, v1 + qword_27DFC0B60, v20);
  swift_beginAccess();
  v26 = *(v25 + 24);
  if (!*(v26 + 16))
  {
    return (*(v21 + 8))(v24, v20);
  }

  v27 = sub_23A9EDD28(v24);
  if ((v28 & 1) == 0)
  {

    return (*(v21 + 8))(v24, v20);
  }

  v62 = v11;
  *&v63 = v2;
  v29 = *(*(v26 + 56) + 8 * v27);
  v30 = *(v21 + 8);

  v30(v24, v20);
  v31 = v1;

  v32 = *(v29 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions);
  v33 = qword_27DFC0B70;
  v34 = vmovn_s32(vceqq_f32(v32, *(v1 + qword_27DFC0B70)));
  if ((v34.i8[0] & 1) == 0 || (v34.i16[1] & v34.i16[2] & 1) == 0)
  {
    *(v1 + qword_27DFC0B70) = v32;
    sub_23AA0C9C4();
    sub_23AA0CA14();
    (*(v66 + 8))(v7, v67);
    v35 = v68;
    if ((*(v68 + 48))(v14, 1, v15) == 1)
    {
      v36 = sub_23A9F86E4(v14);
    }

    else
    {
      v38 = *(v35 + 32);
      v39 = v64;
      v38(v64, v14, v15);
      v40 = v65;
      v38(v65, v39, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_23AA11BB0;
      sub_23AA0C414();
      *(v41 + 32) = MEMORY[0x23EE8EEA0](*(v31 + v33));
      sub_23AA0C5E4();
      v42 = v62;
      (*(v35 + 16))(v62, v40, v15);
      (*(v35 + 56))(v42, 0, 1, v15);
      v43 = sub_23AA0C9B4();
      sub_23AA0CA24();
      v43(v71, 0);
      v36 = (*(v35 + 8))(v40, v15);
    }

    v44 = v63;
    if (*(v31 + qword_27DFC0B68))
    {
      v45 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
    }

    else
    {
      v45 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
    }

    v46 = *(v29 + *v45);
    v47 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
    if (!*(v31 + qword_27DFC0B68))
    {
      v47 = &OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
    }

    *&v48 = MEMORY[0x23EE8FF80](v36, v46, *(v29 + *v47), xmmword_23AA11AF0);
    v66 = v49;
    v67 = v48;
    v65 = v50;
    v68 = v51;
    type metadata accessor for PlaceholderEntity();
    v52 = sub_23AA0C2A4();
    v54 = v53;
    sub_23AA0DCD4();
    v64 = v55;
    sub_23AA0D4D4();
    v63 = v56;
    sub_23AA0D4C4();
    *v54 = v57;
    v58 = v64;
    v54[1] = v63;
    v54[2] = v58;
    v52(v71, 0);
    v59 = v69;
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*(v70 + 8))(v59, v44);
    REMeshComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      v60 = *(v31 + v33);
      REMeshComponentSetBoundsMargin();
    }
  }
}

uint64_t sub_23A9F8558()
{
  v1 = qword_27DFC0B60;
  v2 = sub_23AA0C0E4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_23A9F85C0()
{
  v0 = sub_23AA0CAC4();
  v1 = qword_27DFC0B60;
  v2 = sub_23AA0C0E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23A9F866C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27DFC0B60;
  v4 = sub_23AA0C0E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_23A9F86E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1750, &unk_23AA1BB00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A9F874C(uint64_t a1, int a2)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB06C0, &unk_23AA1BB10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28[-v6];
  v8 = sub_23AA0C4C4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_23AA0C5C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB1750, &unk_23AA1BB00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28[-v17];
  v19 = (v2 + qword_27DFC0B70);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v21 = qword_27DFC0B60;
  v22 = sub_23AA0C0E4();
  (*(*(v22 - 8) + 16))(v2 + v21, a1 + v20, v22);
  *(v2 + qword_27DFC0B68) = v29 & 1;
  v23 = sub_23AA0C1A4();
  (*(v11 + 104))(v14, *MEMORY[0x277CDADC8], v10);

  sub_23AA0C4B4();
  sub_23AA0C5D4();
  v24 = sub_23AA0C5F4();
  (*(*(v24 - 8) + 56))(v18, 0, 1, v24);
  v25 = sub_23AA0C9B4();
  sub_23AA0CA24();
  v25(v30, 0);
  sub_23AA0C3F4();
  sub_23AA0C3D4();
  sub_23AA0C474();
  v26 = sub_23AA0C4A4();
  (*(*(v26 - 8) + 56))(v7, 0, 1, v26);
  type metadata accessor for PlaceholderEntity();
  sub_23A9F8AD8();
  sub_23AA0CAF4();

  return v23;
}

unint64_t sub_23A9F8AD8()
{
  result = qword_27DFB1758;
  if (!qword_27DFB1758)
  {
    type metadata accessor for PlaceholderEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB1758);
  }

  return result;
}

uint64_t sub_23A9F8B30(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v172[3] = *MEMORY[0x277D85DE8];
  swift_unknownObjectWeakInit();
  __asm { FMOV            V0.2S, #16.0 }

  *(v4 + 56) = _D0;
  type metadata accessor for GlyphState();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 32) = 1;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 96) = 0u;
  *(v15 + 112) = 0u;
  *(v15 + 128) = 0u;
  *(v4 + 64) = v15;
  type metadata accessor for AnimTime();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23AA12250;
  *(v16 + 32) = 0;
  *(v4 + 72) = v16;
  *(v4 + 80) = 1024416809;
  *(v4 + 88) = sub_23A8EC414();
  *(v4 + 96) = v17;
  *(v4 + 104) = v18;
  *(v4 + 112) = sub_23A8EC5B4();
  v154 = (v4 + 112);
  *(v4 + 120) = v19;
  *(v4 + 128) = v20;
  *(v4 + 136) = sub_23A8EC5B4();
  v21 = v4 + 136;
  *(v4 + 144) = v22;
  *(v4 + 152) = v23;
  type metadata accessor for StateSpring();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v21 + 24) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v21 + 32) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v21 + 40) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v21 + 120) = 0u;
  *(v21 + 104) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0;
  v25 = *MEMORY[0x277D860B8];
  v26 = *(MEMORY[0x277D860B8] + 16);
  v27 = *(MEMORY[0x277D860B8] + 32);
  v28 = *(MEMORY[0x277D860B8] + 48);
  *(v21 + 136) = *MEMORY[0x277D860B8];
  *(v21 + 152) = v26;
  *(v21 + 168) = v27;
  *(v21 + 184) = v28;
  *(v21 + 200) = v25;
  *(v21 + 216) = v26;
  *(v21 + 232) = v27;
  *(v21 + 248) = v28;
  *(v21 + 264) = v25;
  *(v21 + 280) = v26;
  *(v21 + 296) = v27;
  *(v21 + 312) = v28;
  *(v21 + 328) = v25;
  *(v21 + 344) = v26;
  *(v21 + 360) = v27;
  *(v21 + 376) = v28;
  type metadata accessor for DeviceController();
  *(v21 + 416) = 0;
  *(v21 + 424) = 0;
  *(v21 + 408) = 0;
  swift_allocObject();
  sub_23A9509B0();
  *(v21 + 432) = v29;
  *(v21 + 440) = 0;
  *(v21 + 444) = 1;
  *(v21 + 448) = 0xBFF0000000000000;
  *(v21 + 456) = 0xBFF0000000000000;
  *(v21 - 120) = a2;
  *(v21 - 112) = a3;
  *(v21 - 104) = a4;
  swift_unknownObjectWeakAssign();
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  swift_unknownObjectRetain();
  *(v21 - 96) = sub_23A93C058();
  type metadata accessor for DotsRenderer();
  swift_allocObject();
  v30 = swift_unknownObjectRetain();
  v168 = a2;
  v156 = a3;
  v31 = sub_23A999498(v30, a3);
  if (v170)
  {

    v31 = 0;
  }

  v32 = *(v5 + 560);
  *(v5 + 560) = v31;

  [a1 addSublayer_];
  [a1 addSublayer_];
  [a1 addSublayer_];
  [a1 setAllowsGroupBlending_];
  v33 = *(v5 + 40);
  swift_unknownObjectRetain();
  v34 = sub_23AA0D104();
  v35 = [v33 newFunctionWithName_];

  v169 = v35;
  if (!v35)
  {
    goto LABEL_74;
  }

  swift_unknownObjectRelease();
  v36 = *(v5 + 40);
  swift_unknownObjectRetain();
  v37 = sub_23AA0D104();
  v38 = [v36 newFunctionWithName_];

  v167 = v38;
  if (!v38)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  swift_unknownObjectRelease();
  v39 = *(v5 + 40);
  swift_unknownObjectRetain();
  v40 = sub_23AA0D104();
  v41 = [v39 newFunctionWithName_];

  v171 = v41;
  if (!v41)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  swift_unknownObjectRelease();
  v42 = [objc_allocWithZone(MEMORY[0x277CD7090]) init];
  v43 = [v42 attributes];
  v44 = [v43 objectAtIndexedSubscript_];

  if (!v44)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  [v44 setFormat_];

  v45 = [v42 attributes];
  v46 = [v45 objectAtIndexedSubscript_];

  if (!v46)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  [v46 setOffset_];

  v47 = [v42 attributes];
  v48 = [v47 objectAtIndexedSubscript_];

  if (!v48)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  [v48 setBufferIndex_];

  v49 = [v42 attributes];
  v50 = [v49 objectAtIndexedSubscript_];

  if (!v50)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  [v50 setFormat_];

  v51 = [v42 attributes];
  v52 = [v51 objectAtIndexedSubscript_];

  if (!v52)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  [v52 setOffset_];

  v53 = [v42 attributes];
  v54 = [v53 objectAtIndexedSubscript_];

  if (!v54)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  [v54 setBufferIndex_];

  v55 = [v42 layouts];
  v56 = [v55 objectAtIndexedSubscript_];

  if (!v56)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v56 setStepFunction_];

  v57 = [v42 layouts];
  v58 = [v57 objectAtIndexedSubscript_];

  if (!v58)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  [v58 setStepRate_];

  v59 = [v42 layouts];
  v60 = [v59 objectAtIndexedSubscript_];

  if (!v60)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  [v60 setStride_];

  v61 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v61 setVertexDescriptor_];
  [v61 setTessellationFactorScaleEnabled_];
  [v61 setTessellationFactorFormat_];
  [v61 setTessellationControlPointIndexType_];
  [v61 setTessellationFactorStepFunction_];
  [v61 setTessellationOutputWindingOrder_];
  [v61 setTessellationPartitionMode_];
  [v61 setMaxTessellationFactor_];
  v62 = v167;
  [v61 setVertexFunction_];
  [v61 setFragmentFunction_];
  v63 = [v61 colorAttachments];
  v64 = [v63 objectAtIndexedSubscript_];

  if (!v64)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  [v64 setBlendingEnabled_];

  v65 = [v61 colorAttachments];
  v66 = [v65 objectAtIndexedSubscript_];

  if (!v66)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  [v66 setRgbBlendOperation_];

  v67 = [v61 colorAttachments];
  v68 = [v67 objectAtIndexedSubscript_];

  if (!v68)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  [v68 setAlphaBlendOperation_];

  v69 = [v61 colorAttachments];
  v70 = [v69 objectAtIndexedSubscript_];

  if (!v70)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v70 setSourceRGBBlendFactor_];

  v71 = [v61 colorAttachments];
  v72 = [v71 objectAtIndexedSubscript_];

  if (!v72)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  [v72 setSourceAlphaBlendFactor_];

  v73 = [v61 colorAttachments];
  v74 = [v73 objectAtIndexedSubscript_];

  if (!v74)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  [v74 setDestinationRGBBlendFactor_];

  v75 = [v61 colorAttachments];
  v76 = [v75 objectAtIndexedSubscript_];

  if (!v76)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
  }

  [v76 setDestinationAlphaBlendFactor_];

  v77 = [v61 colorAttachments];
  v78 = [v77 objectAtIndexedSubscript_];

  if (!v78)
  {
    goto LABEL_93;
  }

  [v78 setPixelFormat_];

  [v61 setRasterSampleCount_];
  v172[0] = 0;
  v79 = [v168 newRenderPipelineStateWithDescriptor:v61 error:v172];
  v80 = v79;
  v81 = v172[0];
  if (!v79 || (*(v5 + 536) = v79, v172[0] = 0, v82 = v81, v83 = [v168 newComputePipelineStateWithFunction:v169 error:v172], v81 = v172[0], !v83))
  {
    v113 = v81;
    sub_23AA0BE74();

    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_willThrow();
    swift_unknownObjectRelease();

    v114 = *(v5 + 16);
    swift_unknownObjectRelease();
    v115 = *(v5 + 40);
    swift_unknownObjectRelease();
    MEMORY[0x23EE917F0](v5 + 48);
    v116 = *(v5 + 64);

    v117 = *(v5 + 72);

    v118 = *(v5 + 88);

    v119 = *(v5 + 112);

    v120 = *(v5 + 136);

    if (v80)
    {
      v121 = *(v5 + 536);
      swift_unknownObjectRelease();
    }

    v122 = *(v5 + 544);
    swift_unknownObjectRelease();
    v123 = *(v5 + 552);

    v124 = *(v5 + 560);

    v125 = *(v5 + 568);

    type metadata accessor for GlyphRenderer();
    swift_deallocPartialClassInstance();
    goto LABEL_64;
  }

  *(v5 + 528) = v83;
  type metadata accessor for MetalSplineData();
  swift_allocObject();
  swift_unknownObjectRetain();
  v84 = v81;
  sub_23A9E5BC8(v168);
  v86 = v85;
  v87 = *(v5 + 552);
  *(v5 + 552) = v85;

  v89 = *(v5 + 552);
  if (!v89)
  {
    __break(1u);
    goto LABEL_95;
  }

  v90 = *(v89 + 72);
  if (!v90)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  result = swift_beginAccess();
  v91 = *(v90 + 16);
  if (*(v91 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_66;
  }

  v92 = *(v86 + 16);
  if (v92)
  {
    v93 = *(v91 + 48);

    v94 = [swift_unknownObjectRetain() contents];
    v95 = v92;
    v96 = *(v93 + 16);
    if (v96)
    {
      v97 = (v93 + 48);
      v98 = v94 + 16;
      do
      {
        *(v98 - 1) = *(v97 - 1);
        v99 = *v97;
        v97 += 8;
        *v98 = v99;
        v98 += 8;
        --v96;
      }

      while (v96);
    }

    v100 = *(v5 + 64);
    v101.n128_f64[0] = sub_23A9E707C();
    v157 = v102;
    v162 = v101;
    swift_beginAccess();
    sub_23A8EC2A8(v162, v157);
    swift_endAccess();
    swift_beginAccess();
    v103 = *(v5 + 96);
    v104 = *(v5 + 104);
    sub_23A8EC148(*(v5 + 88));
    v158 = v106;
    v163 = v105;
    swift_endAccess();
    swift_beginAccess();
    sub_23A8EC13C(v163, v158);
    swift_endAccess();
    swift_beginAccess();
    v107 = *(v5 + 96);
    v108 = *(v5 + 104);
    sub_23A8EC148(*(v5 + 88));
    v159 = v110;
    v164 = v109;
    swift_endAccess();
    *(v5 + 192) = v164;
    *(v5 + 208) = v159;
    swift_beginAccess();
    *(v5 + 120) = 0x3FE6666666666666;
    sub_23A8EBE84();
    if (*(*(v5 + 64) + 32) - 1 >= 2)
    {
      if (*(*(v5 + 64) + 32))
      {
        v111 = xmmword_23AA1B400;
        v126 = 0x3FD3333333333333;
      }

      else
      {
        v111 = xmmword_23AA1B3F0;
        v126 = 0x3FC3333333333333;
      }

      _Q0 = vdupq_n_s64(v126);
    }

    else
    {
      v111 = xmmword_23AA10F20;
      __asm { FMOV            V0.2D, #1.0 }
    }

    sub_23A8EBD60(_Q0, v111);
    swift_endAccess();
    swift_beginAccess();
    v86 = *v154;
    v62 = *v154 & 0xC000000000000001;
    if (!v62)
    {
      if (!*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_68;
      }

      v127 = *(v86 + 32);
LABEL_44:
      v128 = v127;
      v92 = &off_278B65000;
      [v127 target];
      v165 = v129;

      if (v62)
      {
        v130 = MEMORY[0x23EE90360](1, v86);
      }

      else
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v130 = *(v86 + 40);
      }

      v131 = v130;
      [v130 target];
      v160 = v132;

      if (v62)
      {
        v133 = MEMORY[0x23EE90360](2, v86);
      }

      else
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v133 = *(v86 + 48);
      }

      v134 = v133;
      [v133 target];
      v153 = v135;
      swift_endAccess();

      swift_beginAccess();
      v136.n128_u64[0] = v165;
      v136.n128_u64[1] = v160;
      sub_23A8EBD54(v136, v153);
      swift_endAccess();
      swift_beginAccess();
      *(v5 + 144) = 0x3FE6666666666666;
      sub_23A8EBE84();
      v137.i32[0] = 2;
      v138.i32[0] = *(*(v5 + 64) + 32) - 1;
      sub_23A8EBD60(vandq_s8(xmmword_23AA10F30, vdupq_lane_s32(*&vcgtq_u32(v137, v138), 0)), 0);
      swift_endAccess();
      swift_beginAccess();
      v86 = *(v5 + 136);
      v62 = v86 & 0xC000000000000001;
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v139 = *(v86 + 32);
LABEL_55:
          v140 = v139;
          [v139 v92[450]];
          v166 = v141;

          if (v62)
          {
            v142 = MEMORY[0x23EE90360](1, v86);
LABEL_59:
            v143 = v142;
            [v142 v92[450]];
            v161 = v144;

            if (v62)
            {
              v145 = MEMORY[0x23EE90360](2, v86);
LABEL_63:
              v146 = v145;
              [v145 v92[450]];
              v155 = v147;
              swift_endAccess();

              swift_beginAccess();
              v148.n128_u64[0] = v166;
              v148.n128_u64[1] = v161;
              sub_23A8EBD54(v148, v155);
              swift_endAccess();
              v149 = *(v5 + 160);
              [v149 parameters];
              [v149 setParameters_];

              [*(v5 + 160) setTarget_];
              [*(v5 + 160) setValue_];
              v150 = *(v5 + 168);
              [v150 parameters];
              [v150 setParameters_];

              [*(v5 + 168) setTarget_];
              [*(v5 + 168) setValue_];
              [*(v5 + 176) setTarget_];
              v151 = *(v5 + 176);
              [v151 setValue_];

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              *(*(v5 + 64) + 24) = &off_284D87AD8;
              swift_unknownObjectWeakAssign();
LABEL_64:
              v152 = *MEMORY[0x277D85DE8];
              return v5;
            }

            if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
            {
              v145 = *(v86 + 48);
              goto LABEL_63;
            }

            goto LABEL_73;
          }

          if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v142 = *(v86 + 40);
            goto LABEL_59;
          }

LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_68:
      v139 = MEMORY[0x23EE90360](0, v86);
      goto LABEL_55;
    }

LABEL_66:
    v127 = MEMORY[0x23EE90360](0, v86);
    goto LABEL_44;
  }

LABEL_96:
  __break(1u);
  return result;
}
uint64_t sub_1B99EC640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B99EC6B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1B99EC728(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1B99EC770(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t objectdestroy_44Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  if (*(v1 + 32))
  {
    v5 = *(v1 + 40);
  }

  sub_1B99CA900(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  if (*(v1 + 72) >= 2uLL)
  {
    v6 = *(v1 + 80);
  }

  v7 = *(v1 + 96);

  v8 = *(v1 + 112);

  v9 = *(v1 + 128);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

id sub_1B99EC984@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

double sub_1B99EC9EC@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  return sub_1B99E8184(v1 + 16, a1);
}

uint64_t objectdestroy_147Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t objectdestroy_135Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B99ECB5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void RetryScheduler.schedule<A>(_:shouldRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 + 24);
  v12 = v9 + *v9;
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v8 + 16) = v11;
  *v11 = v8;
  v11[1] = sub_1B99A3FAC;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1B99ECDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B99A3FAC;

  return RetryScheduler.schedule<A>(_:)(a1, a2, a3, a5, a4, a6);
}

uint64_t RetryScheduler.schedule<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B99A3FAC;

  return (v17)(a1, a2, a3, 0, 0, a5, a4, a6);
}

uint64_t dispatch thunk of RetryScheduler.schedule<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B99A3FAC;

  return v17(a1, a2, a3, a4, a5, a6);
}

void sub_1B99ED13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B99A3FAC;

  RetryScheduler.schedule<A>(_:shouldRetry:)(a1, a2, a3, a4, a5, a7, a6, a8);
}

uint64_t dispatch thunk of RetryScheduler.schedule<A>(_:shouldRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1B99A3FAC;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1B99ED390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1B99A3EB8;

  RetryScheduler.schedule<A>(_:shouldRetry:)(a1, a2, a3, a4, a5, a7, a6, a8);
}

uint64_t dispatch thunk of RetryScheduler.schedule<A>(_:shouldRetry:willRetry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 24);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_1B99A3EB8;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of SchedulerDelay.delay(nanoseconds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B99A3FAC;

  return v11(a1, a2, a3);
}

Swift::Void __swiftcall OSActivity.close()()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
}

uint64_t sub_1B99ED764()
{
  qword_1ED99E0E0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t OSActivity.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t AnyJSONValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F4A64();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v6 = sub_1B99F4754();
    *(&v11 + 1) = MEMORY[0x1E69E6530];
    v12 = &protocol witness table for Int;
    *&v10 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    v7 = v11;
    *a2 = v10;
    *(a2 + 16) = v7;
    *(a2 + 32) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B99EDCA0()
{
  result = qword_1EBBDD6A0;
  if (!qword_1EBBDD6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD6A0);
  }

  return result;
}

unint64_t sub_1B99EDCF4()
{
  result = qword_1EBBDD6B0;
  if (!qword_1EBBDD6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD6A8, &qword_1B99F9920);
    sub_1B99EDC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD6B0);
  }

  return result;
}

uint64_t sub_1B99EDD80(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_1B99A183C(*(a1 + 56) + 40 * v11, v39, &qword_1EBBDD698, &qword_1B99F9918);
      *&v38 = v14;
      *(&v38 + 1) = v13;
      v34 = v38;
      v35 = v39[0];
      v36 = v39[1];
      v37 = v40;
      sub_1B99A183C(&v35, &v30, &qword_1EBBDD698, &qword_1B99F9918);
      if (*(&v31[0] + 1))
      {
        break;
      }

      sub_1B99A18A4(&v30, &qword_1EBBDD698, &qword_1B99F9918);
      result = sub_1B99A18A4(&v34, &qword_1EBBDD738, &qword_1B99F9AF0);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    sub_1B99B6424(&v30, v28);

    sub_1B99EF28C(&v30);
    sub_1B99A1904(v28, v33);
    v30 = v34;
    v31[0] = v35;
    v31[1] = v36;
    v32 = v37;
    sub_1B99A1904(v33, v29);
    v15 = *(v1 + 16);
    if (*(v1 + 24) <= v15)
    {
      sub_1B99EF9F0(v15 + 1, 1);
      v1 = v41;
    }

    v16 = v30;
    v17 = *(v1 + 40);
    sub_1B99F4A04();
    sub_1B99F3B84();
    result = sub_1B99F4A24();
    v18 = v1 + 64;
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v18 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v1 + 48) + 16 * v22) = v16;
    sub_1B99A1904(v29, *(v1 + 56) + 40 * v22);
    ++*(v1 + 16);
    result = sub_1B99A18A4(v31, &qword_1EBBDD698, &qword_1B99F9918);
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t AnyJSONValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F4A94();
  sub_1B99B6424(v1, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6C8, &qword_1B99F9938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6C0, &qword_1B99F9930);
  if (swift_dynamicCast())
  {
    v5 = *(v50 + 16);
    if (v5)
    {
      v58 = MEMORY[0x1E69E7CC0];
      sub_1B99EF1EC(0, v5, 0);
      v6 = v58;
      v7 = v50 + 32;
      do
      {
        sub_1B99A183C(v7, &v50, &qword_1EBBDD6F8, &qword_1B99F9968);
        v53 = v50;
        v54 = v51;
        v55 = v52;
        if (*(&v51 + 1))
        {
          sub_1B99A1904(&v53, v48);
          sub_1B99A1904(v48, &v53);
        }

        else
        {
          sub_1B99A18A4(&v53, &qword_1EBBDD6F8, &qword_1B99F9968);
          v53 = 0u;
          v54 = 0u;
          v55 = 0;
        }

        v58 = v6;
        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1B99EF1EC((v8 > 1), v9 + 1, 1);
          v6 = v58;
        }

        *(v6 + 16) = v9 + 1;
        v10 = v6 + 40 * v9;
        v11 = v53;
        v12 = v54;
        *(v10 + 64) = v55;
        *(v10 + 32) = v11;
        *(v10 + 48) = v12;
        v7 += 40;
        --v5;
      }

      while (v5);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    *&v53 = v6;
    __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD680, &qword_1B99F9910);
    sub_1B99EF39C(&qword_1EBBDD700, sub_1B99EF414);
    sub_1B99F4794();

    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  sub_1B99B6424(v1, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6B8, &qword_1B99F9928);
  if (!swift_dynamicCast())
  {
    sub_1B99B6424(v1, &v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDF0, &qword_1B99F9940);
    if (swift_dynamicCast())
    {
      sub_1B99A1904(v48, &v53);
      __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
      __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
      sub_1B99F4794();
      __swift_destroy_boxed_opaque_existential_1(&v53);
    }

    else
    {
      v49 = 0;
      memset(v48, 0, sizeof(v48));
      sub_1B99A18A4(v48, &qword_1EBBDD6D0, &qword_1B99F9948);
      v37 = sub_1B99F42C4();
      swift_allocError();
      v39 = v38;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBBDD548, &qword_1B99F9950) + 48);
      v40 = *(v1 + 24);
      v41 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v39[3] = v40;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v41, v40);
      v43 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1B99F4A84();
      *&v53 = 0;
      *(&v53 + 1) = 0xE000000000000000;
      sub_1B99F4264();
      sub_1B99F43A4();
      MEMORY[0x1BFAE0580](0xD000000000000019, 0x80000001B99FAF90);
      sub_1B99F4294();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6B30], v37);
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6D8, &qword_1B99F9958);
  result = sub_1B99F43F4();
  v14 = result;
  v15 = 0;
  v45 = result;
  v46 = v50;
  v16 = 1 << *(v50 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v50 + 64;
  v19 = v17 & *(v50 + 64);
  v20 = (v16 + 63) >> 6;
  v44 = result + 64;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_21:
      v24 = v21 | (v15 << 6);
      v25 = 16 * v24;
      v26 = (*(v46 + 48) + 16 * v24);
      v28 = *v26;
      v27 = v26[1];
      v29 = 40 * v24;
      sub_1B99B6424(*(v46 + 56) + 40 * v24, &v53);
      result = sub_1B99A1904(&v53, &v50);
      *(v44 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v14 = v45;
      v30 = (v45[6] + v25);
      *v30 = v28;
      v30[1] = v27;
      v31 = v45[7] + v29;
      v32 = v52;
      v33 = v51;
      *v31 = v50;
      *(v31 + 16) = v33;
      *(v31 + 32) = v32;
      v34 = v45[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v45[2] = v36;

      if (!v19)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        *&v53 = v14;
        __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6E0, &qword_1B99F9960);
        sub_1B99EF2BC();
        sub_1B99F4794();

        return __swift_destroy_boxed_opaque_existential_1(v56);
      }

      v23 = *(v18 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B99EE7AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD6C8, &qword_1B99F9938);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v12 = &v49 - v11;
  v13 = *(v10 + 48);
  v14 = *(a2 - 8);
  (*(v14 + 16))(&v49 - v11, v3, a2);
  sub_1B99B6424(a1, &v12[v13]);
  if (swift_dynamicCast())
  {
    v15 = v55;
    if (swift_dynamicCast())
    {
      if (v15 == v61)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_1B99F4704();
      }

LABEL_43:

      goto LABEL_56;
    }
  }

  sub_1B99BE9A8(0, &qword_1EBBDD128, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v17 = v55;
    if (swift_dynamicCast())
    {
      v18 = v61;
      sub_1B99BE9A8(0, qword_1EBBDD010, 0x1E69E58C0);
      v16 = sub_1B99F4184();

LABEL_56:
      __swift_destroy_boxed_opaque_existential_1(&v12[v13]);
      (*(v14 + 8))(v12, a2);
      return v16 & 1;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6C0, &qword_1B99F9930);
  if (swift_dynamicCast())
  {
    v19 = v67;
    result = swift_dynamicCast();
    if (result)
    {
      v21 = v66;
      v22 = *(v19 + 16);
      if (v22 == *(v66 + 16))
      {
        v53 = v13;
        v54 = v14;
        if (v22)
        {
          v23 = 0;
          v24 = 32;
          do
          {
            if (v23 >= *(v19 + 16))
            {
              goto LABEL_63;
            }

            result = sub_1B99A183C(v19 + v24, &v61, &qword_1EBBDD6F8, &qword_1B99F9968);
            v25 = *(v21 + 16);
            if (v23 == v25)
            {

              sub_1B99A18A4(&v61, &qword_1EBBDD6F8, &qword_1B99F9968);
              goto LABEL_50;
            }

            if (v23 >= v25)
            {
              goto LABEL_64;
            }

            v55 = v61;
            v56 = v62;
            v57 = v63;
            sub_1B99A183C(v21 + v24, v58, &qword_1EBBDD6F8, &qword_1B99F9968);
            if (*(&v56 + 1) | v58[3])
            {
              sub_1B99A183C(&v55, &v64, &qword_1EBBDD6F8, &qword_1B99F9968);
              if (!v65)
              {
                sub_1B99A18A4(&v64, &qword_1EBBDD6F8, &qword_1B99F9968);
LABEL_53:
                sub_1B99A18A4(&v55, &qword_1EBBDD720, &qword_1B99F9AD8);
LABEL_54:

                v16 = 0;
                goto LABEL_55;
              }

              sub_1B99A1904(&v64, &v61);
              sub_1B99A183C(v58, &v59, &qword_1EBBDD6F8, &qword_1B99F9968);
              if (!v60)
              {
                sub_1B99A18A4(&v59, &qword_1EBBDD6F8, &qword_1B99F9968);
                __swift_destroy_boxed_opaque_existential_1(&v61);
                goto LABEL_53;
              }

              sub_1B99A1904(&v59, &v64);
              v26 = *(&v62 + 1);
              __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
              LOBYTE(v26) = sub_1B99EE7AC(&v64, v26);
              __swift_destroy_boxed_opaque_existential_1(&v64);
              __swift_destroy_boxed_opaque_existential_1(&v61);
              result = sub_1B99A18A4(&v55, &qword_1EBBDD720, &qword_1B99F9AD8);
              if ((v26 & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            else
            {
              result = sub_1B99A18A4(&v55, &qword_1EBBDD720, &qword_1B99F9AD8);
            }

            ++v23;
            v24 += 40;
          }

          while (v22 != v23);
        }

LABEL_50:
        v16 = 1;
LABEL_55:
        v14 = v54;
        v13 = v53;
        goto LABEL_56;
      }

      goto LABEL_46;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD6B8, &qword_1B99F9928);
  if (!swift_dynamicCast())
  {
LABEL_45:
    (*(v7 + 8))(v12, TupleTypeMetadata2);
    v16 = 0;
    return v16 & 1;
  }

  v27 = v67;
  if (!swift_dynamicCast())
  {

    goto LABEL_45;
  }

  v28 = v66;

  v29 = sub_1B99EF040(v27, v28);

  if ((v29 & 1) == 0)
  {
LABEL_46:

    v16 = 0;
    goto LABEL_56;
  }

  v53 = v13;
  v54 = v14;
  v30 = *(v27 + 64);
  v50 = v27 + 64;
  v31 = 1 << *(v27 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v52 = v27;
  v51 = v28;
  while (v33)
  {
LABEL_37:
    v37 = __clz(__rbit64(v33)) | (v35 << 6);
    v38 = *(v27 + 56);
    v39 = (*(v27 + 48) + 16 * v37);
    v40 = *v39;
    v41 = v39[1];
    sub_1B99B6424(v38 + 40 * v37, &v56);
    *&v55 = v40;
    *(&v55 + 1) = v41;
    sub_1B99A183C(&v55, &v61, &qword_1EBBDD718, "4N");
    v42 = v61;
    v43 = v51;
    v44 = *(v51 + 16);

    if (!v44)
    {

LABEL_59:

      __swift_destroy_boxed_opaque_existential_1(&v62);
      sub_1B99A18A4(&v55, &qword_1EBBDD718, "4N");
LABEL_60:
      v16 = 0;
LABEL_61:
      v14 = v54;
      v13 = v53;
      goto LABEL_43;
    }

    v45 = sub_1B99EF914(v42, *(&v42 + 1));
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_59;
    }

    v33 &= v33 - 1;
    sub_1B99B6424(*(v43 + 56) + 40 * v45, &v59);
    sub_1B99A1904(&v59, &v64);
    __swift_destroy_boxed_opaque_existential_1(&v62);
    v48 = v58[0];
    __swift_project_boxed_opaque_existential_1(&v56, v58[0]);
    LOBYTE(v48) = sub_1B99EE7AC(&v64, v48);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    result = sub_1B99A18A4(&v55, &qword_1EBBDD718, "4N");
    v27 = v52;
    if ((v48 & 1) == 0)
    {

      goto LABEL_60;
    }
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v34)
    {

      v16 = 1;
      goto LABEL_61;
    }

    v33 = *(v50 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_1B99EF040(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      sub_1B99EF914(v14, v13);
      LOBYTE(v14) = v15;

      if (v14)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t static AnyJSONValue.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_1B99EE7AC(a2, v3) & 1;
}

uint64_t sub_1B99EF1A8(void *a1, uint64_t a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return sub_1B99EE7AC(a2, v3) & 1;
}

void *sub_1B99EF1EC(void *a1, int64_t a2, char a3)
{
  result = sub_1B99EF698(a1, a2, a3, *v3, &qword_1EBBDD728, &qword_1B99F9AE0, &qword_1EBBDD698, &qword_1B99F9918);
  *v3 = result;
  return result;
}

char *sub_1B99EF22C(char *a1, int64_t a2, char a3)
{
  result = sub_1B99EF594(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B99EF24C(void *a1, int64_t a2, char a3)
{
  result = sub_1B99EF698(a1, a2, a3, *v3, &qword_1EBBDD730, &qword_1B99F9AE8, &qword_1EBBDD6F8, &qword_1B99F9968);
  *v3 = result;
  return result;
}

unint64_t sub_1B99EF2BC()
{
  result = qword_1EBBDD6E8;
  if (!qword_1EBBDD6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD6E0, &qword_1B99F9960);
    sub_1B99EF348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD6E8);
  }

  return result;
}

unint64_t sub_1B99EF348()
{
  result = qword_1EBBDD6F0;
  if (!qword_1EBBDD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD6F0);
  }

  return result;
}

uint64_t sub_1B99EF39C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD680, &qword_1B99F9910);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B99EF448(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD698, &qword_1B99F9918);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B99EF4D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B99EF51C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1B99EF574(void *a1, int64_t a2, char a3)
{
  result = sub_1B99EF7E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B99EF594(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD748, &unk_1B99F9B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1B99EF698(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1B99EF7E0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD710, "8N");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC658, &qword_1B99F5F40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1B99EF914(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B99F4A04();
  sub_1B99F3B84();
  v6 = sub_1B99F4A24();

  return sub_1B99F04D0(a1, a2, v6);
}

unint64_t sub_1B99EF98C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B99F43C4();
  v5 = sub_1B99F3B64();

  return sub_1B99F0588(a1, v5);
}

uint64_t sub_1B99EF9F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD740, &qword_1B99F9AF8);
  v36 = a2;
  result = sub_1B99F4404();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1B99A1904(v25, v37);
      }

      else
      {
        sub_1B99B6424(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B99F4A04();
      sub_1B99F3B84();
      result = sub_1B99F4A24();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1B99A1904(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B99EFCB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDB0, &qword_1B99F7200);
  v41 = a2;
  result = sub_1B99F4404();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = (*(v5 + 56) + 48 * v24);
      if (v41)
      {
        v29 = *v28;
        v30 = v28[1];
        *(v43 + 9) = *(v28 + 25);
        v42 = v29;
        v43[0] = v30;
      }

      else
      {
        sub_1B99BFBE4(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_1B99F4A04();
      sub_1B99F3B84();
      result = sub_1B99F4A24();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = (*(v8 + 56) + 48 * v16);
      v19 = v42;
      v20 = v43[0];
      *(v18 + 25) = *(v43 + 9);
      *v18 = v19;
      v18[1] = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B99EFF84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDA8, &unk_1B99F9B10);
  v38 = a2;
  result = sub_1B99F4404();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B99F4A04();
      sub_1B99F3B84();
      result = sub_1B99F4A24();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B99F022C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDA0, &unk_1B99F71F0);
  v39 = a2;
  result = sub_1B99F4404();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1B99F4A04();
      sub_1B99F3B84();
      result = sub_1B99F4A24();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1B99F04D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B99F4704())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B99F0588(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v4 = sub_1B99F43C4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v9, *(v24 + 48) + v16 * v11, v4);
      v19 = sub_1B99F3BF4();
      (*v17)(v9, v4);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v22 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

void EncodableError.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getErrorValue();
  v4 = sub_1B99F49B4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t EncodableError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B99F07B8()
{
  sub_1B99F4A04();
  MEMORY[0x1BFAE12E0](0);
  return sub_1B99F4A24();
}

uint64_t sub_1B99F0824()
{
  sub_1B99F4A04();
  MEMORY[0x1BFAE12E0](0);
  return sub_1B99F4A24();
}

uint64_t sub_1B99F0880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001B99FAFB0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B99F4704();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B99F0920(uint64_t a1)
{
  v2 = sub_1B99F0AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B99F095C(uint64_t a1)
{
  v2 = sub_1B99F0AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EncodableError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD750, &qword_1B99F9B30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F0AD4();
  sub_1B99F4AA4();
  sub_1B99F44A4();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1B99F0AD4()
{
  result = qword_1EBBDD758;
  if (!qword_1EBBDD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD758);
  }

  return result;
}

uint64_t EncodableError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD760, &qword_1B99F9B38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F0AD4();
  sub_1B99F4A74();
  if (!v2)
  {
    v12 = sub_1B99F4464();
    v14 = v13;
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B99F0CB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDD750, &qword_1B99F9B30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B99F0AD4();
  sub_1B99F4AA4();
  sub_1B99F44A4();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1B99F0DF0(uint64_t a1, int a2)
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

uint64_t sub_1B99F0E38(uint64_t result, int a2, int a3)
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

unint64_t sub_1B99F0E98()
{
  result = qword_1EBBDD768;
  if (!qword_1EBBDD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD768);
  }

  return result;
}

unint64_t sub_1B99F0EF0()
{
  result = qword_1EBBDD770;
  if (!qword_1EBBDD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD770);
  }

  return result;
}

unint64_t sub_1B99F0F48()
{
  result = qword_1EBBDD778;
  if (!qword_1EBBDD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD778);
  }

  return result;
}

uint64_t sub_1B99F0F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v25 - v11;
  sub_1B99AB800(a3, v25 - v11);
  v13 = sub_1B99F3EC4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B99A18A4(v12, &qword_1EBBDC4F0, &qword_1B99F5B20);
  }

  else
  {
    sub_1B99F3EB4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B99F3E44();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B99F3C64() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1B99A18A4(a3, &qword_1EBBDC4F0, &qword_1B99F5B20);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B99A18A4(a3, &qword_1EBBDC4F0, &qword_1B99F5B20);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t OptimisticUpdating.optimisticSet<A>(_:for:task:commit:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = v6;
  v13[4] = a2;
  swift_unknownObjectRetain();

  OptimisticUpdating.optimisticSet<A>(_:for:task:commit:revert:)(a1, a2, a3, a4, a5, &unk_1B99F9D48, v13, a6);
}

uint64_t sub_1B99F12FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*a3 + *MEMORY[0x1E69E6F98] + 8);
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  sub_1B99F3EA4();
  v3[9] = sub_1B99F3E94();
  sub_1B99F3E44();

  return MEMORY[0x1EEE6DFA0](sub_1B99F1424);
}

uint64_t sub_1B99F1424()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v4 + 16))(v2, v7, v3);
  v0[2] = v6;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B99F14EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B99A3EB8;

  return sub_1B99F12FC(a1, v5, v6);
}

uint64_t OptimisticUpdating.optimisticSet<A>(_:for:task:commit:revert:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v46 = a6;
  v47 = a5;
  v48 = a7;
  v44 = a4;
  v40 = a3;
  v41 = a1;
  v9 = *a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v15 = &v39 - v14;
  v16 = *MEMORY[0x1E69E6F98];
  v42 = v9;
  v17 = *(v9 + v16 + 8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v13, v20);
  v22 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v39 - v24;
  v51 = v8;
  swift_unknownObjectRetain();
  v26 = swift_readAtKeyPath();
  v43 = v18;
  v27 = *(v18 + 16);
  v49 = v25;
  v28 = v25;
  v29 = v40;
  v27(v28);
  v26(v50, 0);
  swift_unknownObjectRelease();
  (v27)(v22, v41, v17);
  v50[0] = v8;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  swift_unknownObjectRelease();
  if (v29)
  {
    v51 = v8;
    swift_unknownObjectRetain();

    swift_getAtKeyPath();
    swift_unknownObjectRelease();
    if (v50[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC650, &qword_1B99F6A20);
      sub_1B99F3EE4();
    }
  }

  v30 = sub_1B99F3EC4();
  (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  (v27)(v22, v49, v17);
  v31 = v43;
  v32 = (*(v43 + 80) + 72) & ~*(v43 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = *(v42 + *MEMORY[0x1E69E6F98]);
  *(v33 + 5) = v17;
  v34 = v44;
  *(v33 + 6) = v45;
  *(v33 + 7) = v34;
  *(v33 + 8) = v47;
  (*(v31 + 32))(&v33[v32], v22, v17);
  v35 = &v33[(v19 + v32 + 7) & 0xFFFFFFFFFFFFFFF8];
  v36 = v48;
  *v35 = v46;
  *(v35 + 1) = v36;

  v37 = sub_1B99F0F9C(0, 0, v15, &unk_1B99F9D60, v33);
  if (v29)
  {
    v50[0] = v8;
    v51 = v37;
    swift_unknownObjectRetain();

    swift_setAtReferenceWritableKeyPath();
    swift_unknownObjectRelease();

    return (*(v31 + 8))(v49, v17);
  }

  else
  {
    (*(v31 + 8))(v49, v17);
  }
}

uint64_t sub_1B99F19DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v17;
  v8[2] = a6;
  v8[3] = a7;
  v10 = *(v17 - 8);
  v8[6] = v10;
  v11 = *(v10 + 64) + 15;
  v8[7] = swift_task_alloc();
  v8[8] = swift_task_alloc();
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v8[9] = v13;
  *v13 = v8;
  v13[1] = sub_1B99F1B3C;

  return v15();
}

uint64_t sub_1B99F1B3C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B99F1E00);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B99F1C84()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B99F1D80);
}

uint64_t sub_1B99F1D80()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_1B99F1E00()
{
  v36 = v0;
  sub_1B99F3EF4();
  if (qword_1ED99EB40 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  v6 = sub_1B99F3974();
  __swift_project_value_buffer(v6, qword_1ED99EC18);
  v7 = *(v4 + 16);
  v7(v2, v5, v3);
  v8 = v1;
  v9 = sub_1B99F3954();
  v10 = sub_1B99F40C4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[10];
    v12 = v0[7];
    v31 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    v15 = swift_slowAlloc();
    v32 = v10;
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v15 = 138412546;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    *(v15 + 12) = 2080;
    v7(v12, v31, v14);
    v19 = sub_1B99F3C44();
    v21 = v20;
    (*(v13 + 8))(v31, v14);
    v22 = sub_1B99BFCEC(v19, v21, &v35);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1B99A0000, v9, v32, "Optimistic update failed with error: %@. Reverting value to: %s", v15, 0x16u);
    sub_1B99A18A4(v16, &qword_1EBBDD2A0, &qword_1B99F8738);
    MEMORY[0x1BFAE1C50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1BFAE1C50](v33, -1, -1);
    MEMORY[0x1BFAE1C50](v15, -1, -1);
  }

  else
  {
    v23 = v0[8];
    v24 = v0[5];
    v25 = v0[6];

    (*(v25 + 8))(v23, v24);
  }

  v34 = (v0[3] + *v0[3]);
  v26 = *(v0[3] + 4);
  v27 = swift_task_alloc();
  v0[11] = v27;
  *v27 = v0;
  v27[1] = sub_1B99F1C84;
  v28 = v0[4];
  v29 = v0[2];

  return v34(v29);
}

uint64_t sub_1B99F21B4(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v5 = v1[7];
  v15 = v1[6];
  v16 = v1[4];
  v6 = (*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  v10 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B99A3EB8;

  return sub_1B99F19DC(a1, v7, v8, v5, v9, v1 + v6, v11, v12);
}

uint64_t sub_1B99F2314()
{
  v0 = sub_1B99F3974();
  __swift_allocate_value_buffer(v0, qword_1ED99EBF0);
  __swift_project_value_buffer(v0, qword_1ED99EBF0);

  return sub_1B99F3964();
}

uint64_t sub_1B99F23A0()
{
  v0 = sub_1B99F3974();
  __swift_allocate_value_buffer(v0, qword_1ED99EC18);
  __swift_project_value_buffer(v0, qword_1ED99EC18);

  return sub_1B99F3964();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

int *LazyOptionalDependency.init(dependencyId:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 56))(a5, 1, 1);
  result = type metadata accessor for LazyOptionalDependency();
  *(a5 + result[7]) = 0;
  v10 = (a5 + result[8]);
  *v10 = a1;
  v10[1] = a2;
  *(a5 + result[9]) = a3;
  return result;
}

uint64_t LazyOptionalDependency.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = sub_1B99F41C4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v19 - v11;
  v13 = *(a1 + 28);
  if (*(v3 + v13) == 1)
  {
    v14 = *(v10 + 16);

    return v14(a2, v3, v7);
  }

  else
  {
    v16 = (v3 + *(a1 + 32));
    v17 = *v16;
    v18 = v16[1];
    v20 = v10;
    type metadata accessor for DependencyRegistry();
    static DependencyRegistry.locateService<A>(by:config:)(v17, v18, *(v3 + *(a1 + 36)), v6, v12);
    (*(v20 + 40))(v3, v12, v7);
    *(v3 + v13) = 1;
    return (*(v20 + 16))(a2, v3, v7);
  }
}

uint64_t LazyOptionalDependency.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1B99F41C4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

void (*LazyOptionalDependency.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
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
  v6[1] = *(a2 + 16);
  v8 = sub_1B99F41C4();
  v7[2] = v8;
  v9 = *(v8 - 8);
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
  LazyOptionalDependency.wrappedValue.getter(a2, v11);
  return sub_1B99DFBF8;
}

uint64_t sub_1B99F28AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for LazyOptionalDependency();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v6);
  return LazyOptionalDependency.projectedValue.setter(v10, v6);
}

uint64_t LazyOptionalDependency.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*LazyOptionalDependency.projectedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a2 - 8);
  v10 = v9;
  v7[2] = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  (*(v10 + 16))();
  return sub_1B99C94E0;
}

void sub_1B99F2B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1B99F41C4();
  if (v2 <= 0x3F)
  {
    sub_1B99F2FDC();
    if (v3 <= 0x3F)
    {
      sub_1B99F302C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B99F2C04(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *(((a1 + v8) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1B99F2D7C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if ((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if ((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if ((((v10 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFE)
  {
    v22 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *(v22 + 8) = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v22 + 16) = a2;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

void sub_1B99F2FDC()
{
  if (!qword_1EBBDD810)
  {
    v0 = sub_1B99F41C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBDD810);
    }
  }
}

void sub_1B99F302C()
{
  if (!qword_1EBBDD818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDD820, ".L");
    v0 = sub_1B99F41C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBDD818);
    }
  }
}

uint64_t sub_1B99F30F8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v23 = a2;
  v24 = a4;
  v22 = a5;
  v8 = type metadata accessor for TypedCodingEnvelope();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDCDF8, &qword_1B99F7478);
  v14 = *(a3 + 8);
  v15 = sub_1B99F32DC();
  (v14)(v25, v13, v13, v15, a1, a3);
  if (v5)
  {

    v25[3] = v24;
    WitnessTable = swift_getWitnessTable();
    v14(v8, v8, WitnessTable, a1, a3);
    return (*(*(v23 - 8) + 32))(v22, v12);
  }

  else
  {
    v18 = v25[0];
    v19 = v25[1];
    sub_1B99F33B4();
    swift_allocError();
    *v20 = v18;
    v20[1] = v19;
    return swift_willThrow();
  }
}

unint64_t sub_1B99F32DC()
{
  result = qword_1EBBDD828;
  if (!qword_1EBBDD828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBDCDF8, &qword_1B99F7478);
    sub_1B99F3360();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD828);
  }

  return result;
}

unint64_t sub_1B99F3360()
{
  result = qword_1EBBDD830;
  if (!qword_1EBBDD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD830);
  }

  return result;
}

unint64_t sub_1B99F33B4()
{
  result = qword_1EBBDD838;
  if (!qword_1EBBDD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBDD838);
  }

  return result;
}

uint64_t XPCCodingError.UnexpectedType.expectedType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCCodingError.UnexpectedType.actualType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t XPCCodingError.UnexpectedType.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1B99F4264();
  MEMORY[0x1BFAE0580](0xD000000000000033, 0x80000001B99FB010);
  MEMORY[0x1BFAE0580](v1, v2);
  MEMORY[0x1BFAE0580](0x203A746F6720, 0xE600000000000000);
  MEMORY[0x1BFAE0580](v3, v4);
  return 0;
}

uint64_t sub_1B99F352C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B99F3574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}
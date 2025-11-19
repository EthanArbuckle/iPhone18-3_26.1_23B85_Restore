uint64_t sub_23E8D8D2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F340, &qword_23E906D50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23E8D8DD4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F340, &qword_23E906D50) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23E8D8064(v0 + v2, v3);
}

double static Transform.identity.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1065353216;
  *a1 = xmmword_23E903320;
  *(a1 + 16) = 0;
  return result;
}

void __swiftcall Transform.init(a:b:c:d:tx:ty:)(AirPlayKit::Transform *__return_ptr retstr, Swift::Float a, Swift::Float b, Swift::Float c, Swift::Float d, Swift::Float tx, Swift::Float ty)
{
  retstr->a = a;
  retstr->b = b;
  retstr->c = c;
  retstr->d = d;
  retstr->tx = tx;
  retstr->ty = ty;
}

double static Transform.scale(x:y:)@<D0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 4) = 0;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  return result;
}

void static Transform.translation(x:y:)(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  *a1 = xmmword_23E903320;
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
}

void static Transform.rotation(radians:)(uint64_t a1@<X8>, float a2@<S0>)
{
  v3 = __sincosf_stret(a2);
  *a1 = v3.__cosval;
  *(a1 + 4) = v3.__sinval;
  *(a1 + 8) = -v3.__sinval;
  *(a1 + 12) = v3.__cosval;
  *(a1 + 16) = 0;
}

float32x2_t static Transform.+ infix(_:_:)@<D0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  *v5.f32 = *a2;
  *v6.f32 = a2[1];
  v7 = vmul_n_f32(*a2, COERCE_FLOAT(*(a1 + 16)));
  *&v5.u32[2] = *a2;
  v8 = vmul_n_f32(*v6.f32, *(a1 + 20));
  v6.i64[1] = v6.i64[0];
  v3.i32[1] = *(a1 + 8);
  v4.i32[1] = *(a1 + 12);
  *a3 = vaddq_f32(vmulq_f32(v5, vzip1q_s32(v3, v3)), vmulq_f32(v6, vzip1q_s32(v4, v4)));
  result = vadd_f32(a2[2], vadd_f32(v7, v8));
  *(a3 + 16) = result;
  return result;
}

uint64_t Transform.hash(into:)()
{
  *v0;
  sub_23E900EE4();
  v0[1];
  sub_23E900EE4();
  v0[2];
  sub_23E900EE4();
  v0[3];
  sub_23E900EE4();
  v0[4];
  sub_23E900EE4();
  v0[5];
  return sub_23E900EE4();
}

uint64_t Transform.hashValue.getter()
{
  sub_23E900EB4();
  Transform.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D906C()
{
  sub_23E900EB4();
  Transform.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8D90B0()
{
  sub_23E900EB4();
  Transform.hash(into:)();
  return sub_23E900F14();
}

BOOL sub_23E8D90EC(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 2);
  return _s10AirPlayKit9TransformV2eeoiySbAC_ACtFZ_0(&v3, &v5);
}

unint64_t sub_23E8D91A8()
{
  result = qword_27E35F348;
  if (!qword_27E35F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F348);
  }

  return result;
}

unint64_t sub_23E8D91FC(uint64_t a1)
{
  result = sub_23E8D9224();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8D9224()
{
  result = qword_27E35F350;
  if (!qword_27E35F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F350);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Transform(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Transform(uint64_t result, int a2, int a3)
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

uint64_t sub_23E8D92E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v10 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EF17990](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9[0] = v6;
        v9[1] = v7;
        v10(v9);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_23E900D34();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_23E8D93FC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_23E900734();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8D94F4, 0, 0);
}

uint64_t sub_23E8D94F4()
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = sub_23E900764();
  __swift_project_value_buffer(v3, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E9093F0, 0xD000000000000012, 0x800000023E909500);
  v4 = __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  v5 = *v4;
  v6 = *(*v4 + 40);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree;
  swift_beginAccess();
  sub_23E8891B4(v5 + v7, v1, &unk_27E35F3D0, &qword_23E905770);
  os_unfair_lock_unlock(*(v6 + 16));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v9 = (*(*(v8 - 8) + 48))(v1, 1, v8);
  v10 = *(v0 + 128);
  if (v9 == 1)
  {
    sub_23E87E458(*(v0 + 128), &unk_27E35F3D0, &qword_23E905770);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  else
  {
    *(v0 + 40) = v8;
    *(v0 + 48) = sub_23E8A2828();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_23E8B7D50(v10, boxed_opaque_existential_1);
  }

  v12 = *(v0 + 96);
  v13 = v12[11];
  os_unfair_lock_lock(*(v13 + 16));
  sub_23E8D99EC(v12, v0 + 16);
  os_unfair_lock_unlock(*(v13 + 16));
  v14 = *__swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  v15 = sub_23E8FABC4();
  if (v15)
  {
    v16 = v15;
    v17 = *(v0 + 96);
    sub_23E8D9C40(v15, 0);
    swift_unknownObjectRetain();
    v18 = sub_23E900744();
    v19 = sub_23E900B14();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = [v16 depth];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_23E879000, v18, v19, "Depth: %lu", v20, 0xCu);
      MEMORY[0x23EF18560](v20, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v26 = *(v0 + 120);
    v27 = *(v0 + 128);
    v28 = *(v0 + 104);
    v29 = *(v0 + 112);
    v30 = *(v0 + 88);
    *(v0 + 80) = MEMORY[0x277D84F90];
    v31 = swift_task_alloc();
    *(v31 + 16) = v0 + 80;
    sub_23E900714();
    sub_23E8D9F7C(v26, sub_23E8DCB48, v31);
    (*(v29 + 8))(v26, v28);

    v32 = [v30 dispatcher];
    sub_23E8BD4C0(*(v0 + 80));
    sub_23E8B7F00();
    v33 = sub_23E9009A4();

    [v32 inlineStyleInvalidatedWithNodeIds_];

    swift_unknownObjectRelease();

    sub_23E87E458(v0 + 16, &unk_27E35F3E0, "t=");

    v34 = *(v0 + 8);

    return v34(v16);
  }

  else
  {
    v21 = *(v0 + 120);
    v22 = *(v0 + 128);
    sub_23E8A9420();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    sub_23E87E458(v0 + 16, &unk_27E35F3E0, "t=");

    v24 = *(v0 + 8);

    return v24();
  }
}

void *sub_23E8D99EC(void *result, uint64_t a2)
{
  v2 = result[2];
  if (!(v2 >> 62))
  {
    v4 = result;
    v5 = result[3];
    v6 = result[4];
    v7 = result[5];
    v8 = qword_27E35E188;
    v9 = v2;
    v10 = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if (v8 != -1)
    {
      swift_once();
    }

    v11 = sub_23E900764();
    __swift_project_value_buffer(v11, qword_27E367168);
    sub_23E8891B4(a2, v28, &unk_27E35F3E0, "t=");
    v12 = sub_23E900744();
    v13 = sub_23E900B14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v6;
      v29 = v25;
      *v14 = 136315138;
      sub_23E8891B4(v28, v27, &unk_27E35F3E0, "t=");
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3E0, "t=");
      v15 = sub_23E9008D4();
      v16 = v7;
      v17 = v5;
      v19 = v18;
      sub_23E87E458(v28, &unk_27E35F3E0, "t=");
      v20 = sub_23E887B9C(v15, v19, &v29);
      v5 = v17;
      v7 = v16;

      *(v14 + 4) = v20;
      _os_log_impl(&dword_23E879000, v12, v13, "Switch state to connected with rootNode: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v6 = v26;
      MEMORY[0x23EF18560](v25, -1, -1);
      MEMORY[0x23EF18560](v14, -1, -1);
    }

    else
    {

      sub_23E87E458(v28, &unk_27E35F3E0, "t=");
    }

    v21 = v4[2];
    v22 = v4[3];
    v23 = v4[4];
    v24 = v4[5];
    v4[2] = v2 | 0x4000000000000000;
    v4[3] = v5;
    v4[4] = v6;
    v4[5] = v7;
    return sub_23E8B5B40(v21, v22);
  }

  return result;
}

id sub_23E8D9C40(unint64_t a1, uint64_t a2)
{
  if (qword_27E35E188 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v4 = sub_23E900764();
    __swift_project_value_buffer(v4, qword_27E367168);
    swift_unknownObjectRetain();
    v5 = sub_23E900744();
    v6 = sub_23E900B14();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      result = swift_slowAlloc();
      *v7 = 136315394;
      v24 = result;
      if (a2 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = result;
      if (a2)
      {
        v10 = a2;
        do
        {
          MEMORY[0x23EF17600](45, 0xE100000000000000);
          --v10;
        }

        while (v10);
      }

      v11 = sub_23E887B9C(0, 0xE000000000000000, &v24);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = [a1 description];
      v13 = sub_23E900884();
      v15 = v14;

      v16 = sub_23E887B9C(v13, v15, &v24);

      *(v7 + 14) = v16;
      _os_log_impl(&dword_23E879000, v5, v6, "%s%s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v9, -1, -1);
      MEMORY[0x23EF18560](v7, -1, -1);
    }

    result = [a1 children];
    if (!result)
    {
      return result;
    }

    v17 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
    a1 = sub_23E9009B4();

    if (!(a1 >> 62))
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        break;
      }

      goto LABEL_11;
    }

    v18 = sub_23E900D34();
    if (!v18)
    {
      break;
    }

LABEL_11:
    v19 = 0;
    v21 = __OFADD__(a2++, 1);
    while ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23EF17990](v19, a1);
      v22 = result;
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_22:
        __break(1u);
        return result;
      }

LABEL_17:
      if (v21)
      {
        goto LABEL_25;
      }

      sub_23E8D9C40(v22, a2);
      swift_unknownObjectRelease();
      ++v19;
      if (v23 == v18)
      {
        goto LABEL_28;
      }
    }

    if (v19 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(a1 + 8 * v19 + 32);
      result = swift_unknownObjectRetain();
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_28:
}

id sub_23E8D9F7C(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3)
{
  v4 = v3;
  a2(a1, v4);
  result = [v4 children];
  if (result)
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
    v10 = sub_23E9009B4();

    MEMORY[0x28223BE20](v11);
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    sub_23E8D92E8(sub_23E8DC11C, v12, v10);
  }

  return result;
}

uint64_t sub_23E8DA1F8(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23E8DA2BC;

  return sub_23E8D93FC(v5);
}

uint64_t sub_23E8DA2BC(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_23E900554();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    v10[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
    swift_unknownObjectRelease();
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_23E8DA610(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_23E8DA6EC;

  return sub_23E8DC204(a2);
}

uint64_t sub_23E8DA6EC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_23E900554();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_23E900854();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_23E8DAA2C(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_23E8DAB08;

  return (sub_23E8DC734)(a2);
}

uint64_t sub_23E8DAB08()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_23E900554();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_23E9009A4();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_23E8DACB4(uint64_t a1, int a2, int a3)
{
  *(v4 + 64) = a2;
  *(v4 + 68) = a3;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v5 = sub_23E900734();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8DAD78, 0, 0);
}

uint64_t sub_23E8DAD78()
{
  v56 = v0;
  if (qword_27E35E188 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 68);
    v3 = sub_23E900764();
    __swift_project_value_buffer(v3, qword_27E367168);
    sub_23E882260(0xD000000000000067, 0x800000023E9093F0, 0xD000000000000032, 0x800000023E909460);
    v4 = __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_28:
      v0 = sub_23E900D34();
      if (!v0)
      {
LABEL_29:

        v7 = v49;
        v0 = v50;
LABEL_30:
        v36 = *(v0 + 48);
        v37 = *(v0 + 56);
        v38 = v7;
        v39 = *(v0 + 40);
        v40 = *(v0 + 24);
        v41 = MEMORY[0x277D84F90];
        *(v0 + 16) = MEMORY[0x277D84F90];
        v42 = swift_task_alloc();
        *(v42 + 16) = v0 + 16;
        sub_23E900714();
        sub_23E8D9F7C(v37, sub_23E8DCB8C, v42);
        (*(v36 + 8))(v37, v39);

        v43 = [v40 dispatcher];
        sub_23E8BD4C0(*(v0 + 16));
        sub_23E8B7F00();
        v44 = sub_23E9009A4();

        [v43 inlineStyleInvalidatedWithNodeIds_];

        swift_unknownObjectRelease();
        v45 = [v38 children];
        if (v45)
        {
          v46 = v45;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
          v41 = sub_23E9009B4();
        }

        swift_unknownObjectRelease();

        v47 = *(v0 + 56);

        v48 = *(v0 + 8);

        return v48(v41);
      }

      goto LABEL_15;
    }

    v5 = *(v0 + 64);
    v6 = *(*v4 + 40);
    os_unfair_lock_lock(*(v6 + 16));
    v7 = sub_23E8FA998(v5, v2 + 1);
    os_unfair_lock_unlock(*(v6 + 16));
    if (!v7)
    {
      break;
    }

    swift_unknownObjectRetain();
    v8 = sub_23E900744();
    v9 = sub_23E900B14();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = [v7 depth];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_23E879000, v8, v9, "Depth: %lu", v10, 0xCu);
      MEMORY[0x23EF18560](v10, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v15 = sub_23E900744();
    v16 = sub_23E900B14();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23E879000, v15, v16, "Children: ", v17, 2u);
      MEMORY[0x23EF18560](v17, -1, -1);
    }

    v18 = [v7 children];
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
    v1 = sub_23E9009B4();

    v49 = v7;
    v50 = v0;
    if (v1 >> 62)
    {
      goto LABEL_28;
    }

    v0 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v0)
    {
      goto LABEL_29;
    }

LABEL_15:
    v20 = 0;
    v21 = v1 & 0xC000000000000001;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v51 = v0;
    while (v21)
    {
      v23 = MEMORY[0x23EF17990](v20, v1);
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_24;
      }

LABEL_20:
      swift_unknownObjectRetain();
      v25 = sub_23E900744();
      v26 = sub_23E900B14();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v27 = 136315138;
        v52 = v26;
        v28 = v22;
        v29 = v21;
        v30 = v1;
        v31 = [v23 description];
        v32 = sub_23E900884();
        v54 = v24;
        v34 = v33;

        v1 = v30;
        v21 = v29;
        v22 = v28;
        v35 = sub_23E887B9C(v32, v34, &v55);
        v24 = v54;

        *(v27 + 4) = v35;
        v0 = v51;
        _os_log_impl(&dword_23E879000, v25, v52, "- %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x23EF18560](v53, -1, -1);
        MEMORY[0x23EF18560](v27, -1, -1);
      }

      swift_unknownObjectRelease();
      ++v20;
      if (v24 == v0)
      {
        goto LABEL_29;
      }
    }

    if (v20 >= *(v22 + 16))
    {
      goto LABEL_25;
    }

    v23 = *(v1 + 8 * v20 + 32);
    swift_unknownObjectRetain();
    v24 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  v11 = *(v0 + 56);
  sub_23E8A9420();
  swift_allocError();
  *v12 = 1;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23E8DB3E8(int a1, id a2, uint64_t *a3)
{
  v4 = [a2 nodeId];
  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    result = sub_23E88AAB0(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_23E88AAB0((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 4 * v8 + 32) = v4;
  return result;
}

uint64_t sub_23E8DB644(void *a1, int a2, int a3, void *aBlock, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  v9 = a1;

  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_23E8DB720;

  return sub_23E8DACB4(v9, a2, a3);
}

uint64_t sub_23E8DB720()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_23E900554();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
    v11 = sub_23E9009A4();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 32);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_23E8DB8E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23E889AD8;

  return sub_23E8DB644(v2, v3, v4, v6, v5);
}

uint64_t sub_23E8DB9A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23E900734();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  sub_23E900724();
  sub_23E8D9F7C(v11, a3, a4);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_23E8DBAA8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23E889AD8;

  return v7();
}

uint64_t sub_23E8DBB90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23E888F34;

  return v8();
}

uint64_t sub_23E8DBC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_23E8891B4(a3, v25 - v11, &qword_27E35E5E0, &qword_23E905750);
  v13 = sub_23E900A74();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23E87E458(v12, &qword_27E35E5E0, &qword_23E905750);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23E900A64();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_23E900A34();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_23E9008E4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);

    return v23;
  }

LABEL_8:
  sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23E8DBF74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E8DBFAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E889AD8;

  return sub_23E8879AC(a1, v5);
}

uint64_t sub_23E8DC064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E888F34;

  return sub_23E8879AC(a1, v5);
}

uint64_t sub_23E8DC13C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E889AD8;

  return sub_23E8DAA2C(v2, v3, v5, v4);
}

uint64_t sub_23E8DC204(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v2 + 152) = v1;
  *(v2 + 184) = a1;
  v3 = *(*(sub_23E9008C4() - 8) + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v4 = type metadata accessor for RenderTransactionAction();
  *(v2 + 168) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23E8DC2F4, 0, 0);
}

uint64_t sub_23E8DC2F4()
{
  v38 = *MEMORY[0x277D85DE8];
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 184);
  v3 = sub_23E900764();
  __swift_project_value_buffer(v3, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E9093F0, 0xD000000000000021, 0x800000023E9094D0);
  v4 = *(*__swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72)) + 40);
  os_unfair_lock_lock(*(v4 + 16));
  sub_23E8F9B54(v2, v0 + 72);
  os_unfair_lock_unlock(*(v4 + 16));
  if (*(v0 + 112))
  {
    v5 = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v6 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v6;
    *(v0 + 48) = v5;
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v7);
    v10 = (*(v8 + 88))(v7, v8);
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
    *(v11 + *(v12 + 20)) = v10;
    v13 = sub_23E8CD2C8();
    v14 = objc_opt_self();
    *(v0 + 128) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5A0, &qword_23E902F38);
    v15 = [v14 isValidJSONObject_];
    swift_unknownObjectRelease();
    if (v15)
    {
      *(v0 + 136) = v13;
      v16 = sub_23E900BC4();

      *(v0 + 144) = 0;
      v17 = [v14 dataWithJSONObject:v16 options:3 error:v0 + 144];
      swift_unknownObjectRelease();
      v18 = *(v0 + 144);
      if (v17)
      {
        v19 = *(v0 + 160);
        v20 = sub_23E900634();
        v22 = v21;

        sub_23E9008B4();
        v23 = sub_23E9008A4();
        if (v24)
        {
          v25 = v23;
          v26 = v24;
          sub_23E8A7854(v20, v22);
        }

        else
        {
          sub_23E8A7854(v20, v22);
          v25 = 0;
          v26 = 0xE000000000000000;
        }

        v35 = *(v0 + 160);
        sub_23E8DC9F0(*(v0 + 176));
        sub_23E8A295C(v0 + 16);

        v36 = *(v0 + 8);
        v37 = *MEMORY[0x277D85DE8];

        return v36(v25, v26);
      }

      v27 = *(v0 + 176);
      v29 = v18;
      sub_23E900564();
    }

    else
    {
      v27 = *(v0 + 176);

      sub_23E8A9420();
      swift_allocError();
      *v28 = 7;
    }

    swift_willThrow();
    sub_23E8DC9F0(v27);
    sub_23E8A295C(v0 + 16);
  }

  else
  {
    sub_23E87E458(v0 + 72, &unk_27E35EB60, &unk_23E907DC0);
    sub_23E8A9420();
    swift_allocError();
    *v9 = 6;
    swift_willThrow();
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 160);

  v32 = *(v0 + 8);
  v33 = *MEMORY[0x277D85DE8];

  return v32();
}

uint64_t sub_23E8DC734(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_23E8DC758, 0, 0);
}

uint64_t sub_23E8DC758()
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_23E900764();
  __swift_project_value_buffer(v3, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E9093F0, 0xD000000000000026, 0x800000023E9094A0);
  v4 = *(*__swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72)) + 40);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = sub_23E8FA998(v2, 1);
  os_unfair_lock_unlock(*(v4 + 16));
  if (v5)
  {
    v6 = [v5 attributes];
    if (v6)
    {
      v7 = v6;
      v8 = sub_23E9009B4();
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    swift_unknownObjectRelease();
    v12 = *(v0 + 8);

    return v12(v8);
  }

  else
  {
    sub_23E8A9420();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_23E8DC92C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E889AD8;

  return sub_23E8DA610(v2, v3, v5, v4);
}

uint64_t sub_23E8DC9F0(uint64_t a1)
{
  v2 = type metadata accessor for RenderTransactionAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E8DCA4C()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8DCA94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E888F34;

  return sub_23E8DA1F8(v2, v3, v4);
}

uint64_t sub_23E8DCB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_23E8DF634(&qword_27E35E708);
    v22 = sub_23E900844();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8DCD90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F620, &qword_23E9050B0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v30 = *(v9 + 72);
    while (1)
    {
      sub_23E8891B4(v14, v11, &unk_27E35F620, &qword_23E9050B0);
      sub_23E8891B4(v15, v8, &unk_27E35F620, &qword_23E9050B0);
      if ((sub_23E9006B4() & 1) == 0 || *&v11[v4[9]] != *&v8[v4[9]] || *&v11[v4[10]] != *&v8[v4[10]])
      {
LABEL_43:
        sub_23E87E458(v8, &unk_27E35F620, &qword_23E9050B0);
        sub_23E87E458(v11, &unk_27E35F620, &qword_23E9050B0);
        return 0;
      }

      v16 = v4[11];
      v17 = &v11[v16];
      v18 = &v8[v16];
      v19 = v11[v16 + 4];
      v20 = v8[v16 + 4];
      if (v19)
      {
        if (!v20)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (*v17 != *v18)
        {
          LOBYTE(v20) = 1;
        }

        if (v20)
        {
          goto LABEL_43;
        }
      }

      if (*&v11[v4[12]] != *&v8[v4[12]])
      {
        goto LABEL_43;
      }

      v32 = v14;
      v21 = &v11[v4[13]];
      v22 = *v21;
      v23 = *(v21 + 1);
      v24 = v21[16];
      sub_23E87E458(v11, &unk_27E35F620, &qword_23E9050B0);
      v25 = &v8[v4[13]];
      v26 = *(v25 + 1);
      v33 = *v25;
      v31 = v26;
      v27 = v25[16];
      sub_23E87E458(v8, &unk_27E35F620, &qword_23E9050B0);
      if (!v24)
      {
        break;
      }

      if (v24 == 1)
      {
        if (v27 != 1)
        {
          return 0;
        }

        goto LABEL_20;
      }

      if (v22 > 1)
      {
        if (v22 ^ 2 | v23)
        {
          v29 = v32;
          if (v27 != 2)
          {
            return 0;
          }

          result = 0;
          if (v33 != 3)
          {
            return result;
          }
        }

        else
        {
          v29 = v32;
          if (v27 != 2)
          {
            return 0;
          }

          result = 0;
          if (v33 != 2)
          {
            return result;
          }
        }

        goto LABEL_39;
      }

      if (v22 | v23)
      {
        v29 = v32;
        if (v27 != 2)
        {
          return 0;
        }

        result = 0;
        if (v33 != 1)
        {
          return result;
        }

LABEL_39:
        if (v31)
        {
          return result;
        }

        goto LABEL_40;
      }

      result = 0;
      v29 = v32;
      if (v27 != 2 || v31 | v33)
      {
        return result;
      }

LABEL_40:
      v15 += v30;
      v14 = v29 + v30;
      result = 1;
      if (!--v12)
      {
        return result;
      }
    }

    if (v27)
    {
      return 0;
    }

LABEL_20:
    result = 0;
    if (*&v22 != *&v33)
    {
      return result;
    }

    if (*(&v22 + 1) != *(&v33 + 1))
    {
      return result;
    }

    if (*&v23 != *&v31)
    {
      return result;
    }

    v29 = v32;
    if (*(&v23 + 1) != *(&v31 + 1))
    {
      return result;
    }

    goto LABEL_40;
  }

  return 1;
}

uint64_t sub_23E8DD17C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F660, &unk_23E9069D0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v53 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_23E8891B4(v14, v11, &unk_27E35F660, &unk_23E9069D0);
      sub_23E8891B4(v15, v8, &unk_27E35F660, &unk_23E9069D0);
      if ((sub_23E9006B4() & 1) == 0 || *&v11[v4[9]] != *&v8[v4[9]] || *&v11[v4[10]] != *&v8[v4[10]])
      {
LABEL_83:
        sub_23E87E458(v8, &unk_27E35F660, &unk_23E9069D0);
        sub_23E87E458(v11, &unk_27E35F660, &unk_23E9069D0);
        return 0;
      }

      v17 = v4[11];
      v18 = &v11[v17];
      v19 = &v8[v17];
      if (v18[24])
      {
        if ((v19[24] & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v19[24])
        {
          goto LABEL_83;
        }

        v20 = *v18;
        v21 = *(v18 + 1);
        v22 = *(v18 + 2);
        v23 = *(v19 + 1);
        v24 = *(v19 + 2);
        v25 = *&v20 == COERCE_FLOAT(*v19) && *(&v20 + 1) == COERCE_FLOAT(HIDWORD(*v19));
        v26 = v25 && *&v21 == *&v23;
        v27 = v26 && *(&v21 + 1) == *(&v23 + 1);
        v28 = v27 && *&v22 == *&v24;
        if (!v28 || *(&v22 + 1) != *(&v24 + 1))
        {
          goto LABEL_83;
        }
      }

      v30 = v4[12];
      v31 = &v11[v30];
      v32 = &v8[v30];
      if ((vminv_u16(vmovn_s32(vceqq_f32(*v31, *v32))) & 1) == 0)
      {
        goto LABEL_83;
      }

      if (v31[1].f32[0] != v32[1].f32[0] || v31[1].f32[1] != v32[1].f32[1])
      {
        goto LABEL_83;
      }

      v34 = v4[13];
      v36 = *&v11[v34];
      v35 = *&v11[v34 + 8];
      v37 = v11[v34 + 16];
      v38 = &v8[v34];
      v40 = *&v8[v34];
      v39 = *&v8[v34 + 8];
      v41 = v38[16];
      if (!v37)
      {
        break;
      }

      if (v37 == 1)
      {
        if (v41 != 1)
        {
          goto LABEL_83;
        }

        goto LABEL_40;
      }

      if (v36 > 1)
      {
        v45 = v36 ^ 2 | v35;
        v48 = v40 == 2 && v39 == 0 && v41 == 2;
        v51 = v40 == 3 && v39 == 0 && v41 == 2;
        if (v45)
        {
          v43 = v51;
        }

        else
        {
          v43 = v48;
        }

        goto LABEL_47;
      }

      if (v36 | v35)
      {
        v42 = v40 == 1 && v39 == 0 && v41 == 2;
        goto LABEL_44;
      }

      if (v41 != 2 || v39 | v40)
      {
        goto LABEL_83;
      }

      sub_23E87E458(v8, &unk_27E35F660, &unk_23E9069D0);
      sub_23E87E458(v11, &unk_27E35F660, &unk_23E9069D0);
LABEL_48:
      v15 += v16;
      v14 += v16;
      result = 1;
      if (!--v12)
      {
        return result;
      }
    }

    if (v41)
    {
      goto LABEL_83;
    }

LABEL_40:
    if (*&v36 != *&v40 || *(&v36 + 1) != *(&v40 + 1) || *&v35 != *&v39)
    {
      goto LABEL_83;
    }

    v42 = *(&v35 + 1) == *(&v39 + 1);
LABEL_44:
    v43 = v42;
LABEL_47:
    sub_23E87E458(v8, &unk_27E35F660, &unk_23E9069D0);
    sub_23E87E458(v11, &unk_27E35F660, &unk_23E9069D0);
    if ((v43 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_48;
  }

  return 1;
}

uint64_t sub_23E8DD588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F690, &unk_23E906F50);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v37 = *(v9 + 72);
    while (1)
    {
      sub_23E8891B4(v14, v11, &unk_27E35F690, &unk_23E906F50);
      sub_23E8891B4(v15, v8, &unk_27E35F690, &unk_23E906F50);
      if ((sub_23E9006B4() & 1) == 0 || *&v11[v4[9]] != *&v8[v4[9]] || *&v11[v4[10]] != *&v8[v4[10]])
      {
LABEL_50:
        sub_23E87E458(v8, &unk_27E35F690, &unk_23E906F50);
        sub_23E87E458(v11, &unk_27E35F690, &unk_23E906F50);
        return 0;
      }

      v16 = v4[11];
      v17 = &v11[v16];
      v18 = &v8[v16];
      v19 = v18[8];
      if (v17[8])
      {
        if ((v18[8] & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v18[8])
        {
          goto LABEL_50;
        }

        v20 = *v17;
        if (*&v20 != COERCE_FLOAT(*v18) || *(&v20 + 1) != COERCE_FLOAT(HIDWORD(*v18)))
        {
          goto LABEL_50;
        }
      }

      v22 = v4[12];
      v23 = &v11[v22];
      v24 = &v8[v22];
      if (*v23 != *v24 || v23[1] != v24[1])
      {
        goto LABEL_50;
      }

      v38 = v14;
      v26 = &v11[v4[13]];
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = v26[16];
      sub_23E87E458(v11, &unk_27E35F690, &unk_23E906F50);
      v30 = &v8[v4[13]];
      v31 = *v30;
      v39 = *(v30 + 1);
      v32 = v30[16];
      sub_23E87E458(v8, &unk_27E35F690, &unk_23E906F50);
      if (v29)
      {
        if (v29 != 1)
        {
          if (v27 > 1)
          {
            if (v27 ^ 2 | v28)
            {
              if (v32 != 2)
              {
                return 0;
              }

              result = 0;
              if (v31 != 3)
              {
                return result;
              }
            }

            else
            {
              if (v32 != 2)
              {
                return 0;
              }

              result = 0;
              if (v31 != 2)
              {
                return result;
              }
            }
          }

          else
          {
            if (!(v27 | v28))
            {
              result = 0;
              if (v32 != 2)
              {
                return result;
              }

              v34 = v38;
              v35 = v39 | v31;
LABEL_46:
              if (v35)
              {
                return result;
              }

              goto LABEL_47;
            }

            if (v32 != 2)
            {
              return 0;
            }

            result = 0;
            if (v31 != 1)
            {
              return result;
            }
          }

          v34 = v38;
          v35 = v39;
          goto LABEL_46;
        }

        if (v32 != 1)
        {
          return 0;
        }
      }

      else if (v32)
      {
        return 0;
      }

      result = 0;
      if (*&v27 != *&v31)
      {
        return result;
      }

      if (*(&v27 + 1) != *(&v31 + 1))
      {
        return result;
      }

      if (*&v28 != *&v39)
      {
        return result;
      }

      v34 = v38;
      if (*(&v28 + 1) != *(&v39 + 1))
      {
        return result;
      }

LABEL_47:
      v15 += v37;
      v14 = v34 + v37;
      result = 1;
      if (!--v12)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_23E8DD958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6C0, &qword_23E9069E0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v50 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v51 = *(v9 + 72);
    while (1)
    {
      sub_23E8891B4(v14, v11, &unk_27E35F6C0, &qword_23E9069E0);
      sub_23E8891B4(v15, v8, &unk_27E35F6C0, &qword_23E9069E0);
      if ((sub_23E9006B4() & 1) == 0 || *&v11[v4[9]] != *&v8[v4[9]] || *&v11[v4[10]] != *&v8[v4[10]])
      {
        goto LABEL_84;
      }

      v16 = v4[11];
      v17 = &v11[v16];
      v18 = &v8[v16];
      v19 = *&v11[v16];
      v20 = *&v8[v16];
      v21 = v20 & 0xFF00000000;
      if ((~v19 & 0xFF00000000) != 0)
      {
        if (v21 == 0xFF00000000)
        {
          goto LABEL_84;
        }

        v22 = v17[12];
        v23 = *(v17 + 2);
        v24 = v18[12];
        v25 = *(v18 + 2);
        if (BYTE4(v19) > 1u)
        {
          if (BYTE4(v19) == 2)
          {
            if (BYTE4(v20) != 2)
            {
              goto LABEL_84;
            }
          }

          else if (BYTE4(v20) != 3)
          {
            goto LABEL_84;
          }
        }

        else if (BYTE4(v19))
        {
          if (BYTE4(v20) != 1)
          {
            goto LABEL_84;
          }
        }

        else if (BYTE4(v20))
        {
          goto LABEL_84;
        }

        if (*&v19 != *&v20)
        {
          goto LABEL_84;
        }

        v26 = v23 | (v22 << 32);
        v27 = v25 | (v24 << 32);
        if (BYTE4(v26) > 1u)
        {
          if (BYTE4(v26) == 2)
          {
            if (BYTE4(v27) != 2)
            {
              goto LABEL_84;
            }
          }

          else if (BYTE4(v27) != 3)
          {
            goto LABEL_84;
          }
        }

        else if (BYTE4(v26))
        {
          if (BYTE4(v27) != 1)
          {
            goto LABEL_84;
          }
        }

        else if (BYTE4(v27))
        {
          goto LABEL_84;
        }

        if (*&v26 != *&v27)
        {
          goto LABEL_84;
        }
      }

      else if (v21 != 0xFF00000000)
      {
        goto LABEL_84;
      }

      v28 = v4[12];
      v29 = &v11[v28];
      v30 = &v8[v28];
      v31 = *v29;
      v32 = v29[4];
      v33 = *(v29 + 2);
      v34 = v29[12];
      v35 = *v30;
      v36 = v30[4];
      v37 = *(v30 + 2);
      v38 = v30[12];
      if (v32 > 1)
      {
        if (v32 == 2)
        {
          if (v36 != 2)
          {
            goto LABEL_84;
          }
        }

        else if (v36 != 3)
        {
          goto LABEL_84;
        }
      }

      else if (v32)
      {
        if (v36 != 1)
        {
          goto LABEL_84;
        }
      }

      else if (v36)
      {
        goto LABEL_84;
      }

      if (v31 != v35)
      {
        goto LABEL_84;
      }

      if (v34 > 1)
      {
        if (v34 == 2)
        {
          if (v38 != 2)
          {
            goto LABEL_84;
          }
        }

        else if (v38 != 3)
        {
          goto LABEL_84;
        }
      }

      else if (v34)
      {
        if (v38 != 1)
        {
          goto LABEL_84;
        }
      }

      else if (v38)
      {
        goto LABEL_84;
      }

      if (v33 != v37)
      {
LABEL_84:
        sub_23E87E458(v8, &unk_27E35F6C0, &qword_23E9069E0);
        sub_23E87E458(v11, &unk_27E35F6C0, &qword_23E9069E0);
        return 0;
      }

      v52 = v15;
      v53 = v14;
      v39 = &v11[v4[13]];
      v40 = *v39;
      v41 = *(v39 + 1);
      v42 = v39[16];
      sub_23E87E458(v11, &unk_27E35F6C0, &qword_23E9069E0);
      v43 = &v8[v4[13]];
      v44 = *v43;
      v45 = *(v43 + 1);
      v46 = v43[16];
      sub_23E87E458(v8, &unk_27E35F6C0, &qword_23E9069E0);
      if (!v42)
      {
        break;
      }

      if (v42 == 1)
      {
        if (v46 != 1)
        {
          return 0;
        }

        goto LABEL_61;
      }

      if (v40 > 1)
      {
        if (v40 ^ 2 | v41)
        {
          if (v46 != 2)
          {
            return 0;
          }

          result = 0;
          if (v44 != 3)
          {
            return result;
          }
        }

        else
        {
          if (v46 != 2)
          {
            return 0;
          }

          result = 0;
          if (v44 != 2)
          {
            return result;
          }
        }

        goto LABEL_80;
      }

      if (v40 | v41)
      {
        if (v46 != 2)
        {
          return 0;
        }

        result = 0;
        if (v44 != 1)
        {
          return result;
        }

LABEL_80:
        v49 = v52;
        v48 = v53;
        if (v45)
        {
          return result;
        }

        goto LABEL_81;
      }

      result = 0;
      if (v46 != 2)
      {
        return result;
      }

      v49 = v52;
      v48 = v53;
      if (v45 | v44)
      {
        return result;
      }

LABEL_81:
      v15 = v49 + v51;
      v14 = v48 + v51;
      result = 1;
      if (!--v12)
      {
        return result;
      }
    }

    if (v46)
    {
      return 0;
    }

LABEL_61:
    result = 0;
    if (*&v40 != *&v44)
    {
      return result;
    }

    if (*(&v40 + 1) != *(&v44 + 1))
    {
      return result;
    }

    if (*&v41 != *&v45)
    {
      return result;
    }

    v49 = v52;
    v48 = v53;
    if (*(&v41 + 1) != *(&v45 + 1))
    {
      return result;
    }

    goto LABEL_81;
  }

  return 1;
}

uint64_t sub_23E8DDE68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6F0, qword_23E903D18);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v12 = &v84 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v87 = *(v10 + 72);
    v88 = v9;
    while (1)
    {
      sub_23E8891B4(v15, v12, &unk_27E35F6F0, qword_23E903D18);
      v89 = v15;
      v90 = v13;
      v91 = v16;
      sub_23E8891B4(v16, v8, &unk_27E35F6F0, qword_23E903D18);
      v17 = sub_23E9006B4();
      v18 = v88;
      if ((v17 & 1) == 0 || *&v12[v88[9]] != *&v8[v88[9]] || *&v12[v88[10]] != *&v8[v88[10]])
      {
LABEL_143:
        sub_23E87E458(v8, &unk_27E35F6F0, qword_23E903D18);
        sub_23E87E458(v12, &unk_27E35F6F0, qword_23E903D18);
        return 0;
      }

      v19 = v88[11];
      v20 = &v12[v19];
      v21 = &v8[v19];
      v22 = *&v12[v19 + 8];
      v23 = *&v8[v19 + 8];
      if (v12[v19 + 8] == -1)
      {
        if (v23 != 255)
        {
          goto LABEL_143;
        }

        goto LABEL_49;
      }

      if (v23 == 255)
      {
        goto LABEL_143;
      }

      v24 = *v20;
      v25 = v20[20];
      v26 = *(v20 + 4);
      v27 = *v21;
      v28 = v21[20];
      v29 = *(v21 + 4);
      if (!v22)
      {
        break;
      }

      if (v22 != 1)
      {
        if (v23 != 2)
        {
          goto LABEL_143;
        }

LABEL_21:
        if (*&v24 != *&v27)
        {
          goto LABEL_143;
        }

        goto LABEL_22;
      }

      if (v23 != 1)
      {
        goto LABEL_143;
      }

      v86 = v26;
      if (v24 > 1u)
      {
        if (v24 == 2)
        {
          v30 = 0xE400000000000000;
          v31 = 1952867692;
        }

        else
        {
          v30 = 0xE500000000000000;
          v31 = 0x7468676972;
        }
      }

      else if (v24)
      {
        v30 = 0xE800000000000000;
        v31 = 0x676E696C69617274;
      }

      else
      {
        v30 = 0xE700000000000000;
        v31 = 0x676E696461656CLL;
      }

      if (v27 > 1u)
      {
        if (v27 == 2)
        {
          v79 = 0xE400000000000000;
          v80 = 1952867692;
        }

        else
        {
          v79 = 0xE500000000000000;
          v80 = 0x7468676972;
        }
      }

      else if (v27)
      {
        v79 = 0xE800000000000000;
        v80 = 0x676E696C69617274;
      }

      else
      {
        v79 = 0xE700000000000000;
        v80 = 0x676E696461656CLL;
      }

      v81 = *(&v24 + 1);
      v82 = *(&v27 + 1);
      if (v31 == v80 && v30 == v79)
      {

        v26 = v86;
        if (v81 != v82)
        {
          goto LABEL_143;
        }
      }

      else
      {
        v85 = v25;
        v83 = sub_23E900E04();
        v25 = v85;

        v26 = v86;
        if ((v83 & 1) == 0 || v81 != v82)
        {
          goto LABEL_143;
        }
      }

LABEL_22:
      *(&v33 + 1) = v29 | (v28 << 32);
      *&v33 = v23;
      v32 = v33 >> 32;
      v34 = BYTE12(v33);
      *(&v33 + 1) = v26 | (v25 << 32);
      *&v33 = v22;
      v35 = v33 >> 32;
      if (!BYTE12(v33))
      {
        if (v34)
        {
          goto LABEL_143;
        }

        goto LABEL_43;
      }

      if (((v26 | (v25 << 32)) >> 32) != 1)
      {
        if (v34 != 2)
        {
          goto LABEL_143;
        }

LABEL_43:
        if (*&v35 != *&v32)
        {
          goto LABEL_143;
        }

        goto LABEL_49;
      }

      if (v34 != 1)
      {
        goto LABEL_143;
      }

      v36 = *(&v35 + 1);
      v37 = *(&v32 + 1);
      if (v35)
      {
        v38 = 0x6D6F74746F62;
      }

      else
      {
        v38 = 7368564;
      }

      if (v35)
      {
        v39 = 0xE600000000000000;
      }

      else
      {
        v39 = 0xE300000000000000;
      }

      if (v32)
      {
        v40 = 0x6D6F74746F62;
      }

      else
      {
        v40 = 7368564;
      }

      if (v32)
      {
        v41 = 0xE600000000000000;
      }

      else
      {
        v41 = 0xE300000000000000;
      }

      if (v38 == v40 && v39 == v41)
      {
      }

      else
      {
        v42 = sub_23E900E04();

        if ((v42 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      if (v36 != v37)
      {
        goto LABEL_143;
      }

LABEL_49:
      v43 = v18[12];
      v44 = &v8[v43];
      v45 = *&v12[v43];
      v46 = v12[v43 + 8];
      v47 = *&v12[v43 + 12];
      v48 = v12[v43 + 20];
      v49 = *&v8[v43];
      v50 = v44[8];
      v51 = *(v44 + 12);
      v52 = v44[20];
      if (!v46)
      {
        if (v44[8])
        {
          goto LABEL_143;
        }

        goto LABEL_58;
      }

      if (v46 != 1)
      {
        if (v50 != 2)
        {
          goto LABEL_143;
        }

LABEL_58:
        if (*&v45 != *&v49)
        {
          goto LABEL_143;
        }

        goto LABEL_76;
      }

      if (v50 != 1)
      {
        goto LABEL_143;
      }

      if (v45 > 1u)
      {
        if (v45 == 2)
        {
          v53 = 0xE400000000000000;
          v54 = 1952867692;
        }

        else
        {
          v53 = 0xE500000000000000;
          v54 = 0x7468676972;
        }
      }

      else if (v45)
      {
        v53 = 0xE800000000000000;
        v54 = 0x676E696C69617274;
      }

      else
      {
        v53 = 0xE700000000000000;
        v54 = 0x676E696461656CLL;
      }

      if (v49 > 1u)
      {
        if (v49 == 2)
        {
          v55 = 0xE400000000000000;
          v56 = 1952867692;
        }

        else
        {
          v55 = 0xE500000000000000;
          v56 = 0x7468676972;
        }
      }

      else if (v49)
      {
        v55 = 0xE800000000000000;
        v56 = 0x676E696C69617274;
      }

      else
      {
        v55 = 0xE700000000000000;
        v56 = 0x676E696461656CLL;
      }

      v57 = *(&v45 + 1);
      v58 = *(&v49 + 1);
      if (v54 == v56 && v53 == v55)
      {
      }

      else
      {
        v59 = sub_23E900E04();

        if ((v59 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      if (v57 != v58)
      {
        goto LABEL_143;
      }

LABEL_76:
      if (!v48)
      {
        if (v52)
        {
          goto LABEL_143;
        }

        goto LABEL_97;
      }

      if (v48 != 1)
      {
        if (v52 != 2)
        {
          goto LABEL_143;
        }

LABEL_97:
        if (*&v47 != *&v51)
        {
          goto LABEL_143;
        }

        goto LABEL_101;
      }

      if (v52 != 1)
      {
        goto LABEL_143;
      }

      if (v47)
      {
        v60 = 0x6D6F74746F62;
      }

      else
      {
        v60 = 7368564;
      }

      if (v47)
      {
        v61 = 0xE600000000000000;
      }

      else
      {
        v61 = 0xE300000000000000;
      }

      if (v51)
      {
        v62 = 0x6D6F74746F62;
      }

      else
      {
        v62 = 7368564;
      }

      if (v51)
      {
        v63 = 0xE600000000000000;
      }

      else
      {
        v63 = 0xE300000000000000;
      }

      if (v60 == v62 && v61 == v63)
      {
      }

      else
      {
        v64 = sub_23E900E04();

        if ((v64 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      if (*(&v47 + 1) != *(&v51 + 1))
      {
        goto LABEL_143;
      }

LABEL_101:
      v65 = &v12[v18[13]];
      v67 = *v65;
      v66 = *(v65 + 1);
      v68 = v65[16];
      sub_23E87E458(v12, &unk_27E35F6F0, qword_23E903D18);
      v69 = &v8[v18[13]];
      v71 = *v69;
      v70 = *(v69 + 1);
      v72 = v69[16];
      sub_23E87E458(v8, &unk_27E35F6F0, qword_23E903D18);
      if (!v68)
      {
        if (v72)
        {
          return 0;
        }

LABEL_106:
        result = 0;
        if (*&v67 != *&v71)
        {
          return result;
        }

        if (*(&v67 + 1) != *(&v71 + 1))
        {
          return result;
        }

        if (*&v66 != *&v70)
        {
          return result;
        }

        v74 = *(&v66 + 1) == *(&v70 + 1);
        v75 = v89;
        v76 = v90;
        v77 = v91;
        if (!v74)
        {
          return result;
        }

        goto LABEL_126;
      }

      if (v68 == 1)
      {
        if (v72 != 1)
        {
          return 0;
        }

        goto LABEL_106;
      }

      if (v67 > 1)
      {
        if (v67 ^ 2 | v66)
        {
          v76 = v90;
          v77 = v91;
          if (v72 != 2)
          {
            return 0;
          }

          result = 0;
          if (v71 != 3)
          {
            return result;
          }
        }

        else
        {
          v76 = v90;
          v77 = v91;
          if (v72 != 2)
          {
            return 0;
          }

          result = 0;
          if (v71 != 2)
          {
            return result;
          }
        }

        goto LABEL_125;
      }

      if (v67 | v66)
      {
        v76 = v90;
        v77 = v91;
        if (v72 != 2)
        {
          return 0;
        }

        result = 0;
        if (v71 != 1)
        {
          return result;
        }

LABEL_125:
        v75 = v89;
        if (v70)
        {
          return result;
        }

        goto LABEL_126;
      }

      result = 0;
      v76 = v90;
      v77 = v91;
      if (v72 != 2)
      {
        return result;
      }

      v78 = v70 | v71;
      v75 = v89;
      if (v78)
      {
        return result;
      }

LABEL_126:
      v16 = v77 + v87;
      v15 = v75 + v87;
      result = 1;
      v13 = v76 - 1;
      if (!v13)
      {
        return result;
      }
    }

    if (v23)
    {
      goto LABEL_143;
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t sub_23E8DE708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpriteSheetAnimation();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v12 = &v56 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v60 = *(v10 + 72);
    v61 = v9;
    v57 = v8;
    v58 = &v56 - v11;
    while (1)
    {
      sub_23E8DF678(v15, v12);
      v62 = v16;
      v63 = v15;
      sub_23E8DF678(v16, v8);
      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      v19 = *(v12 + 4);
      v20 = v12[40];
      v21 = v12[41];
      v23 = *(v8 + 2);
      v22 = *(v8 + 3);
      v24 = *(v8 + 4);
      v25 = v8[40];
      v26 = v8[41];
      if (*v12 != *v8 || *(v12 + 1) != *(v8 + 1))
      {
        v59 = v13;
        v27 = v26;
        v28 = v22;
        v29 = v25;
        v30 = sub_23E900E04();
        v25 = v29;
        v22 = v28;
        v8 = v57;
        v12 = v58;
        v26 = v27;
        v13 = v59;
        if ((v30 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      if (v20)
      {
        if ((v25 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v25)
        {
          goto LABEL_74;
        }

        v31 = *&v18 == *&v23 && *(&v18 + 1) == *(&v23 + 1);
        v32 = v31 && *&v17 == *&v22;
        v33 = v32 && *(&v17 + 1) == *(&v22 + 1);
        if (!v33 || v19 != v24)
        {
          goto LABEL_74;
        }
      }

      v35 = v21 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
      v36 = v21 ? 0xEA00000000004745 : 0xE900000000000067;
      v37 = v26 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
      v38 = v26 ? 0xEA00000000004745 : 0xE900000000000067;
      if (v35 == v37 && v36 == v38)
      {
      }

      else
      {
        v39 = sub_23E900E04();

        if ((v39 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      v40 = *(v61 + 20);
      v41 = &v12[v40];
      v42 = &v8[v40];
      if ((sub_23E9006B4() & 1) == 0 || (v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F1C8, &qword_23E906930), *&v41[v43[9]] != *&v42[v43[9]]) || (v44 = v43, *&v41[v43[10]] != *&v42[v43[10]]) || v41[v43[11]] != v42[v43[11]])
      {
LABEL_74:
        sub_23E8D0D1C(v8);
        sub_23E8D0D1C(v12);
        return 0;
      }

      v45 = &v41[v43[13]];
      v46 = *v45;
      v47 = *(v45 + 1);
      v48 = v45[16];
      sub_23E8D0D1C(v12);
      v49 = &v42[v44[13]];
      v51 = *v49;
      v50 = *(v49 + 1);
      v52 = v49[16];
      sub_23E8D0D1C(v8);
      if (!v48)
      {
        break;
      }

      if (v48 == 1)
      {
        if (v52 != 1)
        {
          return 0;
        }

        goto LABEL_51;
      }

      if (v46 > 1)
      {
        if (v46 ^ 2 | v47)
        {
          if (v52 != 2)
          {
            return 0;
          }

          result = 0;
          if (v51 != 3)
          {
            return result;
          }
        }

        else
        {
          if (v52 != 2)
          {
            return 0;
          }

          result = 0;
          if (v51 != 2)
          {
            return result;
          }
        }

        goto LABEL_70;
      }

      if (v46 | v47)
      {
        if (v52 != 2)
        {
          return 0;
        }

        result = 0;
        if (v51 != 1)
        {
          return result;
        }

LABEL_70:
        v55 = v62;
        v54 = v63;
        if (v50)
        {
          return result;
        }

        goto LABEL_71;
      }

      result = 0;
      if (v52 != 2)
      {
        return result;
      }

      v55 = v62;
      v54 = v63;
      if (v50 | v51)
      {
        return result;
      }

LABEL_71:
      v16 = v55 + v60;
      v15 = v54 + v60;
      result = 1;
      if (!--v13)
      {
        return result;
      }
    }

    if (v52)
    {
      return 0;
    }

LABEL_51:
    result = 0;
    if (*&v46 != *&v51)
    {
      return result;
    }

    if (*(&v46 + 1) != *(&v51 + 1))
    {
      return result;
    }

    if (*&v47 != *&v50)
    {
      return result;
    }

    v55 = v62;
    v54 = v63;
    if (*(&v47 + 1) != *(&v50 + 1))
    {
      return result;
    }

    goto LABEL_71;
  }

  return 1;
}

uint64_t sub_23E8DEB78(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v5, a1);
  if (EnumCaseMultiPayload == 1)
  {
    return 0x6574616D696E61;
  }

  else
  {
    return 0x6E41657461657263;
  }
}

uint64_t sub_23E8DEC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a1;
  v54 = a2;
  v48 = *(a4 + 8);
  v5 = type metadata accessor for Animation();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = type metadata accessor for RenderAnimationActionType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v49 = *(TupleTypeMetadata2 - 8);
  v18 = *(v49 + 64);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v21 = &v47 - v20;
  v22 = &v47 + *(v19 + 48) - v20;
  v52 = v10;
  v23 = *(v10 + 16);
  v23(&v47 - v20, v53, v9);
  v23(v22, v54, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23(v16, v21, v9);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = v50;
      v38 = v51;
      (*(v50 + 32))(v8, v22, v51);
      v36 = static Animation.== infix(_:_:)(v16, v8, a3, v48);
      v40 = *(v39 + 8);
      v40(v8, v38);
      v40(v16, v38);
      v37 = v52;
      goto LABEL_32;
    }

    (*(v50 + 8))(v16, v51);
    goto LABEL_12;
  }

  v23(v14, v21, v9);
  v24 = v14[1];
  v25 = *(v14 + 1);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    v36 = 0;
    v37 = v49;
    v9 = TupleTypeMetadata2;
    goto LABEL_32;
  }

  v26 = v22[1];
  v27 = *(v22 + 1);
  v28 = *v14;
  v29 = *v22;
  v30 = sub_23E89CB38(v28);
  v32 = v31;
  if (v30 == sub_23E89CB38(v29) && v32 == v33)
  {

LABEL_15:
    v41 = 0xEB00000000646574;
    v42 = 0x616D696E416E6F6ELL;
    if (v24)
    {
      if (v24 == 1)
      {
        v43 = 0xE400000000000000;
        v44 = 1701015151;
        v37 = v52;
        if (!v26)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v44 = 0x6E69746165706572;
        v43 = 0xE900000000000067;
        v37 = v52;
        if (!v26)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v44 = 0x616D696E416E6F6ELL;
      v43 = 0xEB00000000646574;
      v37 = v52;
      if (!v26)
      {
        goto LABEL_24;
      }
    }

    if (v26 != 1)
    {
      v41 = 0xE900000000000067;
      if (v44 != 0x6E69746165706572)
      {
        goto LABEL_29;
      }

LABEL_27:
      if (v43 == v41)
      {

LABEL_30:
        v36 = sub_23E8DCB90(v25, v27);

        goto LABEL_32;
      }

LABEL_29:
      v45 = sub_23E900E04();

      if ((v45 & 1) == 0)
      {

        v36 = 0;
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v41 = 0xE400000000000000;
    v42 = 1701015151;
LABEL_24:
    if (v44 != v42)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v35 = sub_23E900E04();

  if (v35)
  {
    goto LABEL_15;
  }

  v36 = 0;
  v37 = v52;
LABEL_32:
  (*(v37 + 8))(v21, v9);
  return v36 & 1;
}

uint64_t sub_23E8DF1BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = *(*(a2 + 24) + 8);
  v13 = type metadata accessor for Animation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v33 - v17;
  v19 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v3, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v21[1];
    v24 = *(v21 + 1);
    v25 = *v21;
    MEMORY[0x23EF17B90](1);
    sub_23E89CB38(v25);
    sub_23E900904();

    sub_23E900904();

    MEMORY[0x23EF17B90](*(v24 + 16));
    v26 = *(v24 + 16);
    if (v26)
    {
      v27 = v24;
      v28 = *(v7 + 16);
      v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v33[1] = v27;
      v30 = v27 + v29;
      v31 = *(v7 + 72);
      do
      {
        v28(v10, v30, v6);
        sub_23E8DF634(&qword_27E35E5B8);
        sub_23E900824();
        (*(v7 + 8))(v10, v6);
        v30 += v31;
        --v26;
      }

      while (v26);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v21, v13);
    MEMORY[0x23EF17B90](0);
    Animation.hash(into:)(a1, v13);
    return (*(v14 + 8))(v18, v13);
  }
}

uint64_t sub_23E8DF560(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E8DF1BC(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E8DF5B0(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  sub_23E8DF1BC(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8DF634(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23E9006D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E8DF678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpriteSheetAnimation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23E8DF6DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  type metadata accessor for Animation();
  if (v3 <= 0x3F)
  {
    sub_23E8DFB78();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_23E8DF758(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
  v7 = *(*(a3 + 16) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v9 + v8;
  if (!*(v7 + 84))
  {
    ++v10;
  }

  v11 = ((v9 + ((v10 + ((((((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8)) & ~v8) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 17;
  v12 = 16;
  if (v11 > 0x10)
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 254) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v17 < 2)
    {
LABEL_27:
      v19 = *(a1 + v12);
      if (v19 >= 2)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_16:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 255;
}

void sub_23E8DF928(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23E9006D4() - 8);
  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 80);
  v11 = (((((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
  v12 = *(v9 + 64);
  v13 = v12 + v10;
  if (!*(v9 + 84))
  {
    ++v13;
  }

  v14 = ((v12 + ((v13 + v11) & ~v10) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 17;
  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  v15 = v14 + 1;
  if (a3 < 0xFF)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 + ~(-1 << (8 * v15)) - 254) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (a2 > 0xFE)
  {
    v17 = a2 - 255;
    if (v15 >= 4)
    {
      bzero(a1, v14 + 1);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (v14 != -1)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
LABEL_41:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v16 <= 1)
  {
    if (v16)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v14] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v16 == 2)
  {
    *&a1[v15] = 0;
    goto LABEL_26;
  }

  *&a1[v15] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

void sub_23E8DFB78()
{
  if (!qword_27E35F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F480, qword_23E906F80);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E35F478);
    }
  }
}

uint64_t sub_23E8DFBF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701015151;
  if (v2 != 1)
  {
    v4 = 0x6E69746165706572;
    v3 = 0xE900000000000067;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x616D696E416E6F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000646574;
  }

  v7 = 0xE400000000000000;
  v8 = 1701015151;
  if (*a2 != 1)
  {
    v8 = 0x6E69746165706572;
    v7 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x616D696E416E6F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E900E04();
  }

  return v11 & 1;
}

uint64_t sub_23E8DFCF8()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8DFDA0()
{
  *v0;
  *v0;
  sub_23E900904();
}

uint64_t sub_23E8DFE34()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8DFED8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23E8DFFD4();
  *a2 = result;
  return result;
}

void sub_23E8DFF08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0xE400000000000000;
  v5 = 1701015151;
  if (v2 != 1)
  {
    v5 = 0x6E69746165706572;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616D696E416E6F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_23E8DFF80()
{
  result = qword_27E35F488;
  if (!qword_27E35F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F488);
  }

  return result;
}

uint64_t sub_23E8DFFD4()
{
  v0 = sub_23E900DA4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t VerticalEdge.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x676E696461656CLL;
  v2 = 1952867692;
  if (a1 != 2)
  {
    v2 = 0x7468676972;
  }

  if (a1)
  {
    v1 = 0x676E696C69617274;
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

uint64_t HorizontalEdge.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D6F74746F62;
  }

  else
  {
    return 7368564;
  }
}

AirPlayKit::HorizontalEdge_optional __swiftcall HorizontalEdge.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_23E900DA4();

  if (v1 == 1)
  {
    v2.value = AirPlayKit_HorizontalEdge_bottom;
  }

  else
  {
    v2.value = AirPlayKit_HorizontalEdge_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E8E0110(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D6F74746F62;
  }

  else
  {
    v4 = 7368564;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6D6F74746F62;
  }

  else
  {
    v6 = 7368564;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23E900E04();
  }

  return v9 & 1;
}

uint64_t sub_23E8E01AC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23E900DA4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_23E8E020C(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 0x6D6F74746F62;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23E8E0244(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x676E696461656CLL;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0xE400000000000000;
  v6 = 1952867692;
  if (v3 != 2)
  {
    v6 = 0x7468676972;
    v5 = 0xE500000000000000;
  }

  v7 = 0x676E696C69617274;
  if (*a1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE700000000000000;
  v11 = 0xE400000000000000;
  v12 = 1952867692;
  if (*a2 != 2)
  {
    v12 = 0x7468676972;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x676E696C69617274;
    v10 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_23E900E04();
  }

  return v15 & 1;
}

uint64_t sub_23E8E0370@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s10AirPlayKit12VerticalEdgeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_23E8E03A0(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x676E696461656CLL;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (*v1 != 2)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696C69617274;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23E8E0414()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E048C()
{
  *v0;
  sub_23E900904();
}

uint64_t sub_23E8E04F0()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E0564()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E061C()
{
  *v0;
  *v0;
  *v0;
  sub_23E900904();
}

uint64_t sub_23E8E06C0()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t _s10AirPlayKit12VerticalEdgeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_23E900DA4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23E8E07C4()
{
  result = qword_27E35F490;
  if (!qword_27E35F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F490);
  }

  return result;
}

unint64_t sub_23E8E0818(uint64_t a1)
{
  result = sub_23E8E0840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8E0840()
{
  result = qword_27E35F498;
  if (!qword_27E35F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F498);
  }

  return result;
}

unint64_t sub_23E8E0898()
{
  result = qword_27E35F4A0;
  if (!qword_27E35F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4A0);
  }

  return result;
}

unint64_t sub_23E8E08EC(uint64_t a1)
{
  result = sub_23E8E0914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8E0914()
{
  result = qword_27E35F4A8;
  if (!qword_27E35F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4A8);
  }

  return result;
}

unint64_t sub_23E8E099C()
{
  result = qword_27E35F4B0;
  if (!qword_27E35F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4B0);
  }

  return result;
}

uint64_t sub_23E8E09F0()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E0B0C()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E0C24()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t TextContent.init(content:font:color:numberOfLines:alignment:textLayout:truncationMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11)
{
  v16 = a3[1];
  v27 = *a3;
  v26 = *(a3 + 4);
  v17 = *a8;
  v18 = *a10;
  v19 = *a11;
  result = sub_23E900914();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = result;
    v25 = v17;
    result = sub_23E900914();
    if ((result & 0x8000000000000000) == 0)
    {
      v22 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E860, &unk_23E905180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E902EF0;
      *(inited + 32) = v27;
      *(inited + 40) = v16;
      *(inited + 48) = v26;
      *(inited + 52) = 4;
      *(inited + 56) = 0;
      *(inited + 64) = v21;
      *(inited + 72) = a4;
      *(inited + 80) = a5;
      *(inited + 88) = a6;
      *(inited + 92) = 5;
      *(inited + 96) = 0;
      *(inited + 104) = v22;
      v24 = sub_23E8950E0(inited);
      swift_setDeallocating();
      result = swift_arrayDestroy();
      *a9 = v25;
      *(a9 + 8) = a1;
      *(a9 + 16) = a2;
      *(a9 + 24) = a7;
      *(a9 + 32) = v18;
      *(a9 + 33) = v19;
      *(a9 + 40) = v24;
      return result;
    }
  }

  __break(1u);
  return result;
}

void TextContent.init(_:numberOfLines:alignment:textLayout:truncationMode:)(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = [a1 string];
  v13 = sub_23E900884();
  v15 = v14;

  *(a6 + 8) = v13;
  *(a6 + 16) = v15;
  v16 = sub_23E896728();

  *(a6 + 40) = v16;
  *(a6 + 24) = a2;
  *a6 = v9;
  *(a6 + 32) = v10;
  *(a6 + 33) = v11;
}

uint64_t TextContent.init(content:attributes:numberOfLines:alignment:textLayout:truncationMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  v10 = *a7;
  *(a8 + 8) = result;
  *(a8 + 16) = a2;
  *(a8 + 40) = a3;
  *(a8 + 24) = a4;
  *a8 = v8;
  *(a8 + 32) = v9;
  *(a8 + 33) = v10;
  return result;
}

unint64_t TextContent.TruncationMode.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x725764726F577962;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7257726168437962;
  if (v1 != 1)
  {
    v5 = 0x697070696C437962;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TextContent.Alignment.rawValue.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7468676972;
  v4 = 0x656966697473756ALL;
  if (v1 != 3)
  {
    v4 = 0x6C61727574616ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6563;
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

AirPlayKit::TextContent::Alignment_optional __swiftcall TextContent.Alignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23E8E1144()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E121C()
{
  *v0;
  *v0;
  *v0;
  sub_23E900904();
}

uint64_t sub_23E8E12E0()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

void sub_23E8E13C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  v7 = 0xE900000000000064;
  v8 = 0x656966697473756ALL;
  if (v2 != 3)
  {
    v8 = 0x6C61727574616ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
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

AirPlayKit::TextContent::Layout_optional __swiftcall TextContent.Layout.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TextContent.Layout.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x7865547473726966;
  if (v1 != 3)
  {
    v3 = 0x747865547473616CLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_23E8E156C()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8E1664()
{
  *v0;
  *v0;
  sub_23E900904();
}

uint64_t sub_23E8E1748()
{
  v1 = *v0;
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

void sub_23E8E1848(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0x800000023E908620;
  v6 = 0xEC00000070614374;
  v7 = 0x7865547473726966;
  if (v2 != 3)
  {
    v7 = 0x747865547473616CLL;
    v6 = 0xEB00000000706143;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000023E908600;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

AirPlayKit::TextContent::TruncationMode_optional __swiftcall TextContent.TruncationMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23E8E196C()
{
  *v0;
  *v0;
  *v0;
  sub_23E900904();
}

uint64_t TextContent.content.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t TextContent.hash(into:)(__int128 *a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  v7 = *(v1 + 40);
  *v1;
  *v1;
  sub_23E900904();

  sub_23E900904();
  MEMORY[0x23EF17B90](v4);
  sub_23E900904();

  sub_23E900904();

  return sub_23E8E1F30(a1, v7);
}

uint64_t TextContent.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 3);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_23E900EB4();
  TextContent.hash(into:)(v6);
  return sub_23E900F14();
}

uint64_t sub_23E8E1E10()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 3);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_23E900EB4();
  TextContent.hash(into:)(v6);
  return sub_23E900F14();
}

uint64_t sub_23E8E1E80()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 3);
  v3 = *(v0 + 16);
  v4 = *(v0 + 5);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_23E900EB4();
  TextContent.hash(into:)(v6);
  return sub_23E900F14();
}

BOOL sub_23E8E1EE8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_23E8EBAF0(v7, v8);
}

uint64_t sub_23E8E1F30(__int128 *a1, uint64_t a2)
{
  v3 = a1[3];
  v28 = a1[2];
  v29 = v3;
  v30 = *(a1 + 8);
  v4 = a1[1];
  v26 = *a1;
  v27 = v4;
  sub_23E900F14();
  v22 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  for (i = 0; v8; v11 = v21 ^ v24)
  {
    v24 = v11;
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(v22 + 48) + 40 * (v14 | (v13 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v23 = *(v15 + 32);
    v20 = *(v15 + 20);
    sub_23E900EB4();
    sub_23E88FDE0(v16, v17, v18, v20);
    TextAttribute.hash(into:)(v25);
    MEMORY[0x23EF17B90](v19);
    MEMORY[0x23EF17B90](v23);
    v21 = sub_23E900F14();
    result = sub_23E88FDF8(v16, v17, v18, v20);
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x23EF17B90](v11);
    }

    v8 = *(v5 + 8 * v13);
    ++i;
    if (v8)
    {
      v24 = v11;
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23E8E20E4()
{
  result = qword_27E35F4B8;
  if (!qword_27E35F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4B8);
  }

  return result;
}

unint64_t sub_23E8E213C()
{
  result = qword_27E35F4C0;
  if (!qword_27E35F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4C0);
  }

  return result;
}

unint64_t sub_23E8E2194()
{
  result = qword_27E35F4C8;
  if (!qword_27E35F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4C8);
  }

  return result;
}

unint64_t sub_23E8E21EC()
{
  result = qword_27E35F4D0;
  if (!qword_27E35F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4D0);
  }

  return result;
}

unint64_t sub_23E8E2240(uint64_t a1)
{
  result = sub_23E8A7EFC();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23E8E227C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23E8E22C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextContent.TruncationMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextContent.TruncationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

double static RenderNode<>.image(identifier:content:tintColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v13 = a6 + v12[9];
  sub_23E893B84(a2, v13);
  v14 = v13 + *(type metadata accessor for ImageContent(0) + 20);
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = a5;
  v15 = sub_23E9006D4();
  (*(*(v15 - 8) + 16))(a6, a1, v15);
  *(a6 + v12[10]) = 0;
  v16 = (a6 + v12[11]);
  *v16 = 0;
  v16[1] = 0;
  *(v16 + 14) = 0;
  v17 = a6 + v12[12];
  *v17 = 0;
  *(v17 + 12) = 0;
  *(v17 + 8) = 0;
  v18 = a6 + v12[13];
  *v18 = 0x3F0000003F000000;
  *(v18 + 8) = 0;
  v19 = a6 + v12[14];
  *&result = 1065353216;
  *v19 = xmmword_23E903320;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v21 = a6 + v12[15];
  *v21 = 1065353216;
  *(v21 + 8) = 0;
  v22 = a6 + v12[16];
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 2;
  *(a6 + v12[17]) = 0;
  v23 = (a6 + v12[18]);
  *v23 = 0;
  v23[1] = 0;
  return result;
}

uint64_t RenderNode<>.withImageContent(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ImageContent(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v11 = v2 + *(v6 + 28) + *(v10 + 36);
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  sub_23E893B84(a1, v9);
  v15 = &v9[*(v6 + 28)];
  *v15 = v12;
  *(v15 + 1) = v13;
  v15[16] = v14;
  sub_23E8E27EC(v2, a2);
  v16 = *(v10 + 36);
  sub_23E8E285C(a2 + v16);
  return sub_23E8E28B8(v9, a2 + v16);
}

uint64_t RenderNode<>.withImageContent(_:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for ImageContent(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E893B84(a1, v15);
  v16 = &v15[*(v12 + 28)];
  *v16 = a2;
  *(v16 + 1) = a3;
  v16[16] = a4;
  sub_23E8E27EC(v5, a5);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90) + 36);
  sub_23E8E285C(a5 + v17);
  return sub_23E8E28B8(v15, a5 + v17);
}

uint64_t sub_23E8E27EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8E285C(uint64_t a1)
{
  v2 = type metadata accessor for ImageContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E8E28B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E8E2920()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = v0[3];
  v4 = v0[4];
  v11 = *(v0 + 44);
  v5 = *(v0 + 52);
  v12 = *(v0 + 61);
  v6 = *(v0 + 40);
  v7 = *(v0 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E9075F0;
  *(inited + 32) = 0x6E615265756C6176;
  *(inited + 40) = 0xEA00000000006567;
  v13 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F4E0, &qword_23E907658);
  sub_23E8E2C54();
  sub_23E900C64();
  strcpy((inited + 88), "definedRange");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  v14 = v0[1];
  sub_23E900C64();
  *(inited + 144) = 0x6874646977;
  *(inited + 152) = 0xE500000000000000;
  sub_23E900C64();
  *(inited + 200) = 0x737569646172;
  *(inited + 208) = 0xE600000000000000;
  sub_23E900C64();
  *(inited + 256) = 0x726F6C6F63;
  *(inited + 264) = 0xE500000000000000;
  sub_23E8F6110(v3, v4, v6);
  sub_23E900C64();
  *(inited + 312) = 0x6F6C6F4365736162;
  *(inited + 320) = 0xE900000000000072;
  sub_23E8F6110(v11, v5, v7);
  sub_23E900C64();
  *(inited + 368) = 7364963;
  *(inited + 376) = 0xE300000000000000;
  sub_23E8E2CD0();
  sub_23E900C64();
  v9 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v9;
}

unint64_t sub_23E8E2BD0(uint64_t a1)
{
  *(a1 + 8) = sub_23E8AE8AC();
  result = sub_23E8E2C00();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E8E2C00()
{
  result = qword_27E35F4D8;
  if (!qword_27E35F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4D8);
  }

  return result;
}

unint64_t sub_23E8E2C54()
{
  result = qword_27E35F4E8;
  if (!qword_27E35F4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35F4E0, &qword_23E907658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F4E8);
  }

  return result;
}

unint64_t sub_23E8E2CD0()
{
  result = qword_27E35F4F0[0];
  if (!qword_27E35F4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E35F4F0);
  }

  return result;
}

uint64_t static Animation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v53 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23E900BD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v17 = *(v54 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v45 - v18;
  if ((sub_23E9006B4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = type metadata accessor for Animation();
  if (*(a1 + v20[9]) != *(a2 + v20[9]) || *(a1 + v20[10]) != *(a2 + v20[10]))
  {
    goto LABEL_13;
  }

  v50 = a4;
  v51 = a2;
  v21 = v12;
  v22 = v20[11];
  v23 = a1;
  v24 = *(TupleTypeMetadata2 + 48);
  v48 = v21;
  v25 = *(v21 + 16);
  v45 = v23;
  v46 = v20;
  v25(v19, v23 + v22, v11);
  v52 = v24;
  v26 = &v19[v24];
  v27 = v51;
  v47 = v25;
  v25(v26, v51 + v22, v11);
  v49 = v8;
  v28 = *(v8 + 48);
  if (v28(v19, 1, a3) == 1)
  {
    if (v28(&v19[v52], 1, a3) == 1)
    {
      (*(v48 + 8))(v19, v11);
      v29 = *(*(v50 + 8) + 8);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v47(v15, v19, v11);
  v30 = v52;
  if (v28(&v19[v52], 1, a3) == 1)
  {
    (*(v49 + 8))(v15, a3);
LABEL_9:
    (*(v54 + 8))(v19, TupleTypeMetadata2);
LABEL_13:
    v43 = 0;
    return v43 & 1;
  }

  v31 = v49;
  v32 = v53;
  (*(v49 + 32))(v53, &v19[v30], a3);
  v33 = *(*(v50 + 8) + 8);
  v34 = sub_23E900844();
  v35 = *(v31 + 8);
  v35(v32, a3);
  v35(v15, a3);
  (*(v48 + 8))(v19, v11);
  if ((v34 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v36 = v45;
  v37 = v46;
  v38 = v46[12];
  if ((sub_23E900844() & 1) == 0)
  {
    goto LABEL_13;
  }

  v39 = v37[13];
  v40 = *(v36 + v39 + 16);
  v57 = *(v36 + v39);
  v58 = v40;
  v41 = (v27 + v39);
  v42 = *(v41 + 16);
  v55 = *v41;
  v56 = v42;
  v43 = _s10AirPlayKit14AnimationCurveO2eeoiySbAC_ACtFZ_0(&v57, &v55);
  return v43 & 1;
}

uint64_t Animation.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E9006D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Animation.fromValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = *(a1 + 16);
  v6 = sub_23E900BD4();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

__n128 Animation.curve.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t Animation.init(identifier:duration:delay:toValue:fromValue:curve:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 16);
  v18 = sub_23E9006D4();
  (*(*(v18 - 8) + 32))(a6, a1, v18);
  v19 = type metadata accessor for Animation();
  *(a6 + v19[9]) = a7;
  (*(*(a5 - 8) + 32))(a6 + v19[12], a2, a5);
  *(a6 + v19[10]) = a8;
  v20 = v19[11];
  v21 = sub_23E900BD4();
  result = (*(*(v21 - 8) + 32))(a6 + v20, a3, v21);
  v23 = a6 + v19[13];
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  return result;
}

uint64_t Animation.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_23E9006D4();
  sub_23E88206C();
  sub_23E900824();
  v5 = *(v2 + *(a2 + 36));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v5);
  v6 = *(v2 + *(a2 + 40));
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x23EF17BC0](*&v6);
  v7 = *(a2 + 44);
  v8 = *(a2 + 16);
  sub_23E900BD4();
  v9 = *(*(a2 + 24) + 8);
  sub_23E900BE4();
  v10 = v3 + *(a2 + 48);
  sub_23E900824();
  v11 = v3 + *(a2 + 52);
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = *(v11 + 16);
  if (!v14)
  {
    v15 = 4;
    goto LABEL_9;
  }

  if (v14 == 1)
  {
    v15 = 5;
LABEL_9:
    MEMORY[0x23EF17B90](v15);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }

  if (v13 > 1)
  {
    if (v13 ^ 2 | v12)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = (v13 | v12) != 0;
  }

  return MEMORY[0x23EF17B90](v17);
}

uint64_t Animation.hashValue.getter(uint64_t a1)
{
  sub_23E900EB4();
  Animation.hash(into:)(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E8E3640(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  Animation.hash(into:)(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8E36B4(uint64_t a1)
{
  result = sub_23E9006D4();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_23E900BD4();
    if (v5 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23E8E3774(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_23E9006D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v10)
  {
    v14 = v10 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v8)
  {
    v15 = *(v7 + 84);
  }

  else
  {
    v15 = v14;
  }

  if (v10 > v15)
  {
    v15 = *(v9 + 84);
  }

  if (v15 <= 0xFD)
  {
    v15 = 253;
  }

  if (v10)
  {
    v16 = *(v9 + 64);
  }

  else
  {
    v16 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v12 + 8;
  v18 = v16 + v12;
  v19 = v13 + 3;
  if (v15 < a2)
  {
    v20 = ((v19 + ((v18 + ((v17 + ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + 17;
    if (v20 <= 3)
    {
      v21 = ((a2 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *&a1[v20];
        if (*&a1[v20])
        {
          goto LABEL_30;
        }
      }

      else
      {
        v24 = *&a1[v20];
        if (v24)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v23)
    {
      v24 = a1[v20];
      if (a1[v20])
      {
LABEL_30:
        v25 = (v24 - 1) << (8 * v20);
        if (v20 <= 3)
        {
          v26 = *a1;
        }

        else
        {
          v25 = 0;
          v26 = *a1;
        }

        return v15 + (v26 | v25) + 1;
      }
    }
  }

  if (v8 == v15)
  {
    v27 = *(v7 + 48);

    return v27(a1, v8, v6);
  }

  v29 = (v17 + (((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12;
  if (v14 == v15)
  {
    if (v10 >= 2)
    {
      v32 = (*(v9 + 48))(v29);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = (v18 + v29) & ~v12;
  if (v10 == v15)
  {
    v31 = *(v9 + 48);

    return v31(v30);
  }

  else
  {
    v33 = *(((v19 + v30) & 0xFFFFFFFFFFFFFFFCLL) + 16);
    if (v33 > 2)
    {
      return (v33 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_23E8E3A38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_23E9006D4();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 64);
  v15 = *(v12 + 80);
  v16 = *(v12 + 64);
  if (v13)
  {
    v17 = v13 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v11)
  {
    v18 = *(v10 + 84);
  }

  else
  {
    v18 = v17;
  }

  if (v13 > v18)
  {
    v18 = *(v12 + 84);
  }

  if (v18 <= 0xFD)
  {
    v18 = 253;
  }

  if (v13)
  {
    v19 = *(v12 + 64);
  }

  else
  {
    v19 = v16 + 1;
  }

  v20 = v19 + v15;
  v21 = v16 + 3;
  v22 = ((v21 + ((v20 + ((v15 + 8 + ((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFFCLL) + 17;
  if (v18 < a3)
  {
    if (v22 <= 3)
    {
      v23 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v9 = v24;
    }

    else
    {
      v9 = 0;
    }
  }

  if (v18 < a2)
  {
    v25 = ~v18 + a2;
    bzero(a1, ((v21 + ((v20 + ((v15 + 8 + ((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v15)) & 0xFFFFFFFFFFFFFFFCLL) + 17);
    if (v22 <= 3)
    {
      v26 = (v25 >> 8) + 1;
    }

    else
    {
      v26 = 1;
    }

    if (v22 <= 3)
    {
      *a1 = v25;
      if (v9 > 1)
      {
LABEL_32:
        if (v9 == 2)
        {
          *&a1[v22] = v26;
        }

        else
        {
          *&a1[v22] = v26;
        }

        return;
      }
    }

    else
    {
      *a1 = v25;
      if (v9 > 1)
      {
        goto LABEL_32;
      }
    }

    if (v9)
    {
      a1[v22] = v26;
    }

    return;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (v9 == 2)
  {
    *&a1[v22] = 0;
    goto LABEL_43;
  }

  *&a1[v22] = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v11 == v18)
  {
    v27 = *(v10 + 56);

    v27(a1, a2, v11, v8);
  }

  else
  {
    v28 = (v15 + 8 + (((&a1[v14 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
    if (v17 == v18)
    {
      v29 = *(v12 + 56);
      v30 = (a2 + 1);
    }

    else
    {
      v28 = (v20 + v28) & ~v15;
      if (v13 != v18)
      {
        v31 = (v21 + v28) & 0xFFFFFFFFFFFFFFFCLL;
        if (a2 > 0xFD)
        {
          *(v31 + 16) = 0;
          *v31 = (a2 - 254);
          *(v31 + 8) = 0;
        }

        else
        {
          *(v31 + 16) = -a2;
        }

        return;
      }

      v29 = *(v12 + 56);
      v30 = a2;
    }

    v29(v28, v30);
  }
}

uint64_t RenderActionsFileLogger.__allocating_init(directoryURL:queue:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_23E8E5768(a1, a2);

  return v7;
}

uint64_t RenderActionsFileLogger.init(directoryURL:queue:)(uint64_t a1, void *a2)
{
  v3 = sub_23E8E5768(a1, a2);

  return v3;
}

uint64_t RenderActionsFileLogger.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_23E8E4F88(v0);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_directoryURL;
  v3 = sub_23E9005E4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter);

  sub_23E8E59CC(*(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state));
  return v0;
}

Swift::Void __swiftcall RenderActionsFileLogger.deactivate()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_23E8E4F88(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

uint64_t RenderActionsFileLogger.__deallocating_deinit()
{
  RenderActionsFileLogger.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_23E8E3F80(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v74 = a2;
  v80 = *MEMORY[0x277D85DE8];
  v2 = sub_23E900574();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E9005E4();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v70 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  v77 = objc_opt_self();
  v15 = [v77 defaultManager];
  sub_23E9005C4();
  v16 = sub_23E900854();

  v17 = [v15 fileExistsAtPath_];

  if ((v17 & 1) == 0)
  {
    v18 = [v77 defaultManager];
    v19 = sub_23E9005A4();
    v78 = 0;
    v20 = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v78];

    if (!v20)
    {
      v47 = v78;
      sub_23E900564();

      swift_willThrow();
      goto LABEL_22;
    }

    v21 = v78;
  }

  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = sub_23E900884();
    v26 = v25;
  }

  else
  {
    v26 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
  }

  v78 = 0;
  v79 = 0xE000000000000000;
  sub_23E900CB4();

  v78 = 0x4B79616C50726941;
  v79 = 0xEB000000002D7469;
  MEMORY[0x23EF17600](v24, v26);

  MEMORY[0x23EF17600](45, 0xE100000000000000);
  MEMORY[0x23EF17600](v73, v74);
  MEMORY[0x23EF17600](1735355438, 0xE400000000000000);
  (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v2);
  sub_23E882570();
  sub_23E9005D4();
  (*(v3 + 8))(v6, v2);

  v27 = [v77 defaultManager];
  sub_23E9005C4();
  v28 = sub_23E900854();

  v29 = [v27 fileExistsAtPath_];

  p_prots = &OBJC_PROTOCOL___RWIProtocolCSSDomainHandler.prots;
  v32 = v75;
  v31 = v76;
  if (v29)
  {
    goto LABEL_15;
  }

  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v33 = sub_23E900764();
  __swift_project_value_buffer(v33, qword_27E367168);
  v34 = v71;
  (*(v32 + 16))(v71, v14, v31);
  v35 = sub_23E900744();
  v36 = sub_23E900B14();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v34;
    v39 = swift_slowAlloc();
    v78 = v39;
    *v37 = 136315138;
    v40 = sub_23E9005C4();
    v42 = v41;
    v43 = *(v75 + 8);
    v43(v38, v76);
    v44 = v40;
    p_prots = (&OBJC_PROTOCOL___RWIProtocolCSSDomainHandler + 16);
    v45 = sub_23E887B9C(v44, v42, &v78);
    v32 = v75;

    *(v37 + 4) = v45;
    _os_log_impl(&dword_23E879000, v35, v36, "Attempting to create new file at %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x23EF18560](v39, -1, -1);
    v46 = v37;
    v31 = v76;
    MEMORY[0x23EF18560](v46, -1, -1);
  }

  else
  {

    v43 = *(v32 + 8);
    v43(v34, v31);
  }

  v47 = [v77 defaultManager];
  sub_23E9005C4();
  v48 = sub_23E900854();

  v49 = [v47 createFileAtPath:v48 contents:0 attributes:0];

  if (v49)
  {
LABEL_15:
    if (p_prots[49] != -1)
    {
      swift_once();
    }

    v50 = sub_23E900764();
    __swift_project_value_buffer(v50, qword_27E367168);
    v51 = *(v32 + 16);
    v52 = v72;
    v77 = v14;
    v51(v72, v14, v31);
    v53 = sub_23E900744();
    v54 = sub_23E900B14();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v31;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v78 = v57;
      *v56 = 136315138;
      v58 = sub_23E9005C4();
      v59 = v52;
      v61 = v60;
      v62 = *(v32 + 8);
      v62(v59, v55);
      v63 = sub_23E887B9C(v58, v61, &v78);

      *(v56 + 4) = v63;
      _os_log_impl(&dword_23E879000, v53, v54, "Make OutputStream to %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x23EF18560](v57, -1, -1);
      MEMORY[0x23EF18560](v56, -1, -1);
    }

    else
    {

      v62 = *(v32 + 8);
      v62(v52, v31);
      v55 = v31;
    }

    v64 = v77;
    sub_23E9005C4();
    v65 = objc_allocWithZone(MEMORY[0x277CBEB78]);
    v66 = sub_23E900854();

    v47 = [v65 initToFileAtPath:v66 append:0];

    v62(v64, v55);
  }

  else
  {
    sub_23E8A7800();
    swift_allocError();
    *v67 = 4;
    swift_willThrow();
    v43(v14, v31);
  }

LABEL_22:
  v68 = *MEMORY[0x277D85DE8];
  return v47;
}

uint64_t sub_23E8E4814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23E900784();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23E9007B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_queue);
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_23E8E5E74;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E8906D8;
  aBlock[3] = &block_descriptor_6;
  v18 = _Block_copy(aBlock);

  sub_23E9007A4();
  v20[1] = MEMORY[0x277D84F90];
  sub_23E8E5EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E7D0, &qword_23E903560);
  sub_23E8E5F44();
  sub_23E900C14();
  MEMORY[0x23EF17800](0, v15, v10, v18);
  _Block_release(v18);
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
}

Swift::Void __swiftcall RenderActionsFileLogger.activate()()
{
  if (sub_23E8E59DC())
  {
    v1 = *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock);
    os_unfair_lock_lock(*(v1 + 16));
    if (!*(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state))
    {
      *(v0 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state) = 1;
      sub_23E8E4814(sub_23E8E4B2C, 0);
    }

    v2 = *(v1 + 16);

    os_unfair_lock_unlock(v2);
  }
}

void sub_23E8E4B2C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state;
  if (*(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state) != 1)
  {
    return;
  }

  v3 = sub_23E8E3F80(0x63417265646E6552, 0xED0000736E6F6974);
  if (v3)
  {
    v31 = v3;
    v14 = v3;
    [v14 open];
    if ([v14 streamStatus] == 2)
    {

      if (qword_27E35E188 != -1)
      {
        swift_once();
      }

      v15 = sub_23E900764();
      __swift_project_value_buffer(v15, qword_27E367168);
      v16 = v14;
      v17 = sub_23E900744();
      v18 = sub_23E900B14();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v32[0] = v20;
        *v19 = 136446210;
        v21 = v16;
        v22 = [v21 description];
        v23 = sub_23E900884();
        v25 = v24;

        v26 = sub_23E887B9C(v23, v25, v32);

        *(v19 + 4) = v26;
        _os_log_impl(&dword_23E879000, v17, v18, "Activated Render Actions File Logger using stream: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x23EF18560](v20, -1, -1);
        MEMORY[0x23EF18560](v19, -1, -1);
      }

      v27 = *(a1 + v1);
      *(a1 + v1) = v31;

      sub_23E8E59CC(v27);
      return;
    }

    v28 = [v14 streamError];

    if (!v28)
    {
      sub_23E8A7800();
      v28 = swift_allocError();
      *v30 = 5;
    }

    swift_willThrow();
  }

  else
  {
    sub_23E8A7800();
    v28 = swift_allocError();
    *v29 = 3;
    swift_willThrow();
  }

  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v4 = sub_23E900764();
  __swift_project_value_buffer(v4, qword_27E367168);
  v5 = v28;
  v6 = sub_23E900744();
  v7 = sub_23E900B04();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32[0] = v9;
    *v8 = 136446210;
    v10 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v11 = sub_23E9008D4();
    v13 = sub_23E887B9C(v11, v12, v32);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23E879000, v6, v7, "Unable to create OutputStream for RenderActions Log: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EF18560](v9, -1, -1);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  else
  {
  }
}

void sub_23E8E4F88(uint64_t a1)
{
  v3 = sub_23E900784();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E9007B4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state;
  v15 = *(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state);
  if (v15 >= 2)
  {
    v22[1] = *(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_queue);
    v23 = v11;
    v24 = v10;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    aBlock[4] = sub_23E8E5FE0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E8906D8;
    aBlock[3] = &block_descriptor_15;
    v17 = _Block_copy(aBlock);
    v26 = v1;
    v18 = v17;
    sub_23E8E5FF0(v15);
    v19 = v15;
    sub_23E9007A4();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_23E8E5EEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E7D0, &qword_23E903560);
    v25 = a1;
    sub_23E8E5F44();
    sub_23E900C14();
    MEMORY[0x23EF17800](0, v13, v7, v18);
    _Block_release(v18);
    sub_23E8E59CC(v15);
    (*(v4 + 8))(v7, v3);
    a1 = v25;
    (*(v23 + 8))(v13, v24);
  }

  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v20 = sub_23E900764();
  __swift_project_value_buffer(v20, qword_27E367168);
  sub_23E882260(0xD00000000000005DLL, 0x800000023E9095B0, 0x6176697463616564, 0xEC00000029286574);
  v21 = *(a1 + v14);
  *(a1 + v14) = 0;
  sub_23E8E59CC(v21);
}

uint64_t RenderActionsFileLogger.log(action:)(uint64_t a1)
{
  sub_23E8810DC(a1, v3);
  v1 = swift_allocObject();
  sub_23E881028(v3, v1 + 16);
  sub_23E8E4814(sub_23E8E5BF0, v1);
}

uint64_t sub_23E8E5340(uint64_t a1, void *a2)
{
  v4 = sub_23E900694();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state);
  if (v10 >= 2)
  {
    v11 = *(a1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter);
    v10;
    sub_23E900684();
    v12 = sub_23E900664();
    (*(v5 + 8))(v9, v4);
    v13 = [v11 stringFromDate_];

    v14 = sub_23E900884();
    v16 = v15;

    v20[2] = 91;
    v20[3] = 0xE100000000000000;
    MEMORY[0x23EF17600](v14, v16);

    MEMORY[0x23EF17600](539828317, 0xE400000000000000);
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    v19 = (*(v18 + 8))(v17, v18);
    MEMORY[0x23EF17600](v19);

    MEMORY[0x23EF17600](2570, 0xE200000000000000);
    sub_23E8A6F60();
    sub_23E8E59CC(v10);
  }

  return result;
}

uint64_t sub_23E8E56F0(uint64_t a1)
{
  v2 = *v1;
  sub_23E8810DC(a1, v5);
  v3 = swift_allocObject();
  sub_23E881028(v5, v3 + 16);
  sub_23E8E4814(sub_23E8E6004, v3);
}

uint64_t sub_23E8E5768(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_23E900704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_state) = 0;
  v11 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_directoryURL;
  v12 = sub_23E9005E4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v3 + v11, a1, v12);
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter) = v14;
  type metadata accessor for UnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock) = v15;
  *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_queue) = a2;
  v17 = OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter;
  v18 = *(v3 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_formatter);
  v19 = a2;
  v20 = v18;
  sub_23E9006E4();
  v21 = sub_23E9006F4();
  (*(v7 + 8))(v10, v6);
  [v20 setLocale_];

  v22 = *(v3 + v17);
  v23 = sub_23E900854();
  [v22 setDateFormat_];

  (*(v13 + 8))(a1, v12);
  return v3;
}

void sub_23E8E59CC(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_23E8E59DC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_23E900884();

    v2 = sub_23E9008E4();

    v1 = (v2 + 32);
  }

  v3 = [objc_opt_self() isInternal_];
  swift_unknownObjectRelease();
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = sub_23E900854();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_23E900C04();
    swift_unknownObjectRelease();
    sub_23E897508(&v12, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  sub_23E8974A0(v13);
  v8 = [v4 standardUserDefaults];
  v9 = sub_23E900854();
  v10 = [v8 BOOLForKey_];

  if (v7)
  {
    return v10;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E8E5BB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t type metadata accessor for RenderActionsFileLogger()
{
  result = qword_27E35F578;
  if (!qword_27E35F578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8E5C4C()
{
  result = sub_23E9005E4();
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

uint64_t get_enum_tag_for_layout_string_10AirPlayKit23RenderActionsFileLoggerC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23E8E5D54(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E8E5DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_23E8E5E04(void *result, int a2)
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

uint64_t sub_23E8E5E34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_23E8E5E74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(v1 + OBJC_IVAR____TtC10AirPlayKit23RenderActionsFileLogger_lock);
  os_unfair_lock_lock(*(v4 + 16));
  v2(v1);
  v5 = *(v4 + 16);

  os_unfair_lock_unlock(v5);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23E8E5EEC()
{
  result = qword_27E35E7C8;
  if (!qword_27E35E7C8)
  {
    sub_23E900784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E7C8);
  }

  return result;
}

unint64_t sub_23E8E5F44()
{
  result = qword_27E35E7D8;
  if (!qword_27E35E7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35E7D0, &qword_23E903560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35E7D8);
  }

  return result;
}

uint64_t sub_23E8E5FA8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_23E8E5FF0(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void *sub_23E8E6010(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v140 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v132 - v13;
  v15 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v132 - v19;
  v21 = a1;
  v23 = v22;
  sub_23E8891B4(v21, v14, a3, a4);
  if ((*(v17 + 48))(v14, 1, v23) == 1)
  {
    sub_23E87E458(v14, a3, a4);
    v24 = v138;
    v25 = v138 + v23[16];
    v26 = *v25;
    v136 = *(v25 + 8);
    v137 = v26;
    LODWORD(v135) = *(v25 + 16);
    *&v139 = v23;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
    v151[3] = v27;
    v151[4] = sub_23E8C88E0(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v151);
    v29 = sub_23E9006D4();
    v30 = *(v29 - 8);
    v133 = *(v30 + 16);
    v134 = v30 + 16;
    v31 = v140;
    v132[0] = v29;
    v133(boxed_opaque_existential_1, v140, v29);
    *(boxed_opaque_existential_1 + *(v27 + 36)) = 5;
    v32 = boxed_opaque_existential_1 + *(v27 + 40);
    v33 = v136;
    *v32 = v137;
    *(v32 + 1) = v33;
    v32[16] = v135;
    v34 = v139;
    LODWORD(v137) = *(v24 + *(v139 + 40));
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E540, &qword_23E902E10);
    v152[3] = v35;
    v132[1] = &unk_23E9059D8;
    v152[4] = sub_23E8C88E0(&unk_27E35F5F0, &qword_27E35E540, &qword_23E902E10);
    v36 = __swift_allocate_boxed_opaque_existential_1(v152);
    v37 = v29;
    v38 = v133;
    v133(v36, v31, v37);
    *(v36 + *(v35 + 36)) = 6;
    *(v36 + *(v35 + 40)) = v137;
    v39 = *(v24 + *(v34 + 68));
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
    v153[3] = v40;
    v153[4] = sub_23E8C88E0(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
    v41 = __swift_allocate_boxed_opaque_existential_1(v153);
    v42 = v140;
    v43 = v132[0];
    v38(v41, v140, v132[0]);
    *(v41 + *(v40 + 36)) = 7;
    *(v41 + *(v40 + 40)) = v39;
    v44 = (v24 + *(v139 + 72));
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E550, &qword_23E902E18);
    v154[3] = v45;
    v154[4] = sub_23E8C88E0(&unk_27E35F610, &qword_27E35E550, &qword_23E902E18);
    v46 = __swift_allocate_boxed_opaque_existential_1(v154);
    v47 = *v44;
    v48 = v44[1];
    v38(v46, v42, v43);
    *(v46 + *(v45 + 36)) = 9;
    v49 = (v46 + *(v45 + 40));
    v50 = MEMORY[0x277D84F90];
    *v49 = v47;
    v49[1] = v48;
    for (i = 32; i != 192; i += 40)
    {
      sub_23E8891B4(&v150[i], &v147, &qword_27E35E558, &unk_23E907990);
      v141 = v147;
      v142 = v148;
      v143 = v149;
      if (*(&v148 + 1))
      {
        sub_23E881028(&v141, v144);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v155 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_23E889F50(0, v50[2] + 1, 1, v50);
          v155 = v50;
        }

        v54 = v50[2];
        v53 = v50[3];
        if (v54 >= v53 >> 1)
        {
          v50 = sub_23E889F50((v53 > 1), v54 + 1, 1, v50);
          v155 = v50;
        }

        v55 = v145;
        v56 = v146;
        v57 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
        v58 = *(*(v55 - 8) + 64);
        MEMORY[0x28223BE20](v57);
        v60 = v132 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v61 + 16))(v60);
        sub_23E8F2C70(v54, v60, &v155, v55, v56);
        __swift_destroy_boxed_opaque_existential_1(v144);
      }

      else
      {
        sub_23E87E458(&v141, &qword_27E35E558, &unk_23E907990);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
    swift_arrayDestroy();
  }

  else
  {
    v62 = v138;
    v63 = v15;
    v64 = v140;
    v135 = a5;
    v136 = v63;
    sub_23E87E3F0(v14, v20, a5, v63);
    v65 = v23[16];
    v66 = &v20[v65];
    v67 = *&v20[v65];
    v68 = *&v20[v65 + 8];
    v69 = v62;
    v70 = v62 + v65;
    v71 = *v70;
    v72 = *(v70 + 8);
    v73 = *(v70 + 16);
    v74 = _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(v67, v68, v66[16], *v70, v72, v73);
    v137 = v20;
    if (v74)
    {
      v75 = MEMORY[0x277D84F90];
      v76 = v64;
    }

    else
    {
      *&v139 = v23;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E538, &unk_23E907970);
      *(&v148 + 1) = v77;
      v149 = sub_23E8C88E0(&unk_27E35F5E0, &qword_27E35E538, &unk_23E907970);
      v78 = __swift_allocate_boxed_opaque_existential_1(&v147);
      v79 = sub_23E9006D4();
      (*(*(v79 - 8) + 16))(v78, v64, v79);
      *(v78 + *(v77 + 36)) = 5;
      v80 = v78 + *(v77 + 40);
      *v80 = v71;
      *(v80 + 1) = v72;
      v80[16] = v73;
      v75 = sub_23E88A098(0, 1, 1, MEMORY[0x277D84F90]);
      v82 = v75[2];
      v81 = v75[3];
      if (v82 >= v81 >> 1)
      {
        v75 = sub_23E88A098((v81 > 1), v82 + 1, 1, v75);
      }

      v75[2] = v82 + 1;
      v83 = &v75[5 * v82];
      v84 = v147;
      v85 = v148;
      v83[8] = v149;
      *(v83 + 2) = v84;
      *(v83 + 3) = v85;
      v20 = v137;
      v76 = v64;
      v23 = v139;
    }

    v86 = v23[10];
    v87 = v69;
    v88 = *(v69 + v86);
    if ((sub_23E89A140(v20[v86], v88) & 1) == 0)
    {
      v89 = v75;
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E540, &qword_23E902E10);
      *(&v148 + 1) = v90;
      v149 = sub_23E8C88E0(&unk_27E35F5F0, &qword_27E35E540, &qword_23E902E10);
      v91 = __swift_allocate_boxed_opaque_existential_1(&v147);
      v92 = sub_23E9006D4();
      (*(*(v92 - 8) + 16))(v91, v76, v92);
      *(v91 + *(v90 + 36)) = 6;
      v93 = *(v90 + 40);
      v75 = v89;
      *(v91 + v93) = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_23E88A098(0, v89[2] + 1, 1, v89);
      }

      v95 = v75[2];
      v94 = v75[3];
      v20 = v137;
      if (v95 >= v94 >> 1)
      {
        v75 = sub_23E88A098((v94 > 1), v95 + 1, 1, v75);
      }

      v75[2] = v95 + 1;
      v96 = &v75[5 * v95];
      v97 = v147;
      v98 = v148;
      v96[8] = v149;
      *(v96 + 2) = v97;
      *(v96 + 3) = v98;
    }

    v99 = v23[17];
    v100 = *(v69 + v99);
    if (*&v20[v99] != v100)
    {
      v101 = v23;
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
      *(&v148 + 1) = v102;
      v149 = sub_23E8C88E0(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
      v103 = __swift_allocate_boxed_opaque_existential_1(&v147);
      v104 = sub_23E9006D4();
      (*(*(v104 - 8) + 16))(v103, v76, v104);
      *(v103 + *(v102 + 36)) = 7;
      *(v103 + *(v102 + 40)) = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_23E88A098(0, v75[2] + 1, 1, v75);
      }

      v106 = v75[2];
      v105 = v75[3];
      v23 = v101;
      if (v106 >= v105 >> 1)
      {
        v75 = sub_23E88A098((v105 > 1), v106 + 1, 1, v75);
      }

      v75[2] = v106 + 1;
      v107 = &v75[5 * v106];
      v108 = v147;
      v109 = v148;
      v107[8] = v149;
      *(v107 + 2) = v108;
      *(v107 + 3) = v109;
    }

    v110 = v23[18];
    if ((vminv_u16(vmovn_s32(vceqq_f32(*&v20[v110], *(v87 + v110)))) & 1) == 0)
    {
      v139 = *(v87 + v110);
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E550, &qword_23E902E18);
      *(&v148 + 1) = v111;
      v149 = sub_23E8C88E0(&unk_27E35F610, &qword_27E35E550, &qword_23E902E18);
      v112 = __swift_allocate_boxed_opaque_existential_1(&v147);
      v113 = sub_23E9006D4();
      (*(*(v113 - 8) + 16))(v112, v76, v113);
      *(v112 + *(v111 + 36)) = 9;
      *(v112 + *(v111 + 40)) = v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_23E88A098(0, v75[2] + 1, 1, v75);
      }

      v115 = v75[2];
      v114 = v75[3];
      if (v115 >= v114 >> 1)
      {
        v75 = sub_23E88A098((v114 > 1), v115 + 1, 1, v75);
      }

      v75[2] = v115 + 1;
      v116 = &v75[5 * v115];
      v117 = v147;
      v118 = v148;
      v116[8] = v149;
      *(v116 + 2) = v117;
      *(v116 + 3) = v118;
    }

    v119 = v75[2];
    v140 = v75;
    if (v119)
    {
      v120 = (v75 + 4);
      v50 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8891B4(v120, &v147, &qword_27E35E558, &unk_23E907990);
        v141 = v147;
        v142 = v148;
        v143 = v149;
        if (*(&v148 + 1))
        {
          sub_23E881028(&v141, v144);
          v121 = swift_isUniquelyReferenced_nonNull_native();
          v155 = v50;
          if ((v121 & 1) == 0)
          {
            v50 = sub_23E889F50(0, v50[2] + 1, 1, v50);
            v155 = v50;
          }

          v123 = v50[2];
          v122 = v50[3];
          if (v123 >= v122 >> 1)
          {
            v50 = sub_23E889F50((v122 > 1), v123 + 1, 1, v50);
            v155 = v50;
          }

          v124 = v145;
          v125 = v146;
          v126 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
          v127 = *(*(v124 - 8) + 64);
          MEMORY[0x28223BE20](v126);
          v129 = v132 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v130 + 16))(v129);
          sub_23E8F2C70(v123, v129, &v155, v124, v125);
          __swift_destroy_boxed_opaque_existential_1(v144);
        }

        else
        {
          sub_23E87E458(&v141, &qword_27E35E558, &unk_23E907990);
        }

        v120 += 40;
        --v119;
      }

      while (v119);
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    sub_23E87E458(v137, v135, v136);
  }

  return v50;
}

void *sub_23E8E6D48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = a3;
  v94 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v90 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v89 = &v82 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v87 = &v82 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v82 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v82 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v26 = v25[11];
  v97 = v6;
  v98 = a4;
  v27 = v6 + v26;
  v28 = *(v27 + 8);
  v88 = *v27;
  v84 = *(v27 + 16) | (*(v27 + 20) << 32);
  v85 = *(v27 + 21);
  v86 = v28;
  sub_23E8891B4(a1, v24, v10, a4);
  v29 = *(v25 - 1);
  v30 = *(v29 + 48);
  v95 = v29 + 48;
  v96 = v30;
  v31 = v30(v24, 1, v25);
  v91 = a1;
  v92 = a5;
  v93 = a6;
  if (v31 == 1)
  {
    sub_23E87E458(v24, v10, v98);
    v32 = 0;
    v33 = 0;
    v34 = 0xFF0000000000;
  }

  else
  {
    v35 = &v24[v25[11]];
    v32 = *v35;
    v33 = *(v35 + 1);
    v36 = *(v35 + 4) | (v35[20] << 32);
    v83 = v10;
    v37 = v35[21];
    sub_23E8811D8(v32, v33, v36, v35[21]);
    sub_23E87E458(v24, a5, a6);
    v34 = v36 | (v37 << 40);
    a1 = v91;
    v10 = v83;
  }

  v88 = sub_23E8E7358(v32, v33, v34 & 0xFFFFFFFFFFFFLL, v94, 0, v88, v86, v84 & 0xFFFFFFFFFFLL | (v85 << 40));
  sub_23E881140(v32, v33, v34);
  v38 = v97 + v25[12];
  v39 = *v38;
  v40 = *(v38 + 8) | (*(v38 + 12) << 32);
  v41 = *(v38 + 13);
  sub_23E8891B4(a1, v22, v10, v98);
  if (v96(v22, 1, v25) == 1)
  {
    sub_23E87E458(v22, v10, v98);
    v42 = 0;
    v43 = 0xFF0000000000;
  }

  else
  {
    v44 = &v22[v25[12]];
    v42 = *v44;
    v45 = *(v44 + 2) | (v44[12] << 32);
    v46 = v44[13];
    sub_23E881208(*v44, v45, v44[13]);
    sub_23E87E458(v22, v92, v93);
    v43 = v45 | (v46 << 40);
    a1 = v91;
  }

  v47 = v40 & 0xFFFFFFFFFFLL | (v41 << 40);
  v48 = v94;
  v86 = sub_23E8E7794(v42, v43 & 0xFFFFFFFFFFFFLL, v94, 1, v39, v47);
  sub_23E88116C(v42, v43);
  v49 = v97 + v25[13];
  v50 = *v49;
  v51 = *(v49 + 8);
  v52 = v87;
  sub_23E8891B4(a1, v87, v10, v98);
  if (v96(v52, 1, v25) == 1)
  {
    sub_23E87E458(v52, v10, v98);
    v53 = 0;
    v54 = -1;
  }

  else
  {
    v55 = &v52[v25[13]];
    v53 = *v55;
    v54 = v55[8];
    sub_23E8811F0(*v55, v54);
    sub_23E87E458(v52, v92, v93);
  }

  v87 = sub_23E8E7BB8(v53, v54, v48, 3, v50, v51);
  sub_23E881198(v53, v54);
  v56 = v97 + v25[14];
  v57 = *v56;
  v85 = *(v56 + 8);
  v58 = *(v56 + 16);
  v59 = *(v56 + 24);
  v60 = v89;
  sub_23E8891B4(a1, v89, v10, v98);
  if (v96(v60, 1, v25) == 1)
  {
    sub_23E87E458(v60, v10, v98);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = -1;
  }

  else
  {
    v65 = v60 + v25[14];
    v66 = v58;
    v67 = v57;
    v68 = v60;
    v61 = *v65;
    v62 = *(v65 + 8);
    v63 = *(v65 + 16);
    v64 = *(v65 + 24);
    sub_23E8811D8(*v65, v62, v63, v64);
    v69 = v68;
    v57 = v67;
    v58 = v66;
    sub_23E87E458(v69, v92, v93);
  }

  v81 = v58;
  v70 = v94;
  v71 = sub_23E8E8028(v61, v62, v63, v64, v94, 2, v57, v85, v81, v59);
  sub_23E8811C4(v61, v62, v63, v64);
  v72 = v97 + v25[15];
  v73 = *v72;
  v74 = *(v72 + 8);
  v75 = v90;
  sub_23E8891B4(v91, v90, v10, v98);
  if (v96(v75, 1, v25) == 1)
  {
    sub_23E87E458(v75, v10, v98);
    v76 = 0;
    v77 = -1;
  }

  else
  {
    v78 = v75 + v25[15];
    v76 = *v78;
    v77 = *(v78 + 8);
    sub_23E8811F0(*v78, v77);
    sub_23E87E458(v75, v92, v93);
  }

  v79 = sub_23E8E84DC(v76, v77, v70, 8, v73, v74);
  sub_23E881198(v76, v77);
  v99 = v88;
  sub_23E8EBFB4(v86);
  sub_23E8EBFB4(v87);
  sub_23E8EBFB4(v71);
  sub_23E8EBFB4(v79);
  return v99;
}

void *sub_23E8E7358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = a8 >> 40;
  if ((~a3 & 0xFF0000000000) != 0)
  {
    v14 = a3;
    sub_23E8811D8(a6, a7, a8, BYTE5(a8));
    LOBYTE(v14) = sub_23E89B274(a1, a2, v14 & 0xFFFFFFFFFFFFLL, a6, a7, a8 & 0xFFFFFFFFFFFFLL);
    sub_23E881154(a6, a7, a8, v13);
    if (v14)
    {
      return MEMORY[0x277D84F90];
    }
  }

  if (v13)
  {
    *&v41 = a6;

    sub_23E8F1580(&v41, &unk_27E35F6F0, qword_23E903D18, sub_23E8F2C34);
    if (v13 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v17 = sub_23E8ED92C(v41, a4, a5, v18);
  }

  else
  {
    v19 = HIDWORD(a8);
    *(&v20 + 1) = a8;
    *&v20 = a7;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F6E0, &unk_23E907A00);
    v44[3] = v21;
    v44[4] = sub_23E8C88E0(&qword_27E35F6E8, &qword_27E35F6E0, &unk_23E907A00);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
    v23 = sub_23E9006D4();
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, a4, v23);
    *(boxed_opaque_existential_1 + *(v21 + 36)) = a5;
    v24 = boxed_opaque_existential_1 + *(v21 + 40);
    *v24 = a6;
    v24[8] = a7;
    *(v24 + 12) = v20 >> 32;
    v24[20] = v19;
    sub_23E8891B4(v44, &v41, &qword_27E35E558, &unk_23E907990);
    v36[1] = v42;
    v36[0] = v41;
    v37 = v43;
    if (*(&v42 + 1))
    {
      sub_23E881028(v36, v38);
      v17 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36[0] = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_23E889F50(0, v17[2] + 1, 1, v17);
        *&v36[0] = v17;
      }

      v27 = v17[2];
      v26 = v17[3];
      if (v27 >= v26 >> 1)
      {
        v17 = sub_23E889F50((v26 > 1), v27 + 1, 1, v17);
        *&v36[0] = v17;
      }

      v28 = v39;
      v29 = v40;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v31 = *(*(v28 - 8) + 64);
      MEMORY[0x28223BE20](v30);
      v33 = v36 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v33);
      sub_23E8F2C70(v27, v33, v36, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v38);
    }

    else
    {
      sub_23E87E458(v36, &qword_27E35E558, &unk_23E907990);
      v17 = MEMORY[0x277D84F90];
    }

    sub_23E87E458(v44, &qword_27E35E558, &unk_23E907990);
  }

  return v17;
}

void *sub_23E8E7794(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  v10 = a6 >> 40;
  if ((~a2 & 0xFF0000000000) != 0)
  {
    v11 = a2;
    sub_23E881208(a5, a6, BYTE5(a6));
    LOBYTE(v11) = sub_23E89B474(a1, v11 & 0xFFFFFFFFFFFFLL, a5, a6 & 0xFFFFFFFFFFFFLL);
    sub_23E881180(a5, a6, v10);
    if (v11)
    {
      return MEMORY[0x277D84F90];
    }
  }

  if (v10)
  {
    *&v35 = a5;

    sub_23E8F1580(&v35, &unk_27E35F6C0, &qword_23E9069E0, sub_23E8F2C20);
    if (v10 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v13 = sub_23E8ED310(v35, a3, a4, v14);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F6B0, &qword_23E9079F0);
    v38[3] = v15;
    v38[4] = sub_23E8C88E0(&qword_27E35F6B8, &qword_27E35F6B0, &qword_23E9079F0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    v17 = sub_23E9006D4();
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a3, v17);
    *(boxed_opaque_existential_1 + *(v15 + 36)) = a4;
    v18 = boxed_opaque_existential_1 + *(v15 + 40);
    *v18 = a5;
    v18[4] = BYTE4(a5);
    *(v18 + 2) = a6;
    v18[12] = BYTE4(a6);
    sub_23E8891B4(v38, &v35, &qword_27E35E558, &unk_23E907990);
    v30[1] = v36;
    v30[0] = v35;
    v31 = v37;
    if (*(&v36 + 1))
    {
      sub_23E881028(v30, v32);
      v13 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v30[0] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_23E889F50(0, v13[2] + 1, 1, v13);
        *&v30[0] = v13;
      }

      v21 = v13[2];
      v20 = v13[3];
      if (v21 >= v20 >> 1)
      {
        v13 = sub_23E889F50((v20 > 1), v21 + 1, 1, v13);
        *&v30[0] = v13;
      }

      v22 = v33;
      v23 = v34;
      v24 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      v25 = *(*(v22 - 8) + 64);
      MEMORY[0x28223BE20](v24);
      v27 = v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v28 + 16))(v27);
      sub_23E8F2C70(v21, v27, v30, v22, v23);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      sub_23E87E458(v30, &qword_27E35E558, &unk_23E907990);
      v13 = MEMORY[0x277D84F90];
    }

    sub_23E87E458(v38, &qword_27E35E558, &unk_23E907990);
  }

  return v13;
}

void *sub_23E8E7BB8(uint64_t a1, unsigned __int8 a2, uint64_t a3, int a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a6)
      {
        if (a6 == 1)
        {
LABEL_18:
          *&v36 = a5;

          sub_23E8F1580(&v36, &unk_27E35F690, &unk_23E906F50, sub_23E8F2C0C);
          v13 = v36;
          v14 = a3;
          v15 = a4;
          v16 = 1;
LABEL_26:
          v12 = sub_23E8ECCF4(v13, v14, v15, v16);

          return v12;
        }

        v10 = a1;

        LOBYTE(v10) = sub_23E8DD588(v10, a5);
        sub_23E8811AC(a5, 2u);
        if (v10)
        {
          return MEMORY[0x277D84F90];
        }

LABEL_25:
        *&v36 = a5;

        sub_23E8F1580(&v36, &unk_27E35F690, &unk_23E906F50, sub_23E8F2C0C);
        v13 = v36;
        v14 = a3;
        v15 = a4;
        v16 = 2;
        goto LABEL_26;
      }
    }

    else
    {
      v9 = a6;
      if (a6)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (!a2)
    {
      v9 = a6;
      if (!a6)
      {
        if (*&a1 != *&a5 || *(&a1 + 1) != *(&a5 + 1))
        {
          goto LABEL_19;
        }

        return MEMORY[0x277D84F90];
      }

LABEL_17:
      if (v9 == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    if (a6)
    {
      if (a6 == 1)
      {
        v11 = a1;

        LOBYTE(v11) = sub_23E8DD588(v11, a5);
        sub_23E8811AC(a5, 1u);
        if (v11)
        {
          return MEMORY[0x277D84F90];
        }

        goto LABEL_18;
      }

      goto LABEL_25;
    }
  }

LABEL_19:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F680, &unk_23E9079D0);
  v39[3] = v17;
  v39[4] = sub_23E8C88E0(&qword_27E35F688, &qword_27E35F680, &unk_23E9079D0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  v19 = sub_23E9006D4();
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, a3, v19);
  *(boxed_opaque_existential_1 + *(v17 + 36)) = a4;
  *(boxed_opaque_existential_1 + *(v17 + 40)) = a5;
  sub_23E8891B4(v39, &v36, &qword_27E35E558, &unk_23E907990);
  v31[1] = v37;
  v31[0] = v36;
  v32 = v38;
  if (*(&v37 + 1))
  {
    sub_23E881028(v31, v33);
    v12 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[0] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_23E889F50(0, v12[2] + 1, 1, v12);
      *&v31[0] = v12;
    }

    v22 = v12[2];
    v21 = v12[3];
    if (v22 >= v21 >> 1)
    {
      v12 = sub_23E889F50((v21 > 1), v22 + 1, 1, v12);
      *&v31[0] = v12;
    }

    v23 = v34;
    v24 = v35;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v26 = *(*(v23 - 8) + 64);
    MEMORY[0x28223BE20](v25);
    v28 = v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v28);
    sub_23E8F2C70(v22, v28, v31, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_23E87E458(v31, &qword_27E35E558, &unk_23E907990);
    v12 = MEMORY[0x277D84F90];
  }

  sub_23E87E458(v39, &qword_27E35E558, &unk_23E907990);
  return v12;
}

void *sub_23E8E8028(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v38 = a6;
  v17 = ~a4;
  sub_23E8811D8(a7, a8, a9, a10);
  if (v17)
  {
    sub_23E8F2D08(a1, a2, a3, a4);
    v18 = sub_23E89B5D4(a1, a2, a3, a4, a7, a8, a9, a10);
    sub_23E881154(a7, a8, a9, a10);
    sub_23E8811C4(a1, a2, a3, a4);
    if (v18)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    sub_23E8811C4(a1, a2, a3, 0xFFu);
    sub_23E8811C4(a7, a8, a9, a10);
  }

  if (!a10)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F650, &qword_23E9079C0);
    v47[3] = v21;
    v47[4] = sub_23E8C88E0(&qword_27E35F658, &qword_27E35F650, &qword_23E9079C0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
    v23 = sub_23E9006D4();
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, a5, v23);
    *(boxed_opaque_existential_1 + *(v21 + 36)) = v38;
    v24 = (boxed_opaque_existential_1 + *(v21 + 40));
    *v24 = a7;
    v24[1] = a8;
    v24[2] = a9;
    sub_23E8891B4(v47, &v44, &qword_27E35E558, &unk_23E907990);
    v39[1] = v45;
    v39[0] = v44;
    v40 = v46;
    if (*(&v45 + 1))
    {
      sub_23E881028(v39, v41);
      v19 = MEMORY[0x277D84F90];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v39[0] = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_23E889F50(0, v19[2] + 1, 1, v19);
        *&v39[0] = v19;
      }

      v27 = v19[2];
      v26 = v19[3];
      if (v27 >= v26 >> 1)
      {
        v19 = sub_23E889F50((v26 > 1), v27 + 1, 1, v19);
        *&v39[0] = v19;
      }

      v28 = v42;
      v29 = v43;
      v30 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v31 = *(*(v28 - 8) + 64);
      MEMORY[0x28223BE20](v30);
      v33 = &v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v33);
      sub_23E8F2C70(v27, v33, v39, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    else
    {
      sub_23E87E458(v39, &qword_27E35E558, &unk_23E907990);
      v19 = MEMORY[0x277D84F90];
    }

    sub_23E87E458(v47, &qword_27E35E558, &unk_23E907990);
    return v19;
  }

  *&v44 = a7;

  sub_23E8F1580(&v44, &unk_27E35F660, &unk_23E9069D0, sub_23E8F2BF8);
  if (a10 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  v35 = sub_23E8EC6D8(v44, a5, v38, v20);

  return v35;
}

void *sub_23E8E84DC(uint64_t a1, unsigned __int8 a2, uint64_t a3, int a4, uint64_t a5, unsigned __int8 a6)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a6)
      {
        if (a6 == 1)
        {
LABEL_17:
          *&v36 = a5;

          sub_23E8F1580(&v36, &unk_27E35F620, &qword_23E9050B0, sub_23E8F2BE4);
          v13 = v36;
          v14 = a3;
          v15 = a4;
          v16 = 1;
LABEL_19:
          v12 = sub_23E8EC0BC(v13, v14, v15, v16);

          return v12;
        }

        v10 = a1;

        LOBYTE(v10) = sub_23E8DCD90(v10, a5);
        sub_23E8811AC(a5, 2u);
        if (v10)
        {
          return MEMORY[0x277D84F90];
        }

LABEL_18:
        *&v36 = a5;

        sub_23E8F1580(&v36, &unk_27E35F620, &qword_23E9050B0, sub_23E8F2BE4);
        v13 = v36;
        v14 = a3;
        v15 = a4;
        v16 = 2;
        goto LABEL_19;
      }
    }

    else
    {
      v9 = a6;
      if (a6)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (!a2)
    {
      v9 = a6;
      if (!a6)
      {
        if (*&a1 != *&a5)
        {
          goto LABEL_20;
        }

        return MEMORY[0x277D84F90];
      }

LABEL_16:
      if (v9 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    if (a6)
    {
      if (a6 == 1)
      {
        v11 = a1;

        LOBYTE(v11) = sub_23E8DCD90(v11, a5);
        sub_23E8811AC(a5, 1u);
        if (v11)
        {
          return MEMORY[0x277D84F90];
        }

        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

LABEL_20:
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E548, &unk_23E907980);
  v39[3] = v17;
  v39[4] = sub_23E8C88E0(&unk_27E35F600, &qword_27E35E548, &unk_23E907980);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  v19 = sub_23E9006D4();
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, a3, v19);
  *(boxed_opaque_existential_1 + *(v17 + 36)) = a4;
  *(boxed_opaque_existential_1 + *(v17 + 40)) = a5;
  sub_23E8891B4(v39, &v36, &qword_27E35E558, &unk_23E907990);
  v31[1] = v37;
  v31[0] = v36;
  v32 = v38;
  if (*(&v37 + 1))
  {
    sub_23E881028(v31, v33);
    v12 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[0] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_23E889F50(0, v12[2] + 1, 1, v12);
      *&v31[0] = v12;
    }

    v22 = v12[2];
    v21 = v12[3];
    if (v22 >= v21 >> 1)
    {
      v12 = sub_23E889F50((v21 > 1), v22 + 1, 1, v12);
      *&v31[0] = v12;
    }

    v23 = v34;
    v24 = v35;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v26 = *(*(v23 - 8) + 64);
    MEMORY[0x28223BE20](v25);
    v28 = v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v28);
    sub_23E8F2C70(v22, v28, v31, v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_23E87E458(v31, &qword_27E35E558, &unk_23E907990);
    v12 = MEMORY[0x277D84F90];
  }

  sub_23E87E458(v39, &qword_27E35E558, &unk_23E907990);
  return v12;
}

uint64_t sub_23E8E8934(uint64_t a1, uint64_t a2)
{
  v90 = a1;
  v3 = v2;
  v87 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v86 = &v84[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F708, &qword_23E907A28);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v84[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F710, &qword_23E907A30);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v91 = &v84[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v84[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v84[-v20];
  v88 = v3;
  sub_23E8891B4(v3, &v84[-v20], &qword_27E35E430, &unk_23E902C80);
  (*(v5 + 56))(v21, 0, 1, v4);
  v22 = *(v9 + 56);
  sub_23E8891B4(v21, v12, &qword_27E35F710, &qword_23E907A30);
  sub_23E8891B4(v90, &v12[v22], &qword_27E35F710, &qword_23E907A30);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) == 1)
  {
    sub_23E87E458(v21, &qword_27E35F710, &qword_23E907A30);
    if (v23(&v12[v22], 1, v4) == 1)
    {
      sub_23E87E458(v12, &qword_27E35F710, &qword_23E907A30);
      return MEMORY[0x277D84F90];
    }

    goto LABEL_6;
  }

  sub_23E8891B4(v12, v19, &qword_27E35F710, &qword_23E907A30);
  if (v23(&v12[v22], 1, v4) == 1)
  {
    sub_23E87E458(v21, &qword_27E35F710, &qword_23E907A30);
    sub_23E87E458(v19, &qword_27E35E430, &unk_23E902C80);
LABEL_6:
    sub_23E87E458(v12, &qword_27E35F708, &qword_23E907A28);
    goto LABEL_7;
  }

  v54 = v86;
  sub_23E87E3F0(&v12[v22], v86, &qword_27E35E430, &unk_23E902C80);
  v85 = sub_23E8EB850(v19, v54);
  sub_23E87E458(v54, &qword_27E35E430, &unk_23E902C80);
  sub_23E87E458(v21, &qword_27E35F710, &qword_23E907A30);
  sub_23E87E458(v19, &qword_27E35E430, &unk_23E902C80);
  sub_23E87E458(v12, &qword_27E35F710, &qword_23E907A30);
  if (v85)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v24 = v88 + *(v4 + 36);
  v25 = *(v24 + 8);
  v26 = *(v24 + 16);
  v27 = *(v24 + 24);
  v28 = *(v24 + 32);
  v29 = *(v24 + 40);
  LOBYTE(v99) = *v24;
  *(&v99 + 1) = v25;
  v100 = v26;
  v101 = v27;
  v102 = v28;
  v103 = v29;
  v30 = v91;
  sub_23E8891B4(v90, v91, &qword_27E35F710, &qword_23E907A30);
  v31 = v23(v30, 1, v4);
  v32 = v89;
  if (v31 == 1)
  {

    sub_23E87E458(v30, &qword_27E35F710, &qword_23E907A30);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v93 = 0;
    v97 = 0;
  }

  else
  {
    v37 = v30 + *(v4 + 36);
    v33 = *(v37 + 1);
    v34 = *(v37 + 2);
    v35 = *(v37 + 3);
    v38 = *(v37 + 16);
    v36 = *(v37 + 5);
    LOBYTE(v93) = *v37;
    LOWORD(v97) = v38;

    sub_23E87E458(v30, &qword_27E35E430, &unk_23E902C80);
  }

  v94 = v33;
  v95 = v34;
  v96 = v35;
  v98 = v36;
  v39 = sub_23E892C8C(&v93, v87);
  sub_23E893ADC(v93, v94, v95);

  if (!v32)
  {
    v41 = *(v39 + 2);
    if (v41)
    {
      v42 = (v39 + 2);
      v91 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v42, &v99);
        sub_23E881028(&v99, &v93);
        v43 = v91;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v91 = sub_23E889F50(0, v91[2] + 1, 1, v91);
          v104 = v91;
        }

        v46 = v91[2];
        v45 = v91[3];
        if (v46 >= v45 >> 1)
        {
          v91 = sub_23E889F50((v45 > 1), v46 + 1, 1, v91);
          v104 = v91;
        }

        v47 = v96;
        v48 = v97;
        v49 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v96);
        v50 = *(*(v47 - 8) + 64);
        MEMORY[0x28223BE20](v49);
        v52 = &v84[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v53 + 16))(v52);
        sub_23E8F2C70(v46, v52, &v104, v47, v48);
        __swift_destroy_boxed_opaque_existential_1(&v93);
        v42 += 40;
        --v41;
      }

      while (v41);
    }

    else
    {

      v91 = MEMORY[0x277D84F90];
    }

    v55 = v87;
    v56 = sub_23E8E6D48(v90, v87, &qword_27E35F710, &qword_23E907A30, &qword_27E35E430, &unk_23E902C80);
    v57 = v56[2];
    if (v57)
    {
      v89 = v56;
      v58 = (v56 + 4);
      v59 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v58, &v99);
        sub_23E881028(&v99, &v93);
        v60 = swift_isUniquelyReferenced_nonNull_native();
        v104 = v59;
        if ((v60 & 1) == 0)
        {
          v59 = sub_23E889F50(0, v59[2] + 1, 1, v59);
          v104 = v59;
        }

        v62 = v59[2];
        v61 = v59[3];
        if (v62 >= v61 >> 1)
        {
          v59 = sub_23E889F50((v61 > 1), v62 + 1, 1, v59);
          v104 = v59;
        }

        v63 = v96;
        v64 = v97;
        v65 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v96);
        v66 = *(*(v63 - 8) + 64);
        MEMORY[0x28223BE20](v65);
        v68 = &v84[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v69 + 16))(v68);
        sub_23E8F2C70(v62, v68, &v104, v63, v64);
        __swift_destroy_boxed_opaque_existential_1(&v93);
        v58 += 40;
        --v57;
      }

      while (v57);

      v55 = v87;
    }

    else
    {

      v59 = MEMORY[0x277D84F90];
    }

    v70 = sub_23E8E6010(v90, v55, &qword_27E35F710, &qword_23E907A30, &qword_27E35E430, &unk_23E902C80);
    v89 = 0;
    v71 = v70[2];
    if (v71)
    {
      v90 = v70;
      v72 = (v70 + 4);
      v73 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v72, &v99);
        sub_23E881028(&v99, &v93);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v104 = v73;
        if ((v74 & 1) == 0)
        {
          v73 = sub_23E889F50(0, v73[2] + 1, 1, v73);
          v104 = v73;
        }

        v76 = v73[2];
        v75 = v73[3];
        if (v76 >= v75 >> 1)
        {
          v73 = sub_23E889F50((v75 > 1), v76 + 1, 1, v73);
          v104 = v73;
        }

        v77 = v96;
        v78 = v97;
        v79 = __swift_mutable_project_boxed_opaque_existential_1(&v93, v96);
        v80 = *(*(v77 - 8) + 64);
        MEMORY[0x28223BE20](v79);
        v82 = &v84[-((v81 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v83 + 16))(v82);
        sub_23E8F2C70(v76, v82, &v104, v77, v78);
        __swift_destroy_boxed_opaque_existential_1(&v93);
        v72 += 40;
        --v71;
      }

      while (v71);
    }

    else
    {

      v73 = MEMORY[0x277D84F90];
    }

    v92 = v91;
    sub_23E8EBFB4(v73);
    sub_23E8EBFB4(v59);
    return v92;
  }

  return result;
}

uint64_t sub_23E8E939C(uint64_t a1, void *a2)
{
  v94 = a1;
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E858, &qword_23E9035D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = &v83[-v5];
  v6 = type metadata accessor for ImageContent(0);
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v6);
  v89 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v85 = &v83[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F718, &qword_23E907A38);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v83[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F720, &unk_23E907A40);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v86 = &v83[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v83[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v83[-v25];
  v92 = v2;
  sub_23E8891B4(v2, &v83[-v25], &unk_27E35E440, &unk_23E902C90);
  (*(v10 + 56))(v26, 0, 1, v9);
  v27 = *(v14 + 56);
  sub_23E8891B4(v26, v17, &unk_27E35F720, &unk_23E907A40);
  sub_23E8891B4(v94, &v17[v27], &unk_27E35F720, &unk_23E907A40);
  v28 = *(v10 + 48);
  if (v28(v17, 1, v9) == 1)
  {
    sub_23E87E458(v26, &unk_27E35F720, &unk_23E907A40);
    if (v28(&v17[v27], 1, v9) == 1)
    {
      sub_23E87E458(v17, &unk_27E35F720, &unk_23E907A40);
      return MEMORY[0x277D84F90];
    }

    goto LABEL_6;
  }

  sub_23E8891B4(v17, v24, &unk_27E35F720, &unk_23E907A40);
  if (v28(&v17[v27], 1, v9) == 1)
  {
    sub_23E87E458(v26, &unk_27E35F720, &unk_23E907A40);
    sub_23E87E458(v24, &unk_27E35E440, &unk_23E902C90);
LABEL_6:
    sub_23E87E458(v17, &qword_27E35F718, &qword_23E907A38);
    goto LABEL_7;
  }

  v51 = &v17[v27];
  v52 = v85;
  sub_23E87E3F0(v51, v85, &unk_27E35E440, &unk_23E902C90);
  v84 = sub_23E8EB680(v24, v52);
  sub_23E87E458(v52, &unk_27E35E440, &unk_23E902C90);
  sub_23E87E458(v26, &unk_27E35F720, &unk_23E907A40);
  sub_23E87E458(v24, &unk_27E35E440, &unk_23E902C90);
  sub_23E87E458(v17, &unk_27E35F720, &unk_23E907A40);
  if (v84)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v29 = v89;
  sub_23E8F2D1C(v92 + *(v9 + 36), v89, type metadata accessor for ImageContent);
  v30 = v86;
  sub_23E8891B4(v94, v86, &unk_27E35F720, &unk_23E907A40);
  if (v28(v30, 1, v9) == 1)
  {
    sub_23E87E458(v30, &unk_27E35F720, &unk_23E907A40);
    v31 = 1;
    v33 = v90;
    v32 = v91;
  }

  else
  {
    v33 = v90;
    sub_23E8F2D1C(&v30[*(v9 + 36)], v90, type metadata accessor for ImageContent);
    sub_23E87E458(v30, &unk_27E35E440, &unk_23E902C90);
    v31 = 0;
    v32 = v91;
  }

  (*(v87 + 56))(v33, v31, 1, v88);
  v34 = v93;
  v35 = sub_23E892558(v33, v32);
  sub_23E87E458(v33, &qword_27E35E858, &qword_23E9035D8);
  result = sub_23E8F2D84(v29, type metadata accessor for ImageContent);
  if (!v34)
  {
    v93 = 0;
    v37 = *(v35 + 16);
    if (v37)
    {
      v38 = v35 + 32;
      v39 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v38, v99);
        sub_23E881028(v99, v96);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v39 = sub_23E889F50(0, v39[2] + 1, 1, v39);
          v100 = v39;
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v43 = sub_23E889F50((v41 > 1), v42 + 1, 1, v39);
          v100 = v43;
        }

        else
        {
          v43 = v39;
        }

        v44 = v97;
        v45 = v98;
        v46 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
        v47 = *(*(v44 - 8) + 64);
        MEMORY[0x28223BE20](v46);
        v49 = &v83[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v50 + 16))(v49);
        sub_23E8F2C70(v42, v49, &v100, v44, v45);
        __swift_destroy_boxed_opaque_existential_1(v96);
        v38 += 40;
        --v37;
        v39 = v43;
      }

      while (v37);
    }

    else
    {

      v39 = MEMORY[0x277D84F90];
    }

    v53 = sub_23E8E6D48(v94, v91, &unk_27E35F720, &unk_23E907A40, &unk_27E35E440, &unk_23E902C90);
    v54 = v53[2];
    if (v54)
    {
      v55 = v39;
      v90 = v53;
      v56 = (v53 + 4);
      v57 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v56, v99);
        sub_23E881028(v99, v96);
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v57;
        if ((v58 & 1) == 0)
        {
          v57 = sub_23E889F50(0, v57[2] + 1, 1, v57);
          v100 = v57;
        }

        v60 = v57[2];
        v59 = v57[3];
        if (v60 >= v59 >> 1)
        {
          v57 = sub_23E889F50((v59 > 1), v60 + 1, 1, v57);
          v100 = v57;
        }

        v61 = v97;
        v62 = v98;
        v63 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
        v64 = *(*(v61 - 8) + 64);
        MEMORY[0x28223BE20](v63);
        v66 = &v83[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v67 + 16))(v66);
        sub_23E8F2C70(v60, v66, &v100, v61, v62);
        __swift_destroy_boxed_opaque_existential_1(v96);
        v56 += 40;
        --v54;
      }

      while (v54);

      v39 = v55;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    v68 = v93;
    v69 = sub_23E8E6010(v94, v91, &unk_27E35F720, &unk_23E907A40, &unk_27E35E440, &unk_23E902C90);
    if (v68)
    {
    }

    else
    {
      v93 = 0;
      v94 = v39;
      v70 = v69[2];
      if (v70)
      {
        v92 = v69;
        v71 = (v69 + 4);
        v72 = MEMORY[0x277D84F90];
        do
        {
          sub_23E8810DC(v71, v99);
          sub_23E881028(v99, v96);
          v73 = swift_isUniquelyReferenced_nonNull_native();
          v100 = v72;
          if ((v73 & 1) == 0)
          {
            v72 = sub_23E889F50(0, v72[2] + 1, 1, v72);
            v100 = v72;
          }

          v75 = v72[2];
          v74 = v72[3];
          if (v75 >= v74 >> 1)
          {
            v72 = sub_23E889F50((v74 > 1), v75 + 1, 1, v72);
            v100 = v72;
          }

          v76 = v97;
          v77 = v98;
          v78 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
          v79 = *(*(v76 - 8) + 64);
          MEMORY[0x28223BE20](v78);
          v81 = &v83[-((v80 + 15) & 0xFFFFFFFFFFFFFFF0)];
          (*(v82 + 16))(v81);
          sub_23E8F2C70(v75, v81, &v100, v76, v77);
          __swift_destroy_boxed_opaque_existential_1(v96);
          v71 += 40;
          --v70;
        }

        while (v70);
      }

      else
      {

        v72 = MEMORY[0x277D84F90];
      }

      v95 = v94;
      sub_23E8EBFB4(v72);
      sub_23E8EBFB4(v57);
      return v95;
    }
  }

  return result;
}

uint64_t sub_23E8E9EA4(uint64_t a1, void *a2)
{
  v84 = a1;
  v3 = v2;
  v81 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v80 = &v78[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F5D0, &qword_23E907968);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v78[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v85 = &v78[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v78[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v78[-v20];
  v82 = v3;
  sub_23E8891B4(v3, &v78[-v20], &unk_27E35E630, &qword_23E903300);
  (*(v5 + 56))(v21, 0, 1, v4);
  v22 = *(v9 + 56);
  sub_23E8891B4(v21, v12, &unk_27E35F3D0, &qword_23E905770);
  sub_23E8891B4(v84, &v12[v22], &unk_27E35F3D0, &qword_23E905770);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) == 1)
  {
    sub_23E87E458(v21, &unk_27E35F3D0, &qword_23E905770);
    if (v23(&v12[v22], 1, v4) == 1)
    {
      sub_23E87E458(v12, &unk_27E35F3D0, &qword_23E905770);
      return MEMORY[0x277D84F90];
    }

    goto LABEL_6;
  }

  sub_23E8891B4(v12, v19, &unk_27E35F3D0, &qword_23E905770);
  if (v23(&v12[v22], 1, v4) == 1)
  {
    sub_23E87E458(v21, &unk_27E35F3D0, &qword_23E905770);
    sub_23E87E458(v19, &unk_27E35E630, &qword_23E903300);
LABEL_6:
    sub_23E87E458(v12, &unk_27E35F5D0, &qword_23E907968);
    goto LABEL_7;
  }

  v49 = v80;
  sub_23E87E3F0(&v12[v22], v80, &unk_27E35E630, &qword_23E903300);
  v79 = sub_23E8EB4A8(v19, v49);
  sub_23E87E458(v49, &unk_27E35E630, &qword_23E903300);
  sub_23E87E458(v21, &unk_27E35F3D0, &qword_23E905770);
  sub_23E87E458(v19, &unk_27E35E630, &qword_23E903300);
  sub_23E87E458(v12, &unk_27E35F3D0, &qword_23E905770);
  if (v79)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v24 = (v82 + *(v4 + 36));
  v25 = *v24;
  v26 = v24[1];
  v27 = v85;
  sub_23E8891B4(v84, v85, &unk_27E35F3D0, &qword_23E905770);
  v28 = v23(v27, 1, v4);
  v29 = v83;
  if (v28 == 1)
  {
    sub_23E87E458(v27, &unk_27E35F3D0, &qword_23E905770);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v32 = (v27 + *(v4 + 36));
    v30 = *v32;
    v31 = v32[1];

    sub_23E87E458(v27, &unk_27E35E630, &qword_23E903300);
  }

  v33 = v81;
  *&v90[0] = v25;
  *(&v90[0] + 1) = v26;
  v87[0] = v30;
  v87[1] = v31;
  v34 = sub_23E8C61DC(v87, v81);

  if (!v29)
  {
    v36 = *(v34 + 16);
    if (v36)
    {
      v37 = v34 + 32;
      v85 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v37, v90);
        sub_23E881028(v90, v87);
        v38 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_23E889F50(0, v85[2] + 1, 1, v85);
          v91 = v85;
        }

        v41 = v85[2];
        v40 = v85[3];
        if (v41 >= v40 >> 1)
        {
          v85 = sub_23E889F50((v40 > 1), v41 + 1, 1, v85);
          v91 = v85;
        }

        v42 = v88;
        v43 = v89;
        v44 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
        v45 = *(*(v42 - 8) + 64);
        MEMORY[0x28223BE20](v44);
        v47 = &v78[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v48 + 16))(v47);
        sub_23E8F2C70(v41, v47, &v91, v42, v43);
        __swift_destroy_boxed_opaque_existential_1(v87);
        v37 += 40;
        --v36;
      }

      while (v36);

      v33 = v81;
    }

    else
    {

      v85 = MEMORY[0x277D84F90];
    }

    v50 = sub_23E8E6D48(v84, v33, &unk_27E35F3D0, &qword_23E905770, &unk_27E35E630, &qword_23E903300);
    v51 = v50[2];
    if (v51)
    {
      v83 = v50;
      v52 = (v50 + 4);
      v53 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v52, v90);
        sub_23E881028(v90, v87);
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v91 = v53;
        if ((v54 & 1) == 0)
        {
          v53 = sub_23E889F50(0, v53[2] + 1, 1, v53);
          v91 = v53;
        }

        v56 = v53[2];
        v55 = v53[3];
        if (v56 >= v55 >> 1)
        {
          v53 = sub_23E889F50((v55 > 1), v56 + 1, 1, v53);
          v91 = v53;
        }

        v57 = v88;
        v58 = v89;
        v59 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
        v60 = *(*(v57 - 8) + 64);
        MEMORY[0x28223BE20](v59);
        v62 = &v78[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v63 + 16))(v62);
        sub_23E8F2C70(v56, v62, &v91, v57, v58);
        __swift_destroy_boxed_opaque_existential_1(v87);
        v52 += 40;
        --v51;
      }

      while (v51);
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
    }

    v64 = sub_23E8E6010(v84, v81, &unk_27E35F3D0, &qword_23E905770, &unk_27E35E630, &qword_23E903300);
    v83 = 0;
    v65 = v64[2];
    if (v65)
    {
      v84 = v64;
      v66 = (v64 + 4);
      v67 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v66, v90);
        sub_23E881028(v90, v87);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v91 = v67;
        if ((v68 & 1) == 0)
        {
          v67 = sub_23E889F50(0, v67[2] + 1, 1, v67);
          v91 = v67;
        }

        v70 = v67[2];
        v69 = v67[3];
        if (v70 >= v69 >> 1)
        {
          v67 = sub_23E889F50((v69 > 1), v70 + 1, 1, v67);
          v91 = v67;
        }

        v71 = v88;
        v72 = v89;
        v73 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
        v74 = *(*(v71 - 8) + 64);
        MEMORY[0x28223BE20](v73);
        v76 = &v78[-((v75 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v77 + 16))(v76);
        sub_23E8F2C70(v70, v76, &v91, v71, v72);
        __swift_destroy_boxed_opaque_existential_1(v87);
        v66 += 40;
        --v65;
      }

      while (v65);
    }

    else
    {

      v67 = MEMORY[0x277D84F90];
    }

    v86 = v85;
    sub_23E8EBFB4(v67);
    sub_23E8EBFB4(v53);
    return v86;
  }

  return result;
}

void *sub_23E8EA874(uint64_t a1, void *a2)
{
  v3 = v2;
  v77 = a2;
  v80 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v76 = &v74[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F730, &qword_23E907A50);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v74[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F738, &unk_23E907A58);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v81 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v74[-v20];
  v78 = v3;
  sub_23E8891B4(v3, &v74[-v20], &qword_27E35E438, &unk_23E907E20);
  (*(v5 + 56))(v21, 0, 1, v4);
  v22 = *(v9 + 56);
  sub_23E8891B4(v21, v12, &qword_27E35F738, &unk_23E907A58);
  sub_23E8891B4(v80, &v12[v22], &qword_27E35F738, &unk_23E907A58);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) == 1)
  {
    sub_23E87E458(v21, &qword_27E35F738, &unk_23E907A58);
    if (v23(&v12[v22], 1, v4) == 1)
    {
      sub_23E87E458(v12, &qword_27E35F738, &unk_23E907A58);
      return MEMORY[0x277D84F90];
    }

    goto LABEL_6;
  }

  sub_23E8891B4(v12, v19, &qword_27E35F738, &unk_23E907A58);
  if (v23(&v12[v22], 1, v4) == 1)
  {
    sub_23E87E458(v21, &qword_27E35F738, &unk_23E907A58);
    sub_23E87E458(v19, &qword_27E35E438, &unk_23E907E20);
LABEL_6:
    sub_23E87E458(v12, &qword_27E35F730, &qword_23E907A50);
    goto LABEL_7;
  }

  v45 = v76;
  sub_23E87E3F0(&v12[v22], v76, &qword_27E35E438, &unk_23E907E20);
  v75 = sub_23E8EB298(v19, v45);
  sub_23E87E458(v45, &qword_27E35E438, &unk_23E907E20);
  sub_23E87E458(v21, &qword_27E35F738, &unk_23E907A58);
  sub_23E87E458(v19, &qword_27E35E438, &unk_23E907E20);
  sub_23E87E458(v12, &qword_27E35F738, &unk_23E907A58);
  if (v75)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_7:
  v24 = (v78 + *(v4 + 36));
  v25 = v24[1];
  v86[0] = *v24;
  v86[1] = v25;
  v87[0] = v24[2];
  *(v87 + 14) = *(v24 + 46);
  v26 = v81;
  sub_23E8891B4(v80, v81, &qword_27E35F738, &unk_23E907A58);
  if (v23(v26, 1, v4) == 1)
  {
    sub_23E87E458(v26, &qword_27E35F738, &unk_23E907A58);
    v83 = 0u;
    v84 = 0u;
    memset(v85, 0, 28);
    *&v85[28] = 512;
  }

  else
  {
    v27 = (v26 + *(v4 + 36));
    v28 = v27[1];
    v83 = *v27;
    v84 = v28;
    *v85 = v27[2];
    *&v85[14] = *(v27 + 46);
    sub_23E87E458(v26, &qword_27E35E438, &unk_23E907E20);
  }

  v29 = v77;
  v30 = v79;
  result = sub_23E8D476C(&v83, v77);
  if (!v30)
  {
    v32 = result[2];
    if (v32)
    {
      v33 = (result + 4);
      v81 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v33, v86);
        sub_23E881028(v86, &v83);
        v34 = v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = sub_23E889F50(0, v81[2] + 1, 1, v81);
          v88 = v81;
        }

        v37 = v81[2];
        v36 = v81[3];
        if (v37 >= v36 >> 1)
        {
          v81 = sub_23E889F50((v36 > 1), v37 + 1, 1, v81);
          v88 = v81;
        }

        v38 = *(&v84 + 1);
        v39 = *v85;
        v40 = __swift_mutable_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
        v41 = *(*(v38 - 8) + 64);
        MEMORY[0x28223BE20](v40);
        v43 = &v74[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v44 + 16))(v43);
        sub_23E8F2C70(v37, v43, &v88, v38, v39);
        __swift_destroy_boxed_opaque_existential_1(&v83);
        v33 += 40;
        --v32;
      }

      while (v32);

      v29 = v77;
    }

    else
    {

      v81 = MEMORY[0x277D84F90];
    }

    v46 = sub_23E8E6D48(v80, v29, &qword_27E35F738, &unk_23E907A58, &qword_27E35E438, &unk_23E907E20);
    v47 = v46[2];
    if (v47)
    {
      v79 = v46;
      v48 = (v46 + 4);
      v49 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v48, v86);
        sub_23E881028(v86, &v83);
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v49;
        if ((v50 & 1) == 0)
        {
          v49 = sub_23E889F50(0, v49[2] + 1, 1, v49);
          v88 = v49;
        }

        v52 = v49[2];
        v51 = v49[3];
        if (v52 >= v51 >> 1)
        {
          v49 = sub_23E889F50((v51 > 1), v52 + 1, 1, v49);
          v88 = v49;
        }

        v53 = *(&v84 + 1);
        v54 = *v85;
        v55 = __swift_mutable_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
        v56 = *(*(v53 - 8) + 64);
        MEMORY[0x28223BE20](v55);
        v58 = &v74[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v59 + 16))(v58);
        sub_23E8F2C70(v52, v58, &v88, v53, v54);
        __swift_destroy_boxed_opaque_existential_1(&v83);
        v48 += 40;
        --v47;
      }

      while (v47);
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    v60 = sub_23E8E6010(v80, v77, &qword_27E35F738, &unk_23E907A58, &qword_27E35E438, &unk_23E907E20);
    v79 = 0;
    v61 = v60[2];
    if (v61)
    {
      v80 = v60;
      v62 = (v60 + 4);
      v63 = MEMORY[0x277D84F90];
      do
      {
        sub_23E8810DC(v62, v86);
        sub_23E881028(v86, &v83);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v88 = v63;
        if ((v64 & 1) == 0)
        {
          v63 = sub_23E889F50(0, v63[2] + 1, 1, v63);
          v88 = v63;
        }

        v66 = v63[2];
        v65 = v63[3];
        if (v66 >= v65 >> 1)
        {
          v63 = sub_23E889F50((v65 > 1), v66 + 1, 1, v63);
          v88 = v63;
        }

        v67 = *(&v84 + 1);
        v68 = *v85;
        v69 = __swift_mutable_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
        v70 = *(*(v67 - 8) + 64);
        MEMORY[0x28223BE20](v69);
        v72 = &v74[-((v71 + 15) & 0xFFFFFFFFFFFFFFF0)];
        (*(v73 + 16))(v72);
        sub_23E8F2C70(v66, v72, &v88, v67, v68);
        __swift_destroy_boxed_opaque_existential_1(&v83);
        v62 += 40;
        --v61;
      }

      while (v61);
    }

    else
    {

      v63 = MEMORY[0x277D84F90];
    }

    v82 = v81;
    sub_23E8EBFB4(v63);
    sub_23E8EBFB4(v49);
    return v82;
  }

  return result;
}

uint64_t sub_23E8EB298(uint64_t a1, uint64_t a2)
{
  if ((sub_23E9006B4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v5 = v4[9];
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = v6[1];
  v16[0] = *v6;
  v16[1] = v8;
  v17[0] = v6[2];
  *(v17 + 14) = *(v6 + 46);
  v9 = v7[1];
  v18[0] = *v7;
  v18[1] = v9;
  v19[0] = v7[2];
  *(v19 + 14) = *(v7 + 46);
  if (!sub_23E8EBA4C(v16, v18))
  {
    goto LABEL_12;
  }

  if (sub_23E89A140(*(a1 + v4[10]), *(a2 + v4[10])) & 1) != 0 && (v10 = v4[11], (sub_23E89B274(*(a1 + v10), *(a1 + v10 + 8), *(a1 + v10 + 16) | (*(a1 + v10 + 20) << 32) | (*(a1 + v10 + 21) << 40), *(a2 + v10), *(a2 + v10 + 8), *(a2 + v10 + 16) | (*(a2 + v10 + 20) << 32) | (*(a2 + v10 + 21) << 40))) && (v11 = v4[12], (sub_23E89B474(*(a1 + v11), *(a1 + v11 + 8) | (*(a1 + v11 + 12) << 32) | (*(a1 + v11 + 13) << 40), *(a2 + v11), *(a2 + v11 + 8) | (*(a2 + v11 + 12) << 32) | (*(a2 + v11 + 13) << 40))) && (sub_23E89B564(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) & 1) != 0 && (v12 = v4[14], (sub_23E89B5D4(*(a1 + v12), *(a1 + v12 + 8), *(a1 + v12 + 16), *(a1 + v12 + 24), *(a2 + v12), *(a2 + v12 + 8), *(a2 + v12 + 16), *(a2 + v12 + 24))) && (sub_23E89B7E4(*(a1 + v4[15]), *(a1 + v4[15] + 8), *(a2 + v4[15]), *(a2 + v4[15] + 8)) & 1) != 0 && (v13 = v4[16], (_s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*(a1 + v13), *(a1 + v13 + 8), *(a1 + v13 + 16), *(a2 + v13), *(a2 + v13 + 8), *(a2 + v13 + 16))) && *(a1 + v4[17]) == *(a2 + v4[17]))
  {
    v14 = vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v4[18]), *(a2 + v4[18]))));
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_23E8EB4A8(uint64_t a1, uint64_t a2)
{
  if (sub_23E9006B4() & 1) != 0 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300), sub_23E8EBC98(*(a1 + v4[9]), *(a1 + v4[9] + 8), *(a2 + v4[9]), *(a2 + v4[9] + 8))) && (sub_23E89A140(*(a1 + v4[10]), *(a2 + v4[10])) & 1) != 0 && (v5 = v4[11], (sub_23E89B274(*(a1 + v5), *(a1 + v5 + 8), *(a1 + v5 + 16) | (*(a1 + v5 + 20) << 32) | (*(a1 + v5 + 21) << 40), *(a2 + v5), *(a2 + v5 + 8), *(a2 + v5 + 16) | (*(a2 + v5 + 20) << 32) | (*(a2 + v5 + 21) << 40))) && (v6 = v4[12], (sub_23E89B474(*(a1 + v6), *(a1 + v6 + 8) | (*(a1 + v6 + 12) << 32) | (*(a1 + v6 + 13) << 40), *(a2 + v6), *(a2 + v6 + 8) | (*(a2 + v6 + 12) << 32) | (*(a2 + v6 + 13) << 40))) && (sub_23E89B564(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) & 1) != 0 && (v7 = v4[14], (sub_23E89B5D4(*(a1 + v7), *(a1 + v7 + 8), *(a1 + v7 + 16), *(a1 + v7 + 24), *(a2 + v7), *(a2 + v7 + 8), *(a2 + v7 + 16), *(a2 + v7 + 24))) && (sub_23E89B7E4(*(a1 + v4[15]), *(a1 + v4[15] + 8), *(a2 + v4[15]), *(a2 + v4[15] + 8)) & 1) != 0 && (v8 = v4[16], (_s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*(a1 + v8), *(a1 + v8 + 8), *(a1 + v8 + 16), *(a2 + v8), *(a2 + v8 + 8), *(a2 + v8 + 16))) && *(a1 + v4[17]) == *(a2 + v4[17]))
  {
    v9 = vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v4[18]), *(a2 + v4[18]))));
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_23E8EB680(uint64_t a1, uint64_t a2)
{
  if (sub_23E9006B4() & 1) != 0 && (v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90), sub_23E8EBB80(a1 + v4[9], a2 + v4[9])) && (sub_23E89A140(*(a1 + v4[10]), *(a2 + v4[10])) & 1) != 0 && (v5 = v4[11], (sub_23E89B274(*(a1 + v5), *(a1 + v5 + 8), *(a1 + v5 + 16) | (*(a1 + v5 + 20) << 32) | (*(a1 + v5 + 21) << 40), *(a2 + v5), *(a2 + v5 + 8), *(a2 + v5 + 16) | (*(a2 + v5 + 20) << 32) | (*(a2 + v5 + 21) << 40))) && (v6 = v4[12], (sub_23E89B474(*(a1 + v6), *(a1 + v6 + 8) | (*(a1 + v6 + 12) << 32) | (*(a1 + v6 + 13) << 40), *(a2 + v6), *(a2 + v6 + 8) | (*(a2 + v6 + 12) << 32) | (*(a2 + v6 + 13) << 40))) && (sub_23E89B564(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) & 1) != 0 && (v7 = v4[14], (sub_23E89B5D4(*(a1 + v7), *(a1 + v7 + 8), *(a1 + v7 + 16), *(a1 + v7 + 24), *(a2 + v7), *(a2 + v7 + 8), *(a2 + v7 + 16), *(a2 + v7 + 24))) && (sub_23E89B7E4(*(a1 + v4[15]), *(a1 + v4[15] + 8), *(a2 + v4[15]), *(a2 + v4[15] + 8)) & 1) != 0 && (v8 = v4[16], (_s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*(a1 + v8), *(a1 + v8 + 8), *(a1 + v8 + 16), *(a2 + v8), *(a2 + v8 + 8), *(a2 + v8 + 16))) && *(a1 + v4[17]) == *(a2 + v4[17]))
  {
    v9 = vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v4[18]), *(a2 + v4[18]))));
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_23E8EB850(uint64_t a1, uint64_t a2)
{
  if ((sub_23E9006B4() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v5 = v4[9];
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = v6[1];
  v18[0] = *v6;
  v18[1] = v8;
  v9 = *v7;
  v10 = v7[1];
  v18[2] = v6[2];
  v19[0] = v9;
  v11 = v7[2];
  v19[1] = v10;
  v19[2] = v11;
  if (!sub_23E8EBAF0(v18, v19))
  {
    goto LABEL_12;
  }

  if (sub_23E89A140(*(a1 + v4[10]), *(a2 + v4[10])) & 1) != 0 && (v12 = v4[11], (sub_23E89B274(*(a1 + v12), *(a1 + v12 + 8), *(a1 + v12 + 16) | (*(a1 + v12 + 20) << 32) | (*(a1 + v12 + 21) << 40), *(a2 + v12), *(a2 + v12 + 8), *(a2 + v12 + 16) | (*(a2 + v12 + 20) << 32) | (*(a2 + v12 + 21) << 40))) && (v13 = v4[12], (sub_23E89B474(*(a1 + v13), *(a1 + v13 + 8) | (*(a1 + v13 + 12) << 32) | (*(a1 + v13 + 13) << 40), *(a2 + v13), *(a2 + v13 + 8) | (*(a2 + v13 + 12) << 32) | (*(a2 + v13 + 13) << 40))) && (sub_23E89B564(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) & 1) != 0 && (v14 = v4[14], (sub_23E89B5D4(*(a1 + v14), *(a1 + v14 + 8), *(a1 + v14 + 16), *(a1 + v14 + 24), *(a2 + v14), *(a2 + v14 + 8), *(a2 + v14 + 16), *(a2 + v14 + 24))) && (sub_23E89B7E4(*(a1 + v4[15]), *(a1 + v4[15] + 8), *(a2 + v4[15]), *(a2 + v4[15] + 8)) & 1) != 0 && (v15 = v4[16], (_s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(*(a1 + v15), *(a1 + v15 + 8), *(a1 + v15 + 16), *(a2 + v15), *(a2 + v15 + 8), *(a2 + v15 + 16))) && *(a1 + v4[17]) == *(a2 + v4[17]))
  {
    v16 = vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v4[18]), *(a2 + v4[18]))));
  }

  else
  {
LABEL_12:
    v16 = 0;
  }

  return v16 & 1;
}

BOOL sub_23E8EBA4C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v10[2] = *a1;
  v10[3] = v2;
  v11[0] = a1[2];
  *(v11 + 14) = *(a1 + 46);
  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  v10[0] = a2[2];
  *(v10 + 14) = *(a2 + 46);
  sub_23E900F24();
  RingContent.hash(into:)(v7);
  sub_23E900F24();
  RingContent.hash(into:)(&v6);
  v4 = sub_23E900F04();
  return v4 == sub_23E900F04();
}

BOOL sub_23E8EBAF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *&v7[15] = *a1;
  *&v7[17] = v2;
  *&v7[19] = a1[2];
  v3 = a2[1];
  *&v7[9] = *a2;
  *&v7[11] = v3;
  *&v7[13] = a2[2];
  sub_23E900F24();
  TextContent.hash(into:)(v7);
  sub_23E900F24();
  TextContent.hash(into:)(v6);
  v4 = sub_23E900F04();
  return v4 == sub_23E900F04();
}

BOOL sub_23E8EBB80(uint64_t a1, uint64_t a2)
{
  sub_23E900F24();
  ImageContent.ContentType.hash(into:)(v16);
  v4 = type metadata accessor for ImageContent(0);
  v5 = a1 + *(v4 + 20);
  v6 = *(v5 + 16);
  if (v6 == 255)
  {
    sub_23E900ED4();
  }

  else
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    sub_23E900ED4();
    Color.hash(into:)(v16, v8, v7, v6);
  }

  sub_23E900F24();
  ImageContent.ContentType.hash(into:)(v15);
  v9 = a2 + *(v4 + 20);
  v10 = *(v9 + 16);
  if (v10 == 255)
  {
    sub_23E900ED4();
  }

  else
  {
    v12 = *v9;
    v11 = *(v9 + 8);
    sub_23E900ED4();
    Color.hash(into:)(v15, v12, v11, v10);
  }

  v13 = sub_23E900F04();
  return v13 == sub_23E900F04();
}

BOOL sub_23E8EBC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v11 = a2;
  v8 = a3;
  v9 = a4;
  sub_23E900F24();
  ContainerContent.hash(into:)(v7);
  sub_23E900F24();
  ContainerContent.hash(into:)(v6);
  v4 = sub_23E900F04();
  return v4 == sub_23E900F04();
}

uint64_t sub_23E8EBD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23E8891B4(a3, v24 - v10, &qword_27E35E5E0, &qword_23E905750);
  v12 = sub_23E900A74();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23E87E458(v11, &qword_27E35E5E0, &qword_23E905750);
  }

  else
  {
    sub_23E900A64();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23E900A34();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23E9008E4() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23E87E458(a3, &qword_27E35E5E0, &qword_23E905750);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void *sub_23E8EBFB4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23E889F50(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23E8EC0BC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F620, &qword_23E9050B0);
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v50 - v10;
  v11 = sub_23E9006D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F630, &qword_23E9050C8);
  v57 = *(v61 - 8);
  v18 = *(v57 + 64);
  v19 = MEMORY[0x28223BE20](v61);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v50 = a2;
    v55 = v17;
    v51 = &v50 - v22;
    v52 = a3;
    v53 = a4;
    v64 = MEMORY[0x277D84F90];
    v60 = v11;
    sub_23E8AF81C(0, v24, 0);
    v25 = v60;
    v26 = v64;
    v27 = a1 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v58 = (v12 + 16);
    v59 = v12;
    v62 = *(v62 + 72);
    v28 = v27;
    v29 = v24;
    do
    {
      v30 = v63;
      sub_23E8891B4(v28, v63, &unk_27E35F620, &qword_23E9050B0);
      v56 = *v58;
      v56(v21, v30, v25);
      sub_23E87E3F0(v30, &v21[*(v61 + 36)], &unk_27E35F620, &qword_23E9050B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F638, &unk_23E9079B0);
      swift_storeEnumTagMultiPayload();
      v64 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_23E8AF81C(v31 > 1, v32 + 1, 1);
        v26 = v64;
      }

      *(v26 + 16) = v32 + 1;
      sub_23E87E3F0(v21, v26 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v32, &qword_27E35F630, &qword_23E9050C8);
      v28 += v62;
      --v29;
      v25 = v60;
    }

    while (v29);
    v56(v55, v50, v60);
    v64 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v24, 0);
    v33 = v60;
    v34 = v64;
    v35 = (v59 + 32);
    v58 = ((v59 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v36 = v54;
    do
    {
      v37 = v63;
      sub_23E8891B4(v27, v63, &unk_27E35F620, &qword_23E9050B0);
      v38 = *v35;
      (*v35)(v36, v37, v33);
      v64 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_23E8AF7FC(v39 > 1, v40 + 1, 1);
        v33 = v60;
        v34 = v64;
      }

      *(v34 + 16) = v40 + 1;
      v38((v34 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40), v36, v33);
      v27 += v62;
      --v24;
    }

    while (v24);
    LOBYTE(a3) = v52;
    v41 = v53;
    v23 = v51;
    v42 = v33;
    v43 = v55;
  }

  else
  {
    (*(v12 + 16))(v17, a2, v11);
    v38 = *(v12 + 32);
    v43 = v17;
    v26 = MEMORY[0x277D84F90];
    v41 = a4;
    v34 = MEMORY[0x277D84F90];
    v42 = v11;
  }

  v44 = v61;
  v45 = &v23[*(v61 + 36)];
  *v45 = a3;
  v45[1] = v41;
  *(v45 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F638, &unk_23E9079B0);
  swift_storeEnumTagMultiPayload();
  v38(v23, v43, v42);
  v46 = sub_23E8BCD50(v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v44;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F028, &qword_27E35F630, &qword_23E9050C8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v23, boxed_opaque_existential_1, &qword_27E35F630, &qword_23E9050C8);
  v64 = v46;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v23, &qword_27E35F630, &qword_23E9050C8);
  return v64;
}
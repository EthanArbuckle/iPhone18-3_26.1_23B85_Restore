id sub_2408C66C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F18, &unk_2408D9C90);
  v2 = *v0;
  v3 = sub_2408D51B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2407EEB40(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2407F6498(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_2408C6844(uint64_t a1, uint64_t a2, int64_t a3, int a4)
{
  v5 = v4;
  v10 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  if ((result & 1) == 0)
  {
    result = sub_2408C53A4();
    *v5 = v12;
  }

  if (a3 < 0 || 1 << *(v12 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v12 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v12 + 36) == a4)
  {
    v13 = *(v12 + 48);
    v14 = sub_2408D4260();
    (*(*(v14 - 8) + 32))(a1, v13 + *(*(v14 - 8) + 72) * a3, v14);
    v15 = *(v12 + 56);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
    (*(*(v16 - 8) + 32))(a2, v15 + *(*(v16 - 8) + 72) * a3, v16);
    result = sub_2408C495C(a3, v12);
    *v5 = v12;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2408C6998(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2408C69E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2408C6A98()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_2408C6AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407D379C;

  return v13(a1, a2, a3, a4);
}

void sub_2408C6C04(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_2408D38D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2407D9440(a1, &qword_27E507F00, &qword_2408D6D50);
    sub_2408C7588(a2, v8);

    sub_2407D9440(v8, &qword_27E507F00, &qword_2408D6D50);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_2408C9AAC(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v17;
  }
}

uint64_t sub_2408C6DC8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_2408D3770();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2407D9440(a1, &qword_27E5071D0, &unk_2408D9C70);
    sub_2408C76F4(a2, v8);
    v14 = sub_2408D38D0();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2407D9440(v8, &qword_27E5071D0, &unk_2408D9C70);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2408C9FF8(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2408D38D0();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2408C6FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2408CA1FC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2408CCB30(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_2408C63D0();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_2408C51F4(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_2408C70EC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2407D9440(a1, &qword_27E507458, &unk_2408D9030);
    sub_2408C7894(a2, v8);
    v14 = sub_2408D4260();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2407D9440(v8, &qword_27E507458, &unk_2408D9030);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2408CA378(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2408D4260();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2408C7320()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 112);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = )
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(v2 + 56) + ((v10 << 9) | (8 * v11)));

    sub_2408D4BB0();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v13 = *(v1 + 112);

      swift_defaultActor_destroy();
      return v1;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2408C7448()
{
  sub_2408C7320();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2408C7498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 112);
  if (*(v7 + 16))
  {

    v8 = sub_2408CCB30(a2, a3);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      sub_2408D4BB0();
    }

    else
    {
    }
  }

  swift_beginAccess();

  sub_2408C6FF4(a1, a2, a3);
  return swift_endAccess();
}

uint64_t sub_2408C7588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2408CCC7C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2408C5870();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_2408D38D0();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    sub_2408C4CAC(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_2408D38D0();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2408C76F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2408CCBA8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2408C607C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2408D38D0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_2408D3770();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_2408C4EB0(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_2408D3770();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2408C7894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2408CCD10(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2408C53A4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_2408D4260();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_2408C495C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2408C7A4C(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_2408D4260();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F98, &qword_2408D7338);
  v52 = a2;
  result = sub_2408D51C0();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_2408CAB80(&qword_27E507E68, MEMORY[0x277CED8B0]);
      result = sub_2408D4CE0();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2408C7EFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507110, &qword_2408D75D0);
  v38 = a2;
  result = sub_2408D51C0();
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
      sub_2408D5300();
      sub_2408D4D60();
      result = sub_2408D5320();
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

uint64_t sub_2408C81A4(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = sub_2408D38D0();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F50, &qword_2408D72F0);
  v43 = a2;
  result = sub_2408D51C0();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = v3;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v44 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(v9 + 56);
      v26 = *(*(v9 + 48) + 8 * v24);
      v45 = *(v42 + 72);
      v27 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v27, v47);
      }

      else
      {
        (*v40)(v46, v27, v47);
        v28 = v26;
      }

      v29 = *(v12 + 40);
      sub_2408D4D30();
      sub_2408D5300();
      sub_2408D4D60();
      v30 = sub_2408D5320();

      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v26;
      result = (*v44)(*(v12 + 56) + v45 * v20, v46, v47);
      ++*(v12 + 16);
      v9 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2408C8544(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - v8;
  v9 = sub_2408D38D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F60, &unk_2408D7300);
  v48 = a2;
  result = sub_2408D51C0();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2407F64A8(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_2408C69E0(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_2408CAB80(qword_27E507E70, MEMORY[0x277CED3D8]);
      result = sub_2408D4CE0();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_2407F64A8(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2408C89B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2408D38D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F70, &unk_2408D9C80);
  v48 = a2;
  result = sub_2408D51C0();
  v13 = result;
  if (*(v10 + 16))
  {
    v53 = v6;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = v2;
    v45 = (v7 + 16);
    v46 = v10;
    v47 = v7;
    v50 = (v7 + 32);
    v20 = result + 64;
    v21 = v49;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v25 = (v18 - 1) & v18;
LABEL_17:
      v28 = v24 | (v14 << 6);
      v29 = *(v10 + 48) + *(v47 + 72) * v28;
      v30 = 16 * v28;
      v51 = *(v47 + 72);
      v52 = v25;
      if (v48)
      {
        (*v50)(v21, v29, v53);
        v31 = *(v10 + 56) + v30;
        v32 = *v31;
        v33 = *(v31 + 8);
      }

      else
      {
        (*v45)(v21, v29, v53);
        v34 = *(v10 + 56) + v30;
        v32 = *v34;
        v33 = *(v34 + 8);
        sub_240875D9C(*v34, v33);
      }

      v35 = *(v13 + 40);
      sub_2408CAB80(qword_27E507E70, MEMORY[0x277CED3D8]);
      result = sub_2408D4CE0();
      v36 = -1 << *(v13 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v20 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v21 = v49;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v20 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v20 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v21 = v49;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v50)(*(v13 + 48) + v51 * v22, v21, v53);
      v23 = *(v13 + 56) + 16 * v22;
      *v23 = v32;
      *(v23 + 8) = v33;
      ++*(v13 + 16);
      v10 = v46;
      v18 = v52;
    }

    v26 = v14;
    while (1)
    {
      v14 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v27 = v15[v14];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v10 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v15, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v43;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_2408C8DA8(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_2408D3770();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2408D38D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F80, &qword_2408D7328);
  v52 = a2;
  result = sub_2408D51C0();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_2408CAB80(qword_27E507E70, MEMORY[0x277CED3D8]);
      result = sub_2408D4CE0();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_2408C9250(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD0, qword_2408D9B60);
  v38 = a2;
  result = sub_2408D51C0();
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
      sub_2408D5300();
      sub_2408D4D60();
      result = sub_2408D5320();
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

uint64_t sub_2408C94F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
  v39 = a2;
  result = sub_2408D51C0();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = v22 + 16 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      if ((v39 & 1) == 0)
      {
        v27 = v23;
        sub_2407D256C(v25, v26);
      }

      v40 = v26;
      v28 = *(v8 + 40);
      sub_2408D4D30();
      sub_2408D5300();
      sub_2408D4D60();
      v29 = sub_2408D5320();

      v30 = -1 << *(v8 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v25;
      *(v17 + 8) = v40;
      ++*(v8 + 16);
      v5 = v38;
      v13 = v41;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v39)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2408C97DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F18, &unk_2408D9C90);
  v37 = a2;
  result = sub_2408D51C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_2407F6498(v23, v38);
      }

      else
      {
        sub_2407EEB40(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_2408D4D30();
      sub_2408D5300();
      sub_2408D4D60();
      v26 = sub_2408D5320();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_2407F6498(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

id sub_2408C9AAC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_2408CCC7C(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_2408C5870();
      goto LABEL_7;
    }

    sub_2408C81A4(v12, a3 & 1);
    v23 = *v4;
    v24 = sub_2408CCC7C(a2);
    if ((v13 & 1) == (v25 & 1))
    {
      v9 = v24;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for AIDAServiceType(0);
    result = sub_2408D5280();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_2408D38D0();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_2408CA6C8(v9, a2, a1, v15);

  return a2;
}

uint64_t sub_2408C9C1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2408D38D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2408CCBA8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2408C5ADC();
      goto LABEL_7;
    }

    sub_2408C8544(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2408CCBA8(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2408CA774(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2408D5280();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640) - 8) + 72) * v15;

  return sub_2408CABC8(a1, v23);
}

void sub_2408C9E10(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a2;
  v9 = sub_2408D38D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_2408CCBA8(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_2408C5DE8();
      goto LABEL_9;
    }

    sub_2408C89B0(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_2408CCBA8(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    sub_2408D5280();
    __break(1u);
    return;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = v26[7] + 16 * v16;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = v25 & 1;

    sub_24080F564(v28, v29);
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    sub_2408CA85C(v16, v13, a1, v25 & 1, v26);
  }
}

uint64_t sub_2408C9FF8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2408D38D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2408CCBA8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2408C607C();
      goto LABEL_7;
    }

    sub_2408C8DA8(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_2408CCBA8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2408CA924(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2408D5280();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_2408D3770();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_2408CA1FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2408CCB30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2408C9250(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2408CCB30(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2408D5280();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2408C63D0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2408CA378(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2408D4260();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2408CCD10(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2408C53A4();
      goto LABEL_7;
    }

    sub_2408C7A4C(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_2408CCD10(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2408CAA18(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2408D5280();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

_OWORD *sub_2408CA588(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2408CCC7C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_2408C66C4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2408C97DC(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_2408CCC7C(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for AIDAServiceType(0);
      result = sub_2408D5280();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);

    return sub_2407F6498(a1, v20);
  }

  else
  {
    sub_2408CAB18(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_2408CA6C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_2408D38D0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2408CA774(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2408D38D0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  result = sub_2407F64A8(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2408CA85C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2408D38D0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = a5[7] + 16 * a1;
  *v13 = a3;
  *(v13 + 8) = a4 & 1;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

uint64_t sub_2408CA924(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2408D38D0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2408D3770();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_2408CAA18(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2408D4260();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_2408CAB18(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2407F6498(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_2408CAB80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2408CABC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2408CAC38(uint64_t a1)
{
  v3 = sub_2408D38D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {
    v11 = *(v1 + 16);
    sub_2408CC144(&v11, &v10, &v12);
  }

  else
  {
    v12 = 0;
  }

  (*(v4 + 16))(v7, a1, v3);
  return sub_2408D3750();
}

uint64_t IdMSAccount.SRPResults.into()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v93 - v2;
  v4 = sub_2408D38D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2408D4B20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v98 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v97 = &v93 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v96 = &v93 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v93 - v18;
  v20 = sub_2408D3730();
  v99 = v21;
  if (v21 >> 60 == 15)
  {
    sub_2408D3760();
    v22 = type metadata accessor for AuthenticationReport(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    v26 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id;
    v27 = *(v5 + 56);
    v27(v25 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id, 1, 1, v4);
    *(v25 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_context) = 0;
    *(v25 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = 0;
    (*(v5 + 32))(v3, v8, v4);
    v27(v3, 0, 1, v4);
    swift_beginAccess();
    sub_2408CB94C(v3, v25 + v26);
    swift_endAccess();
    result = v25;
    *(v25 + 16) = 0;
    return result;
  }

  v29 = v20;
  v93 = v4;
  sub_2408D4910();
  v30 = v99;
  sub_24087827C(v29, v99);
  v31 = sub_2408D4B10();
  v32 = sub_2408D4F20();
  sub_240875A6C(v29, v30);
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v94 = v10;
    v35 = v34;
    *&v104[0] = v34;
    *v33 = 136315138;
    v36 = v99;
    sub_24087827C(v29, v99);
    v37 = sub_2408D3400();
    v38 = v36;
    v39 = v37;
    v95 = v9;
    v41 = v40;
    sub_240875A6C(v29, v38);
    v42 = sub_2408CC504(v39, v41, v104);
    v9 = v95;

    *(v33 + 4) = v42;
    _os_log_impl(&dword_2407CF000, v31, v32, "Attempting to unarchive SRP results: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v43 = v35;
    v10 = v94;
    MEMORY[0x245CC9F60](v43, -1, -1);
    MEMORY[0x245CC9F60](v33, -1, -1);
  }

  v44 = *(v10 + 8);
  v44(v19, v9);
  sub_2407EEDBC(0, &qword_27E507F10, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F18, qword_2408D9CB8);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_2408D9CA0;
  *(v45 + 32) = sub_2407EEDBC(0, &qword_27E507F20, 0x277CBEA60);
  *(v45 + 40) = sub_2407EEDBC(0, &qword_27E507F28, 0x277CBEA90);
  *(v45 + 48) = sub_2407EEDBC(0, &qword_27E507F30, 0x277CBEAA8);
  *(v45 + 56) = sub_2407EEDBC(0, &unk_27E507F38, 0x277CBEAC0);
  *(v45 + 64) = sub_2407EEDBC(0, &qword_27E507210, 0x277CCA9B8);
  *(v45 + 72) = sub_2407EEDBC(0, &qword_27E507F48, 0x277CBEB68);
  *(v45 + 80) = sub_2407EEDBC(0, &qword_27E507F50, 0x277CCABB0);
  *(v45 + 88) = sub_2407EEDBC(0, &qword_27E507F58, 0x277CBEB70);
  *(v45 + 96) = sub_2407EEDBC(0, &qword_27E507F60, 0x277CBEB98);
  *(v45 + 104) = sub_2407EEDBC(0, &qword_27E507F68, 0x277CCACA8);
  *(v45 + 112) = sub_2407EEDBC(0, &qword_27E507F70, 0x277CBEBC0);
  *(v45 + 120) = sub_2407EEDBC(0, &qword_27E507F78, 0x277CF01F0);
  *(v45 + 128) = sub_2407EEDBC(0, &qword_27E507F80, 0x277CF01F8);
  *(v45 + 136) = sub_2407EEDBC(0, &qword_27E507F88, 0x277D22B00);
  v46 = v100;
  sub_2408D4FB0();
  v100 = v46;
  if (v46)
  {

    sub_2408D4910();
    v47 = v100;
    v48 = v100;
    v49 = sub_2408D4B10();
    v50 = sub_2408D4F30();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = v9;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412290;
      v54 = v100;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v55;
      *v53 = v55;
      _os_log_impl(&dword_2407CF000, v49, v50, "Failed to unarchive SRP results: %@", v52, 0xCu);
      sub_2407D9440(v53, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v53, -1, -1);
      v56 = v52;
      v9 = v51;
      MEMORY[0x245CC9F60](v56, -1, -1);
    }

    v44(v98, v9);
    sub_2408CB9BC();
    v57 = swift_allocError();
    *v58 = v100;
    swift_willThrow();
    result = sub_240875A6C(v29, v99);
    v100 = v57;
    return result;
  }

  v104[0] = v102;
  v104[1] = v103;
  sub_2407EEE04(v104, &v102, &qword_27E507FA0, &qword_2408D7FB0);
  if (*(&v103 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507FA8, &unk_2408D9CD0);
    v59 = swift_dynamicCast();
    v60 = v97;
    if (v59)
    {
      v98 = v29;
      v61 = v101[0];
      v62 = v96;
      sub_2408D4910();

      v63 = sub_2408D4B10();
      v64 = sub_2408D4F20();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *&v102 = v66;
        *v65 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
        v67 = sub_2408D4CC0();
        v95 = v9;
        v69 = sub_2408CC504(v67, v68, &v102);
        v94 = v10;
        v70 = v69;

        *(v65 + 4) = v70;
        _os_log_impl(&dword_2407CF000, v63, v64, "Unarchived SRP results: %s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        MEMORY[0x245CC9F60](v66, -1, -1);
        MEMORY[0x245CC9F60](v65, -1, -1);

        v71 = v95;
        v72 = v96;
      }

      else
      {

        v72 = v62;
        v71 = v9;
      }

      v44(v72, v71);
      v86 = v93;
      v87 = type metadata accessor for AuthenticationReport(0);
      v88 = *(v87 + 48);
      v89 = *(v87 + 52);
      v90 = swift_allocObject();
      (*(v5 + 56))(v90 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id, 1, 1, v86);
      v91 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_context;
      v92 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport;
      *(v90 + 16) = v61;
      *(v90 + v91) = 0;
      *(v90 + v92) = 0;
      sub_240875A6C(v98, v99);
      sub_2407D9440(v104, &qword_27E507FA0, &qword_2408D7FB0);
      return v90;
    }
  }

  else
  {
    sub_2407D9440(&v102, &qword_27E507FA0, &qword_2408D7FB0);
    v60 = v97;
  }

  sub_2408D4910();
  sub_2407EEE04(v104, &v102, &qword_27E507FA0, &qword_2408D7FB0);
  v73 = sub_2408D4B10();
  v74 = sub_2408D4F30();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v98 = v29;
    v77 = v76;
    v105 = v76;
    *v75 = 136315138;
    v94 = v10;
    v95 = v9;
    sub_2407EEE04(&v102, v101, &qword_27E507FA0, &qword_2408D7FB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507FA0, &qword_2408D7FB0);
    v78 = sub_2408D4D40();
    v100 = v44;
    v79 = v78;
    v81 = v80;
    sub_2407D9440(&v102, &qword_27E507FA0, &qword_2408D7FB0);
    v82 = sub_2408CC504(v79, v81, &v105);

    *(v75 + 4) = v82;
    _os_log_impl(&dword_2407CF000, v73, v74, "Unarchived SRP results were not of the expected type: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    v83 = v77;
    v29 = v98;
    MEMORY[0x245CC9F60](v83, -1, -1);
    MEMORY[0x245CC9F60](v75, -1, -1);

    v100(v60, v95);
  }

  else
  {

    sub_2407D9440(&v102, &qword_27E507FA0, &qword_2408D7FB0);
    v44(v60, v9);
  }

  sub_2408CB9BC();
  v84 = swift_allocError();
  *v85 = 1;
  v100 = v84;
  swift_willThrow();
  sub_240875A6C(v29, v99);
  return sub_2407D9440(v104, &qword_27E507FA0, &qword_2408D7FB0);
}

uint64_t sub_2408CB94C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2408CB9BC()
{
  result = qword_27E507F90;
  if (!qword_27E507F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507F90);
  }

  return result;
}

uint64_t sub_2408CBA10@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v39 - v5;
  v7 = sub_2408D38D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id;
  swift_beginAccess();
  sub_2407EEE04(v1 + v12, v6, &qword_27E507F00, &qword_2408D6D50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2407D9440(v6, &qword_27E507F00, &qword_2408D6D50);
    v13 = *(v1 + 16);
    if (v13)
    {
      v14 = *MEMORY[0x277CEFF78];
      v15 = sub_2408D4D30();
      if (*(v13 + 16))
      {
        v17 = sub_2408CCB30(v15, v16);
        v19 = v18;

        if (v19)
        {
          v40 = *(*(v13 + 56) + 8 * v17);
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
          if (swift_dynamicCast())
          {
            v20 = v39[3];
            v21 = *MEMORY[0x277CEFFD8];
            v22 = sub_2408D4D30();
            if (*(v13 + 16))
            {
              v24 = sub_2408CCB30(v22, v23);
              v26 = v25;

              if (v26)
              {
                v40 = *(*(v13 + 56) + 8 * v24);
                swift_unknownObjectRetain();
                swift_dynamicCast();
              }
            }

            else
            {
            }

            v30 = *MEMORY[0x277CEFF88];
            v31 = sub_2408D4D30();
            if (*(v13 + 16))
            {
              v39[1] = v20;
              v33 = sub_2408CCB30(v31, v32);
              v35 = v34;

              if (v35)
              {
                v36 = *(*(v13 + 56) + 8 * v33);
                objc_opt_self();
                v37 = swift_dynamicCastObjCClass();
                if (v37)
                {
                  v38 = [v37 stringValue];
                  sub_2408D4D30();
                }
              }
            }

            else
            {
            }

            sub_2408D38A0();
            goto LABEL_10;
          }
        }
      }

      else
      {
      }
    }

    v28 = 1;
    return (*(v8 + 56))(a1, v28, 1, v7);
  }

  v27 = *(v8 + 32);
  v27(v11, v6, v7);
  v27(a1, v11, v7);
LABEL_10:
  v28 = 0;
  return (*(v8 + 56))(a1, v28, 1, v7);
}

uint64_t sub_2408CBE10(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = sub_2408D4D30();
  if (!*(v2 + 16))
  {

    return 0;
  }

  v6 = sub_2408CCB30(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v11 = *(*(v2 + 56) + 8 * v6);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2408CBED4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *MEMORY[0x277CEFFA0];
  v3 = sub_2408D4D30();
  if (*(v1 + 16))
  {
    v5 = sub_2408CCB30(v3, v4);
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v19 = *(*(v1 + 56) + 8 * v5);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507FF0, &qword_2408D9E88);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v8 = *MEMORY[0x277CED1C8];
    v9 = sub_2408D4D30();
    if (*(v18 + 16))
    {
      v11 = sub_2408CCB30(v9, v10);
      v13 = v12;

      if (v13)
      {
        v14 = (*(v18 + 56) + 16 * v11);
        v16 = *v14;
        v15 = v14[1];

        return v16;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t AuthenticationReport.deinit()
{
  v1 = *(v0 + 16);

  sub_2407D9440(v0 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id, &qword_27E507F00, &qword_2408D6D50);

  v2 = *(v0 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport);
  *(v0 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport);
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t AuthenticationReport.__deallocating_deinit()
{
  AuthenticationReport.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2408CC144(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2408D4B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
  v13 = sub_2408D4C90();
  v29[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v29];

  v15 = v29[0];
  if (v14)
  {
    v16 = sub_2408D3410();
    v18 = v17;

    *a3 = v16;
    a3[1] = v18;
  }

  else
  {
    v19 = v15;
    v20 = sub_2408D33F0();

    swift_willThrow();
    sub_2408D4910();
    v21 = v20;
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F20();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v20;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_2407CF000, v22, v23, "Failed to unarchive SRP results: %@", v24, 0xCu);
      sub_2407D9440(v25, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v25, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    swift_willThrow();
    *a2 = v20;
  }

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2408CC3FC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2408CC448(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_2408CC4A8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2408CC504(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2408CC504(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2408CC5D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2407EEB40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2408CC5D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2408CC6DC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2408D5140();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2408CC6DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2408CC728(a1, a2);
  sub_2408CC858(&unk_285283150);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2408CC728(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2408CC944(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2408D5140();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2408D4D90();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2408CC944(v10, 0);
        result = sub_2408D5110();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2408CC858(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2408CC9B8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2408CC944(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E508018, qword_2408D9E90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2408CC9B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E508018, qword_2408D9E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2408CCAAC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_2408CCABC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_2408CCB30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2408D5300();
  sub_2408D4D60();
  v6 = sub_2408D5320();

  return sub_2408CCE28(a1, a2, v6);
}

unint64_t sub_2408CCBA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2408D38D0();
  v5 = MEMORY[0x277CED3D8];
  sub_2408CE39C(qword_27E507E70, MEMORY[0x277CED3D8]);
  v6 = sub_2408D4CE0();
  return sub_2408CCFE4(a1, v6, MEMORY[0x277CED3D8], &qword_27E508010, v5, MEMORY[0x277CED3E8]);
}

unint64_t sub_2408CCC7C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2408D4D30();
  sub_2408D5300();
  sub_2408D4D60();
  v4 = sub_2408D5320();

  return sub_2408CCEE0(a1, v4);
}

unint64_t sub_2408CCD10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2408D4260();
  v5 = MEMORY[0x277CED8B0];
  sub_2408CE39C(&qword_27E507E68, MEMORY[0x277CED8B0]);
  v6 = sub_2408D4CE0();
  return sub_2408CCFE4(a1, v6, MEMORY[0x277CED8B0], &unk_27E508000, v5, MEMORY[0x277CED8C0]);
}

unint64_t sub_2408CCDE4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2408D50B0();

  return sub_2408CD184(a1, v5);
}

unint64_t sub_2408CCE28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2408D5240())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2408CCEE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2408D4D30();
      v9 = v8;
      if (v7 == sub_2408D4D30() && v9 == v10)
      {
        break;
      }

      v12 = sub_2408D5240();

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

unint64_t sub_2408CCFE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
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
      sub_2408CE39C(v24, v25);
      v20 = sub_2408D4CF0();
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

unint64_t sub_2408CD184(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2408CE340(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x245CC9500](v9, a1);
      sub_240812CC8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t _s18AppleIDSetupDaemon20AuthenticationReportC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v3 = sub_2408D4C90();
    v4 = v3;
    if (!*(a2 + 16))
    {
      if (!v3)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      goto LABEL_15;
    }

    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
  v5 = sub_2408D4C90();
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      v7 = 0;
      goto LABEL_14;
    }

LABEL_15:
    v7 = 1;
    return v7 & 1;
  }

  if (!v5)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  sub_2407EEDBC(0, &unk_27E507F38, 0x277CBEAC0);
  v7 = sub_2408D5010();

LABEL_11:
  v6 = v4;
LABEL_14:

  return v7 & 1;
}

uint64_t sub_2408CD374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407DB6F0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2408CD4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_240813744;

  return v11(a1, a2, a3);
}

uint64_t sub_2408CD5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407DB6F0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2408CD704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_240813A08;

  return v11(a1, a2, a3);
}

uint64_t sub_2408CD82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2407DB6F0;

  return v11(a1, a2, a3);
}

uint64_t sub_2408CD954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407D379C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2408CDA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2407DB6F0;

  return v11(a1, a2, a3);
}

uint64_t sub_2408CDBAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 80);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2407DB6F0;

  return (v15)(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_2408CDCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2407DB6F0;

  return v11(a1, a2, a3);
}

uint64_t sub_2408CDE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407DB6F0;

  return v13(a1, a2, a3, a4);
}

void sub_2408CDF4C()
{
  sub_2408CE028();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2408CE028()
{
  if (!qword_27E507FC0)
  {
    sub_2408D38D0();
    v0 = sub_2408D5060();
    if (!v1)
    {
      atomic_store(v0, &qword_27E507FC0);
    }
  }
}

uint64_t sub_2408CE0C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2408CE100()
{
  sub_2408D38D0();
  if (v0 <= 0x3F)
  {
    sub_2408CE184();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2408CE184()
{
  if (!qword_27E507FE0)
  {
    type metadata accessor for AIDAServiceType(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5071A0, &qword_2408D7610);
    sub_2408CE39C(&qword_28130EF80, type metadata accessor for AIDAServiceType);
    v0 = sub_2408D4CD0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E507FE0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV10SRPResultsV0aB6DaemonE17ConversionFailureO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2408CE260(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2408CE2B4(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_2408CE310(void *result, int a2)
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

uint64_t sub_2408CE39C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2408CE3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407DB6F0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2408CE518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_240813744;

  return v11(a1, a2, a3);
}

uint64_t sub_2408CE640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407D379C;

  return v13(a1, a2, a3, a4);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2408CE780(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2408CE7C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2408CE818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_2408D3EC0();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074C0, &qword_2408D9F60) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = sub_2408D48A0();
  v6[15] = v11;
  v12 = *(v11 - 8);
  v6[16] = v12;
  v13 = *(v12 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v14 = sub_2408D38D0();
  v6[22] = v14;
  v15 = *(v14 - 8);
  v6[23] = v15;
  v16 = *(v15 + 64) + 15;
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408CEA18, 0, 0);
}

uint64_t sub_2408CEA18()
{
  v25 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[4];
  v5 = sub_2408D4B20();
  v0[25] = __swift_project_value_buffer(v5, qword_27E508020);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Generating symptom report for account with id: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[2] = MEMORY[0x277D84FA0];
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_2408CECA0;
  v20 = v0[14];
  v21 = v0[6];
  v22 = v0[4];

  return sub_2408CFAA0(v20, v22, v18, v21);
}

uint64_t sub_2408CECA0()
{
  v2 = *(*v1 + 208);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2408CF610;
  }

  else
  {
    v3 = sub_2408CEDB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408CEDB8()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    (*(v2 + 32))(v4, v3, v1);
    (*(v2 + 16))(v6, v4, v1);
    sub_240869F04(v5, v6);
    v7 = *(v2 + 8);
    v7(v5, v1);
    v7(v4, v1);
  }

  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_2408CEF34;
  v11 = v0[13];
  v12 = v0[7];
  v13 = v0[4];

  return sub_2408D042C(v11, v13, v8, v9, v12);
}

uint64_t sub_2408CEF34()
{
  v2 = *(*v1 + 216);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2408CF6E4;
  }

  else
  {
    v3 = sub_2408CF04C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408CF04C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_240869F04(v4, v5);
    v7 = *(v2 + 8);
    v7(v4, v1);
    v7(v6, v1);
  }

  v8 = swift_task_alloc();
  v0[28] = v8;
  *v8 = v0;
  v8[1] = sub_2408CF1C0;
  v9 = v0[12];

  return sub_2408D1220(v9);
}

uint64_t sub_2408CF1C0()
{
  v2 = *(*v1 + 224);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2408CF7B0;
  }

  else
  {
    v3 = sub_2408CF2D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408CF2D8()
{
  v40 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_240869F04(v4, v5);
    v7 = *(v2 + 8);
    v7(v4, v1);
    v7(v6, v1);
  }

  v8 = v0[25];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v13 = v0[3];
  v12 = v0[4];
  sub_2408D38B0();
  v14 = v0[2];
  sub_2408D3E90();
  (*(v10 + 16))(v9, v13, v11);
  v15 = sub_2408D4B10();
  v16 = sub_2408D4F10();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[10];
  v18 = v0[11];
  v20 = v0[9];
  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136315138;
    sub_2408D2F74(&qword_27E5074B8, MEMORY[0x277CED610]);
    v23 = sub_2408D5220();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_2408CC504(v23, v25, &v39);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_2407CF000, v15, v16, "Generated symptom report: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x245CC9F60](v22, -1, -1);
    MEMORY[0x245CC9F60](v21, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  v27 = v0[24];
  v28 = v0[20];
  v29 = v0[21];
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[17];
  v34 = v0[13];
  v33 = v0[14];
  v36 = v0[11];
  v35 = v0[12];

  v37 = v0[1];

  return v37();
}

uint64_t sub_2408CF610()
{
  (*(v0[16] + 56))(v0[14], 1, 1, v0[15]);
  sub_2407D9440(v0[14], &qword_27E5074C0, &qword_2408D9F60);
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_2408CEF34;
  v4 = v0[13];
  v5 = v0[7];
  v6 = v0[4];

  return sub_2408D042C(v4, v6, v1, v2, v5);
}

uint64_t sub_2408CF6E4()
{
  (*(v0[16] + 56))(v0[13], 1, 1, v0[15]);
  sub_2407D9440(v0[13], &qword_27E5074C0, &qword_2408D9F60);
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_2408CF1C0;
  v2 = v0[12];

  return sub_2408D1220(v2);
}

uint64_t sub_2408CF7B0()
{
  v33 = v0;
  (*(v0[16] + 56))(v0[12], 1, 1, v0[15]);
  sub_2407D9440(v0[12], &qword_27E5074C0, &qword_2408D9F60);
  v1 = v0[25];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[3];
  v5 = v0[4];
  sub_2408D38B0();
  v7 = v0[2];
  sub_2408D3E90();
  (*(v3 + 16))(v2, v6, v4);
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F10();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    sub_2408D2F74(&qword_27E5074B8, MEMORY[0x277CED610]);
    v16 = sub_2408D5220();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_2408CC504(v16, v18, &v32);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v8, v9, "Generated symptom report: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x245CC9F60](v15, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = v0[24];
  v21 = v0[20];
  v22 = v0[21];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[17];
  v27 = v0[13];
  v26 = v0[14];
  v29 = v0[11];
  v28 = v0[12];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2408CFA54()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E508020);
  __swift_project_value_buffer(v0, qword_27E508020);
  return sub_2408D4940();
}

uint64_t sub_2408CFAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(sub_2408D4870() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = sub_2408D4850();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = sub_2408D4830();
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = sub_2408D38D0();
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408CFC60, 0, 0);
}

uint64_t sub_2408CFC60()
{
  v81 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 24);
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E508020);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  if (v9)
  {
    v13 = swift_slowAlloc();
    log = swift_slowAlloc();
    v80[0] = log;
    *v13 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8]);
    v14 = sub_2408D5220();
    v76 = v6;
    v16 = v15;
    v74 = *(v11 + 8);
    v74(v10, v12);
    v17 = sub_2408CC504(v14, v16, v80);
    v6 = v76;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v7, v8, "Checking IdMS-CK symptom for account: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(log);
    MEMORY[0x245CC9F60](log, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v74 = *(v11 + 8);
    v74(v10, v12);
  }

  v19 = *(v0 + 24);
  v18 = *(v0 + 32);
  sub_24081399C();
  v20 = sub_2408D5040();
  v21 = [*(v0 + 32) continuationTokenForAccount_];
  if (v21)
  {
    v22 = v21;
    v79 = sub_2408D4D30();
    v24 = v23;
  }

  else
  {
    v79 = 0;
    v24 = 0;
  }

  v25 = v20;
  v26 = sub_2408D4B10();
  v27 = sub_2408D4F20();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_2407CF000, v26, v27, "Checking for CK loss symptom using account: %@", v28, 0xCu);
    sub_2407D9440(v29, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v29, -1, -1);
    MEMORY[0x245CC9F60](v28, -1, -1);
  }

  if (v24)
  {
    v6(*(v0 + 120), *(v0 + 24), *(v0 + 96));

    v31 = sub_2408D4B10();
    v32 = sub_2408D4F20();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 120);
    v36 = *(v0 + 96);
    v35 = *(v0 + 104);
    if (v33)
    {
      v37 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80[0] = v77;
      *v37 = 136315395;
      sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8]);
      loga = v31;
      v38 = sub_2408D5220();
      v40 = v39;
      v74(v34, v36);
      v41 = sub_2408CC504(v38, v40, v80);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2085;
      v42 = sub_2408CC504(v79, v24, v80);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_2407CF000, loga, v32, "Found a valid CK, IdMS account for altDSID: %s is good: %{sensitive}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v77, -1, -1);
      MEMORY[0x245CC9F60](v37, -1, -1);
    }

    else
    {

      v74(v34, v36);
    }

    v59 = 1;
  }

  else
  {
    v78 = v6;
    v43 = v25;
    v44 = sub_2408D4B10();
    v45 = sub_2408D4F30();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&dword_2407CF000, v44, v45, "Detected CK loss symptom, account will not be able to silent auth: %@", v46, 0xCu);
      sub_2407D9440(v47, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v47, -1, -1);
      MEMORY[0x245CC9F60](v46, -1, -1);
    }

    v49 = *(v0 + 112);
    v51 = *(v0 + 88);
    v50 = *(v0 + 96);
    v75 = v43;
    v53 = *(v0 + 72);
    v52 = *(v0 + 80);
    v55 = *(v0 + 56);
    v54 = *(v0 + 64);
    v56 = *(v0 + 40);
    v57 = v44;
    v58 = *(v0 + 24);
    v70 = *(v0 + 48);
    logb = *(v0 + 16);

    v78(v49, v58, v50);
    (*(v52 + 104))(v51, *MEMORY[0x277CEDD90], v53);
    (*(v55 + 104))(v54, *MEMORY[0x277CEDDB8], v70);
    sub_2408D4860();
    sub_2408D4880();

    v59 = 0;
  }

  v61 = *(v0 + 120);
  v60 = *(v0 + 128);
  v62 = *(v0 + 112);
  v63 = *(v0 + 88);
  v64 = *(v0 + 64);
  v65 = *(v0 + 40);
  v66 = *(v0 + 16);
  v67 = sub_2408D48A0();
  (*(*(v67 - 8) + 56))(v66, v59, 1, v67);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_2408D042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a2;
  v5[20] = a5;
  v5[18] = a1;
  v6 = *(*(sub_2408D4870() - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v7 = sub_2408D4850();
  v5[22] = v7;
  v8 = *(v7 - 8);
  v5[23] = v8;
  v9 = *(v8 + 64) + 15;
  v5[24] = swift_task_alloc();
  v10 = sub_2408D4830();
  v5[25] = v10;
  v11 = *(v10 - 8);
  v5[26] = v11;
  v12 = *(v11 + 64) + 15;
  v5[27] = swift_task_alloc();
  v13 = sub_2408D38D0();
  v5[28] = v13;
  v14 = *(v13 - 8);
  v5[29] = v14;
  v15 = *(v14 + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408D05F8, 0, 0);
}

uint64_t sub_2408D05F8()
{
  v59 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[19];
  v5 = sub_2408D4B20();
  v0[34] = __swift_project_value_buffer(v5, qword_27E508020);
  v6 = *(v3 + 16);
  v0[35] = v6;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v12 = v0[28];
  v11 = v0[29];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58[0] = v57;
    *v13 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8]);
    v14 = v6;
    v15 = sub_2408D5220();
    v17 = v16;
    v18 = v12;
    v19 = *(v11 + 8);
    v19(v10, v18);
    v20 = v15;
    v6 = v14;
    v21 = sub_2408CC504(v20, v17, v58);

    *(v13 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v8, "Checking CDP symptom for account: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    MEMORY[0x245CC9F60](v57, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v22 = v12;
    v19 = *(v11 + 8);
    v19(v10, v22);
  }

  v0[37] = v19;
  v23 = v0[19];
  sub_2408D38B0();
  v24 = sub_2408D4D00();

  v25 = [objc_opt_self() contextForAccountWithAltDSID_];
  v0[38] = v25;

  if (v25)
  {
    v26 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
    v0[39] = v26;
    if (v26)
    {
      v27 = [objc_allocWithZone(AISDCloudDataProtectionHelper) initWithStateController:v26 queue:v0[20]];
      v0[40] = v27;
      v0[2] = v0;
      v0[7] = v0 + 42;
      v0[3] = sub_2408D0C98;
      v28 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24085F49C;
      v0[13] = &block_descriptor_7;
      v0[14] = v28;
      [v27 checkAvailabilityWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v43 = sub_2408D4B10();
    v44 = sub_2408D4F30();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2407CF000, v43, v44, "Failed to init CDPStateController", v45, 2u);
      MEMORY[0x245CC9F60](v45, -1, -1);
    }

    sub_2408D2FBC();
    swift_allocError();
    *v46 = 0xD000000000000012;
    v46[1] = 0x80000002408DA380;
    swift_willThrow();
  }

  else
  {
    v6(v0[30], v0[19], v0[28]);
    v29 = sub_2408D4B10();
    v30 = sub_2408D4F30();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[29];
    v32 = v0[30];
    v34 = v0[28];
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v58[0] = v36;
      *v35 = 136315138;
      sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8]);
      v37 = sub_2408D5220();
      v38 = v19;
      v39 = v37;
      v41 = v40;
      v38(v32, v34);
      v42 = sub_2408CC504(v39, v41, v58);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_2407CF000, v29, v30, "Failed to build CDP context for account with altDSID: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      MEMORY[0x245CC9F60](v36, -1, -1);
      MEMORY[0x245CC9F60](v35, -1, -1);
    }

    else
    {

      v19(v32, v34);
    }

    sub_2408D2FBC();
    swift_allocError();
    *v47 = xmmword_2408D7D10;
    swift_willThrow();
  }

  v49 = v0[32];
  v48 = v0[33];
  v51 = v0[30];
  v50 = v0[31];
  v52 = v0[27];
  v53 = v0[24];
  v54 = v0[21];

  v55 = v0[1];

  return v55();
}

uint64_t sub_2408D0C98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_2408D114C;
  }

  else
  {
    v3 = sub_2408D0DA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408D0DA8()
{
  v45 = v0;
  if (*(v0 + 336) == 1)
  {
    v1 = *(v0 + 272);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F20();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Account has access to manatee, no symptom.", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = 1;
  }

  else
  {
    v6 = *(v0 + 288);
    v7 = *(v0 + 272);
    (*(v0 + 280))(*(v0 + 256), *(v0 + 152), *(v0 + 224));
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 296);
    v12 = *(v0 + 256);
    v13 = *(v0 + 224);
    v14 = *(v0 + 232);
    if (v10)
    {
      v42 = *(v0 + 296);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44 = v16;
      *v15 = 136315138;
      sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8]);
      v17 = sub_2408D5220();
      v19 = v18;
      v42(v12, v13);
      v20 = sub_2408CC504(v17, v19, &v44);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2407CF000, v8, v9, "Detected CDP state symptom, account does not have access to manatee: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x245CC9F60](v16, -1, -1);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    else
    {

      v11(v12, v13);
    }

    v21 = *(v0 + 288);
    v22 = *(v0 + 216);
    v23 = *(v0 + 200);
    v24 = *(v0 + 208);
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    v28 = *(v0 + 168);
    v27 = *(v0 + 176);
    v29 = *(v0 + 144);
    (*(v0 + 280))(*(v0 + 248), *(v0 + 152), *(v0 + 224));
    (*(v24 + 104))(v22, *MEMORY[0x277CEDD88], v23);
    (*(v26 + 104))(v25, *MEMORY[0x277CEDDB0], v27);
    sub_2408D4860();
    sub_2408D4880();
    v5 = 0;
  }

  v30 = *(v0 + 312);
  v31 = *(v0 + 320);
  v33 = *(v0 + 256);
  v32 = *(v0 + 264);
  v35 = *(v0 + 240);
  v34 = *(v0 + 248);
  v36 = *(v0 + 216);
  v41 = *(v0 + 192);
  v43 = *(v0 + 168);
  v37 = *(v0 + 144);

  v38 = sub_2408D48A0();
  (*(*(v38 - 8) + 56))(v37, v5, 1, v38);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2408D114C()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  swift_willThrow();

  v5 = v0[41];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v10 = v0[27];
  v11 = v0[24];
  v12 = v0[21];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2408D1240()
{
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E508020);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Skipping missing services check for this platform", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = sub_2408D48A0();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2408D139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_2408D3EC0();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074C0, &qword_2408D9F60) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = sub_2408D48A0();
  v6[15] = v11;
  v12 = *(v11 - 8);
  v6[16] = v12;
  v13 = *(v12 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v14 = sub_2408D38D0();
  v6[22] = v14;
  v15 = *(v14 - 8);
  v6[23] = v15;
  v16 = *(v15 + 64) + 15;
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408D159C, 0, 0);
}

uint64_t sub_2408D159C()
{
  v25 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[4];
  v5 = sub_2408D4B20();
  v0[25] = __swift_project_value_buffer(v5, qword_27E508020);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Generating Preflight Setup symptom report for account with id: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[2] = MEMORY[0x277D84FA0];
  v19 = swift_task_alloc();
  v0[26] = v19;
  *v19 = v0;
  v19[1] = sub_2408D1824;
  v20 = v0[14];
  v21 = v0[6];
  v22 = v0[4];

  return sub_2408CFAA0(v20, v22, v18, v21);
}

uint64_t sub_2408D1824()
{
  v2 = *(*v1 + 208);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2408D219C;
  }

  else
  {
    v3 = sub_2408D193C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408D193C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    (*(v2 + 32))(v4, v3, v1);
    (*(v2 + 16))(v6, v4, v1);
    sub_240869F04(v5, v6);
    v7 = *(v2 + 8);
    v7(v5, v1);
    v7(v4, v1);
  }

  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_2408D1AB8;
  v10 = v0[13];
  v11 = v0[6];
  v12 = v0[4];

  return sub_2408D25E8(v10, v12, v8, v11);
}

uint64_t sub_2408D1AB8()
{
  v2 = *(*v1 + 216);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2408D2270;
  }

  else
  {
    v3 = sub_2408D1BD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408D1BD0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_240869F04(v4, v5);
    v7 = *(v2 + 8);
    v7(v4, v1);
    v7(v6, v1);
  }

  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_2408D1D4C;
  v11 = v0[12];
  v12 = v0[7];
  v13 = v0[4];

  return sub_2408D042C(v11, v13, v8, v9, v12);
}

uint64_t sub_2408D1D4C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_2408D2344;
  }

  else
  {
    v3 = sub_2408D1E64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408D1E64()
{
  v40 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E5074C0, &qword_2408D9F60);
  }

  else
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[17];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v5, v6, v1);
    sub_240869F04(v4, v5);
    v7 = *(v2 + 8);
    v7(v4, v1);
    v7(v6, v1);
  }

  v8 = v0[25];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v13 = v0[3];
  v12 = v0[4];
  sub_2408D38B0();
  v14 = v0[2];
  sub_2408D3E90();
  (*(v10 + 16))(v9, v13, v11);
  v15 = sub_2408D4B10();
  v16 = sub_2408D4F10();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[10];
  v18 = v0[11];
  v20 = v0[9];
  if (v17)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136315138;
    sub_2408D2F74(&qword_27E5074B8, MEMORY[0x277CED610]);
    v23 = sub_2408D5220();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_2408CC504(v23, v25, &v39);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_2407CF000, v15, v16, "Generated Preflight Setup symptom report: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x245CC9F60](v22, -1, -1);
    MEMORY[0x245CC9F60](v21, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
  }

  v27 = v0[24];
  v28 = v0[20];
  v29 = v0[21];
  v31 = v0[18];
  v30 = v0[19];
  v32 = v0[17];
  v34 = v0[13];
  v33 = v0[14];
  v36 = v0[11];
  v35 = v0[12];

  v37 = v0[1];

  return v37();
}

uint64_t sub_2408D219C()
{
  (*(v0[16] + 56))(v0[14], 1, 1, v0[15]);
  sub_2407D9440(v0[14], &qword_27E5074C0, &qword_2408D9F60);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_2408D1AB8;
  v3 = v0[13];
  v4 = v0[6];
  v5 = v0[4];

  return sub_2408D25E8(v3, v5, v1, v4);
}

uint64_t sub_2408D2270()
{
  (*(v0[16] + 56))(v0[13], 1, 1, v0[15]);
  sub_2407D9440(v0[13], &qword_27E5074C0, &qword_2408D9F60);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_2408D1D4C;
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[4];

  return sub_2408D042C(v4, v6, v1, v2, v5);
}

uint64_t sub_2408D2344()
{
  v33 = v0;
  (*(v0[16] + 56))(v0[12], 1, 1, v0[15]);
  sub_2407D9440(v0[12], &qword_27E5074C0, &qword_2408D9F60);
  v1 = v0[25];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[3];
  v5 = v0[4];
  sub_2408D38B0();
  v7 = v0[2];
  sub_2408D3E90();
  (*(v3 + 16))(v2, v6, v4);
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F10();
  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    sub_2408D2F74(&qword_27E5074B8, MEMORY[0x277CED610]);
    v16 = sub_2408D5220();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_2408CC504(v16, v18, &v32);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v8, v9, "Generated Preflight Setup symptom report: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x245CC9F60](v15, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = v0[24];
  v21 = v0[20];
  v22 = v0[21];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[17];
  v27 = v0[13];
  v26 = v0[14];
  v29 = v0[11];
  v28 = v0[12];

  v30 = v0[1];

  return v30();
}

uint64_t sub_2408D25E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(sub_2408D4870() - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = sub_2408D4850();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = sub_2408D4830();
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = sub_2408D38D0();
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408D27A8, 0, 0);
}

uint64_t sub_2408D27A8()
{
  v81 = v0;
  if (qword_27E506990 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 24);
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E508020);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  if (v9)
  {
    v13 = swift_slowAlloc();
    log = swift_slowAlloc();
    v80[0] = log;
    *v13 = 136315138;
    sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8]);
    v14 = sub_2408D5220();
    v76 = v6;
    v16 = v15;
    v74 = *(v11 + 8);
    v74(v10, v12);
    v17 = sub_2408CC504(v14, v16, v80);
    v6 = v76;

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v7, v8, "Checking IdMS-PRK symptom for account: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(log);
    MEMORY[0x245CC9F60](log, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    v74 = *(v11 + 8);
    v74(v10, v12);
  }

  v19 = *(v0 + 24);
  v18 = *(v0 + 32);
  sub_24081399C();
  v20 = sub_2408D5040();
  v21 = [*(v0 + 32) passwordResetTokenForAccount_];
  if (v21)
  {
    v22 = v21;
    v79 = sub_2408D4D30();
    v24 = v23;
  }

  else
  {
    v79 = 0;
    v24 = 0;
  }

  v25 = v20;
  v26 = sub_2408D4B10();
  v27 = sub_2408D4F20();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&dword_2407CF000, v26, v27, "Checking for PRK loss symptom using account: %@", v28, 0xCu);
    sub_2407D9440(v29, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v29, -1, -1);
    MEMORY[0x245CC9F60](v28, -1, -1);
  }

  if (v24)
  {
    v6(*(v0 + 120), *(v0 + 24), *(v0 + 96));

    v31 = sub_2408D4B10();
    v32 = sub_2408D4F20();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 120);
    v36 = *(v0 + 96);
    v35 = *(v0 + 104);
    if (v33)
    {
      v37 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v80[0] = v77;
      *v37 = 136315395;
      sub_2408D2F74(&qword_27E506AA0, MEMORY[0x277CED3D8]);
      loga = v31;
      v38 = sub_2408D5220();
      v40 = v39;
      v74(v34, v36);
      v41 = sub_2408CC504(v38, v40, v80);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2085;
      v42 = sub_2408CC504(v79, v24, v80);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_2407CF000, loga, v32, "Found a valid PRK, IdMS account for altDSID: %s is good: %{sensitive}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v77, -1, -1);
      MEMORY[0x245CC9F60](v37, -1, -1);
    }

    else
    {

      v74(v34, v36);
    }

    v59 = 1;
  }

  else
  {
    v78 = v6;
    v43 = v25;
    v44 = sub_2408D4B10();
    v45 = sub_2408D4F30();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&dword_2407CF000, v44, v45, "Detected PRK loss symptom, account will not be able to magic auth: %@", v46, 0xCu);
      sub_2407D9440(v47, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v47, -1, -1);
      MEMORY[0x245CC9F60](v46, -1, -1);
    }

    v49 = *(v0 + 112);
    v51 = *(v0 + 88);
    v50 = *(v0 + 96);
    v75 = v43;
    v53 = *(v0 + 72);
    v52 = *(v0 + 80);
    v55 = *(v0 + 56);
    v54 = *(v0 + 64);
    v56 = *(v0 + 40);
    v57 = v44;
    v58 = *(v0 + 24);
    v70 = *(v0 + 48);
    logb = *(v0 + 16);

    v78(v49, v58, v50);
    (*(v52 + 104))(v51, *MEMORY[0x277CEDD98], v53);
    (*(v55 + 104))(v54, *MEMORY[0x277CEDDB8], v70);
    sub_2408D4860();
    sub_2408D4880();

    v59 = 0;
  }

  v61 = *(v0 + 120);
  v60 = *(v0 + 128);
  v62 = *(v0 + 112);
  v63 = *(v0 + 88);
  v64 = *(v0 + 64);
  v65 = *(v0 + 40);
  v66 = *(v0 + 16);
  v67 = sub_2408D48A0();
  (*(*(v67 - 8) + 56))(v66, v59, 1, v67);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_2408D2F74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2408D2FBC()
{
  result = qword_27E508038;
  if (!qword_27E508038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E508038);
  }

  return result;
}

uint64_t sub_2408D30C0(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;
  sub_2407D2588(v4);
  return v4;
}

uint64_t sub_2408D3128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a3;
  v9 = *a4;
  *a3 = a1;
  *a4 = a2;
  return sub_2407D1854(v8);
}

uint64_t sub_2408D31E4@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a1;
  v7 = *a2;
  if (*a1)
  {
    v8 = *a2;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
  return sub_2407D2588(v6);
}

uint64_t sub_2408D3248(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = a1[1];
  if (*a1)
  {
    v10 = a1[1];
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  v11 = *a5;
  v12 = *a6;
  *a5 = v8;
  *a6 = v10;
  sub_2407D2588(v8);
  return sub_2407D1854(v11);
}

uint64_t sub_2408D32F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a3;
  v9 = *a4;
  *a3 = a1;
  *a4 = a2;
  sub_2407D1854(v8);
}
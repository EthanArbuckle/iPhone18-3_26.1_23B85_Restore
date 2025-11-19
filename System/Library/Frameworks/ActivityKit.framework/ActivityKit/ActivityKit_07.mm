id sub_1A2CF8F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A2CF9000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A2D0AD20;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v11 = *(v4 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
  v12 = sub_1A2D080E4();
  swift_bridgeObjectRetain_n();

  sub_1A2D08704();

  v13 = type metadata accessor for CancellableAssertion();
  v14 = objc_allocWithZone(v13);
  v15 = *(v12 + 48);
  v16 = *(v12 + 52);
  swift_allocObject();

  *&v14[OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token] = sub_1A2D080F4();
  v19.receiver = v14;
  v19.super_class = v13;
  v17 = objc_msgSendSuper2(&v19, sel_init);

  return v17;
}

uint64_t sub_1A2CF92CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v79 = a3;
  v83[4] = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A1B68, &unk_1A2D15AF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v68 - v15;
  v81 = sub_1A2CF8384();
  if (!v81)
  {
    sub_1A2CA1590();
    swift_allocError();
    *v34 = xmmword_1A2D0AC20;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
    *(v34 + 64) = 0;
    result = swift_willThrow();
    goto LABEL_29;
  }

  v72 = v16;
  v17 = OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_predicates;
  swift_beginAccess();
  v70 = v17;
  v18 = *(a1 + v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v12;
  v77 = a5;
  v71 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_35:
    v18 = sub_1A2CB2DAC(0, *(v18 + 2) + 1, 1, v18);
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  v22 = v21 + 1;
  v74 = a4;
  v75 = v13;
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1A2CB2DAC((v20 > 1), v21 + 1, 1, v18);
  }

  v13 = 0;
  *(v18 + 2) = v22;
  v73 = a2;
  *&v18[8 * v21 + 32] = a2;
  v23 = MEMORY[0x1E69E7CC0];
  a2 = MEMORY[0x1E69E6158];
  while (1)
  {
    if (v13 >= *(v18 + 2))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v24 = &v18[8 * v13];
    a4 = *(v24 + 4);
    if (!a4)
    {
      break;
    }

    v25 = *(a4 + 16);
    v26 = *(v23 + 2);
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_31;
    }

    v28 = *(v24 + 4);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    if (v29 && v27 <= *(v23 + 3) >> 1)
    {
      if (!*(a4 + 16))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v26 <= v27)
      {
        v30 = v26 + v25;
      }

      else
      {
        v30 = v26;
      }

      v23 = sub_1A2C8A10C(v29, v30, 1, v23);
      if (!*(a4 + 16))
      {
LABEL_6:

        if (v25)
        {
          goto LABEL_32;
        }

        goto LABEL_7;
      }
    }

    if ((*(v23 + 3) >> 1) - *(v23 + 2) < v25)
    {
      goto LABEL_33;
    }

    swift_arrayInitWithCopy();

    if (v25)
    {
      v31 = *(v23 + 2);
      v32 = __OFADD__(v31, v25);
      v33 = v31 + v25;
      if (v32)
      {
        goto LABEL_34;
      }

      *(v23 + 2) = v33;
    }

LABEL_7:
    if (v22 == ++v13)
    {
      goto LABEL_25;
    }
  }

  v23 = 0;
LABEL_25:
  v83[0] = v23;
  v36 = sub_1A2D07EB4();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CEB330();
  v39 = v80;
  v40 = sub_1A2D07E94();
  if (v39)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v42 = v40;
    v43 = v41;

    v44 = sub_1A2D07F24();
    sub_1A2C55840(v42, v43);

    v45 = sub_1A2D07F44();
    v47 = v46;

    v48 = sub_1A2D07F24();
    v83[0] = 0;
    LOBYTE(v44) = [v81 subscribeToActivityQoSMatchingPredicate:v48 error:v83];

    v49 = v83[0];
    if (v44)
    {
      v50 = v71;
      v51 = *(v71 + v70);
      *(v71 + v70) = v18;
      v52 = v49;

      v53 = *(v50 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__qosPublisher);
      v82 = *(v50 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
      v54 = v82;
      v83[0] = v53;
      v55 = sub_1A2D086D4();
      v56 = *(*(v55 - 8) + 56);
      v80 = v45;
      v57 = v78;
      v56(v78, 1, 1, v55);

      v69 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1B58, &unk_1A2D15AE0);
      sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
      v70 = v47;
      sub_1A2C56A78(&unk_1EB0A1B78, &qword_1EB0A1B58, &unk_1A2D15AE0);
      sub_1A2C8B9D4();
      v58 = v72;
      sub_1A2D08264();
      sub_1A2C54E38(v57, &qword_1EB0A0570, &qword_1A2D0ADA0);

      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v60 = swift_allocObject();
      v61 = v73;
      *(v60 + 16) = v59;
      *(v60 + 24) = v61;
      v62 = swift_allocObject();
      v63 = v79;
      v62[2] = v61;
      v62[3] = v63;
      v62[4] = v74;
      sub_1A2C56A78(&qword_1EB0A1B88, &unk_1EB0A1B68, &unk_1A2D15AF0);
      swift_bridgeObjectRetain_n();

      v64 = v76;
      v65 = sub_1A2D08224();
      sub_1A2C55840(v80, v70);
      swift_unknownObjectRelease();

      result = (*(v75 + 8))(v58, v64);
      *v77 = v65;
    }

    else
    {
      v66 = v83[0];

      sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v45, v47);
      result = swift_unknownObjectRelease();
    }

LABEL_29:
    v67 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void sub_1A2CF9AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3;
    sub_1A2CF86C8(&v6);
  }
}

uint64_t sub_1A2CF9B4C(uint64_t *a1, uint64_t a2, void (*a3)(unint64_t *))
{
  v5 = *a1;

  v6 = sub_1A2CFA144(v5, a2);

  a3(v6);
}

unint64_t *sub_1A2CF9CB8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1A2CF9F90(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1A2CF9D54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A1B90, &qword_1A2D0BD98);
  result = sub_1A2D08994();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_1A2D08C14();

    sub_1A2D08484();
    result = sub_1A2D08C54();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

unint64_t *sub_1A2CF9F90(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v19 = a2;
  v20 = result;
  v21 = 0;
  v22 = a3;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  do
  {
    do
    {
      if (!v8)
      {
        v13 = v4;
        v12 = v24;
        do
        {
          v4 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
            return result;
          }

          if (v4 >= v9)
          {
            return sub_1A2CF9D54(v20, v19, v21, v22);
          }

          v14 = *(v5 + 8 * v4);
          ++v13;
        }

        while (!v14);
        v8 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v4 << 6);
        if (!v24)
        {
          break;
        }

        goto LABEL_12;
      }

      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v11 = v10 | (v4 << 6);
      v12 = v24;
      if (!v24)
      {
        break;
      }

LABEL_12:
      v15 = *(*(v22 + 48) + 16 * v11 + 8);
      v23[0] = *(*(v22 + 48) + 16 * v11);
      v23[1] = v15;
      MEMORY[0x1EEE9AC00](result);
      v18[2] = v23;

      v16 = sub_1A2C956A8(sub_1A2CB05CC, v18, v12);
    }

    while ((v16 & 1) == 0);
    *(v20 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
  }

  while (!__OFADD__(v21++, 1));
  __break(1u);
  return sub_1A2CF9D54(v20, v19, v21, v22);
}

unint64_t *sub_1A2CFA144(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_1A2CF9CB8(v13, v7, a1, a2);
      MEMORY[0x1A58E5180](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1A2CF9F90((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1A2CFA304(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1A2D07F24();
  v12 = sub_1A2D07E84();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v15 = sub_1A2D07F44();
  v17 = v16;
  sub_1A2CABCD8();
  sub_1A2D07E64();
  sub_1A2C55840(v15, v17);

  v18 = v25;
  if (v25)
  {

    v19 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton_queue);
    *v10 = v19;
    (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
    v20 = v19;
    LOBYTE(v19) = sub_1A2D08364();
    (*(v7 + 8))(v10, v6);
    if (v19)
    {
      v21 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_qos);
      *(a3 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__queue_qos) = v18;

      v22 = *(a3 + OBJC_IVAR____TtC11ActivityKitP33_6DC02F3CDAFEFBE600E2E479E61466209Singleton__qosPublisher);
      v25 = v18;

      sub_1A2D08174();

      a4[2](a4, 0);
    }

    __break(1u);
  }

  _Block_release(a4);
  __break(1u);
  _Block_release(a4);
  sub_1A2C55840(v15, v17);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CFA568(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  if (*(a1 + 16) && (v5 = sub_1A2C64868(v1[2], v1[3]), (v6 & 1) != 0))
  {
    v7 = *(*(a1 + 56) + 8 * v5);
  }

  else
  {
    v7 = 1;
  }

  return v3(v7);
}

unint64_t sub_1A2CFA5D0()
{
  result = qword_1EB0A1B50;
  if (!qword_1EB0A1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1B50);
  }

  return result;
}

void sub_1A2CFA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {

    sub_1A2C5E574(a3, a4);
  }
}

uint64_t sub_1A2CFA6C8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t PushType.contentSourceRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_1A2D0EBF0;
  *(a1 + 32) = 0;
}

uint64_t static PushType.channel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_1A2CFA788(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BE0, &qword_1A2D15D80);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BE8, &qword_1A2D15D88);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BF0, &qword_1A2D15D90);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFB52C();
  v18 = v24;
  sub_1A2D08C74();
  if (v18)
  {
    v26 = 1;
    sub_1A2CFB580();
    sub_1A2D08A84();
    sub_1A2D08AB4();
    (*(v22 + 8))(v7, v4);
  }

  else
  {
    v25 = 0;
    sub_1A2CFB5D4();
    sub_1A2D08A84();
    (*(v20 + 8))(v11, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1A2CFAA7C(uint64_t a1)
{
  v2 = sub_1A2CFB580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFAAB8(uint64_t a1)
{
  v2 = sub_1A2CFB580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFAAF4()
{
  if (*v0)
  {
    result = 0x6C656E6E616863;
  }

  else
  {
    result = 0x6E656B6F74;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CFAB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A2CFAC04(uint64_t a1)
{
  v2 = sub_1A2CFB52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFAC40(uint64_t a1)
{
  v2 = sub_1A2CFB52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFAC7C(uint64_t a1)
{
  v2 = sub_1A2CFB5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFACB8(uint64_t a1)
{
  v2 = sub_1A2CFB5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFACF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A2CFB628(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1A2CFAD3C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1A2D08B34();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t static PushType.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1A2D08B34() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1A2CFADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CFAE7C(uint64_t a1)
{
  v2 = sub_1A2CFB0B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFAEB8(uint64_t a1)
{
  v2 = sub_1A2CFB0B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFAEF4(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1A2D08B34() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t PushType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BA0, &qword_1A2D15B00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFB0B4();

  sub_1A2D08C74();
  v12[0] = v8;
  v12[1] = v9;
  sub_1A2CFB108();
  sub_1A2D08AE4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A2CFB0B4()
{
  result = qword_1EB0A1BA8;
  if (!qword_1EB0A1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BA8);
  }

  return result;
}

unint64_t sub_1A2CFB108()
{
  result = qword_1EB0A1BB0;
  if (!qword_1EB0A1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BB0);
  }

  return result;
}

uint64_t PushType.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1BB8, &qword_1A2D15B08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFB0B4();
  sub_1A2D08C64();
  if (!v2)
  {
    sub_1A2CFB2CC();
    sub_1A2D08A54();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2CFB2CC()
{
  result = qword_1EB0A1BC0;
  if (!qword_1EB0A1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BC0);
  }

  return result;
}

uint64_t sub_1A2CFB360(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2CFB3B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

unint64_t sub_1A2CFB428()
{
  result = qword_1EB0A1BC8;
  if (!qword_1EB0A1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BC8);
  }

  return result;
}

unint64_t sub_1A2CFB480()
{
  result = qword_1EB0A1BD0;
  if (!qword_1EB0A1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BD0);
  }

  return result;
}

unint64_t sub_1A2CFB4D8()
{
  result = qword_1EB0A1BD8;
  if (!qword_1EB0A1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BD8);
  }

  return result;
}

unint64_t sub_1A2CFB52C()
{
  result = qword_1EB0A1BF8;
  if (!qword_1EB0A1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1BF8);
  }

  return result;
}

unint64_t sub_1A2CFB580()
{
  result = qword_1EB0A1C00;
  if (!qword_1EB0A1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C00);
  }

  return result;
}

unint64_t sub_1A2CFB5D4()
{
  result = qword_1EB0A1C08;
  if (!qword_1EB0A1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C08);
  }

  return result;
}

uint64_t sub_1A2CFB628(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C10, &qword_1A2D15D98);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C18, &qword_1A2D15DA0);
  v33 = *(v6 - 8);
  v7 = *(v33 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C20, &unk_1A2D15DA8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v37 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A2CFB52C();
  v18 = v36;
  sub_1A2D08C64();
  if (!v18)
  {
    v32 = v6;
    v19 = v35;
    v36 = v11;
    v20 = sub_1A2D08A64();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = sub_1A2C6D870();
    v23 = v10;
    v17 = v14;
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v25 = v10;
      v26 = sub_1A2D088A4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v28 = &type metadata for PushType.Request;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v36 + 8))(v14, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v42 = 1;
      sub_1A2CFB580();
      sub_1A2D089D4();
      v24 = v36;
      v33 = v14;
      v17 = sub_1A2D08A24();
      (*(v34 + 8))(v5, v19);
      (*(v24 + 8))(v33, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
      sub_1A2CFB5D4();
      sub_1A2D089D4();
      v31 = v36;
      (*(v33 + 1))(v9, v32);
      (*(v31 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v17;
}

unint64_t sub_1A2CFBB68()
{
  result = qword_1EB0A1C28;
  if (!qword_1EB0A1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C28);
  }

  return result;
}

unint64_t sub_1A2CFBBC0()
{
  result = qword_1EB0A1C30;
  if (!qword_1EB0A1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C30);
  }

  return result;
}

unint64_t sub_1A2CFBC18()
{
  result = qword_1EB0A1C38;
  if (!qword_1EB0A1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C38);
  }

  return result;
}

unint64_t sub_1A2CFBC70()
{
  result = qword_1EB0A1C40;
  if (!qword_1EB0A1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C40);
  }

  return result;
}

unint64_t sub_1A2CFBCC8()
{
  result = qword_1EB0A1C48;
  if (!qword_1EB0A1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C48);
  }

  return result;
}

unint64_t sub_1A2CFBD20()
{
  result = qword_1EB0A1C50;
  if (!qword_1EB0A1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C50);
  }

  return result;
}

unint64_t sub_1A2CFBD78()
{
  result = qword_1EB0A1C58;
  if (!qword_1EB0A1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C58);
  }

  return result;
}

unint64_t sub_1A2CFBDD0()
{
  result = qword_1EB0A1C60;
  if (!qword_1EB0A1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C60);
  }

  return result;
}

ActivityKit::ActivityPresenter __swiftcall ActivityPresenter.init(bundleIdentifier:presentations:)(Swift::String bundleIdentifier, Swift::OpaquePointer presentations)
{
  *v2 = bundleIdentifier;
  *(v2 + 16) = presentations;
  result.bundleIdentifier = bundleIdentifier;
  result.presentations = presentations;
  return result;
}

unint64_t sub_1A2CFBE30()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x6E656E696D6F7270;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CFBE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656E696D6F7270 && a2 == 0xE900000000000074;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1B420 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A2CFBF60(uint64_t a1)
{
  v2 = sub_1A2CFC378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFBF9C(uint64_t a1)
{
  v2 = sub_1A2CFC378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFBFD8(uint64_t a1)
{
  v2 = sub_1A2CFC420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFC014(uint64_t a1)
{
  v2 = sub_1A2CFC420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFC050(uint64_t a1)
{
  v2 = sub_1A2CFC3CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFC08C(uint64_t a1)
{
  v2 = sub_1A2CFC3CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationState.ForegroundModifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C68, &qword_1A2D160A0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C70, &qword_1A2D160A8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C78, &qword_1A2D160B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFC378();
  sub_1A2D08C74();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1A2CFC3CC();
    v18 = v22;
    sub_1A2D08A84();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1A2CFC420();
    sub_1A2D08A84();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1A2CFC378()
{
  result = qword_1EB0A1C80;
  if (!qword_1EB0A1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C80);
  }

  return result;
}

unint64_t sub_1A2CFC3CC()
{
  result = qword_1EB0A1C88;
  if (!qword_1EB0A1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C88);
  }

  return result;
}

unint64_t sub_1A2CFC420()
{
  result = qword_1EB0A1C90;
  if (!qword_1EB0A1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1C90);
  }

  return result;
}

uint64_t ActivityPresentationState.ForegroundModifier.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1C98, &qword_1A2D160B8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CA0, &qword_1A2D160C0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CA8, &unk_1A2D160C8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFC378();
  v16 = v36;
  sub_1A2D08C64();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1A2D08A64();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1A2C6D870();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1A2D088A4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v26 = &type metadata for ActivityPresentationState.ForegroundModifier;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1A2CFC3CC();
        sub_1A2D089D4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1A2CFC420();
        sub_1A2D089D4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1A2CFC978()
{
  if (*v0)
  {
    result = 0x6D6574737973;
  }

  else
  {
    result = 0x65746E4972657375;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CFC9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746E4972657375 && a2 == 0xEF6E6F6974636172;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A2CFCA9C(uint64_t a1)
{
  v2 = sub_1A2CFCEB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFCAD8(uint64_t a1)
{
  v2 = sub_1A2CFCEB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFCB14(uint64_t a1)
{
  v2 = sub_1A2CFCF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFCB50(uint64_t a1)
{
  v2 = sub_1A2CFCF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFCB8C(uint64_t a1)
{
  v2 = sub_1A2CFCF5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFCBC8(uint64_t a1)
{
  v2 = sub_1A2CFCF5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationState.DisplacementReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CB0, &qword_1A2D160D8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CB8, &qword_1A2D160E0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CC0, &qword_1A2D160E8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFCEB4();
  sub_1A2D08C74();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1A2CFCF08();
    v18 = v22;
    sub_1A2D08A84();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1A2CFCF5C();
    sub_1A2D08A84();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1A2CFCEB4()
{
  result = qword_1EB0A1CC8;
  if (!qword_1EB0A1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1CC8);
  }

  return result;
}

unint64_t sub_1A2CFCF08()
{
  result = qword_1EB0A1CD0;
  if (!qword_1EB0A1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1CD0);
  }

  return result;
}

unint64_t sub_1A2CFCF5C()
{
  result = qword_1EB0A1CD8;
  if (!qword_1EB0A1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1CD8);
  }

  return result;
}

uint64_t ActivityPresentationState.DisplacementReason.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CE0, &qword_1A2D160F0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CE8, &qword_1A2D160F8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CF0, &qword_1A2D16100);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFCEB4();
  v16 = v36;
  sub_1A2D08C64();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1A2D08A64();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1A2C6D870();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1A2D088A4();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
      *v26 = &type metadata for ActivityPresentationState.DisplacementReason;
      sub_1A2D089E4();
      sub_1A2D08894();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1A2CFCF08();
        sub_1A2D089D4();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1A2CFCF5C();
        sub_1A2D089D4();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1A2CFD4D0(uint64_t a1)
{
  v2 = sub_1A2CFF3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFD50C(uint64_t a1)
{
  v2 = sub_1A2CFF3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFD548()
{
  v1 = 0x756F72676B636162;
  if (*v0 != 1)
  {
    v1 = 0x6563616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F726765726F66;
  }
}

uint64_t sub_1A2CFD5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CFF56C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CFD5D0(uint64_t a1)
{
  v2 = sub_1A2CFF2CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFD60C(uint64_t a1)
{
  v2 = sub_1A2CFF2CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFD65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CFD6E0(uint64_t a1)
{
  v2 = sub_1A2CFF320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFD71C(uint64_t a1)
{
  v2 = sub_1A2CFF320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CFD770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265696669646F6DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CFD7F8(uint64_t a1)
{
  v2 = sub_1A2CFF41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFD834(uint64_t a1)
{
  v2 = sub_1A2CFF41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentationState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1CF8, &qword_1A2D16108);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D00, &qword_1A2D16110);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D08, &qword_1A2D16118);
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D10, &qword_1A2D16120);
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v18 = &v26 - v17;
  v33 = *v2;
  v19 = v2[1];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF2CC();
  sub_1A2D08C74();
  if (!v19)
  {
    v36 = 0;
    sub_1A2CFF41C();
    v22 = v34;
    sub_1A2D08A84();
    v35 = v33;
    sub_1A2CFF470();
    sub_1A2D08AA4();
    (*(v27 + 8))(v14, v11);
    return (*(v15 + 8))(v18, v22);
  }

  if (v19 == 1)
  {
    v39 = 2;
    sub_1A2CFF320();
    v21 = v30;
    v22 = v34;
    sub_1A2D08A84();
    v38 = v33 & 1;
    sub_1A2CFF374();
    v23 = v32;
    sub_1A2D08AE4();
    (*(v31 + 8))(v21, v23);
    return (*(v15 + 8))(v18, v22);
  }

  v37 = 1;
  sub_1A2CFF3C8();
  v25 = v34;
  sub_1A2D08A84();
  (*(v28 + 8))(v10, v29);
  return (*(v15 + 8))(v18, v25);
}

uint64_t ActivityPresentationState.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D30, &qword_1A2D16128);
  v48 = *(v46 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v42 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D38, &qword_1A2D16130);
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D40, &qword_1A2D16138);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D48, &qword_1A2D16140);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1A2CFF2CC();
  v19 = v52;
  sub_1A2D08C64();
  if (!v19)
  {
    v43 = v8;
    v44 = 0;
    v20 = v49;
    v52 = v13;
    v21 = v51;
    v22 = v16;
    v23 = sub_1A2D08A64();
    v24 = (2 * *(v23 + 16)) | 1;
    v54 = v23;
    v55 = v23 + 32;
    v56 = 0;
    v57 = v24;
    v25 = sub_1A2C6D930();
    if (v25 != 3 && v56 == v57 >> 1)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          v58 = 1;
          sub_1A2CFF3C8();
          v26 = v16;
          v27 = v44;
          sub_1A2D089D4();
          v28 = v52;
          if (!v27)
          {
            (*(v47 + 8))(v7, v20);
            (*(v28 + 8))(v16, v12);
            swift_unknownObjectRelease();
            v29 = 0;
            v30 = 2;
LABEL_18:
            *v21 = v29;
            v21[1] = v30;
            return __swift_destroy_boxed_opaque_existential_1(v53);
          }

          goto LABEL_9;
        }

        v58 = 2;
        sub_1A2CFF320();
        v38 = v44;
        sub_1A2D089D4();
        v39 = v52;
        if (!v38)
        {
          sub_1A2CFF4C4();
          v41 = v46;
          sub_1A2D08A54();
          (*(v48 + 8))(0, v41);
          (*(v39 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v29 = v58;
          v30 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v58 = 0;
        sub_1A2CFF41C();
        v36 = v16;
        v37 = v44;
        sub_1A2D089D4();
        if (!v37)
        {
          sub_1A2CFF518();
          v40 = v43;
          sub_1A2D08A14();
          (*(v45 + 8))(v11, v40);
          (*(v52 + 8))(v36, v12);
          swift_unknownObjectRelease();
          v30 = 0;
          v29 = v58;
          goto LABEL_18;
        }
      }

      (*(v52 + 8))(v16, v12);
      goto LABEL_10;
    }

    v31 = sub_1A2D088A4();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A05F0, &qword_1A2D0ADF0) + 48);
    *v33 = &type metadata for ActivityPresentationState;
    v26 = v22;
    sub_1A2D089E4();
    sub_1A2D08894();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    v28 = v52;
LABEL_9:
    (*(v28 + 8))(v26, v12);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

unint64_t sub_1A2CFE34C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A2CFF69C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unsigned __int8 *ActivityPresentationState.resolving(state:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v2[1];
  if (v2[1])
  {
    if (!result[1])
    {
      *a2 = v3;
      return result;
    }

    if (result[1] == 1)
    {
      if (v5 != 1)
      {
LABEL_8:
        *a2 = v3;
LABEL_14:
        *(a2 + 1) = 1;
        return result;
      }

      if (v4 & 1) != 0 && (v3)
      {
        LOBYTE(v3) = v3 & 1;
        goto LABEL_8;
      }

      *a2 = 256;
    }

    else
    {
      if (v5 == 1)
      {
        *a2 = v4;
        goto LABEL_14;
      }

      *a2 = 512;
    }
  }

  else if (result[1])
  {
    *a2 = v4;
  }

  else if ((v4 == 2 || (v4 & 1) == 0) && (v3 == 2 || (v3 & 1) == 0))
  {
    if (v4 == 2 || (v4) && (v3 == 2 || (v3))
    {
      *a2 = 2;
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 1;
  }

  return result;
}

uint64_t ActivityPresentation.activityIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ActivityPresentation.init(activityIdentifier:state:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

BOOL static ActivityPresentation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1A2D08B34(), v8 = 0, (v7 & 1) != 0))
  {
    v11[0] = v2;
    v11[1] = v3;
    v10[0] = v4;
    v10[1] = v5;
    return _s11ActivityKit0A17PresentationStateO2eeoiySbAC_ACtFZ_0(v11, v10);
  }

  return v8;
}

unint64_t sub_1A2CFE534()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CFE570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A2D1B440 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A2D08B34();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A2CFE654(uint64_t a1)
{
  v2 = sub_1A2CFF6AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFE690(uint64_t a1)
{
  v2 = sub_1A2CFF6AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D58, &qword_1A2D16148);
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  HIDWORD(v12) = *(v1 + 17);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF6AC();
  sub_1A2D08C74();
  v18 = 0;
  sub_1A2D08AB4();
  if (!v2)
  {
    v16 = v14;
    v17 = BYTE4(v12);
    v15 = 1;
    sub_1A2CFF700();
    sub_1A2D08AE4();
  }

  return (*(v13 + 8))(v7, v4);
}

uint64_t ActivityPresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D70, &qword_1A2D16150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF6AC();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_1A2D08A24();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  sub_1A2CFF754();
  sub_1A2D08A54();
  (*(v6 + 8))(v9, v5);
  v15 = v19;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1A2CFEA94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1A2D08B34(), v8 = 0, (v7 & 1) != 0))
  {
    v11[0] = v2;
    v11[1] = v3;
    v10[0] = v4;
    v10[1] = v5;
    return _s11ActivityKit0A17PresentationStateO2eeoiySbAC_ACtFZ_0(v11, v10);
  }

  return v8;
}

uint64_t ActivityPresenter.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static ActivityPresenter.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  return sub_1A2CC2E40(v2, v3);
}

unint64_t sub_1A2CFEBD0()
{
  if (*v0)
  {
    result = 0x61746E6573657270;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CFEC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A2D196E0 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xED0000736E6F6974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A2D08B34();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A2CFED0C(uint64_t a1)
{
  v2 = sub_1A2CFF7A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CFED48(uint64_t a1)
{
  v2 = sub_1A2CFF7A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityPresenter.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D80, &qword_1A2D16158);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF7A8();
  sub_1A2D08C74();
  v17 = 0;
  sub_1A2D08AB4();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D90, &qword_1A2D16160);
    sub_1A2CFF850(&qword_1EB0A1D98, sub_1A2CFF7FC);
    sub_1A2D08AE4();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t ActivityPresenter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1DA8, &qword_1A2D16168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CFF7A8();
  sub_1A2D08C64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = sub_1A2D08A24();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1D90, &qword_1A2D16160);
  v18 = 1;
  sub_1A2CFF850(&qword_1EB0A1DB0, sub_1A2CFF8C8);
  sub_1A2D08A54();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2CFF1E0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A2D08B34() & 1) == 0)
  {
    return 0;
  }

  return sub_1A2CC2E40(v2, v3);
}

BOOL _s11ActivityKit0A17PresentationStateO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1])
  {
    if (a1[1] == 1)
    {
      if (v4 == 1)
      {
        return ((v3 ^ v2) & 1) == 0;
      }

      return 0;
    }

    if (v4 != 2 || v3 != 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[1])
    {
      return 0;
    }

    if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1A2CFF2CC()
{
  result = qword_1ED7088C0;
  if (!qword_1ED7088C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088C0);
  }

  return result;
}

unint64_t sub_1A2CFF320()
{
  result = qword_1EB0A1D18;
  if (!qword_1EB0A1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D18);
  }

  return result;
}

unint64_t sub_1A2CFF374()
{
  result = qword_1EB0A1D20;
  if (!qword_1EB0A1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D20);
  }

  return result;
}

unint64_t sub_1A2CFF3C8()
{
  result = qword_1EB0A1D28;
  if (!qword_1EB0A1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D28);
  }

  return result;
}

unint64_t sub_1A2CFF41C()
{
  result = qword_1ED708880;
  if (!qword_1ED708880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708880);
  }

  return result;
}

unint64_t sub_1A2CFF470()
{
  result = qword_1ED7088A8;
  if (!qword_1ED7088A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088A8);
  }

  return result;
}

unint64_t sub_1A2CFF4C4()
{
  result = qword_1EB0A1D50;
  if (!qword_1EB0A1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D50);
  }

  return result;
}

unint64_t sub_1A2CFF518()
{
  result = qword_1EB09F098;
  if (!qword_1EB09F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F098);
  }

  return result;
}

uint64_t sub_1A2CFF56C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563616C70736964 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

unint64_t sub_1A2CFF69C(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A2CFF6AC()
{
  result = qword_1EB0A1D60;
  if (!qword_1EB0A1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D60);
  }

  return result;
}

unint64_t sub_1A2CFF700()
{
  result = qword_1EB0A1D68;
  if (!qword_1EB0A1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D68);
  }

  return result;
}

unint64_t sub_1A2CFF754()
{
  result = qword_1EB0A1D78;
  if (!qword_1EB0A1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D78);
  }

  return result;
}

unint64_t sub_1A2CFF7A8()
{
  result = qword_1EB0A1D88;
  if (!qword_1EB0A1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1D88);
  }

  return result;
}

unint64_t sub_1A2CFF7FC()
{
  result = qword_1EB0A1DA0;
  if (!qword_1EB0A1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DA0);
  }

  return result;
}

uint64_t sub_1A2CFF850(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A1D90, &qword_1A2D16160);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2CFF8C8()
{
  result = qword_1EB0A1DB8;
  if (!qword_1EB0A1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DB8);
  }

  return result;
}

unint64_t sub_1A2CFF920()
{
  result = qword_1EB0A1DC0;
  if (!qword_1EB0A1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DC0);
  }

  return result;
}

unint64_t sub_1A2CFF978()
{
  result = qword_1EB0A1DC8;
  if (!qword_1EB0A1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DC8);
  }

  return result;
}

unint64_t sub_1A2CFF9D0()
{
  result = qword_1EB0A1DD0;
  if (!qword_1EB0A1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityPresentationState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityPresentationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A2CFFB6C(unsigned __int8 *a1)
{
  if (a1[1] <= 1u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 2;
  }
}

_BYTE *sub_1A2CFFB84(_BYTE *result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  result[1] = a2;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A2CFFBF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1A2CFFC38(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1A2CFFD5C()
{
  result = qword_1EB0A1DD8;
  if (!qword_1EB0A1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DD8);
  }

  return result;
}

unint64_t sub_1A2CFFDB4()
{
  result = qword_1EB0A1DE0;
  if (!qword_1EB0A1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DE0);
  }

  return result;
}

unint64_t sub_1A2CFFE0C()
{
  result = qword_1EB0A1DE8;
  if (!qword_1EB0A1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DE8);
  }

  return result;
}

unint64_t sub_1A2CFFE64()
{
  result = qword_1EB0A1DF0;
  if (!qword_1EB0A1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DF0);
  }

  return result;
}

unint64_t sub_1A2CFFEBC()
{
  result = qword_1EB0A1DF8;
  if (!qword_1EB0A1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1DF8);
  }

  return result;
}

unint64_t sub_1A2CFFF14()
{
  result = qword_1EB0A1E00;
  if (!qword_1EB0A1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E00);
  }

  return result;
}

unint64_t sub_1A2CFFF6C()
{
  result = qword_1EB0A1E08;
  if (!qword_1EB0A1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E08);
  }

  return result;
}

unint64_t sub_1A2CFFFC4()
{
  result = qword_1EB0A1E10;
  if (!qword_1EB0A1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E10);
  }

  return result;
}

unint64_t sub_1A2D0001C()
{
  result = qword_1EB0A1E18;
  if (!qword_1EB0A1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E18);
  }

  return result;
}

unint64_t sub_1A2D00074()
{
  result = qword_1EB0A1E20;
  if (!qword_1EB0A1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E20);
  }

  return result;
}

unint64_t sub_1A2D000CC()
{
  result = qword_1EB0A1E28;
  if (!qword_1EB0A1E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E28);
  }

  return result;
}

unint64_t sub_1A2D00124()
{
  result = qword_1ED708870;
  if (!qword_1ED708870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708870);
  }

  return result;
}

unint64_t sub_1A2D0017C()
{
  result = qword_1ED708878;
  if (!qword_1ED708878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708878);
  }

  return result;
}

unint64_t sub_1A2D001D4()
{
  result = qword_1ED708888;
  if (!qword_1ED708888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708888);
  }

  return result;
}

unint64_t sub_1A2D0022C()
{
  result = qword_1ED708890;
  if (!qword_1ED708890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708890);
  }

  return result;
}

unint64_t sub_1A2D00284()
{
  result = qword_1ED708898;
  if (!qword_1ED708898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708898);
  }

  return result;
}

unint64_t sub_1A2D002DC()
{
  result = qword_1ED7088A0;
  if (!qword_1ED7088A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088A0);
  }

  return result;
}

unint64_t sub_1A2D00334()
{
  result = qword_1ED7088B0;
  if (!qword_1ED7088B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088B0);
  }

  return result;
}

unint64_t sub_1A2D0038C()
{
  result = qword_1ED7088B8;
  if (!qword_1ED7088B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7088B8);
  }

  return result;
}

unint64_t sub_1A2D003E4()
{
  result = qword_1EB0A1E30;
  if (!qword_1EB0A1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E30);
  }

  return result;
}

unint64_t sub_1A2D0043C()
{
  result = qword_1EB0A1E38;
  if (!qword_1EB0A1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E38);
  }

  return result;
}

unint64_t sub_1A2D00494()
{
  result = qword_1EB0A1E40;
  if (!qword_1EB0A1E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E40);
  }

  return result;
}

unint64_t sub_1A2D004EC()
{
  result = qword_1EB0A1E48;
  if (!qword_1EB0A1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E48);
  }

  return result;
}

unint64_t sub_1A2D00544()
{
  result = qword_1EB0A1E50;
  if (!qword_1EB0A1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E50);
  }

  return result;
}

unint64_t sub_1A2D0059C()
{
  result = qword_1EB0A1E58;
  if (!qword_1EB0A1E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E58);
  }

  return result;
}

unint64_t sub_1A2D005F4()
{
  result = qword_1EB0A1E60;
  if (!qword_1EB0A1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E60);
  }

  return result;
}

unint64_t sub_1A2D0064C()
{
  result = qword_1EB0A1E68;
  if (!qword_1EB0A1E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E68);
  }

  return result;
}

unint64_t sub_1A2D006A4()
{
  result = qword_1EB0A1E70;
  if (!qword_1EB0A1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E70);
  }

  return result;
}

unint64_t sub_1A2D006FC()
{
  result = qword_1EB0A1E78;
  if (!qword_1EB0A1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E78);
  }

  return result;
}

unint64_t sub_1A2D00754()
{
  result = qword_1EB0A1E80;
  if (!qword_1EB0A1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E80);
  }

  return result;
}

unint64_t sub_1A2D007AC()
{
  result = qword_1EB0A1E88;
  if (!qword_1EB0A1E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E88);
  }

  return result;
}

uint64_t sub_1A2D0080C()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB0B2580);
  __swift_project_value_buffer(v0, qword_1EB0B2580);
  return sub_1A2D08084();
}

uint64_t sub_1A2D0088C()
{
  v1 = sub_1A2D082D4();
  v62 = *(v1 - 8);
  v2 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v59 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1A2D08314();
  v58 = *(v60 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v56 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1A2D08334();
  v61 = *(v65 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v49 - v9;
  v57 = sub_1A2D082C4();
  v55 = *(v57 - 8);
  v10 = v55[8];
  MEMORY[0x1EEE9AC00](v57);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v63 = (&v49 - v16);
  v17 = sub_1A2D08734();
  v52 = *(v17 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A2D08344();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v0 + 16);
  *v26 = v27;
  (*(v22 + 104))(v26, *MEMORY[0x1E69E8020], v21, v24);
  v28 = v27;
  v29 = sub_1A2D08364();
  result = (*(v22 + 8))(v26, v21);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v31 = *(v0 + 104) * 1000000.0;
  if (COERCE__INT64(fabs(v31)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = v31;
  if (v31 >= 0x7FFFFFFF)
  {
    v32 = 0x7FFFFFFFLL;
  }

  v49 = v32;
  sub_1A2C569A0(0, &qword_1ED708B50, 0x1E69E9630);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C88F64(&qword_1ED708B60, MEMORY[0x1E69E80B0]);
  v51 = v1;
  v50 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0840, qword_1A2D0C0A8);
  sub_1A2C88FAC(&qword_1ED708B70, &qword_1EB0A0840, qword_1A2D0C0A8);
  sub_1A2D08804();
  v33 = sub_1A2D08744();
  (*(v52 + 8))(v20, v17);
  v34 = v63;
  *v63 = v49;
  v35 = v55;
  v36 = v55[13];
  v37 = v57;
  v36(v34, *MEMORY[0x1E69E7F30], v57);
  v38 = v53;
  sub_1A2D08324();
  v39 = v64;
  MEMORY[0x1A58E4010](v38, v34);
  v61 = *(v61 + 8);
  (v61)(v38, v65);
  ObjectType = swift_getObjectType();
  v41 = v54;
  v36(v54, *MEMORY[0x1E69E7F40], v37);
  *v12 = 0;
  v36(v12, *MEMORY[0x1E69E7F28], v37);
  MEMORY[0x1A58E4450](v39, v41, v12, ObjectType);
  v42 = v35[1];
  v55 = v42;
  (v42)(v12, v37);
  (v42)(v41, v37);
  v43 = swift_allocObject();
  v44 = v50;
  swift_weakInit();
  aBlock[4] = sub_1A2D01598;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_14;
  v45 = _Block_copy(aBlock);

  v46 = v56;
  sub_1A2D082E4();
  v47 = v59;
  sub_1A2C8C670();
  sub_1A2D08754();
  _Block_release(v45);
  (*(v62 + 8))(v47, v51);
  (*(v58 + 8))(v46, v60);

  v48 = *(v44 + 56);
  *(v44 + 56) = v33;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_1A2D08774();
  swift_unknownObjectRelease_n();
  (v61)(v64, v65);
  return (v55)(v63, v37);
}

void *sub_1A2D0106C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v3 = result + 3;
    v2 = result[3];
    if (v2)
    {
      v4 = result[4];

      v2(&v27, v1);
      if (v28)
      {
        sub_1A2C5E3C4(&v27, v29);
        sub_1A2C53CD8(v29, &v27);
        swift_beginAccess();
        sub_1A2C8BA60(&v27, (v1 + 8));
        swift_endAccess();
        *(v1 + 120) = 1;
        if (qword_1EB09EC60 != -1)
        {
          swift_once();
        }

        v5 = sub_1A2D08094();
        __swift_project_value_buffer(v5, qword_1EB0B2580);

        v6 = sub_1A2D08074();
        v7 = sub_1A2D086A4();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 134349056;
          *(v8 + 4) = v1[16];

          _os_log_impl(&dword_1A2C51000, v6, v7, "Created inner cancellable after %{public}ld attempts", v8, 0xCu);
          MEMORY[0x1A58E5180](v8, -1, -1);

          if (v1[7])
          {
LABEL_8:
            swift_getObjectType();
            swift_unknownObjectRetain();
            sub_1A2D08764();
            sub_1A2C80A04(v2);
            swift_unknownObjectRelease();
LABEL_22:
            __swift_destroy_boxed_opaque_existential_1(v29);
            v20 = v1[7];
            v1[7] = 0;
            swift_unknownObjectRelease();
            v21 = v1[3];
            v22 = v1[4];
            *v3 = 0;
            v3[1] = 0;
LABEL_25:
            sub_1A2C80A04(v21);
          }
        }

        else
        {

          if (v1[7])
          {
            goto LABEL_8;
          }
        }

        sub_1A2C80A04(v2);
        goto LABEL_22;
      }

      sub_1A2C96970(&v27);
      v11 = v1[16];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        __break(1u);
      }

      else
      {
        v1[16] = v13;
        v14 = *(v1 + 13) + *(v1 + 13);
        if (*(v1 + 14) < v14)
        {
          v14 = *(v1 + 14);
        }

        *(v1 + 13) = v14;
        if ((v1[6] & 1) == 0 && v13 >= v1[5])
        {
          if (qword_1EB09EC60 != -1)
          {
            swift_once();
          }

          v23 = sub_1A2D08094();
          __swift_project_value_buffer(v23, qword_1EB0B2580);

          v24 = sub_1A2D08074();
          v25 = sub_1A2D08684();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 134349056;
            *(v26 + 4) = v1[16];

            _os_log_impl(&dword_1A2C51000, v24, v25, "Failed to create inner cancellable after %{public}ld attempts; giving up as maximum reached", v26, 0xCu);
            MEMORY[0x1A58E5180](v26, -1, -1);
          }

          else
          {
          }

          sub_1A2C80A04(v2);

          *(v1 + 120) = 2;
        }

        if (qword_1EB09EC60 == -1)
        {
          goto LABEL_18;
        }
      }

      swift_once();
LABEL_18:
      v15 = sub_1A2D08094();
      __swift_project_value_buffer(v15, qword_1EB0B2580);

      v16 = sub_1A2D08074();
      v17 = sub_1A2D086A4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134349312;
        *(v18 + 4) = v1[16];

        *(v18 + 12) = 2050;
        *(v18 + 14) = v1[13];
        _os_log_impl(&dword_1A2C51000, v16, v17, "Failed to create inner cancellable after %{public}ld attempts; trying again in %{public}fs", v18, 0x16u);
        MEMORY[0x1A58E5180](v18, -1, -1);
      }

      else
      {
      }

      sub_1A2D0088C(v19);
      v21 = v2;
      goto LABEL_25;
    }

    if (result[7])
    {
      v9 = result[7];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1A2D08764();
      swift_unknownObjectRelease();
      v10 = v1[7];
    }

    v1[7] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1A2D01544()
{
  result = qword_1EB0A1E90;
  if (!qword_1EB0A1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1E90);
  }

  return result;
}

void *sub_1A2D015A0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1A2D015C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1A2D01618(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t ActivityDescriptorContentState.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityDescriptorContentState();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ActivityDescriptorContentState.contentState.getter()
{
  v1 = v0 + *(type metadata accessor for ActivityDescriptorContentState() + 24);
  v2 = *v1;
  sub_1A2C5E63C(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1A2D01760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2D0203C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2D01788(uint64_t a1)
{
  v2 = sub_1A2C843DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D017C4(uint64_t a1)
{
  v2 = sub_1A2C843DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D01800()
{
  v0 = sub_1A2D07EB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C60E50(&unk_1EB09F050, type metadata accessor for ActivityDescriptorContentState);
  v3 = sub_1A2D07E94();
  v5 = v4;
  v6 = sub_1A2D07F24();
  sub_1A2C55840(v3, v5);

  return v6;
}

uint64_t sub_1A2D018E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_1A2D07E84();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v12 = sub_1A2D07F44();
  v14 = v13;
  sub_1A2C60E50(qword_1ED7090F0, type metadata accessor for ActivityDescriptorContentState);
  sub_1A2D07E64();
  sub_1A2D021A8(a2);
  sub_1A2C55840(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_1A2D02210(v8, a2);
}

uint64_t sub_1A2D01AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001A2D1B520 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A2D08B34();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A2D01B38(uint64_t a1)
{
  v2 = sub_1A2C55468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D01B74(uint64_t a1)
{
  v2 = sub_1A2C55468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D01BB0()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2D01E14();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t sub_1A2D01C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1A2D07DF4();
  v11 = result;
  if (result)
  {
    result = sub_1A2D07E14();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A2D07E04();
  sub_1A2C8D8A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1A2D01D30(void *a1)
{
  a1[1] = sub_1A2C60E50(qword_1ED7090F0, type metadata accessor for ActivityDescriptorContentState);
  a1[2] = sub_1A2C60E50(&unk_1EB09F050, type metadata accessor for ActivityDescriptorContentState);
  result = sub_1A2C60E50(&qword_1EB0A1EC8, type metadata accessor for ActivityDescriptorContentState);
  a1[3] = result;
  return result;
}

unint64_t sub_1A2D01DDC(void *a1)
{
  a1[1] = sub_1A2C55894();
  a1[2] = sub_1A2D01E14();
  result = sub_1A2D01E68();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2D01E14()
{
  result = qword_1EB09F268;
  if (!qword_1EB09F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F268);
  }

  return result;
}

unint64_t sub_1A2D01E68()
{
  result = qword_1EB09F260;
  if (!qword_1EB09F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F260);
  }

  return result;
}

unint64_t sub_1A2D01EE0()
{
  result = qword_1EB0A1ED0;
  if (!qword_1EB0A1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1ED0);
  }

  return result;
}

unint64_t sub_1A2D01F38()
{
  result = qword_1EB0A1ED8;
  if (!qword_1EB0A1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1ED8);
  }

  return result;
}

unint64_t sub_1A2D01F90()
{
  result = qword_1EB09F5B8;
  if (!qword_1EB09F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5B8);
  }

  return result;
}

unint64_t sub_1A2D01FE8()
{
  result = qword_1EB09F5C0;
  if (!qword_1EB09F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5C0);
  }

  return result;
}

uint64_t sub_1A2D0203C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53746E65746E6F63 && a2 == 0xEC00000065746174 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A2D021A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2D02210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

ActivityKit::ActivityAuthorizationOptionsType __swiftcall ActivityAuthorizationOptionsType.init(authorizationCount:)(Swift::Int authorizationCount)
{
  if (authorizationCount == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  if (authorizationCount == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return authorizationCount;
}

unint64_t ActivityAuthorizationOptionsType.description.getter()
{
  v1 = 0x6F6974704F206F4ELL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD000000000000010;
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
    return v1;
  }
}

uint64_t ActivityAuthorizationOptionsType.authorizationCount.getter()
{
  if (*v0)
  {
    return 2 * (*v0 == 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A2D0235C(uint64_t a1)
{
  v2 = sub_1A2C6BBF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02398(uint64_t a1)
{
  v2 = sub_1A2C6BBF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D023D4(uint64_t a1)
{
  v2 = sub_1A2D0265C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02410(uint64_t a1)
{
  v2 = sub_1A2D0265C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D0244C(uint64_t a1)
{
  v2 = sub_1A2D025B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02488(uint64_t a1)
{
  v2 = sub_1A2D025B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D024C4(uint64_t a1)
{
  v2 = sub_1A2C6BC4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02500(uint64_t a1)
{
  v2 = sub_1A2C6BC4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D0253C(uint64_t a1)
{
  v2 = sub_1A2D02608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D02578(uint64_t a1)
{
  v2 = sub_1A2D02608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2D025B4()
{
  result = qword_1EB0A1F08;
  if (!qword_1EB0A1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F08);
  }

  return result;
}

unint64_t sub_1A2D02608()
{
  result = qword_1EB0A1F10;
  if (!qword_1EB0A1F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F10);
  }

  return result;
}

unint64_t sub_1A2D0265C()
{
  result = qword_1ED708EB8;
  if (!qword_1ED708EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708EB8);
  }

  return result;
}

uint64_t ActivityAuthorizationOptionsType.hashValue.getter()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2D02728()
{
  result = qword_1EB0A1F40;
  if (!qword_1EB0A1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F40);
  }

  return result;
}

unint64_t sub_1A2D0277C()
{
  v1 = 0x6F6974704F206F4ELL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD000000000000010;
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
    return v1;
  }
}

unint64_t sub_1A2D02870()
{
  result = qword_1EB0A1F48;
  if (!qword_1EB0A1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F48);
  }

  return result;
}

unint64_t sub_1A2D028C8()
{
  result = qword_1ED709600;
  if (!qword_1ED709600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709600);
  }

  return result;
}

unint64_t sub_1A2D02920()
{
  result = qword_1ED709608;
  if (!qword_1ED709608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709608);
  }

  return result;
}

unint64_t sub_1A2D02978()
{
  result = qword_1ED7095F0;
  if (!qword_1ED7095F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095F0);
  }

  return result;
}

unint64_t sub_1A2D029D0()
{
  result = qword_1ED7095F8;
  if (!qword_1ED7095F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095F8);
  }

  return result;
}

unint64_t sub_1A2D02A28()
{
  result = qword_1ED7095E0;
  if (!qword_1ED7095E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095E0);
  }

  return result;
}

unint64_t sub_1A2D02A80()
{
  result = qword_1ED7095E8;
  if (!qword_1ED7095E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7095E8);
  }

  return result;
}

unint64_t sub_1A2D02AD8()
{
  result = qword_1ED709628;
  if (!qword_1ED709628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709628);
  }

  return result;
}

unint64_t sub_1A2D02B30()
{
  result = qword_1ED709630;
  if (!qword_1ED709630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709630);
  }

  return result;
}

unint64_t sub_1A2D02B88()
{
  result = qword_1ED709610;
  if (!qword_1ED709610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709610);
  }

  return result;
}

unint64_t sub_1A2D02BE0()
{
  result = qword_1ED709618;
  if (!qword_1ED709618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709618);
  }

  return result;
}

uint64_t static ActivityPushTokenServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D18 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

BOOL sub_1A2D02D08(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1A2C54E38(a2, &unk_1EB0A0AC0, &qword_1A2D0A810);
  v10 = sub_1A2D07E84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v13 = type metadata accessor for ActivityEndingOptions();
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2C60E98(&qword_1EB09F0D0, type metadata accessor for ActivityEndingOptions);
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1A2C639DC(v9, a2, &unk_1EB0A0AC0, &qword_1A2D0A810);
  sub_1A2C6BD18(a2, v6, &unk_1EB0A0AC0, &qword_1A2D0A810);
  v18 = (*(v17 + 48))(v6, 1, v13) != 1;
  sub_1A2C54E38(v6, &unk_1EB0A0AC0, &qword_1A2D0A810);
  return v18;
}

BOOL sub_1A2D02F84(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AA0, &unk_1A2D10000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1A2C54E38(a2, &unk_1EB0A0AA0, &unk_1A2D10000);
  v10 = sub_1A2D07E84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v13 = type metadata accessor for OpaqueActivityContent();
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2C60E98(&qword_1ED709098, type metadata accessor for OpaqueActivityContent);
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1A2C639DC(v9, a2, &unk_1EB0A0AA0, &unk_1A2D10000);
  sub_1A2C6BD18(a2, v6, &unk_1EB0A0AA0, &unk_1A2D10000);
  v18 = (*(v17 + 48))(v6, 1, v13) != 1;
  sub_1A2C54E38(v6, &unk_1EB0A0AA0, &unk_1A2D10000);
  return v18;
}

BOOL sub_1A2D031C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1A2C54E38(a2, &qword_1EB0A02E0, &qword_1A2D0AA50);
  v10 = sub_1A2D07E84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v13 = type metadata accessor for OpaqueActivityPayload(0);
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2C60E98(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload);
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1A2C639DC(v9, a2, &qword_1EB0A02E0, &qword_1A2D0AA50);
  sub_1A2C6BD18(a2, v6, &qword_1EB0A02E0, &qword_1A2D0AA50);
  v18 = (*(v17 + 48))(v6, 1, v13) != 1;
  sub_1A2C54E38(v6, &qword_1EB0A02E0, &qword_1A2D0AA50);
  return v18;
}

BOOL sub_1A2D033FC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1A2C54E38(a2, &qword_1EB0A0210, &unk_1A2D0ACA0);
  v10 = sub_1A2D07E84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v13 = type metadata accessor for ActivityDescriptor();
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2C60E98(&qword_1ED709430, type metadata accessor for ActivityDescriptor);
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1A2C639DC(v9, a2, &qword_1EB0A0210, &unk_1A2D0ACA0);
  sub_1A2C6BD18(a2, v6, &qword_1EB0A0210, &unk_1A2D0ACA0);
  v18 = (*(v17 + 48))(v6, 1, v13) != 1;
  sub_1A2C54E38(v6, &qword_1EB0A0210, &unk_1A2D0ACA0);
  return v18;
}

BOOL sub_1A2D0368C(uint64_t a1, void *a2)
{
  v3 = a2[1];

  v4 = sub_1A2D07E84();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v7 = sub_1A2D07F44();
  v9 = v8;
  sub_1A2C6CDD0();
  sub_1A2D07E64();

  sub_1A2C55840(v7, v9);
  *a2 = v11;
  a2[1] = v12;
  return v12 != 0;
}

BOOL sub_1A2D03798(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1A2C54E38(a2, &unk_1EB0A0A90, &unk_1A2D0D260);
  v10 = sub_1A2D07E84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v13 = type metadata accessor for ActivityUIDismissalPolicy();
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2C60E98(&qword_1EB09F090, type metadata accessor for ActivityUIDismissalPolicy);
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1A2C639DC(v9, a2, &unk_1EB0A0A90, &unk_1A2D0D260);
  sub_1A2C6BD18(a2, v6, &unk_1EB0A0A90, &unk_1A2D0D260);
  v18 = (*(v17 + 48))(v6, 1, v13) != 1;
  sub_1A2C54E38(v6, &unk_1EB0A0A90, &unk_1A2D0D260);
  return v18;
}

BOOL sub_1A2D03A08(uint64_t a1, void *a2, void (*a3)(void), void (*a4)(void))
{
  a3(*a2);
  v6 = sub_1A2D07E84();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v9 = sub_1A2D07F44();
  v11 = v10;
  a4();
  sub_1A2D07E64();

  sub_1A2C55840(v9, v11);
  *a2 = v13;
  return v13 != 1;
}

BOOL sub_1A2D03B1C(uint64_t a1, _WORD *a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2CA7000();
  sub_1A2D07E64();

  sub_1A2C55840(v6, v8);
  *a2 = v10;
  return v10 != 2;
}

BOOL sub_1A2D03C00(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1A2CFA6C8(v3);
  v5 = sub_1A2D07E84();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v8 = sub_1A2D07F44();
  v10 = v9;
  sub_1A2CB47D4();
  sub_1A2D07E64();

  sub_1A2C55840(v8, v10);
  *a2 = v12;
  return v12 != 1;
}

BOOL sub_1A2D03CF0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1A2C54E38(a2, &qword_1EB0A0A68, &unk_1A2D0D240);
  v10 = sub_1A2D07E84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v13 = type metadata accessor for ActivityDescriptorContentState();
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2C60E98(qword_1ED7090F0, type metadata accessor for ActivityDescriptorContentState);
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1A2C639DC(v9, a2, &qword_1EB0A0A68, &unk_1A2D0D240);
  sub_1A2C6BD18(a2, v6, &qword_1EB0A0A68, &unk_1A2D0D240);
  v18 = (*(v17 + 48))(v6, 1, v13) != 1;
  sub_1A2C54E38(v6, &qword_1EB0A0A68, &unk_1A2D0D240);
  return v18;
}

BOOL sub_1A2D03F2C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A70, &unk_1A2D0D250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1A2C54E38(a2, &qword_1EB0A0A70, &unk_1A2D0D250);
  v10 = sub_1A2D07E84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v13 = type metadata accessor for ActivityPlatterDismissalPolicy();
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2C60E98(&qword_1EB0A0A78, type metadata accessor for ActivityPlatterDismissalPolicy);
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1A2C639DC(v9, a2, &qword_1EB0A0A70, &unk_1A2D0D250);
  sub_1A2C6BD18(a2, v6, &qword_1EB0A0A70, &unk_1A2D0D250);
  v18 = (*(v17 + 48))(v6, 1, v13) != 1;
  sub_1A2C54E38(v6, &qword_1EB0A0A70, &unk_1A2D0D250);
  return v18;
}

BOOL sub_1A2D04188(uint64_t a1, _BYTE *a2, void (*a3)(void))
{
  v5 = sub_1A2D07E84();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v8 = sub_1A2D07F44();
  v10 = v9;
  a3();
  sub_1A2D07E64();

  sub_1A2C55840(v8, v10);
  *a2 = v12;
  return v12 != 2;
}

BOOL sub_1A2D04270(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2C78A64();
  sub_1A2D07E64();

  sub_1A2C55840(v6, v8);
  *a2 = v10;
  return v10 != 5;
}

BOOL sub_1A2D04370(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = *a2;

  v6 = sub_1A2D07E84();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v9 = sub_1A2D07F44();
  v11 = v10;
  a3();
  sub_1A2D07E64();

  sub_1A2C55840(v9, v11);
  *a2 = v13;
  return v13 != 0;
}

BOOL sub_1A2D04460(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1A2C54E38(a2, &unk_1EB0A04F0, &qword_1A2D0AC98);
  v10 = sub_1A2D07E84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v13 = type metadata accessor for ActivityRequest();
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2C60E98(&qword_1EB09EFD8, type metadata accessor for ActivityRequest);
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1A2C639DC(v9, a2, &unk_1EB0A04F0, &qword_1A2D0AC98);
  sub_1A2C6BD18(a2, v6, &unk_1EB0A04F0, &qword_1A2D0AC98);
  v18 = (*(v17 + 48))(v6, 1, v13) != 1;
  sub_1A2C54E38(v6, &unk_1EB0A04F0, &qword_1A2D0AC98);
  return v18;
}

BOOL sub_1A2D0469C(uint64_t a1, uint64_t *a2)
{
  v3 = a2[4];
  v4 = a2[5];
  v5 = a2[6];
  sub_1A2CFA650(*a2, a2[1], a2[2], a2[3]);
  v6 = sub_1A2D07E84();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v9 = sub_1A2D07F44();
  v11 = v10;
  sub_1A2CBBB98();
  sub_1A2D07E64();

  sub_1A2C55840(v9, v11);
  *a2 = v13;
  *(a2 + 1) = v14;
  *(a2 + 3) = v15;
  *(a2 + 5) = v16;
  return v14 != 1;
}

BOOL sub_1A2D047B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0790, &unk_1A2D0D270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8];
  sub_1A2C54E38(a2, &qword_1EB0A0790, &unk_1A2D0D270);
  v10 = sub_1A2D07E84();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v13 = type metadata accessor for AlertPayload();
  v14 = sub_1A2D07F44();
  v16 = v15;
  sub_1A2C60E98(&qword_1EB09EFA0, type metadata accessor for AlertPayload);
  sub_1A2D07E64();

  sub_1A2C55840(v14, v16);
  v17 = *(v13 - 8);
  (*(v17 + 56))(v9, 0, 1, v13);
  sub_1A2C639DC(v9, a2, &qword_1EB0A0790, &unk_1A2D0D270);
  sub_1A2C6BD18(a2, v6, &qword_1EB0A0790, &unk_1A2D0D270);
  v18 = (*(v17 + 48))(v6, 1, v13) != 1;
  sub_1A2C54E38(v6, &qword_1EB0A0790, &unk_1A2D0D270);
  return v18;
}

uint64_t ActivityDescriptor.acActivityDescriptor.getter()
{
  v1 = type metadata accessor for ActivityDescriptor();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A2C569A0(0, &qword_1ED7088D8, off_1E76B6500);
  sub_1A2C789A4(v0, v4);
  return ACActivityDescriptor.init(descriptor:)(v4);
}

uint64_t static DeviceIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_1A2D08B34();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_1A2D04ACC(uint64_t a1)
{
  v2 = sub_1A2C73E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D04B08(uint64_t a1)
{
  v2 = sub_1A2C73E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D04B44(uint64_t a1)
{
  v2 = sub_1A2C73EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D04B80(uint64_t a1)
{
  v2 = sub_1A2C73EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D04BBC(uint64_t a1)
{
  v2 = sub_1A2D06AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D04BF8(uint64_t a1)
{
  v2 = sub_1A2D06AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityDescriptor.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ActivityDescriptor.attributesType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ActivityDescriptor.attributesData.getter()
{
  v1 = *(v0 + 32);
  sub_1A2C5E63C(v1, *(v0 + 40));
  return v1;
}

uint64_t ActivityDescriptor.presentationOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 112);
  v6 = *(v1 + 128);
  v2 = v6;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_1A2C66F58(&v5, v4);
}

uint64_t ActivityDescriptor.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityDescriptor() + 60);
  v4 = sub_1A2D07F94();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityDescriptor.deviceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ActivityDescriptor() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ActivityDescriptor.localizedAppName.getter()
{
  v1 = (v0 + *(type metadata accessor for ActivityDescriptor() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ActivityDescriptor.createdBySessionRequest.getter()
{
  if (*(v0 + 16) == 0x7474417972746E45 && *(v0 + 24) == 0xEF73657475626972)
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

uint64_t ActivityDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A2D08484();
}

uint64_t ActivityDescriptor.hashValue.getter()
{
  sub_1A2D08C14();
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2D04ED8()
{
  sub_1A2D08C14();
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2D04F1C()
{
  sub_1A2D08C14();
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:createdDate:deviceIdentifier:localizedAppName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v33 = a3[1];
  v34 = *a3;
  v18 = *a6;
  v19 = a6[1];
  v21 = a6[2];
  v20 = a6[3];
  v22 = a6[4];
  v23 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  *(inited + 56) = v21;
  *(inited + 64) = v20;
  *(inited + 72) = v22;
  *(inited + 80) = v23;
  sub_1A2C72A00();
  v25 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v26 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v34;
  *(a9 + 24) = v33;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v25;
  *(a9 + 96) = v26;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v27 = type metadata accessor for ActivityDescriptor();
  v28 = v27[15];
  v29 = sub_1A2D07F94();
  result = (*(*(v29 - 8) + 32))(a9 + v28, a12, v29);
  v31 = (a9 + v27[16]);
  *v31 = a13;
  v31[1] = a14;
  v32 = (a9 + v27[17]);
  *v32 = a15;
  v32[1] = a16;
  *(a9 + v27[18]) = 4;
  *(a9 + 48) = v18;
  *(a9 + 56) = v19;
  *(a9 + 64) = v21 & 1;
  *(a9 + 65) = BYTE1(v21) & 1;
  *(a9 + 66) = BYTE2(v21) & 1;
  *(a9 + 67) = BYTE3(v21) & 1;
  *(a9 + 72) = v20;
  *(a9 + 80) = v22;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:createdDate:deviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a3[1];
  v31 = *a3;
  v15 = *a6;
  v16 = a6[1];
  v18 = a6[2];
  v17 = a6[3];
  v19 = a6[4];
  v20 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v15;
  *(inited + 48) = v16;
  *(inited + 56) = v18;
  *(inited + 64) = v17;
  *(inited + 72) = v19;
  *(inited + 80) = v20;
  sub_1A2C72A00();
  v22 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v23 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v31;
  *(a9 + 24) = v30;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v22;
  *(a9 + 96) = v23;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = 0;
  v24 = type metadata accessor for ActivityDescriptor();
  v25 = v24[15];
  v26 = sub_1A2D07F94();
  result = (*(*(v26 - 8) + 32))(a9 + v25, a11, v26);
  v28 = (a9 + v24[16]);
  *v28 = a12;
  v28[1] = a13;
  v29 = (a9 + v24[17]);
  *v29 = 0;
  v29[1] = 0;
  *(a9 + v24[18]) = 4;
  *(a9 + 48) = v15;
  *(a9 + 56) = v16;
  *(a9 + 64) = v18 & 1;
  *(a9 + 65) = BYTE1(v18) & 1;
  *(a9 + 66) = BYTE2(v18) & 1;
  *(a9 + 67) = BYTE3(v18) & 1;
  *(a9 + 72) = v17;
  *(a9 + 80) = v19;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v28 = a3[1];
  v29 = *a3;
  v13 = *a6;
  v14 = a6[1];
  v16 = a6[2];
  v15 = a6[3];
  v17 = a6[4];
  v18 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v13;
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 64) = v15;
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  sub_1A2C72A00();
  v20 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v21 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v29;
  *(a9 + 24) = v28;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v20;
  *(a9 + 96) = v21;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = 0;
  v22 = type metadata accessor for ActivityDescriptor();
  v23 = v22[15];
  v24 = sub_1A2D07F94();
  result = (*(*(v24 - 8) + 32))(a9 + v23, a11, v24);
  v26 = (a9 + v22[16]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (a9 + v22[17]);
  *v27 = 0;
  v27[1] = 0;
  *(a9 + v22[18]) = 4;
  *(a9 + 48) = v13;
  *(a9 + 56) = v14;
  *(a9 + 64) = v16 & 1;
  *(a9 + 65) = BYTE1(v16) & 1;
  *(a9 + 66) = BYTE2(v16) & 1;
  *(a9 + 67) = BYTE3(v16) & 1;
  *(a9 + 72) = v15;
  *(a9 + 80) = v17;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:createdDate:deviceIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a3[1];
  v32 = *a3;
  v16 = *a6;
  v17 = a6[1];
  v19 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v21 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  *(inited + 80) = v21;
  sub_1A2C72A00();
  v23 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v24 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v32;
  *(a9 + 24) = v31;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v23;
  *(a9 + 96) = v24;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v25 = type metadata accessor for ActivityDescriptor();
  v26 = v25[15];
  v27 = sub_1A2D07F94();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a12, v27);
  v29 = (a9 + v25[16]);
  *v29 = a13;
  v29[1] = a14;
  v30 = (a9 + v25[17]);
  *v30 = 0;
  v30[1] = 0;
  *(a9 + v25[18]) = 4;
  *(a9 + 48) = v16;
  *(a9 + 56) = v17;
  *(a9 + 64) = v19 & 1;
  *(a9 + 65) = BYTE1(v19) & 1;
  *(a9 + 66) = BYTE2(v19) & 1;
  *(a9 + 67) = BYTE3(v19) & 1;
  *(a9 + 72) = v18;
  *(a9 + 80) = v20;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12)
{
  v29 = a3[1];
  v30 = *a3;
  v14 = *a6;
  v15 = a6[1];
  v17 = a6[2];
  v16 = a6[3];
  v18 = a6[4];
  v19 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 56) = v17;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  sub_1A2C72A00();
  v21 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v22 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v30;
  *(a9 + 24) = v29;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v21;
  *(a9 + 96) = v22;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v23 = type metadata accessor for ActivityDescriptor();
  v24 = v23[15];
  v25 = sub_1A2D07F94();
  result = (*(*(v25 - 8) + 32))(a9 + v24, a12, v25);
  v27 = (a9 + v23[16]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (a9 + v23[17]);
  *v28 = 0;
  v28[1] = 0;
  *(a9 + v23[18]) = 4;
  *(a9 + 48) = v14;
  *(a9 + 56) = v15;
  *(a9 + 64) = v17 & 1;
  *(a9 + 65) = BYTE1(v17) & 1;
  *(a9 + 66) = BYTE2(v17) & 1;
  *(a9 + 67) = BYTE3(v17) & 1;
  *(a9 + 72) = v16;
  *(a9 + 80) = v18;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:createdDate:deviceIdentifier:protectionClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a3[1];
  v32 = *a3;
  v16 = *a6;
  v17 = a6[1];
  v19 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v21 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  *(inited + 80) = v21;
  sub_1A2C72A00();
  v23 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v24 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v32;
  *(a9 + 24) = v31;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v23;
  *(a9 + 96) = v24;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v25 = type metadata accessor for ActivityDescriptor();
  v26 = v25[15];
  v27 = sub_1A2D07F94();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a12, v27);
  v29 = (a9 + v25[16]);
  *v29 = a13;
  v29[1] = a14;
  v30 = (a9 + v25[17]);
  *v30 = 0;
  v30[1] = 0;
  *(a9 + v25[18]) = 4;
  *(a9 + 48) = v16;
  *(a9 + 56) = v17;
  *(a9 + 64) = v19 & 1;
  *(a9 + 65) = BYTE1(v19) & 1;
  *(a9 + 66) = BYTE2(v19) & 1;
  *(a9 + 67) = BYTE3(v19) & 1;
  *(a9 + 72) = v18;
  *(a9 + 80) = v20;
  return result;
}

uint64_t ActivityDescriptor.init(id:attributesType:attributesData:platterTarget:presentationOptions:contentSources:isEphemeral:isMomentary:isImportant:createdDate:deviceIdentifier:protectionClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v31 = a3[1];
  v32 = *a3;
  v16 = *a6;
  v17 = a6[1];
  v19 = a6[2];
  v18 = a6[3];
  v20 = a6[4];
  v21 = *(a6 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0720, &unk_1A2D17D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = 0;
  *(inited + 40) = v16;
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  *(inited + 80) = v21;
  sub_1A2C72A00();
  v23 = sub_1A2CAA8B0(inited);
  swift_setDeallocating();
  sub_1A2C54E38(inited + 32, &qword_1EB0A0728, &qword_1A2D0BB50);
  v24 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v32;
  *(a9 + 24) = v31;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = v23;
  *(a9 + 96) = v24;
  *(a9 + 112) = *a7;
  *(a9 + 128) = *(a7 + 16);
  *(a9 + 104) = a8;
  *(a9 + 136) = a10;
  *(a9 + 137) = a11;
  v25 = type metadata accessor for ActivityDescriptor();
  v26 = v25[15];
  v27 = sub_1A2D07F94();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a12, v27);
  v29 = (a9 + v25[16]);
  *v29 = a13;
  v29[1] = a14;
  v30 = (a9 + v25[17]);
  *v30 = 0;
  v30[1] = 0;
  *(a9 + v25[18]) = 4;
  *(a9 + 48) = v16;
  *(a9 + 56) = v17;
  *(a9 + 64) = v19 & 1;
  *(a9 + 65) = BYTE1(v19) & 1;
  *(a9 + 66) = BYTE2(v19) & 1;
  *(a9 + 67) = BYTE3(v19) & 1;
  *(a9 + 72) = v18;
  *(a9 + 80) = v20;
  return result;
}

__n128 ActivityDescriptor.init(id:attributesType:attributesData:sceneTargets:requester:presentationOptions:contentSources:isEphemeral:isMomentary:isImportant:createdDate:deviceIdentifier:protectionClass:localizedAppName:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19)
{
  v25 = *a3;
  v24 = a3[1];
  v26 = sub_1A2CAA8B0(MEMORY[0x1E69E7CC0]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v25;
  *(a9 + 24) = v24;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 88) = a6;
  *(a9 + 96) = v26;
  *(a9 + 112) = *a8;
  *(a9 + 128) = *(a8 + 16);
  *(a9 + 104) = a10;
  *(a9 + 136) = a11;
  *(a9 + 137) = a12;
  *(a9 + 138) = a13;
  v27 = type metadata accessor for ActivityDescriptor();
  v28 = v27[15];
  v29 = sub_1A2D07F94();
  (*(*(v29 - 8) + 32))(a9 + v28, a14, v29);
  v30 = (a9 + v27[16]);
  *v30 = a15;
  v30[1] = a16;
  v31 = (a9 + v27[17]);
  *v31 = a18;
  v31[1] = a19;
  *(a9 + v27[18]) = a17;
  *(a9 + 80) = *(a7 + 32);
  result = *(a7 + 16);
  *(a9 + 48) = *a7;
  *(a9 + 64) = result;
  return result;
}

uint64_t sub_1A2D05F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2D073D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2D05FA4(uint64_t a1)
{
  v2 = sub_1A2C6FCAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D05FE0(uint64_t a1)
{
  v2 = sub_1A2C6FCAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2D0601C()
{
  v0 = sub_1A2D07EB4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C60E98(&qword_1ED708D60, type metadata accessor for ActivityDescriptor);
  v3 = sub_1A2D07E94();
  v5 = v4;
  v6 = sub_1A2D07F24();
  sub_1A2C55840(v3, v5);

  return v6;
}

uint64_t sub_1A2D06104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_1A2D07E84();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v12 = sub_1A2D07F44();
  v14 = v13;
  sub_1A2C60E98(&qword_1ED709430, type metadata accessor for ActivityDescriptor);
  sub_1A2D07E64();
  sub_1A2C54E38(a2, &qword_1EB0A0210, &unk_1A2D0ACA0);
  sub_1A2C55840(v12, v14);

  (*(*(a3 - 8) + 56))(v8, 0, 1, a3);
  return sub_1A2C639DC(v8, a2, &qword_1EB0A0210, &unk_1A2D0ACA0);
}

uint64_t sub_1A2D06300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2D0638C(uint64_t a1)
{
  v2 = sub_1A2D06BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2D063C8(uint64_t a1)
{
  v2 = sub_1A2D06BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCCodableActivityDescriptors.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F88, &unk_1A2D17DC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2D06BDC();

  sub_1A2D08C74();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
  sub_1A2D06C30(&qword_1EB09EB28, &qword_1ED708D60);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v7, v3);
}

uint64_t XPCCodableActivityDescriptors.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1F90, &qword_1A2D17DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2D06BDC();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0158, &qword_1A2D0A860);
    sub_1A2D06C30(&qword_1EB09EB18, &qword_1ED709430);
    sub_1A2D08A54();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1A2D06798()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2D06DF8();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t sub_1A2D06894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09A8, &unk_1A2D0D150);
    v2 = sub_1A2D08984();
    v20 = v2;
    sub_1A2D08914();
    v3 = sub_1A2D08934();
    if (v3)
    {
      v4 = v3;
      sub_1A2C569A0(0, &qword_1ED7088C8, off_1E76B6508);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1A2C569A0(0, &unk_1EB09F4F0, 0x1E696AD98);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1A2C82FF4(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1A2D087B4();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1A2D08934();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t sub_1A2D06AE0()
{
  result = qword_1EB0A1F68;
  if (!qword_1EB0A1F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F68);
  }

  return result;
}

unint64_t sub_1A2D06B34()
{
  result = qword_1ED708DF0[0];
  if (!qword_1ED708DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED708DF0);
  }

  return result;
}

unint64_t sub_1A2D06B88()
{
  result = qword_1ED7094E0;
  if (!qword_1ED7094E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7094E0);
  }

  return result;
}

unint64_t sub_1A2D06BDC()
{
  result = qword_1EB09F290;
  if (!qword_1EB09F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F290);
  }

  return result;
}

uint64_t sub_1A2D06C30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0158, &qword_1A2D0A860);
    sub_1A2C60E98(a2, type metadata accessor for ActivityDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2D06D14(void *a1)
{
  a1[1] = sub_1A2C60E98(&qword_1ED709430, type metadata accessor for ActivityDescriptor);
  a1[2] = sub_1A2C60E98(&qword_1ED708D60, type metadata accessor for ActivityDescriptor);
  result = sub_1A2C60E98(&qword_1ED708958, type metadata accessor for ActivityDescriptor);
  a1[3] = result;
  return result;
}

unint64_t sub_1A2D06DC0(void *a1)
{
  a1[1] = sub_1A2CA0420();
  a1[2] = sub_1A2D06DF8();
  result = sub_1A2D06E4C();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2D06DF8()
{
  result = qword_1EB09EE70;
  if (!qword_1EB09EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EE70);
  }

  return result;
}

unint64_t sub_1A2D06E4C()
{
  result = qword_1EB09EE68;
  if (!qword_1EB09EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EE68);
  }

  return result;
}

unint64_t sub_1A2D06F04()
{
  result = qword_1EB0A1F98;
  if (!qword_1EB0A1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1F98);
  }

  return result;
}

unint64_t sub_1A2D06F5C()
{
  result = qword_1EB0A1FA0;
  if (!qword_1EB0A1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1FA0);
  }

  return result;
}

unint64_t sub_1A2D06FB4()
{
  result = qword_1EB0A1FA8;
  if (!qword_1EB0A1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1FA8);
  }

  return result;
}

unint64_t sub_1A2D0700C()
{
  result = qword_1EB0A1FB0;
  if (!qword_1EB0A1FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1FB0);
  }

  return result;
}

unint64_t sub_1A2D07064()
{
  result = qword_1EB09F280;
  if (!qword_1EB09F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F280);
  }

  return result;
}

unint64_t sub_1A2D070BC()
{
  result = qword_1EB09F288;
  if (!qword_1EB09F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F288);
  }

  return result;
}

unint64_t sub_1A2D07114()
{
  result = qword_1ED7097B8;
  if (!qword_1ED7097B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097B8);
  }

  return result;
}

unint64_t sub_1A2D0716C()
{
  result = qword_1ED7097C0;
  if (!qword_1ED7097C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097C0);
  }

  return result;
}

unint64_t sub_1A2D071C4()
{
  result = qword_1ED709540;
  if (!qword_1ED709540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709540);
  }

  return result;
}

unint64_t sub_1A2D0721C()
{
  result = qword_1ED709548;
  if (!qword_1ED709548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709548);
  }

  return result;
}

unint64_t sub_1A2D07274()
{
  result = qword_1ED709530;
  if (!qword_1ED709530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709530);
  }

  return result;
}

unint64_t sub_1A2D072CC()
{
  result = qword_1ED709538;
  if (!qword_1ED709538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709538);
  }

  return result;
}

unint64_t sub_1A2D07324()
{
  result = qword_1ED709558;
  if (!qword_1ED709558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709558);
  }

  return result;
}

unint64_t sub_1A2D0737C()
{
  result = qword_1ED709560;
  if (!qword_1ED709560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709560);
  }

  return result;
}

uint64_t sub_1A2D073D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00657079547365 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00617461447365 || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5472657474616C70 && a2 == 0xED00007465677261 || (sub_1A2D08B34() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000072 || (sub_1A2D08B34() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726154656E656373 && a2 == 0xEC00000073746567 || (sub_1A2D08B34() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2D1B060 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x53746E65746E6F63 && a2 == 0xEE0073656372756FLL || (sub_1A2D08B34() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A2D1B020 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656D656870457369 && a2 == 0xEB000000006C6172 || (sub_1A2D08B34() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E656D6F4D7369 && a2 == 0xEB00000000797261 || (sub_1A2D08B34() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74726F706D497369 && a2 == 0xEB00000000746E61 || (sub_1A2D08B34() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_1A2D08B34() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D19700 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A2D1B580 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x69746365746F7270 && a2 == 0xEF7373616C436E6FLL)
  {

    return 15;
  }

  else
  {
    v6 = sub_1A2D08B34();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t static OpaqueObjectiveCBridgable<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A2D087E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = sub_1A2D07E84();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v15 = sub_1A2D07F44();
  v17 = v16;
  v18 = *(a4 + 8);
  sub_1A2D07E64();
  (*(v8 + 8))(a2, v7);
  sub_1A2C55840(v15, v17);

  (*(*(a3 - 8) + 56))(v11, 0, 1, a3);
  return (*(v8 + 32))(a2, v11, v7);
}

BOOL static OpaqueObjectiveCBridgable<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A2D087E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v28 = *(v8 + 8);
  v29 = a2;
  v28(a2, v7, v13);
  v16 = sub_1A2D07E84();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v19 = sub_1A2D07F44();
  v21 = v20;
  v22 = *(a4 + 8);
  sub_1A2D07E64();

  sub_1A2C55840(v19, v21);
  v23 = *(a3 - 8);
  (*(v23 + 56))(v15, 0, 1, a3);
  v24 = v29;
  (*(v8 + 32))(v29, v15, v7);
  (*(v8 + 16))(v11, v24, v7);
  v25 = (*(v23 + 48))(v11, 1, a3) != 1;
  (v28)(v11, v7);
  return v25;
}
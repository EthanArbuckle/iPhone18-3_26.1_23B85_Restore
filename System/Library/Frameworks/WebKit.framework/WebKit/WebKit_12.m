id sub_19D626800()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178B0);
  v2 = *v0;
  v3 = sub_19E6CD828();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

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

void *sub_19D626960(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = v29 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v7 = *v3;
  v8 = sub_19E6CD828();
  v9 = v8;
  if (*(v7 + 16))
  {
    v29[0] = v5;
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v32 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v29[1] = v33 + 32;
    v29[2] = v33 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = *(*(v7 + 48) + 8 * v22);
        v24 = v33;
        v25 = *(v33 + 72) * v22;
        v27 = v30;
        v26 = v31;
        (*(v33 + 16))(v30, *(v7 + 56) + v25, v31);
        v28 = v32;
        *(*(v32 + 48) + 8 * v22) = v23;
        result = (*(v24 + 32))(*(v28 + 56) + v25, v27, v26);
        v17 = v34;
      }

      while (v34);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v29[0];
        v9 = v32;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v34 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

uint64_t sub_19D626BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v6 = sub_19E6CCEC8();
  swift_unownedRetainStrong();
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
  if (v6)
  {
    sub_19E6CCFB8();
  }

  else
  {
    sub_19E6CCFA8();
  }
}

unint64_t sub_19D626CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178B0);
    v3 = sub_19E6CD858();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_19D6245B4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19D626DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017860);
    v7 = sub_19E6CD858();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_19D6283C4(v9, v5, &qword_1EB0178F0);
      v11 = *v5;
      result = sub_19D6246C8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19D626FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017858);
    v7 = sub_19E6CD858();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_19D6283C4(v9, v5, &qword_1EB0178E8);
      v11 = *v5;
      result = sub_19D6246C8(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E8);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19D627188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0178C0);
    v7 = sub_19E6CD858();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_19D6283C4(v9, v5, &qword_1EB0178E0);
      result = sub_19D624630(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_19E6CCF78();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0177E0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19D627430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_19D6275CC(void *a1)
{
  v2 = sub_19E6CCD58();
  v3 = [a1 loadRequest_];

  return v3;
}

id sub_19D627620(void *a1)
{
  v2 = sub_19E6CCF38();
  v3 = sub_19E6CD4C8();
  v4 = sub_19E6CD4C8();
  v5 = sub_19E6CCEF8();
  v6 = [a1 loadData:v2 MIMEType:v3 characterEncodingName:v4 baseURL:v5];

  return v6;
}

id sub_19D6276D8(void *a1)
{
  v2 = sub_19E6CD4C8();
  v3 = sub_19E6CCEF8();
  v4 = [a1 loadHTMLString:v2 baseURL:v3];

  return v4;
}

id sub_19D627748(void *a1)
{
  v3 = *(v1 + 24);
  v4 = sub_19E6CCD58();
  v5 = sub_19E6CCF38();
  v6 = [a1 loadSimulatedRequest:v4 response:v3 responseData:v5];

  return v6;
}

id sub_19D6277D0(void *a1)
{
  v2 = sub_19E6CCD58();
  v3 = sub_19E6CD4C8();
  v4 = [a1 loadSimulatedRequest:v2 responseHTMLString:v3];

  return v4;
}

id sub_19D62784C(void *a1)
{
  v2 = [a1 goToBackForwardListItem_];

  return v2;
}

unint64_t sub_19D627930()
{
  result = qword_1EB017818;
  if (!qword_1EB017818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017818);
  }

  return result;
}

unint64_t sub_19D627988()
{
  result = qword_1EB017820;
  if (!qword_1EB017820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017820);
  }

  return result;
}

uint64_t sub_19D6279E4()
{
  result = sub_19E6CCFD8();
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

unint64_t sub_19D627AF8()
{
  result = qword_1EB017828;
  if (!qword_1EB017828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0177E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017828);
  }

  return result;
}

void *sub_19D627B68(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_19D627BF0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017868) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_19D613F20;

  return sub_19D623AA0(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_19D627D0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D614B3C;

  return sub_19D6243C4(a1, v4);
}

uint64_t sub_19D627DC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D613F20;

  return sub_19D6243C4(a1, v4);
}

unint64_t sub_19D627E7C()
{
  result = qword_1EB017870;
  if (!qword_1EB017870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017870);
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_19D627F10()
{
  result = qword_1EB017878;
  if (!qword_1EB017878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB017878);
  }

  return result;
}

uint64_t sub_19D627F5C()
{
  sub_19E6CCFD8();
  sub_19E6CCED8();
  v0 = sub_19E6CCEC8();
  swift_unownedRetainStrong();
  sub_19D6282A4(&qword_1EB0177C0, type metadata accessor for WebPage);
  if (v0)
  {
    sub_19E6CCFB8();
  }

  else
  {
    sub_19E6CCFA8();
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_19E6CCFD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_19D62817C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *(sub_19E6CCFD8() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_19D626BC0(a1, a2, v3 + v8, *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t sub_19D628240()
{
  v1 = *(sub_19E6CCF78() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_19D622840(v2, v3);
}

uint64_t sub_19D6282A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19D6282EC()
{
  v2 = *(sub_19E6CCF78() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19D614B3C;

  return sub_19D622A6C(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_19D6283C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19D62847C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_19D6284D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t WebPageWebView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*WebPageWebView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_19D628698;
}

void sub_19D628698(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_19D628B60(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = a1[3];
    v9[2] = a1[2];
    v9[3] = v7;
    v9[4] = a1[4];
    v8 = a1[1];
    v9[0] = *a1;
    v9[1] = v8;
    (*(v5 + 32))(v9, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

id WebPageWebView.__allocating_init(frame:configuration:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 configuration:{a2, a3, a4, a5}];

  return v7;
}

id WebPageWebView.init(frame:configuration:)(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_configuration_, a1, a2, a3, a4, a5);

  return v12;
}

id WebPageWebView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id WebPageWebView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC6WebKit14WebPageWebView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id WebPageWebView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*WebPageWebView.alwaysBounceVertical.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = [v1 scrollView];
  v4 = [v3 alwaysBounceVertical];

  *(a1 + 8) = v4;
  return sub_19D629114;
}

void (*WebPageWebView.alwaysBounceHorizontal.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = [v1 scrollView];
  v4 = [v3 alwaysBounceHorizontal];

  *(a1 + 8) = v4;
  return sub_19D6291CC;
}

void (*WebPageWebView.bouncesVertically.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = [v1 scrollView];
  v4 = [v3 bouncesVertically];

  *(a1 + 8) = v4;
  return sub_19D629284;
}

id sub_19D62929C(SEL *a1)
{
  v3 = [v1 scrollView];
  v4 = [v3 *a1];

  return v4;
}

void sub_19D6292F8(id *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = [*a1 scrollView];
  LOBYTE(a2) = [v5 *a2];

  *a3 = a2;
}

void sub_19D629360(unsigned __int8 *a1, id *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = [*a2 scrollView];
  [v7 *a5];
}

void sub_19D6293D4(char a1, SEL *a2)
{
  v5 = [v2 scrollView];
  [v5 *a2];
}

void (*WebPageWebView.bouncesHorizontally.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = [v1 scrollView];
  v4 = [v3 bouncesHorizontally];

  *(a1 + 8) = v4;
  return sub_19D6294C0;
}

void sub_19D6294CC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a1 + 8);
  v5 = [*a1 scrollView];
  [v5 *a3];
}

id sub_19D62955C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 _allowsMagnification];
  *a2 = result;
  return result;
}

id (*WebPageWebView.allowsMagnification.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 _allowsMagnification];
  return sub_19D62960C;
}

Swift::Void __swiftcall WebPageWebView.setContentOffset(x:y:animated:)(Swift::Double_optional x, Swift::Double_optional y, Swift::Bool animated)
{
  v6 = v4;
  v7 = v3;
  v8 = *&animated;
  is_nil = y.is_nil;
  v10 = *&x.is_nil;
  v11 = [v5 scrollView];
  [v11 contentOffset];
  v13 = v12;
  v15 = v14;

  if (!is_nil)
  {
    v13 = v10;
  }

  if ((v7 & 1) == 0)
  {
    v15 = v8;
  }

  v16 = [v5 scrollView];
  [v16 setContentOffset:v6 & 1 animated:{v13, v15}];
}

Swift::Void __swiftcall WebPageWebView.scrollTo(edge:animated:)(NSDirectionalRectEdge edge, Swift::Bool animated)
{
  v4 = sub_19D60CC38(edge);

  [v2 _scrollToEdge_animated_];
}

uint64_t sub_19D6298A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WKContextMenuElementInfoAdapter()
{
  result = qword_1EB01CA70;
  if (!qword_1EB01CA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19D629988()
{
  sub_19D6299F4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_19D6299F4()
{
  if (!qword_1EB017900)
  {
    sub_19E6CCF28();
    v0 = sub_19E6CD6C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB017900);
    }
  }
}

void sub_19D629BF0()
{
  sub_19D62BE50();
  sub_19E6CD328();
  __break(1u);
}

uint64_t sub_19D629C18(void **a1)
{
  v1 = *a1;
  sub_19D611980(0, &qword_1EB017928);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_19E6CD1E8();
}

id sub_19D629CA8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_19D629CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      v10 = sub_19E6CD438();
      v11 = *(v10 - 8);
      MEMORY[0x1EEE9AC00](v10);
      v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_19E6CD408();
      sub_19E6CD448();
      (*(v11 + 8))(v13, v10);
LABEL_12:
      v21 = sub_19E6CD458();
      return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v3 = sub_19E6CD438();
        v4 = *(v3 - 8);
        v14 = MEMORY[0x1EEE9AC00](v3);
        v7 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1EEE9AC00](v14);
        v9 = &v25 - v16;
        sub_19E6CD408();
        goto LABEL_9;
      case 3:
        v3 = sub_19E6CD438();
        v4 = *(v3 - 8);
        v17 = MEMORY[0x1EEE9AC00](v3);
        v7 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1EEE9AC00](v17);
        v9 = &v25 - v19;
        sub_19E6CD408();
        sub_19E6CD418();
        goto LABEL_11;
      case 4:
        v3 = sub_19E6CD438();
        v4 = *(v3 - 8);
        v5 = MEMORY[0x1EEE9AC00](v3);
        v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1EEE9AC00](v5);
        v9 = &v25 - v8;
        sub_19E6CD428();
LABEL_9:
        sub_19E6CD3F8();
LABEL_11:
        v20 = *(v4 + 8);
        v20(v9, v3);
        sub_19E6CD448();
        v20(v7, v3);
        goto LABEL_12;
    }
  }

  v23 = sub_19E6CD458();
  v24 = *(*(v23 - 8) + 56);

  return v24(a2, 1, 1, v23);
}

uint64_t sub_19D62A0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  KeyPath = v65 - v7;
  v8 = swift_checkMetadataState();
  v74 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v65 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = *(v5 + 32);
  v77 = v65 - v16;
  v15(v3, v6, v5);
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB017930);
  v17 = sub_19E6CD378();
  v78 = *(v17 - 8);
  v79 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v76 = v65 - v18;
  v19 = sub_19E6CD458();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017938);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v65 - v24;
  v75 = a1;
  v26 = *(a1 + 36);
  v27 = v3;
  sub_19D629CB4(*(v3 + v26), v25);
  v28 = v19;
  if ((*(v20 + 48))(v25, 1, v19) == 1)
  {
    sub_19D60D358(v25, &qword_1EB017938);
    v29 = v74;
    v30 = *(v74 + 16);
    v31 = v77;
    v30(v14, v77, v8);
    v30(v11, v14, v8);
    sub_19D62BBDC();
    v32 = v76;
    sub_19D62ACB0(v11, v81, v8);
    v33 = *(v29 + 8);
    v33(v11, v8);
    v33(v14, v8);
    v33(v31, v8);
  }

  else
  {
    v70 = v20;
    v34 = *(v20 + 32);
    v35 = v22;
    v66 = v22;
    v69 = v28;
    v36 = v34(v22, v25, v28);
    v71 = v65;
    v37 = MEMORY[0x1EEE9AC00](v36);
    v67 = v65 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = (v65 - v39);
    v41 = sub_19E6CD238();
    v65[1] = v65;
    v42 = MEMORY[0x1EEE9AC00](v41);
    v44 = v65 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = *(v27 + *(v75 + 44));
    v46 = v82;
    v47 = *(v42 + 20);
    v48 = *MEMORY[0x1E697F470];
    v49 = sub_19E6CD288();
    (*(*(v49 - 8) + 104))(&v44[v47], v48, v49);
    *v44 = v45;
    *(v44 + 1) = v45;
    sub_19D62BC7C();
    v50 = v35;
    v51 = v77;
    sub_19D62A8F0(v50, v44, v8, v41, v46);
    sub_19D62BCC8(v44);
    AssociatedTypeWitness = v8;
    AssociatedConformanceWitness = v46;
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = sub_19E6CD3D8();
    KeyPath = swift_getKeyPath();
    v52 = sub_19E6CD1D8();
    v53 = *(v52 - 8);
    MEMORY[0x1EEE9AC00](v52);
    v55 = v65 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (*(v27 + *(v75 + 40)))
    {
      v56 = MEMORY[0x1E697DBB0];
    }

    else
    {
      v56 = MEMORY[0x1E697DBC0];
    }

    (*(v53 + 104))(v55, *v56, v52);
    v57 = v81;
    v58 = v40 + *(v81 + 36);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017950);
    (*(v53 + 32))(&v58[*(v59 + 28)], v55, v52);
    v60 = OpaqueTypeMetadata2;
    *v58 = KeyPath;
    *v40 = v60;
    v61 = v67;
    sub_19D62BD24(v40, v67);
    sub_19D62BBDC();
    v32 = v76;
    sub_19D62ABB8(v61, v57);
    sub_19D60D358(v61, &qword_1EB017930);
    (*(v70 + 8))(v66, v69);
    (*(v74 + 8))(v51, v8);
  }

  v83 = sub_19D62BBDC();
  v84 = v82;
  v62 = v79;
  swift_getWitnessTable();
  v63 = v78;
  (*(v78 + 16))(v80, v32, v62);
  return (*(v63 + 8))(v32, v62);
}

uint64_t sub_19D62A8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[2] = a5;
  v16[0] = a1;
  v16[1] = a3;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19E6CD478();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017960);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19E702290;
  (*(v7 + 16))(v9, a2, a4);
  *(v14 + 32) = sub_19E6CD3E8();
  sub_19E6CD468();
  sub_19E6CD3B8();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_19D62AAF0(uint64_t a1)
{
  v2 = sub_19E6CD1D8();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_19E6CD258();
}

uint64_t sub_19D62ABB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_19E6CD358();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_19E6CD368();
}

uint64_t sub_19D62ACB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19E6CD358();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_19E6CD368();
}

uint64_t sub_19D62ADF8()
{
  v1 = sub_19E6CD4C8();
  v2 = [v0 valueForKeyPath_];

  if (v2)
  {
    sub_19E6CD6D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_19D611980(0, &qword_1EB017928);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_19D60D358(v7, &qword_1EB0175C0);
    return 0;
  }
}

WKMaterialHostingSupport __swiftcall WKMaterialHostingSupport.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_19D62B5C0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v1 = sub_19E6CD278();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = v0;
  sub_19E6CD268();
  v9 = v2;
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017908));
  v4 = sub_19E6CD1F8();
  v5 = v2;
  v6 = v4;
  v7 = sub_19E6CD4C8();
  [v6 setValue:v5 forKeyPath:{v7, v9, 0, 0, 0}];

  return v6;
}

void sub_19D62B734()
{
  swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WKHostedMaterialEffectType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WKHostedMaterialColorScheme(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19D62B7EC(_DWORD *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_25:
    v15 = *(v5 + 48);

    return v15(a1);
  }

  v7 = ((((((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a2 - v6 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v7);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v7);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v6)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v6 + (v8 | v13) + 1;
}

void sub_19D62B954(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = ((((((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v11 = 0;
    v12 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (((((((*(v6 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = a3 - v7 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(a1 + v8) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_30;
        }

        *(a1 + v8) = 0;
      }

      else if (v11)
      {
        *(a1 + v8) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return;
      }

LABEL_30:
      v15 = *(v6 + 56);

      v15(a1, a2);
      return;
    }
  }

  if (((((((*(v6 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((((*(v6 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v7 + a2;
    bzero(a1, v8);
    *a1 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(a1 + v8) = v13;
    }

    else
    {
      *(a1 + v8) = v13;
    }
  }

  else if (v11)
  {
    *(a1 + v8) = v13;
  }
}

unint64_t sub_19D62BBDC()
{
  result = qword_1EB017940;
  if (!qword_1EB017940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB017930);
    sub_19D62BDF8(&qword_1EB017948, &qword_1EB017950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017940);
  }

  return result;
}

unint64_t sub_19D62BC7C()
{
  result = qword_1EB017958;
  if (!qword_1EB017958)
  {
    sub_19E6CD238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017958);
  }

  return result;
}

uint64_t sub_19D62BCC8(uint64_t a1)
{
  v2 = sub_19E6CD238();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19D62BD24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19D62BDA4()
{
  result = qword_1EB01CD18[0];
  if (!qword_1EB01CD18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB01CD18);
  }

  return result;
}

uint64_t sub_19D62BDF8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19D62BE50()
{
  result = qword_1EB01CE20;
  if (!qword_1EB01CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB01CE20);
  }

  return result;
}

id sub_19D62BEA8()
{
  result = [objc_allocWithZone(WKMouseDeviceObserver) init];
  qword_1ED641708 = result;
  return result;
}

uint64_t sub_19D62BFA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + *a4);

  return v6;
}

unint64_t sub_19D62C118(unint64_t result)
{
  v2 = *&v1[OBJC_IVAR___WKMouseDeviceObserver_connectedDeviceCount];
  *&v1[OBJC_IVAR___WKMouseDeviceObserver_connectedDeviceCount] = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    if (v3 || !result && v2 > 0)
    {
      return [v1 mousePointerDevicesDidChange_];
    }
  }

  return result;
}

void sub_19D62C3C0()
{
  if (MEMORY[0x1E696B1D0])
  {
    if (([v0 startCount] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v1 = [v0 startCount];
      if (!__OFADD__(v1, 1))
      {
        [v0 setStartCount_];
        if ([v0 startCount] == 1)
        {
          v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
          v3 = *(*(v2 - 8) + 64);
          MEMORY[0x1EEE9AC00](v2 - 8);
          v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
          v5 = sub_19E6CD5D8();
          v6 = *(*(v5 - 8) + 56);
          v6(&v16 - v4, 1, 1, v5);
          sub_19E6CD5B8();
          v7 = v0;
          v8 = sub_19E6CD5A8();
          v9 = swift_allocObject();
          v10 = MEMORY[0x1E69E85E0];
          v9[2] = v8;
          v9[3] = v10;
          v11 = v10;
          v9[4] = v7;
          *&v7[OBJC_IVAR___WKMouseDeviceObserver_connectionObservationTask] = sub_19D62343C(0, 0, &v16 - v4, &unk_19E702608, v9);

          MEMORY[0x1EEE9AC00](v12);
          v6(&v16 - v4, 1, 1, v5);
          v13 = v7;
          v14 = sub_19E6CD5A8();
          v15 = swift_allocObject();
          v15[2] = v14;
          v15[3] = v11;
          v15[4] = v13;
          *&v13[OBJC_IVAR___WKMouseDeviceObserver_disconnectionObservationTask] = sub_19D62343C(0, 0, &v16 - v4, &unk_19E702618, v15);
        }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_19D62C634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017998);
  v4[9] = swift_task_alloc();
  v5 = sub_19E6CCDA8();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = sub_19E6CD678();
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0179A0);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0179A8);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = sub_19E6CD5B8();
  v4[22] = sub_19E6CD5A8();
  v9 = sub_19E6CD548();
  v4[23] = v9;
  v4[24] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D62C864, v9, v8);
}

uint64_t sub_19D62C864()
{
  v1 = v0[18];
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_19E6CD698();

  v0[6] = v3;
  sub_19E6CD688();
  sub_19D62E364(&qword_1ED63B5A0, MEMORY[0x1E6969F08]);
  sub_19E6CD7B8();
  MEMORY[0x19EAFE420](v1);
  sub_19E6CD608();
  sub_19E6CD788();
  sub_19E6CD798();
  v4 = sub_19E6CD5A8();
  v0[25] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_19E6CD548();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[26] = v5;
  v0[27] = v7;

  return MEMORY[0x1EEE6DFA0](sub_19D62CA44, v5, v7);
}

uint64_t sub_19D62CA44()
{
  v1 = v0[25];
  v0[28] = sub_19E6CD778();
  sub_19D62E364(&unk_1ED63B5A8, MEMORY[0x1E6969EF8]);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_19D62CB4C;
  v3 = v0[9];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_19D62CB4C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_19D62E3B4;
  }

  else
  {
    (*(v2 + 224))();
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_19D62CC74;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19D62CC74()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_19D60D358(v3, &qword_1EB017998);
    v4 = v0[23];
    v5 = v0[24];

    return MEMORY[0x1EEE6DFA0](sub_19D62E3AC, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[12], v3, v1);
    v6 = sub_19E6CD788();
    v0[30] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[31] = v8;
    *v8 = v0;
    v8[1] = sub_19D62CE34;
    v9 = v0[12];

    return (v11)(v0 + 32, v9);
  }
}

uint64_t sub_19D62CE34()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 216);
  v6 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_19D62CFD4, v6, v5);
}

uint64_t sub_19D62CFD4()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19D62D038, v1, v2);
}

uint64_t sub_19D62D038()
{
  v1 = [objc_opt_self() mice];
  sub_19D611980(0, &unk_1EB0179B0);
  v2 = sub_19E6CD538();

  if (v2 >> 62)
  {
    v3 = sub_19E6CD7D8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v0[8];

  [v4 setConnectedDeviceCount_];
  v5 = sub_19E6CD5A8();
  v0[25] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = sub_19E6CD548();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v0[26] = v6;
  v0[27] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D62CA44, v6, v8);
}

uint64_t sub_19D62D174()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D614B3C;

  return sub_19D62C634(v3, v4, v5, v2);
}

uint64_t sub_19D62D208(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19D62E3B0, 0, 0);
}

uint64_t sub_19D62D228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017998);
  v4[9] = swift_task_alloc();
  v5 = sub_19E6CCDA8();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = sub_19E6CD678();
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0179A0);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0179A8);
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = sub_19E6CD5B8();
  v4[22] = sub_19E6CD5A8();
  v9 = sub_19E6CD548();
  v4[23] = v9;
  v4[24] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D62D458, v9, v8);
}

uint64_t sub_19D62D458()
{
  v1 = v0[18];
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_19E6CD698();

  v0[6] = v3;
  sub_19E6CD688();
  sub_19D62E364(&qword_1ED63B5A0, MEMORY[0x1E6969F08]);
  sub_19E6CD7B8();
  MEMORY[0x19EAFE420](v1);
  sub_19E6CD608();
  sub_19E6CD788();
  sub_19E6CD798();
  v4 = sub_19E6CD5A8();
  v0[25] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_19E6CD548();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[26] = v5;
  v0[27] = v7;

  return MEMORY[0x1EEE6DFA0](sub_19D62D638, v5, v7);
}

uint64_t sub_19D62D638()
{
  v1 = v0[25];
  v0[28] = sub_19E6CD778();
  sub_19D62E364(&unk_1ED63B5A8, MEMORY[0x1E6969EF8]);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_19D62D740;
  v3 = v0[9];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

uint64_t sub_19D62D740()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_19D62DA28;
  }

  else
  {
    (*(v2 + 224))();
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_19D62D868;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19D62D868()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_19D60D358(v3, &qword_1EB017998);
    v4 = v0[23];
    v5 = v0[24];

    return MEMORY[0x1EEE6DFA0](sub_19D62DD80, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[12], v3, v1);
    v6 = sub_19E6CD788();
    v0[30] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[31] = v8;
    *v8 = v0;
    v8[1] = sub_19D62DA40;
    v9 = v0[12];

    return (v11)(v0 + 32, v9);
  }
}

uint64_t sub_19D62DA40()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 216);
  v6 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_19D62DBE0, v6, v5);
}

uint64_t sub_19D62DBE0()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_19D62DC44, v1, v2);
}

uint64_t sub_19D62DC44()
{
  v1 = [objc_opt_self() mice];
  sub_19D611980(0, &unk_1EB0179B0);
  v2 = sub_19E6CD538();

  if (v2 >> 62)
  {
    v3 = sub_19E6CD7D8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v0[8];

  [v4 setConnectedDeviceCount_];
  v5 = sub_19E6CD5A8();
  v0[25] = v5;
  if (v5)
  {
    swift_getObjectType();
    v6 = sub_19E6CD548();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v0[26] = v6;
  v0[27] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D62D638, v6, v8);
}

uint64_t sub_19D62DD80()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19D62DEB0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D613F20;

  return sub_19D62D228(v3, v4, v5, v2);
}

uint64_t sub_19D62DF44(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19D62DF64, 0, 0);
}

uint64_t sub_19D62DF64()
{
  sub_19E6CCD98();
  if (v0[5])
  {
    sub_19D611980(0, &unk_1EB0179B0);
    if (swift_dynamicCast())
    {
      v1 = v0[6];
      goto LABEL_6;
    }
  }

  else
  {
    sub_19D60D358((v0 + 2), &qword_1EB0175C0);
  }

  v1 = 0;
LABEL_6:
  v2 = v0[7];
  v3 = v1 != 0;

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_19D62E060()
{
  result = [v0 startCount];
  if (result >= 1)
  {
    result = [v0 startCount];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      [v0 setStartCount_];
      result = [v0 startCount];
      if (!result)
      {
        if (*&v0[OBJC_IVAR___WKMouseDeviceObserver_connectionObservationTask])
        {

          sub_19E6CD5E8();
        }

        if (*&v0[OBJC_IVAR___WKMouseDeviceObserver_disconnectionObservationTask])
        {

          sub_19E6CD5E8();
        }
      }
    }
  }

  return result;
}

void sub_19D62E184(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_19D62E364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19D62E3B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19D612970;

  return WebPage.NavigationDeciding.decidePolicy(for:preferences:)();
}

uint64_t sub_19D62E478()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19D613200;

  return WebPage.NavigationDeciding.decidePolicy(for:)();
}

uint64_t sub_19D62E528()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19D615A70;

  return WebPage.NavigationDeciding.decideAuthenticationChallengeDisposition(for:)();
}

id sub_19D62E60C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  sub_19D6283C4(a1, &v7, &qword_1EB0178D8);
  if (v8)
  {
    sub_19D613184(&v7, &v9);
  }

  else
  {
    v10 = &type metadata for DefaultNavigationDecider;
    v11 = &off_1F10E5800;
  }

  sub_19D613184(&v9, v1 + OBJC_IVAR____TtC6WebKit27WKNavigationDelegateAdapter_navigationDecider);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_19D60D358(a1, &qword_1EB0178D8);
  return v4;
}

void sub_19D62E6EC(unsigned __int8 *a1, void *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = a2;
  LOBYTE(aBlock[0]) = v3;
  LOBYTE(v10) = 3;
  sub_19D614D20();

  v6 = a2;
  if (sub_19E6CD4B8())
  {

    if (swift_weakLoadStrong())
    {
      v7 = WebPage.backingWebView.getter();

      aBlock[4] = sub_19D631AD4;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19D62E914;
      aBlock[3] = &block_descriptor_2;
      v8 = _Block_copy(aBlock);

      [v7 _doAfterNextPresentationUpdate_];

      _Block_release(v8);

      return;
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v10 = v3;
      v11 = 0;
      sub_19D621F80(&v10, a2);
    }
  }
}

uint64_t sub_19D62E914(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_19D62E958(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v6 + 16))(v8, a1, a3);
    v9 = sub_19E6CD868();
    if (v9)
    {
      v10 = v9;
      (*(v6 + 8))(v8, a3);
    }

    else
    {
      v10 = swift_allocError();
      (*(v6 + 32))(v11, v8, a3);
    }

    v13 = v10;
    v14 = 1;
    sub_19D621F80(&v13, a2);

    sub_19D631AB8(v13, v14);
  }
}

void sub_19D62EB24(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unsigned __int8 a6)
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a6;
  v9 = a4;
  v10 = a1;
  sub_19D62E6EC(&v11, a4);
}

uint64_t sub_19D62EFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_19D631BA0;

  return sub_19D630C98(a2, a3);
}

uint64_t sub_19D62F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_19E6CD5B8();
  v5[7] = sub_19E6CD5A8();
  v7 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D62F2F0, v7, v6);
}

uint64_t sub_19D62F2F0()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v0[8] = _Block_copy(v2);
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v1;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_19D62F3DC;
  v12 = v0[3];
  v11 = v0[4];

  return sub_19D630C98(v12, v11);
}

uint64_t sub_19D62F3DC(uint64_t a1, void *a2)
{
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v12 = *v2;

  (v5)[2](v5, a1, a2);
  _Block_release(v5);

  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_19D62F588(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19D613200;

  return (sub_19D6310AC)(a2);
}

uint64_t sub_19D62F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_19E6CD5B8();
  v4[6] = sub_19E6CD5A8();
  v6 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D62F860, v6, v5);
}

uint64_t sub_19D62F860()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_19D62F944;
  v9 = v0[3];

  return sub_19D6310AC(v9);
}

uint64_t sub_19D62F944(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_19D62FAC4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  sub_19E6CD5B8();
  v3[7] = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D62FB5C, v5, v4);
}

uint64_t sub_19D62FB5C()
{
  v1 = v0[6] + OBJC_IVAR____TtC6WebKit27WKNavigationDelegateAdapter_navigationDecider;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_19D62FCAC;
  v5 = v0[5];

  return v7(v5, v2, v3);
}

uint64_t sub_19D62FCAC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;

  swift_endAccess();
  v5 = *(v3 + 72);
  v6 = *(v3 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19D62FDE4, v6, v5);
}

uint64_t sub_19D62FDE4()
{

  v1 = v0[1];
  v2 = v0[11];
  v3 = v0[12];

  return v1(v2, v3);
}

uint64_t sub_19D62FFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v4[8] = sub_19E6CD5B8();
  v4[9] = sub_19E6CD5A8();
  v6 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D630078, v6, v5);
}

uint64_t sub_19D630078()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];

  v0[10] = _Block_copy(v1);
  v4 = v3;
  v5 = v2;
  v0[11] = sub_19E6CD5A8();
  v7 = sub_19E6CD548();
  v0[12] = v7;
  v0[13] = v6;

  return MEMORY[0x1EEE6DFA0](sub_19D63012C, v7, v6);
}

uint64_t sub_19D63012C()
{
  v1 = v0[7] + OBJC_IVAR____TtC6WebKit27WKNavigationDelegateAdapter_navigationDecider;
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_19D63027C;
  v5 = v0[5];

  return v7(v5, v2, v3);
}

uint64_t sub_19D63027C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;

  swift_endAccess();
  v5 = *(v3 + 104);
  v6 = *(v3 + 96);

  return MEMORY[0x1EEE6DFA0](sub_19D6303B4, v6, v5);
}

uint64_t sub_19D6303B4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[5];

  (v3)[2](v3, v1, v2);
  _Block_release(v3);

  v6 = v0[1];

  return v6();
}

id sub_19D6304E8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19D63056C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_19D614B3C;

  return v6();
}

uint64_t sub_19D630654(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_19D613F20;

  return v7();
}

uint64_t sub_19D63073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_19D6283C4(a3, v23 - v10, &unk_1EB017A40);
  v12 = sub_19E6CD5D8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_19D60D358(v11, &unk_1EB017A40);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_19E6CD5C8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_19E6CD548();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_19E6CD508() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_19D60D358(a3, &unk_1EB017A40);

    return v21;
  }

LABEL_8:
  sub_19D60D358(a3, &unk_1EB017A40);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

void sub_19D630A38(void *a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = a2;
    v4 = a2;
    sub_19D627E7C();
    v5 = sub_19E6CD868();
    if (v5)
    {
      v6 = v5;
      sub_19D631AC4(v10);
    }

    else
    {
      v6 = swift_allocError();
      *v7 = v10;
    }

    v8 = v6;
    v9 = 1;
    sub_19D621F80(&v8, a1);

    sub_19D631AB8(v8, v9);
  }
}

void sub_19D630B24()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = 1;
    sub_19D627E7C();
    v0 = sub_19E6CD868();
    if (v0)
    {
      v1 = v0;
      sub_19D631AC4(v5);
    }

    else
    {
      v1 = swift_allocError();
      *v2 = v5;
    }

    v3 = v1;
    v4 = 1;
    sub_19D621F80(&v3, 0);

    sub_19D631AB8(v3, v4);
  }
}

uint64_t sub_19D630C04(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      sub_19D610BA8([a1 backForwardList], &v3);
      sub_19D619800(&v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_19D630C98(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_19E6CD5B8();
  v3[9] = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  v3[10] = v5;
  v3[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D630D34, v5, v4);
}

uint64_t sub_19D630D34()
{
  v11 = v0;
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  sub_19D610BA8(*(v0 + 48), &v10);
  v3 = v10;
  *(v0 + 96) = v10;
  sub_19D615CF4(v2, (v0 + 120));
  *(v0 + 40) = v3;
  v4 = v1 + OBJC_IVAR____TtC6WebKit27WKNavigationDelegateAdapter_navigationDecider;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v9 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v7[1] = sub_19D630EBC;

  return v9(v0 + 40, v0 + 120, v5, v6);
}

uint64_t sub_19D630EBC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  swift_endAccess();
  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x1EEE6DFA0](sub_19D630FF4, v4, v3);
}

uint64_t sub_19D630FF4()
{
  v10 = v0;
  v1 = *(v0 + 96);

  sub_19D611980(0, &qword_1EB017A50);
  v2 = *(v0 + 121);
  v3 = *(v0 + 122);
  v8[0] = *(v0 + 120);
  v8[1] = v2;
  v9 = v3;
  v4 = sub_19D638058(v8);

  v5 = *(v0 + 8);
  v6 = *(v0 + 112);

  return v5(v6, v4);
}

uint64_t sub_19D6310AC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_19E6CD5B8();
  v2[8] = sub_19E6CD5A8();
  v4 = sub_19E6CD548();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_19D631144, v4, v3);
}

uint64_t sub_19D631144()
{
  v10 = v0;
  v1 = *(v0 + 56);
  sub_19D615B78(*(v0 + 48), &v9);
  v2 = v9;
  *(v0 + 88) = v9;
  *(v0 + 40) = v2;
  v3 = v1 + OBJC_IVAR____TtC6WebKit27WKNavigationDelegateAdapter_navigationDecider;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  v8 = (*(v5 + 16) + **(v5 + 16));
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_19D6312B8;

  return v8(v0 + 40, v4, v5);
}

uint64_t sub_19D6312B8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  swift_endAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_19D6313F0, v4, v3);
}

uint64_t sub_19D6313F0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
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

uint64_t sub_19D6314E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_19D614B3C;

  return sub_19D62FFD8(v2, v3, v5, v4);
}

uint64_t sub_19D6315A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19D614B3C;

  return sub_19D63056C(v2, v3, v4);
}

uint64_t sub_19D631664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19D614B3C;

  return sub_19D630654(a1, v4, v5, v6);
}

uint64_t sub_19D631730(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D614B3C;

  return sub_19D6243C4(a1, v4);
}

uint64_t sub_19D6317E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19D613F20;

  return sub_19D6243C4(a1, v4);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19D6318F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_19D614B3C;

  return sub_19D62F7C4(v2, v3, v5, v4);
}

uint64_t sub_19D6319B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_19D613F20;

  return sub_19D62F250(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_19D631AB8(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_19D631AC4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_19D631AD4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v1;
    v5 = 0;
    sub_19D621F80(&v4, v2);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_19D631BC8@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  [a1 containerSize];
  v23 = v5;
  v24 = v4;
  [a1 contentInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a1 contentOffset];
  v15 = v14;
  v17 = v16;
  [a1 contentSize];
  v19 = v18;
  v21 = v20;

  result = v23;
  *a2 = v24;
  a2[1] = v23;
  *(a2 + 2) = v7;
  *(a2 + 3) = v9;
  *(a2 + 4) = v11;
  *(a2 + 5) = v13;
  *(a2 + 6) = v15;
  *(a2 + 7) = v17;
  *(a2 + 8) = v19;
  *(a2 + 9) = v21;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_19D631CAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19D631CCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 80) = v3;
  return result;
}

id sub_19D63237C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();

  v4 = sub_19E6CD528();

  return v4;
}

id sub_19D6326A8()
{

  v0 = sub_19E6CD4C8();

  return v0;
}

id _sSo20WKTextExtractionItemC6WebKitEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_19D632878()
{
}

uint64_t sub_19D632944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19D614B3C;

  return WebPage.DialogPresenting.handleJavaScriptAlert(message:initiatedBy:)();
}

uint64_t sub_19D632A0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D614B3C;

  return WebPage.DialogPresenting.handleJavaScriptConfirm(message:initiatedBy:)(a1);
}

uint64_t sub_19D632AE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D614B3C;

  return WebPage.DialogPresenting.handleJavaScriptPrompt(message:defaultText:initiatedBy:)(a1);
}

uint64_t sub_19D632BDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19D614B3C;

  return WebPage.DialogPresenting.handleFileInputPrompt(parameters:initiatedBy:)(a1);
}

id sub_19D632CDC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  sub_19D6283C4(a1, &v7, &qword_1EB0178D0);
  if (v8)
  {
    sub_19D613184(&v7, &v9);
  }

  else
  {
    v10 = &type metadata for DefaultDialogPresenting;
    v11 = &off_1F10E5BE0;
  }

  sub_19D613184(&v9, v1 + OBJC_IVAR____TtC6WebKit19WKUIDelegateAdapter_dialogPresenter);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_19D60D358(a1, &qword_1EB0178D0);
  return v4;
}

uint64_t sub_19D632DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_19D613F20;

  return (sub_19D63501C)(a2, a3, a4);
}

uint64_t sub_19D633024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_19E6CD5B8();
  v5[7] = sub_19E6CD5A8();
  v7 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D6330C4, v7, v6);
}

uint64_t sub_19D6330C4()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];

  v0[8] = _Block_copy(v2);
  v5 = sub_19E6CD4E8();
  v7 = v6;
  v0[9] = v6;
  v8 = v4;
  v9 = v3;
  v10 = v1;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_19D6331CC;
  v12 = v0[4];

  return sub_19D63501C(v5, v7, v12);
}

uint64_t sub_19D6331CC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_19D633360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_19D612970;

  return (sub_19D6353A0)(a2, a3, a4);
}

uint64_t sub_19D6335C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_19E6CD5B8();
  v5[7] = sub_19E6CD5A8();
  v7 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D633668, v7, v6);
}

uint64_t sub_19D633668()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];

  v0[8] = _Block_copy(v2);
  v5 = sub_19E6CD4E8();
  v7 = v6;
  v0[9] = v6;
  v8 = v4;
  v9 = v3;
  v10 = v1;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_19D633770;
  v12 = v0[4];

  return sub_19D6353A0(v5, v7, v12);
}

uint64_t sub_19D633770(char a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_19D63390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_19D615A70;

  return (sub_19D635734)(a2, a3, a4, a5, a6);
}

uint64_t sub_19D633B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_19E6CD5B8();
  v6[8] = sub_19E6CD5A8();
  v8 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D633C34, v8, v7);
}

uint64_t sub_19D633C34()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  *(v0 + 72) = _Block_copy(v1);
  v3 = sub_19E6CD4E8();
  v5 = v4;
  *(v0 + 80) = v4;
  if (v2)
  {
    v2 = sub_19E6CD4E8();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 88) = v7;
  v8 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = v9;
  v12 = v8;
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_19D633D70;
  v14 = *(v0 + 40);

  return sub_19D635734(v3, v5, v2, v7, v14);
}

uint64_t sub_19D633D70(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (a2)
  {
    v9 = sub_19E6CD4C8();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v4 + 72);
  (v10)[2](v10, v9);

  _Block_release(v10);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_19D633F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_19D612970;

  return sub_19D635AD0(a2, a3);
}

uint64_t sub_19D6341A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_19E6CD5B8();
  v5[7] = sub_19E6CD5A8();
  v7 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D634248, v7, v6);
}

uint64_t sub_19D634248()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v0[8] = _Block_copy(v2);
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v1;
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_19D634334;
  v12 = v0[3];
  v11 = v0[4];

  return sub_19D635AD0(v12, v11);
}

uint64_t sub_19D634334(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (a1)
  {
    sub_19E6CCF28();
    v9 = sub_19E6CD528();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v3 + 64);
  (v10)[2](v10, v9);

  _Block_release(v10);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_19D6344EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[8] = a2;
  sub_19E6CD5B8();
  v4[11] = sub_19E6CD5A8();
  v6 = sub_19E6CD548();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19D634588, v6, v5);
}

uint64_t sub_19D634588()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 72);
    v3 = *(Strong + 56);
    *(v0 + 40) = 0;
    *(v0 + 48) = 1;
    sub_19D610BA8(v2, (v0 + 56));
    v8 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_19D634714;
    v5 = *(v0 + 64);

    return v8(v0 + 40, v0 + 56, v5);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7(0);
  }
}

uint64_t sub_19D634714(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_19D634854, v4, v3);
}

uint64_t sub_19D634854()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19D6348C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_19D613200;

  return (sub_19D635E5C)(a2, a3, a4);
}

uint64_t sub_19D634B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_19E6CD5B8();
  v6[8] = sub_19E6CD5A8();
  v8 = sub_19E6CD548();

  return MEMORY[0x1EEE6DFA0](sub_19D634BD0, v8, v7);
}

uint64_t sub_19D634BD0()
{
  v1 = v0[7];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v0[9] = _Block_copy(v2);
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v1;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_19D634CC4;
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[3];

  return sub_19D635E5C(v13, v11, v12);
}

uint64_t sub_19D634CC4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_19D63501C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  sub_19E6CD5B8();
  v4[7] = sub_19E6CD5A8();
  v6 = sub_19E6CD548();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19D6350B8, v6, v5);
}

uint64_t sub_19D6350B8()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC6WebKit19WKUIDelegateAdapter_dialogPresenter);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  sub_19D610BA8(v1, v0 + 2);
  v9 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_19D635208;
  v7 = v0[3];
  v6 = v0[4];

  return v9(v7, v6, v0 + 2, v3, v4);
}

uint64_t sub_19D635208()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19D635340, v3, v2);
}

uint64_t sub_19D635340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19D6353A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  sub_19E6CD5B8();
  v4[7] = sub_19E6CD5A8();
  v6 = sub_19E6CD548();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19D63543C, v6, v5);
}

uint64_t sub_19D63543C()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC6WebKit19WKUIDelegateAdapter_dialogPresenter);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  sub_19D610BA8(v1, v0 + 2);
  v9 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_19D635590;
  v6 = v0[3];
  v7 = v0[4];

  return v9(v0 + 11, v6, v7, v0 + 2, v3, v4);
}

uint64_t sub_19D635590()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19D6356C8, v3, v2);
}

uint64_t sub_19D6356C8()
{

  v1 = *(v0 + 8);
  v2 = (*(v0 + 88) & 1) == 0;

  return v1(v2);
}

uint64_t sub_19D635734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  sub_19E6CD5B8();
  v6[11] = sub_19E6CD5A8();
  v8 = sub_19E6CD548();
  v6[12] = v8;
  v6[13] = v7;

  return MEMORY[0x1EEE6DFA0](sub_19D6357D4, v8, v7);
}

uint64_t sub_19D6357D4()
{
  v1 = v0[9];
  v2 = (v0[10] + OBJC_IVAR____TtC6WebKit19WKUIDelegateAdapter_dialogPresenter);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  sub_19D610BA8(v1, v0 + 4);
  v11 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_19D63592C;
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];

  return v11(v0 + 2, v8, v9, v6, v7, v0 + 4, v3, v4);
}

uint64_t sub_19D63592C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_19D635A64, v3, v2);
}

uint64_t sub_19D635A64()
{

  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v1 = 0;
  }

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_19D635AD0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  sub_19E6CD5B8();
  v3[7] = sub_19E6CD5A8();
  v5 = sub_19E6CD548();
  v3[8] = v5;
  v3[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19D635B6C, v5, v4);
}

uint64_t sub_19D635B6C()
{
  v1 = v0[5];
  v2 = (v0[6] + OBJC_IVAR____TtC6WebKit19WKUIDelegateAdapter_dialogPresenter);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  sub_19D610BA8(v1, v0 + 3);
  v8 = (*(v4 + 32) + **(v4 + 32));
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_19D635CC0;
  v6 = v0[4];

  return v8(v0 + 2, v6, v0 + 3, v3, v4);
}

uint64_t sub_19D635CC0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_19D635DF8, v3, v2);
}

uint64_t sub_19D635DF8()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19D635E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  sub_19E6CD5B8();
  v4[12] = sub_19E6CD5A8();
  v6 = sub_19E6CD548();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19D635EF8, v6, v5);
}

uint64_t sub_19D635EF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 72);
    v3 = *(Strong + 56);
    *(v0 + 40) = *(v0 + 80);
    *(v0 + 48) = 0;
    sub_19D610BA8(v2, (v0 + 56));
    v8 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_19D636080;
    v5 = *(v0 + 64);

    return v8(v0 + 40, v0 + 56, v5);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7(0);
  }
}

uint64_t sub_19D636080(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return MEMORY[0x1EEE6DFA0](sub_19D6361C0, v4, v3);
}

uint64_t sub_19D6361C0()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_19D636230(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = WebPage.backingWebView.getter();

    sub_19D631BC8(a1, v3);
    sub_19D628B60(v3);
  }
}

uint64_t sub_19D6362EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_19D614B3C;

  return sub_19D634B30(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_19D6363C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_19D613F20;

  return sub_19D6341A8(v2, v3, v4, v5, v6);
}

uint64_t sub_19D636488()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_19D614B3C;

  return sub_19D633B94(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_19D63655C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_19D614B3C;

  return sub_19D6335C8(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_36Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19D63667C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_19D614B3C;

  return sub_19D633024(v2, v3, v4, v5, v6);
}

id sub_19D636744(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC6WebKit25WKURLSchemeHandlerAdapter_tasks;
  *&v3[v4] = sub_19D637C50(MEMORY[0x1E69E7CC0]);
  sub_19D637D60(a1, &v3[OBJC_IVAR____TtC6WebKit25WKURLSchemeHandlerAdapter_wrapped]);
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

uint64_t sub_19D6367D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_19E6CD588();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = sub_19E6CCD88();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = sub_19E6CD5B8();
  v5[28] = sub_19E6CD5A8();
  v9 = sub_19E6CD548();
  v5[29] = v9;
  v5[30] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19D636924, v9, v8);
}

uint64_t sub_19D636924()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[20];
  v5 = (v0[19] + OBJC_IVAR____TtC6WebKit25WKURLSchemeHandlerAdapter_wrapped);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v6);
  v8 = [v4 request];
  sub_19E6CCD68();

  v9 = *(v7 + 24);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  v9(v1, v6, v7);
  (*(v2 + 8))(v1, v3);
  v10 = v0[10];
  v11 = __swift_project_boxed_opaque_existential_0(v0 + 7, v10);
  v12 = *(v10 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v10);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_19E6CD608();

  __swift_destroy_boxed_opaque_existential_0((v0 + 7));
  v14 = sub_19E6CD5A8();
  v0[31] = v14;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_19D636BF0;
  v16 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 15, v14, v16);
}

uint64_t sub_19D636BF0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_19D637018;
  }

  else
  {
    v5 = sub_19D636D14;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_19D636D14()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 264);
  if ((~v2 & 0x3000000000000000) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    sub_19E6CD5F8();
    if (!v3)
    {
      [*(v0 + 160) didFinish];
LABEL_10:
      v11 = *(v0 + 160);
      swift_beginAccess();
      sub_19D637194(0, v11);
      swift_endAccess();

      v12 = *(v0 + 8);

      return v12();
    }

LABEL_6:
    *(v0 + 144) = v3;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175D0);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 176);
      v5 = *(v0 + 184);
      v7 = *(v0 + 168);

      (*(v6 + 8))(v5, v7);
      v8 = *(v0 + 144);
    }

    else
    {
      v9 = *(v0 + 160);

      v10 = sub_19E6CCEA8();
      [v9 didFailWithError_];

      v8 = v3;
    }

    goto LABEL_10;
  }

  sub_19E6CD5F8();
  if (v3)
  {

    sub_19D638024(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    goto LABEL_6;
  }

  v14 = *(v0 + 160);
  if ((v2 & 0x2000000000000000) != 0)
  {
    sub_19D638048(v1, v2);
    v15 = sub_19E6CCF38();
    [v14 didReceiveData_];
    sub_19D638024(v1, v2);
  }

  else
  {
    [*(v0 + 160) didReceiveResponse_];
  }

  sub_19D638024(v1, v2);
  v16 = sub_19E6CD5A8();
  *(v0 + 248) = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v17 = swift_task_alloc();
  *(v0 + 256) = v17;
  *v17 = v0;
  v17[1] = sub_19D636BF0;
  v18 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 120, v16, v18);
}

uint64_t sub_19D637018()
{

  v1 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0175D0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 168);

    (*(v4 + 8))(v3, v5);
    v6 = *(v0 + 144);
  }

  else
  {
    v7 = *(v0 + 160);

    v8 = sub_19E6CCEA8();
    [v7 didFailWithError_];

    v6 = v1;
  }

  v9 = *(v0 + 160);
  swift_beginAccess();
  sub_19D637194(0, v9);
  swift_endAccess();

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_19D637194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_19D6379A8(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_19D6246C8(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_19D637AF4();
        v11 = v13;
      }

      result = sub_19D637838(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_19D637540(uint64_t a1)
{
  v2 = v1;
  v3 = sub_19D6246C8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_19D637AF4();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_19D637838(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_19D6375C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017CD8);
  result = sub_19E6CD838();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_19E6CD908();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19D637838(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19E6CD6F8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_19E6CD908();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_19D6379A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_19D6246C8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_19D6375C8(v14, a3 & 1);
      result = sub_19D6246C8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_19E6CD898();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_19D637AF4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *sub_19D637AF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017CD8);
  v2 = *v0;
  v3 = sub_19E6CD828();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

unint64_t sub_19D637C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017CD8);
  v3 = sub_19E6CD858();
  v13 = *(a1 + 32);
  result = sub_19D6246C8(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_19D6246C8(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19D637D60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_19D637DC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_19E6CD5D8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_19E6CD5B8();
  v7 = v1;
  swift_unknownObjectRetain();
  v8 = sub_19E6CD5A8();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v9[5] = a1;
  v11 = sub_19D62343C(0, 0, v5, &unk_19E702A30, v9);
  v12 = OBJC_IVAR____TtC6WebKit25WKURLSchemeHandlerAdapter_tasks;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *&v7[v12];
  *&v7[v12] = 0x8000000000000000;
  sub_19D6379A8(v11, a1, isUniquelyReferenced_nonNull_native);
  *&v7[v12] = v15;
  swift_endAccess();
}

uint64_t sub_19D637F8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19D613F20;

  return sub_19D6367D0(v4, v5, v6, v2, v3);
}

void sub_19D638024(id a1, uint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    sub_19D638038(a1, a2);
  }
}

void sub_19D638038(id a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_19D610440(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

id sub_19D638048(id a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_19D61911C(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    return a1;
  }
}

id sub_19D638058(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v5 setPreferredContentMode_];
  [v5 setPreferredHTTPSNavigationPolicy_];
  [v5 setAllowsContentJavaScript_];

  if (v4 != 2 && [v5 isLockdownModeEnabled] != (v4 & 1))
  {
    [v5 setLockdownModeEnabled_];
  }

  return v5;
}

size_t WKWebsiteDataStore.proxyConfigurations.getter()
{
  v13 = sub_19E6CD1C8();
  v1 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v0 proxyConfigurations];
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DB0);
  v7 = sub_19E6CD538();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_14:

    return v5;
  }

  v8 = sub_19E6CD7D8();
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_4:
  v14 = v5;
  result = sub_19D638628(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v5 = v14;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19EAFE3C0](v10, v7);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      sub_19E6CD1A8();
      v14 = v5;
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19D638628(v11 > 1, v12 + 1, 1);
        v5 = v14;
      }

      ++v10;
      *(v5 + 16) = v12 + 1;
      (*(v1 + 32))(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v3, v13);
    }

    while (v8 != v10);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

size_t sub_19D638340@<X0>(size_t *a1@<X8>)
{
  result = WKWebsiteDataStore.proxyConfigurations.getter();
  *a1 = result;
  return result;
}

void WKWebsiteDataStore.proxyConfigurations.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19E6CD1C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v16 = v1;
    v18 = MEMORY[0x1E69E7CC0];
    sub_19E6CD738();
    v9 = v5 + 16;
    v17 = *(v5 + 16);
    v10 = *(v5 + 80);
    v15 = a1;
    v11 = a1 + ((v10 + 32) & ~v10);
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v17(v7, v11, v4);
      sub_19E6CD1B8();
      (*v13)(v7, v4);
      sub_19E6CD718();
      sub_19E6CD748();
      sub_19E6CD758();
      sub_19E6CD728();
      v11 += v12;
      --v8;
    }

    while (v8);

    v2 = v16;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DB0);
  v14 = sub_19E6CD528();

  [v2 setProxyConfigurations_];
}

void (*WKWebsiteDataStore.proxyConfigurations.modify(size_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = WKWebsiteDataStore.proxyConfigurations.getter();
  return sub_19D6385D0;
}

void sub_19D6385D0(uint64_t *a1, char a2)
{
  if (a2)
  {

    WKWebsiteDataStore.proxyConfigurations.setter(v2);
  }

  else
  {
    WKWebsiteDataStore.proxyConfigurations.setter(*a1);
  }
}

size_t sub_19D638628(size_t a1, int64_t a2, char a3)
{
  result = sub_19D638648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19D638648(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DB8);
  v10 = *(sub_19E6CD1C8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_19E6CD1C8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_19D638820@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v76 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v76 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v76 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017738);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DF8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017E00);
  v89 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v93 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v76 - v23;
  v24 = sub_19E6CCDF8();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v95 = sub_19E6CCDB8();
  v25 = *(v95 - 8);
  v26 = MEMORY[0x1EEE9AC00](v95);
  v79 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v94 = &v76 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v76 - v30;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v81 = v7;
    v82 = a1;
    v92 = v20;
    v33 = v32;
    v34 = [v32 content];
    sub_19E6CD4E8();

    sub_19E6CCDE8();
    sub_19E6CCDC8();
    v35 = [v33 selectedRange];
    v36 = sub_19E6CCD48();
    v37 = v31;
    v78 = v33;
    v38 = v89;
    if (v35 != v36)
    {
      [v33 selectedRange];
      (*(v25 + 16))(v94, v37, v95);
      sub_19D63AB68(&qword_1EB017E08, MEMORY[0x1E6968848]);
      sub_19E6CD668();
      if ((v38[6])(v19, 1, v92) == 1)
      {
        v39 = &qword_1EB017DF8;
        v40 = v19;
      }

      else
      {
        v47 = v91;
        sub_19D63AA40(v19, v91);
        sub_19D63AAB0();
        v48 = sub_19E6CCDD8();
        v96 = 1;
        sub_19E6CD078();
        sub_19D63AB68(&qword_1EB017E20, MEMORY[0x1E69DBB40]);
        sub_19E6CCE08();
        v48(v97, 0);
        v39 = &qword_1EB017E00;
        v40 = v47;
      }

      sub_19D60D358(v40, v39);
      v33 = v78;
    }

    v49 = [v33 links];
    type metadata accessor for WKTextExtractionLink(0);
    v50 = sub_19E6CD538();

    v86 = v50;
    if (v50 >> 62)
    {
      result = sub_19E6CD7D8();
    }

    else
    {
      result = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = v81;
    a1 = v82;
    v77 = v25;
    v87 = v37;
    if (!result)
    {

      v62 = *(v25 + 16);
LABEL_23:
      v62(v79, v37, v95);
      v63 = [v78 editable];
      v64 = v80;
      if (v63)
      {
        v65 = v63;
        v66 = [v65 label];
        sub_19E6CD4E8();

        v67 = [v65 placeholder];
        sub_19E6CD4E8();

        [v65 isSecure];
        [v65 isFocused];
        sub_19E6CD088();

        v68 = sub_19E6CD098();
        (*(*(v68 - 8) + 56))(v64, 0, 1, v68);
      }

      else
      {
        v69 = sub_19E6CD098();
        (*(*(v69 - 8) + 56))(v64, 1, 1, v69);
      }

      v70 = sub_19E6CD0F8();
      (*(*(v70 - 8) + 56))(v52, 1, 1, v70);
      sub_19E6CD068();
      (*(v77 + 8))(v87, v95);
      v46 = MEMORY[0x1E69DBBC8];
      goto LABEL_27;
    }

    if (result >= 1)
    {
      v53 = 0;
      v88 = (v38 + 6);
      v54 = v86;
      v89 = (v25 + 16);
      v90 = v86 & 0xC000000000000001;
      v76 = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v91 = result;
      v83 = v17;
      do
      {
        if (v90)
        {
          v60 = MEMORY[0x19EAFE3C0](v53, v54);
        }

        else
        {
          v60 = *(v54 + 8 * v53 + 32);
        }

        v61 = v60;
        [v60 range];
        v62 = *v89;
        (*v89)(v94, v37, v95);
        sub_19D63AB68(&qword_1EB017E08, MEMORY[0x1E6968848]);
        sub_19E6CD668();
        if ((*v88)(v17, 1, v92) == 1)
        {

          sub_19D60D358(v17, &qword_1EB017DF8);
        }

        else
        {
          sub_19D63AA40(v17, v93);
          v55 = [v61 url];
          v56 = v84;
          sub_19E6CCF18();

          v57 = sub_19E6CCF28();
          (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
          sub_19D63AAB0();
          v58 = sub_19E6CCDD8();
          sub_19D6283C4(v56, v85, &qword_1EB017738);
          sub_19D63AB14();
          sub_19E6CCE08();
          v59 = v56;
          v17 = v83;
          sub_19D60D358(v59, &qword_1EB017738);
          v58(v97, 0);

          v54 = v86;
          sub_19D60D358(v93, &qword_1EB017E00);
          v37 = v87;
        }

        ++v53;
      }

      while (v91 != v53);

      v52 = v81;
      a1 = v82;
      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (v41)
    {
      v42 = v41;
      v43 = [v41 name];
      sub_19E6CD4E8();

      v44 = [v42 altText];
      sub_19E6CD4E8();

      v45 = sub_19E6CD038();
      (*(*(v45 - 8) + 56))(v4, 1, 1, v45);
      sub_19E6CD0A8();
      v46 = MEMORY[0x1E69DBBD0];
LABEL_27:
      v71 = *v46;
      v72 = sub_19E6CD0B8();
      return (*(*(v72 - 8) + 104))(a1, v71, v72);
    }

    v73 = *MEMORY[0x1E69DBBC0];
    v74 = sub_19E6CD0B8();
    v75 = *(*(v74 - 8) + 104);

    return v75(a1, v73, v74);
  }

  return result;
}

size_t sub_19D6394E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = sub_19E6CD0C8();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19E6CD0B8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 rectInWebView];
  sub_19D638820(v9);
  v10 = MEMORY[0x1E69E7CC0];
  sub_19E6CD048();
  v11 = [a1 children];
  type metadata accessor for WKTextExtractionItem(0);
  v12 = sub_19E6CD538();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:

    return sub_19E6CD058();
  }

  v13 = sub_19E6CD7D8();
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  v23 = v10;
  result = sub_19D63A848(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v21[1] = a2;
    v15 = 0;
    v16 = v23;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x19EAFE3C0](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      sub_19D6394E4();

      v23 = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_19D63A848(v19 > 1, v20 + 1, 1);
        v16 = v23;
      }

      ++v15;
      *(v16 + 16) = v20 + 1;
      (*(v4 + 32))(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v22);
    }

    while (v13 != v15);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_19D639860()
{
  result = qword_1EB017DC0;
  if (!qword_1EB017DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB017DC0);
  }

  return result;
}

uint64_t WKWebView._intelligenceCollectContent(in:collector:)()
{
  v0 = sub_19E6CD0B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19E6CD0D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19E6CD028();
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  sub_19E6CD0E8();
  __swift_destroy_boxed_opaque_existential_0(v10);
  (*(v5 + 16))(v3, v7, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69DBBE0], v0);
  sub_19E6CD018();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t WKWebView._intelligenceCollectRemoteContent(in:remoteContextWrapper:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_19E6CD5D8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_19E6CD5B8();
  v15 = a1;
  v16 = v5;
  v17 = sub_19E6CD5A8();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;
  *(v18 + 72) = a5;
  sub_19D62343C(0, 0, v13, &unk_19E702A58, v18);
}

uint64_t sub_19D639EAC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 184) = a3;
  *(v9 + 192) = a4;
  *(v9 + 168) = a1;
  *(v9 + 176) = a2;
  *(v9 + 152) = a8;
  *(v9 + 160) = a9;
  v10 = sub_19E6CD0C8();
  *(v9 + 200) = v10;
  *(v9 + 208) = *(v10 - 8);
  *(v9 + 216) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DC8);
  *(v9 + 224) = v11;
  *(v9 + 232) = *(v11 - 8);
  *(v9 + 240) = swift_task_alloc();
  sub_19E6CD5B8();
  *(v9 + 248) = sub_19E6CD5A8();
  v13 = sub_19E6CD548();
  *(v9 + 256) = v13;
  *(v9 + 264) = v12;

  return MEMORY[0x1EEE6DFA0](sub_19D63A010, v13, v12);
}

uint64_t sub_19D63A010()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[29];
  v5 = *(v0 + 23);
  v4 = *(v0 + 24);
  v7 = *(v0 + 21);
  v6 = *(v0 + 22);
  v8 = v0[20];
  sub_19E6CD148();
  v0[34] = sub_19E6CD138();
  v0[35] = sub_19E6CD128();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_19D63A210;
  swift_continuation_init();
  v0[17] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DD0);
  sub_19E6CD558();
  (*(v3 + 32))(boxed_opaque_existential_0, v1, v2);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19D63A4CC;
  v0[13] = &block_descriptor_3;
  [v8 _requestTextExtraction_completionHandler_];
  (*(v3 + 8))(boxed_opaque_existential_0, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_19D63A210()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);

  return MEMORY[0x1EEE6DFA0](sub_19D63A318, v2, v1);
}

uint64_t sub_19D63A318()
{

  v1 = *(v0 + 144);
  if (v1)
  {
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);
    v4 = *(v0 + 200);
    sub_19D6394E4(*(v0 + 144), v2);
    sub_19E6CD108();

    (*(v3 + 8))(v2, v4);
  }

  sub_19E6CD118();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_19D63A404()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_19D614B3C;

  return sub_19D639EAC(v4, v5, v6, v7, v8, v9, v10, v2, v3);
}

uint64_t sub_19D63A4CC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DC8);
  return sub_19E6CD578();
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19D63A754()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_19D613F20;

  return sub_19D639EAC(v4, v5, v6, v7, v8, v9, v10, v2, v3);
}

size_t sub_19D63A848(size_t a1, int64_t a2, char a3)
{
  result = sub_19D63A868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19D63A868(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017DD8);
  v10 = *(sub_19E6CD0C8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_19E6CD0C8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_19D63AA40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19D63AAB0()
{
  result = qword_1EB017E10;
  if (!qword_1EB017E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB017E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017E10);
  }

  return result;
}

unint64_t sub_19D63AB14()
{
  result = qword_1EB017E18;
  if (!qword_1EB017E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB017E18);
  }

  return result;
}

uint64_t sub_19D63AB68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19D63ABB0(__int128 *a1)
{
  v1 = a1[3];
  v35 = a1[2];
  v36 = v1;
  *v37 = a1[4];
  *&v37[10] = *(a1 + 74);
  v2 = a1[1];
  v33 = *a1;
  v34 = v2;
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setWebsiteDataStore_];
  [v3 setUserContentController_];
  [v3 setWebExtensionController_];
  sub_19D63AFF0();
  LODWORD(v28) = DWORD2(v34);
  v4 = sub_19D638058(&v28);
  [v3 setDefaultWebpagePreferences_];

  if (*v37)
  {

    v5 = sub_19E6CD4C8();
  }

  else
  {
    v5 = 0;
  }

  [v3 setApplicationNameForUserAgent_];

  [v3 setLimitsNavigationsToAppBoundDomains_];
  [v3 setUpgradeKnownHostsToHTTPS_];
  [v3 setSuppressesIncrementalRendering_];
  [v3 setAllowsInlinePredictions_];
  [v3 setSupportsAdaptiveImageGlyph_];
  [v3 _setLoadsSubresources_];
  v30 = v35;
  v31 = v36;
  v32[0] = *v37;
  *(v32 + 10) = *&v37[10];
  v28 = v33;
  v29 = v34;
  [v3 setShowsSystemScreenTimeBlockingView_];
  [v3 setDataDetectorTypes_];
  [v3 setIgnoresViewportScaleLimits_];

  v6 = v37[25];
  LOBYTE(v28) = v37[25];
  LOBYTE(v24) = 0;
  sub_19D612AC8();
  if ((sub_19E6CD4B8() & 1) == 0)
  {
    LOBYTE(v28) = v6;
    LOBYTE(v24) = 1;
    [v3 setAllowsInlineMediaPlayback_];
  }

  v7 = v35;

  sub_19D6278D8(&v33);
  v8 = 0;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  if (v11)
  {
    while (1)
    {
      v13 = v8;
LABEL_17:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = v16 | (v13 << 6);
      v18 = (*(v7 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_19D637D60(*(v7 + 56) + 40 * v17, v23);
      *&v24 = v20;
      *(&v24 + 1) = v19;
      sub_19D613184(v23, &v25);

      v15 = v13;
LABEL_18:
      v28 = v24;
      v29 = v25;
      v30 = v26;
      *&v31 = v27;
      if (!*(&v24 + 1))
      {
        break;
      }

      type metadata accessor for WKURLSchemeHandlerAdapter();
      sub_19D613184(&v29, &v24);
      v21 = sub_19D636744(&v24);
      v22 = sub_19E6CD4C8();

      [v3 setURLSchemeHandler:v21 forURLScheme:v22];

      v8 = v15;
      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    if (v12 <= v8 + 1)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = v12;
    }

    v15 = v14 - 1;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        v11 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        goto LABEL_18;
      }

      v11 = *(v7 + 64 + 8 * v13);
      ++v8;
      if (v11)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

unint64_t sub_19D63AFF0()
{
  result = qword_1EB017A50;
  if (!qword_1EB017A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB017A50);
  }

  return result;
}

unint64_t __muloti4(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  *a5 = 0;
  if (!(a1 | a2 ^ 0x8000000000000000))
  {
    if (a3 <= 1)
    {
      return a3 * a1;
    }

    goto LABEL_10;
  }

  if (!(a3 | a4 ^ 0x8000000000000000))
  {
    if (a1 <= 1)
    {
      return a3 * a1;
    }

    goto LABEL_10;
  }

  v5 = __PAIR128__(a2 ^ (a2 >> 63), a1 ^ (a2 >> 63)) - __PAIR128__(a2 >> 63, a2 >> 63);
  if ((__PAIR128__(a2 ^ (a2 >> 63), a1 ^ (a2 >> 63)) - __PAIR128__(a2 >> 63, a2 >> 63)) >= 2 && (__PAIR128__(a4 ^ (a4 >> 63), a3 ^ (a4 >> 63)) - __PAIR128__(a4 >> 63, a4 >> 63)) >= 2)
  {
    v6 = a5;
    v7 = a1;
    v8 = a3;
    v9 = __udivti3();
    v11 = __PAIR128__(v10, v9) >= v5;
    a3 = v8;
    a1 = v7;
    a5 = v6;
    if (!v11)
    {
LABEL_10:
      *a5 = 1;
    }
  }

  return a3 * a1;
}

void API::CustomHeaderFields::~CustomHeaderFields(API::CustomHeaderFields *this, void *a2)
{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, a2);
  WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, v3);
}

{
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, a2);
  WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, v3);

  JUMPOUT(0x19EB14CF0);
}

void sub_19D63BA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D63BC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_release(v9);
  WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a9, v11);
  _Unwind_Resume(a1);
}

void sub_19D63BCE8(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

void sub_19D63BF60(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, char a14)
{
  if (a14 == 1)
  {
    if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
    }

    if (a12)
    {
      if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(a12, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL WTF::startsWithLettersIgnoringASCIICaseCommon<WTF::StringImpl>(_BOOL8 result, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = *(result + 4);
  if (a3 > v3)
  {
    return 0;
  }

  v5 = *(result + 8);
  if ((*(result + 16) & 4) != 0)
  {
    v4 = 0;
    v7 = 0;
    while (v3 != v7)
    {
      if ((*(v5 + v7) | 0x20) == *(a2 + v7))
      {
        v4 = ++v7 >= a3;
        if (a3 != v7)
        {
          continue;
        }
      }

      return v4;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
    while (v3 != v6)
    {
      if ((*(v5 + 2 * v6) | 0x20) == *(a2 + v6))
      {
        v4 = ++v6 >= a3;
        if (a3 != v6)
        {
          continue;
        }
      }

      return v4;
    }
  }

  __break(1u);
  return result;
}

unint64_t WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D63C250);
    }

    v4 = *a1;
    v5 = *(a1 + 12);
    v6 = WTF::fastMalloc((16 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    if (v5)
    {
      v8 = v6;
      v9 = v4;
      do
      {
        v10 = *v9;
        *v9 = 0;
        *v8 = v10;
        v11 = v9[1];
        v9[1] = 0;
        v8[1] = v11;
        v12 = v9[1];
        v9[1] = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v7);
        }

        v13 = *v9;
        *v9 = 0;
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v7);
        }

        v8 += 2;
        v9 += 2;
      }

      while (v9 != (v4 + 16 * v5));
    }

    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }
  }

  return 1;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = v3[1];
      v3[1] = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

WTF *WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(uint64_t a1, _DWORD *a2)
{
  result = *a1;
  if (result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    result = WTF::fastFree(result, a2);
  }

  v5 = *a2;
  *a2 = 0;
  *a1 = v5;
  LODWORD(v5) = a2[2];
  a2[2] = 0;
  *(a1 + 8) = v5;
  LODWORD(v5) = a2[3];
  a2[3] = 0;
  *(a1 + 12) = v5;
  return result;
}

uint64_t WTF::Vector<WebCore::HTTPHeaderField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebCore::HTTPHeaderField>::destruct(*a1, (*a1 + 16 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_19D63C37C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19D63C548);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<API::Object *,WTF::KeyValuePair<API::Object *,void const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<API::Object *,void const*>>,WTF::DefaultHash<API::Object *>,WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<API::Object *>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v24 = 0;
        v23 = v9 + 16 * *(v9 - 4);
        goto LABEL_18;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v15[1] = *a3;
  v19 = *v8;
  if (*v8)
  {
    v20 = *(v19 - 12) + 1;
  }

  else
  {
    v20 = 1;
  }

  *(v19 - 12) = v20;
  v21 = (*(v19 - 16) + v20);
  v22 = *(v19 - 4);
  if (v22 > 0x400)
  {
    if (v22 > 2 * v21)
    {
      goto LABEL_17;
    }

LABEL_20:
    result = WTF::HashTable<API::Object *,WTF::KeyValuePair<API::Object *,void const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<API::Object *,void const*>>,WTF::DefaultHash<API::Object *>,WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<API::Object *>,WTF::FastMalloc>::expand(v8, v15);
    v15 = result;
    v19 = *v8;
    if (*v8)
    {
      v22 = *(v19 - 4);
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_17;
  }

  if (3 * v22 <= 4 * v21)
  {
    goto LABEL_20;
  }

LABEL_17:
  v23 = v19 + 16 * v22;
  v24 = 1;
LABEL_18:
  *a4 = v15;
  *(a4 + 8) = v23;
  *(a4 + 16) = v24;
  return result;
}

_OWORD *WTF::HashTable<API::Object *,WTF::KeyValuePair<API::Object *,void const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<API::Object *,void const*>>,WTF::DefaultHash<API::Object *>,WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<API::Object *>,WTF::FastMalloc>::expand(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    if (6 * *(v3 - 12) >= 2 * v4)
    {
      v4 *= 2;
    }
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<API::Object *,WTF::KeyValuePair<API::Object *,void const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<API::Object *,void const*>>,WTF::DefaultHash<API::Object *>,WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<API::Object *>,WTF::FastMalloc>::rehash(a1, v4, a2);
}

_OWORD *WTF::HashTable<API::Object *,WTF::KeyValuePair<API::Object *,void const*>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<API::Object *,void const*>>,WTF::DefaultHash<API::Object *>,WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<API::Object *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      if ((*v13 + 1) >= 2)
      {
        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = (~(*v13 << 32) + *v13) ^ ((~(*v13 << 32) + *v13) >> 22);
        v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
        v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
        v19 = v15 & ((v18 >> 31) ^ v18);
        if (*(v14 + 16 * v19))
        {
          v22 = 1;
          do
          {
            v19 = (v19 + v22++) & v15;
          }

          while (*(v14 + 16 * v19));
        }

        v20 = (v14 + 16 * v19);
        *v20 = *v13;
        if (v13 == a3)
        {
          v12 = v20;
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

unsigned int *WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(unsigned int *result, unint64_t a2, id **a3, char a4)
{
  v4 = result;
  *result = 0;
  *(result + 1) = 0;
  if (!a2)
  {
LABEL_10:
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(v4, v4[3]);
    return v4;
  }

  if (!(a2 >> 29))
  {
    v8 = WTF::fastMalloc((8 * a2));
    v9 = 0;
    v4[2] = a2;
    *v4 = v8;
    do
    {
      v10 = [**a3 objectAtIndexedSubscript:{v9, v17}];
      WTF::makeVectorElement(&v17, 0, v10, v11);
      if (v18)
      {
        v13 = v4[3];
        v14 = *v4;
        v15 = v17;
        v17 = 0;
        *(v14 + 8 * v13) = v15;
        v4[3] = v13 + 1;
        v16 = v17;
        v17 = 0;
        if (v16)
        {
          if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v12);
          }
        }
      }

      else if (a4)
      {
        goto LABEL_10;
      }

      ++v9;
    }

    while (a2 != v9);
    goto LABEL_10;
  }

  __break(0xC471u);
  return result;
}

void sub_19D63C84C(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

void **WTF::RetainPtr<NSNumber>::operator=(void **a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  v5 = *a1;
  *a1 = a2;
  if (v5)
  {
  }

  return a1;
}

void *__copy_helper_block_e8_40c30_ZTSN3WTF9RetainPtrI7NSArrayEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 40);
  result[5] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_40c30_ZTSN3WTF9RetainPtrI7NSArrayEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v1)
  {
  }
}

void sub_19D63CD68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D63CF58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D63D7C4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void API::ResourceLoadStatisticsFirstParty::~ResourceLoadStatisticsFirstParty(WTF::StringImpl **this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if (WTF::RunLoop::isCurrent(v2))
  {
    v4 = this[2];
    this[2] = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v3);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

{
  API::ResourceLoadStatisticsFirstParty::~ResourceLoadStatisticsFirstParty(this);

  JUMPOUT(0x19EB14CF0);
}

void sub_19D63D890(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D63D9B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D63DB54(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void API::ResourceLoadStatisticsThirdParty::~ResourceLoadStatisticsThirdParty(WTF::StringImpl **this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if (WTF::RunLoop::isCurrent(v2))
  {
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((this + 3), v3);
    v5 = this[2];
    this[2] = 0;
    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v4);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

{
  API::ResourceLoadStatisticsThirdParty::~ResourceLoadStatisticsThirdParty(this);

  JUMPOUT(0x19EB14CF0);
}

void sub_19D63DC04(_Unwind_Exception *a1, void *a2)
{
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 24, a2);
  v5 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v4);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WebKit::ITPThirdPartyDataForSpecificFirstParty>::destruct(*a1, (*a1 + 24 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

WTF::StringImpl *WTF::VectorDestructor<true,WebKit::ITPThirdPartyDataForSpecificFirstParty>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 3;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::CompletionHandler<void ()(mpark::variant<WebKit::ContinueUnsafeLoad,WTF::URL> &&)>::operator()(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t colorForItem(unsigned int a1, void *a2)
{
  if (!a2 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [MEMORY[0x1E69DC888] colorWithRed:0.998 green:0.239 blue:0.233 alpha:1.0];
    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.118 green:0.118 blue:0.118 alpha:1.0];
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.937 green:0.937 blue:0.937 alpha:1.0];
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [objc_msgSend(a2 "traitCollection")];
    if (a1 <= 7)
    {
      if (((1 << a1) & 0xB0) != 0)
      {
        [a2 warning];
        v11 = v14;
        if (*(v14 + 88) == 1)
        {
LABEL_31:
          WTF::RefCounted<WebKit::BrowsingWarning>::deref(v11, v10);
          return v5;
        }

        if (!*(v14 + 88))
        {
          v5 = v7;
          if (v9 != 1)
          {
            v5 = [MEMORY[0x1E69DC888] darkTextColor];
            v11 = v14;
            if (!v14)
            {
              return v5;
            }
          }

          goto LABEL_31;
        }

LABEL_51:
        mpark::throw_bad_variant_access(v11);
      }

      if (((1 << a1) & 0xC) != 0)
      {
        if (a2)
        {
          [a2 warning];
          v11 = v14;
        }

        else
        {
          v11 = 0;
        }

        if (*(v11 + 88) == 1)
        {
          if (a1 == 3)
          {
            v4 = v5;
          }
        }

        else
        {
          if (*(v11 + 88))
          {
            goto LABEL_51;
          }

          if (v9 == 1)
          {
            v4 = v7;
          }
        }

        goto LABEL_49;
      }

      if (a1 == 6)
      {
        [a2 warning];
        v11 = v14;
        if (*(v14 + 88) == 1)
        {
          v7 = v5;
        }

        else if (*(v14 + 88))
        {
          goto LABEL_51;
        }

        if (v9 == 1 || (v7 = [a2 tintColor], (v11 = v14) != 0))
        {
          WTF::RefCounted<WebKit::BrowsingWarning>::deref(v11, v12);
        }

        return v7;
      }
    }

    if (a1 == 1)
    {
      if (a2)
      {
        [a2 warning];
        v11 = v14;
      }

      else
      {
        v11 = 0;
      }

      if (*(v11 + 88) != 1)
      {
        if (*(v11 + 88))
        {
          goto LABEL_51;
        }

        if (v9 == 1)
        {
          v6 = v4;
        }

        else
        {
          v6 = v7;
        }
      }

      WTF::RefCounted<WebKit::BrowsingWarning>::deref(v11, v8);
      return v6;
    }

    if (a2)
    {
      [a2 warning];
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    if (*(v11 + 88))
    {
      if (*(v11 + 88) != 1)
      {
        goto LABEL_51;
      }

      v4 = v6;
    }

LABEL_49:
    WTF::RefCounted<WebKit::BrowsingWarning>::deref(v11, v8);
    return v4;
  }

  result = 128;
  __break(0xC471u);
  return result;
}

void sub_19D63E29C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebKit::BrowsingWarning *a10)
{
  if (a10)
  {
    WTF::RefCounted<WebKit::BrowsingWarning>::deref(a10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D63EC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
  }

  if (a9)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t makeLabel(NSAttributedString *a1, uint64_t a2)
{
  v4 = objc_opt_new();
  [v4 setAttributedText:a2];
  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:0];
  result = [v4 setAccessibilityTraits:*MEMORY[0x1E69DD9C8]];
  a1->super.isa = v4;
  return result;
}

void sub_19D63EE64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void *makeButton(unsigned int a1, __CFString *a2, uint64_t a3)
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (a1 == 7)
  {
    WebCore::copyLocalizedString(&arg, @"Continue", a2);
    v6 = arg;
    arg = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    CFAutorelease(v6);
    v8 = arg;
    arg = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else if (a1 == 5)
  {
    WebCore::copyLocalizedString(&arg, @"Show Details", a2);
    v6 = arg;
    arg = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    CFAutorelease(v6);
    v7 = arg;
    arg = 0;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
    WebCore::copyLocalizedString(&arg, @"Go Back", a2);
    v6 = arg;
    arg = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    CFAutorelease(v6);
    v9 = arg;
    arg = 0;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v10 = v6;
LABEL_15:
  v11 = [MEMORY[0x1E69DC738] buttonWithType:{1, arg}];
  v12 = objc_alloc(MEMORY[0x1E696AAB0]);
  v13 = *MEMORY[0x1E69DB758];
  v19[0] = &unk_1F11844A0;
  v14 = *MEMORY[0x1E69DB750];
  v18[0] = v13;
  v18[1] = v14;
  v19[1] = [MEMORY[0x1E69DC888] whiteColor];
  v18[2] = *MEMORY[0x1E69DB650];
  v19[2] = colorForItem(a1, a2);
  v18[3] = *MEMORY[0x1E69DB648];
  v19[3] = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v15 = [v12 initWithString:v6 attributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v19, v18, 4)}];
  [v11 setAttributedTitle:v15 forState:0];
  [v11 addTarget:a2 action:a3 forControlEvents:64];
  if (v15)
  {
  }

  if (v6)
  {
  }

  return v11;
}

void sub_19D63F0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D63F5D4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WebKit::BrowsingWarning *a20)
{
  if (a20)
  {
    WTF::RefCounted<WebKit::BrowsingWarning>::deref(a20, a2);
  }

  if (v21)
  {
  }

  if (v20)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19D63F968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D63FE5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebKit::ContinueUnsafeLoad,WTF::URL>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 40) != 255)
    {
      v3 = *a1;
      *a1 = 0;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v3, a2);
        }
      }
    }
  }

  *(a1 + 40) = -1;
  return a1;
}

WebKit::BrowsingWarning *WTF::RefCounted<WebKit::BrowsingWarning>::deref(WebKit::BrowsingWarning *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebKit::BrowsingWarning::~BrowsingWarning(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebKit::BrowsingWarning::~BrowsingWarning(WebKit::BrowsingWarning *this, WTF::StringImpl *a2)
{
  if (!*(this + 88))
  {
    v3 = *(this + 10);
    *(this + 10) = 0;
    if (v3)
    {
    }
  }

  *(this + 88) = -1;
  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, a2);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

id WebKit::objectForKey<NSNumber>(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  v3 = WTF::dynamic_objc_cast<NSNumber>(v2);

  return v3;
}

uint64_t isArrayOfDomainsValid(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = *v9;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if (([*(*(&v8 + 1) + 8 * v5) canBeConvertedToEncoding:{1, v8}] & 1) == 0)
          {
            v6 = 0;
            goto LABEL_12;
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t isArrayOfExcludedDomainsValid(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = *v8;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v8 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (([*(*(&v7 + 1) + 8 * v4) canBeConvertedToEncoding:{1, v7}] & 1) == 0)
        {
          v5 = 0;
          goto LABEL_11;
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v5 = 1;
LABEL_11:

  return v5;
}

uint64_t isArrayOfRequestMethodsValid(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = *v11;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v10 + 1) + 8 * v5);
          v7 = validRequestMethods();
          LOBYTE(v6) = [v7 containsObject:{v6, v10}];

          if ((v6 & 1) == 0)
          {
            v8 = 0;
            goto LABEL_12;
          }

          ++v5;
        }

        while (v3 != v5);
        v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

    v8 = 1;
LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id validRequestMethodsString(void)
{
  if (qword_1ED641790 != -1)
  {
    dispatch_once(&qword_1ED641790, &__block_literal_global_804);
  }

  v1 = qword_1ED641788;

  return v1;
}

void sub_19D645318(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

uint64_t priorityForRuleType(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"allow"])
  {
    v2 = 5;
  }

  else if ([(NSString *)v1 isEqualToString:@"allowAllRequests"])
  {
    v2 = 4;
  }

  else if ([(NSString *)v1 isEqualToString:@"block"])
  {
    v2 = 3;
  }

  else if ([(NSString *)v1 isEqualToString:@"upgradeScheme"])
  {
    v2 = 2;
  }

  else if ([(NSString *)v1 isEqualToString:@"redirect"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [(NSString *)v1 isEqualToString:@"modifyHeaders"]- 1;
  }

  return v2;
}

void ___ZL25validRequestMethodsStringv_block_invoke()
{
  v0 = validRequestMethods();
  v9 = [v0 allObjects];

  v1 = [v9 subarrayWithRange:{0, objc_msgSend(v9, "count") - 1}];
  v2 = [v1 componentsJoinedByString:{@", "}];
  v3 = qword_1ED641788;
  qword_1ED641788 = v2;

  v4 = MEMORY[0x1E696AEC0];
  v5 = qword_1ED641788;
  v6 = [v9 lastObject];
  v7 = [v4 stringWithFormat:@"%@, and %@", v5, v6];
  v8 = qword_1ED641788;
  qword_1ED641788 = v7;
}

id validRequestMethods(void)
{
  if (qword_1ED6417A0 != -1)
  {
    dispatch_once(&qword_1ED6417A0, &__block_literal_global_812);
  }

  v1 = qword_1ED641798;

  return v1;
}

void ___ZL19validRequestMethodsv_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"get", @"head", @"options", @"trace", @"put", @"delete", @"post", @"patch", @"connect", 0}];
  v1 = qword_1ED641798;
  qword_1ED641798 = v0;
}

id WTF::dynamic_objc_cast<NSNumber>(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (isType = WTF::ObjCTypeCastTraits<NSNumber>::isType(v1), v2, isType))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t WTF::ObjCTypeCastTraits<NSNumber>::isType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id WTF::dynamic_objc_cast<NSDictionary>(void *a1)
{
  v1 = a1;
  if (WTF::is_objc<NSDictionary,objc_object>(v1))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t WTF::is_objc<NSDictionary,objc_object>(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    isType = WTF::ObjCTypeCastTraits<NSDictionary>::isType(v1);
  }

  else
  {
    isType = 0;
  }

  return isType;
}

uint64_t WTF::ObjCTypeCastTraits<NSDictionary>::isType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id WTF::dynamic_objc_cast<NSString>(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (isType = WTF::ObjCTypeCastTraits<NSString>::isType(v1), v2, isType))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t WTF::ObjCTypeCastTraits<NSString>::isType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_19D646110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WebKit::SQLiteDatabaseFetch<>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[_WKWebExtensionSQLiteStatement alloc] initWithDatabase:v3 query:v4];
  v6 = [(_WKWebExtensionSQLiteStatement *)v5 fetch];

  return v6;
}

uint64_t WebKit::_SQLiteDatabaseExecuteAndReturnError<>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14 = 0;
  v7 = [[_WKWebExtensionSQLiteStatement alloc] initWithDatabase:v5 query:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [(_WKWebExtensionSQLiteStatement *)v7 execute];
    [(_WKWebExtensionSQLiteStatement *)v7 invalidate];
    if ((v10 - 100) >= 2 && v10 != 0)
    {
      [v5 reportErrorWithCode:v10 statement:-[_WKWebExtensionSQLiteStatement handle](v7 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v12 = v8;
      *a2 = v9;
    }

    v10 = [v9 code];
  }

  return v10;
}

void sub_19D6488B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_19D64AC8C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_19D64AE48(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  if (a9)
  {
    if (atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a9, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D64B870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = _WKWebExtensionSQLiteStatement;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_19D64CC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _WKWebExtensionSQLiteStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = *a1;
  v3 = a2[1];
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  v7[0] = *a2;
  v7[1] = v5;
  if (!(v5 >> 31))
  {
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(&v8, v7, a3);
  }

  result = 161;
  __break(0xC471u);
  return result;
}

uint64_t WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = *(v3 + 4);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  if (((v4 | v5) & 0x80000000) != 0 || (result = (v4 + v5), __OFADD__(v4, v5)))
  {
    *a3 = 0;
  }

  else
  {
    v6 = !v3 || (*(v3 + 16) & 4) != 0;
    return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(result, v6, v3, *a2, v5, a3);
  }

  return result;
}

uint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, int8x16_t *a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v9 = result;
  v11 = result;
  if (!a2)
  {
    if (result)
    {
      if (result <= 0x7FFFFFEF)
      {
        result = WTF::tryFastCompactMalloc((2 * result + 20));
        v12 = v16;
        if (v16)
        {
          v15 = (v16 + 5);
          *v16 = 2;
          v12[1] = v9;
          *(v12 + 1) = v12 + 5;
          v12[4] = 0;
          result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(v15, v11, a3, a4, a5);
        }

        goto LABEL_10;
      }

LABEL_13:
      v12 = 0;
      goto LABEL_10;
    }

LABEL_14:
    v12 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_10;
  }

  if (!result)
  {
    goto LABEL_14;
  }

  if ((result & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  result = WTF::tryFastCompactMalloc((result + 20));
  v12 = v16;
  if (v16)
  {
    v13 = v16 + 5;
    *v16 = 2;
    v12[1] = v9;
    *(v12 + 1) = v12 + 5;
    v12[4] = 4;
    v16 = a3;
    result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<unsigned char>(&v16, v12 + 20);
    v14 = v16;
    if (v16)
    {
      v14 = v16[1];
      if (v14 > v9)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    if (a5)
    {
      if (a5 != 1)
      {
        result = memcpy(v13 + v14, a4, a5);
        goto LABEL_10;
      }

LABEL_16:
      *(v13 + v14) = a4->i8[0];
    }
  }

LABEL_10:
  *a6 = v12;
  return result;
}

void sub_19D64EDD0(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>>(char *__dst, unint64_t a2, uint64_t a3, int8x16_t *a4, unint64_t a5)
{
  v22 = a3;
  result = WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(&v22, __dst);
  v10 = v22;
  if (v22 && (v10 = *(v22 + 4), a2 < v10))
  {
    __break(1u);
  }

  else
  {
    v11 = &__dst[2 * v10];
    v12 = &v11[2 * a5];
    if (a5 >= 0x40)
    {
      v13 = &v11[2 * (a5 & 0x7FFFFFFFFFFFFFC0)];
      v14 = 0uLL;
      do
      {
        v23.val[0] = *a4;
        v15 = a4[1];
        v24.val[0] = a4[2];
        v16 = a4[3];
        a4 += 4;
        v17 = v16;
        v24.val[1] = 0uLL;
        v25.val[0] = v15;
        v23.val[1] = 0uLL;
        v18 = v11;
        vst2q_s8(v18, v23);
        v18 += 32;
        v25.val[1] = 0uLL;
        vst2q_s8(v18, v25);
        v19 = v11 + 64;
        vst2q_s8(v19, v24);
        v20 = v11 + 96;
        vst2q_s8(v20, *(&v14 - 1));
        v11 += 128;
      }

      while (v11 != v13);
      v11 = v13;
    }

    while (v11 != v12)
    {
      v21 = a4->u8[0];
      a4 = (a4 + 1);
      *v11 = v21;
      v11 += 2;
    }
  }

  return result;
}

uint64_t *WTF::StringTypeAdapter<WTF::StringImpl *,void>::writeTo<char16_t>(uint64_t *result, char *__dst)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 4);
    if ((*(v2 + 16) & 4) != 0)
    {
      v5 = &__dst[2 * v4];
      if (v4 >= 0x40)
      {
        v6 = __dst;
        __dst += 2 * (v4 & 0xFFFFFFC0);
        v7 = 0uLL;
        do
        {
          v15.val[0] = *v3;
          v8 = v3[1];
          v16.val[0] = v3[2];
          v9 = v3[3];
          v3 += 4;
          v10 = v9;
          v16.val[1] = 0uLL;
          v17.val[0] = v8;
          v15.val[1] = 0uLL;
          v11 = v6;
          vst2q_s8(v11, v15);
          v11 += 32;
          v17.val[1] = 0uLL;
          vst2q_s8(v11, v17);
          v12 = v6 + 64;
          vst2q_s8(v12, v16);
          v13 = v6 + 96;
          vst2q_s8(v13, *(&v7 - 1));
          v6 += 128;
        }

        while (v6 != __dst);
      }

      while (__dst != v5)
      {
        v14 = v3->u8[0];
        v3 = (v3 + 1);
        *__dst = v14;
        __dst += 2;
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        *__dst = v3->i16[0];
      }

      else
      {
        return memcpy(__dst, v3, 2 * v4);
      }
    }
  }

  return result;
}

id WTF::dynamic_objc_cast<NSArray>(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (isType = WTF::ObjCTypeCastTraits<NSArray>::isType(v1), v2, isType))
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WTF::ObjCTypeCastTraits<NSArray>::isType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t toWebExtensionWebRequestResourceType(uint64_t a1)
{
  v1 = *(a1 + 121);
  result = 2;
  switch(v1)
  {
    case 0:
      result = 12;
      break;
    case 1:
      result = 14;
      break;
    case 2:
      result = 9;
      break;
    case 3:
      result = *(a1 + 32) ^ 1;
      break;
    case 4:
    case 13:
      result = 7;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 4;
      break;
    case 7:
      result = 10;
      break;
    case 8:
      result = 6;
      break;
    case 10:
      result = 8;
      break;
    case 11:
      result = 3;
      break;
    case 12:
      return result;
    case 14:
      result = 13;
      break;
    default:
      result = 15;
      break;
  }

  return result;
}

WTF::StringImpl *WebKit::AdTaggingListHandler::loadContent(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  {
  }

  WTF::URL::URL(v11, a2);
  v4 = *a3;
  *a3 = 0;
  v12 = v4;
  v5 = WTF::fastMalloc(0x38);
  *v5 = &unk_1F10E6280;
  WTF::URL::URL((v5 + 1), v11);
  v6 = v12;
  v12 = 0;
  v5[6] = v6;
  v13 = v5;
  WebKit::ResourceMonitorURLsController::getSource(&WebKit::ResourceMonitorURLsController::singleton(void)::sharedInstance, &v13);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  result = v11[0];
  v11[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

void sub_19D651DC8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *(v15 - 24);
  *(v15 - 24) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Detail::CallableWrapper<WebKit::AdTaggingListHandler::loadContent(WTF::URL,WTF::CompletionHandler<void ()(WebCore::ResourceResponse &&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>> &&)> &&)::{lambda(WTF::String &&)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceResponse &&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>> &&)> &>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10E6280;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AdTaggingListHandler::loadContent(WTF::URL,WTF::CompletionHandler<void ()(WebCore::ResourceResponse &&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>> &&)> &&)::{lambda(WTF::String &&)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceResponse &&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>> &&)> &>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10E6280;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

unsigned int *WTF::Detail::CallableWrapper<WebKit::AdTaggingListHandler::loadContent(WTF::URL,WTF::CompletionHandler<void ()(WebCore::ResourceResponse &&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>> &&)> &&)::{lambda(WTF::String &&)#1},void,WTF::CompletionHandler<void ()(WebCore::ResourceResponse &&,WTF::Ref<WebCore::SharedBuffer,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>> &&)> &>::call(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 8);
    v3 = *(v3 + 4);
  }

  else
  {
    v4 = 0;
  }

  v12[0] = v4;
  v12[1] = v3;
  WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>(&v16);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v11 = v17;
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v10 = v17;
  WebCore::ResourceResponseBase::ResourceResponseBase();
  v14 = 0;
  v15 = 0;
  v13 = v13 & 0xF1 | 4;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v5);
  }

  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  (*(*v6 + 16))(v6, v12, &v16);
  (*(*v6 + 8))(v6);
  v8 = v14;
  v14 = 0;
  if (v8)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v12, v7);
  result = v16;
  v16 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D65216C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  (*(*v43 + 8))(v43);
  v47 = a43;
  a43 = 0;
  if (v47)
  {
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(&a12, v46);
  v48 = *(v44 - 48);
  *(v44 - 48) = 0;
  if (v48)
  {
    if (atomic_fetch_add(v48 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v48 + 2);
      (*(*v48 + 8))(v48);
    }
  }

  _Unwind_Resume(a1);
}

unsigned int *WebCore::SharedBuffer::create<std::span<unsigned char const,18446744073709551615ul>>@<X0>(uint64_t *a1@<X8>)
{
  WebCore::FragmentedSharedBuffer::create();
  v2 = WTF::fastMalloc(0x40);
  MEMORY[0x19EB04740](v2, &v4);
  *a1 = v2;
  result = v4;
  v4 = 0;
  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_19D6522FC(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10)
{
  WTF::fastFree(v10, a2);
  if (a10)
  {
    if (atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, a10 + 2);
      (*(*a10 + 8))(a10);
    }
  }

  _Unwind_Resume(a1);
}

void WebCore::ResourceResponseBase::~ResourceResponseBase(WebCore::ResourceResponseBase *this, WTF::StringImpl *a2)
{
  v3 = *(this + 18);
  *(this + 18) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  if (*(this + 128) == 1)
  {
    v12 = *(this + 15);
    *(this + 15) = 0;
    if (v12)
    {
      CFRelease(v12);
    }
  }

  v4 = *(this + 14);
  *(this + 14) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(v4, a2);
  }

  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 24, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 80, v5);
  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v6);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v6);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v6);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v6);
  }

  v11 = *this;
  *this = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v6);
    }
  }
}

uint64_t WTF::ThreadSafeRefCounted<WTF::Box<WebCore::NetworkLoadMetrics>::Data,(WTF::DestructionThread)0>::deref(uint64_t this, WTF::StringImpl *a2)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (add == 1)
  {
    v4 = this;
    atomic_store(add, this);
    v5 = *(this + 128);
    *(v4 + 16) = 0;
    if (v5)
    {
      WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(v5, a2);
    }

    v6 = *(v4 + 12);
    *(v4 + 12) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    return WTF::fastFree(v4, a2);
  }

  return this;
}

WebCore::AdditionalNetworkLoadMetricsForWebInspector *WTF::RefCounted<WebCore::AdditionalNetworkLoadMetricsForWebInspector>::deref(WebCore::AdditionalNetworkLoadMetricsForWebInspector *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebCore::AdditionalNetworkLoadMetricsForWebInspector::~AdditionalNetworkLoadMetricsForWebInspector(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

void WebCore::AdditionalNetworkLoadMetricsForWebInspector::~AdditionalNetworkLoadMetricsForWebInspector(WebCore::AdditionalNetworkLoadMetricsForWebInspector *this, WTF::StringImpl *a2)
{
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 14, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 40, v3);
  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v4);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

unsigned int *WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(unsigned int *a1, WTF::StringImpl *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v6 = 16 * v3;
    v7 = (*a1 + 8);
    do
    {
      v8 = *v7;
      *v7 = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      v9 = *(v7 - 1);
      *(v7 - 1) = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v7 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    a1[2] = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

{
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(a1, a2);
  return a1;
}

WTF::StringImpl *WTF::VectorDestructor<true,WebCore::HTTPHeaderMap::CommonHeader>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = v3[1];
      v3[1] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 += 2;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WebKit::AdditionalFonts::additionalFonts@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  v4 = a2[1];
  v47 = *a2;
  v48 = v4;
  v5 = *(a2 + 32);
  v33 = 0;
  v34 = 0;
  v6 = *(result + 12);
  if (!v6)
  {
LABEL_45:
    WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v33, HIDWORD(v34));
    *a3 = v33;
    v31 = v34;
    v33 = 0;
    v34 = 0;
    a3[1] = v31;
    return WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v33, v32);
  }

  if (v6 < 0x5555556)
  {
    v7 = result;
    LODWORD(v34) = 48 * v6 / 0x30u;
    v33 = WTF::fastMalloc((48 * v6));
    v8 = *(v7 + 12);
    if (v8)
    {
      v9 = 40 * v8;
      v10 = *v7;
      while (1)
      {
        LOBYTE(v45) = 0;
        v46 = 0;
        if (v5)
        {
          WTF::URL::fileSystemPath(&v42, v10);
          if (v42)
          {
            v11 = *(v42 + 8);
            v12 = *(v42 + 4) | (((*(v42 + 16) >> 2) & 1) << 32);
          }

          else
          {
            v11 = 0;
            v12 = 0x100000000;
          }

          *v40 = v47;
          *&v40[16] = v48;
          WebKit::SandboxExtension::createHandleForReadByAuditToken(v11, v12, v40, &v43);
          std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(&v45, &v43);
          if (v44 == 1)
          {
            WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v43);
          }

          v14 = v42;
          v42 = 0;
          if (!v14)
          {
            goto LABEL_17;
          }
        }

        else
        {
          WTF::URL::fileSystemPath(&v43, v10);
          WebKit::SandboxExtension::createHandle(0, v40);
          std::__optional_storage_base<WebKit::SandboxExtensionHandle,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::SandboxExtensionHandle,false>>(&v45, v40);
          if (v40[8] == 1)
          {
            WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v40);
          }

          v14 = v43;
          v43 = 0;
          if (!v14)
          {
            goto LABEL_17;
          }
        }

        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v13);
        }

LABEL_17:
        if (v46 == 1)
        {
          v15 = *v10;
          if (*v10)
          {
            atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
            v16 = *(v10 + 24);
            *&v40[8] = *(v10 + 8);
            *&v40[24] = v16;
            if ((v46 & 1) == 0)
            {
              __break(1u);
            }
          }

          else
          {
            v19 = *(v10 + 8);
            *&v40[24] = *(v10 + 24);
            *&v40[8] = v19;
          }

          v20 = v45;
          v45 = 0;
          *v40 = 0;
          v35 = v15;
          v36 = *&v40[8];
          v37 = *&v40[24];
          *&v40[8] &= ~1u;
          v41[0] = 0;
          v38 = v20;
        }

        else
        {
          v17 = *v10;
          if (*v10)
          {
            atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
          }

          v18 = *(v10 + 8);
          *&v40[24] = *(v10 + 24);
          *&v40[8] = v18;
          *v40 = 0;
          v35 = v17;
          v36 = v18;
          v37 = *&v40[24];
          *&v40[8] = v18 & 0xFFFFFFFE;
          v41[0] = 0;
          v38 = 0;
        }

        v39 = 1;
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v41);
        v22 = *v40;
        *v40 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v21);
        }

        if (v46 == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v45);
        }

        if (v39 == 1)
        {
          v23 = v35;
          v35 = 0;
          *v40 = v23;
          *&v40[8] = v36;
          *&v40[24] = v37;
          LODWORD(v36) = v36 & 0xFFFFFFFE;
          v24 = v38;
          v38 = 0;
          v41[0] = v24;
          if (HIDWORD(v34) == v34)
          {
            WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FontData>(&v33, v40);
          }

          else
          {
            WTF::URL::URL(v33 + 48 * HIDWORD(v34), v40);
            v25 = v41[0];
            v41[0] = 0;
            *(v26 + 40) = v25;
            ++HIDWORD(v34);
          }

          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v41);
          v28 = *v40;
          *v40 = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v27);
          }

          if (v39)
          {
            WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v38);
            v30 = v35;
            v35 = 0;
            if (v30)
            {
              if (atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v30, v29);
              }
            }
          }
        }

        v10 += 40;
        v9 -= 40;
        if (!v9)
        {
          goto LABEL_45;
        }
      }
    }

    goto LABEL_45;
  }

  __break(0xC471u);
  return result;
}

void sub_19D652B60(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, WTF::StringImpl *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a10, a2);
  WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v38);
  _Unwind_Resume(a1);
}

uint64_t WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorTypeOperations<WebKit::FontData>::destruct(*a1, (*a1 + 48 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void sub_19D652CD0(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::FontData>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v3 + 5);
      result = *v3;
      *v3 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v4);
        }
      }

      v3 += 6;
    }

    while (v3 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::FontData>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  WTF::URL::URL(*a1 + 48 * *(a1 + 12), v3);
  v4 = v3[5];
  v3[5] = 0;
  *(v5 + 40) = v4;
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 48 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    if (a2 >= 0x5555556)
    {
      __break(0xC471u);
      JUMPOUT(0x19D652F34);
    }

    v3 = *a1;
    v4 = (*a1 + 48 * *(a1 + 12));
    v5 = 48 * a2;
    v6 = WTF::fastMalloc((48 * a2));
    *(a1 + 8) = v5 / 0x30;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::FontData>::move(v3, v4, v6);
    if (v3)
    {
      if (*a1 == v3)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }
  }

  return 1;
}

WTF::StringImpl *WTF::VectorMover<false,WebKit::FontData>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      WTF::URL::URL(a3, v5);
      v6 = *(v5 + 5);
      *(v5 + 5) = 0;
      *(a3 + 40) = v6;
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v5 + 5);
      result = *v5;
      *v5 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v7);
        }
      }

      a3 += 48;
      v5 = (v5 + 48);
    }

    while (v5 != a2);
  }

  return result;
}

unsigned int *WTF::Vector<WebKit::FontData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(unsigned int *result, unint64_t this)
{
  if (result[2] > this)
  {
    v3 = result;
    v4 = result[3];
    if (v4 > this)
    {
      result = WTF::VectorTypeOperations<WebKit::FontData>::destruct((*result + 48 * this), (*result + 48 * v4));
      *(v3 + 12) = this;
      LODWORD(v4) = this;
    }

    v5 = *v3;
    if (this)
    {
      if (this >= 0x5555556)
      {
        __break(0xC471u);
        return result;
      }

      v6 = (48 * this);
      result = WTF::fastMalloc(v6);
      *(v3 + 8) = v6 / 0x30;
      *v3 = result;
      if (result != v5)
      {
        result = WTF::VectorMover<false,WebKit::FontData>::move(v5, (v5 + 48 * v4), result);
      }
    }

    if (v5)
    {
      if (*v3 == v5)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      return WTF::fastFree(v5, this);
    }
  }

  return result;
}

void IPC::ArgumentCoder<WTF::MachSendRightAnnotated,void>::encode(IPC::Encoder *a1, unsigned int *a2)
{
  WTF::MachSendRight::create(*a2);
  IPC::Encoder::addAttachment(a1, v7);
  v4 = *(a2 + 1);
  if (v4)
  {
    v6 = *v4++;
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::encode<IPC::Encoder>(a1, v4, v5);
  WTF::MachSendRight::~MachSendRight(v7);
}

uint64_t IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(IPC::Encoder *a1, uint64_t a2)
{
  result = IPC::Encoder::grow(a1, 8uLL, 8);
  if (v4 <= 7)
  {
    result = 1067;
    __break(0xC471u);
  }

  else
  {
    *result = a2;
  }

  return result;
}

void sub_19D653350(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF *a9, int a10)
{
  if (a9)
  {
    WTF::fastFree(a9, a2);
  }

  if (v10[4] == 1)
  {
    (*(*v10 + 8))(v10);
  }

  else
  {
    --v10[4];
  }

  _Unwind_Resume(exception_object);
}

void sub_19D653474(_Unwind_Exception *exception_object)
{
  if (v1[4] == 1)
  {
    (*(*v1 + 8))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

WebPushD::ApplePushServiceConnection *WebPushD::ApplePushServiceConnection::ApplePushServiceConnection(WebPushD::ApplePushServiceConnection *this, atomic_uint **a2)
{
  *(this + 4) = 1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  v4 = (this + 88);
  *(this + 14) = 0;
  *this = &unk_1F10E62A8;
  *(this + 1) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 15) = 0;
  v5 = objc_alloc(MEMORY[0x1E698CF30]);
  v6 = *a2;
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v15, v6);
    if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v7);
    }
  }

  else
  {
    v15 = &stru_1F1147748;
    v8 = &stru_1F1147748;
  }

  v9 = [v5 initWithEnvironmentName:*MEMORY[0x1E698CF20] namedDelegatePort:v15 queue:MEMORY[0x1E69E96A0]];
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
  }

  v11 = v15;
  v15 = 0;
  if (v11)
  {
  }

  v12 = [[_WKAPSConnectionDelegate alloc] initWithConnection:this];
  v13 = *(this + 12);
  *(this + 12) = v12;
  if (v13)
  {

    v12 = *(this + 12);
  }

  [*v4 setDelegate:v12];
  return this;
}

void sub_19D653650(_Unwind_Exception *a1, void *a2)
{
  v6 = *(v2 + 15);
  if (v6)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v6, a2);
  }

  if (*v4)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(*v4, a2);
  }

  v7 = *(v2 + 12);
  *(v2 + 12) = 0;
  if (v7)
  {
  }

  v8 = *v3;
  *v3 = 0;
  if (v8)
  {
  }

  WebPushD::PushServiceConnection::~PushServiceConnection(v2);
  _Unwind_Resume(a1);
}

void WebPushD::PushServiceConnection::~PushServiceConnection(WebPushD::PushServiceConnection *this)
{
  *this = &unk_1F10EAE18;
  v2 = *(this + 8);
  v3 = *(this + 9);
  v4 = *(this + 20);
  v5 = *(this + 7);
  v6 = v2 - v5;
  if (v2 >= v5)
  {
    v2 = v4 - v5;
    if (v4 >= v5)
    {
      if (v6 == -1)
      {
LABEL_9:
        v6 = v2;
        goto LABEL_10;
      }

      if (v2 >= v6)
      {
        goto LABEL_10;
      }
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > v4)
  {
    goto LABEL_8;
  }

  WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>>::destruct(*(this + 9), v2);
  v5 = *(this + 7);
  v6 = v4 - v5;
  if (v4 < v5)
  {
    goto LABEL_8;
  }

LABEL_10:
  WTF::VectorTypeOperations<std::pair<WTF::RetainPtr<NSString>,WTF::RetainPtr<NSDictionary>>>::destruct(v3 + 16 * v5, v6);
  v8 = *(this + 9);
  if (v8)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v8, v7);
  }

  v9 = *(this + 6);
  *(this + 6) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 4);
  if (v10)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    WTF::fastFree(v10, v7);
  }

  v11 = *(this + 3);
  *(this + 3) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (*(this + 4) == 1)
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v7);
  }

  else
  {
    __break(0xC471u);
  }
}

void sub_19D653844(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *(v2 + 72);
  if (v4)
  {
    *(v2 + 72) = 0;
    *(v2 + 80) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebPushD::ApplePushServiceConnection::~ApplePushServiceConnection(id *this)
{
  [this[11] setDelegate:0];
  v3 = this[15];
  if (v3)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v3, v2);
  }

  v4 = this[14];
  if (v4)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v4, v2);
  }

  v5 = this[12];
  this[12] = 0;
  if (v5)
  {
  }

  v6 = this[11];
  this[11] = 0;
  if (v6)
  {
  }

  WebPushD::PushServiceConnection::~PushServiceConnection(this);
}

{
  WebPushD::ApplePushServiceConnection::~ApplePushServiceConnection(this);

  bmalloc::api::tzoneFree(v1, v2);
}

void sub_19D6538DC(_Unwind_Exception *a1, void *a2)
{
  v4 = *(v2 + 15);
  if (v4)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v4, a2);
  }

  v5 = *(v2 + 14);
  if (v5)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::deallocateTable(v5, a2);
  }

  v6 = *(v2 + 12);
  *(v2 + 12) = 0;
  if (v6)
  {
  }

  v7 = *(v2 + 11);
  *(v2 + 11) = 0;
  if (v7)
  {
  }

  WebPushD::PushServiceConnection::~PushServiceConnection(v2);
  _Unwind_Resume(a1);
}

void WebPushD::ApplePushServiceConnection::subscribe(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 104);
  v5 = v4 + 1;
  *(a1 + 104) = v4 + 1;
  if (v4 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D653BC4);
  }

  v10 = *(a1 + 112);
  if (!v10)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand((a1 + 112));
    v10 = *(a1 + 112);
  }

  v11 = *(v10 - 8);
  v12 = 9 * ((v4 - (v5 << 15)) ^ ((v4 - (v5 << 15)) >> 10));
  v13 = (v12 ^ (v12 >> 6)) + ~((v12 ^ (v12 >> 6)) << 11);
  v14 = v11 & (v13 ^ HIWORD(v13));
  v15 = (v10 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v5;
    v19 = *a4;
    *a4 = 0;
    v20 = *(v15 + 1);
    *(v15 + 1) = v19;
    if (v20)
    {
      (*(*v20 + 8))(v20);
      v10 = *(a1 + 112);
    }

    v21 = *(v10 - 16);
    v22 = *(v10 - 12) + 1;
    *(v10 - 12) = v22;
    v23 = (v21 + v22);
    v24 = *(v10 - 4);
    if (v24 > 0x400)
    {
      if (v24 > 2 * v23)
      {
        goto LABEL_18;
      }
    }

    else if (3 * v24 > 4 * v23)
    {
      goto LABEL_18;
    }

    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(NSString *,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(NSString *,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand((a1 + 112));
    goto LABEL_18;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v5)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v11;
    v15 = (v10 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        *(v17 + 1) = 0;
        --*(v10 - 16);
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

LABEL_18:
  v25 = *(a1 + 88);
  WebPushD::makeTokenInfo(&v30, a2, a3);
  v26 = v30;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v27 = *(a1 + 8);
  atomic_fetch_add(v27, 1u);
  v28 = malloc_type_malloc(0x30uLL, 0x10E0040C46F1E65uLL);
  *v28 = MEMORY[0x1E69E9818];
  v28[1] = 50331650;
  v28[2] = WTF::BlockPtr<void ()(APSURLToken *,NSError *)>::fromCallable<WebPushD::ApplePushServiceConnection::subscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(NSString *,NSError *)> &&)::$_0>(WebPushD::ApplePushServiceConnection::subscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(NSString *,NSError *)> &&)::$_0)::{lambda(void *,APSURLToken *,NSError *)#1}::__invoke;
  v28[3] = &WTF::BlockPtr<void ()(APSURLToken *,NSError *)>::fromCallable<WebPushD::ApplePushServiceConnection::subscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(NSString *,NSError *)> &&)::$_0>(WebPushD::ApplePushServiceConnection::subscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(NSString *,NSError *)> &&)::$_0)::descriptor;
  v28[4] = v27;
  *(v28 + 10) = v5;
  [v25 requestURLTokenForInfo:v26 completion:v28];
  _Block_release(v28);
  v29 = v30;
  if (v30)
  {
  }
}

void sub_19D653BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  _Block_release(v10);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void WebPushD::makeTokenInfo(void *a1, atomic_uint **a2, uint64_t a3)
{
  v6 = objc_alloc(MEMORY[0x1E698CF38]);
  v7 = *a2;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v13, v7);
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v8);
    }
  }

  else
  {
    v13 = &stru_1F1147748;
    v9 = &stru_1F1147748;
  }

  v10 = v13;
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*a3 length:*(a3 + 12)];
  *a1 = [v6 initWithTopic:v10 vapidPublicKey:v11];
  if (v11)
  {
  }

  v12 = v13;
  v13 = 0;
  if (v12)
  {
  }
}

void sub_19D653D28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void WebPushD::ApplePushServiceConnection::unsubscribe(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 104);
  v5 = v4 + 1;
  *(a1 + 104) = v4 + 1;
  if (v4 == -2 || v4 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D653FE4);
  }

  v10 = *(a1 + 120);
  if (!v10)
  {
    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand((a1 + 120));
    v10 = *(a1 + 120);
  }

  v11 = *(v10 - 8);
  v12 = 9 * ((v4 - (v5 << 15)) ^ ((v4 - (v5 << 15)) >> 10));
  v13 = (v12 ^ (v12 >> 6)) + ~((v12 ^ (v12 >> 6)) << 11);
  v14 = v11 & (v13 ^ HIWORD(v13));
  v15 = (v10 + 16 * v14);
  v16 = *v15;
  if (!*v15)
  {
LABEL_13:
    *v15 = v5;
    v19 = *a4;
    *a4 = 0;
    v20 = *(v15 + 1);
    *(v15 + 1) = v19;
    if (v20)
    {
      (*(*v20 + 8))(v20);
      v10 = *(a1 + 120);
    }

    v21 = *(v10 - 16);
    v22 = *(v10 - 12) + 1;
    *(v10 - 12) = v22;
    v23 = (v21 + v22);
    v24 = *(v10 - 4);
    if (v24 > 0x400)
    {
      if (v24 > 2 * v23)
      {
        goto LABEL_18;
      }
    }

    else if (3 * v24 > 4 * v23)
    {
      goto LABEL_18;
    }

    WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::CompletionHandler<void ()(BOOL,NSError *)>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::CompletionHandler<void ()(BOOL,NSError *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::expand((a1 + 120));
    goto LABEL_18;
  }

  v17 = 0;
  v18 = 1;
  while (v16 != v5)
  {
    if (v16 == -1)
    {
      v17 = v15;
    }

    v14 = (v14 + v18) & v11;
    v15 = (v10 + 16 * v14);
    v16 = *v15;
    ++v18;
    if (!*v15)
    {
      if (v17)
      {
        *v17 = 0;
        *(v17 + 1) = 0;
        --*(v10 - 16);
        v15 = v17;
      }

      goto LABEL_13;
    }
  }

LABEL_18:
  v25 = *(a1 + 88);
  WebPushD::makeTokenInfo(&v30, a2, a3);
  v26 = v30;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v27 = *(a1 + 8);
  atomic_fetch_add(v27, 1u);
  v28 = malloc_type_malloc(0x30uLL, 0x10E0040C46F1E65uLL);
  *v28 = MEMORY[0x1E69E9818];
  v28[1] = 50331650;
  v28[2] = WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebPushD::ApplePushServiceConnection::unsubscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL,NSError *)> &&)::$_0>(WebPushD::ApplePushServiceConnection::unsubscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL,NSError *)> &&)::$_0)::{lambda(void *,BOOL,NSError *)#1}::__invoke;
  v28[3] = &WTF::BlockPtr<void ()(BOOL,NSError *)>::fromCallable<WebPushD::ApplePushServiceConnection::unsubscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL,NSError *)> &&)::$_0>(WebPushD::ApplePushServiceConnection::unsubscribe(WTF::String const&,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(BOOL,NSError *)> &&)::$_0)::descriptor;
  v28[4] = v27;
  *(v28 + 10) = v5;
  [v25 invalidateURLTokenForInfo:v26 completion:v28];
  _Block_release(v28);
  v29 = v30;
  if (v30)
  {
  }
}

void sub_19D654008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  _Block_release(v10);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

unsigned int *WebPushD::ApplePushServiceConnection::enabledTopics@<X0>(id *this@<X0>, unsigned int *a2@<X8>)
{
  v5 = [this[11] enabledTopics];
  v4 = &v5;
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(a2, [v5 count], &v4, 0);
}

unsigned int *WebPushD::ApplePushServiceConnection::ignoredTopics@<X0>(id *this@<X0>, unsigned int *a2@<X8>)
{
  v5 = [this[11] ignoredTopics];
  v4 = &v5;
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(a2, [v5 count], &v4, 0);
}

unsigned int *WebPushD::ApplePushServiceConnection::opportunisticTopics@<X0>(id *this@<X0>, unsigned int *a2@<X8>)
{
  v5 = [this[11] opportunisticTopics];
  v4 = &v5;
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(a2, [v5 count], &v4, 0);
}

unsigned int *WebPushD::ApplePushServiceConnection::nonWakingTopics@<X0>(id *this@<X0>, unsigned int *a2@<X8>)
{
  v5 = [this[11] nonWakingTopics];
  v4 = &v5;
  return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(a2, [v5 count], &v4, 0);
}

void WebPushD::ApplePushServiceConnection::setEnabledTopics(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  WTF::createNSArray<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a2, &v4);
  [v2 _setEnabledTopics:v4];
  v3 = v4;
  v4 = 0;
  if (v3)
  {
  }
}
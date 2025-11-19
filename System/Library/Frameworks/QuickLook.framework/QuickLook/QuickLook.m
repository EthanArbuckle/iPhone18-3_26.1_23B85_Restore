uint64_t sub_23A716DB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23A7EE844();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23A716DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8D78, &qword_23A7FC4C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A716E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8D78, &qword_23A7FC4C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A716ED4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A716EF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_23A716F90(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23A7A10C4(v2);
}

uint64_t sub_23A716FC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A717000()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23A7170C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9000, &qword_23A7FD058);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A71715C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A7171AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A7171E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23A71722C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A71726C()
{
  v1 = v0[3];

  sub_23A7A8BF8(v0[4], v0[5]);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23A7172AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A717344()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A71737C(id *a1)
{
  [*a1 stringEncoding];

  return sub_23A7EE884();
}

uint64_t sub_23A7173CC()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23A71743C()
{
  v1 = sub_23A7EDFE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A717520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_23A7EEAB4();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = sub_23A7EEAA4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23A71761C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = sub_23A7EEAB4();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = sub_23A7EEAA4();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 28);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_23A717734()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A717780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9QuickLook14QLGradientView_reversed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23A717800@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
  result = sub_23A7EE724();
  *a1 = v3;
  return result;
}

uint64_t sub_23A717854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A7178CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9910, &qword_23A7FD970);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A71795C()
{
  v1 = (type metadata accessor for PreviewApplication.PreviewSessionMap(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (type metadata accessor for PreviewSession(0) - 8);
  v6 = *(*v5 + 80);
  v23 = (v3 + v4 + v6) & ~v6;
  v25 = v2 | v6;
  v24 = (*(*v5 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
  v22 = *(*(v9 - 8) + 8);
  v22(v8, v9);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  v10 = *(v21 + 28);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  v20 = *(*(v11 - 8) + 8);
  v20(v8 + v10, v11);
  v12 = *(v8 + v5[7]);

  v13 = v5[8];
  v14 = sub_23A7EDFE4();
  v15 = *(*(v14 - 8) + 8);
  v15(v8 + v13, v14);
  v16 = *(v8 + v1[7]);
  swift_unknownObjectRelease();
  v17 = *(v8 + v1[8] + 8);

  v22(v0 + v23, v9);
  v20(v0 + v23 + *(v21 + 28), v11);
  v18 = *(v0 + v23 + v5[7]);

  v15(v0 + v23 + v5[8], v14);

  return MEMORY[0x2821FE8E8](v0, v24 + 8, v25 | 7);
}

uint64_t sub_23A717C20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9A48, &qword_23A7FDBB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v39 = type metadata accessor for PreviewApplication.PreviewSessionMap(0);
  v5 = *(*(v39 - 8) + 80);
  v6 = *(*(v39 - 8) + 64);
  v7 = type metadata accessor for PreviewSession(0);
  v8 = *(*(v7 - 8) + 80);
  v40 = *(*(v7 - 8) + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = v0 + v3;
  v12 = type metadata accessor for PreviewItem(0);
  if (!(*(*(v12 - 8) + 48))(v0 + v3, 1, v12))
  {
    v13 = *(v11 + 8);

    v37 = v4;
    v14 = *(v12 + 24);
    v15 = sub_23A7EDF64();
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
    v16 = *(v12 + 28);
    v17 = sub_23A7EDFE4();
    v18 = v11 + v16;
    v4 = v37;
    (*(*(v17 - 8) + 8))(v18, v17);
  }

  v38 = v2 | v5 | v8;
  v19 = (v3 + v4 + v5) & ~v5;
  v36 = (v19 + v6 + v8) & ~v8;
  v20 = v0 + v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9AD8, &qword_23A7FDBE8);
  v35 = *(*(v21 - 8) + 8);
  v35(v20, v21);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  v22 = *(v34 + 28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9AE0, &qword_23A7FDBF0);
  v33 = *(*(v23 - 8) + 8);
  v33(v20 + v22, v23);
  v24 = *(v20 + *(v7 + 20));

  v25 = v7;
  v26 = *(v7 + 24);
  v27 = sub_23A7EDFE4();
  v28 = *(*(v27 - 8) + 8);
  v28(v20 + v26, v27);
  v29 = *(v20 + *(v39 + 20));
  swift_unknownObjectRelease();
  v30 = *(v20 + *(v39 + 24) + 8);

  v35(v0 + v36, v21);
  v33(v0 + v36 + *(v34 + 28), v23);
  v31 = *(v0 + v36 + *(v25 + 20));

  v28(v0 + v36 + *(v25 + 24), v27);

  return MEMORY[0x2821FE8E8](v0, v36 + v40, v38 | 7);
}

uint64_t sub_23A718020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    if (*(*(type metadata accessor for PreviewItem.Source(0) - 8) + 84) == a2)
    {
      v9 = *(a3 + 24);
      v10 = sub_23A7EDF64();
      v11 = *(*(v10 - 8) + 48);
      v12 = a1 + v9;
    }

    else
    {
      v10 = sub_23A7EDFE4();
      v11 = *(*(v10 - 8) + 48);
      v12 = a1 + *(a3 + 28);
    }

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23A718144(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    if (*(*(type metadata accessor for PreviewItem.Source(0) - 8) + 84) == a3)
    {
      v7 = *(a4 + 24);
      v8 = sub_23A7EDF64();
      v9 = *(*(v8 - 8) + 56);
      v10 = v5 + v7;
    }

    else
    {
      v8 = sub_23A7EDFE4();
      v9 = *(*(v8 - 8) + 56);
      v10 = v5 + *(a4 + 28);
    }

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_23A718258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_23A7EDFE4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23A718388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA98A8, &qword_23A7FDBD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_23A7EDFE4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_23A7184BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PreviewSession(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23A718578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PreviewSession(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23A718630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7EDFE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23A7186F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23A7EDFE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23A7187B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A7EDF64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A718824(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A7EDF64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A718894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23A7EE4C4();
  *a1 = result;
  return result;
}

uint64_t sub_23A7188C0(uint64_t *a1)
{
  v1 = *a1;

  return sub_23A7EE4D4();
}

uint64_t sub_23A7188EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23A7EE4E4();
  *a1 = result;
  return result;
}

uint64_t sub_23A718918(uint64_t *a1)
{
  v1 = *a1;

  return sub_23A7EE4F4();
}

uint64_t sub_23A71896C()
{
  v1 = *(type metadata accessor for QLWebLocationBarView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_23A7EDF64();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23A718A44()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  MEMORY[0x23EE8D830](v0 + 40);
  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23A718AA0()
{
  v1 = sub_23A7EDF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();

  MEMORY[0x23EE8D830](v0 + 40);
  v7 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23A718B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A7EDF64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A718BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23A7EDF64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A718C78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23A718CD8()
{
  v1 = sub_23A7EDF64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23A718DC0()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23A718E0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23A7CD078(v4);
}

uint64_t sub_23A718E48()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A718E90()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A718F7C()
{
  MEMORY[0x23EE8D830](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A718FB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  if (*(v0 + 56))
  {
    v3 = *(v0 + 64);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23A719034()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A719078()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A7190B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A71910C()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23A719174()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A7191AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA0E0, &qword_23A7FEF40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A719260()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A719398()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  (*(v2 + 8))(v0 + v4);
  (*(v5 + 8))(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}

uint64_t sub_23A719490()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A7194C8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A719500(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  type metadata accessor for QLAppExtensionSceneBuilder._QLAppExtensionScene();

  return swift_getWitnessTable();
}

uint64_t sub_23A719564(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23A7195DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAA220, &qword_23A7FF1D8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23A719660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23A7CCDC8(v4);
}

uint64_t sub_23A719694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23A7EE504();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23A7196FC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_23A719A20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23A719D00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23A71A0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A71A810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A71A9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A71ADB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A71BA54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_23A71BFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A71C6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A71CDB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A71EF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak(va);
  objc_destroyWeak((v15 + 48));
  objc_destroyWeak((v16 - 112));
  _Unwind_Resume(a1);
}

void sub_23A71FB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A72169C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A722ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23A723A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23A724178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_23A726884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23A7278A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A729058(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23A729234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void QLPXAffineTransformDecomposeTranslationScaleRotation(uint64_t a1, void *a2, double *a3, double *a4, double *a5)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = atan2(v12, *a1);
  v15 = __sincos_stret(v14);
  if (fabs(v15.__cosval) <= fabs(v15.__sinval))
  {
    v16 = v12 / v15.__sinval;
    v17 = -*(a1 + 16) / v15.__sinval;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = v13 / v15.__cosval;
  v17 = *(a1 + 24) / v15.__cosval;
  if (a2)
  {
LABEL_5:
    *a2 = v10;
    a2[1] = v11;
  }

LABEL_6:
  if (a3)
  {
    *a3 = v16;
  }

  if (a4)
  {
    *a4 = v17;
  }

  if (a5)
  {
    *a5 = v14;
  }
}

double QLPXDerivative(double (**a1)(id, double), double a2)
{
  v3 = a2 + 0.03125;
  v4 = a1 + 2;
  v5 = a1[2];
  v6 = a1;
  v7 = v5(v3);
  v8 = (*v4)(v6, a2 + -0.03125);

  return (v7 - v8) * 16.0;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

double maxLoadingItemForItem(void *a1)
{
  v1 = a1;
  v2 = 0.0;
  if ([v1 useLoadingTimeout])
  {
    [v1 maxLoadingTime];
    if (v3 <= 0.0)
    {
      v2 = 0.75;
    }

    else
    {
      v2 = v3;
    }
  }

  return v2;
}

void sub_23A731B84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 128));
  _Unwind_Resume(a1);
}

void sub_23A731EAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_23A732DD8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 176));
  objc_destroyWeak((v1 - 168));
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23A73309C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_23A7343E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A734534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7346E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A734960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A735DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7364C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_23A736F88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23A73B84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23A73BA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23A7407AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7421C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float64_t QLConvertPointFromAnchorPointToNewAnchorPoint(float64x2_t *a1, float64x2_t a2, float64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  a2.f64[1] = a3;
  *&a2.f64[0] = *&vaddq_f64(vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a7 * a13), *a1, a6 * a12)), vsubq_f64(a2, vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a5 * a13), *a1, a4 * a12))));
  return a2.f64[0];
}

void sub_23A74A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t UIImageOrientationFromCGImageOrientation(int a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_23A7FC2B8[a1 - 2];
  }
}

void sub_23A74B5C0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Unwind_Resume(a1);
}

void sub_23A74BF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

id QLWaveformWithPowerLevels(uint64_t a1, unint64_t a2, void *a3, double a4)
{
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{a2 * 4.0, a4}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __QLWaveformWithPowerLevels_block_invoke;
  v12[3] = &unk_278B57F68;
  v13 = v7;
  v14 = a2;
  v15 = a1;
  v16 = a4;
  v9 = v7;
  v10 = [v8 imageWithActions:v12];

  return v10;
}

void __QLWaveformWithPowerLevels_block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFill];
  if (*(a1 + 40))
  {
    v2 = 0;
    do
    {
      v3 = *(*(a1 + 48) + 8 * v2) * *(a1 + 56) + -4.0;
      v4 = [MEMORY[0x277D759A0] mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = (*(a1 + 56) - fmax(round(v3 * v6) / v6, 2.0)) * 0.5;
      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v8 scale];
      v10 = v9;

      v11 = round(v10 * v7) / v10;
      v12 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v2 * 4.0 cornerRadius:{v11, 2.0, *(a1 + 56) - v11 * 2.0, 2.0}];
      [v12 fill];

      ++v2;
    }

    while (v2 < *(a1 + 40));
  }
}

void sub_23A74DD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __QLWaveformDeterminePowerLevelsForAsset_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __QLWaveformDeterminePowerLevelsForAsset_block_invoke_106;
    block[3] = &unk_278B58008;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v12 = v5;
    v15 = v6;
    v13 = v3;
    v16 = *(a1 + 56);
    v14 = *(a1 + 40);
    dispatch_async(v4, block);
  }

  else
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_ERROR, "No tracks found for asset %@ #Waveform", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __QLWaveformDeterminePowerLevelsForAsset_block_invoke_106(uint64_t a1)
{
  v80[3] = *MEMORY[0x277D85DE8];
  memset(&v78, 0, sizeof(v78));
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 duration];
  }

  time = v78;
  Seconds = CMTimeGetSeconds(&time);
  v4 = *(a1 + 56);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 8 * *(a1 + 56);
  v10 = MEMORY[0x28223BE20](v6);
  v11 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - v12;
  bzero(v11, v9);
  v69 = v13;
  bzero(v13, v9);
  bzero(v8, v9);
  v14 = [*(a1 + 40) objectAtIndex:0];
  v15 = *(a1 + 32);
  v76 = 0;
  v16 = [MEMORY[0x277CE6410] assetReaderWithAsset:v15 error:&v76];
  v17 = v76;
  if (v17 || !v16)
  {
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create an AVAssetReader to read the audio levels (error: %@)", v17];
    NSLog(&cfstr_SError.isa, "QLWaveformDeterminePowerLevelsForAsset_block_invoke", v24);
  }

  else
  {
    v62 = 0;
    v64 = &v61;
    v18 = *MEMORY[0x277CB8288];
    v79[0] = *MEMORY[0x277CB8280];
    v79[1] = v18;
    v19 = MEMORY[0x277CE6430];
    v80[0] = &unk_284D72F28;
    v80[1] = &unk_284D72F40;
    v79[2] = *MEMORY[0x277CB82A0];
    v80[2] = MEMORY[0x277CBEC28];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:3];
    v21 = v14;
    v22 = v16;
    v23 = v20;
    v63 = v21;
    v24 = [v19 assetReaderTrackOutputWithTrack:? outputSettings:?];

    [v24 setAlwaysCopiesSampleData:0];
    [v22 addOutput:v24];
    v61 = v22;
    [v22 startReading];
    v25 = [v24 copyNextSampleBuffer];
    if (v25)
    {
      v26 = v25;
      v66 = v71;
      v27 = -1;
      v65 = 3221225472;
      v67 = v24;
      do
      {
        FormatDescription = CMSampleBufferGetFormatDescription(v26);
        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
        CMSampleBufferGetPresentationTimeStamp(&time, v26);
        v30 = CMTimeGetSeconds(&time);
        CMSampleBufferGetDuration(&time, v26);
        v31 = CMTimeGetSeconds(&time);
        if (StreamBasicDescription->mBitsPerChannel == 16)
        {
          v32 = v31;
          memset(&time, 0, sizeof(time));
          blockBufferOut = 0;
          CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v26, 0, &time, 0x18uLL, 0, 0, 0, &blockBufferOut);
          value_low = LODWORD(time.value);
          if (LODWORD(time.value))
          {
            v34 = 0;
            mBytesPerFrame = StreamBasicDescription->mBytesPerFrame;
            do
            {
              v36 = &time.timescale + 4 * v34;
              v37 = v36[1];
              if (mBytesPerFrame <= v37)
              {
                v38 = 0;
                v39 = *(v36 + 1);
                v40 = v37 / mBytesPerFrame;
                mChannelsPerFrame = StreamBasicDescription->mChannelsPerFrame;
                v42 = 0.0;
                do
                {
                  if (mChannelsPerFrame)
                  {
                    v43 = (v30 + v42 / (v40 - 1) * v32) / (Seconds / v4);
                    if (v43 >= (*(a1 + 56) - 1))
                    {
                      v43 = (*(a1 + 56) - 1);
                    }

                    v44 = v43;
                    v45 = *&v11[8 * v43];
                    v46 = mChannelsPerFrame;
                    v47 = v38;
                    v48 = *&v8[8 * v44];
                    do
                    {
                      v49 = *(v39 + 2 * v47);
                      v50 = (v49 * v49) + v45 * v45 * v48++;
                      *&v50 = v50 / v48;
                      v45 = sqrtf(*&v50);
                      ++v47;
                      --v46;
                    }

                    while (v46);
                    v51 = (mChannelsPerFrame - 1) + 1 + *&v8[8 * v44];
                    *&v11[8 * v44] = v45;
                    *&v8[8 * v44] = v51;
                  }

                  v42 = v42 + 1.0;
                  ++v38;
                }

                while (v38 < v40);
              }

              ++v34;
            }

            while (v34 != value_low);
          }

          v52 = *(a1 + 56);
          v53 = v27++;
          if (v27 >= v52)
          {
            v27 = v53;
          }

          else
          {
            v68 = v53;
            while (1)
            {
              if (*&v8[8 * v27])
              {
                v54 = pow(fmax(*&v11[8 * v27] + -30.0, 0.0) / 10000.0, 0.7);
                *&v69[8 * v27] = v54;
                if (75 * (v27 / 0x4B) == v27 || v27 - v52 == -1)
                {
                  break;
                }
              }

              if (v52 == ++v27)
              {
                v27 = v68;
                goto LABEL_31;
              }
            }

            v56 = [MEMORY[0x277D75348] secondaryLabelColor];
            v57 = QLWaveformWithPowerLevels(v69, v52, v56, *(a1 + 64));

            block[0] = MEMORY[0x277D85DD0];
            block[1] = v65;
            v71[0] = __QLWaveformDeterminePowerLevelsForAsset_block_invoke_119;
            v71[1] = &unk_278B57FE0;
            v58 = *(a1 + 48);
            v74 = v27;
            v73 = v58;
            v72 = v57;
            v59 = v57;
            dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_31:
            v24 = v67;
          }

          CFRelease(blockBufferOut);
        }

        CFRelease(v26);
        v26 = [v24 copyNextSampleBuffer];
      }

      while (v26);
    }

    v14 = v63;
    v17 = v62;
    v16 = v61;
  }

  v60 = *MEMORY[0x277D85DE8];
}

void sub_23A74F0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A74FCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7526D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _QLShouldNotify()
{
  v11 = *MEMORY[0x277D85DE8];
  if ((_QLShouldNotify___QLDidDetermineShouldNotify & 1) == 0)
  {
    v0 = [MEMORY[0x277CCA8D8] mainBundle];
    v1 = [v0 bundleIdentifier];

    _QLShouldNotify___QLShouldNotifyFlag = [v1 hasPrefix:@"com.apple.quicklook"];
    _QLShouldNotify___QLDidDetermineShouldNotify = 1;
    v2 = MEMORY[0x277D43EF8];
    v3 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = @"NO";
      if (_QLShouldNotify___QLShouldNotifyFlag)
      {
        v4 = @"YES";
      }

      v7 = 138412546;
      v8 = v1;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_23A714000, v3, OS_LOG_TYPE_DEBUG, "Determining if should notify: Bundle identifier = %@, Should notify = %@ #Testing", &v7, 0x16u);
    }
  }

  result = _QLShouldNotify___QLShouldNotifyFlag;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void QLNotifySelector(const char *a1, void *a2)
{
  v3 = a2;
  v4 = NSStringFromSelector(a1);
  QLNotify(v4, v3);
}

void QLNotify(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (_QLShouldNotify())
  {
    v5 = [v4 mutableCopy];
    v6 = MEMORY[0x277CCABB0];
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSince1970];
    v9 = v8 * 1000.0;
    *&v9 = v9;
    v10 = [v6 numberWithFloat:v9];
    [v5 setObject:v10 forKey:@"_timestamp"];

    v11 = MEMORY[0x277D43EF8];
    v12 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412546;
      v16 = v3;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_23A714000, v12, OS_LOG_TYPE_DEBUG, "Sending notification %@ with context %@. #Testing", &v15, 0x16u);
    }

    v13 = +[QLNotificationCenter sharedInstance];
    [v13 postNotificationName:v3 userInfo:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_23A7558FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

id QLSLogHandle()
{
  v0 = MEMORY[0x277D43EF8];
  v1 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v1 = *v0;
  }

  return v1;
}

void sub_23A756900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7593E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A75A86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23A75AAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23A75E8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__SecTask *_QLGetStringEntitlement(const __CFString *a1)
{
  v1 = _QLCopyEntitlementValue(a1);
  if (v1)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v1))
    {
      CFRelease(v1);
      v1 = 0;
    }
  }

  return v1;
}

__SecTask *_QLCopyEntitlementValue(const __CFString *a1)
{
  result = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (result)
  {
    v3 = result;
    v4 = SecTaskCopyValueForEntitlement(result, a1, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

BOOL _QLGetBoolEntitlement(const __CFString *a1)
{
  v1 = _QLCopyEntitlementValue(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  TypeID = CFBooleanGetTypeID();
  v4 = TypeID == CFGetTypeID(v2) && CFEqual(v2, *MEMORY[0x277CBED28]) != 0;
  CFRelease(v2);
  return v4;
}

id _QLGetOpenInAppClaimBindingForDocumentProxy(void *a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v26 = 0;
    goto LABEL_38;
  }

  v43 = 0;
  v3 = [v1 availableClaimBindingsForMode:0 error:&v43];
  v4 = v43;
  if (!v3 || ![v3 count])
  {
    v22 = MEMORY[0x277D43EF8];
    v23 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v23 = *v22;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = v23;
      v25 = [v2 typeIdentifier];
      *buf = 138412546;
      v45 = v25;
      v46 = 2112;
      v47 = v4;
      _os_log_impl(&dword_23A714000, v24, OS_LOG_TYPE_ERROR, "Could not obtain Open In app for document proxy of content type %@. Error: %@ #Generic", buf, 0x16u);
    }

    v26 = 0;
    goto LABEL_37;
  }

  v5 = MEMORY[0x277D43F90];
  v6 = [v2 typeIdentifier];
  v42 = [v5 isIWorkDocumentType:v6];

  v7 = MEMORY[0x277D43F90];
  v8 = [v2 typeIdentifier];
  v9 = [v7 isOfficeDocumentType:v8];

  v10 = [v3 firstObject];
  v11 = [v10 bundleRecord];
  v12 = [v11 bundleIdentifier];
  v13 = [v12 isEqualToString:@"com.apple.iBooks"];

  v14 = [v11 bundleIdentifier];
  v15 = +[QLUtilitiesInternal getCurrentApplicationBundleIdentifierUsingEntitlement];
  LODWORD(v7) = [v14 isEqualToString:v15];

  if (v7)
  {
    v16 = MEMORY[0x277D43EF8];
    v17 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v17 = *v16;
    }

    v18 = v10;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    v19 = v17;
    v20 = [v11 bundleIdentifier];
    v21 = [v2 typeIdentifier];
    *buf = 138412802;
    v45 = v20;
    v46 = 2112;
    v47 = v2;
    v48 = 2112;
    v49 = v21;
    _os_log_impl(&dword_23A714000, v19, OS_LOG_TYPE_INFO, "First claiming app: %@ for document proxy: %@ of type: %@ supports Open In but is the current app, returning nil. #Generic", buf, 0x20u);

LABEL_34:
LABEL_35:
    v26 = 0;
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v11 supportsOpenInPlace])
  {
    v18 = v10;
    v34 = [v10 claimRecord];
    v35 = [v34 handlerRank];
    if (v35 == *MEMORY[0x277CC1F20])
    {

      if ((v42 | v9 | v13))
      {
        v36 = MEMORY[0x277D43EF8];
        v37 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          QLSInitLogging();
          v37 = *v36;
        }

        if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          goto LABEL_29;
        }

        v29 = v37;
        v30 = [v10 bundleRecord];
        v31 = [v30 bundleIdentifier];
        v32 = [v2 typeIdentifier];
        *buf = 138412802;
        v45 = v31;
        v46 = 2112;
        v47 = v2;
        v48 = 2112;
        v49 = v32;
        v33 = "First owner app: %@ for document proxy: %@ of type: %@, returning it. #Generic";
        goto LABEL_28;
      }
    }

    else
    {
    }

    v38 = MEMORY[0x277D43EF8];
    v39 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v39 = *v38;
    }

    if (!os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    v19 = v39;
    v20 = [v2 typeIdentifier];
    *buf = 138412546;
    v45 = v2;
    v46 = 2112;
    v47 = v20;
    _os_log_impl(&dword_23A714000, v19, OS_LOG_TYPE_INFO, "No valid first claim for document proxy %@, of type %@ #Generic", buf, 0x16u);
    goto LABEL_34;
  }

  v27 = MEMORY[0x277D43EF8];
  v28 = *MEMORY[0x277D43EF8];
  v18 = v10;
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v28 = *v27;
  }

  if (!os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    goto LABEL_29;
  }

  v29 = v28;
  v30 = [v10 bundleRecord];
  v31 = [v30 bundleIdentifier];
  v32 = [v2 typeIdentifier];
  *buf = 138412802;
  v45 = v31;
  v46 = 2112;
  v47 = v2;
  v48 = 2112;
  v49 = v32;
  v33 = "First claiming app: %@ for document proxy: %@ of type: %@ supports Open In, returning it. #Generic";
LABEL_28:
  _os_log_impl(&dword_23A714000, v29, OS_LOG_TYPE_INFO, v33, buf, 0x20u);

LABEL_29:
  v26 = v18;
LABEL_36:

LABEL_37:
LABEL_38:

  v40 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _QLGetOpenInAppClaimBindingForItem(void *a1)
{
  v1 = a1;
  if ([v1 previewItemType] == 2 || objc_msgSend(v1, "previewItemType") == 3)
  {
    v2 = 0;
  }

  else
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__7;
    v9 = __Block_byref_object_dispose__7;
    v10 = 0;
    v4 = v1;
    QLRunInMainThreadSync();
    v2 = v6[5];

    _Block_object_dispose(&v5, 8);
  }

  return v2;
}

void sub_23A7605E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23A7653F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7698D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23A7717A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23A771E18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_23A773A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7747F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A775038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A775C74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7762C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7764D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7777E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A777DA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_23A779BC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23A779CC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_23A77A284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23A77C5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A77C75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_23A77C8F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_23A77CD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_23A77D000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A77D0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_23A77D654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A77E6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A77EC5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23A77F43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v31 - 248));
  _Unwind_Resume(a1);
}

void sub_23A784840(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_23A784F70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23A785CB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_23A788518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A7897A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A78E828(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23A79102C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak((v19 - 120));
  _Unwind_Resume(a1);
}

void sub_23A79227C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_23A796AB8()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA8CE8);
  __swift_project_value_buffer(v0, qword_27DFA8CE8);
  return sub_23A7EE3A4();
}

uint64_t QLAccessoryViewWrapper.hostProxy.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8D78, &qword_23A7FC4C0);
  sub_23A7EE724();
  return v1;
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

uint64_t sub_23A796BBC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8D78, &qword_23A7FC4C0);
  result = sub_23A7EE724();
  *a1 = v3;
  return result;
}

uint64_t sub_23A796C0C(uint64_t *a1)
{
  v2 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8D78, &qword_23A7FC4C0);
  return sub_23A7EE734();
}

void (*QLAccessoryViewWrapper.hostProxy.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8D78, &qword_23A7FC4C0);
  *(v3 + 32) = sub_23A7EE714();
  return sub_23A796D2C;
}

void sub_23A796D2C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t QLAccessoryViewWrapper.$hostProxy.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8D78, &qword_23A7FC4C0);

  return MEMORY[0x282133B70](v0);
}

uint64_t QLAccessoryViewWrapper.init(hostProxy:)()
{
  type metadata accessor for QLAccessoryAppExtensionSceneProxy(0);
  sub_23A7980B0(&qword_27DFA8D80, type metadata accessor for QLAccessoryAppExtensionSceneProxy);

  return sub_23A7EE754();
}

id QLAccessoryViewWrapper.makeUIViewController(context:)()
{
  v1 = v0;
  v2 = type metadata accessor for QLAccessoryViewWrapper();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  if (qword_27DFA8CE0 != -1)
  {
    swift_once();
  }

  v12 = sub_23A7EE3B4();
  __swift_project_value_buffer(v12, qword_27DFA8CE8);
  sub_23A7979B4(v0, v11);
  v13 = sub_23A7EE394();
  v14 = sub_23A7EEB14();
  v15 = os_log_type_enabled(v13, v14);
  v36 = v9;
  v37 = v2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v35 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136315138;
    sub_23A7979B4(v11, v9);
    v19 = sub_23A7EE8B4();
    v21 = v20;
    sub_23A797A18(v11);
    v22 = sub_23A797A74(v19, v21, &v38);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_23A714000, v13, v14, "Configuring %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23EE8D760](v18, -1, -1);
    v23 = v17;
    v6 = v35;
    MEMORY[0x23EE8D760](v23, -1, -1);
  }

  else
  {

    sub_23A797A18(v11);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8D78, &qword_23A7FC4C0);
  sub_23A7EE724();
  v25 = v24;
  sub_23A7A10C4(v24);

  sub_23A7979B4(v1, v6);
  v26 = sub_23A7EE394();
  v27 = sub_23A7EEB14();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    sub_23A7979B4(v6, v36);
    v30 = sub_23A7EE8B4();
    v32 = v31;
    sub_23A797A18(v6);
    v33 = sub_23A797A74(v30, v32, &v38);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_23A714000, v26, v27, "Configured %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x23EE8D760](v29, -1, -1);
    MEMORY[0x23EE8D760](v28, -1, -1);
  }

  else
  {

    sub_23A797A18(v6);
  }

  return v25;
}

uint64_t type metadata accessor for QLAccessoryViewWrapper()
{
  result = qword_27DFA8D98;
  if (!qword_27DFA8D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A797280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7980B0(&qword_27DFA8E40, type metadata accessor for QLAccessoryViewWrapper);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23A797314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23A7980B0(&qword_27DFA8E40, type metadata accessor for QLAccessoryViewWrapper);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23A7973C4()
{
  sub_23A7980B0(&qword_27DFA8E40, type metadata accessor for QLAccessoryViewWrapper);
  sub_23A7EE5E4();
  __break(1u);
}

void *sub_23A79741C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23A797438(uint64_t a1, id *a2)
{
  result = sub_23A7EE824();
  *a2 = 0;
  return result;
}

uint64_t sub_23A7974B0(uint64_t a1, id *a2)
{
  v3 = sub_23A7EE834();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23A797530@<X0>(uint64_t *a1@<X8>)
{
  sub_23A7EE844();
  v2 = sub_23A7EE814();

  *a1 = v2;
  return result;
}

uint64_t sub_23A797574(uint64_t a1)
{
  v2 = sub_23A7980B0(&qword_27DFA8E30, type metadata accessor for DocumentAttributeKey);
  v3 = sub_23A7980B0(&qword_27DFA8E38, type metadata accessor for DocumentAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23A797630(uint64_t a1)
{
  v2 = sub_23A7980B0(&qword_27DFA8E20, type metadata accessor for DocumentType);
  v3 = sub_23A7980B0(&qword_27DFA8E28, type metadata accessor for DocumentType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23A7976EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23A7EE814();

  *a2 = v5;
  return result;
}

uint64_t sub_23A797734(uint64_t a1)
{
  v2 = sub_23A7980B0(&qword_27DFA8E80, type metadata accessor for DocumentReadingOptionKey);
  v3 = sub_23A7980B0(&qword_27DFA8E88, type metadata accessor for DocumentReadingOptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23A7977F0()
{
  v1 = *v0;
  v2 = sub_23A7EE844();
  v3 = MEMORY[0x23EE8BDA0](v2);

  return v3;
}

uint64_t sub_23A79782C()
{
  v1 = *v0;
  sub_23A7EE844();
  sub_23A7EE8E4();
}

uint64_t sub_23A797880()
{
  v1 = *v0;
  sub_23A7EE844();
  sub_23A7EEE84();
  sub_23A7EE8E4();
  v2 = sub_23A7EEEA4();

  return v2;
}

uint64_t sub_23A7978F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23A7EE844();
  v6 = v5;
  if (v4 == sub_23A7EE844() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23A7EEE04();
  }

  return v9 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23A7979B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QLAccessoryViewWrapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A797A18(uint64_t a1)
{
  v2 = type metadata accessor for QLAccessoryViewWrapper();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A797A74(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23A797B40(v11, 0, 0, 1, a1, a2);
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
    sub_23A79842C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23A797B40(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23A797C4C(a5, a6);
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
    result = sub_23A7EED04();
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

uint64_t sub_23A797C4C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23A797C98(a1, a2);
  sub_23A797DC8(&unk_284D5B3A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23A797C98(uint64_t a1, unint64_t a2)
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

  v6 = sub_23A797EB4(v5, 0);
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

  result = sub_23A7EED04();
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
        v10 = sub_23A7EE924();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23A797EB4(v10, 0);
        result = sub_23A7EECC4();
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

uint64_t sub_23A797DC8(uint64_t result)
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

  result = sub_23A797F28(result, v12, 1, v3);
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

void *sub_23A797EB4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8E48, &qword_23A7FC9E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23A797F28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8E48, &qword_23A7FC9E8);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23A7980B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23A79812C()
{
  sub_23A798198();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23A798198()
{
  if (!qword_27DFA8DA8)
  {
    type metadata accessor for QLAccessoryAppExtensionSceneProxy(255);
    v0 = sub_23A7EE764();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFA8DA8);
    }
  }
}

uint64_t sub_23A79842C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23A798528(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A798548(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_23A798694(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23A798710()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA8F60);
  __swift_project_value_buffer(v0, qword_27DFA8F60);
  return sub_23A7EE3A4();
}

id sub_23A798790()
{
  result = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:5];
  qword_27DFA8F78 = result;
  return result;
}

void sub_23A7987D4()
{
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  if (swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v0 = swift_dynamicCastObjCClass();
    if (v0)
    {
      v1 = v0;
      if (qword_27DFA8D08 != -1)
      {
        swift_once();
      }

      v2 = qword_27DFA8F78;
      swift_unknownObjectRetain();
      v3 = [v1 uuid];
      if (v3)
      {
        v4 = v3;
        [v2 setObject:v1 forKey:v3];

        swift_unknownObjectRelease_n();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_23A798944()
{
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_23A7989E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_23A798AE8()
{
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  v1 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_23A798B8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  *a2 = *(v3 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_23A798C38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE004();
}

uint64_t QLAppExtensionSceneProxy.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + 24) = 0;
  sub_23A7EE044();
  return v3;
}

uint64_t QLAppExtensionSceneProxy.init()()
{
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  sub_23A7EE044();
  return v0;
}

uint64_t sub_23A798D84(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x2822009F8](sub_23A798DA8, 0, 0);
}

void *sub_23A798DA8()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result setAllowInteractiveTransitions_];
    swift_unknownObjectRelease();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A799050(char a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_23A7A3804;

  return sub_23A798D84(a1);
}

void sub_23A79910C()
{
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_23A7EE814();
    [v1 setHostApplicationBundleIdentifier_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void *sub_23A799214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v10 = sub_23A7EE3B4();
  __swift_project_value_buffer(v10, qword_27DFA8F60);
  v11 = sub_23A7EE394();
  v12 = sub_23A7EEB24();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23A797A74(0xD00000000000005ALL, 0x800000023A80ACB0, &v19);
    _os_log_impl(&dword_23A714000, v11, v12, "Service side: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EE8D760](v14, -1, -1);
    MEMORY[0x23EE8D760](v13, -1, -1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v19 = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE004();

  swift_getKeyPath();
  v19 = v6;
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result configureWithNumberOfItems:a1 currentPreviewItemIndex:a2 itemProvider:a3 stateManager:a4 fullScreen:a5 & 1];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23A799558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v9 = sub_23A7EE3B4();
  __swift_project_value_buffer(v9, qword_27DFA8F60);
  v10 = sub_23A7EE394();
  v11 = sub_23A7EEB24();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_23A797A74(0xD00000000000004FLL, 0x800000023A80AD10, &v17);
    _os_log_impl(&dword_23A714000, v10, v11, "Service side: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EE8D760](v13, -1, -1);
    MEMORY[0x23EE8D760](v12, -1, -1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v17 = v5;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE004();

  swift_getKeyPath();
  v17 = v5;
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result configureWithNumberOfItems:a1 currentPreviewItemIndex:a2 itemProvider:a3 stateManager:a4];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23A79987C(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v6 = sub_23A7EE3B4();
  __swift_project_value_buffer(v6, qword_27DFA8F60);
  v7 = sub_23A7EE394();
  v8 = sub_23A7EEB24();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23A797A74(0xD000000000000027, 0x800000023A80AD60, &v12);
    _os_log_impl(&dword_23A714000, v7, v8, "Service side: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  swift_getKeyPath();
  v12 = v3;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result setCurrentPreviewItemIndex:a1 animated:a2 & 1];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23A799A84(char a1)
{
  v2 = v1;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA8F60);
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23A797A74(0xD000000000000025, 0x800000023A80AD90, &v10);
    _os_log_impl(&dword_23A714000, v5, v6, "Service side: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  swift_getKeyPath();
  v10 = v2;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result hostApplicationDidEnterBackground_];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23A799C7C()
{
  v1 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA8F60);
  v3 = sub_23A7EE394();
  v4 = sub_23A7EEB24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_23A797A74(0xD000000000000020, 0x800000023A80ADC0, &v8);
    _os_log_impl(&dword_23A714000, v3, v4, "Service side: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EE8D760](v6, -1, -1);
    MEMORY[0x23EE8D760](v5, -1, -1);
  }

  swift_getKeyPath();
  v8 = v1;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result hostApplicationDidBecomeActive];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A799E6C(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_23A799E8C, 0, 0);
}

uint64_t sub_23A799E8C()
{
  v13 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  __swift_project_value_buffer(v1, qword_27DFA8F60);
  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A797A74(0xD000000000000014, 0x800000023A80AE10, &v12);
    _os_log_impl(&dword_23A714000, v2, v3, "Service side: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EE8D760](v5, -1, -1);
    MEMORY[0x23EE8D760](v4, -1, -1);
  }

  v6 = v0[21];
  swift_getKeyPath();
  v0[10] = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v8 = Strong;
    v9 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_23A79A144;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8F90, &qword_23A7FEB60);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23A79A290;
    v0[13] = &block_descriptor;
    v0[14] = v10;
    [v8 toolbarButtonsForTraitCollection:v9 withCompletionHandler:v0 + 10];
    Strong = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](Strong);
}

uint64_t sub_23A79A144()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A79A224, 0, 0);
}

uint64_t sub_23A79A224()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_23A79A290(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_23A7A3798(0, &qword_27DFAA0D0, 0x277D43FB0);
  v2 = sub_23A7EE9A4();
  v3 = sub_23A7EE9A4();
  v4 = *(*(v1 + 64) + 40);
  *v4 = v2;
  v4[1] = v3;

  return MEMORY[0x282200948](v1);
}

uint64_t sub_23A79A4C0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23A79A584;

  return sub_23A799E6C(v5);
}

uint64_t sub_23A79A584()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v9 = *v0;

  sub_23A7A3798(0, &qword_27DFAA0D0, 0x277D43FB0);
  v5 = sub_23A7EE994();
  v6 = sub_23A7EE994();
  (v2)[2](v2, v5, v6);

  _Block_release(v2);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_23A79A74C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23A79A770, 0, 0);
}

uint64_t sub_23A79A770()
{
  v15 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  __swift_project_value_buffer(v1, qword_27DFA8F60);
  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A797A74(0xD000000000000025, 0x800000023A80AE30, &v14);
    _os_log_impl(&dword_23A714000, v2, v3, "Service side: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EE8D760](v5, -1, -1);
    MEMORY[0x23EE8D760](v4, -1, -1);
  }

  v6 = v0[20];
  swift_getKeyPath();
  v0[10] = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v8 = Strong;
    v9 = v0[18];
    v10 = v0[19];
    v11 = sub_23A7EE814();
    v0[22] = v11;
    v0[2] = v0;
    v0[3] = sub_23A79AA2C;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23A79AB70;
    v0[13] = &block_descriptor_8;
    v0[14] = v12;
    [v8 toolbarButtonPressedWithIdentifier:v11 completionHandler:v0 + 10];
    Strong = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](Strong);
}

uint64_t sub_23A79AA2C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A79AB0C, 0, 0);
}

uint64_t sub_23A79AB0C()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A79AB70(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_23A79AD30(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_23A7EE844();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_23A79AE04;

  return sub_23A79A74C(v4, v6);
}

uint64_t sub_23A79AE04()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_23A79AF84()
{
  v12 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  __swift_project_value_buffer(v1, qword_27DFA8F60);
  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A797A74(0xD00000000000001BLL, 0x800000023A80AE60, &v11);
    _os_log_impl(&dword_23A714000, v2, v3, "Service side: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EE8D760](v5, -1, -1);
    MEMORY[0x23EE8D760](v4, -1, -1);
  }

  v6 = v0[18];
  swift_getKeyPath();
  v0[10] = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v8 = Strong;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_23A79B234;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8F98, &qword_23A7FEB80);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23A79B37C;
    v0[13] = &block_descriptor_11;
    v0[14] = v9;
    [v8 shouldDisplayLockActivityWithCompletionHandler_];
    Strong = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](Strong);
}

uint64_t sub_23A79B234()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A79B314, 0, 0);
}

uint64_t sub_23A79B314()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23A79B37C(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_23A79B550(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_23A79B5F8;

  return sub_23A79AF64();
}

uint64_t sub_23A79B5F8(char a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

void *sub_23A79B744()
{
  v1 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA8F60);
  v3 = sub_23A7EE394();
  v4 = sub_23A7EEB24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_23A797A74(0xD00000000000001BLL, 0x800000023A80AE80, &v8);
    _os_log_impl(&dword_23A714000, v3, v4, "Service side: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EE8D760](v6, -1, -1);
    MEMORY[0x23EE8D760](v5, -1, -1);
  }

  swift_getKeyPath();
  v8 = v1;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestLockForCurrentItem];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A79B954()
{
  v12 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  __swift_project_value_buffer(v1, qword_27DFA8F60);
  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A797A74(0x616D6D6F4379656BLL, 0xED0000292873646ELL, &v11);
    _os_log_impl(&dword_23A714000, v2, v3, "Service side: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EE8D760](v5, -1, -1);
    MEMORY[0x23EE8D760](v4, -1, -1);
  }

  v6 = v0[19];
  swift_getKeyPath();
  v0[10] = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v8 = Strong;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_23A79BC0C;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA090, &qword_23A7FEBA0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23A79BD54;
    v0[13] = &block_descriptor_14;
    v0[14] = v9;
    [v8 keyCommandsWithCompletionHandler_];
    Strong = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](Strong);
}

uint64_t sub_23A79BC0C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A79BCEC, 0, 0);
}

uint64_t sub_23A79BCEC()
{
  v1 = v0[20];
  v2 = v0[18];
  swift_unknownObjectRelease();
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23A79BD54(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_23A7A3798(0, &qword_27DFA8FD8, 0x277D43F80);
  **(*(v1 + 64) + 40) = sub_23A7EE9A4();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_23A79BF50(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_23A79BFF8;

  return sub_23A79B934();
}

uint64_t sub_23A79BFF8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  sub_23A7A3798(0, &qword_27DFA8FD8, 0x277D43F80);
  v4 = sub_23A7EE994();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

void *sub_23A79C178(uint64_t a1)
{
  v2 = v1;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA8F60);
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23A797A74(0xD00000000000001ALL, 0x800000023A80AEC0, &v10);
    _os_log_impl(&dword_23A714000, v5, v6, "Service side: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  swift_getKeyPath();
  v10 = v2;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result keyCommandWasPerformed_];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23A79C370(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v6 = sub_23A7EE3B4();
  __swift_project_value_buffer(v6, qword_27DFA8F60);
  v7 = sub_23A7EE394();
  v8 = sub_23A7EEB24();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23A797A74(0xD00000000000001ALL, 0x800000023A80AEE0, &v12);
    _os_log_impl(&dword_23A714000, v7, v8, "Service side: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  swift_getKeyPath();
  v12 = v3;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result setAppearance:a1 animated:a2 & 1];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23A79C5C0(uint64_t a1)
{
  v2 = v1;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA8F60);
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23A797A74(0xD000000000000020, 0x800000023A80AF00, &v10);
    _os_log_impl(&dword_23A714000, v5, v6, "Service side: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  swift_getKeyPath();
  v10 = v2;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result notifyFirstTimeAppearanceWithActions_];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23A79C7E4(void *a1)
{
  v2 = v1;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA8F60);
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23A797A74(0xD000000000000022, 0x800000023A80AF30, &v11);
    _os_log_impl(&dword_23A714000, v5, v6, "Service side: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  swift_getKeyPath();
  v11 = v2;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a1)
    {
      a1 = sub_23A7EE7C4();
    }

    [v10 notifyStateRestorationUserInfo_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A79CA7C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v6 = sub_23A7EE3B4();
  __swift_project_value_buffer(v6, qword_27DFA8F60);
  v7 = sub_23A7EE394();
  v8 = sub_23A7EEB24();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23A797A74(0xD00000000000002ELL, 0x800000023A80AF60, &v13);
    _os_log_impl(&dword_23A714000, v7, v8, "Service side: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  swift_getKeyPath();
  v13 = v3;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    [v12 previewItemDisplayState:sub_23A7EEDF4() wasAppliedToItemAtIndex:a2];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A79CCAC(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 152) = a2;
  *(v5 + 160) = v4;
  *(v5 + 177) = a4;
  *(v5 + 176) = a3;
  *(v5 + 144) = a1;
  return MEMORY[0x2822009F8](sub_23A79CCD8, 0, 0);
}

uint64_t sub_23A79CCD8()
{
  v16 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  __swift_project_value_buffer(v1, qword_27DFA8F60);
  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A797A74(0xD000000000000061, 0x800000023A80AF90, &v15);
    _os_log_impl(&dword_23A714000, v2, v3, "Service side: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EE8D760](v5, -1, -1);
    MEMORY[0x23EE8D760](v4, -1, -1);
  }

  v6 = *(v0 + 160);
  swift_getKeyPath();
  *(v0 + 80) = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v8 = Strong;
    v9 = *(v0 + 177);
    v10 = *(v0 + 176);
    v12 = *(v0 + 144);
    v11 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_23A79CFAC;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_23A79AB70;
    *(v0 + 104) = &block_descriptor_17;
    *(v0 + 112) = v13;
    [v8 startTransitionWithSourceViewProvider:v12 transitionController:v11 presenting:v10 useInteractiveTransition:v9 completionHandler:v0 + 80];
    Strong = v0 + 16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](Strong);
}

uint64_t sub_23A79CFAC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A79D08C, 0, 0);
}

uint64_t sub_23A79D08C()
{
  v1 = *(v0 + 168);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A79D29C(void *a1, uint64_t a2, char a3, char a4, void *aBlock, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a6;
  v6[2] = a1;
  v6[5] = _Block_copy(aBlock);
  v11 = a1;
  swift_unknownObjectRetain();

  v12 = swift_task_alloc();
  v6[6] = v12;
  *v12 = v6;
  v12[1] = sub_23A79D38C;

  return sub_23A79CCAC(v11, a2, a3, a4);
}

uint64_t sub_23A79D38C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  swift_unknownObjectRelease();

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

void *sub_23A79D504(char a1)
{
  v2 = v1;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA8F60);
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23A797A74(0xD000000000000016, 0x800000023A80B000, &v10);
    _os_log_impl(&dword_23A714000, v5, v6, "Service side: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  swift_getKeyPath();
  v10 = v2;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result tearDownTransition_];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23A79D6FC()
{
  v1 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA8F60);
  v3 = sub_23A7EE394();
  v4 = sub_23A7EEB24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_23A797A74(0x6964616F4C746573, 0xEE00293A5F28676ELL, &v10);
    _os_log_impl(&dword_23A714000, v3, v4, "Service side: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EE8D760](v6, -1, -1);
    MEMORY[0x23EE8D760](v5, -1, -1);
  }

  swift_getKeyPath();
  v10 = v1;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_23A7EE814();
    [v8 setLoadingString_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_23A79D920()
{
  v1 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA8F60);
  v3 = sub_23A7EE394();
  v4 = sub_23A7EEB24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_23A797A74(0xD00000000000003BLL, 0x800000023A80B020, &v10);
    _os_log_impl(&dword_23A714000, v3, v4, "Service side: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EE8D760](v6, -1, -1);
    MEMORY[0x23EE8D760](v5, -1, -1);
  }

  swift_getKeyPath();
  v10 = v1;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_23A7EE814();
    [v8 overrideParentApplicationDisplayIdentifierWithIdentifier_];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23A79DB3C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = sub_23A7EE844();
  v7 = v6;

  a4(v5, v7);
}

uint64_t sub_23A79DBCC()
{
  v12 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  __swift_project_value_buffer(v1, qword_27DFA8F60);
  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A797A74(0xD000000000000029, 0x800000023A80B060, &v11);
    _os_log_impl(&dword_23A714000, v2, v3, "Service side: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EE8D760](v5, -1, -1);
    MEMORY[0x23EE8D760](v4, -1, -1);
  }

  v6 = v0[18];
  swift_getKeyPath();
  v0[10] = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v8 = Strong;
    v0[2] = v0;
    v0[3] = sub_23A79DE74;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23A79AB70;
    v0[13] = &block_descriptor_20;
    v0[14] = v9;
    [v8 preparePreviewCollectionForInvalidationWithCompletionHandler_];
    Strong = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](Strong);
}

uint64_t sub_23A79DE74()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7A384C, 0, 0);
}

uint64_t sub_23A79E0CC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_23A7A3804;

  return sub_23A79DBAC();
}

uint64_t sub_23A79E194()
{
  v12 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  __swift_project_value_buffer(v1, qword_27DFA8F60);
  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A797A74(0xD000000000000013, 0x800000023A80B090, &v11);
    _os_log_impl(&dword_23A714000, v2, v3, "Service side: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EE8D760](v5, -1, -1);
    MEMORY[0x23EE8D760](v4, -1, -1);
  }

  v6 = v0[18];
  swift_getKeyPath();
  v0[10] = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v8 = Strong;
    v0[2] = v0;
    v0[3] = sub_23A79E43C;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23A79AB70;
    v0[13] = &block_descriptor_23;
    v0[14] = v9;
    [v8 invalidateServiceWithCompletionHandler_];
    Strong = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](Strong);
}

uint64_t sub_23A79E43C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A79E51C, 0, 0);
}

uint64_t sub_23A79E51C()
{
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A79E6F4(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_23A79E79C;

  return sub_23A79E174();
}

uint64_t sub_23A79E79C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

void *sub_23A79E8D8(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v6 = sub_23A7EE3B4();
  __swift_project_value_buffer(v6, qword_27DFA8F60);
  v7 = sub_23A7EE394();
  v8 = sub_23A7EEB24();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23A797A74(0xD000000000000029, 0x800000023A80B0B0, &v12);
    _os_log_impl(&dword_23A714000, v7, v8, "Service side: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  swift_getKeyPath();
  v12 = v3;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result hostViewControlerTransitionToState:a1 animated:a2 & 1];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A79EAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{

  a5(a3, a4);
}

uint64_t sub_23A79EB40(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v6 = sub_23A7EE3B4();
  __swift_project_value_buffer(v6, qword_27DFA8F60);
  v7 = sub_23A7EE394();
  v8 = sub_23A7EEB24();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23A797A74(0xD000000000000027, 0x800000023A80B0E0, &v13);
    _os_log_impl(&dword_23A714000, v7, v8, "Service side: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EE8D760](v10, -1, -1);
    MEMORY[0x23EE8D760](v9, -1, -1);
  }

  swift_getKeyPath();
  v13 = v3;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    [v12 setPreviewItemDisplayState:sub_23A7EEDF4() onItemAtIndex:a2];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A79ED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t))
{
  swift_unknownObjectRetain();

  sub_23A7EEC44();
  swift_unknownObjectRelease();
  a5(v8, a4);

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_23A79EE14()
{
  v12 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  __swift_project_value_buffer(v1, qword_27DFA8F60);
  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A797A74(0xD000000000000023, 0x800000023A80B110, &v11);
    _os_log_impl(&dword_23A714000, v2, v3, "Service side: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EE8D760](v5, -1, -1);
    MEMORY[0x23EE8D760](v4, -1, -1);
  }

  v6 = v0[18];
  swift_getKeyPath();
  v0[10] = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v8 = Strong;
    v0[2] = v0;
    v0[3] = sub_23A79DE74;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA080, &qword_23A7FEB70);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23A79AB70;
    v0[13] = &block_descriptor_26;
    v0[14] = v9;
    [v8 prepareForActionSheetPresentationWithCompletionHandler_];
    Strong = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](Strong);
}

uint64_t sub_23A79F234(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_23A79F2DC;

  return sub_23A79EDF4();
}

uint64_t sub_23A79F2DC()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v3)
  {
    v6 = *(v1 + 24);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

void *sub_23A79F428()
{
  v1 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA8F60);
  v3 = sub_23A7EE394();
  v4 = sub_23A7EEB24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_23A797A74(0xD000000000000017, 0x800000023A80B140, &v8);
    _os_log_impl(&dword_23A714000, v3, v4, "Service side: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EE8D760](v6, -1, -1);
    MEMORY[0x23EE8D760](v5, -1, -1);
  }

  swift_getKeyPath();
  v8 = v1;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result actionSheetDidDismiss];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23A79F618()
{
  v1 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v2 = sub_23A7EE3B4();
  __swift_project_value_buffer(v2, qword_27DFA8F60);
  v3 = sub_23A7EE394();
  v4 = sub_23A7EEB24();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_23A797A74(0xD00000000000001DLL, 0x800000023A80B160, &v9);
    _os_log_impl(&dword_23A714000, v3, v4, "Service side: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EE8D760](v6, -1, -1);
    MEMORY[0x23EE8D760](v5, -1, -1);
  }

  swift_getKeyPath();
  v9 = v1;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 documentMenuActionWillBegin];
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A79F820(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void *sub_23A79F864(uint64_t a1)
{
  v2 = v1;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA8F60);
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23A797A74(0xD00000000000002CLL, 0x800000023A80B180, &v11);
    _os_log_impl(&dword_23A714000, v5, v6, "Service side: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  swift_getKeyPath();
  v11 = v2;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    if ([result respondsToSelector_])
    {
      [v10 hostViewControllerBackgroundColorChanged_];
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23A79FA74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v10 = sub_23A7EE3B4();
  __swift_project_value_buffer(v10, qword_27DFA8F60);
  v11 = sub_23A7EE394();
  v12 = sub_23A7EEB24();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_23A797A74(0xD000000000000042, 0x800000023A80B1D0, v17);
    _os_log_impl(&dword_23A714000, v11, v12, "Service side: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EE8D760](v14, -1, -1);
    MEMORY[0x23EE8D760](v13, -1, -1);
  }

  swift_getKeyPath();
  v17[0] = v5;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    if ([result respondsToSelector_])
    {
      if (a3)
      {
        v17[4] = a3;
        v17[5] = a4;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 1107296256;
        v17[2] = sub_23A79FD28;
        v17[3] = &block_descriptor_29;
        a3 = _Block_copy(v17);
      }

      [v16 saveIntoPhotoLibraryMediaWithURLWrapper:a1 previewItemType:a2 completionHandler:a3];
      _Block_release(a3);
      return swift_unknownObjectRelease();
    }

    else
    {
      result = swift_unknownObjectRelease();
      if (a3)
      {
        return (a3)(0, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23A79FD28(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void *sub_23A79FE68(char a1)
{
  v2 = v1;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v4 = sub_23A7EE3B4();
  __swift_project_value_buffer(v4, qword_27DFA8F60);
  v5 = sub_23A7EE394();
  v6 = sub_23A7EEB24();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23A797A74(0xD000000000000017, 0x800000023A80B220, &v10);
    _os_log_impl(&dword_23A714000, v5, v6, "Service side: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EE8D760](v8, -1, -1);
    MEMORY[0x23EE8D760](v7, -1, -1);
  }

  swift_getKeyPath();
  v10 = v2;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result setIsContentManaged_];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A7A0060(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_23A7A00B8(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_23A7A00DC, 0, 0);
}

uint64_t sub_23A7A00DC()
{
  v13 = v0;
  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v1 = sub_23A7EE3B4();
  __swift_project_value_buffer(v1, qword_27DFA8F60);
  v2 = sub_23A7EE394();
  v3 = sub_23A7EEB24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A797A74(0xD000000000000028, 0x800000023A80B270, &v12);
    _os_log_impl(&dword_23A714000, v2, v3, "Service side: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23EE8D760](v5, -1, -1);
    MEMORY[0x23EE8D760](v4, -1, -1);
  }

  v6 = *(v0 + 160);
  swift_getKeyPath();
  *(v0 + 80) = v6;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    v8 = Strong;
    v9 = *(v0 + 176);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_23A7A0394;
    v10 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FA0, &qword_23A7FECC0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_23A7A04E0;
    *(v0 + 104) = &block_descriptor_32;
    *(v0 + 112) = v10;
    [v8 saveCurrentPreviewEditsSynchronously:v9 withCompletionHandler:v0 + 80];
    Strong = v0 + 16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](Strong);
}

uint64_t sub_23A7A0394()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A7A0474, 0, 0);
}

uint64_t sub_23A7A0474()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_23A7A04E0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a3;

  return MEMORY[0x282200948](v6);
}

uint64_t sub_23A7A06D8(char a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_23A7A0794;

  return sub_23A7A00B8(a1);
}

uint64_t sub_23A7A0794(uint64_t a1, void *a2)
{
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v10 = *v2;

  (v6)[2](v6, a1, a2);
  _Block_release(v6);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t QLAppExtensionSceneProxy.deinit()
{
  sub_23A7A1734(v0 + 16);
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC9QuickLook24QLAppExtensionSceneProxy___observationRegistrar;
  v3 = sub_23A7EE054();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t QLAppExtensionSceneProxy.__deallocating_deinit()
{
  sub_23A7A1734((v0 + 16));
  v1 = *(v0 + 3);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC9QuickLook24QLAppExtensionSceneProxy___observationRegistrar;
  v3 = sub_23A7EE054();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

void QLAppExtensionSceneProxy.getPreviewCollectionUUIDWithCompletionHandler(completionHandler:)(void (*a1)(id))
{
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong uuid];
    swift_unknownObjectRelease();
    a1(v3);
  }

  else
  {
    __break(1u);
  }
}

void QLAppExtensionSceneProxy.setNotificationCenter(_:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    [v2 setRemoteNotificationCenter_];
  }
}

void QLAppExtensionSceneProxy.getNetworkObserverWithCompletionBlock(_:)(void (*a1)(void))
{
  v2 = [objc_opt_self() sharedInstance];
  a1();
}

uint64_t QLAppExtensionSceneProxy.preparePreviewCollectionForInvalidationWithCompletionHandler(completionHandler:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v8[0] = v2;
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v8[4] = a1;
    v8[5] = a2;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23A7A0EA0;
    v8[3] = &block_descriptor_35;
    v7 = _Block_copy(v8);

    [v6 preparePreviewCollectionForInvalidationWithCompletionHandler_];
    _Block_release(v7);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A7A0EA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_23A7A0F74()
{
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8D80, type metadata accessor for QLAccessoryAppExtensionSceneProxy);
  sub_23A7EE014();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_23A7A1018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8D80, type metadata accessor for QLAccessoryAppExtensionSceneProxy);
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_23A7A10C4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7A175C(&qword_27DFA8D80, type metadata accessor for QLAccessoryAppExtensionSceneProxy);
    sub_23A7EE004();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_23A7A3798(0, &qword_27DFA8FE0, 0x277D75D28);
  v3 = v2;
  v4 = sub_23A7EEC24();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t QLAccessoryAppExtensionSceneProxy.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23A7EE044();
  return v3;
}

uint64_t QLAccessoryAppExtensionSceneProxy.init()()
{
  swift_unknownObjectWeakInit();
  sub_23A7EE044();
  return v0;
}

void sub_23A7A12F0(void *a1)
{
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8D80, type metadata accessor for QLAccessoryAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_27DFA8D08 != -1)
    {
      swift_once();
    }

    v4 = [qword_27DFA8F78 objectForKey_];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 view];
      [v5 setRemoteAccessoryContainer_];

      goto LABEL_11;
    }
  }

  if (qword_27DFA8D00 != -1)
  {
    swift_once();
  }

  v7 = sub_23A7EE3B4();
  __swift_project_value_buffer(v7, qword_27DFA8F60);
  v8 = a1;
  v6 = sub_23A7EE394();
  v9 = sub_23A7EEB34();

  if (os_log_type_enabled(v6, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    _os_log_impl(&dword_23A714000, v6, v9, "Cannot configure accessory view container, no preview collection with UUID %@", v10, 0xCu);
    sub_23A7A17FC(v11);
    MEMORY[0x23EE8D760](v11, -1, -1);
    MEMORY[0x23EE8D760](v10, -1, -1);
  }

LABEL_11:
}

uint64_t sub_23A7A1554(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t QLAccessoryAppExtensionSceneProxy.deinit()
{
  MEMORY[0x23EE8D830](v0 + 16);
  v1 = OBJC_IVAR____TtC9QuickLook33QLAccessoryAppExtensionSceneProxy___observationRegistrar;
  v2 = sub_23A7EE054();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t QLAccessoryAppExtensionSceneProxy.__deallocating_deinit()
{
  MEMORY[0x23EE8D830](v0 + 16);
  v1 = OBJC_IVAR____TtC9QuickLook33QLAccessoryAppExtensionSceneProxy___observationRegistrar;
  v2 = sub_23A7EE054();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A7A175C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A7A17C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A7A17FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAA070, &qword_23A7FCCF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A7A186C()
{
  result = sub_23A7EE054();
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

uint64_t dispatch thunk of QLAppExtensionSceneProxy.setAllowInteractiveTransitions(_:)(uint64_t a1)
{
  v4 = *(*v1 + 216);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A7A3828;

  return v8(a1);
}

uint64_t dispatch thunk of QLAppExtensionSceneProxy.toolbarButtons(for:)(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A7A1C90;

  return v8(a1);
}

uint64_t sub_23A7A1C90(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of QLAppExtensionSceneProxy.toolbarButtonPressed(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23A7A3828;

  return v10(a1, a2);
}

uint64_t dispatch thunk of QLAppExtensionSceneProxy.shouldDisplayLockActivity()()
{
  v2 = *(*v0 + 288);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A1FDC;

  return v6();
}

uint64_t sub_23A7A1FDC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of QLAppExtensionSceneProxy.keyCommands()()
{
  v2 = *(*v0 + 304);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A1FDC;

  return v6();
}

uint64_t dispatch thunk of QLAppExtensionSceneProxy.startTransition(withSourceViewProvider:transitionController:presenting:useInteractiveTransition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 352);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23A7A3828;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of QLAppExtensionSceneProxy.preparePreviewCollectionForInvalidation()()
{
  v2 = *(*v0 + 384);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return v6();
}

uint64_t dispatch thunk of QLAppExtensionSceneProxy.invalidateService()()
{
  v2 = *(*v0 + 392);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return v6();
}

uint64_t dispatch thunk of QLAppExtensionSceneProxy.prepareForActionSheetPresentation()()
{
  v2 = *(*v0 + 416);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return v6();
}

uint64_t dispatch thunk of QLAppExtensionSceneProxy.saveCurrentPreviewEditsSynchronously(_:)(uint64_t a1)
{
  v4 = *(*v1 + 464);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A7A382C;

  return v8(a1);
}

uint64_t sub_23A7A2A70()
{
  result = sub_23A7EE054();
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

void sub_23A7A2B6C(uint64_t a1, void (**a2)(void, void))
{
  swift_getKeyPath();
  sub_23A7A175C(&qword_27DFA8F88, type metadata accessor for QLAppExtensionSceneProxy);
  sub_23A7EE014();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = [Strong uuid];
    swift_unknownObjectRelease();
    (a2)[2](a2, v4);
  }

  else
  {
    _Block_release(a2);
    __break(1u);
  }
}

uint64_t sub_23A7A2C60()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A7A06D8(v2, v4, v3);
}

uint64_t sub_23A7A2D14()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A7A3828;

  return sub_23A7E3BF0(v2, v3, v5);
}

uint64_t sub_23A7A2DD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A7A2DEC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A79F234(v2, v3);
}

uint64_t sub_23A7A2E98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A7A3828;

  return sub_23A7E3CD8(a1, v4, v5, v7);
}

uint64_t sub_23A7A2F64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A79E6F4(v2, v3);
}

uint64_t sub_23A7A3010()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A79E0CC(v2, v3);
}

uint64_t sub_23A7A30BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23A7A3828;

  return sub_23A79D29C(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_23A7A3194()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3240;

  return sub_23A79BF50(v2, v3);
}

uint64_t sub_23A7A3240()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_101Tm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A7A3374()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23A7A3828;

  return sub_23A79B550(v2, v3);
}

uint64_t sub_23A7A3420()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A79AD30(v2, v3, v4);
}

uint64_t objectdestroy_191Tm()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A7A351C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A79A4C0(v2, v3, v4);
}

uint64_t objectdestroy_85Tm()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23A7A3610()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A7A3828;

  return sub_23A799050(v2, v4, v3);
}

uint64_t objectdestroy_89Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23A7A3704()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_23A7A3740()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_unknownObjectWeakAssign();
  sub_23A7987D4();
}

uint64_t sub_23A7A3778()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_23A7A3798(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23A7A3850()
{
  swift_getKeyPath();
  v4 = v0;
  sub_23A7A44D4();
  sub_23A7EE014();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);
  sub_23A7A3D7C(v2);
  return v2;
}

uint64_t sub_23A7A38D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_23A7A3D7C(a2);
  return sub_23A7A3DBC(v3);
}

void sub_23A7A3920(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9000, &qword_23A7FD058);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_23A7A3CF8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7A0EA0;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);

  [a2 crashWithReply_];
  _Block_release(v11);
}

uint64_t sub_23A7A3AD0()
{
  v1 = v0[3];
  sub_23A7A3DBC(v0[2]);
  v2 = OBJC_IVAR____TtC9QuickLook43QLHostPrimaryViewControllerWrapperViewModel___observationRegistrar;
  v3 = sub_23A7EE054();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel()
{
  result = qword_27DFA8FF0;
  if (!qword_27DFA8FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A7A3BC8()
{
  result = sub_23A7EE054();
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

uint64_t sub_23A7A3C64(uint64_t *a1, int a2)
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

uint64_t sub_23A7A3CAC(uint64_t result, int a2, int a3)
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

uint64_t sub_23A7A3CF8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9000, &qword_23A7FD058) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_23A7EEA04();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A7A3D7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A7A3DBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A7A3DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_23A7EE154();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = sub_23A7EEBB4();
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7A3F2C, 0, 0);
}

uint64_t sub_23A7A3F2C()
{
  v1 = v0[23];
  v2 = v0[21];
  v16 = v0[20];
  v17 = v0[22];
  v3 = v0[18];
  v15 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[12];
  v9 = v0[13];

  sub_23A7EEBA4();
  v0[24] = sub_23A7EEBE4();
  (*(v3 + 16))(v15, v8, v4);
  (*(v2 + 16))(v17, v1, v16);
  v10 = *(MEMORY[0x277CC5E60] + 4);
  v11 = swift_task_alloc();
  v0[25] = v11;
  *v11 = v0;
  v11[1] = sub_23A7A4070;
  v12 = v0[22];
  v13 = v0[19];

  return MEMORY[0x282116B10](v13, v12);
}

uint64_t sub_23A7A4070(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_23A7A43AC;
  }

  else
  {
    v5 = sub_23A7A4184;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A7A4184()
{
  *(v0 + 16) = *(v0 + 208);
  v1 = *(v0 + 192);
  *(v0 + 40) = v1;
  *(v0 + 48) = &off_284D5CEE0;
  type metadata accessor for QLUIExtensionProxy();
  v20 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  *(v0 + 56) = *v5;
  *(v0 + 80) = v1;
  *(v0 + 88) = &off_284D5CEE0;
  v6 = qword_27DFA8D20;
  swift_retain_n();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v12 = *(v0 + 136);
  v13 = *(v0 + 96);
  v14 = qword_27DFAC668;

  (*(v11 + 8))(v13, v12);
  (*(v9 + 8))(v8, v10);
  *(v20 + 16) = v14;
  *(v20 + 64) = 0;
  sub_23A7A44BC((v0 + 56), v20 + 24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v15 = *(v0 + 8);
  v16 = *(v0 + 208);

  return v15(v16, v20);
}

uint64_t sub_23A7A43AC()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  (*(v0[18] + 8))(v0[12], v0[17]);
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];
  v7 = v0[27];

  return v6();
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

uint64_t sub_23A7A44BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_23A7A44D4()
{
  result = qword_27DFA9E50;
  if (!qword_27DFA9E50)
  {
    type metadata accessor for QLHostPrimaryViewControllerWrapperViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9E50);
  }

  return result;
}

uint64_t sub_23A7A452C()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA9008);
  __swift_project_value_buffer(v0, qword_27DFA9008);
  return sub_23A7EE3A4();
}

id sub_23A7A45A8(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata applicationIdentifierEntitlementKey];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = result;
  v5 = [a1 valueForEntitlement_];

  if (!v5)
  {
    if (qword_27DFA8D10 != -1)
    {
      swift_once();
    }

    v6 = sub_23A7EE3B4();
    __swift_project_value_buffer(v6, qword_27DFA9008);
    v7 = sub_23A7EE394();
    v8 = sub_23A7EEB14();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_10;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28[0] = v10;
    *v9 = 136315138;
    result = [ObjCClassFromMetadata applicationIdentifierEntitlementKey];
    if (result)
    {
      v11 = result;
      v12 = sub_23A7EE844();
      v14 = v13;

      v15 = sub_23A797A74(v12, v14, v28);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_23A714000, v7, v8, "No value returned for the %s entitlement", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x23EE8D760](v10, -1, -1);
      MEMORY[0x23EE8D760](v9, -1, -1);
LABEL_10:

      return 0;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_23A7EEC44();
  swift_unknownObjectRelease();
  sub_23A79842C(v28, v27);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
    return v26;
  }

  if (qword_27DFA8D10 != -1)
  {
    swift_once();
  }

  v16 = sub_23A7EE3B4();
  __swift_project_value_buffer(v16, qword_27DFA9008);
  v17 = sub_23A7EE394();
  v18 = sub_23A7EEB14();
  if (!os_log_type_enabled(v17, v18))
  {
    goto LABEL_16;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v27[0] = v20;
  *v19 = 136315138;
  result = [ObjCClassFromMetadata applicationIdentifierEntitlementKey];
  if (result)
  {
    v21 = result;
    v22 = sub_23A7EE844();
    v24 = v23;

    v25 = sub_23A797A74(v22, v24, v27);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_23A714000, v17, v18, "Value for %s entitlement could not be converted to String", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23EE8D760](v20, -1, -1);
    MEMORY[0x23EE8D760](v19, -1, -1);
LABEL_16:

    __swift_destroy_boxed_opaque_existential_0(v28);
    return 0;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23A7A491C()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFAC650);
  __swift_project_value_buffer(v0, qword_27DFAC650);
  return sub_23A7EE3A4();
}

uint64_t sub_23A7A49B4()
{
  v1 = *v0;
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](v1);
  return sub_23A7EEEA4();
}

uint64_t sub_23A7A4A28()
{
  v1 = *v0;
  sub_23A7EEE84();
  MEMORY[0x23EE8C2F0](v1);
  return sub_23A7EEEA4();
}

uint64_t sub_23A7A4A7C()
{
  *(v1 + 64) = v0;
  sub_23A7EEA34();
  *(v1 + 72) = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7A4B14, v3, v2);
}

uint64_t sub_23A7A4B14()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v7 = *__swift_project_boxed_opaque_existential_0((v0[8] + 24), *(v0[8] + 48));
    v8 = sub_23A7EEBC4();
    [v8 setRemoteObjectInterface_];
    v9 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_23A7A579C;
    v0[7] = v9;
    v10 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_23A7A0EA0;
    v0[5] = &block_descriptor_41;
    v11 = _Block_copy(v0 + 2);
    v12 = v0[7];

    [v8 setInvalidationHandler_];
    _Block_release(v11);
    v13 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_23A7A57A4;
    v0[7] = v13;
    v0[2] = v10;
    v0[3] = 1107296256;
    v0[4] = sub_23A7A0EA0;
    v0[5] = &block_descriptor_45;
    v14 = _Block_copy(v0 + 2);
    v15 = v0[7];

    [v8 setInterruptionHandler_];
    _Block_release(v14);
    [v8 resume];
    v16 = *(v2 + 64);
    *(v2 + 64) = v8;
    v4 = v8;

    v3 = 0;
  }

  v17 = v0[1];
  v5 = v3;

  return v17(v4);
}

uint64_t sub_23A7A4D98(uint64_t a1)
{
  sub_23A7A5728();
  v2 = sub_23A7EEB64();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_23A7A57AC;
  *(v3 + 24) = a1;
  v6[4] = sub_23A7A59AC;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_23A7A4EE4;
  v6[3] = &block_descriptor_53;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);

  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A7A4F0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27DFA8D18 != -1)
    {
      swift_once();
    }

    v1 = sub_23A7EE3B4();
    __swift_project_value_buffer(v1, qword_27DFAC650);
    v2 = sub_23A7EE394();
    v3 = sub_23A7EEB34();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23A714000, v2, v3, "Connection to appex interrupted", v4, 2u);
      MEMORY[0x23EE8D760](v4, -1, -1);
    }
  }

  return result;
}

uint64_t sub_23A7A5044()
{
  *(v1 + 64) = v0;
  sub_23A7EEA34();
  *(v1 + 72) = sub_23A7EEA24();
  v3 = sub_23A7EE9E4();

  return MEMORY[0x2822009F8](sub_23A7A50DC, v3, v2);
}

uint64_t sub_23A7A50DC()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v7 = *__swift_project_boxed_opaque_existential_0((v0[8] + 24), *(v0[8] + 48));
    v8 = sub_23A7EEBC4();
    [v8 setRemoteObjectInterface_];
    v9 = swift_allocObject();
    swift_weakInit();
    v0[6] = sub_23A7A5708;
    v0[7] = v9;
    v10 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_23A7A0EA0;
    v0[5] = &block_descriptor_1;
    v11 = _Block_copy(v0 + 2);
    v12 = v0[7];

    [v8 setInvalidationHandler_];
    _Block_release(v11);
    v0[6] = sub_23A7A55B4;
    v0[7] = 0;
    v0[2] = v10;
    v0[3] = 1107296256;
    v0[4] = sub_23A7A0EA0;
    v0[5] = &block_descriptor_28;
    v13 = _Block_copy(v0 + 2);
    [v8 setInterruptionHandler_];
    _Block_release(v13);
    [v8 resume];
    v14 = *(v2 + 64);
    *(v2 + 64) = v8;
    v4 = v8;

    v3 = 0;
  }

  v15 = v0[1];
  v5 = v3;

  return v15(v4);
}

uint64_t sub_23A7A5328(uint64_t a1)
{
  sub_23A7A5728();
  v2 = sub_23A7EEB64();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_23A7A59A8;
  *(v3 + 24) = a1;
  v6[4] = sub_23A7A5774;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_23A7A4EE4;
  v6[3] = &block_descriptor_35_0;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);

  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_23A7A5474()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27DFA8D18 != -1)
    {
      swift_once();
    }

    v2 = sub_23A7EE3B4();
    __swift_project_value_buffer(v2, qword_27DFAC650);
    v3 = sub_23A7EE394();
    v4 = sub_23A7EEB34();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23A714000, v3, v4, "Connection to appex invalidated", v5, 2u);
      MEMORY[0x23EE8D760](v5, -1, -1);
    }

    v6 = *__swift_project_boxed_opaque_existential_0((v1 + 24), *(v1 + 48));
    sub_23A7EEB84();
    [*(v1 + 64) invalidate];
    v7 = *(v1 + 64);
    *(v1 + 64) = 0;
  }
}

void sub_23A7A55B4()
{
  if (qword_27DFA8D18 != -1)
  {
    swift_once();
  }

  v0 = sub_23A7EE3B4();
  __swift_project_value_buffer(v0, qword_27DFAC650);
  oslog = sub_23A7EE394();
  v1 = sub_23A7EEB34();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23A714000, oslog, v1, "Connection to appex interrupted", v2, 2u);
    MEMORY[0x23EE8D760](v2, -1, -1);
  }
}

uint64_t sub_23A7A569C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23A7A5728()
{
  result = qword_27DFA9020;
  if (!qword_27DFA9020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA9020);
  }

  return result;
}

uint64_t sub_23A7A5774()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t getEnumTagSinglePayload for ProxyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProxyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A7A593C()
{
  result = qword_27DFA9028;
  if (!qword_27DFA9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9028);
  }

  return result;
}

id sub_23A7A59C4()
{
  result = sub_23A7A59E4();
  qword_27DFAC668 = result;
  return result;
}

id sub_23A7A59E4()
{
  v0 = objc_opt_self();
  v66 = [v0 interfaceWithProtocol_];
  v65 = [v0 interfaceWithProtocol_];
  v64 = [v0 interfaceWithProtocol_];
  v61 = [v0 interfaceWithProtocol_];
  v63 = [v0 interfaceWithProtocol_];
  [v63 setInterface:v64 forSelector:sel_getURLWithDownloadTracker_completionHandler_ argumentIndex:0 ofReply:0];
  v1 = [v0 interfaceWithProtocol_];
  v2 = objc_opt_self();
  v3 = [v2 encodedClasses];
  sub_23A7EEAF4();

  v4 = sub_23A7EEAD4();

  v67 = v1;
  [v1 setClasses:v4 forSelector:sel_previewItemAtIndex_withCompletionHandler_ argumentIndex:0 ofReply:1];

  [v1 setInterface:v63 forSelector:sel_previewItemAtIndex_withCompletionHandler_ argumentIndex:1 ofReply:1];
  v62 = [v0 interfaceWithProtocol_];
  v5 = [v0 interfaceWithProtocol_];
  [v5 setInterface:v62 forSelector:sel_setPrinter_ argumentIndex:0 ofReply:0];
  [v5 setInterface:v61 forSelector:sel_showShareSheetWithPopoverTracker_customSharedURL_dismissCompletion_ argumentIndex:0 ofReply:0];
  v6 = [v2 customExtensionCommunicationEncodedClasses];
  sub_23A7EEAF4();

  v7 = sub_23A7EEAD4();

  [v5 setClasses:v7 forSelector:sel_forwardMessage_toItemAtIndex_withUUID_completionHandler_ argumentIndex:0 ofReply:0];

  v8 = [v2 customExtensionCommunicationEncodedClasses];
  sub_23A7EEAF4();

  v9 = sub_23A7EEAD4();

  [v5 setClasses:v9 forSelector:sel_forwardMessage_toItemAtIndex_withUUID_completionHandler_ argumentIndex:0 ofReply:1];

  v59 = [v0 interfaceWithProtocol_];
  v10 = [v0 interfaceWithProtocol_];
  [v10 setInterface:v1 forSelector:sel_configureWithNumberOfItems_currentPreviewItemIndex_itemProvider_stateManager_ argumentIndex:2 ofReply:0];
  v60 = v5;
  [v10 setInterface:v5 forSelector:sel_configureWithNumberOfItems_currentPreviewItemIndex_itemProvider_stateManager_ argumentIndex:3 ofReply:0];
  [v10 setInterface:v1 forSelector:sel_configureWithNumberOfItems_currentPreviewItemIndex_itemProvider_stateManager_fullScreen_ argumentIndex:2 ofReply:0];
  [v10 setInterface:v5 forSelector:sel_configureWithNumberOfItems_currentPreviewItemIndex_itemProvider_stateManager_fullScreen_ argumentIndex:3 ofReply:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23A7FD270;
  v12 = sub_23A7A3798(0, &qword_27DFAA0D0, 0x277D43FB0);
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9340, &qword_23A7FD2A0);
  *(v11 + 32) = v12;
  v13 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
  *(v11 + 88) = v14;
  v15 = v14;
  *(v11 + 64) = v13;
  v16 = sub_23A7A3798(0, &qword_27DFA9358, 0x277D43FC0);
  *(v11 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9360, &qword_23A7FD2A8);
  *(v11 + 96) = v16;
  v17 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v18 = sub_23A7EE994();

  v19 = [v17 initWithArray_];

  sub_23A7A3798(0, &qword_27DFA9368, 0x277D82BB8);
  sub_23A7A6960();
  v20 = sub_23A7EEAF4();

  sub_23A7A657C(v20);

  v21 = sub_23A7EEAD4();

  [v10 setClasses:v21 forSelector:sel_toolbarButtonsForTraitCollection_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23A7FD280;
  *(v22 + 56) = v15;
  v23 = v15;
  v55 = v13;
  v56 = v15;
  v24 = v13;
  *(v22 + 32) = v13;
  v58 = sub_23A7A3798(0, &qword_27DFA9378, 0x277CCACA8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9380, &qword_23A7FD2B0);
  *(v22 + 88) = v57;
  *(v22 + 64) = v58;
  v25 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v26 = sub_23A7EE994();

  v27 = [v25 initWithArray_];

  v28 = sub_23A7EEAF4();
  sub_23A7A657C(v28);

  v29 = sub_23A7EEAD4();

  [v10 setClasses:v29 forSelector:sel_toolbarButtonsForTraitCollection_withCompletionHandler_ argumentIndex:1 ofReply:1];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23A7FD280;
  *(v30 + 56) = v23;
  *(v30 + 32) = v24;
  v31 = sub_23A7A3798(0, &qword_27DFA8FD8, 0x277D43F80);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9390, &qword_23A7FD2B8);
  *(v30 + 88) = v32;
  *(v30 + 64) = v31;
  v33 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v34 = sub_23A7EE994();

  v35 = [v33 initWithArray_];

  v36 = sub_23A7EEAF4();
  sub_23A7A657C(v36);

  v37 = sub_23A7EEAD4();

  [v10 setClasses:v37 forSelector:sel_keyCommandsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_23A7FD280;
  *(v38 + 32) = v55;
  *(v38 + 88) = v32;
  *(v38 + 56) = v56;
  *(v38 + 64) = v31;
  v39 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v40 = sub_23A7EE994();

  v41 = [v39 initWithArray_];

  v42 = sub_23A7EEAF4();
  sub_23A7A657C(v42);

  v43 = sub_23A7EEAD4();

  [v10 setClasses:v43 forSelector:sel_keyCommandWasPerformed_ argumentIndex:0 ofReply:0];

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_23A7FD290;
  v45 = sub_23A7A3798(0, &qword_27DFA9398, 0x277CBEAC0);
  *(v44 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA93A0, &qword_23A7FD2C0);
  *(v44 + 32) = v45;
  v46 = sub_23A7A3798(0, &qword_27DFA93A8, 0x277CCAE60);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA93B0, &qword_23A7FD2C8);
  *(v44 + 64) = v46;
  *(v44 + 120) = v57;
  *(v44 + 88) = v47;
  *(v44 + 96) = v58;
  v48 = sub_23A7A3798(0, &qword_27DFA93B8, 0x277CCABB0);
  *(v44 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA93C0, &qword_23A7FD2D0);
  *(v44 + 128) = v48;
  v49 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v50 = sub_23A7EE994();

  v51 = [v49 initWithArray_];

  v52 = sub_23A7EEAF4();
  sub_23A7A657C(v52);

  v53 = sub_23A7EEAD4();

  [v10 setClasses:v53 forSelector:sel_setPreviewItemDisplayState_onItemAtIndex_ argumentIndex:0 ofReply:0];

  [v10 setInterface:v59 forSelector:sel_startTransitionWithSourceViewProvider_transitionController_presenting_useInteractiveTransition_completionHandler_ argumentIndex:1 ofReply:0];
  [v10 setInterface:v66 forSelector:sel_setNotificationCenter_ argumentIndex:0 ofReply:0];
  [v10 &selRef:v65 setOriginalRightBarButtonItems:{sel_getNetworkObserverWithCompletionBlock_, 0, 1} + 1];

  return v10;
}

uint64_t sub_23A7A657C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_23A7EEC84())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA93C8, &qword_23A7FD2D8);
  v3 = sub_23A7EECB4();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_23A7EEC74();
  sub_23A7A3798(0, &qword_27DFA9368, 0x277D82BB8);
  sub_23A7A6960();
  result = sub_23A7EEB04();
  v1 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
  v8 = v35;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_23A7EEC94();
    if (!v16)
    {
LABEL_34:
      sub_23A7A69C8();

      return v3;
    }

    *&v28 = v16;
    sub_23A7A3798(0, &qword_27DFA9368, 0x277D82BB8);
    swift_dynamicCast();
LABEL_25:
    sub_23A7A3798(0, &qword_27DFA9368, 0x277D82BB8);
    swift_dynamicCast();
    v20 = *(v3 + 40);
    result = sub_23A7EECA4();
    v21 = -1 << *(v3 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      do
      {
        if (++v23 == v25 && (v24 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
      }

      while (v27 == -1);
      v13 = __clz(__rbit64(~v27)) + (v23 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v30;
    *v14 = v28;
    *(v14 + 16) = v29;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_23A7A68F8()
{
  v0 = objc_opt_self();
  v1 = &unk_284DBA230;
  v2 = [v0 interfaceWithProtocol_];

  qword_27DFAC670 = v2;
}

unint64_t sub_23A7A6960()
{
  result = qword_27DFA9370;
  if (!qword_27DFA9370)
  {
    sub_23A7A3798(255, &qword_27DFA9368, 0x277D82BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9370);
  }

  return result;
}

void sub_23A7A69D0(void *a1)
{
  v2 = v1;
  v4 = sub_23A7EE404();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9448, &qword_23A7FD320);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  [a1 removeFromSuperview];
  v12 = *&v2[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView];
  if (v12)
  {
    v51 = v11;
    v52 = v7;
    v13 = v12;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 addSubview_];
    v14 = [v13 leftAnchor];
    v15 = [v2 leftAnchor];
    v50 = [v14 constraintGreaterThanOrEqualToAnchor_];

    v16 = [v2 rightAnchor];
    v17 = [v13 rightAnchor];
    v49 = [v16 constraintGreaterThanOrEqualToAnchor_];

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FA0, &qword_23A7FD328);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23A7FD2E0;
    v19 = [v2 readableContentGuide];
    v20 = [v19 leadingAnchor];

    v21 = [v13 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    *(v18 + 32) = v22;
    v23 = [v2 readableContentGuide];
    v24 = [v23 trailingAnchor];

    v25 = [v13 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    *(v18 + 40) = v26;
    v27 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      v28 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x23EE8C140](v28, v18);
        }

        else
        {
          if (v28 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v29 = *(v18 + 8 * v28 + 32);
        }

        v31 = v29;
        ++v28;
        LODWORD(v30) = 1144750080;
        [v29 setPriority_];
      }

      while (v27 != v28);
    }

    v32 = objc_opt_self();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_23A7FD2F0;
    v35 = v49;
    v34 = v50;
    *(v33 + 32) = v50;
    *(v33 + 40) = v35;
    v48 = v34;
    v50 = v35;
    v36 = [v2 safeAreaLayoutGuide];
    v37 = [v36 bottomAnchor];

    v38 = [v13 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:20.0];

    *(v33 + 48) = v39;
    v40 = [v13 heightAnchor];
    v41 = [v40 constraintEqualToConstant_];

    *(v33 + 56) = v41;
    sub_23A7A3798(0, &qword_27DFA95B0, 0x277CCAAD0);
    v42 = sub_23A7EE994();

    [v32 activateConstraints_];

    v43 = sub_23A7EE994();

    [v32 activateConstraints_];

    v44 = v51;
    sub_23A7EE3D4();
    v45 = sub_23A7EE3E4();
    (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    sub_23A7EEC14();
    sub_23A7EE3F4();
    v53[3] = sub_23A7EE414();
    v53[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v53);
    sub_23A7EE424();
    sub_23A7EEC04();
    [v13 setClipsToBounds_];

    v46 = *&v2[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_leftConstraint];
    *&v2[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_leftConstraint] = v48;

    v47 = *&v2[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_rightConstraint];
    *&v2[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_rightConstraint] = v50;
  }
}

void sub_23A7A6FA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9448, &qword_23A7FD320);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for QLAccessoryContainerView();
  v30.receiver = v0;
  v30.super_class = v5;
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v6 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  sub_23A7EE3C4();
  v7 = sub_23A7EE3E4();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_23A7EEC14();
  v8 = *&v0[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView];
  if (v8)
  {
    v9 = v8;
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [v0 bounds];
    Height = CGRectGetHeight(v31);
    v32.origin.x = v11;
    v32.origin.y = v13;
    v32.size.width = v15;
    v32.size.height = v17;
    v19 = Height - CGRectGetHeight(v32);
    [v0 layoutMargins];
    [v0 _concentricEdgeInsetsForEdge_bounds_minimumEdgeInsets_];
    v26 = v25;
    v27 = *&v0[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_leftConstraint];
    if (v27)
    {
      [v27 setConstant_];
    }

    v28 = *&v0[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_rightConstraint];
    if (v28)
    {
      v29 = v28;
      [v29 setConstant_];
    }
  }
}

id sub_23A7A73B8(void *a1)
{
  *&v1[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_containedView] = 0;
  *&v1[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_leftConstraint] = 0;
  *&v1[OBJC_IVAR____TtC9QuickLook24QLAccessoryContainerView_rightConstraint] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for QLAccessoryContainerView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23A7A746C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLAccessoryContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_23A7A7584()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 windowScene];

      if (v4)
      {
        v5 = [v4 screenshotService];

        if (v5)
        {
          [v5 setPrivateDelegate_];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23A7A76C4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 windowScene];

      if (v4)
      {
        v5 = [v4 screenshotService];

        if (v5)
        {
          [v5 setPrivateDelegate_];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_23A7A77F8(uint64_t (*a1)(void, unint64_t, void, double, double, double, double), uint64_t a2)
{
  v3 = v2;
  v6 = [v2 internalCurrentPreviewItem];
  if (!v6)
  {
    return a1(0, 0xF000000000000000, 0, 0.0, 0.0, 0.0, 0.0);
  }

  v7 = v6;
  v8 = [v2 printer];
  if (!v8)
  {
LABEL_7:

    return a1(0, 0xF000000000000000, 0, 0.0, 0.0, 0.0, 0.0);
  }

  v9 = v8;
  v10 = [objc_allocWithZone(QLPreviewPrinter) initWithPreviewPrinter_];
  if (!v10)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = v11;
  swift_unknownObjectRetain_n();
  v14 = v13;

  result = [v3 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    v18 = [v17 windowScene];
    v20[0] = v7;
    v20[1] = v9;
    v20[2] = v14;
    swift_unknownObjectWeakInit();
    v19 = v7;

    v20[4] = sub_23A7A8CDC;
    v20[5] = v12;
    sub_23A7C4BDC(v20);

    swift_unknownObjectRelease_n();
    return sub_23A7A8CE4(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23A7A79DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v39 = a6;
  v40 = a3;
  v43 = a4;
  v44 = a5;
  v7 = sub_23A7EE794();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23A7EE7B4();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v41);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94D0, &unk_23A7FD340);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v38 - v17;
  v19 = sub_23A7EDF64();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7A8D38(a1, &aBlock, &qword_27DFA9A40, &unk_23A7FDBA0);
  if (v50)
  {
    if (swift_dynamicCast())
    {
      v24 = v45;
      v25 = v46;
LABEL_4:
      v26 = swift_allocObject();
      v27 = v44;
      v26[2] = v43;
      v26[3] = v27;
      v26[4] = v24;
      v26[5] = v25;
      v51 = sub_23A7A8C4C;
      v52 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_23A7C4B58;
      v50 = &block_descriptor_15;
      v28 = _Block_copy(&aBlock);

      sub_23A7A8C88(v24, v25);

      [v39 provideCurrentPageAndVisibleRectWithCompletionHandler_];
      sub_23A7A8BF8(v24, v25);
      _Block_release(v28);
      return;
    }
  }

  else
  {
    sub_23A7A8E74(&aBlock, &qword_27DFA9A40, &unk_23A7FDBA0);
  }

  sub_23A7A8D38(a1, &aBlock, &qword_27DFA9A40, &unk_23A7FDBA0);
  if (!v50)
  {
    sub_23A7A8E74(&aBlock, &qword_27DFA9A40, &unk_23A7FDBA0);
    (*(v20 + 56))(v18, 1, 1, v19);
    goto LABEL_11;
  }

  v29 = swift_dynamicCast();
  (*(v20 + 56))(v18, v29 ^ 1u, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
LABEL_11:
    sub_23A7A8E74(v18, &unk_27DFA94D0, &unk_23A7FD340);
    goto LABEL_13;
  }

  (*(v20 + 32))(v23, v18, v19);
  if (sub_23A7EDF04())
  {
    v24 = sub_23A7EDF74();
    v25 = v37;
    (*(v20 + 8))(v23, v19);
    goto LABEL_4;
  }

  (*(v20 + 8))(v23, v19);
LABEL_13:
  sub_23A7A5728();
  v30 = sub_23A7EEB64();
  v31 = swift_allocObject();
  v32 = v40;
  v33 = v43;
  v34 = v44;
  v31[2] = v40;
  v31[3] = v33;
  v31[4] = v34;
  v51 = sub_23A7A8AC8;
  v52 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_23A7A0EA0;
  v50 = &block_descriptor_9;
  v35 = _Block_copy(&aBlock);
  v36 = v32;

  sub_23A7EE7A4();
  aBlock = MEMORY[0x277D84F90];
  sub_23A7A8AF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94E8, &unk_23A7FE270);
  sub_23A7A8B4C();
  sub_23A7EEC54();
  MEMORY[0x23EE8BFD0](0, v14, v10, v35);
  _Block_release(v35);

  (*(v42 + 8))(v10, v7);
  (*(v11 + 8))(v14, v41);
}

uint64_t sub_23A7A7FE4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_23A7A8AB8(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_23A7A8E74(v11, &qword_27DFA9A40, &unk_23A7FDBA0);
}

void sub_23A7A8118(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_23A7EDF84();
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

uint64_t sub_23A7A81BC(uint64_t a1, void (*a2)(double, double, double, double))
{
  v4 = _s12GeneratedPDFVMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA94F8, &unk_23A7FE630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  sub_23A7A8D38(a1, &v19[-v10], &qword_27DFA94F8, &unk_23A7FE630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23A7A8E74(v11, &qword_27DFA94F8, &unk_23A7FE630);
    return (a2)(0, 0xF000000000000000, 0, 0.0, 0.0, 0.0, 0.0);
  }

  else
  {
    sub_23A7A8DA0(v11, v7);
    v13 = sub_23A7EDF74();
    v14 = *&v7[*(v4 + 24)];
    v15 = &v7[*(v4 + 28)];
    v16 = v13;
    v18 = v17;
    a2(*v15, v15[1], v15[2], v15[3]);
    sub_23A7A8E04(v16, v18);
    return sub_23A7A8E18(v7);
  }
}

void sub_23A7A8384(void *a1, void (**a2)(void, void, void, double, double, double, double))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = [a1 internalCurrentPreviewItem];
  if (v5)
  {
    v6 = v5;
    v7 = [a1 printer];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(QLPreviewPrinter) initWithPreviewPrinter_];
      if (v9)
      {
        v10 = v9;
        v11 = swift_allocObject();
        *(v11 + 16) = sub_23A7A8EDC;
        *(v11 + 24) = v4;
        swift_unknownObjectRetain_n();
        v12 = v10;

        v13 = [a1 view];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 window];

          v16 = [v15 windowScene];
          v18[0] = v6;
          v18[1] = v8;
          v18[2] = v12;
          swift_unknownObjectWeakInit();
          v17 = v6;

          v18[4] = sub_23A7A8EE8;
          v18[5] = v11;
          sub_23A7C4BDC(v18);

          swift_unknownObjectRelease_n();
          sub_23A7A8CE4(v18);
        }

        else
        {
          _Block_release(a2);
          __break(1u);
        }

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  a2[2](a2, 0, 0, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_23A7A85D0(id a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA94C0, &unk_23A7FD330);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - v6;
  v8 = sub_23A7EE374();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  _Block_copy(a2);
  v17 = [a1 internalCurrentPreviewItem];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 previewItemContentType];
  if (!v19)
  {
    goto LABEL_12;
  }

  v43 = v15;
  v44 = a1;
  v20 = v16;
  v21 = v19;
  sub_23A7EE844();
  v22 = v9;

  sub_23A7EE384();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_23A7A8E74(v7, &unk_27DFA94C0, &unk_23A7FD330);
    a1 = v44;
LABEL_13:
    _Block_copy(a2);
    sub_23A7A8384(a1, a2);
    _Block_release(a2);
  }

  v23 = v43;
  (*(v22 + 32))(v43, v7, v8);
  sub_23A7EE334();
  v24 = sub_23A7EE364();
  v26 = v22 + 8;
  v25 = *(v22 + 8);
  v25(v13, v8);
  v27 = v20;
  if ((v24 & 1) == 0)
  {
    v25(v23, v8);

    a1 = v44;
    goto LABEL_13;
  }

  v28 = [objc_opt_self() fetcherForPreviewItem_];
  a1 = v44;
  if (!v28)
  {
    v25(v43, v8);
LABEL_12:

    goto LABEL_13;
  }

  v29 = v28;
  v30 = [v44 printer];
  if (!v30)
  {
    v25(v43, v8);

    goto LABEL_12;
  }

  v40 = v30;
  v31 = [a1 _pdfItemAllowedOutputClasses];
  sub_23A7EEAF4();
  v42 = v26;

  v41 = sub_23A7EEAD4();

  v32 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v33 = swift_allocObject();
  v33[2] = a1;
  v33[3] = sub_23A7A8A8C;
  v34 = v40;
  v33[4] = v27;
  v33[5] = v34;
  aBlock[4] = sub_23A7A8A94;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A7A7FE4;
  aBlock[3] = &block_descriptor_2;
  v35 = _Block_copy(aBlock);
  v36 = a1;

  swift_unknownObjectRetain();

  v37 = v41;
  [v29 fetchContentWithAllowedOutputClasses:v41 inQueue:v32 updateBlock:0 completionBlock:v35];

  _Block_release(v35);
  swift_unknownObjectRelease();

  v25(v43, v8);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_23A7A8AB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_23A7A8AC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_23A7A77F8(v1, v2);
}

unint64_t sub_23A7A8AF4()
{
  result = qword_27DFA94E0;
  if (!qword_27DFA94E0)
  {
    sub_23A7EE794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA94E0);
  }

  return result;
}

unint64_t sub_23A7A8B4C()
{
  result = qword_27DFA94F0;
  if (!qword_27DFA94F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA94E8, &unk_23A7FE270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA94F0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23A7A8BF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23A7A8C4C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    return (*(v1 + 16))(*(v1 + 32), *(v1 + 40), result);
  }

  return result;
}

uint64_t sub_23A7A8C88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23A7A8D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A7A8DA0(uint64_t a1, uint64_t a2)
{
  v4 = _s12GeneratedPDFVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7A8E04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23A7A8BF8(a1, a2);
  }

  return a1;
}

uint64_t sub_23A7A8E18(uint64_t a1)
{
  v2 = _s12GeneratedPDFVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A7A8E74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23A7A8EEC()
{
  swift_getKeyPath();
  sub_23A7AA358();
  sub_23A7EE014();

  return *(v0 + 16);
}

uint64_t sub_23A7A8F5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23A7AA358();
  sub_23A7EE014();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_23A7A8FD4(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7AA358();
    sub_23A7EE004();
  }

  return result;
}

uint64_t sub_23A7A90B4()
{
  v1 = OBJC_IVAR____TtC9QuickLookP33_CA8240D53F8462069CDA31A2DF9EC6E212HostingState___observationRegistrar;
  v2 = sub_23A7EE054();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for HostingState()
{
  result = qword_27DFA9510;
  if (!qword_27DFA9510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A7A91A4()
{
  result = sub_23A7EE054();
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

uint64_t sub_23A7A9240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95B8, &qword_23A7FD4F0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95C0, &qword_23A7FD4F8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  *v8 = sub_23A7EE554();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v14 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95C8, &qword_23A7FD500) + 44)];
  sub_23A7A945C(a1);
  v15 = sub_23A7EE464();
  v16 = sub_23A7EE624();
  v17 = &v8[*(v5 + 44)];
  *v17 = v15;
  v17[8] = v16;
  sub_23A7EE784();
  sub_23A7EE474();
  sub_23A7AA428(v8, v13, &qword_27DFA95B8, &qword_23A7FD4F0);
  v18 = &v13[*(v10 + 44)];
  v19 = v26[5];
  *(v18 + 4) = v26[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v26[6];
  v20 = v26[1];
  *v18 = v26[0];
  *(v18 + 1) = v20;
  v21 = v26[3];
  *(v18 + 2) = v26[2];
  *(v18 + 3) = v21;
  v22 = sub_23A7EE6B4();
  v23 = sub_23A7EE624();
  sub_23A7AA428(v13, a2, &qword_27DFA95C0, &qword_23A7FD4F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95D0, &qword_23A7FD508);
  v25 = a2 + *(result + 36);
  *v25 = v22;
  *(v25 + 8) = v23;
  return result;
}

uint64_t sub_23A7A945C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95D8, &qword_23A7FD510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95E0, &qword_23A7FD518);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95E8, &qword_23A7FD520);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  swift_getKeyPath();
  v23[1] = a1;
  sub_23A7AA358();
  sub_23A7EE014();

  if (*(a1 + 16) == 1)
  {
    *v13 = sub_23A7EE524();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9620, &qword_23A7FD568);
    sub_23A7A97C4(&v13[*(v14 + 44)]);
    sub_23A7A8D38(v13, v9, &qword_27DFA95E8, &qword_23A7FD520);
    swift_storeEnumTagMultiPayload();
    sub_23A7AA790(&qword_27DFA95F8, &qword_27DFA95E8, &qword_23A7FD520);
    sub_23A7AA490();
    sub_23A7EE574();
    v15 = v13;
    v16 = &qword_27DFA95E8;
    v17 = &qword_23A7FD520;
  }

  else
  {
    sub_23A7EE444();
    v18 = &v5[*(v2 + 36)];
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95F0, &qword_23A7FD528) + 28);
    v20 = *MEMORY[0x277CDF438];
    v21 = sub_23A7EE434();
    (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
    *v18 = swift_getKeyPath();
    sub_23A7A8D38(v5, v9, &qword_27DFA95D8, &qword_23A7FD510);
    swift_storeEnumTagMultiPayload();
    sub_23A7AA790(&qword_27DFA95F8, &qword_27DFA95E8, &qword_23A7FD520);
    sub_23A7AA490();
    sub_23A7EE574();
    v15 = v5;
    v16 = &qword_27DFA95D8;
    v17 = &qword_23A7FD510;
  }

  return sub_23A7A8E74(v15, v16, v17);
}

uint64_t sub_23A7A97C4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95D8, &qword_23A7FD510);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  sub_23A7EE534();
  v10 = sub_23A7EE664();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_23A7EE444();
  v17 = &v9[*(v3 + 44)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA95F0, &qword_23A7FD528) + 28);
  v19 = *MEMORY[0x277CDF438];
  v20 = sub_23A7EE434();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  sub_23A7A8D38(v9, v7, &qword_27DFA95D8, &qword_23A7FD510);
  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9628, &qword_23A7FD570);
  sub_23A7A8D38(v7, a1 + *(v21 + 48), &qword_27DFA95D8, &qword_23A7FD510);
  sub_23A7AA574(v10, v12, v14 & 1);

  sub_23A7A8E74(v9, &qword_27DFA95D8, &qword_23A7FD510);
  sub_23A7A8E74(v7, &qword_27DFA95D8, &qword_23A7FD510);
  sub_23A7AA584(v10, v12, v14 & 1);
}

char *sub_23A7A9A1C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9QuickLook23QLHostPlaceholderUIView_hostingState;
  v10 = type metadata accessor for HostingState();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  sub_23A7EE044();
  *&v4[v9] = v13;
  v38.receiver = v4;
  v38.super_class = type metadata accessor for QLHostPlaceholderUIView();
  v14 = objc_msgSendSuper2(&v38, sel_initWithFrame_, a1, a2, a3, a4);
  v37 = *&v14[OBJC_IVAR____TtC9QuickLook23QLHostPlaceholderUIView_hostingState];
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA95A0, &unk_23A7FD460));
  v16 = v14;

  v17 = sub_23A7EE454();
  v18 = [objc_opt_self() clearColor];
  [v17 setBackgroundColor_];

  v19 = v17;
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = v16;
  [v20 addSubview_];
  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FA0, &qword_23A7FD328);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23A7FD2F0;
  v23 = [v20 leadingAnchor];
  v24 = [v19 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v25;
  v26 = [v20 trailingAnchor];

  v27 = [v19 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 40) = v28;
  v29 = [v20 topAnchor];

  v30 = [v19 topAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v22 + 48) = v31;
  v32 = [v20 bottomAnchor];

  v33 = [v19 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v22 + 56) = v34;
  sub_23A7AA3B0();
  v35 = sub_23A7EE994();

  [v21 activateConstraints_];

  return v20;
}

id sub_23A7A9F34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLHostPlaceholderUIView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23A7A9FB0()
{
  result = qword_27DFA9590;
  if (!qword_27DFA9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9590);
  }

  return result;
}

uint64_t sub_23A7AA004(uint64_t a1)
{
  v2 = sub_23A7EE434();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x23EE8B8F0](v5);
}

void sub_23A7AA0CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9QuickLook23QLHostPlaceholderUIView_hostingState);
  if (*(v1 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7AA358();

    sub_23A7EE004();
  }

  else
  {
    *(v1 + 16) = 0;
  }
}

uint64_t sub_23A7AA1C4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC9QuickLook23QLHostPlaceholderUIView_hostingState);
  if (result)
  {
    if (*(v2 + 16))
    {
      *(v2 + 16) = 1;
      return result;
    }

    goto LABEL_5;
  }

  if (*(v2 + 16))
  {
LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23A7AA358();

    sub_23A7EE004();
  }

  *(v2 + 16) = 0;
  return result;
}

unint64_t sub_23A7AA358()
{
  result = qword_27DFA9598;
  if (!qword_27DFA9598)
  {
    type metadata accessor for HostingState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9598);
  }

  return result;
}

unint64_t sub_23A7AA3B0()
{
  result = qword_27DFA95B0;
  if (!qword_27DFA95B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA95B0);
  }

  return result;
}

uint64_t sub_23A7AA428(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_23A7AA490()
{
  result = qword_27DFA9600;
  if (!qword_27DFA9600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA95D8, &qword_23A7FD510);
    sub_23A7AA790(&qword_27DFA9608, &qword_27DFA9610, &qword_23A7FD560);
    sub_23A7AA790(&qword_27DFA9618, &qword_27DFA95F0, &qword_23A7FD528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9600);
  }

  return result;
}

uint64_t sub_23A7AA574(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23A7AA584(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_23A7AA594()
{
  result = qword_27DFA9630;
  if (!qword_27DFA9630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA95D0, &qword_23A7FD508);
    sub_23A7AA64C();
    sub_23A7AA790(&qword_27DFA9658, &unk_27DFA9660, &unk_23A7FD580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9630);
  }

  return result;
}

unint64_t sub_23A7AA64C()
{
  result = qword_27DFA9638;
  if (!qword_27DFA9638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA95C0, &qword_23A7FD4F8);
    sub_23A7AA6D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9638);
  }

  return result;
}

unint64_t sub_23A7AA6D8()
{
  result = qword_27DFA9640;
  if (!qword_27DFA9640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA95B8, &qword_23A7FD4F0);
    sub_23A7AA790(&qword_27DFA9648, &qword_27DFA9650, &qword_23A7FD578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9640);
  }

  return result;
}

uint64_t sub_23A7AA790(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t QLPreviewReply.stringEncoding.getter()
{
  [v0 stringEncoding];

  return sub_23A7EE884();
}

uint64_t sub_23A7AA834(uint64_t a1, id *a2)
{
  v4 = sub_23A7EE8A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  [*a2 setStringEncoding_];
  return (*(v5 + 8))(v8, v4);
}

uint64_t QLPreviewReply.stringEncoding.setter(uint64_t a1)
{
  v2 = v1;
  [v2 setStringEncoding_];
  v4 = sub_23A7EE8A4();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void (*QLPreviewReply.stringEncoding.modify(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_23A7EE8A4();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  [v1 stringEncoding];
  sub_23A7EE884();
  return sub_23A7AAAD4;
}

void sub_23A7AAAD4(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v6[2]((*a1)[3], v4, v5);
    [v7 setStringEncoding_];
    v8 = v6[1];
    (v8)(v3, v5);
    (v8)(v4, v5);
  }

  else
  {
    v9 = (*a1)[4];
    [v7 setStringEncoding_];
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

id QLPreviewReply.init(contextSize:isBitmap:drawUsing:)(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v15[4] = sub_23A7AADB4;
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_23A7AADBC;
  v15[3] = &block_descriptor_3;
  v12 = _Block_copy(v15);

  v13 = [v10 initWithContextSize:a1 & 1 isBitmap:v12 drawingBlock:{a4, a5}];

  _Block_release(v12);
  return v13;
}

uint64_t sub_23A7AADBC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a2;
  v10 = a3;
  LOBYTE(a4) = v8(v9, v10, a4);

  return a4 & 1;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id QLPreviewReply.init(forPDFWithPageSize:createDocumentUsing:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v13[4] = sub_23A7AB014;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_23A7AB01C;
  v13[3] = &block_descriptor_6;
  v10 = _Block_copy(v13);

  v11 = [v8 initForPDFWithPageSize:v10 documentCreationBlock:{a3, a4}];

  _Block_release(v10);
  return v11;
}

id sub_23A7AB01C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id QLPreviewReply.init(dataOfContentType:contentSize:createDataUsing:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_23A7EE324();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v17[4] = sub_23A7AB2B0;
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_23A7AB2B8;
  v17[3] = &block_descriptor_12;
  v13 = _Block_copy(v17);

  v14 = [v10 initWithDataOfContentType:v11 contentSize:v13 dataCreationBlock:{a4, a5}];
  _Block_release(v13);

  v15 = sub_23A7EE374();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id sub_23A7AB2B8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v10 = sub_23A7EDF84();
    sub_23A7A8E04(v6, v8);
    v9 = v10;
  }

  return v9;
}

unint64_t sub_23A7AB368()
{
  result = qword_27DFA9670;
  if (!qword_27DFA9670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA9670);
  }

  return result;
}

uint64_t sub_23A7AB3C4()
{
  v0 = sub_23A7EE3B4();
  __swift_allocate_value_buffer(v0, qword_27DFA9678);
  __swift_project_value_buffer(v0, qword_27DFA9678);
  return sub_23A7EE3A4();
}

uint64_t QLPrimaryAppExtensionScene.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x7972616D697270;
  a3[1] = 0xE700000000000000;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t QLPrimaryAppExtensionScene.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = type metadata accessor for QLAppExtensionSceneProxy(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 24) = 0;
  sub_23A7EE044();
  v9 = swift_allocObject();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(v9 + 16) = v11;
  *(v9 + 24) = v10;
  *(v9 + 32) = v3;
  v12 = *(v1 + 1);
  *(v9 + 40) = v12;
  *(v9 + 56) = v4;
  *(v9 + 64) = v8;
  v13 = v12;
  swift_bridgeObjectRetain_n();

  return MEMORY[0x2821169D0](v3, v13, sub_23A7AB6BC, v9, sub_23A7AB8E0, v8, v11, v10);
}

uint64_t sub_23A7AB584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a5);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v20 - v15;
  v17(v14);
  sub_23A7CC4C0(v13, a6, a7);
  v18 = *(v9 + 8);
  v18(v13, a6);
  sub_23A7CC4C0(v16, a6, a7);
  return (v18)(v16, a6);
}

uint64_t sub_23A7AB6D0(id a1, uint64_t a2)
{
  if (qword_27DFA8D20 != -1)
  {
    swift_once();
  }

  [a1 setExportedInterface_];
  [a1 setExportedObject_];
  [a1 resume];
  sub_23A7ABA58();
  sub_23A7A45A8(a1);
  if (!v4)
  {
    if (qword_27DFA8D30 != -1)
    {
      swift_once();
    }

    v8 = sub_23A7EE3B4();
    __swift_project_value_buffer(v8, qword_27DFA9678);
    v9 = sub_23A7EE394();
    v10 = sub_23A7EEB34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23A714000, v9, v10, "Failed to set hostApplicationBundleIdentifier on proxy", v11, 2u);
      MEMORY[0x23EE8D760](v11, -1, -1);
    }

    return 1;
  }

  swift_getKeyPath();
  sub_23A7ABAA4();
  sub_23A7EE014();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_23A7EE814();

    [v6 setHostApplicationBundleIdentifier_];
    swift_unknownObjectRelease();

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A7AB8E8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23A7AB970()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23A7AB9B8(uint64_t a1, int a2)
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

uint64_t sub_23A7ABA00(uint64_t result, int a2, int a3)
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

unint64_t sub_23A7ABA58()
{
  result = qword_27DFA9710;
  if (!qword_27DFA9710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFA9710);
  }

  return result;
}

unint64_t sub_23A7ABAA4()
{
  result = qword_27DFA8F88;
  if (!qword_27DFA8F88)
  {
    type metadata accessor for QLAppExtensionSceneProxy(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA8F88);
  }

  return result;
}

uint64_t static QLWebLocationBarViewInterface.makeLocationBarUI(_:)(uint64_t a1)
{
  v2 = type metadata accessor for QLWebLocationBarView();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = sub_23A7EDF64();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  sub_23A7ABC3C(v8, v6);
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9718, &unk_23A7FD680));
  v11 = sub_23A7EE564();
  sub_23A7ABCA0(v8);
  return v11;
}

uint64_t sub_23A7ABC3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QLWebLocationBarView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7ABCA0(uint64_t a1)
{
  v2 = type metadata accessor for QLWebLocationBarView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id QLWebLocationBarViewInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QLWebLocationBarViewInterface.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLWebLocationBarViewInterface();
  return objc_msgSendSuper2(&v2, sel_init);
}

id QLWebLocationBarViewInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLWebLocationBarViewInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t QLHostRemoteView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_23A7EE784();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9720, &qword_23A7FD6C0);
  sub_23A7AC030(v4, v3, (a1 + *(v6 + 44)));
  v7 = sub_23A7EE464();
  LOBYTE(v4) = sub_23A7EE624();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9728, &qword_23A7FD6C8);
  v9 = a1 + *(result + 36);
  *v9 = v7;
  v9[8] = v4;
  return result;
}

uint64_t sub_23A7AC030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for QLHostDebugView();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9748, &qword_23A7FD770);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v30 = a1;
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9750, &qword_23A7FD778);
  sub_23A7EE6F4();
  v15 = v29;
  swift_getKeyPath();
  v30 = v15;
  sub_23A7AC4C4();
  sub_23A7EE014();

  v16 = *(v15 + 40);

  v30 = a1;
  v31 = a2;
  sub_23A7EE6F4();
  v17 = v29;
  swift_getKeyPath();
  v30 = v17;
  sub_23A7EE014();

  v18 = *(v17 + 16);

  if (v18 == 1)
  {
    v30 = a1;
    v31 = a2;
    sub_23A7EE6F4();
    type metadata accessor for QLHostRemoteViewModel();
    v19 = v25;
    sub_23A7EE754();
    sub_23A7AC5F4(v19, v14);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v26 + 56))(v14, v20, 1, v27);
  sub_23A7AC51C(v14, v12);
  v21 = v28;
  *v28 = v16;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9758, &unk_23A7FD7D0);
  sub_23A7AC51C(v12, v21 + *(v22 + 48));

  sub_23A7AC58C(v14);
  sub_23A7AC58C(v12);
}

uint64_t sub_23A7AC334@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_23A7EE784();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9720, &qword_23A7FD6C0);
  sub_23A7AC030(v4, v3, (a1 + *(v6 + 44)));
  v7 = sub_23A7EE464();
  LOBYTE(v4) = sub_23A7EE624();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9728, &qword_23A7FD6C8);
  v9 = a1 + *(result + 36);
  *v9 = v7;
  v9[8] = v4;
  return result;
}

unint64_t sub_23A7AC3D4()
{
  result = qword_27DFA9730;
  if (!qword_27DFA9730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9728, &qword_23A7FD6C8);
    sub_23A7AC460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9730);
  }

  return result;
}

unint64_t sub_23A7AC460()
{
  result = qword_27DFA9738;
  if (!qword_27DFA9738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFA9740, &qword_23A7FD768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9738);
  }

  return result;
}

unint64_t sub_23A7AC4C4()
{
  result = qword_27DFA9FF0;
  if (!qword_27DFA9FF0)
  {
    type metadata accessor for QLHostRemoteViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFA9FF0);
  }

  return result;
}

uint64_t sub_23A7AC51C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9748, &qword_23A7FD770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7AC58C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9748, &qword_23A7FD770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A7AC5F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QLHostDebugView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A7AC658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_23A7EE0F4();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_23A7EDFE4();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v4[15] = *(v9 + 64);
  v4[16] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97C8, &unk_23A7FD858) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v11 = sub_23A7EE164();
  v4[19] = v11;
  v12 = *(v11 - 8);
  v4[20] = v12;
  v13 = *(v12 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v14 = sub_23A7EE0C4();
  v4[23] = v14;
  v15 = *(v14 - 8);
  v4[24] = v15;
  v16 = *(v15 + 64) + 15;
  v4[25] = swift_task_alloc();
  v17 = sub_23A7EE0D4();
  v4[26] = v17;
  v18 = *(v17 - 8);
  v4[27] = v18;
  v19 = *(v18 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A7AC8F0, 0, 0);
}

uint64_t sub_23A7AC8F0()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[9];
  v0[30] = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_quickLookPreviewAppExtensionPointQuery;
  sub_23A7EE0E4();
  (*(v4 + 16))(v2, v1, v3);
  sub_23A7AE62C(&unk_27DFA9F90, MEMORY[0x277CC5D98]);
  sub_23A7EEAC4();
  v7 = sub_23A7AE62C(&qword_27DFA97D0, MEMORY[0x277CC5D88]);
  v8 = *(MEMORY[0x277D856D0] + 4);
  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_23A7ACA68;
  v10 = v0[25];
  v11 = v0[23];

  return MEMORY[0x282200308](v0 + 5, v11, v7);
}

uint64_t sub_23A7ACA68()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v6 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    (*(v2[24] + 8))(v2[25], v2[23]);
    v4 = sub_23A7ACF68;
  }

  else
  {
    v4 = sub_23A7ACB94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23A7ACB94()
{
  v1 = v0[5];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  if (!v1)
  {
    (*(v3 + 8))(v2, v4);
LABEL_9:
    v22 = v0[30];
    v24 = v0[11];
    v23 = v0[12];
    v27 = v0 + 9;
    v26 = v0[9];
    v25 = v27[1];
    sub_23A7EECD4();

    (*(v24 + 16))(v23, v26 + v22, v25);
    v28 = sub_23A7EE8B4();
    MEMORY[0x23EE8BD70](v28);

    MEMORY[0x23EE8BD70](39, 0xE100000000000000);
    return sub_23A7EED64();
  }

  (*(v3 + 8))(v2, v4);
  if (!*(v1 + 16))
  {

    goto LABEL_9;
  }

  v5 = v0[21];
  v6 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v35 = v0[17];
  v30 = v0[16];
  v31 = v0[15];
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[8];
  v33 = v0[18];
  v34 = v0[9];
  v32 = v0[7];
  v12 = *(v7 + 16);
  v12(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v8);
  v12(v5, v6, v8);
  (*(v9 + 16))(v30, v11, v10);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v32;
  (*(v9 + 32))(v14 + v13, v30, v10);
  swift_unknownObjectRetain();
  sub_23A7EE104();
  v15 = sub_23A7EE124();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v33, 0, 1, v15);
  v17 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_config;
  swift_beginAccess();
  sub_23A7AE708(v33, v34 + v17, &qword_27DFA97C8, &unk_23A7FD858);
  swift_endAccess();
  sub_23A7AE770(v34 + v17, v35);
  v18 = (*(v16 + 48))(v35, 1, v15);
  if (v18 == 1)
  {
    __break(1u);
  }

  else
  {

    v20 = *(MEMORY[0x277CC5DB0] + 4);
    v21 = swift_task_alloc();
    v0[33] = v21;
    *v21 = v0;
    v21[1] = sub_23A7AD064;
    v19 = v0[17];
    v18 = v0[6];
  }

  return MEMORY[0x282116960](v18, v19);
}

uint64_t sub_23A7ACF68()
{
  v11 = v0[32];
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[12];
  (*(v0[27] + 8))(v0[29], v0[26]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23A7AD064()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_23A7AD28C;
  }

  else
  {
    v3 = sub_23A7AD178;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A7AD178()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[25];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v12 = v0[12];
  (*(v0[20] + 8))(v0[22], v0[19]);
  (*(v4 + 8))(v2, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_23A7AD28C()
{
  (*(v0[20] + 8))(v0[22], v0[19]);
  v11 = v0[34];
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[12];
  (*(v0[27] + 8))(v0[29], v0[26]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23A7AD3A0(uint64_t a1, uint64_t a2)
{
  v3[16] = a1;
  v3[17] = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9F80, &unk_23A7FD810) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v7 = sub_23A7EE154();
  v3[19] = v7;
  v8 = *(v7 - 8);
  v3[20] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[21] = v10;
  v3[22] = sub_23A7EEA34();
  v3[23] = sub_23A7EEA24();
  v11 = swift_task_alloc();
  v3[24] = v11;
  *v11 = v3;
  v11[1] = sub_23A7AD510;

  return sub_23A7AC658(v10, a1, a2);
}

uint64_t sub_23A7AD510()
{
  v2 = v0;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v10 = *v1;
  *(*v1 + 200) = v2;

  v7 = sub_23A7EE9E4();
  if (v2)
  {
    v8 = sub_23A7AE2D8;
  }

  else
  {
    v8 = sub_23A7AD66C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23A7AD66C()
{
  v1 = v0[25];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];

  (*(v4 + 16))(v6, v3, v5);
  (*(v4 + 56))(v6, 0, 1, v5);
  v8 = OBJC_IVAR____TtC9QuickLook24QLHostRemotePreviewModel_previewApplicationProcess;
  swift_beginAccess();
  sub_23A7AE708(v6, v7 + v8, &unk_27DFA9F80, &unk_23A7FD810);
  swift_endAccess();
  v9 = sub_23A7EE144();
  if (v1)
  {
    v10 = "QuickLook/QLHostRemotePreviewModel.swift";
    v11 = v1;
    v12 = 40;
    v13 = 1;
    v14 = 48;

    return MEMORY[0x2821FEBD8](v11, v10, v12, v13, v14);
  }

  v15 = v9;
  [v9 setExportedObject_];
  v16 = objc_opt_self();
  v17 = [v16 interfaceWithProtocol_];
  [v15 setExportedInterface_];

  v18 = [v16 interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  [v15 resume];
  if ([v15 remoteObjectInterface])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_23A7FD280;
    v20 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v19 + 32) = v20;
    v21 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
    *(v19 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9790, &unk_23A7FF020);
    *(v19 + 64) = v21;
    v22 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v23 = sub_23A7EE994();

    [v22 initWithArray_];

    v11 = sub_23A7EEAE4();
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ([v15 remoteObjectInterface])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_23A7FD280;
    v25 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v24 + 32) = v25;
    v26 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
    *(v24 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9790, &unk_23A7FF020);
    *(v24 + 64) = v26;
    v27 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v28 = sub_23A7EE994();

    [v27 initWithArray_];

    v11 = sub_23A7EEAE4();
    goto LABEL_20;
  }

  if ([v15 remoteObjectInterface])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_23A7FD270;
    v30 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v29 + 32) = v30;
    v31 = type metadata accessor for PreviewApplication.RestorationItem(0);
    *(v29 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9798, &unk_23A7FD830);
    *(v29 + 64) = v31;
    v32 = sub_23A7A3798(0, &qword_27DFA97A0, 0x277CBEBC0);
    *(v29 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97A8, &qword_23A7FF030);
    *(v29 + 96) = v32;
    v33 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v34 = sub_23A7EE994();

    [v33 initWithArray_];

    v11 = sub_23A7EEAE4();
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ([v15 remoteObjectInterface])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_23A7FD270;
    v36 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v35 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v35 + 32) = v36;
    v37 = type metadata accessor for PreviewApplication.RestorationItem(0);
    *(v35 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9798, &unk_23A7FD830);
    *(v35 + 64) = v37;
    v38 = sub_23A7A3798(0, &qword_27DFA97A0, 0x277CBEBC0);
    *(v35 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97A8, &qword_23A7FF030);
    *(v35 + 96) = v38;
    v39 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v40 = sub_23A7EE994();

    [v39 initWithArray_];

    v11 = sub_23A7EEAE4();
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ([v15 exportedInterface])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_23A7FD280;
    v42 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v41 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v41 + 32) = v42;
    v43 = sub_23A7A3798(0, &qword_27DFA9788, 0x277D43F58);
    *(v41 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9790, &unk_23A7FF020);
    *(v41 + 64) = v43;
    v44 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v45 = sub_23A7EE994();

    [v44 initWithArray_];

    v11 = sub_23A7EEAE4();
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ([v15 exportedInterface])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFA9330, &unk_23A7FF010);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_23A7FD280;
    v47 = sub_23A7A3798(0, &qword_27DFA9348, 0x277CBEA60);
    *(v46 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9350, &unk_23A7FD820);
    *(v46 + 32) = v47;
    v48 = sub_23A7A3798(0, &qword_27DFA97B0, 0x277CBEA90);
    *(v46 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97B8, &unk_23A7FD840);
    *(v46 + 64) = v48;
    v49 = objc_allocWithZone(MEMORY[0x277CBEB98]);
    v50 = sub_23A7EE994();

    [v49 initWithArray_];

    v11 = sub_23A7EEAE4();
LABEL_24:
    __break(1u);
    return MEMORY[0x2821FEBD8](v11, v10, v12, v13, v14);
  }

  v52 = v0[20];
  v51 = v0[21];
  v53 = v0[18];
  v54 = v0[19];
  v0[6] = QLPHDisplayVelocityFromQLPXDisplayVelocity;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_23A7EA76C;
  v0[5] = &block_descriptor_4;
  v55 = _Block_copy(v0 + 2);
  v56 = [v15 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v55);
  sub_23A7EEC44();
  swift_unknownObjectRelease();

  (*(v52 + 8))(v51, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA97C0, &qword_23A7FD850);
  swift_dynamicCast();
  v57 = v0[15];

  v58 = v0[1];

  return v58(v57);
}
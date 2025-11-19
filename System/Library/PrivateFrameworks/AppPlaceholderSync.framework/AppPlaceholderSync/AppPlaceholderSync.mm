BOOL sub_222568B18(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_222568B90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2225904C8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_222568BEC@<X0>(uint64_t *a1@<X8>)
{
  result = Defaults.pairedMirroringDevices.getter();
  *a1 = result;
  return result;
}

uint64_t sub_222568C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22258FD68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 48));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_222568CF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22258FD68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 48)) = a2 + 1;
  }

  return result;
}

uint64_t sub_222568DAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222568DF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222568E2C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222568E64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222568EB4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222568EEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void SelfDestruct(void *a1)
{
  [a1 UTF8String];
  _os_crash();
  __break(1u);
}

uint64_t StoreContext.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t StoreContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222569140(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDE0, &qword_2225912C0);
    v1 = sub_222590828();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    type metadata accessor for FileProtectionType(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_22256EADC((v28 + 8), v26);
    sub_22256EADC(v26, v28);
    v16 = *(v1 + 40);
    sub_2225904C8();
    sub_222590948();
    sub_2225904F8();
    v17 = sub_222590968();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_22256EADC(v28, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t Store.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_222569460(uint64_t a1)
{
  v2 = v1;
  v91[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22258FCA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v63[3] = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_222590268();
  v8 = *(v67 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2225903C8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222590378();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v76 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22258FD68();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v63[4] = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v63[2] = v63 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v63 - v24;
  v75 = sub_222590388();
  v26 = *(v75 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v75);
  v84 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v30 = *(v18 + 16);
  v82 = a1;
  v86 = v30;
  v30((v2 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_url), a1, v17);
  v73 = type metadata accessor for PlaceholderRecord();
  v72 = sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
  v71 = sub_2225902E8();
  v63[5] = 0;
  v69 = v26 + 16;
  v74 = v26;
  v70 = (v26 + 8);
  v65 = v8 + 8;
  v87 = v18 + 16;
  v80 = *MEMORY[0x277CC91D8];
  v79 = v5 + 104;
  v78 = v5 + 8;
  *&v31 = 136315138;
  v64 = v31;
  v83 = xmmword_222591200;
  v88 = v17;
  v90 = v25;
  v85 = v29;
  v81 = v4;
  v68 = (v18 + 8);
  v63[1] = v2;
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v32 = sub_2225901D8();
  v33 = __swift_project_value_buffer(v32, qword_28130F918);

  v89 = v33;
  v34 = sub_2225901B8();
  v35 = sub_222590678();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v91[0] = v37;
    *v36 = v64;
    v38 = v2;
    v39 = sub_22258FD28();
    v41 = sub_222580F0C(v39, v40, v91);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_222567000, v34, v35, "Loading store: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    v42 = v37;
    v25 = v90;
    MEMORY[0x223DBA5D0](v42, -1, -1);
    MEMORY[0x223DBA5D0](v36, -1, -1);
  }

  else
  {
    v38 = v2;
  }

  v43 = v82;
  v86(v25, v82, v88);
  sub_222590368();
  v44 = v84;
  sub_222590398();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDB8, &qword_222591298);
  v45 = swift_allocObject();
  *(v45 + 16) = v83;
  v46 = v72;
  *(v45 + 32) = v73;
  *(v45 + 40) = v46;
  sub_2225903D8();
  v47 = sub_222590428();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_222590438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC0, &unk_2225912A0);
  v50 = v74;
  v51 = *(v74 + 72);
  v52 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = v83;
  v54 = *(v50 + 16);
  v55 = v75;
  v54(v53 + v52, v44, v75);

  v56 = sub_2225902D8();

  sub_22256DC28(v43);
  (*v70)(v84, v55);

  *(v38 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container) = v56;
  v57 = sub_2225902B8();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();

  v60 = sub_2225902C8();
  (*v68)(v82, v88);
  *(v38 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_context) = v60;
  v61 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t sub_22256A384()
{
  v1 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
  type metadata accessor for StoreContext();
  v2 = swift_allocObject();
  v3 = sub_2225902B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  *(v2 + 16) = sub_2225902C8();
  return v2;
}

uint64_t Store.deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v2 = sub_22258FD68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);

  v4 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_context);

  return v0;
}

uint64_t Store.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_url;
  v2 = sub_22258FD68();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);

  v4 = *(v0 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_context);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t StoreContext.add(item:)(uint64_t a1)
{
  v3 = sub_22258FDB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22258FDD8();
  v10 = sub_22256A8F0(v8, v9);

  if (v10)
  {
    v20 = v1;
    v21 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate;
    v11 = OBJC_IVAR____TtC18AppPlaceholderSync17PlaceholderRecord___observationRegistrar;
    v22 = v10;
    swift_getKeyPath();
    v19[1] = sub_22256D478(&qword_281310170, type metadata accessor for PlaceholderRecord);
    v19[2] = v11;
    sub_22258FE28();

    swift_getKeyPath();
    sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
    sub_22256D478(&qword_2813101A8, MEMORY[0x277CC9578]);
    sub_222590348();
    v12 = v21;

    v13 = sub_22258FD98();
    v14 = *(v4 + 8);
    v14(v7, v3);
    if (v13)
    {
      (*(v4 + 16))(v7, a1 + v12, v3);
      v22 = v10;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v19[-2] = v10;
      v19[-1] = v7;
      sub_22258FE18();

      v14(v7, v3);
      v16 = *(v20 + 16);
      sub_222590278();
    }
  }

  else
  {
    v18 = *(v1 + 16);
    sub_22258AC2C();
    type metadata accessor for PlaceholderRecord();
    sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
    sub_2225902A8();

    return sub_222590278();
  }
}

unint64_t sub_22256A8F0(uint64_t a1, uint64_t a2)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDE8, &qword_2225912C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v22 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF0, &qword_2225912D0);
  v8 = *(v24 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF8, &qword_2225912D8);
  v13 = *(v12 - 8);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = v22 - v15;
  v22[1] = a1;
  v25 = a1;
  v26 = a2;
  v27 = type metadata accessor for PlaceholderRecord();
  sub_22258FE08();
  (*(v13 + 16))(v7, v16, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_2225902F8();
  v17 = *(v2 + 16);
  v23 = v11;
  result = sub_222590288();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v19 = 0;
    goto LABEL_9;
  }

  v20 = result;
  v21 = sub_2225907F8();
  result = v20;
  if (!v21)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x223DB9CC0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 32);

LABEL_6:

LABEL_9:
    (*(v8 + 8))(v23, v24);
    (*(v13 + 8))(v16, v12);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t StoreContext.delete(item:)()
{
  v1 = sub_22258FDD8();
  v3 = sub_22256A8F0(v1, v2);

  if (v3)
  {
    v5 = *(v0 + 16);
    type metadata accessor for PlaceholderRecord();
    sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
    sub_222590298();
    sub_222590278();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoreContext.delete(items:)(Swift::OpaquePointer items)
{
  v2 = v1;
  if (items._rawValue >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((items._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2225907F8())
  {
    v5 = 0;
    while ((items._rawValue & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DB9CC0](v5, items._rawValue);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }

LABEL_8:
      v8 = sub_22258FDD8();
      v10 = sub_22256A8F0(v8, v9);

      if (v10)
      {
        v11 = *(v2 + 16);
        type metadata accessor for PlaceholderRecord();
        sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
        sub_222590298();
      }

      ++v5;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    if (v5 >= *((items._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v6 = *(items._rawValue + v5 + 4);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v12 = *(v2 + 16);
  sub_222590278();
}

uint64_t sub_22256B03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDE8, &qword_2225912C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v30 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF0, &qword_2225912D0);
  v15 = *(v33 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v33);
  v35 = v30 - v17;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF8, &qword_2225912D8);
  v18 = *(v34 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v34);
  v22 = v30 - v21;
  v30[1] = a1;
  v30[2] = a2;
  MEMORY[0x28223BE20](v20);
  if (a4)
  {
    v30[-6] = a1;
    v30[-5] = a2;
    v30[-4] = a3;
    v30[-3] = a4;
  }

  else
  {
    v30[-4] = a1;
    v30[-3] = a2;
  }

  v23 = v31;
  v30[-2] = a5;
  v30[-1] = v23;
  v36 = type metadata accessor for PlaceholderRecord();
  sub_22258FE08();
  v24 = v22;
  v25 = v34;
  (*(v18 + 16))(v14, v22, v34);
  (*(v18 + 56))(v14, 0, 1, v25);
  type metadata accessor for PlaceholderRecord();
  sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
  v26 = v35;
  sub_2225902F8();
  v27 = *(v32 + 16);
  v28 = sub_222590288();
  (*(v15 + 8))(v26, v33);
  (*(v18 + 8))(v24, v25);
  return v28;
}

uint64_t sub_22256B5A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v65 = a6;
  v66 = a7;
  v62 = a5;
  v61 = a4;
  v76 = a3;
  v67 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE08, &qword_2225912E8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE10, &qword_2225912F0);
  v16 = *(v15 - 8);
  v79 = v15;
  v80 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE18, &qword_2225912F8);
  v78 = *(v20 - 8);
  v21 = *(v78 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE20, &qword_222591300);
  v81 = *(v60 - 8);
  v24 = *(v81 + 64);
  v25 = MEMORY[0x28223BE20](v60);
  v59 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v58 = &v57 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE28, &qword_222591308);
  v29 = *(v28 - 8);
  v63 = v28;
  v64 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v77 = &v57 - v31;
  v75 = *a1;
  v82 = a2;
  v83 = v76;
  sub_22258FC38();
  v69 = sub_22256EF08(&qword_2813101C8, &qword_27D00EE08, &qword_2225912E8);
  sub_22258FC48();
  swift_getKeyPath();
  v68 = v10;
  sub_22258FC18();

  v74 = *(v11 + 8);
  v76 = v11 + 8;
  v74(v14, v10);
  v71 = sub_22256EF08(&qword_2813101F0, &qword_27D00EE18, &qword_2225912F8);
  v73 = sub_22256EF08(&qword_2813101D8, &qword_27D00EE10, &qword_2225912F0);
  v32 = v19;
  v70 = v20;
  v33 = v79;
  sub_22258FC08();
  v34 = v80 + 8;
  v72 = *(v80 + 8);
  v72(v19, v33);
  v80 = v34;
  v35 = v78 + 8;
  v36 = *(v78 + 8);
  v37 = v23;
  v36(v23, v20);
  v38 = v36;
  v78 = v35;
  v82 = v61;
  v83 = v62;
  sub_22258FC38();
  v39 = v14;
  v40 = v68;
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  v74(v39, v40);
  v41 = v59;
  v42 = v32;
  v43 = v70;
  v44 = v79;
  sub_22258FC08();
  v72(v42, v44);
  v38(v37, v43);
  v45 = v38;
  v62 = sub_22256EF08(&qword_281310200, &qword_27D00EE20, &qword_222591300);
  v46 = v58;
  v47 = v60;
  sub_22258FC28();
  v48 = *(v81 + 8);
  v81 += 8;
  v48(v41, v47);
  v48(v46, v47);
  v82 = v65;
  v83 = v66;
  sub_22258FC38();
  v49 = v68;
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  v74(v39, v49);
  v50 = v70;
  v51 = v79;
  sub_22258FC08();
  v72(v42, v51);
  v45(v37, v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE30, &qword_222591388);
  v53 = v67;
  v67[3] = v52;
  v53[4] = sub_22256EC38();
  __swift_allocate_boxed_opaque_existential_1(v53);
  sub_22256EF08(&qword_281310218, &qword_27D00EE28, &qword_222591308);
  v54 = v77;
  v55 = v63;
  sub_22258FC28();
  v48(v46, v47);
  return (*(v64 + 8))(v54, v55);
}

uint64_t sub_22256BDA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, uint64_t *a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v41 = a3;
  v39 = a2;
  v47 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE08, &qword_2225912E8);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE10, &qword_2225912F0);
  v49 = *(v12 - 8);
  v13 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v15 = v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE18, &qword_2225912F8);
  v48 = *(v16 - 8);
  v17 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v19 = v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE20, &qword_222591300);
  v21 = *(v20 - 8);
  v45 = v20;
  v46 = v21;
  v22 = *(v21 + 64);
  v23 = (MEMORY[0x28223BE20])();
  v42 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v40 = v38 - v25;
  v38[2] = *a1;
  v50 = v39;
  v51 = v41;
  sub_22258FC38();
  sub_22256EF08(&qword_2813101C8, &qword_27D00EE08, &qword_2225912E8);
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  v26 = *(v8 + 8);
  v39 = v8 + 8;
  v41 = v26;
  v26(v11, v7);
  v38[1] = sub_22256EF08(&qword_2813101F0, &qword_27D00EE18, &qword_2225912F8);
  v38[0] = sub_22256EF08(&qword_2813101D8, &qword_27D00EE10, &qword_2225912F0);
  v27 = v12;
  sub_22258FC08();
  v28 = *(v49 + 8);
  v49 += 8;
  v28(v15, v12);
  v29 = *(v48 + 8);
  v48 += 8;
  v29(v19, v16);
  v50 = v43;
  v51 = v44;
  sub_22258FC38();
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  v41(v11, v7);
  v30 = v42;
  sub_22258FC08();
  v28(v15, v27);
  v29(v19, v16);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE28, &qword_222591308);
  v32 = v47;
  v47[3] = v31;
  v32[4] = sub_22256ECC4();
  __swift_allocate_boxed_opaque_existential_1(v32);
  sub_22256EF08(&qword_281310200, &qword_27D00EE20, &qword_222591300);
  v33 = v40;
  v34 = v30;
  v35 = v45;
  sub_22258FC28();
  v36 = *(v46 + 8);
  v36(v34, v35);
  return (v36)(v33, v35);
}

uint64_t sub_22256C350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE08, &qword_2225912E8);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE10, &qword_2225912F0);
  v13 = *(v12 - 8);
  v27 = v12;
  v28 = v13;
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v25 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE18, &qword_2225912F8);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v25 - v20;
  v22 = *a1;
  v29 = a2;
  v30 = v26;
  sub_22258FC38();
  sub_22256EF08(&qword_2813101C8, &qword_27D00EE08, &qword_2225912E8);
  sub_22258FC48();
  swift_getKeyPath();
  sub_22258FC18();

  (*(v8 + 8))(v11, v7);
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE20, &qword_222591300);
  a4[4] = sub_22256ED48();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_22256EF08(&qword_2813101F0, &qword_27D00EE18, &qword_2225912F8);
  sub_22256EF08(&qword_2813101D8, &qword_27D00EE10, &qword_2225912F0);
  v23 = v27;
  sub_22258FC08();
  (*(v28 + 8))(v16, v23);
  return (*(v18 + 8))(v21, v17);
}

unint64_t StoreContext.fetchItem(bundleIdentifier:version:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_22256B03C(a1, a2, a3, a4, a5, a6);
  if (result >> 62)
  {
    v8 = result;
    v9 = sub_2225907F8();
    result = v8;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223DB9CC0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);

LABEL_6:

    return sub_22258D370(v7);
  }

  __break(1u);
  return result;
}

uint64_t StoreContext.fetchItems(bundleIdentifier:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22256B03C(a1, a2, 0, 0, a3, a4);
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v6 = sub_2225907F8();
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_3:
  v12 = MEMORY[0x277D84F90];
  result = sub_2225907B8();
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DB9CC0](v8, v5);
      }

      else
      {
        v11 = *(v5 + 8 * v8 + 32);
      }

      ++v8;
      sub_22258D370(v9);
      sub_222590798();
      v10 = *(v12 + 16);
      sub_2225907C8();
      sub_2225907D8();
      sub_2225907A8();
    }

    while (v6 != v8);

    return v12;
  }

  return result;
}

unint64_t StoreContext.fetchItem(identifier:)(uint64_t a1, uint64_t a2)
{
  result = sub_22256A8F0(a1, a2);
  if (result)
  {
    return sub_22258D370(result);
  }

  return result;
}

uint64_t sub_22256C8C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDE8, &qword_2225912C8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF0, &qword_2225912D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDF8, &qword_2225912D8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v18[1] = type metadata accessor for PlaceholderRecord();
  sub_22258FE08();
  v15 = *(v0 + 16);
  (*(v11 + 16))(v4, v14, v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_2225902F8();
  v16 = sub_222590288();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t sub_22256CCC4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EE00, &qword_2225912E0);
  a1[4] = sub_22256EAEC();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22258FC38();
}

uint64_t StoreContext.fetchAllItems()()
{
  v0 = sub_22256C8C8();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_2225907F8();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = MEMORY[0x277D84F90];
  result = sub_2225907B8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223DB9CC0](v4, v1);
      }

      else
      {
        v7 = *(v1 + 8 * v4 + 32);
      }

      ++v4;
      sub_22258D370(v5);
      sub_222590798();
      v6 = *(v8 + 16);
      sub_2225907C8();
      sub_2225907D8();
      sub_2225907A8();
    }

    while (v2 != v4);

    return v8;
  }

  return result;
}

Swift::Void __swiftcall StoreContext.purgeAllItems()()
{
  v1 = v0;
  v2 = sub_22256C8C8();
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    isa = v1[2].isa;
    sub_222590278();
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v16 = sub_2225901D8();
    __swift_project_value_buffer(v16, qword_28130F918);
    oslog = sub_2225901B8();
    v17 = sub_222590678();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v4;
      _os_log_impl(&dword_222567000, oslog, v17, "Removed %ld store records", v18, 0xCu);
      MEMORY[0x223DBA5D0](v18, -1, -1);
    }

    goto LABEL_17;
  }

  v4 = sub_2225907F8();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v0[2].isa;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DB9CC0](v5, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      ++v5;
      type metadata accessor for PlaceholderRecord();
      sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
      sub_222590298();
    }

    while (v4 != v5);
    goto LABEL_10;
  }

  __break(1u);
  swift_once();
  v9 = sub_2225901D8();
  __swift_project_value_buffer(v9, qword_28130F918);
  v10 = v0;
  oslog = sub_2225901B8();
  v11 = sub_222590668();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_222567000, oslog, v11, "Error purging items: %@", v12, 0xCu);
    sub_22256EA7C(v13, &qword_27D00EDB0, &unk_222591A20);
    MEMORY[0x223DBA5D0](v13, -1, -1);
    MEMORY[0x223DBA5D0](v12, -1, -1);

LABEL_17:
    v19 = oslog;

    goto LABEL_19;
  }

  v19 = v0;

LABEL_19:
}

uint64_t sub_22256D1B8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_22256D478(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE28();

  swift_getKeyPath();
  sub_22256D478(&qword_281310168, type metadata accessor for PlaceholderRecord);
  sub_22256D478(&qword_2813101A8, MEMORY[0x277CC9578]);
  sub_222590348();
}

uint64_t sub_22256D2F0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22258FDB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  sub_22256D478(&qword_281310170, type metadata accessor for PlaceholderRecord);
  sub_22258FE18();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22256D478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22256D4C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_222588228();
}

uint64_t sub_22256D4DC(uint64_t a1, id *a2)
{
  result = sub_2225904A8();
  *a2 = 0;
  return result;
}

uint64_t sub_22256D554(uint64_t a1, id *a2)
{
  v3 = sub_2225904B8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22256D5D4@<X0>(uint64_t *a1@<X8>)
{
  sub_2225904C8();
  v2 = sub_222590498();

  *a1 = v2;
  return result;
}

uint64_t sub_22256D618(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2225904C8();
  v6 = v5;
  if (v4 == sub_2225904C8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2225908C8();
  }

  return v9 & 1;
}

uint64_t sub_22256D6A0(uint64_t a1)
{
  v2 = sub_22256D478(&qword_28130F7C8, type metadata accessor for FileAttributeKey);
  v3 = sub_22256D478(&qword_27D00EE98, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22256D75C(uint64_t a1)
{
  v2 = sub_22256D478(&qword_27D00EE88, type metadata accessor for FileProtectionType);
  v3 = sub_22256D478(&qword_27D00EE90, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22256D818@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222590498();

  *a2 = v5;
  return result;
}

uint64_t sub_22256D860(uint64_t a1)
{
  v2 = sub_22256D478(&qword_27D00EE78, type metadata accessor for URLResourceKey);
  v3 = sub_22256D478(&qword_27D00EE80, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22256D91C()
{
  v1 = *v0;
  v2 = sub_2225904C8();
  v3 = MEMORY[0x223DB9A90](v2);

  return v3;
}

uint64_t sub_22256D958()
{
  v1 = *v0;
  sub_2225904C8();
  sub_2225904F8();
}

uint64_t sub_22256D9AC()
{
  v1 = *v0;
  sub_2225904C8();
  sub_222590948();
  sub_2225904F8();
  v2 = sub_222590968();

  return v2;
}

uint64_t sub_22256DA20(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22256DA6C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_22256DACC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_22256DADC(void *__src, uint64_t a2, void *__dst)
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

void sub_22256DAFC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_22256DB70@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t (*sub_22256DBA0(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DB9CC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_22256DC20;
  }

  __break(1u);
  return result;
}

void sub_22256DC28(uint64_t a1)
{
  v105 = *MEMORY[0x277D85DE8];
  v3 = sub_22258FCA8();
  v100 = *(v3 - 8);
  v4 = *(v100 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22258FD68();
  v98 = *(v7 - 8);
  v99 = v7;
  v8 = *(v98 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v97 = v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v82 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v82 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v101 = a1;
  sub_22258FD28();
  v17 = sub_222590498();

  v103 = 0;
  v18 = [v16 attributesOfItemAtPath:v17 error:&v103];

  v19 = v103;
  if (!v18)
  {
    v32 = v103;
    v33 = sub_22258FC68();

    swift_willThrow();
    goto LABEL_11;
  }

  type metadata accessor for FileAttributeKey(0);
  v21 = v20;
  v95 = sub_22256D478(&qword_28130F7C8, type metadata accessor for FileAttributeKey);
  v96 = v21;
  v22 = sub_222590458();
  v23 = v19;

  if (!*(v22 + 16) || (v24 = *MEMORY[0x277CCA1B0], v25 = sub_222585DE8(*MEMORY[0x277CCA1B0]), (v26 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_22256EA0C(*(v22 + 56) + 32 * v25, &v103);

  type metadata accessor for FileProtectionType(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    goto LABEL_16;
  }

  v93 = v1;
  v27 = *MEMORY[0x277CCA1B8];
  v94 = v102;
  v28 = sub_2225904C8();
  v30 = v29;
  v92 = v27;
  if (v28 == sub_2225904C8() && v30 == v31)
  {

    goto LABEL_16;
  }

  v43 = sub_2225908C8();

  if (v43)
  {
LABEL_18:

    goto LABEL_16;
  }

  v90 = sub_22258FCC8();
  v91 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDD0, &qword_2225912B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222591200;
  *(inited + 32) = v24;
  v46 = v92;
  *(inited + 40) = v92;
  v47 = v24;
  v48 = v46;
  v49 = sub_22258C544(inited);
  swift_setDeallocating();
  sub_22256EA7C(inited + 32, &qword_27D00EDD8, &qword_2225912B8);
  v92 = v49;
  sub_222569140(v49);
  v50 = sub_222590448();

  sub_22258FD28();
  v51 = sub_222590498();

  v103 = 0;
  LODWORD(v49) = [v16 setAttributes:v50 ofItemAtPath:v51 error:&v103];

  v52 = v103;
  if (!v49)
  {
    goto LABEL_26;
  }

  v53 = v103;
  sub_222569140(v92);
  v89 = sub_222590448();

  sub_22258FCF8();
  v103 = v90;
  v104 = v91;

  MEMORY[0x223DB9A60](1835561773, 0xE400000000000000);
  v54 = v100;
  v55 = *(v100 + 104);
  v84 = *MEMORY[0x277CC91D8];
  v85 = v100 + 104;
  v83 = v55;
  v55(v6);
  v82[1] = sub_22256E958();
  sub_22258FD58();
  v56 = *(v54 + 8);
  v100 = v54 + 8;
  v82[0] = v56;
  v56(v6, v3);

  v57 = v99;
  v59 = v98 + 8;
  v58 = *(v98 + 8);
  v58(v13, v99);
  v88 = sub_22258FD28();
  v87 = v58;
  v86 = v59;
  v58(v15, v57);
  v60 = sub_222590498();

  v103 = 0;
  v61 = v89;
  LODWORD(v57) = [v16 setAttributes:v89 ofItemAtPath:v60 error:&v103];

  v52 = v103;
  if (v57)
  {
    v62 = v103;
    sub_222569140(v92);

    v63 = sub_222590448();

    sub_22258FCF8();
    v103 = v90;
    v104 = v91;
    MEMORY[0x223DB9A60](1818326829, 0xE400000000000000);
    v83(v6, v84, v3);
    sub_22258FD58();
    (v82[0])(v6, v3);

    v64 = v99;
    v65 = v87;
    v87(v13, v99);
    sub_22258FD28();
    v65(v15, v64);
    v66 = sub_222590498();

    v103 = 0;
    v67 = [v16 setAttributes:v63 ofItemAtPath:v66 error:&v103];

    if (v67)
    {
      v68 = qword_28130F910;
      v69 = v103;
      if (v68 != -1)
      {
        swift_once();
      }

      v70 = sub_2225901D8();
      __swift_project_value_buffer(v70, qword_28130F918);
      v71 = v97;
      (*(v98 + 16))(v97, v101, v64);
      v72 = sub_2225901B8();
      v73 = sub_222590678();
      if (!os_log_type_enabled(v72, v73))
      {

        v87(v71, v64);
        goto LABEL_16;
      }

      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v103 = v75;
      *v74 = 136315138;
      v76 = sub_22258FD28();
      v78 = v77;
      v87(v71, v64);
      v79 = sub_222580F0C(v76, v78, &v103);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_222567000, v72, v73, "Fixed file protection on %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x223DBA5D0](v75, -1, -1);
      MEMORY[0x223DBA5D0](v74, -1, -1);

      goto LABEL_18;
    }

    v81 = v103;
    v33 = sub_22258FC68();
  }

  else
  {
LABEL_26:
    v80 = v52;

    v33 = sub_22258FC68();
  }

  swift_willThrow();

  v16 = v94;
LABEL_11:

  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v34 = sub_2225901D8();
  __swift_project_value_buffer(v34, qword_28130F918);
  v35 = v33;
  v36 = sub_2225901B8();
  v37 = sub_222590668();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = v33;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v41;
    *v39 = v41;
    _os_log_impl(&dword_222567000, v36, v37, "Error fixing file protection: %@", v38, 0xCu);
    sub_22256EA7C(v39, &qword_27D00EDB0, &unk_222591A20);
    MEMORY[0x223DBA5D0](v39, -1, -1);
    MEMORY[0x223DBA5D0](v38, -1, -1);
  }

  else
  {
  }

LABEL_16:
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t type metadata accessor for Store()
{
  result = qword_28130F9E8;
  if (!qword_28130F9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22256E87C()
{
  result = sub_22258FD68();
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

unint64_t sub_22256E958()
{
  result = qword_28130F800;
  if (!qword_28130F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130F800);
  }

  return result;
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

uint64_t sub_22256EA0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22256EA7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_22256EADC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_22256EAEC()
{
  result = qword_2813101E8;
  if (!qword_2813101E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE00, &qword_2225912E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101E8);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_22256EC38()
{
  result = qword_281310210;
  if (!qword_281310210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE30, &qword_222591388);
    sub_22256ECC4();
    sub_22256ED48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281310210);
  }

  return result;
}

unint64_t sub_22256ECC4()
{
  result = qword_281310220;
  if (!qword_281310220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE28, &qword_222591308);
    sub_22256ED48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281310220);
  }

  return result;
}

unint64_t sub_22256ED48()
{
  result = qword_281310208;
  if (!qword_281310208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE20, &qword_222591300);
    sub_22256EDD4();
    sub_22256EE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281310208);
  }

  return result;
}

unint64_t sub_22256EDD4()
{
  result = qword_2813101F8;
  if (!qword_2813101F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE18, &qword_2225912F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101F8);
  }

  return result;
}

unint64_t sub_22256EE58()
{
  result = qword_2813101E0;
  if (!qword_2813101E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D00EE10, &qword_2225912F0);
    sub_22256EF08(&qword_2813101D0, &qword_27D00EE08, &qword_2225912E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813101E0);
  }

  return result;
}

uint64_t sub_22256EF08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22256EF7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22256EF9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_22256EFD8(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for ContainerLookup(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContainerLookup(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_22256F3F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  if (!container_query_create())
  {
    sub_22256F678();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
    return swift_willThrow();
  }

  container_query_set_class();
  container_query_operation_set_flags();
  v4 = *MEMORY[0x277D85ED0];
  container_query_set_persona_unique_string();
  xpc_string_create("com.apple.appplaceholdersyncd");
  container_query_set_identifiers();
  swift_unknownObjectRelease();
  if (!container_query_get_single_result())
  {
    if (container_query_get_last_error() && (v9 = container_error_copy_unlocalized_description()) != 0)
    {
      v10 = v9;
      v11 = sub_222590518();
      v13 = v12;
      MEMORY[0x223DBA5D0](v10, -1, -1);
    }

    else
    {
      v13 = 0x8000000222593940;
      v11 = 0xD000000000000017;
    }

    sub_22256F678();
    swift_allocError();
    *v16 = v11;
    v16[1] = v13;
    goto LABEL_15;
  }

  path = container_get_path();
  if (!path)
  {
    sub_22256F678();
    swift_allocError();
    v15 = xmmword_2225918C0;
LABEL_14:
    *v14 = v15;
LABEL_15:
    swift_willThrow();
    return container_query_free();
  }

  if (strlen(path) <= 0)
  {
    sub_22256F678();
    swift_allocError();
    v15 = xmmword_2225918B0;
    goto LABEL_14;
  }

  sub_22256F6CC();
  v6 = sub_22258FD68();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_22258FD08();
  sub_22256F848(v3);
  return container_query_free();
}

unint64_t sub_22256F678()
{
  result = qword_27D00EEA8;
  if (!qword_27D00EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D00EEA8);
  }

  return result;
}

void sub_22256F6CC()
{
  if (container_copy_sandbox_token())
  {
    if (sandbox_extension_consume() != -1)
    {

      JUMPOUT(0x223DBA5D0);
    }

    sub_222590758();
    v1 = MEMORY[0x223DB9A60](0xD000000000000025, 0x8000000222593990);
    v2 = MEMORY[0x223DB9750](v1);
    if (!strerror(v2))
    {
      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEB0, &qword_222591900);
    sub_2225907E8();
    v3 = MEMORY[0x223DB9A60](10272, 0xE200000000000000);
    MEMORY[0x223DB9750](v3);
    v4 = sub_2225908B8();
    MEMORY[0x223DB9A60](v4);

    MEMORY[0x223DB9A60](41, 0xE100000000000000);

    v5 = sub_222590498();

    SelfDestruct(v5);
  }

  v0 = sub_222590498();
  SelfDestruct(v0);
}

uint64_t sub_22256F848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_18AppPlaceholderSync15ContainerLookupV08RetrieveD5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22256F8D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22256F930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_22256F984(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_22256F9B4()
{
  v0 = type metadata accessor for Defaults();
  __swift_allocate_value_buffer(v0, qword_28130F8F8);
  v1 = __swift_project_value_buffer(v0, qword_28130F8F8);
  return sub_22256FA00(v1);
}

uint64_t sub_22256FA00@<X0>(char *a1@<X8>)
{
  v83 = sub_222590198();
  v82 = *(v83 - 8);
  v2 = *(v82 + 64);
  v3 = MEMORY[0x28223BE20](v83);
  v80 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v81 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v75 - v8;
  v92 = sub_22258FCA8();
  v97 = *(v92 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22258FD68();
  v90 = *(v11 - 8);
  v12 = *(v90 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v75 - v15;
  *a1 = 6;
  _set_user_dir_suffix();
  v17 = objc_opt_self();
  v18 = [v17 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEB8, &unk_222591A30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222591200;
  *(inited + 32) = 0xD000000000000011;
  v20 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = 0x80000002225939C0;
  *(inited + 48) = 1;
  sub_22258CC5C(inited);
  swift_setDeallocating();
  sub_22256EA7C(v20, &qword_27D00EEC0, &unk_222592390);
  v21 = sub_222590448();

  [v18 registerDefaults_];

  v22 = [v17 standardUserDefaults];
  v23 = sub_222590498();
  v24 = [v22 integerForKey_];

  if (v24 >= 7)
  {
    v25 = [v17 standardUserDefaults];
    v26 = sub_222590498();
    [v25 setInteger:6 forKey:v26];
  }

  sub_22256F3F4();
  v27 = type metadata accessor for Defaults();
  v28 = v90;
  v29 = *(v90 + 32);
  v30 = v27[9];
  v86 = v30;
  v29(&v30[a1], v16, v11);
  v95 = *MEMORY[0x277CC91C0];
  v31 = *(v97 + 104);
  v97 += 104;
  v32 = v91;
  v33 = v11;
  v34 = a1;
  v35 = v92;
  v31(v91);
  v87 = *(v28 + 16);
  v94 = v28 + 16;
  v36 = &v30[v34];
  v37 = v78;
  v87(v78, v36, v33);
  v38 = *(v28 + 56);
  v93 = v28 + 56;
  v96 = v38;
  v84 = 1;
  v39 = v33;
  v85 = v33;
  v38(v37, 0, 1, v33);
  v77 = v27[11];
  v76 = v27;
  sub_22258FD38();
  v40 = v32;
  v41 = v95;
  v88 = v31;
  (v31)(v40, v95, v35);
  v42 = v33;
  v43 = v87;
  v87(v37, &v86[v34], v42);
  v96(v37, 0, 1, v39);
  v89 = v27[10];
  v44 = v91;
  sub_22258FD38();
  v45 = v41;
  v46 = v34;
  (v31)(v44, v45, v35);
  v47 = &v86[v34];
  v48 = v37;
  v49 = v37;
  v50 = v85;
  v43(v49, v47, v85);
  v51 = v50;
  v96(v48, 0, 1, v50);
  v52 = v79;
  sub_22258FD38();
  v53 = v76;
  v54 = &v46[v76[6]];
  sub_22258FC98();
  (*(v90 + 8))(v52, v51);
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  sub_222590758();

  v99[0] = 0xD000000000000010;
  v99[1] = 0x8000000222593A50;
  v98 = 6;
  v55 = sub_2225908B8();
  MEMORY[0x223DB9A60](v55);

  MEMORY[0x223DB9A60](0x726F74737370612ELL, 0xE900000000000065);
  v90 = v99[0];
  v86 = v99[1];
  v56 = v35;
  v57 = v35;
  v58 = v88;
  (v88)(v44, v95, v57);
  v59 = v51;
  v60 = v51;
  v61 = v87;
  v87(v48, &v46[v77], v60);
  v62 = v48;
  v63 = v48;
  v64 = v96;
  v96(v62, 0, 1, v59);
  v65 = &v46[v53[5]];
  sub_22258FD38();
  v86 = "PublisherStore-v";
  (v58)(v44, v95, v56);
  v66 = v85;
  v61(v63, &v46[v89], v85);
  v64(v63, 0, 1, v66);
  v90 = v53[7];
  sub_22258FD38();
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  sub_222590758();

  strcpy(v99, "Placeholders-v");
  HIBYTE(v99[1]) = -18;
  v98 = 6;
  v67 = sub_2225908B8();
  MEMORY[0x223DB9A60](v67);

  MEMORY[0x223DB9A60](0x7865646E696F6E2ELL, 0xE800000000000000);
  (v88)(v44, v95, v92);
  v68 = v53;
  v61(v63, &v46[v89], v66);
  v96(v63, 0, 1, v66);
  v69 = v53[8];
  sub_22258FD38();
  v70 = v81;
  sub_222590158();
  v71 = v80;
  sub_222590168();
  LOBYTE(v63) = sub_222590188();
  v72 = *(v82 + 8);
  v73 = v83;
  v72(v71, v83);
  if ((v63 & 1) == 0)
  {
    sub_222590178();
    v84 = sub_222590188();
    v72(v71, v73);
  }

  v46[v68[12]] = v84 & 1;
  sub_222571A3C();
  sub_222571A3C();
  return (v72)(v70, v73);
}

uint64_t static Defaults.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults();
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  return sub_222570628(v3, a1);
}

uint64_t type metadata accessor for Defaults()
{
  result = qword_28130F8E0;
  if (!qword_28130F8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222570628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Defaults();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Defaults.shared.setter(uint64_t a1)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults();
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  sub_222570728(a1, v3);
  swift_endAccess();
  return sub_22257078C(a1);
}

uint64_t sub_222570728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Defaults();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22257078C(uint64_t a1)
{
  v2 = type metadata accessor for Defaults();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static Defaults.shared.modify())()
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Defaults();
  __swift_project_value_buffer(v0, qword_28130F8F8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_222570880@<X0>(uint64_t a1@<X8>)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults();
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  return sub_222570628(v3, a1);
}

uint64_t sub_22257090C(uint64_t a1)
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Defaults();
  v3 = __swift_project_value_buffer(v2, qword_28130F8F8);
  swift_beginAccess();
  sub_222570728(a1, v3);
  return swift_endAccess();
}

uint64_t Defaults.publisherStoreURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults() + 20);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.tmpURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults() + 24);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.generatedPlaceholdersDirURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults() + 28);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.installedPlaceholdersDirURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults() + 32);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.containerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults() + 36);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.cachesDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults() + 40);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Defaults.documentsDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Defaults() + 44);
  v4 = sub_22258FD68();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id Defaults.lastSchemaVersion.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_222590498();
  v2 = [v0 integerForKey_];

  return v2;
}

void sub_222570DBC(void *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  v4 = [v2 integerForKey_];

  *a1 = v4;
}

void sub_222570E4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  [v2 setInteger:v1 forKey:v3];
}

void Defaults.lastSchemaVersion.setter(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  [v2 setInteger:a1 forKey:v3];
}

void (*Defaults.lastSchemaVersion.modify(void *a1))(uint64_t *a1)
{
  v2 = objc_opt_self();
  a1[1] = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_222590498();
  v5 = [v3 integerForKey_];

  *a1 = v5;
  return sub_222571034;
}

void sub_222571034(uint64_t *a1)
{
  v1 = *a1;
  v3 = [a1[1] standardUserDefaults];
  v2 = sub_222590498();
  [v3 setInteger:v1 forKey:v2];
}

uint64_t Defaults.pairedMirroringDevices.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_222590498();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_222590568();

    v4 = sub_222571320(v3);

    if (v4)
    {
      return v4;
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_2225711A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590558();
  v4 = sub_222590498();
  [v2 setObject:v3 forKey:v4];
}

void Defaults.pairedMirroringDevices.setter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_222590558();

  v2 = sub_222590498();
  [v0 setObject:v1 forKey:v2];
}

uint64_t sub_222571320(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2225814B4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22256EA0C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2225814B4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_222571478(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = objc_opt_self();
  if (a2)
  {
    v5 = v4;

    v8 = [v5 standardUserDefaults];
    v6 = sub_222590558();

    v7 = sub_222590498();
    [v8 setObject:v6 forKey:v7];
  }

  else
  {
    v8 = [v4 standardUserDefaults];
    v6 = sub_222590558();

    v7 = sub_222590498();
    [v8 setObject:v6 forKey:v7];
  }
}

id Defaults.isResetting.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_222590498();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_22257165C(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_2225716F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  [v2 setBool:v1 forKey:v3];
}

void Defaults.isResetting.setter(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_222590498();
  [v2 setBool:a1 & 1 forKey:v3];
}

void (*Defaults.isResetting.modify(uint64_t a1))(uint64_t a1)
{
  v2 = objc_opt_self();
  *a1 = v2;
  v3 = [v2 standardUserDefaults];
  v4 = sub_222590498();
  v5 = [v3 BOOLForKey_];

  *(a1 + 8) = v5;
  return sub_2225718E4;
}

void sub_2225718E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = [*a1 standardUserDefaults];
  v2 = sub_222590498();
  [v3 setBool:v1 forKey:v2];
}

uint64_t sub_2225719A8()
{
  result = sub_22258FD68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_222571A3C()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_22258FCD8();
  v22[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v22];

  v3 = v22[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v22[0];
    v7 = sub_22258FC68();

    swift_willThrow();
    v8 = sub_22258FD28();
    v10 = v9;
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v11 = sub_2225901D8();
    __swift_project_value_buffer(v11, qword_28130F918);

    v12 = v7;
    v13 = sub_2225901B8();
    v14 = sub_222590668();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v15 = 136315394;
      v18 = sub_222580F0C(v8, v10, v22);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2112;
      v19 = v7;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v20;
      *v16 = v20;
      _os_log_impl(&dword_222567000, v13, v14, "error creating %s: %@", v15, 0x16u);
      sub_22256EA7C(v16, &qword_27D00EDB0, &unk_222591A20);
      MEMORY[0x223DBA5D0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223DBA5D0](v17, -1, -1);
      MEMORY[0x223DBA5D0](v15, -1, -1);
    }

    else
    {
    }

    v21 = *MEMORY[0x277D85DE8];
  }
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

uint64_t sub_222571DEC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2225901D8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2225901C8();
}

uint64_t sub_222571E88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2225901D8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_222571F70()
{
  v0 = sub_22258FEB8();
  __swift_allocate_value_buffer(v0, qword_281310230);
  __swift_project_value_buffer(v0, qword_281310230);
  return sub_22258FE98();
}

uint64_t sub_222571FC4(unint64_t a1, unint64_t *a2)
{
  isUniquelyReferenced_nonNull_native = sub_22258FDF8();
  v30 = *(isUniquelyReferenced_nonNull_native - 8);
  v5 = *(v30 + 64);
  result = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_24:
    result = sub_2225907F8();
    v8 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v34 = a1 & 0xFFFFFFFFFFFFFF8;
      v35 = a1 & 0xC000000000000001;
      v36 = (v30 + 16);
      v31 = (v30 + 8);
      v32 = v8;
      v33 = a1;
      do
      {
        if (v35)
        {
          v12 = MEMORY[0x223DB9CC0](v9, a1);
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v9 >= *(v34 + 16))
          {
            goto LABEL_21;
          }

          v12 = *(a1 + 8 * v9 + 32);

          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v37 = v13;
        v14 = *v36;
        v15 = v38;
        v16 = isUniquelyReferenced_nonNull_native;
        (*v36)(v38, v12 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, isUniquelyReferenced_nonNull_native);

        v17 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *a2;
        a1 = v39;
        v18 = a2;
        *a2 = 0x8000000000000000;
        v20 = sub_222585FC8(v15);
        v21 = *(a1 + 16);
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_22;
        }

        a2 = v19;
        if (*(a1 + 24) >= v23)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_222582354();
          }
        }

        else
        {
          sub_2225817D8(v23, isUniquelyReferenced_nonNull_native);
          v24 = sub_222585FC8(v38);
          if ((a2 & 1) != (v25 & 1))
          {
            result = sub_2225908E8();
            __break(1u);
            return result;
          }

          v20 = v24;
        }

        isUniquelyReferenced_nonNull_native = v16;
        a1 = v39;
        if (a2)
        {
          v10 = v39[7];
          v11 = *(v10 + 8 * v20);
          *(v10 + 8 * v20) = v12;
        }

        else
        {
          v39[(v20 >> 6) + 8] |= 1 << v20;
          v14(*(a1 + 48) + *(v30 + 72) * v20, v38, v16);
          *(*(a1 + 56) + 8 * v20) = v12;
          v26 = *(a1 + 16);
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_23;
          }

          *(a1 + 16) = v28;
        }

        (*v31)(v38, v16);
        a2 = v18;
        *v18 = a1;

        ++v9;
        a1 = v33;
      }

      while (v37 != v32);
    }
  }

  return result;
}

unint64_t sub_2225722E4(unint64_t result, void **a2, void *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223DB9CC0](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_222576790(&v11, a2, a3);

        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_2225907F8();
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2225723F8()
{
  if (qword_28130FAE0 != -1)
  {
    swift_once();
  }

  type metadata accessor for SyncManager();
  swift_allocObject();

  v1 = sub_222584290(v0);

  off_28130FDC0 = v1;
  return result;
}

uint64_t static SyncManager.shared.getter()
{
  if (qword_28130FDB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2225724DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF58, &qword_222591BC8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281310248 = result;
  return result;
}

uint64_t sub_22257251C(uint64_t a1)
{
  if (qword_28130FDC8 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_281310248;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  sub_222580818();
  os_unfair_lock_unlock(v1 + 4);
  MEMORY[0x28223BE20](v3);
  os_unfair_lock_lock(v1 + 4);
  sub_222585A74();
  os_unfair_lock_unlock(v1 + 4);
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v1 + 4);
  sub_222585A74();
  os_unfair_lock_unlock(v1 + 4);
  v6 = MEMORY[0x277D84F90];

  return v6;
}

void sub_222572724(uint64_t a1)
{
  if (qword_28130FDC8 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_281310248;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock(v1 + 4);
  sub_222585A74();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_2225727D8(void (*a1)(void, void, void))
{
  v75 = a1;
  v1 = sub_22258FDF8();
  v2 = *(v1 - 8);
  v77 = v1;
  v78 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222590208();
  v6 = *(v5 - 8);
  v69 = v5;
  v70 = v6;
  isa = v6[8].isa;
  MEMORY[0x28223BE20](v5);
  v68 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_2225906B8();
  v71 = *(v73 - 8);
  v9 = v71[8];
  MEMORY[0x28223BE20](v73);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2225906A8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v67 = sub_222590228();
  v66 = *(v67 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  *(v16 + 16) = MEMORY[0x277D84F90];
  v18 = v17;
  v74 = v16 + 16;
  v64 = sub_222585984(0, &qword_28130F7D0, 0x277D85C78);
  sub_222590218();
  aBlock[0] = v18;
  sub_2225850A8(&qword_28130F7D8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF98, &qword_222591C00);
  v72 = MEMORY[0x277D83970];
  sub_22256EF08(&qword_28130F7F0, &qword_27D00EF98, &qword_222591C00);
  sub_2225906E8();
  (v71[13])(v65, *MEMORY[0x277D85260], v73);
  v19 = v16;
  v20 = sub_2225906D8();
  v21 = [objc_allocWithZone(MEMORY[0x277D54C10]) initWithQueue_];
  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v23 = swift_allocObject();
  v24 = v75;
  v23[2] = v21;
  v23[3] = v24;
  v23[4] = v19;
  v23[5] = v22;
  aBlock[4] = sub_222585954;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222573898;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);
  v71 = v21;

  v73 = v19;

  v26 = v22;
  sub_222590218();
  v79 = MEMORY[0x277D84F90];
  sub_2225850A8(&qword_28130F810, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EFA0, &qword_222591C08);
  sub_22256EF08(&qword_28130F7F8, &qword_27D00EFA0, &qword_222591C08);
  v27 = v68;
  v28 = v69;
  sub_2225906E8();
  v72 = v20;
  MEMORY[0x223DB9C20](0, v15, v27, v25);
  _Block_release(v25);
  (v70[1].isa)(v27, v28);
  (*(v66 + 8))(v15, v67);

  v70 = v26;
  sub_222590698();
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v29 = sub_2225901D8();
  __swift_project_value_buffer(v29, qword_28130F918);
  v30 = v73;

  v31 = sub_2225901B8();
  v32 = sub_222590678();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136446210;
    v35 = v74;
    swift_beginAccess();
    v36 = *(v30 + 16);

    v37 = MEMORY[0x223DB9AD0](v36, v77);
    v39 = v38;

    v40 = sub_222580F0C(v37, v39, aBlock);

    *(v33 + 4) = v40;
    v41 = v35;
    _os_log_impl(&dword_222567000, v31, v32, "paired devices relationshipIDS: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x223DBA5D0](v34, -1, -1);
    MEMORY[0x223DBA5D0](v33, -1, -1);
  }

  else
  {

    v41 = v74;
  }

  v42 = v75;
  swift_beginAccess();
  v43 = *v41;
  v44 = v42[6];
  v42[6] = *v41;
  v45 = qword_28130F8F0;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Defaults();
  __swift_project_value_buffer(v46, qword_28130F8F8);

  v47 = *(v43 + 16);
  if (v47)
  {
    v81 = MEMORY[0x277D84F90];

    sub_2225814B4(0, v47, 0);
    v48 = v81;
    v49 = *(v78 + 16);
    v50 = *(v78 + 80);
    v69 = v43;
    v51 = v43 + ((v50 + 32) & ~v50);
    v74 = *(v78 + 72);
    v75 = v49;
    v78 += 16;
    v52 = (v78 - 8);
    do
    {
      v53 = v76;
      v54 = v77;
      v75(v76, v51, v77);
      v55 = sub_22258FDD8();
      v57 = v56;
      (*v52)(v53, v54);
      v81 = v48;
      v59 = *(v48 + 16);
      v58 = *(v48 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_2225814B4((v58 > 1), v59 + 1, 1);
        v48 = v81;
      }

      *(v48 + 16) = v59 + 1;
      v60 = v48 + 16 * v59;
      *(v60 + 32) = v55;
      *(v60 + 40) = v57;
      v51 += v74;
      --v47;
    }

    while (v47);
  }

  v61 = [objc_opt_self() standardUserDefaults];
  v62 = sub_222590558();

  v63 = sub_222590498();
  [v61 setObject:v62 forKey:v63];
}

void sub_222573164(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a3;
  v8[4] = a4;
  v11[4] = sub_222585978;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2225737DC;
  v11[3] = &block_descriptor_55;
  v9 = _Block_copy(v11);

  v10 = a4;

  [a1 listCandidateDevicesForType:6 completionHandler:v9];
  _Block_release(v9);
}

void sub_222573284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_222583ED0(a1, v8, (a4 + 16));

  dispatch_group_leave(a5);
}

uint64_t sub_222573338(void **a1, uint64_t a2, void **a3)
{
  v45 = a3;
  v5 = sub_22258FDF8();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v52 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v54 = v42 - v9;
  v10 = sub_22258FFB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if ([v15 enabledAsKey])
    {
      v53 = *(v17 + 24);
      sub_22258FF88();
      v18 = sub_22258FED8();
      v19 = *(v18 + 16);
      if (v19)
      {
        v42[2] = v17;
        v42[3] = v3;
        v50 = v15;
        v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v42[1] = v18;
        v21 = v18 + v20;
        swift_beginAccess();
        v23 = *(v11 + 16);
        v22 = v11 + 16;
        v48 = *(v22 + 56);
        v49 = v23;
        v42[4] = v44 + 32;
        v43 = v14;
        v51 = v22;
        v46 = (v22 - 8);
        v47 = (v44 + 8);
        v23(v14, v21, v10);
        while (1)
        {
          v24 = v54;
          sub_22258FFA8();
          v25 = sub_22258FDD8();
          v27 = v26;
          (*v47)(v24, v5);
          v28 = [v50 idsDeviceID];
          if (!v28)
          {

            goto LABEL_6;
          }

          v29 = v28;
          v30 = v10;
          v31 = v5;
          v32 = sub_2225904C8();
          v34 = v33;

          if (v25 == v32 && v27 == v34)
          {

            v5 = v31;
            v10 = v30;
            v14 = v43;
          }

          else
          {
            v36 = sub_2225908C8();

            v5 = v31;
            v10 = v30;
            v14 = v43;
            if ((v36 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          sub_22258FF98();
          v37 = v45;
          v38 = *v45;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v37 = v38;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v38 = sub_222580AA4(0, v38[2] + 1, 1, v38, &qword_27D00EFA8, &unk_222591C10, MEMORY[0x277CC95F0]);
            *v45 = v38;
          }

          v41 = v38[2];
          v40 = v38[3];
          if (v41 >= v40 >> 1)
          {
            v38 = sub_222580AA4(v40 > 1, v41 + 1, 1, v38, &qword_27D00EFA8, &unk_222591C10, MEMORY[0x277CC95F0]);
            *v45 = v38;
          }

          v38[2] = v41 + 1;
          (*(v44 + 32))(v38 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41, v52, v5);
LABEL_6:
          (*v46)(v14, v10);
          v21 += v48;
          if (!--v19)
          {
            break;
          }

          v49(v14, v21, v10);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_2225737DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_222585984(0, &qword_28130F7A0, 0x277D54C08);
  sub_2225859CC();
  v6 = sub_2225905F8();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_222573898(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void static SyncManager.upgrade()()
{
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Defaults();
  v1 = __swift_project_value_buffer(v0, qword_28130F8F8);
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_222590498();
  v5 = [v3 integerForKey_];

  swift_beginAccess();
  if (v5 != *v1)
  {
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v6 = sub_2225901D8();
    __swift_project_value_buffer(v6, qword_28130F918);
    v7 = sub_2225901B8();
    v8 = sub_222590678();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      v10 = [v2 standardUserDefaults];
      v11 = sub_222590498();
      v12 = [v10 integerForKey_];

      *(v9 + 4) = v12;
      *(v9 + 12) = 2048;
      *(v9 + 14) = *v1;
      _os_log_impl(&dword_222567000, v7, v8, "removing caches. old version: %ld new version: %ld", v9, 0x16u);
      MEMORY[0x223DBA5D0](v9, -1, -1);
    }

    _s18AppPlaceholderSync0C7ManagerC5resetyyFZ_0();
  }
}

void sub_222573B08(uint64_t a1, Swift::OpaquePointer a2, uint64_t a3)
{
  v23[1] = a3;
  v5 = sub_222590138();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_222590098();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 24);
  (*(v8 + 104))(v11, *MEMORY[0x277D46818], v7);
  sub_22258FF58();
  (*(v8 + 8))(v11, v7);
  StoreContext.delete(items:)(a2);
  if (v13)
  {
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v14 = sub_2225901D8();
    __swift_project_value_buffer(v14, qword_28130F918);
    v15 = v13;
    v16 = sub_2225901B8();
    v17 = sub_222590668();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_222580F0C(0xD000000000000020, 0x8000000222593C60, &v24);
      *(v18 + 12) = 2112;
      v21 = v13;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v22;
      *v19 = v22;
      _os_log_impl(&dword_222567000, v16, v17, "%s: error deleting items: %@", v18, 0x16u);
      sub_22256EA7C(v19, &qword_27D00EDB0, &unk_222591A20);
      MEMORY[0x223DBA5D0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DBA5D0](v20, -1, -1);
      MEMORY[0x223DBA5D0](v18, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_222574120()
{
  v1 = sub_222590138();
  v69 = *(v1 - 8);
  v2 = *(v69 + 64);
  MEMORY[0x28223BE20](v1);
  v68 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_222590098();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222590038();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF88, &qword_222591BF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v67 - v14;
  v84[0] = sub_22258CFAC(MEMORY[0x277D84F90]);
  v16 = StoreContext.fetchAllItems()();
  sub_222571FC4(v16, v84);

  v75 = *(v0 + 24);
  v17 = sub_22258FF18();
  v70 = v1;
  v71 = v12;
  v81 = v7;
  v74 = 0;
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v79 = v11;
  v80 = v8 + 16;
  v67 = v8 + 32;
  v78 = v17;

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v25 = v8;
  v72 = v8;
  while (v21)
  {
    v7 = v24;
LABEL_12:
    v27 = __clz(__rbit64(v21)) | (v23 << 6);
    v28 = v78;
    v29 = *(v25 + 72);
    v30 = *(v25 + 16);
    v30(v15, *(v78 + 48) + v29 * v27, v81);
    v31 = *(v28 + 56);
    v32 = sub_22258FDF8();
    v33 = *(v32 - 8);
    v34 = v31 + *(v33 + 72) * v27;
    v35 = *(v71 + 48);
    (*(v33 + 16))(&v15[v35], v34, v32);
    if (*(v84[0] + 2) && (sub_222585FC8(&v15[v35]), (v36 & 1) != 0))
    {
      v24 = v7;
      v25 = v72;
    }

    else
    {
      v30(v79, v15, v81);
      v24 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_222580AA4(0, v7[2] + 1, 1, v7, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
      }

      v38 = v24[2];
      v37 = v24[3];
      if (v38 >= v37 >> 1)
      {
        v24 = sub_222580AA4(v37 > 1, v38 + 1, 1, v24, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
      }

      v24[2] = v38 + 1;
      v39 = v24 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + v38 * v29;
      v25 = v72;
      (*(v72 + 32))(v39, v79, v81);
    }

    v21 &= v21 - 1;
    sub_22256EA7C(v15, &qword_27D00EF88, &qword_222591BF0);
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v26 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v26);
    ++v23;
    if (v21)
    {
      v7 = v24;
      v23 = v26;
      goto LABEL_12;
    }
  }

  v7 = v77;
  if (qword_28130F910 == -1)
  {
    goto LABEL_20;
  }

LABEL_35:
  swift_once();
LABEL_20:
  v40 = sub_2225901D8();
  __swift_project_value_buffer(v40, qword_28130F918);
  v41 = sub_2225901B8();
  v42 = sub_222590678();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v84[0] = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_222580F0C(0xD000000000000038, 0x8000000222593CC0, v84);
    *(v43 + 12) = 2048;
    *(v43 + 14) = v24[2];
    _os_log_impl(&dword_222567000, v41, v42, "%s: removing %ld replicator records", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x223DBA5D0](v44, -1, -1);
    MEMORY[0x223DBA5D0](v43, -1, -1);
  }

  v45 = v73;
  v46 = v76;
  (*(v76 + 104))(v73, *MEMORY[0x277D46818], v7);

  v47 = v74;
  sub_22258FF58();
  if (!v47)
  {
    (*(v46 + 8))(v45, v7);
    return swift_bridgeObjectRelease_n();
  }

  (*(v46 + 8))(v45, v7);

  v84[0] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
  sub_222585984(0, &qword_28130F790, 0x277CCA9B8);
  swift_dynamicCast();
  v48 = v83;
  v49 = [v83 domain];
  v50 = sub_2225904C8();
  v52 = v51;

  if (v50 == sub_222590118() && v52 == v53)
  {

    goto LABEL_28;
  }

  v55 = sub_2225908C8();

  if (v55)
  {
LABEL_28:
    v56 = [v48 code];
    v58 = v68;
    v57 = v69;
    v59 = v70;
    (*(v69 + 104))(v68, *MEMORY[0x277D468C8], v70);
    v60 = sub_222590128();
    (*(v57 + 8))(v58, v59);
    if (v56 == v60)
    {
      goto LABEL_31;
    }
  }

  v61 = v48;
  v62 = sub_2225901B8();
  v63 = sub_222590668();

  if (!os_log_type_enabled(v62, v63))
  {

    goto LABEL_33;
  }

  v64 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  v82 = v66;
  *v64 = 136315394;
  *(v64 + 4) = sub_222580F0C(0xD000000000000038, 0x8000000222593CC0, &v82);
  *(v64 + 12) = 2112;
  *(v64 + 14) = v61;
  *v65 = v61;
  v48 = v61;
  _os_log_impl(&dword_222567000, v62, v63, "%s: error deleting records: %@", v64, 0x16u);
  sub_22256EA7C(v65, &qword_27D00EDB0, &unk_222591A20);
  MEMORY[0x223DBA5D0](v65, -1, -1);
  __swift_destroy_boxed_opaque_existential_0(v66);
  MEMORY[0x223DBA5D0](v66, -1, -1);
  MEMORY[0x223DBA5D0](v64, -1, -1);

LABEL_31:
LABEL_33:
}

uint64_t sub_222574BE8()
{
  v71 = sub_222590098();
  v0 = *(v71 - 8);
  v1 = *(v0 + 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22258FEC8();
  v3 = *(v69 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v69);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE0, &unk_222591AD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v46 - v9;
  v73 = sub_222590088();
  v61 = *(v73 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x28223BE20](v73);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22258FD68();
  v13 = *(v75 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v75);
  v86 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v72 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v22 = sub_222590018();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v84 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v83 = &v46 - v26;
  v27 = sub_222590038();
  v85 = *(v27 - 8);
  v28 = *(v85 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = StoreContext.fetchAllItems()();
  v32 = v31;
  if (v31 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2225907F8())
  {
    v89 = v27;
    v54 = v12;
    v55 = v6;
    v27 = 0;
    v6 = 0;
    v80 = "generated_placeholders.noindex";
    v81 = "oldersyncservicesd.client";
    v88 = *(v62 + 24);
    v82 = v32 & 0xC000000000000001;
    v60 = v32 & 0xFFFFFFFFFFFFFF8;
    v78 = (v13 + 56);
    v79 = v85 + 16;
    v67 = v13 + 48;
    v64 = v13 + 32;
    v63 = v61 + 48;
    v53 = v61 + 32;
    v52 = v61 + 16;
    v51 = *MEMORY[0x277D46550];
    v50 = v3 + 104;
    v49 = *MEMORY[0x277D46818];
    v48 = v0 + 104;
    v58 = v0 + 8;
    v57 = v3 + 8;
    v56 = v61 + 8;
    v66 = v13 + 8;
    v77 = (v85 + 8);
    v47 = "evices(storeContext:)";
    *(&v34 + 1) = 2;
    v87 = xmmword_222591200;
    *&v34 = 136315138;
    v59 = v34;
    *&v34 = 136315394;
    v46 = v34;
    v74 = v30;
    v12 = v75;
    v65 = v21;
    v76 = i;
    while (v82)
    {
      v3 = MEMORY[0x223DB9CC0](v27, v32);
      v35 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_13;
      }

LABEL_11:
      v90 = v35;
      v91 = v27;
      sub_22258FDD8();
      v36 = sub_22258FDF8();
      v37 = v30;
      v38 = v83;
      (*(*(v36 - 8) + 56))(v83, 1, 1, v36);
      sub_22258588C(v38, v84, MEMORY[0x277D46788]);
      sub_22258FFE8();
      v39 = v38;
      v30 = v37;
      sub_2225858F4(v39, MEMORY[0x277D46788]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE8, &qword_222591AE0);
      v40 = v85;
      v41 = *(v85 + 72);
      v42 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v87;
      v43 = v37;
      v44 = v89;
      (*(v40 + 16))(v13 + v42, v43, v89);
      v0 = v12;
      (*v78)(v21, 1, 1, v12);
      sub_22258FF68();
      sub_22256EA7C(v21, &qword_27D00EEA0, &qword_2225918F8);

      (*v77)(v30, v44);
      v27 = v91 + 1;
      if (v90 == v76)
      {
      }
    }

    if (v27 >= *(v60 + 16))
    {
      goto LABEL_14;
    }

    v3 = *(v32 + 8 * v27 + 32);

    v35 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      goto LABEL_11;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_222575D78(uint64_t a1)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v51 - v4;
  v6 = sub_22258FC88();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = [objc_opt_self() enumeratorWithOptions_];
  sub_222590628();
  sub_22258FC78();
  if (v61)
  {
    v57 = MEMORY[0x277D84F90];
    v10 = *MEMORY[0x277CC1E08];
    v51[1] = v1;
    v51[2] = v10;
    v55 = v5;
    while (1)
    {
      sub_22256EADC(&v60, &v59);
      sub_222585984(0, &qword_28130F7B0, 0x277CC1E70);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_4;
      }

      v11 = v58;
      v12 = [v58 bundleIdentifier];
      if (!v12)
      {

        goto LABEL_4;
      }

      v13 = v12;
      v14 = sub_2225904C8();
      v16 = v15;
      v17 = [v11 shortVersionString];
      if (!v17)
      {

        goto LABEL_4;
      }

      v18 = v17;
      v19 = sub_2225904C8();
      v21 = v20;

      v22 = [v11 bundleContainerURL];
      if (!v22)
      {

        v32 = sub_22258FD68();
        (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
        sub_22256EA7C(v5, &qword_27D00EEA0, &qword_2225918F8);
        goto LABEL_4;
      }

      v23 = v22;
      sub_22258FD18();

      v24 = sub_22258FD68();
      (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
      sub_22256EA7C(v5, &qword_27D00EEA0, &qword_2225918F8);
      if (os_variant_has_internal_content())
      {
        v25 = [v11 compatibilityObject];
        v26 = [v25 applicationType];

        if (v26)
        {
          v27 = sub_2225904C8();
          v29 = v28;

          v30 = sub_2225904C8();
          if (v29)
          {
            if (v27 == v30 && v29 == v31)
            {

LABEL_36:
              v5 = v55;
              goto LABEL_4;
            }

            v44 = sub_2225908C8();

            if (v44)
            {

              goto LABEL_36;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_2225904C8();
        }
      }

LABEL_19:
      v33 = sub_22257A8F4();
      v35 = sub_22256B03C(v14, v16, v19, v21, v33, v34);

      if (v35 >> 62)
      {
        v36 = sub_2225907F8();
      }

      else
      {
        v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v55;
      if (v36)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x223DB9CC0](0, v35);
        }

        else
        {
          if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_46;
          }

          v37 = *(v35 + 32);
        }

        sub_22258D370(v37);
      }

      else
      {

        v38 = [objc_opt_self() applicationWithBundleIdentifier_];

        v39 = [v38 isHidden];
        if (!v39)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_222580C80(0, *(v57 + 2) + 1, 1, v57);
          }

          v41 = *(v57 + 2);
          v40 = *(v57 + 3);
          if (v41 >= v40 >> 1)
          {
            v57 = sub_222580C80((v40 > 1), v41 + 1, 1, v57);
          }

          v42 = v57;
          *(v57 + 2) = v41 + 1;
          v43 = &v42[16 * v41];
          *(v43 + 4) = v14;
          *(v43 + 5) = v16;
          goto LABEL_4;
        }
      }

LABEL_4:
      sub_22258FC78();
      if (!v61)
      {
        goto LABEL_40;
      }
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_40:
  (*(v52 + 8))(v9, v53);
  if (qword_28130F910 != -1)
  {
LABEL_46:
    swift_once();
  }

  v45 = sub_2225901D8();
  __swift_project_value_buffer(v45, qword_28130F918);
  v46 = v57;

  v47 = sub_2225901B8();
  v48 = sub_222590678();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v60 = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_222580F0C(0xD000000000000036, 0x8000000222593D50, &v60);
    *(v49 + 12) = 2048;
    *(v49 + 14) = *(v46 + 2);

    _os_log_impl(&dword_222567000, v47, v48, "%s: adding %ld bundle identifiers", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x223DBA5D0](v50, -1, -1);
    MEMORY[0x223DBA5D0](v49, -1, -1);
  }

  else
  {
  }

  sub_22257B26C(v46);
}

uint64_t sub_222576538(uint64_t a1)
{
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v2 = StoreContext.fetchAllItems()();
  sub_2225722E4(v2, &v15, &v14);

  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v3 = sub_2225901D8();
  __swift_project_value_buffer(v3, qword_28130F918);
  v4 = sub_2225901B8();
  v5 = sub_222590678();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_222580F0C(0xD000000000000049, 0x8000000222593D00, &v13);
    *(v6 + 12) = 2048;
    swift_beginAccess();
    *(v6 + 14) = v15[2];
    *(v6 + 22) = 2048;
    swift_beginAccess();
    if (v14 >> 62)
    {
      v8 = sub_2225907F8();
    }

    else
    {
      v8 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 24) = v8;
    _os_log_impl(&dword_222567000, v4, v5, "%s: deleting %ld records and %ld items", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DBA5D0](v7, -1, -1);
    MEMORY[0x223DBA5D0](v6, -1, -1);
  }

  swift_beginAccess();
  v9 = v15;
  swift_beginAccess();
  v10 = v14;

  v11._rawValue = v10;
  sub_222573B08(v9, v11, a1);
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

void sub_222576790(uint64_t *a1, void **a2, void *a3)
{
  v71 = a2;
  v6 = sub_222590018();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - v10;
  v12 = sub_222590038();
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = &v67 - v16;
  v17 = *a1;
  v18 = *a1 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier;
  v19 = *v18;
  v20 = *(v18 + 8);
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v21 = sub_222580584(v19, v20, 0);
  v70 = v12;
  if (!v3)
  {
    v30 = v21;
    v67 = a3;
    v72 = 0;
    v32 = *(v17 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    v31 = *(v17 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);

    v33 = [v30 shortVersionString];
    if (v33)
    {
      v34 = v33;
      v35 = sub_2225904C8();
      v37 = v36;

      if (v32 == v35 && v31 == v37)
      {

        v40 = 0;
        v22 = v72;
        goto LABEL_24;
      }

      v39 = sub_2225908C8();

      v40 = 0;
      v22 = v72;
      if (v39)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v22 = v72;
    }

    v40 = 1;
LABEL_24:
    v50 = objc_opt_self();
    v51 = *v18;
    v52 = *(v18 + 8);
    v53 = sub_222590498();
    v54 = [v50 applicationWithBundleIdentifier_];

    v55 = [v54 isHidden];
    if ((v40 & 1) == 0)
    {
      a3 = v67;
      v56 = v73;
      if (!v55)
      {
        return;
      }

      goto LABEL_29;
    }

    a3 = v67;
LABEL_28:
    v56 = v73;
LABEL_29:
    v72 = v22;
    sub_22258FDD8();
    v57 = sub_22258FDF8();
    (*(*(v57 - 8) + 56))(v11, 1, 1, v57);
    sub_22258588C(v11, v68, MEMORY[0x277D46788]);
    sub_22258FFE8();
    sub_2225858F4(v11, MEMORY[0x277D46788]);
    v59 = v69;
    v58 = v70;
    (*(v69 + 16))(v74, v56, v70);
    v60 = v71;
    v61 = *v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v60 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_222580AA4(0, v61[2] + 1, 1, v61, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
      *v71 = v61;
    }

    v64 = v61[2];
    v63 = v61[3];
    if (v64 >= v63 >> 1)
    {
      v61 = sub_222580AA4(v63 > 1, v64 + 1, 1, v61, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
      *v71 = v61;
    }

    v61[2] = v64 + 1;
    (*(v59 + 32))(v61 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v64, v74, v58);

    MEMORY[0x223DB9AA0](v65);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v66 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_222590588();
    }

    sub_222590598();
    (*(v59 + 8))(v56, v58);
    return;
  }

  v22 = 0;
  v77 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
  sub_222585984(0, &qword_28130F790, 0x277CCA9B8);
  swift_dynamicCast();
  v23 = v76;
  v24 = [v76 domain];
  v25 = sub_2225904C8();
  v27 = v26;

  v28 = *MEMORY[0x277CCA590];
  if (v25 == sub_2225904C8() && v27 == v29)
  {
  }

  else
  {
    v41 = sub_2225908C8();

    if ((v41 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ([v23 code] == -10814)
  {

    goto LABEL_28;
  }

LABEL_15:
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v42 = sub_2225901D8();
  __swift_project_value_buffer(v42, qword_28130F918);

  v43 = v23;
  v44 = sub_2225901B8();
  v45 = sub_222590668();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v75 = v48;
    *v46 = 136315650;
    *(v46 + 4) = sub_222580F0C(0xD000000000000049, 0x8000000222593D00, &v75);
    *(v46 + 12) = 2082;
    *(v46 + 14) = sub_222580F0C(*v18, *(v18 + 8), &v75);
    *(v46 + 22) = 2112;
    *(v46 + 24) = v43;
    *v47 = v43;
    v49 = v43;
    _os_log_impl(&dword_222567000, v44, v45, "%s: error locating LS record for %{public}s: %@", v46, 0x20u);
    sub_22256EA7C(v47, &qword_27D00EDB0, &unk_222591A20);
    MEMORY[0x223DBA5D0](v47, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DBA5D0](v48, -1, -1);
    MEMORY[0x223DBA5D0](v46, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_222576FD4(id *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = [*a1 bundleIdentifier];
  v7 = sub_2225904C8();
  v9 = v8;

  v10 = sub_22257A8F4();
  v12 = StoreContext.fetchItems(bundleIdentifier:deviceIdentifier:)(v7, v9, v10, v11);

  if (v12 >> 62)
  {
    v13 = sub_2225907F8();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 >= 1)
  {
    v15 = [v5 bundleIdentifier];
    v16 = sub_2225904C8();
    v18 = v17;

    v19 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v19;
    if ((result & 1) == 0)
    {
      result = sub_222580C80(0, *(v19 + 16) + 1, 1, v19);
      v19 = result;
      *a4 = result;
    }

    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_222580C80((v20 > 1), v21 + 1, 1, v19);
      v19 = result;
      *a4 = result;
    }

    *(v19 + 16) = v21 + 1;
    v22 = v19 + 16 * v21;
    *(v22 + 32) = v16;
    *(v22 + 40) = v18;
  }

  return result;
}

uint64_t sub_22257716C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EED8, &qword_222591AC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v237 = &v208 - v3;
  v238 = sub_22258FDF8();
  v261 = *(v238 - 8);
  v4 = *(v261 + 64);
  v5 = MEMORY[0x28223BE20](v238);
  v234 = &v208 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v233 = &v208 - v7;
  v241 = sub_222590078();
  v260 = *(v241 - 8);
  v8 = *(v260 + 64);
  MEMORY[0x28223BE20](v241);
  v240 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF00, &qword_222591B70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v239 = &v208 - v12;
  v250 = sub_222590088();
  v254 = *(v250 - 8);
  v13 = *(v254 + 64);
  v14 = MEMORY[0x28223BE20](v250);
  v236 = &v208 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v232 = &v208 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v264 = &v208 - v19;
  MEMORY[0x28223BE20](v18);
  v262 = &v208 - v20;
  v265 = sub_222590038();
  v256 = *(v265 - 8);
  v21 = *(v256 + 64);
  v22 = MEMORY[0x28223BE20](v265);
  v263 = &v208 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v235 = &v208 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v259 = &v208 - v27;
  MEMORY[0x28223BE20](v26);
  v253 = &v208 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF08, &qword_222591B78);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v208 - v34;
  v36 = sub_22258FD68();
  v244 = *(v36 - 8);
  v37 = v244[8];
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v208 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = (&v208 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v47 = &v208 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v49 = &v208 - v48;
  v50 = *(v0 + 24);
  v51 = sub_22258FF18();
  v57 = v51;
  v258 = v42;
  v227 = v47;
  v228 = v40;
  v251 = v35;
  v252 = v33;
  v242 = v36;
  v58 = *(v51 + 16);
  if (v58)
  {
    v59 = sub_222580D8C(*(v51 + 16), 0, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
    v60 = v256;
    v61 = sub_222583430(&v267, (v59 + ((*(v256 + 80) + 32) & ~*(v256 + 80))), v58, v57);
    sub_222568DEC();
    v62 = v242;
    v63 = v244;
    if (v61 == v58)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v60 = v256;
  v62 = v242;
  v63 = v244;
LABEL_8:
  v64 = v63[7];
  v64(v49, 1, 1, v62);
  v65 = sub_22258FF68();
  v225 = v64;
  v226 = v63 + 7;
  v248 = v65;
  sub_22256EA7C(v49, &qword_27D00EEA0, &qword_2225918F8);
  if (qword_28130F8F0 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Defaults();
  v67 = __swift_project_value_buffer(v66, qword_28130F8F8);
  swift_beginAccess();
  v68 = *(v66 + 24);
  v69 = v63[2];
  v70 = v67 + v68;
  v71 = v258;
  v69(v258, v70, v62);
  v249 = sub_22258FF48();
  v223 = v69;
  v224 = v63 + 2;
  v73 = v63[1];
  v220 = v63 + 1;
  v219 = v73;
  v73(v71, v62);

  v74 = *(v248 + 64);
  v229 = v248 + 64;
  v75 = 1 << *(v248 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v74;
  v78 = (v75 + 63) >> 6;
  v255 = (v60 + 16);
  v243 = (v254 + 16);
  v257 = (v254 + 32);
  v258 = (v60 + 32);
  v222 = (v260 + 48);
  v221 = (v260 + 8);
  v217 = (v261 + 48);
  v246 = (v60 + 8);
  v245 = (v254 + 8);
  v231 = "purgeAllReplicatorRecords()";
  v214 = (v261 + 32);
  v213 = (v261 + 16);
  v212 = (v260 + 16);
  v211 = (v261 + 8);

  v80 = 0;
  *&v81 = 136315394;
  v230 = v81;
  *&v81 = 136315650;
  v215 = v81;
  v210 = xmmword_222591200;
  v218 = v79;
  v82 = v250;
  v83 = v264;
  v84 = v262;
  v247 = v78;
LABEL_15:
  v85 = v80;
  v86 = v263;
  while (v77)
  {
    v96 = v82;
    v97 = v85;
LABEL_29:
    v260 = (v77 - 1) & v77;
    v100 = __clz(__rbit64(v77)) | (v97 << 6);
    v101 = v248;
    v102 = v256;
    v103 = v253;
    v104 = v265;
    (*(v256 + 16))(v253, *(v248 + 48) + *(v256 + 72) * v100, v265);
    v105 = v254;
    (*(v254 + 16))(v84, *(v101 + 56) + *(v254 + 72) * v100, v96);
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF10, &qword_222591B80);
    v107 = *(v106 + 48);
    v108 = *(v102 + 32);
    v109 = v252;
    v108(v252, v103, v104);
    v110 = *(v105 + 32);
    v82 = v96;
    v111 = v109 + v107;
    v84 = v262;
    v110(v111, v262, v96);
    (*(*(v106 - 8) + 56))(v109, 0, 1, v106);
    v261 = v97;
    v112 = v109;
    v86 = v263;
    v83 = v264;
    v99 = v259;
LABEL_30:
    v113 = v251;
    sub_222585504(v112, v251, &qword_27D00EF08, &qword_222591B78);
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF10, &qword_222591B80);
    if ((*(*(v114 - 8) + 48))(v113, 1, v114) == 1)
    {

      return v218;
    }

    v115 = *(v114 + 48);
    (*v258)(v99, v113, v265);
    (*v257)(v83, v113 + v115, v82);
    v116 = v249;
    if (*(v249 + 16))
    {
      v117 = sub_222585EF4(v99);
      if (v118)
      {
        v119 = *(*(v116 + 56) + 8 * v117);
        swift_bridgeObjectRetain_n();
        v120 = sub_2225790E4(v119);
        v122 = v121;

        if (v122 & 1) == 0 && *(v119 + 16) && (v123 = sub_22258609C(v120), (v124))
        {
          v223(v228, *(v119 + 56) + v244[9] * v123, v242);

          if (qword_28130FA08 != -1)
          {
            swift_once();
          }

          v125 = sub_22258FEB8();
          __swift_project_value_buffer(v125, qword_281310230);
          v126 = v239;
          sub_22258FFD8();
          v127 = v241;
          if ((*v222)(v126, 1, v241) == 1)
          {
            sub_22256EA7C(v126, &qword_27D00EF00, &qword_222591B70);
            if (qword_28130F910 != -1)
            {
              swift_once();
            }

            v128 = sub_2225901D8();
            __swift_project_value_buffer(v128, qword_28130F918);
            v129 = v236;
            (*v243)(v236, v83, v82);
            v130 = v82;
            v131 = sub_2225901B8();
            v132 = sub_222590668();
            if (os_log_type_enabled(v131, v132))
            {
              v133 = swift_slowAlloc();
              v216 = swift_slowAlloc();
              v266 = v216;
              *v133 = v215;
              *(v133 + 4) = sub_222580F0C(0xD000000000000016, v231 | 0x8000000000000000, &v266);
              *(v133 + 12) = 2082;
              sub_2225850A8(&qword_27D00EF18, MEMORY[0x277D467E0]);
              LODWORD(v209) = v132;
              v134 = sub_2225908B8();
              v135 = v129;
              v137 = v136;
              v138 = *v245;
              (*v245)(v135, v130);
              v139 = sub_222580F0C(v134, v137, &v266);

              *(v133 + 14) = v139;
              *(v133 + 22) = 2082;
              sub_2225850A8(&qword_27D00EF20, MEMORY[0x277D46538]);
              v140 = sub_2225908B8();
              v142 = sub_222580F0C(v140, v141, &v266);

              *(v133 + 24) = v142;
              _os_log_impl(&dword_222567000, v131, v209, "%s: no compatible data found in %{public}s version: %{public}s", v133, 0x20u);
              v143 = v216;
              swift_arrayDestroy();
              MEMORY[0x223DBA5D0](v143, -1, -1);
              v144 = v133;
              v83 = v264;
              MEMORY[0x223DBA5D0](v144, -1, -1);

              v219(v228, v242);
              v138(v83, v130);
              v86 = v263;
            }

            else
            {

              v188 = *v245;
              (*v245)(v129, v130);
              v219(v228, v242);
              v188(v83, v130);
            }

            (*v246)(v99, v265);
            v85 = v261;
            v82 = v130;
            goto LABEL_55;
          }

          v166 = sub_222590058();
          v168 = v167;
          v216 = *v221;
          v216(v126, v127);
          v169 = v227;
          v170 = v242;
          v223(v227, v228, v242);
          v225(v169, 0, 1, v170);
          sub_22258556C(v166, v168);
          sub_222590068();
          sub_22258FFF8();
          v171 = v237;
          sub_22258FDC8();

          if ((*v217)(v171, 1, v238) != 1)
          {
            v190 = *v214;
            v209 = v166;
            v191 = v233;
            v192 = v238;
            v190(v233, v171, v238);
            (*v255)(v253, v99, v265);
            (*v213)(v234, v191, v192);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF28, &qword_222591B88);
            v208 = v168;
            v193 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF30, &qword_222591B90) - 8);
            v194 = *(*v193 + 72);
            v195 = (*(*v193 + 80) + 32) & ~*(*v193 + 80);
            v196 = swift_allocObject();
            *(v196 + 16) = v210;
            v197 = (v196 + v195);
            v198 = v193[14];
            *v197 = sub_22258FEA8();
            v199 = v197 + v198;
            v200 = v241;
            (*v212)(v199, v240, v241);
            sub_22258D194(v196);
            swift_setDeallocating();
            sub_22256EA7C(v197, &qword_27D00EF30, &qword_222591B90);
            swift_deallocClassInstance();
            v84 = v262;
            sub_222590048();
            v201 = v232;
            (*v243)(v232, v84, v250);
            v202 = v218;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v266 = v202;
            v204 = v259;
            sub_22258205C(v201, v259, isUniquelyReferenced_nonNull_native);
            sub_2225855C0(v209, v208);
            v205 = *v245;
            (*v245)(v84, v250);
            v206 = v192;
            v83 = v264;
            (*v211)(v191, v206);
            v207 = v200;
            v82 = v250;
            v216(v240, v207);
            v219(v228, v242);
            v205(v83, v82);
            (*v246)(v204, v265);
            v218 = v266;
            v78 = v247;
            v77 = v260;
            v80 = v261;
            goto LABEL_15;
          }

          sub_22256EA7C(v171, &qword_27D00EED8, &qword_222591AC8);
          v172 = v265;
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v173 = sub_2225901D8();
          __swift_project_value_buffer(v173, qword_28130F918);
          v174 = v235;
          v175 = v259;
          (*v255)(v235, v259, v172);
          v176 = sub_2225901B8();
          v177 = sub_222590668();
          if (os_log_type_enabled(v176, v177))
          {
            v178 = v172;
            v179 = v174;
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            v266 = v181;
            *v180 = v230;
            *(v180 + 4) = sub_222580F0C(0xD000000000000016, v231 | 0x8000000000000000, &v266);
            *(v180 + 12) = 2082;
            v182 = sub_22258FFF8();
            v184 = v183;
            v208 = v168;
            v209 = v166;
            v185 = *v246;
            (*v246)(v179, v178);
            v186 = sub_222580F0C(v182, v184, &v266);
            v86 = v263;

            *(v180 + 14) = v186;
            _os_log_impl(&dword_222567000, v176, v177, "%s: could not generate uuid from %{public}s", v180, 0x16u);
            swift_arrayDestroy();
            v187 = v181;
            v83 = v264;
            MEMORY[0x223DBA5D0](v187, -1, -1);
            MEMORY[0x223DBA5D0](v180, -1, -1);

            sub_2225855C0(v209, v208);
            v216(v240, v241);
            v219(v228, v242);
            v82 = v250;
            (*v245)(v83, v250);
            v185(v259, v178);
          }

          else
          {

            sub_2225855C0(v166, v168);
            v189 = *v246;
            (*v246)(v174, v172);
            v216(v240, v241);
            v219(v228, v242);
            v82 = v250;
            (*v245)(v83, v250);
            v189(v175, v172);
          }
        }

        else
        {
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v152 = sub_2225901D8();
          __swift_project_value_buffer(v152, qword_28130F918);

          v153 = sub_2225901B8();
          v154 = sub_222590668();

          if (os_log_type_enabled(v153, v154))
          {
            v155 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            v266 = v156;
            *v155 = v230;
            *(v155 + 4) = sub_222580F0C(0xD000000000000016, v231 | 0x8000000000000000, &v266);
            *(v155 + 12) = 2082;
            v157 = sub_222590468();
            v159 = v158;

            v160 = v157;
            v86 = v263;
            v161 = sub_222580F0C(v160, v159, &v266);

            *(v155 + 14) = v161;
            _os_log_impl(&dword_222567000, v153, v154, "%s: no url found in %{public}s", v155, 0x16u);
            swift_arrayDestroy();
            v162 = v156;
            v83 = v264;
            MEMORY[0x223DBA5D0](v162, -1, -1);
            v163 = v155;
            v82 = v250;
            MEMORY[0x223DBA5D0](v163, -1, -1);
          }

          else
          {
          }

          (*v245)(v83, v82);
          (*v246)(v99, v265);
        }

        v85 = v261;
LABEL_55:
        v84 = v262;
        goto LABEL_18;
      }
    }

    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v145 = sub_2225901D8();
    __swift_project_value_buffer(v145, qword_28130F918);
    v146 = v99;
    v147 = v99;
    v148 = v265;
    (*v255)(v86, v146, v265);
    v149 = sub_2225901B8();
    v150 = sub_222590668();
    if (os_log_type_enabled(v149, v150))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v266 = v88;
      *v87 = v230;
      *(v87 + 4) = sub_222580F0C(0xD000000000000016, v231 | 0x8000000000000000, &v266);
      *(v87 + 12) = 2082;
      sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798]);
      v89 = sub_2225908B8();
      v91 = v90;
      v92 = *v246;
      (*v246)(v263, v148);
      v93 = sub_222580F0C(v89, v91, &v266);
      v86 = v263;

      *(v87 + 14) = v93;
      _os_log_impl(&dword_222567000, v149, v150, "%s: no urls found for record %{public}s", v87, 0x16u);
      swift_arrayDestroy();
      v94 = v88;
      v84 = v262;
      MEMORY[0x223DBA5D0](v94, -1, -1);
      v95 = v87;
      v82 = v250;
      MEMORY[0x223DBA5D0](v95, -1, -1);

      v83 = v264;
      (*v245)(v264, v82);
      v92(v147, v148);
    }

    else
    {

      v151 = *v246;
      (*v246)(v86, v148);
      v83 = v264;
      (*v245)(v264, v82);
      v151(v147, v148);
    }

    v85 = v261;
LABEL_18:
    v78 = v247;
    v77 = v260;
  }

  if (v78 <= v85 + 1)
  {
    v98 = v85 + 1;
  }

  else
  {
    v98 = v78;
  }

  v99 = v259;
  while (1)
  {
    v97 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      break;
    }

    if (v97 >= v78)
    {
      v261 = v98 - 1;
      v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF10, &qword_222591B80);
      v165 = v252;
      (*(*(v164 - 8) + 56))(v252, 1, 1, v164);
      v112 = v165;
      v260 = 0;
      goto LABEL_30;
    }

    v77 = *(v229 + 8 * v97);
    ++v85;
    if (v77)
    {
      v96 = v82;
      goto LABEL_29;
    }
  }

  __break(1u);
  swift_once();
  v52 = sub_2225901D8();
  __swift_project_value_buffer(v52, qword_28130F918);
  v53 = sub_2225901B8();
  v54 = sub_222590678();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v267 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_222580F0C(0xD000000000000016, 0x8000000222593BB0, &v267);
    _os_log_impl(&dword_222567000, v53, v54, "%s: no record versions found", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x223DBA5D0](v56, -1, -1);
    MEMORY[0x223DBA5D0](v55, -1, -1);
  }

  return 0;
}

unint64_t sub_2225790E4(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 48);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

void sub_2225791F0()
{
  v1 = sub_222590138();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222590098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 24);
  v12 = sub_22258FF18();
  v28 = v5;
  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_3;
  }

  v26[3] = v2;
  v26[4] = v1;
  v14 = sub_222580D8C(v13, 0, &qword_27D00EEE8, &qword_222591AE0, MEMORY[0x277D46798]);
  v15 = *(sub_222590038() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v26[1] = v14;
  v17 = sub_222583430(&v30, (v14 + v16), v13, v12);
  v26[5] = v30;
  v27 = v17;
  v26[2] = v12;

  sub_222568DEC();
  if (v27 != v13)
  {
    __break(1u);
    swift_once();
    v18 = sub_2225901D8();
    __swift_project_value_buffer(v18, qword_28130F918);
    v19 = 0;
    v20 = sub_2225901B8();
    v21 = sub_222590668();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_222580F0C(0xD00000000000001BLL, 0x8000000222593B90, &v29);
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v23 = v19;
      v25 = v19;
      _os_log_impl(&dword_222567000, v20, v21, "%s: error deleting records: %@", v22, 0x16u);
      sub_22256EA7C(v23, &qword_27D00EDB0, &unk_222591A20);
      MEMORY[0x223DBA5D0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DBA5D0](v24, -1, -1);
      MEMORY[0x223DBA5D0](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
LABEL_3:
    (*(v7 + 104))(v10, *MEMORY[0x277D46818], v6);
    sub_22258FF58();
    (*(v7 + 8))(v10, v6);
  }
}

void sub_2225798D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_222590098();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v87 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22258FEC8();
  v88 = *(v8 - 8);
  v9 = *(v88 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = (v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_22258FDF8();
  v11 = *(v93 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v93);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84F90];
  v95 = MEMORY[0x277D84F90];
  v96[0] = MEMORY[0x277D84F90];
  v17 = *(sub_22257251C(v13) + 16);

  if (v17)
  {
    if (qword_28130F8F0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Defaults();
    __swift_project_value_buffer(v18, qword_28130F8F8);
    swift_beginAccess();
    v19 = Defaults.pairedMirroringDevices.getter();
    swift_endAccess();
    v89 = sub_2225857F4(v19);

    v21 = sub_22257251C(v20);
    v22 = *(v21 + 16);
    v85 = v5;
    v84 = v8;
    if (v22)
    {
      v82 = v4;
      v83 = v1;
      v94 = v16;
      sub_2225814B4(0, v22, 0);
      v16 = v94;
      v24 = *(v11 + 16);
      v23 = v11 + 16;
      v91 = v24;
      v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
      v81[1] = v21;
      v26 = v21 + v25;
      v90 = *(v23 + 56);
      v92 = v23;
      v27 = (v23 - 8);
      do
      {
        v28 = v93;
        v91(v15, v26, v93);
        v29 = sub_22258FDD8();
        v31 = v30;
        (*v27)(v15, v28);
        v94 = v16;
        v33 = *(v16 + 16);
        v32 = *(v16 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_2225814B4((v32 > 1), v33 + 1, 1);
          v16 = v94;
        }

        *(v16 + 16) = v33 + 1;
        v34 = v16 + 16 * v33;
        *(v34 + 32) = v29;
        *(v34 + 40) = v31;
        v26 += v90;
        --v22;
      }

      while (v22);

      v2 = v83;
      v35 = v82;
    }

    else
    {

      v35 = v4;
    }

    v47 = sub_2225857F4(v16);

    v48 = sub_222580660(v89, v47);

    if ((v48 & 1) == 0)
    {
      if (qword_28130F910 != -1)
      {
        swift_once();
      }

      v49 = sub_2225901D8();
      v50 = __swift_project_value_buffer(v49, qword_28130F918);
      v51 = sub_2225901B8();
      v52 = sub_222590678();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v94 = v54;
        *v53 = 136315138;
        *(v53 + 4) = sub_222580F0C(0xD000000000000045, 0x8000000222593BD0, &v94);
        _os_log_impl(&dword_222567000, v51, v52, "%s: devices changed", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x223DBA5D0](v54, -1, -1);
        MEMORY[0x223DBA5D0](v53, -1, -1);
      }

      v55 = sub_22257716C();
      if (v55)
      {
        v56 = v55;

        v92 = v50;
        v57 = sub_2225901B8();
        v58 = sub_222590678();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v94 = v60;
          *v59 = 136315650;
          *(v59 + 4) = sub_222580F0C(0xD000000000000045, 0x8000000222593BD0, &v94);
          *(v59 + 12) = 2048;
          *(v59 + 14) = *(v56 + 16);

          *(v59 + 22) = 2080;
          sub_22257251C(v61);
          v62 = MEMORY[0x223DB9AD0]();
          v64 = v63;

          v65 = sub_222580F0C(v62, v64, &v94);

          *(v59 + 24) = v65;
          _os_log_impl(&dword_222567000, v57, v58, "%s: re-adding %ld replicator records to %s", v59, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DBA5D0](v60, -1, -1);
          MEMORY[0x223DBA5D0](v59, -1, -1);
        }

        else
        {
        }

        v70 = *(v2 + 24);
        v71 = *(v56 + 16);
        v72 = v85;
        v73 = v84;
        if (v71)
        {
          v74 = sub_222580D8C(*(v56 + 16), 0, &qword_27D00EEF0, &unk_222591AE8, MEMORY[0x277D467E0]);
          v75 = *(sub_222590088() - 8);
          v76 = sub_2225836D4(&v94, (v74 + ((*(v75 + 80) + 32) & ~*(v75 + 80))), v71, v56);
          v77 = sub_222568DEC();
          if (v76 == v71)
          {
LABEL_33:
            v78 = v86;
            *v78 = sub_22257251C(v77);
            v79 = v88;
            (*(v88 + 104))(v78, *MEMORY[0x277D46550], v73);
            v80 = v87;
            (*(v72 + 104))(v87, *MEMORY[0x277D46818], v35);
            sub_22258FF38();

            (*(v72 + 8))(v80, v35);
            (*(v79 + 8))(v78, v73);
            return;
          }

          __break(1u);
        }

        goto LABEL_33;
      }

      v66 = sub_2225901B8();
      v67 = sub_222590678();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v94 = v69;
        *v68 = 136315138;
        *(v68 + 4) = sub_222580F0C(0xD000000000000045, 0x8000000222593BD0, &v94);
        _os_log_impl(&dword_222567000, v66, v67, "%s: no records to re-add", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x223DBA5D0](v69, -1, -1);
        MEMORY[0x223DBA5D0](v68, -1, -1);
      }
    }
  }

  else
  {
    v36 = a1;
    v37 = StoreContext.fetchAllItems()();

    sub_222583DB8(v37, v1, &v95, v96);

    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v38 = sub_2225901D8();
    __swift_project_value_buffer(v38, qword_28130F918);
    v39 = sub_2225901B8();
    v40 = sub_222590678();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v94 = v42;
      *v41 = 136315650;
      *(v41 + 4) = sub_222580F0C(0xD000000000000045, 0x8000000222593BD0, &v94);
      *(v41 + 12) = 2048;
      swift_beginAccess();
      *(v41 + 14) = *(v96[0] + 16);
      *(v41 + 22) = 2048;
      swift_beginAccess();
      if (v95 >> 62)
      {
        v43 = sub_2225907F8();
      }

      else
      {
        v43 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v41 + 24) = v43;
      _os_log_impl(&dword_222567000, v39, v40, "%s: deleting %ld records and %ld items", v41, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x223DBA5D0](v42, -1, -1);
      MEMORY[0x223DBA5D0](v41, -1, -1);
    }

    swift_beginAccess();
    v44 = v96[0];
    swift_beginAccess();
    v45 = v95;

    v46._rawValue = v45;
    sub_222573B08(v44, v46, v36);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_22257A550()
{
  result = sub_2225901A8();
  if (result)
  {
    v2 = *(*(v0 + 16) + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
    type metadata accessor for StoreContext();
    inited = swift_initStackObject();
    v4 = sub_2225902B8();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();

    *(inited + 16) = sub_2225902C8();
    sub_222575D78(inited);
    sub_222576538(inited);
    sub_222574120();
    swift_setDeallocating();
    v7 = *(inited + 16);
  }

  return result;
}

uint64_t sub_22257A74C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = OBJC_IVAR____TtC18AppPlaceholderSync5Store_container;
  v4 = *(v2 + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  v6 = sub_2225902B8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  v9 = *(v2 + v3);
  v10 = swift_initStackObject();
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  swift_allocObject();

  *(v10 + 16) = sub_2225902C8();
  v17 = MEMORY[0x277D84F90];
  v13 = [objc_opt_self() hiddenApplications];
  sub_222590638();
  v14 = sub_222590568();

  sub_22258418C(v14, v10, v1, &v17);

  sub_22257DD70(v17);
  swift_setDeallocating();
  v15 = *(v10 + 16);

  if (sub_222585A8C())
  {
    sub_222575D78(inited);
  }
}

uint64_t sub_22257A8F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EED8, &qword_222591AC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_22258FDF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 24);
  sub_22258FEF8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_22256EA7C(v4, &qword_27D00EED8, &qword_222591AC8);
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v11 = sub_2225901D8();
    __swift_project_value_buffer(v11, qword_28130F918);
    v12 = sub_2225901B8();
    v13 = sub_222590668();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_222567000, v12, v13, "Failed to get .localDeviceID from the replicator", v14, 2u);
      MEMORY[0x223DBA5D0](v14, -1, -1);
    }

    v15 = qword_27D00EEC8;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v15 = sub_22258FDD8();
    (*(v6 + 8))(v9, v5);
  }

  return v15;
}

uint64_t sub_22257AB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a2;
  v46 = a1;
  v50 = a4;
  v47 = sub_22258FDF8();
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222590038();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v41 - v12;
  v14 = sub_222590078();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22258FBF8();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_22258FBE8();
  sub_22258FBC8();
  v22 = a3;
  v51 = a3;
  type metadata accessor for SyncItem();
  sub_2225850A8(&qword_28130FEC8, type metadata accessor for SyncItem);
  v23 = sub_22258FBD8();
  v41 = v14;
  v42 = v15;
  v25 = v24;
  v26 = sub_22258FD68();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v13, v44, v26);
  (*(v27 + 56))(v13, 0, 1, v26);
  sub_22258556C(v23, v25);
  sub_222590068();
  (*(v43 + 16))(v49, v46, v7);
  (*(v45 + 16))(v48, v22 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF28, &qword_222591B88);
  v28 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF30, &qword_222591B90) - 8);
  v29 = *(*v28 + 72);
  v30 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_222591200;
  v32 = (v31 + v30);
  v33 = v28[14];
  if (qword_28130FA08 != -1)
  {
    swift_once();
  }

  v34 = sub_22258FEB8();
  __swift_project_value_buffer(v34, qword_281310230);
  *v32 = sub_22258FEA8();
  v35 = v42;
  v36 = v32 + v33;
  v37 = v41;
  (*(v42 + 16))(v36, v18, v41);
  sub_22258D194(v31);
  swift_setDeallocating();
  sub_22256EA7C(v32, &qword_27D00EF30, &qword_222591B90);
  swift_deallocClassInstance();
  v38 = v50;
  sub_222590048();

  sub_2225855C0(v23, v25);
  (*(v35 + 8))(v18, v37);
  v39 = sub_222590088();
  return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
}

void sub_22257B26C(uint64_t a1)
{
  v2 = *(sub_22257251C(a1) + 16);

  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = (a1 + 40);
      do
      {
        v6 = *(v4 - 1);
        v5 = *v4;

        sub_22257B3D8(v6, v5);

        v4 += 2;
        --v3;
      }

      while (v3);
    }

    sub_22257E808();
  }

  else
  {
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v7 = sub_2225901D8();
    __swift_project_value_buffer(v7, qword_28130F918);
    oslog = sub_2225901B8();
    v8 = sub_222590678();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_222567000, oslog, v8, "Not adding bundles because there are no paired mirroring devices", v9, 2u);
      MEMORY[0x223DBA5D0](v9, -1, -1);
    }
  }
}

void sub_22257B3D8(uint64_t a1, unint64_t a2)
{
  v247 = sub_222590098();
  v231 = *(v247 - 8);
  v5 = *(v231 + 64);
  MEMORY[0x28223BE20](v247);
  v229 = &v214 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_22258FEC8();
  v230 = *(v232 - 8);
  v7 = *(v230 + 64);
  MEMORY[0x28223BE20](v232);
  v245 = (&v214 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE0, &unk_222591AD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v234 = &v214 - v11;
  v12 = sub_222590088();
  v239 = *(v12 - 8);
  v13 = *(v239 + 64);
  MEMORY[0x28223BE20](v12);
  v233 = &v214 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_22258FD68();
  v244 = *(v248 - 8);
  v15 = *(v244 + 64);
  v16 = MEMORY[0x28223BE20](v248);
  v228 = &v214 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v241 = &v214 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v240 = &v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v238 = &v214 - v23;
  v24 = sub_22258FDB8();
  v236 = *(v24 - 8);
  v237 = v24;
  v25 = *(v236 + 64);
  MEMORY[0x28223BE20](v24);
  v235 = &v214 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_222590018();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v214 - v32;
  v243 = sub_22258FDF8();
  v34 = *(v243 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v243);
  v242 = &v214 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_222590038();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v227 = &v214 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v246 = &v214 - v43;
  v250 = v2;
  v44 = *(sub_22257251C(v42) + 16);

  if (!v44)
  {
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v58 = sub_2225901D8();
    __swift_project_value_buffer(v58, qword_28130F918);

    v251 = sub_2225901B8();
    v59 = sub_222590678();

    if (os_log_type_enabled(v251, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v252 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_222580F0C(a1, a2, &v252);
      _os_log_impl(&dword_222567000, v251, v59, "Not adding bundle identifier: %s because there are no paired mirroring devices", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x223DBA5D0](v61, -1, -1);
      MEMORY[0x223DBA5D0](v60, -1, -1);
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v225 = v37;
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v45 = sub_2225901D8();
  v46 = __swift_project_value_buffer(v45, qword_28130F918);

  v249 = v46;
  v47 = sub_2225901B8();
  v48 = sub_222590678();

  v49 = os_log_type_enabled(v47, v48);
  v226 = v38;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v252 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_222580F0C(a1, a2, &v252);
    _os_log_impl(&dword_222567000, v47, v48, "Adding record for bundle identifier '%s'", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x223DBA5D0](v51, -1, -1);
    MEMORY[0x223DBA5D0](v50, -1, -1);
  }

  v52 = objc_opt_self();
  v53 = sub_222590498();
  v251 = [v52 applicationWithBundleIdentifier_];

  LOBYTE(v52) = [v251 isHidden];

  if ((v52 & 1) == 0)
  {
    v224 = v12;
    v62 = v250;
    v63 = sub_22257A8F4();
    v66 = sub_22258E62C(a1, a2, v63, v64);
    v222 = 0;
    v67 = *(*(v62 + 16) + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
    type metadata accessor for StoreContext();
    inited = swift_initStackObject();
    v69 = sub_2225902B8();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();

    v220 = sub_2225902C8();
    *(inited + 16) = v220;
    v72 = *(v34 + 16);
    v217 = OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier;
    v74 = v242;
    v73 = v243;
    v219 = v34 + 16;
    v218 = v72;
    v72(v242, v66 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_identifier, v243);
    sub_22258FDD8();
    v75 = *(v34 + 8);
    v216 = v34 + 8;
    v215 = v75;
    v75(v74, v73);
    (*(v34 + 56))(v33, 1, 1, v73);
    sub_22258588C(v33, v31, MEMORY[0x277D46788]);
    v76 = v246;
    sub_22258FFE8();
    sub_2225858F4(v33, MEMORY[0x277D46788]);
    v77 = *(v66 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    v78 = *(v66 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);
    v79 = *(v66 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
    v80 = *(v66 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);
    v223 = v66;
    v81 = *(v66 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier);
    v82 = *(v66 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_deviceIdentifier + 8);

    v221 = inited;
    v83 = sub_22256B03C(v77, v78, v79, v80, v81, v82);

    if (v83 >> 62)
    {
      v84 = sub_2225907F8();
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = v226;
    v86 = v247;
    v87 = v248;
    v88 = v245;
    v89 = v76;
    if (v84)
    {
      if ((v83 & 0xC000000000000001) != 0)
      {
        v90 = MEMORY[0x223DB9CC0](0, v83);
      }

      else
      {
        if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v90 = *(v83 + 32);
      }

      v91 = sub_22258D370(v90);

      v93 = v236;
      v92 = v237;
      v94 = v235;
      (*(v236 + 16))(v235, v223 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_lastModifiedDate, v237);
      v95 = sub_22258FDA8();
      (*(v93 + 8))(v94, v92);
      v96 = v244;
      v97 = v238;
      if (v95)
      {

        v98 = sub_2225901B8();
        v99 = v91;
        v100 = sub_222590648();

        if (os_log_type_enabled(v98, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v252 = v102;
          *v101 = 136315138;

          v103 = SyncItem.description.getter();
          v104 = v96;
          v106 = v105;

          v107 = sub_222580F0C(v103, v106, &v252);
          v96 = v104;
          v108 = v226;

          *(v101 + 4) = v107;
          _os_log_impl(&dword_222567000, v98, v100, "Existing item unchanged, will check for replicator record: %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v102);
          MEMORY[0x223DBA5D0](v102, -1, -1);
          v109 = v101;
          v85 = v108;
          MEMORY[0x223DBA5D0](v109, -1, -1);
        }

        v88 = v245;
        v89 = v246;
        v91 = v99;
      }

      v110 = *(v250 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE8, &qword_222591AE0);
      v111 = *(v85 + 72);
      v112 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_222591200;
      (*(v85 + 16))(v113 + v112, v89, v225);
      (*(v96 + 56))(v97, 1, 1, v248);
      v114 = v222;
      v115 = sub_22258FF68();
      v116 = v114;
      if (v114)
      {
        sub_22256EA7C(v97, &qword_27D00EEA0, &qword_2225918F8);

        v117 = v114;
        v118 = sub_2225901B8();
        v119 = sub_222590668();

        v120 = os_log_type_enabled(v118, v119);
        v86 = v247;
        if (v120)
        {
          v121 = swift_slowAlloc();
          v238 = v91;
          v122 = v121;
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v252 = v124;
          *v122 = 136315394;
          v125 = v242;
          v126 = v243;
          v218(v242, v223 + v217, v243);
          v127 = v116;
          v128 = sub_22258FDD8();
          v130 = v129;
          v215(v125, v126);
          v131 = sub_222580F0C(v128, v130, &v252);

          *(v122 + 4) = v131;
          *(v122 + 12) = 2112;
          v132 = v127;
          v133 = _swift_stdlib_bridgeErrorToNSError();
          *(v122 + 14) = v133;
          *v123 = v133;
          _os_log_impl(&dword_222567000, v118, v119, "Error getting replicator record for %s: %@", v122, 0x16u);
          sub_22256EA7C(v123, &qword_27D00EDB0, &unk_222591A20);
          v87 = v248;
          MEMORY[0x223DBA5D0](v123, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v124);
          v96 = v244;
          MEMORY[0x223DBA5D0](v124, -1, -1);
          v88 = v245;
          v89 = v246;
          MEMORY[0x223DBA5D0](v122, -1, -1);
          v134 = v127;
          v86 = v247;

          v135 = v223;
          v222 = 0;
          goto LABEL_39;
        }

        v222 = 0;
        v135 = v223;
      }

      else
      {
        v222 = 0;
        v136 = v115;
        sub_22256EA7C(v97, &qword_27D00EEA0, &qword_2225918F8);

        v137 = *(v136 + 16);

        v86 = v247;
        if (v137)
        {

          v138 = sub_2225901B8();
          v139 = sub_222590648();

          if (os_log_type_enabled(v138, v139))
          {
            v140 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            v252 = v141;
            *v140 = 136315138;

            v142 = SyncItem.description.getter();
            v144 = v143;

            v145 = sub_222580F0C(v142, v144, &v252);

            *(v140 + 4) = v145;
            _os_log_impl(&dword_222567000, v138, v139, "Have replicator record, will not add: %s", v140, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v141);
            MEMORY[0x223DBA5D0](v141, -1, -1);
            MEMORY[0x223DBA5D0](v140, -1, -1);
          }

          else
          {
          }

          (*(v85 + 8))(v89, v225);
LABEL_59:

          return;
        }

        v135 = v91;
      }

      v87 = v248;
    }

    else
    {

      v96 = v244;
      v135 = v223;
    }

LABEL_39:
    v146 = (v135 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    v147 = *(v135 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
    v148 = *(v135 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);

    v149 = v240;
    sub_22257CFE4(v147, v148, v240);

    if ((*(v96 + 48))(v149, 1, v87) == 1)
    {
      sub_22256EA7C(v149, &qword_27D00EEA0, &qword_2225918F8);
      v150 = sub_2225901B8();
      v151 = sub_222590668();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v252 = v153;
        *v152 = 136315138;

        v154 = SyncItem.description.getter();
        v156 = v155;

        v157 = sub_222580F0C(v154, v156, &v252);

        *(v152 + 4) = v157;
        _os_log_impl(&dword_222567000, v150, v151, "Failed to create placeholder for %s", v152, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v153);
        MEMORY[0x223DBA5D0](v153, -1, -1);
        MEMORY[0x223DBA5D0](v152, -1, -1);
      }

      (*(v226 + 8))(v89, v225);
    }

    else
    {
      v158 = v241;
      (*(v96 + 32))(v241, v149, v87);

      v159 = v234;
      sub_22257AB50(v89, v158, v135, v234);

      v160 = v239;
      v161 = v224;
      if ((*(v239 + 48))(v159, 1, v224) == 1)
      {
        sub_22256EA7C(v159, &qword_27D00EEE0, &unk_222591AD0);
        v162 = sub_2225901B8();
        v163 = sub_222590668();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          *v164 = 0;
          _os_log_impl(&dword_222567000, v162, v163, "could not create replicator record", v164, 2u);
          MEMORY[0x223DBA5D0](v164, -1, -1);
        }

        v165 = v241;
        sub_222584CA0(v241);

        (*(v96 + 8))(v165, v248);
        (*(v226 + 8))(v246, v225);
      }

      else
      {
        v166 = v233;
        (*(v160 + 32))(v233, v159, v161);
        v245 = *(v250 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEF0, &unk_222591AE8);
        v167 = *(v160 + 72);
        v168 = (*(v160 + 80) + 32) & ~*(v160 + 80);
        v169 = swift_allocObject();
        *(v169 + 16) = xmmword_222591200;
        v170 = (*(v160 + 16))(v169 + v168, v166, v161);
        *v88 = sub_22257251C(v170);
        v171 = v88;
        v172 = v230;
        (*(v230 + 104))(v88, *MEMORY[0x277D46550], v232);
        v173 = v231;
        v174 = v229;
        (*(v231 + 104))(v229, *MEMORY[0x277D46818], v86);
        v175 = v222;
        sub_22258FF38();
        if (v175)
        {

          (*(v173 + 8))(v174, v247);
          (*(v172 + 8))(v171, v232);
          (*(v239 + 8))(v233, v161);
          v176 = v226;
          v177 = v221;
          v178 = v246;
          v203 = v175;
          v204 = sub_2225901B8();
          v205 = sub_222590668();

          if (os_log_type_enabled(v204, v205))
          {
            v206 = swift_slowAlloc();
            v207 = swift_slowAlloc();
            *v206 = 138412290;
            v208 = v175;
            v209 = _swift_stdlib_bridgeErrorToNSError();
            *(v206 + 4) = v209;
            *v207 = v209;
            _os_log_impl(&dword_222567000, v204, v205, "Error adding replicator records: %@", v206, 0xCu);
            sub_22256EA7C(v207, &qword_27D00EDB0, &unk_222591A20);
            MEMORY[0x223DBA5D0](v207, -1, -1);
            v210 = v206;
            v176 = v226;
            MEMORY[0x223DBA5D0](v210, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v223 = v135;

          (*(v173 + 8))(v174, v247);
          (*(v172 + 8))(v171, v232);
          v176 = v226;
          v179 = v227;
          v180 = v244;
          v181 = v225;
          (*(v226 + 16))(v227, v246, v225);
          v182 = v228;
          v183 = v248;
          (*(v180 + 16))(v228, v241, v248);
          v184 = sub_2225901B8();
          v185 = sub_222590678();
          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            v250 = swift_slowAlloc();
            v252 = v250;
            *v186 = 136446722;
            sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798]);
            LODWORD(v247) = v185;
            v187 = sub_2225908B8();
            v188 = v179;
            v190 = v189;
            (*(v226 + 8))(v188, v181);
            v191 = sub_222580F0C(v187, v190, &v252);

            *(v186 + 4) = v191;
            *(v186 + 12) = 2082;
            v192 = *v146;
            v193 = v146[1];

            v194 = sub_222580F0C(v192, v193, &v252);

            *(v186 + 14) = v194;
            *(v186 + 22) = 2080;
            sub_2225850A8(&qword_2813101C0, MEMORY[0x277CC9260]);
            v195 = sub_2225908B8();
            v197 = v196;
            (*(v180 + 8))(v182, v183);
            v198 = sub_222580F0C(v195, v197, &v252);
            v178 = v246;

            *(v186 + 24) = v198;
            _os_log_impl(&dword_222567000, v184, v247, "Added replicator record with id=%{public}s for bundle identifier=%{public}s url: %s", v186, 0x20u);
            v199 = v250;
            swift_arrayDestroy();
            MEMORY[0x223DBA5D0](v199, -1, -1);
            v200 = v186;
            v176 = v226;
            MEMORY[0x223DBA5D0](v200, -1, -1);

            v201 = v233;
          }

          else
          {

            (*(v180 + 8))(v182, v183);
            (*(v176 + 8))(v179, v181);
            v201 = v233;
            v178 = v246;
          }

          v177 = v221;
          StoreContext.add(item:)(v202);
          (*(v239 + 8))(v201, v224);
        }

        v211 = v248;
        v212 = v241;
        sub_222584CA0(v241);

        swift_setDeallocating();
        v213 = *(v177 + 16);

        (*(v244 + 8))(v212, v211);
        (*(v176 + 8))(v178, v225);
      }
    }

    goto LABEL_59;
  }

  v54 = sub_2225901B8();
  v55 = sub_222590678();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v252 = v57;
    *v56 = 136315138;
    *(v56 + 4) = sub_222580F0C(a1, a2, &v252);
    _os_log_impl(&dword_222567000, v54, v55, "Skipping %s because it is hidden", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x223DBA5D0](v57, -1, -1);
    MEMORY[0x223DBA5D0](v56, -1, -1);

LABEL_14:
    return;
  }

LABEL_16:
  v65 = v251;
}

uint64_t sub_22257CFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v118 = a3;
  v127[3] = *MEMORY[0x277D85DE8];
  v115 = sub_22258FCA8();
  v114 = *(v115 - 8);
  v5 = v114[8];
  MEMORY[0x28223BE20](v115);
  v7 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEA0, &qword_2225918F8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v112 - v13;
  v15 = sub_22258FD68();
  v120 = *(v15 - 8);
  v121 = v15;
  v16 = *(v120 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v112 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v112 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v112 - v26;
  v28 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v122 = a1;
  v119 = a2;
  v29 = sub_222580584(a1, a2, 0);
  v113 = v25;
  if (!v29)
  {
    v31 = v120;
    v30 = v121;
    v117 = *(v120 + 56);
    v117(v14, 1, 1, v121);
    v116 = 0;
    v32 = v22;
    goto LABEL_3;
  }

  v116 = v29;
  v63 = [v29 serializedPlaceholderPath];
  v32 = v22;
  if (v63)
  {
    v64 = v63;
    sub_22258FD18();

    v65 = v120;
    v66 = *(v120 + 56);
    v67 = v12;
    v68 = 0;
  }

  else
  {
    v65 = v120;
    v66 = *(v120 + 56);
    v67 = v12;
    v68 = 1;
  }

  v95 = v121;
  v117 = v66;
  v66(v67, v68, 1, v121);
  sub_222585504(v12, v14, &qword_27D00EEA0, &qword_2225918F8);
  v30 = v95;
  if ((*(v65 + 48))(v14, 1, v95) == 1)
  {
    v31 = v65;
LABEL_3:
    sub_22256EA7C(v14, &qword_27D00EEA0, &qword_2225918F8);
    if (qword_28130F8F0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Defaults();
    v34 = __swift_project_value_buffer(v33, qword_28130F8F8);
    swift_beginAccess();
    (*(v31 + 16))(v19, v34 + *(v33 + 28), v30);
    v126[0] = v122;
    v126[1] = v119;
    v35 = v114;
    v36 = v115;
    (v114[13])(v7, *MEMORY[0x277CC91D8], v115);
    sub_22256E958();
    sub_22258FD48();
    (v35[1])(v7, v36);
    v37 = *(v31 + 8);
    v115 = v31 + 8;
    v114 = v37;
    (v37)(v19, v30);
    sub_22258FCE8();
    (*(v31 + 40))(v32, v19, v30);
    if (qword_28130F910 != -1)
    {
      swift_once();
    }

    v38 = sub_2225901D8();
    __swift_project_value_buffer(v38, qword_28130F918);
    v39 = sub_2225901B8();
    v40 = sub_222590648();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v126[0] = v42;
      *v41 = 136315138;
      swift_beginAccess();
      v43 = sub_22258FD28();
      v45 = sub_222580F0C(v43, v44, v126);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_222567000, v39, v40, "Attempt to create placeholder at: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x223DBA5D0](v42, -1, -1);
      MEMORY[0x223DBA5D0](v41, -1, -1);
    }

    v46 = v119;
    v47 = [objc_opt_self() defaultManager];
    swift_beginAccess();
    v48 = sub_22258FCD8();
    v125 = 0;
    v49 = [v47 removeItemAtURL:v48 error:&v125];

    if (v49)
    {
      v50 = v125;
LABEL_20:
      v69 = sub_222590498();
      v70 = sub_22258FCD8();
      v125 = 0;
      v71 = MICreateSerializedPlaceholderForInstalledApplication();

      v72 = v125;
      if (v71)
      {
        v73 = v125;
        v74 = sub_2225901B8();
        v75 = sub_222590678();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v125 = v77;
          *v76 = 136315138;
          v78 = sub_22258FD28();
          v80 = sub_222580F0C(v78, v79, &v125);

          *(v76 + 4) = v80;
          _os_log_impl(&dword_222567000, v74, v75, "Successfully created placeholder at: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x223DBA5D0](v77, -1, -1);
          MEMORY[0x223DBA5D0](v76, -1, -1);
        }

        v81 = v121;
        v82 = v118;
        sub_22258FC98();

        v117(v82, 0, 1, v81);
        v83 = v32;
        v84 = v81;
      }

      else
      {

        v85 = v72;
        v86 = sub_2225901B8();
        v87 = sub_222590668();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v125 = v90;
          *v88 = 136315394;
          *(v88 + 4) = sub_222580F0C(v122, v46, &v125);
          *(v88 + 12) = 2112;
          *(v88 + 14) = v85;
          *v89 = v72;
          v91 = v85;
          sub_22256EA7C(v89, &qword_27D00EDB0, &unk_222591A20);
          MEMORY[0x223DBA5D0](v89, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v90);
          MEMORY[0x223DBA5D0](v90, -1, -1);
          MEMORY[0x223DBA5D0](v88, -1, -1);
        }

        v92 = v121;
        v117(v118, 1, 1, v121);

        v83 = v32;
        v84 = v92;
      }

      result = (v114)(v83, v84);
      goto LABEL_28;
    }

    v51 = v125;
    v52 = sub_22258FC68();

    swift_willThrow();
    v125 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EDC8, &unk_222591A40);
    sub_222585984(0, &qword_28130F790, 0x277CCA9B8);
    swift_dynamicCast();
    v53 = v123;
    if ([v123 code]!= 4)
    {
      v54 = v53;
      v53 = sub_2225901B8();
      v55 = sub_222590668();

      if (os_log_type_enabled(v53, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v124 = v58;
        *v56 = 136315394;
        v59 = sub_22258FD28();
        v61 = sub_222580F0C(v59, v60, &v124);

        *(v56 + 4) = v61;
        v46 = v119;
        *(v56 + 12) = 2112;
        *(v56 + 14) = v54;
        *v57 = v54;
        v62 = v54;
        _os_log_impl(&dword_222567000, v53, v55, "Error removing %s: %@", v56, 0x16u);
        sub_22256EA7C(v57, &qword_27D00EDB0, &unk_222591A20);
        MEMORY[0x223DBA5D0](v57, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x223DBA5D0](v58, -1, -1);
        MEMORY[0x223DBA5D0](v56, -1, -1);

LABEL_19:
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  v96 = *(v65 + 32);
  v96(v27, v14, v95);
  if (qword_28130F910 != -1)
  {
    swift_once();
  }

  v97 = sub_2225901D8();
  __swift_project_value_buffer(v97, qword_28130F918);
  v98 = v113;
  (*(v65 + 16))(v113, v27, v95);
  v99 = sub_2225901B8();
  v100 = v95;
  v101 = sub_222590648();
  if (os_log_type_enabled(v99, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v122 = v96;
    v104 = v103;
    v127[0] = v103;
    *v102 = 136315138;
    sub_2225850A8(&qword_2813101C0, MEMORY[0x277CC9260]);
    v105 = sub_2225908B8();
    v106 = v98;
    v108 = v107;
    (*(v65 + 8))(v106, v100);
    v109 = sub_222580F0C(v105, v108, v127);

    *(v102 + 4) = v109;
    _os_log_impl(&dword_222567000, v99, v101, "Got cached placeholder at: %s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    v110 = v104;
    v96 = v122;
    MEMORY[0x223DBA5D0](v110, -1, -1);
    MEMORY[0x223DBA5D0](v102, -1, -1);
  }

  else
  {

    (*(v65 + 8))(v98, v95);
  }

  v111 = v118;
  v96(v118, v27, v100);
  result = (v117)(v111, 0, 1, v100);
LABEL_28:
  v94 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_22257DD70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_222590018();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - v9;
  v39 = sub_222590038();
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v39);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84F90];
  v15 = *(*(v1 + 16) + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  v17 = sub_2225902B8();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();

  sub_2225840D4(a1);

  v20._rawValue = v41;
  if (v41 >> 62)
  {
    v32 = v41;
    v33 = sub_2225907F8();
    v20._rawValue = v32;
    v21 = v33;
  }

  else
  {
    v21 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
LABEL_13:
    sub_222573B08(v22, v20, inited);

    sub_22257E808();
    swift_setDeallocating();
    v31 = *(inited + 16);
  }

  rawValue = v20._rawValue;
  v40 = MEMORY[0x277D84F90];
  result = sub_2225814D4(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v38 = v21;
    v34[0] = inited;
    v34[1] = v2;
    v25 = 0;
    v22 = v40;
    v36 = "generated_placeholders.noindex";
    v37 = "oldersyncservicesd.client";
    v20._rawValue = rawValue;
    v34[2] = v11 + 32;
    v35 = rawValue & 0xC000000000000001;
    v26 = rawValue;
    do
    {
      if (v35)
      {
        MEMORY[0x223DB9CC0](v25, v20._rawValue);
      }

      else
      {
        v27 = *(v20._rawValue + v25 + 4);
      }

      sub_22258FDD8();
      v28 = sub_22258FDF8();
      (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
      sub_22258588C(v10, v8, MEMORY[0x277D46788]);
      sub_22258FFE8();

      sub_2225858F4(v10, MEMORY[0x277D46788]);
      v40 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2225814D4(v29 > 1, v30 + 1, 1);
        v22 = v40;
      }

      ++v25;
      *(v22 + 16) = v30 + 1;
      (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30, v14, v39);
      v20._rawValue = v26;
    }

    while (v38 != v25);
    inited = v34[0];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_22257E190(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2225907F8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_2225907F8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2225831EC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22258328C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

size_t sub_22257E280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_222590018();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  v43 = sub_222590038();
  v13 = *(v43 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v43);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v2 + 16) + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  v19 = sub_2225902B8();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  v22 = sub_22257A8F4();
  v24 = StoreContext.fetchItems(bundleIdentifier:deviceIdentifier:)(a1, a2, v22, v23);

  v25._rawValue = v24;
  if (v24 >> 62)
  {
    v37 = sub_2225907F8();
    v25._rawValue = v24;
    v26 = v37;
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
LABEL_13:
    sub_222573B08(v27, v25, inited);

    swift_setDeallocating();
    v36 = *(inited + 16);
  }

  rawValue = v25._rawValue;
  v44 = MEMORY[0x277D84F90];
  result = sub_2225814D4(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v42 = v26;
    v38[0] = inited;
    v38[1] = v3;
    v30 = 0;
    v27 = v44;
    v40 = "generated_placeholders.noindex";
    v41 = "oldersyncservicesd.client";
    v25._rawValue = rawValue;
    v38[2] = v13 + 32;
    v39 = rawValue & 0xC000000000000001;
    v31 = rawValue;
    do
    {
      if (v39)
      {
        MEMORY[0x223DB9CC0](v30, v25._rawValue);
      }

      else
      {
        v32 = *(v25._rawValue + v30 + 4);
      }

      sub_22258FDD8();
      v33 = sub_22258FDF8();
      (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
      sub_22258588C(v12, v10, MEMORY[0x277D46788]);
      sub_22258FFE8();

      sub_2225858F4(v12, MEMORY[0x277D46788]);
      v44 = v27;
      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_2225814D4(v34 > 1, v35 + 1, 1);
        v27 = v44;
      }

      ++v30;
      *(v27 + 16) = v35 + 1;
      (*(v13 + 32))(v27 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v35, v16, v43);
      v25._rawValue = v31;
    }

    while (v42 != v30);
    inited = v38[0];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_22257E690()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  v3 = sub_2225902B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  if (sub_222585A8C())
  {
    sub_222574BE8();
  }
}

uint64_t sub_22257E72C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  v3 = sub_2225902B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  sub_2225798D8(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
}

uint64_t sub_22257E7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF58, &qword_222591BC8);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_281310250 = result;
  return result;
}

void sub_22257E808()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
  type metadata accessor for StoreContext();
  inited = swift_initStackObject();
  v3 = sub_2225902B8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  *(inited + 16) = sub_2225902C8();
  v6 = StoreContext.fetchAllItems()();
  swift_setDeallocating();
  v7 = *(inited + 16);

  v8 = *(v0 + 24);
  v9 = sub_22258FF18();
  if (qword_28130F820 != -1)
  {
    swift_once();
  }

  v10 = sub_2225901D8();
  __swift_project_value_buffer(v10, qword_28130F828);

  v11 = sub_2225901B8();
  v12 = sub_222590678();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134349312;
    if (v6 >> 62)
    {
      v14 = sub_2225907F8();
    }

    else
    {
      v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 4) = v14;

    *(v13 + 12) = 2050;
    if (v9)
    {
      v15 = *(v9 + 16);
    }

    else
    {
      v15 = 0;
    }

    *(v13 + 14) = v15;

    _os_log_impl(&dword_222567000, v11, v12, "store count: %{public}ld replicator count: %{public}ld", v13, 0x16u);
    MEMORY[0x223DBA5D0](v13, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v16 = sub_2225901B8();
  v17 = sub_222590678();

  if (!os_log_type_enabled(v16, v17))
  {

LABEL_28:

    return;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v39 = v19;
  *v18 = 136446210;
  if (!(v6 >> 62))
  {
    v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_14;
    }

LABEL_26:

    v22 = MEMORY[0x277D84F90];
LABEL_27:
    v29 = MEMORY[0x223DB9AD0](v22, MEMORY[0x277D837D0]);
    v31 = v30;

    v32 = sub_222580F0C(v29, v31, &v39);

    *(v18 + 4) = v32;
    _os_log_impl(&dword_222567000, v16, v17, "all placeholders: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223DBA5D0](v19, -1, -1);
    MEMORY[0x223DBA5D0](v18, -1, -1);
    goto LABEL_28;
  }

  v20 = sub_2225907F8();
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_14:
  v38 = MEMORY[0x277D84F90];
  sub_2225814B4(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v33 = v19;
    v34 = v17;
    v35 = v16;
    v21 = 0;
    v22 = v38;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x223DB9CC0](v21, v6);
      }

      else
      {
        v23 = *(v6 + 8 * v21 + 32);
      }

      v25 = *(v23 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version);
      v24 = *(v23 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_version + 8);
      v36 = *(v23 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier);
      v37 = *(v23 + OBJC_IVAR____TtC18AppPlaceholderSync8SyncItem_bundleIdentifier + 8);

      MEMORY[0x223DB9A60](v25, v24);

      v27 = *(v38 + 16);
      v26 = *(v38 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2225814B4((v26 > 1), v27 + 1, 1);
      }

      ++v21;
      *(v38 + 16) = v27 + 1;
      v28 = v38 + 16 * v27;
      *(v28 + 32) = v36;
      *(v28 + 40) = v37;
    }

    while (v20 != v21);

    v16 = v35;
    v17 = v34;
    v19 = v33;
    goto LABEL_27;
  }

  __break(1u);
}

void sub_22257EC74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEF8, &qword_222591AF8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  if (qword_28130FDD0 != -1)
  {
    swift_once();
  }

  v5 = qword_281310250;
  os_unfair_lock_lock((qword_281310250 + 16));
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    sub_22257E808();
    v6 = sub_2225905C8();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v0;

    sub_22258020C(0, 0, v4, &unk_222591B08, v7);
  }

  os_unfair_lock_unlock(v5 + 4);
}

uint64_t sub_22257EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_22258FDF8();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_22258FE88();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v11 = *(*(sub_222590018() - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v12 = sub_222590038();
  v4[18] = v12;
  v13 = *(v12 - 8);
  v4[19] = v13;
  v14 = *(v13 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v15 = sub_22258FE58();
  v4[24] = v15;
  v16 = *(v15 - 8);
  v4[25] = v16;
  v17 = *(v16 + 64) + 15;
  v4[26] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF48, &qword_222591BB8);
  v4[27] = v18;
  v19 = *(v18 - 8);
  v4[28] = v19;
  v20 = *(v19 + 64) + 15;
  v4[29] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF50, &qword_222591BC0);
  v4[30] = v21;
  v22 = *(v21 - 8);
  v4[31] = v22;
  v23 = *(v22 + 64) + 15;
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22257F0FC, 0, 0);
}

uint64_t sub_22257F0FC()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = *(v0[6] + 24);
  sub_22258FF08();
  sub_2225905D8();
  (*(v3 + 8))(v2, v4);
  v0[33] = 0;
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_22257F1FC;
  v8 = v0[32];
  v9 = v0[30];

  return MEMORY[0x2822003E8](v0 + 5, 0, 0, v9);
}

uint64_t sub_22257F1FC()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22257F2F8, 0, 0);
}

uint64_t sub_22257F2F8()
{
  v175 = v0;
  v1 = v0 + 5;
  v2 = v0[5];
  if (v2)
  {
    v3 = *(*(v0[6] + 16) + OBJC_IVAR____TtC18AppPlaceholderSync5Store_container);
    type metadata accessor for StoreContext();
    inited = swift_initStackObject();
    v5 = sub_2225902B8();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();

    v8 = sub_2225902C8();
    *(inited + 16) = v8;
    v172 = *(v2 + 16);
    if (v172)
    {
      v12 = 0;
      v13 = *(v0[25] + 80);
      v170 = v2 + ((v13 + 32) & ~v13);
      v14 = v0[33];
      v164 = v2;
      while (1)
      {
        if (v12 >= *(v2 + 16))
        {
          __break(1u);
          return MEMORY[0x2822003E8](v8, v9, v10, v11);
        }

        v21 = v0[24];
        sub_22258588C(v170 + *(v0[25] + 72) * v12, v0[26], MEMORY[0x277D46510]);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v23 = v0[26];
        if (EnumCaseMultiPayload != 1)
        {
          (*(v0[11] + 32))(v0[15], v23, v0[10]);
          v50 = sub_2225901A8();
          if (v14)
          {
            if (qword_28130F910 != -1)
            {
              swift_once();
            }

            v51 = sub_2225901D8();
            __swift_project_value_buffer(v51, qword_28130F918);
            v52 = v14;
            v53 = sub_2225901B8();
            v54 = sub_222590668();

            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              *v55 = 138412290;
              v57 = v14;
              v58 = _swift_stdlib_bridgeErrorToNSError();
              *(v55 + 4) = v58;
              *v56 = v58;
              _os_log_impl(&dword_222567000, v53, v54, "Could not fetch iphone mirroring eligibility: %@", v55, 0xCu);
              sub_22256EA7C(v56, &qword_27D00EDB0, &unk_222591A20);
              MEMORY[0x223DBA5D0](v56, -1, -1);
              MEMORY[0x223DBA5D0](v55, -1, -1);
            }

            else
            {
            }
          }

          else if ((v50 & 1) == 0)
          {
            v139 = v0[31];
            v138 = v0[32];
            v140 = v0[30];
            v141 = v0[15];
            v142 = v0[10];
            v143 = v0[11];

            (*(v143 + 8))(v141, v142);
            (*(v139 + 8))(v138, v140);
            goto LABEL_39;
          }

          v73 = v0[19];
          v72 = v0[20];
          v75 = v0[17];
          v74 = v0[18];
          v76 = v0[15];
          v77 = v0[16];
          v78 = v0[7];
          v79 = v0[8];
          sub_22258FE68();
          sub_222590028();
          v167 = *(v73 + 8);
          v167(v72, v74);
          (*(v79 + 56))(v77, 1, 1, v78);
          LOBYTE(v76) = MEMORY[0x223DB9560](v75, v77);
          v80 = MEMORY[0x277D46788];
          sub_2225858F4(v77, MEMORY[0x277D46788]);
          sub_2225858F4(v75, v80);
          if (v76)
          {
            if (qword_28130F910 != -1)
            {
              swift_once();
            }

            v81 = v0[14];
            v82 = v0[15];
            v83 = v0[10];
            v84 = v0[11];
            v85 = sub_2225901D8();
            __swift_project_value_buffer(v85, qword_28130F918);
            (*(v84 + 16))(v81, v82, v83);
            v86 = sub_2225901B8();
            v87 = sub_222590648();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = v0[20];
              v89 = v0[18];
              v148 = v0[14];
              v154 = v0[11];
              v158 = v0[15];
              v162 = v0[10];
              v90 = swift_slowAlloc();
              v150 = swift_slowAlloc();
              v174[0] = v150;
              *v90 = 136315138;
              sub_22258FE68();
              sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798]);
              v91 = sub_2225908B8();
              v93 = v92;
              v167(v88, v89);
              v94 = *(v154 + 8);
              v94(v148, v162);
              v95 = sub_222580F0C(v91, v93, v174);

              *(v90 + 4) = v95;
              _os_log_impl(&dword_222567000, v86, v87, "ignoring local updated record: %s", v90, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v150);
              MEMORY[0x223DBA5D0](v150, -1, -1);
              MEMORY[0x223DBA5D0](v90, -1, -1);

              v8 = (v94)(v158, v162);
            }

            else
            {
              v118 = v0[14];
              v117 = v0[15];
              v119 = v0[10];
              v120 = v0[11];

              v121 = *(v120 + 8);
              v121(v118, v119);
              v8 = (v121)(v117, v119);
            }
          }

          else
          {
            if (qword_28130F910 != -1)
            {
              swift_once();
            }

            v96 = v0[15];
            v98 = v0[12];
            v97 = v0[13];
            v99 = v0[10];
            v100 = v0[11];
            v101 = sub_2225901D8();
            __swift_project_value_buffer(v101, qword_28130F918);
            v102 = *(v100 + 16);
            v102(v97, v96, v99);
            v102(v98, v96, v99);
            v103 = sub_2225901B8();
            v104 = sub_222590648();
            if (os_log_type_enabled(v103, v104))
            {
              v105 = v0[20];
              v106 = v0[18];
              v159 = v0[15];
              v107 = v0[13];
              v146 = v0[12];
              v163 = v0[11];
              v144 = v0[10];
              v145 = v0[9];
              v147 = v0[7];
              v149 = v0[8];
              v108 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              v174[0] = v155;
              *v108 = 136315394;
              v151 = v104;
              sub_22258FE68();
              sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798]);
              v109 = sub_2225908B8();
              v111 = v110;
              v167(v105, v106);
              v168 = *(v163 + 8);
              v168(v107, v144);
              v112 = sub_222580F0C(v109, v111, v174);

              *(v108 + 4) = v112;
              *(v108 + 12) = 2080;
              sub_22258FE78();
              sub_2225850A8(&qword_281310180, MEMORY[0x277CC95F0]);
              v113 = sub_2225908B8();
              v115 = v114;
              (*(v149 + 8))(v145, v147);
              v168(v146, v144);
              v116 = sub_222580F0C(v113, v115, v174);

              *(v108 + 14) = v116;
              _os_log_impl(&dword_222567000, v103, v151, "record updated: %s, version: %s", v108, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223DBA5D0](v155, -1, -1);
              MEMORY[0x223DBA5D0](v108, -1, -1);

              v8 = (v168)(v159, v144);
            }

            else
            {
              v15 = v0[15];
              v17 = v0[12];
              v16 = v0[13];
              v18 = v0[10];
              v19 = v0[11];

              v20 = *(v19 + 8);
              v20(v17, v18);
              v20(v16, v18);
              v8 = (v20)(v15, v18);
            }
          }

          v14 = 0;
          v2 = v164;
          goto LABEL_6;
        }

        v166 = v14;
        v25 = v0[16];
        v24 = v0[17];
        v27 = v0[7];
        v26 = v0[8];
        (*(v0[19] + 32))(v0[23], v23, v0[18]);
        sub_222590028();
        (*(v26 + 56))(v25, 1, 1, v27);
        v28 = MEMORY[0x223DB9560](v24, v25);
        v29 = MEMORY[0x277D46788];
        sub_2225858F4(v25, MEMORY[0x277D46788]);
        sub_2225858F4(v24, v29);
        if (v28)
        {
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v30 = v0[22];
          v31 = v0[23];
          v33 = v0[18];
          v32 = v0[19];
          v34 = sub_2225901D8();
          __swift_project_value_buffer(v34, qword_28130F918);
          (*(v32 + 16))(v30, v31, v33);
          v35 = sub_2225901B8();
          v36 = sub_222590648();
          v37 = os_log_type_enabled(v35, v36);
          v38 = v0[22];
          v39 = v0[23];
          v40 = v0[18];
          v41 = v0[19];
          if (!v37)
          {
            goto LABEL_24;
          }

          v160 = v0[23];
          v42 = swift_slowAlloc();
          v156 = swift_slowAlloc();
          v174[0] = v156;
          *v42 = 136315138;
          sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798]);
          v43 = sub_2225908B8();
          v45 = v44;
          v152 = v36;
          v46 = *(v41 + 8);
          v46(v38, v40);
          v47 = v43;
          v2 = v164;
          v48 = sub_222580F0C(v47, v45, v174);

          *(v42 + 4) = v48;
          _os_log_impl(&dword_222567000, v35, v152, "ignoring local deleted record: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v156);
          MEMORY[0x223DBA5D0](v156, -1, -1);
          MEMORY[0x223DBA5D0](v42, -1, -1);

          v49 = v160;
        }

        else
        {
          if (qword_28130F910 != -1)
          {
            swift_once();
          }

          v59 = v0[23];
          v60 = v0[21];
          v61 = v0[18];
          v62 = v0[19];
          v63 = sub_2225901D8();
          __swift_project_value_buffer(v63, qword_28130F918);
          (*(v62 + 16))(v60, v59, v61);
          v35 = sub_2225901B8();
          v64 = sub_222590648();
          v65 = os_log_type_enabled(v35, v64);
          v39 = v0[23];
          v38 = v0[21];
          v40 = v0[18];
          v41 = v0[19];
          if (!v65)
          {
LABEL_24:

            v71 = *(v41 + 8);
            v71(v38, v40);
            v8 = (v71)(v39, v40);
            v14 = v166;
            goto LABEL_6;
          }

          v66 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v174[0] = v161;
          *v66 = 136315138;
          sub_2225850A8(&qword_28130F818, MEMORY[0x277D46798]);
          v157 = v39;
          v67 = sub_2225908B8();
          v69 = v68;
          v153 = v64;
          v46 = *(v41 + 8);
          v46(v38, v40);
          v70 = sub_222580F0C(v67, v69, v174);
          v2 = v164;

          *(v66 + 4) = v70;
          _os_log_impl(&dword_222567000, v35, v153, "record deleted: %s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v161);
          MEMORY[0x223DBA5D0](v161, -1, -1);
          MEMORY[0x223DBA5D0](v66, -1, -1);

          v49 = v157;
        }

        v8 = (v46)(v49, v40);
        v14 = v166;
LABEL_6:
        if (v172 == ++v12)
        {

          v1 = v0 + 5;
          goto LABEL_44;
        }
      }
    }

    v14 = v0[33];
LABEL_44:
    v0[33] = v14;
    v135 = *(MEMORY[0x277D85798] + 4);
    v136 = swift_task_alloc();
    v0[34] = v136;
    *v136 = v0;
    v136[1] = sub_22257F1FC;
    v137 = v0[32];
    v11 = v0[30];
    v8 = v1;
    v9 = 0;
    v10 = 0;

    return MEMORY[0x2822003E8](v8, v9, v10, v11);
  }

  else
  {
    v122 = v0[6];
    (*(v0[31] + 8))(v0[32], v0[30]);
    sub_22257E808();
LABEL_39:
    v123 = v0[32];
    v124 = v0[29];
    v125 = v0[26];
    v127 = v0[22];
    v126 = v0[23];
    v129 = v0[20];
    v128 = v0[21];
    v131 = v0[16];
    v130 = v0[17];
    v132 = v0[15];
    v165 = v0[14];
    v169 = v0[13];
    v171 = v0[12];
    v173 = v0[9];

    v133 = v0[1];

    return v133();
  }
}

uint64_t sub_22258020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEF8, &qword_222591AF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_222585614(a3, v27 - v11);
  v13 = sub_2225905C8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22256EA7C(v12, &qword_27D00EEF8, &qword_222591AF8);
  }

  else
  {
    sub_2225905B8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2225905A8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2225904E8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_22256EA7C(a3, &qword_27D00EEF8, &qword_222591AF8);

      return v25;
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

  sub_22256EA7C(a3, &qword_27D00EEF8, &qword_222591AF8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t SyncManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return v0;
}

uint64_t SyncManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

id sub_222580584(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_222590498();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_22258FC68();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_222580660(uint64_t result, uint64_t a2)
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
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_222590948();

    sub_2225904F8();
    v17 = sub_222590968();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_2225908C8() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

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
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222580818()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_222580874()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *v1 = *(*(v0 + 24) + 48);
}

uint64_t sub_2225808B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2225809AC;

  return v7(a1);
}

uint64_t sub_2225809AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_222580AA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_222580C80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF60, &qword_222591BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_222580D8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

uint64_t sub_222580EB0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_222580F0C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_222580F0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_222580FD8(v11, 0, 0, 1, a1, a2);
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
    sub_22256EA0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_222580FD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2225810E4(a5, a6);
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
    result = sub_222590788();
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

uint64_t sub_2225810E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_222581130(a1, a2);
  sub_222581260(&unk_2835BD788);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_222581130(uint64_t a1, unint64_t a2)
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

  v6 = sub_22258134C(v5, 0);
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

  result = sub_222590788();
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
        v10 = sub_222590528();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22258134C(v10, 0);
        result = sub_222590748();
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

uint64_t sub_222581260(uint64_t result)
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

  result = sub_2225813C0(result, v12, 1, v3);
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

void *sub_22258134C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF80, &qword_222591BE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2225813C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF80, &qword_222591BE8);
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

char *sub_2225814B4(char *a1, int64_t a2, char a3)
{
  result = sub_2225814F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2225814D4(size_t a1, int64_t a2, char a3)
{
  result = sub_222581600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2225814F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF60, &qword_222591BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_222581600(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EEE8, &qword_222591AE0);
  v10 = *(sub_222590038() - 8);
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
  v15 = *(sub_222590038() - 8);
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

uint64_t sub_2225817D8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22258FDF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF90, &qword_222591BF8);
  v43 = a2;
  result = sub_222590818();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_2225850A8(&qword_281310190, MEMORY[0x277CC95F0]);
      result = sub_222590478();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_222581BB4(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_222590088();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222590038();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF38, &qword_222591B98);
  v52 = a2;
  result = sub_222590818();
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
      sub_2225850A8(&qword_27D00EF40, MEMORY[0x277D46798]);
      result = sub_222590478();
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

uint64_t sub_22258205C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_222590038();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_222585EF4(a2);
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
      sub_2225825D4();
      goto LABEL_7;
    }

    sub_222581BB4(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_222585EF4(a2);
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
      return sub_222582260(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2225908E8();
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
  v23 = sub_222590088();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_222582260(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_222590038();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_222590088();
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

char *sub_222582354()
{
  v1 = v0;
  v34 = sub_22258FDF8();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF90, &qword_222591BF8);
  v4 = *v0;
  v5 = sub_222590808();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_2225825D4()
{
  v1 = v0;
  v43 = sub_222590088();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_222590038();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF38, &qword_222591B98);
  v6 = *v0;
  v7 = sub_222590808();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_222582928(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_222590948();
  sub_2225904F8();
  v9 = sub_222590968();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2225908C8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_222582CD8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_222582A78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D00EF68, &qword_222591BD8);
  result = sub_222590728();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_222590948();
      sub_2225904F8();
      result = sub_222590968();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}
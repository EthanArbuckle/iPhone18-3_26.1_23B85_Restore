uint64_t sub_16142C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_16147C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B85F8);
  sub_162A6C(&qword_2B8650, &qword_2B85F8, &unk_1DB1A8, sub_15F224);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_161558()
{
  result = qword_2B88D8;
  if (!qword_2B88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B88D8);
  }

  return result;
}

unint64_t sub_1615AC()
{
  result = qword_2B88E0;
  if (!qword_2B88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B88E0);
  }

  return result;
}

uint64_t sub_161600()
{

  return _swift_deallocObject(v0, 49, 7);
}

unint64_t sub_1616B4()
{
  result = qword_2B8918;
  if (!qword_2B8918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8908);
    sub_16174C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8918);
  }

  return result;
}

unint64_t sub_16174C()
{
  result = qword_2B8920;
  if (!qword_2B8920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8928);
    sub_161804();
    sub_162D0C(&qword_2B8948, &qword_2B8950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8920);
  }

  return result;
}

unint64_t sub_161804()
{
  result = qword_2B8930;
  if (!qword_2B8930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8938);
    sub_15E180(&qword_2B8940, type metadata accessor for SwitchRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8930);
  }

  return result;
}

uint64_t sub_1618D8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_161910()
{
  result = qword_2B8958;
  if (!qword_2B8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8958);
  }

  return result;
}

uint64_t sub_161980()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_161A08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_161A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a2;
  v55 = a1;
  v6 = sub_19B6F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(v4 + 32);
  v10 = v4[3];
  v68 = v10;
  v11 = v69;

  if ((v11 & 1) == 0)
  {
    sub_19C3D4();
    v12 = sub_19B914();
    sub_19B414();

    sub_19B6E4();
    swift_getAtKeyPath();
    sub_160CD8(&v68, &qword_2B88E8);
    (*(v7 + 8))(v9, v6);
    v10 = v62;
  }

  swift_getKeyPath();
  v62 = v10;
  sub_15E180(&qword_2B8670, type metadata accessor for SCSettings);
  sub_19AF44();

  v13 = *(v10 + 16);

  v15 = *v4;
  v14 = v4[1];
  v16 = v4[2];
  v66 = v16;
  v67 = v15;
  v62 = v15;
  v63 = v14;
  v64 = v16;
  sub_161658(&v67, &v65);

  sub_160C70(&v66, &v65, &qword_2B88F8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B88F0);
  sub_19BD24();
  v18 = sub_155950(v65, v13);

  v58 = *(v18 + 16);
  if (!v58)
  {

    v47 = &_swiftEmptyArrayStorage;
LABEL_45:
    v62 = v15;
    v63 = v14;
    v64 = v16;
    v65 = v47;
    sub_19BD34();
    sub_1620DC(&v67);

    return sub_160CD8(&v66, &qword_2B88F8);
  }

  v48 = v17;
  v49 = v16;
  v50 = v15;
  v51 = v14;
  v20 = 0;
  v21 = &_swiftEmptyArrayStorage;
  v57 = v18 + 32;
  v22 = v54;
  v52 = v18;
  v53 = a3;
  while (v20 < *(v18 + 16))
  {
    v23 = (v57 + 24 * v20);
    v24 = *v23;
    v25 = v23[1];
    v65 = v23[2];
    v26 = v24 == v22 && v25 == a3;
    if (v26 || (sub_19C644() & 1) != 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B88F8);
      sub_162D0C(&qword_2B8978, &qword_2B88F8);
      sub_162D0C(&qword_2B8980, &qword_2B88F8);
      sub_19C1B4();
    }

    else
    {
    }

    v27 = v65;
    v28 = v65 >> 62;
    if (v65 >> 62)
    {
      v29 = sub_19C5A4();
    }

    else
    {
      v29 = *(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8));
    }

    v30 = v21 >> 62;
    if (v21 >> 62)
    {
      v46 = sub_19C5A4();
      v32 = v46 + v29;
      if (__OFADD__(v46, v29))
      {
LABEL_42:
        __break(1u);
LABEL_43:

        v15 = v50;
        v14 = v51;
        v47 = v21;
        v16 = v49;
        goto LABEL_45;
      }
    }

    else
    {
      v31 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      v32 = v31 + v29;
      if (__OFADD__(v31, v29))
      {
        goto LABEL_42;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v30)
      {
        v33 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v32 <= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_24:
      sub_19C5A4();
      goto LABEL_25;
    }

    if (v30)
    {
      goto LABEL_24;
    }

LABEL_25:
    result = sub_19C574();
    v21 = result;
    v33 = result & 0xFFFFFFFFFFFFFF8;
LABEL_26:
    v61 = v21;
    v34 = *(v33 + 16);
    v35 = *(v33 + 24);
    if (v28)
    {
      v37 = v33;
      result = sub_19C5A4();
      v33 = v37;
      v36 = result;
      if (!result)
      {
LABEL_5:

        v21 = v61;
        if (v29 > 0)
        {
          goto LABEL_47;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v36 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
      if (!v36)
      {
        goto LABEL_5;
      }
    }

    if (((v35 >> 1) - v34) < v29)
    {
      goto LABEL_48;
    }

    v59 = v29;
    v60 = v20;
    v38 = v33 + 8 * v34 + 32;
    v56 = v33;
    if (v28)
    {
      if (v36 < 1)
      {
        goto LABEL_50;
      }

      sub_162D0C(&qword_2B8970, &qword_2B88F8);
      for (i = 0; i != v36; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B88F8);
        v40 = sub_178984(&v62, i, v27);
        v42 = *v41;
        (v40)(&v62, 0);
        *(v38 + 8 * i) = v42;
      }
    }

    else
    {
      sub_16032C();
      swift_arrayInitWithCopy();
    }

    v20 = v60;
    a3 = v53;
    v22 = v54;
    v18 = v52;
    v21 = v61;
    if (v59 > 0)
    {
      v43 = *(v56 + 16);
      v44 = __OFADD__(v43, v59);
      v45 = v43 + v59;
      if (v44)
      {
        goto LABEL_49;
      }

      *(v56 + 16) = v45;
    }

LABEL_6:
    if (++v20 == v58)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_162140()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1621FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8998);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1622CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8998);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_16237C()
{
  sub_15EE18(319, &qword_2B8A08, sub_16032C, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_15EE18(319, &qword_2B8A10, &type metadata accessor for AXSettings.SwitchControl, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_15EE18(319, &qword_2B8A18, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_15EE18(319, &unk_2B8A20, type metadata accessor for SCSettings, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_162504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_16254C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1625A0()
{
  result = qword_2B8A58;
  if (!qword_2B8A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8A60);
    sub_1616B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8A58);
  }

  return result;
}

uint64_t sub_16264C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1626B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_16274C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_114Tm()
{
  v1 = type metadata accessor for SwitchRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8988);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_19B5B4();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_162988()
{
  result = qword_2B8A88;
  if (!qword_2B8A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8A78);
    sub_162D0C(&qword_2B8A90, &qword_2B8A98);
    sub_162D0C(&qword_2B8AA0, &qword_2B8AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8A88);
  }

  return result;
}

uint64_t sub_162A6C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_162AF0()
{
  result = qword_2B8AB8;
  if (!qword_2B8AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8AC8);
    sub_162C00();
    sub_16082C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8AB8);
  }

  return result;
}

unint64_t sub_162C00()
{
  result = qword_2B8AD0;
  if (!qword_2B8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8AD0);
  }

  return result;
}

unint64_t sub_162C54()
{
  result = qword_2B8AE0;
  if (!qword_2B8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8AE0);
  }

  return result;
}

unint64_t sub_162CA8()
{
  result = qword_2B8AE8;
  if (!qword_2B8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8AE8);
  }

  return result;
}

uint64_t sub_162D0C(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_162D54()
{
  result = qword_2B8B10;
  if (!qword_2B8B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8B00);
    sub_162D0C(&qword_2B8710, &qword_2B8718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8B10);
  }

  return result;
}

uint64_t sub_162E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_160E60(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_162E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_160E70(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_162EA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_160E60(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_162EE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_160E70(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_162F58(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_162FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8A68);
  sub_162D0C(&qword_2B8AD8, &qword_2B8A68);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_163080()
{
  result = qword_2B8B30;
  if (!qword_2B8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8B30);
  }

  return result;
}

uint64_t DeferredURLState.resourcesDictionary.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXDeferredURLState_resourcesDictionary;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id DeferredURLState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeferredURLState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_16342C()
{
  result = qword_2B8C00;
  if (!qword_2B8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8C00);
  }

  return result;
}

void sub_16349C(uint64_t a1, uint64_t a2)
{
  v4 = sub_19C444();
  __chkstk_darwin(v4 - 8);
  v5 = sub_19B1C4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_19B194();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(PSSpecifier) init];
  [v10 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  [v10 setProperty:a2 forKey:@"DeferredURLState"];
  sub_19C434();
  sub_19B1B4();
  sub_19B184();
  v11 = sub_19BFB4();
  v12 = sub_19BFB4();
  v13 = settingsLocString(v11, v12);

  if (v13)
  {
    v14 = sub_19BFE4();
    v16 = v15;

    v17[0] = v14;
    v17[1] = v16;
    sub_1641F0();
    sub_16082C();
    sub_19BA84();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_163760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a2;
  v4[15] = a4;
  v4[13] = a1;
  v5 = sub_19AE24();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8C28);
  v4[19] = swift_task_alloc();
  v6 = sub_19ADF4();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = sub_19B564();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  sub_19C114();
  v4[26] = sub_19C104();
  v9 = sub_19C0F4();

  return _swift_task_switch(sub_163948, v9, v8);
}

uint64_t sub_163948()
{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[17];

  sub_19BF24();
  sub_19BF34();
  sub_19ADC4();
  (*(v6 + 8))(v4, v5);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[24];
    v7 = v0[25];
    v9 = v0[23];
    sub_160CD8(v0[19], &qword_2B8C28);
    sub_19BF44();
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
    v10 = sub_19ADD4();
    v37 = v10;
    v38 = v11;
    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      result = sub_164584(v10, v11);
      if (!v14)
      {
        __break(1u);
        return result;
      }

      sub_1645CC(1);
      v15._countAndFlagsBits = sub_19ADE4();
      if (v15._object)
      {
        sub_19C034(v15);

        v40._countAndFlagsBits = 35;
        v40._object = 0xE100000000000000;
        sub_19C034(v40);
      }

      v16 = v0[24];
      v17 = v0[25];
      v35 = v0[22];
      v36 = v0[23];
      v19 = v0[20];
      v18 = v0[21];
      v20 = v0[15];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8C30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DAF90;
      *(inited + 32) = 1752457584;
      v22 = inited + 32;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v37;
      *(inited + 56) = v38;
      v23 = sub_166F70(inited);
      swift_setDeallocating();
      sub_160CD8(v22, &qword_2B8C38);
      v24 = sub_163D08(v23);

      v25 = OBJC_IVAR___AXDeferredURLState_resourcesDictionary;
      swift_beginAccess();
      *(v20 + v25) = v24;

      v26 = [objc_opt_self() defaultCenter];
      v27 = sub_19BFB4();
      [v26 postNotificationName:v27 object:v20];

      sub_19BF44();
      (*(v18 + 8))(v35, v19);
      (*(v16 + 8))(v17, v36);
    }

    else
    {
      v29 = v0[24];
      v28 = v0[25];
      v31 = v0[22];
      v30 = v0[23];
      v32 = v0[20];
      v33 = v0[21];

      sub_19BF44();
      (*(v33 + 8))(v31, v32);
      (*(v29 + 8))(v28, v30);
    }
  }

  v34 = v0[1];

  return v34();
}

unint64_t sub_163D08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2B8C40);
    v2 = sub_19C5D4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v24 = v25;
        v25 = v26;
        *&v26 = v27;
        result = sub_164454(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          result = sub_164654(&v24, v2[7] + 40 * v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          v18 = v2[7] + 40 * result;
          v19 = v24;
          v20 = v25;
          *(v18 + 32) = v26;
          *v18 = v19;
          *(v18 + 16) = v20;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_163F60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8C08);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = v6;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8C10);
  v10 = sub_19B194();
  v11 = sub_1641F0();
  v12 = sub_16082C();
  v17[0] = v10;
  v17[1] = &type metadata for String;
  v17[2] = v11;
  v17[3] = v12;
  swift_getOpaqueTypeConformance2();
  sub_19BF54();
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v9;
  sub_1643F0();
  v14 = v8;
  v15 = v9;
  sub_19BF14();
  return (*(v2 + 8))(v4, v1);
}

id sub_164150@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = [objc_allocWithZone(type metadata accessor for DeferredURLState()) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1641A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1641F0()
{
  result = qword_2B8C18;
  if (!qword_2B8C18)
  {
    sub_19B194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8C18);
  }

  return result;
}

uint64_t sub_164248(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1642FC;

  return sub_163760(a1, a2, v7, v6);
}

uint64_t sub_1642FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1643F0()
{
  result = qword_2B8C20;
  if (!qword_2B8C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8C20);
  }

  return result;
}

unint64_t sub_164454(uint64_t a1, uint64_t a2)
{
  sub_19C684();
  sub_19C014();
  v4 = sub_19C694();

  return sub_1644CC(a1, a2, v4);
}

unint64_t sub_1644CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_19C644())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_164584(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_19C064();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1645CC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_19C024();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return String.removeSubrange(_:)(result, v1);
      }
    }

    __break(1u);
    return String.removeSubrange(_:)(result, v1);
  }

  return result;
}

uint64_t sub_1646C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B8C08);
  sub_1643F0();
  return swift_getOpaqueTypeConformance2();
}

__CFNotificationCenter *sub_164728(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19BFB4();
  }

  else
  {
    v5 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for DwellKeyboardController();
  v6 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v5, a3);

  v7 = v6;
  result = CFNotificationCenterGetLocalCenter();
  if (kAXSDwellKeyboardContinuousPathEnabledNotification)
  {
    v9 = result;
    v10 = kAXSDwellKeyboardContinuousPathEnabledNotification;
    CFNotificationCenterAddObserver(v9, v7, sub_164968, v10, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFNotificationCenter *sub_164870(__CFString *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DwellKeyboardController();
  v3 = [(__CFString *)&v9 initWithCoder:a1];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = v3;
  result = CFNotificationCenterGetLocalCenter();
  if (kAXSDwellKeyboardContinuousPathEnabledNotification)
  {
    v7 = result;
    v8 = kAXSDwellKeyboardContinuousPathEnabledNotification;
    CFNotificationCenterAddObserver(v7, v5, sub_164968, v8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    a1 = v8;
LABEL_4:

    return v4;
  }

  __break(1u);
  return result;
}

void sub_164968(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = sub_19BFB4();
    [v2 reloadSpecifierID:v3];
  }
}

__CFNotificationCenter *sub_1649E8()
{
  result = CFNotificationCenterGetLocalCenter();
  if (kAXSDwellKeyboardContinuousPathEnabledNotification)
  {
    v2 = result;
    v3 = kAXSDwellKeyboardContinuousPathEnabledNotification;
    CFNotificationCenterRemoveObserver(v2, v0, v3, 0);

    v4.receiver = v0;
    v4.super_class = type metadata accessor for DwellKeyboardController();
    return objc_msgSendSuper2(&v4, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_164B08()
{
  v1 = v0;
  v2 = sub_19BFB4();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_19C4C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42[0] = v40;
  v42[1] = v41;
  if (*(&v41 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2B8C90);
    if (swift_dynamicCast())
    {
      return v39;
    }
  }

  else
  {
    sub_154438(v42);
  }

  v5 = &_swiftEmptyArrayStorage;
  *&v42[0] = &_swiftEmptyArrayStorage;
  v6 = objc_opt_self();
  v7 = sub_19BFB4();
  v8 = sub_19BFB4();
  v9 = settingsLocString(v7, v8);

  v10 = [v6 preferenceSpecifierNamed:v9 target:v1 set:"setUseExtendedKeyboardPredictions:specifier:" get:"useExtendedKeyboardPredictions" detail:0 cell:6 edit:0];
  if (v10)
  {
    v11 = sub_19BFB4();
    [v10 setIdentifier:v11];

    v12 = v10;
    sub_19C084();
    if (*(&dword_10 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_19C0B4();
    }

    sub_19C0D4();

    v5 = *&v42[0];
  }

  if (AXRuntimeCheck_DwellKeyboardKeyTimer())
  {
    v13 = sub_19BFB4();
    v14 = sub_19BFB4();
    v15 = sub_19BFB4();
    v16 = settingsLocString(v14, v15);

    v17 = [v6 groupSpecifierWithID:v13 name:v16];
    if (v17)
    {
      v18 = sub_19BFB4();
      v19 = sub_19BFB4();
      v20 = settingsLocString(v18, v19);

      [v17 setProperty:v20 forKey:PSFooterTextGroupKey];
      v21 = v17;
      sub_19C084();
      if (*(&dword_10 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();

      v5 = *&v42[0];
    }

    v22 = [v6 ax_stepperSpecifierWithDelegate:v1];
    if (v22)
    {
      v23 = v22;
      sub_19C084();
      if (*(&dword_10 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();

      v5 = *&v42[0];
    }
  }

  if (AXRuntimeCheck_DwellKeyboardSwipe())
  {
    v24 = sub_19BFB4();
    v25 = [v6 groupSpecifierWithID:v24];

    if (v25)
    {
      v26 = sub_19BFB4();
      v27 = sub_19BFB4();
      v28 = settingsLocString(v26, v27);

      [v25 setProperty:v28 forKey:PSFooterTextGroupKey];
      v29 = v25;
      sub_19C084();
      if (*(&dword_10 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();

      v5 = *&v42[0];
    }

    v30 = sub_19BFB4();
    v31 = sub_19BFB4();
    v32 = settingsLocString(v30, v31);

    v33 = [v6 preferenceSpecifierNamed:v32 target:v1 set:"setDwellKeyboardContinuousPathEnabledPreference:specifier:" get:"getDwellKeyboardContinuousPathEnabledPreference" detail:0 cell:6 edit:0];
    if (v33)
    {
      v34 = sub_19BFB4();
      [v33 setIdentifier:v34];

      v35 = v33;
      sub_19C084();
      if (*(&dword_10 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v42[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();

      v5 = *&v42[0];
    }
  }

  sub_1544A0(0, &qword_2B8278);
  isa = sub_19C094().super.isa;
  v37 = sub_19BFB4();
  [v1 setValue:isa forKey:v37];

  v4 = sub_171EE4(v5);

  return v4;
}

Class sub_1652F8(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_1544A0(0, &qword_2B8C78);
  sub_19C3B4();
  v4 = sub_19C314();
  LOBYTE(a3) = [v4 *a3];

  v5.super.super.isa = sub_19C454(a3).super.super.isa;

  return v5.super.super.isa;
}

void sub_165388(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  sub_19C3B4();
  v8 = a3;
  v7 = sub_19C314();
  [v7 *a5];
}

UIViewController __swiftcall GuestPassSettingsSwiftUI.make()()
{
  sub_19B334();
  sub_19B2A4();
  sub_16570C();
  return sub_19B344();
}

uint64_t sub_16568C()
{
  sub_19C3B4();
  v0 = sub_19C314();
  v1 = direct field offset for AXSettings.guestPass;
  swift_beginAccess();
  v2 = *&v0[v1];

  return sub_19B294();
}

unint64_t sub_16570C()
{
  result = qword_2B8D00;
  if (!qword_2B8D00)
  {
    sub_19B2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8D00);
  }

  return result;
}

id GuestPassSettingsSwiftUI.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19BFB4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for GuestPassSettingsSwiftUI();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id GuestPassSettingsSwiftUI.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GuestPassSettingsSwiftUI();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id GuestPassSettingsSwiftUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuestPassSettingsSwiftUI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Double __swiftcall VoiceOverDelayUntilSpeakController.numericalPreferenceValue()()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 voiceOverDelayUntilSpeakUnderTouch];
  v2 = v1;

  return v2;
}

Swift::Void __swiftcall VoiceOverDelayUntilSpeakController.setNumericalPreferenceValueFromUser(_:)(Swift::Double a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 setVoiceOverDelayUntilSpeakUnderTouch:a1];
}

Swift::String __swiftcall VoiceOverDelayUntilSpeakController.localizedFooterText()()
{
  v0 = sub_19BFB4();
  v1 = sub_19BFB4();
  v2 = settingsLocString(v0, v1);

  if (v2)
  {
    v5 = sub_19BFE4();
    v7 = v6;

    v3 = v5;
    v4 = v7;
  }

  else
  {
    __break(1u);
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall VoiceOverDelayUntilSpeakController.localizedTitle()()
{
  v0 = sub_19BFB4();
  v1 = sub_19BFB4();
  v2 = settingsLocString(v0, v1);

  if (v2)
  {
    v5 = sub_19BFE4();
    v7 = v6;

    v3 = v5;
    v4 = v7;
  }

  else
  {
    __break(1u);
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id VoiceOverDelayUntilSpeakController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v7 = sub_19BFB4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id VoiceOverDelayUntilSpeakController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id VoiceOverDelayUntilSpeakController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

UIViewController __swiftcall LiveSpeechSwiftUI.make()()
{
  sub_19B334();
  sub_19B284();
  sub_1661E8();
  return sub_19B344();
}

uint64_t sub_1661A4()
{
  sub_19C3B4();
  v0 = sub_19C314();

  return LiveSpeechSettingsView.init(settings:)(v0);
}

unint64_t sub_1661E8()
{
  result = qword_2B8D58;
  if (!qword_2B8D58)
  {
    sub_19B284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8D58);
  }

  return result;
}

id LiveSpeechSwiftUI.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19BFB4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for LiveSpeechSwiftUI();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id LiveSpeechSwiftUI.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveSpeechSwiftUI();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id LiveSpeechSwiftUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveSpeechSwiftUI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1664FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8DE0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = type metadata accessor for VoiceOverExternalIntelligenceController();
  v17 = sub_1672F8();
  v15 = v0;
  v4 = v0;
  sub_19B3A4();
  v5 = sub_19B3B4();
  v6 = *(v5 - 8);
  (*(v6 + 56))(&v14 - v3, 0, 1, v5);
  v7 = OBJC_IVAR___VoiceOverExternalIntelligenceController_onboardingView;
  swift_beginAccess();
  sub_167350(&v14 - v3, &v4[v7]);
  v8 = swift_endAccess();
  __chkstk_darwin(v8);
  sub_160C70(&v4[v7], &v14 - v3, &qword_2B8DE0);
  result = (*(v6 + 48))(&v14 - v3, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8DF0));
    v11 = sub_19B794();
    v12 = *&v4[OBJC_IVAR___VoiceOverExternalIntelligenceController_hostingController];
    *&v4[OBJC_IVAR___VoiceOverExternalIntelligenceController_hostingController] = v11;
    v13 = v11;

    return v11;
  }

  return result;
}

NSObject *VoiceOverExternalIntelligenceController.dismissed(with:request:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19AE24();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_19B404();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (!&enum case for EnablementUIDismissType.enableWithAccount(_:) || v12 != enum case for EnablementUIDismissType.enableWithAccount(_:))
  {
    if (&enum case for EnablementUIDismissType.enableWithoutAccount(_:) && v12 == enum case for EnablementUIDismissType.enableWithoutAccount(_:))
    {
      sub_19B3F4();
      sub_19B3E4();
      v25 = [objc_opt_self() sharedInstance];
      [v25 setLiveRecognitionChatGPTEnabled:1];
    }

    else
    {
      (*(v9 + 8))(v11, v8);
    }

    goto LABEL_15;
  }

  v13 = sub_19B3D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 104))(v16, enum case for GenerativeAssistantSettingsDestination.signIn(_:), v13);
  sub_19B3C4();
  (*(v14 + 8))(v16, v13);
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = result;
  sub_19AE14(v18);
  v21 = v20;
  sub_167084(&_swiftEmptyArrayStorage);
  isa = sub_19BF64().super.isa;

  v34 = 0;
  v23 = [v19 openSensitiveURL:v21 withOptions:isa error:&v34];

  if (!v23)
  {
    v26 = v34;
    sub_19AE04();

    swift_willThrow();
    v27 = sub_19C3E4();
    result = AXLogCommon();
    if (result)
    {
      v28 = result;
      if (os_log_type_enabled(result, v27))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        swift_errorRetain();
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v31;
        *v30 = v31;
        _os_log_impl(&dword_0, v28, v27, "Failed to open onboarding url, error: %@", v29, 0xCu);
        sub_160CD8(v30, &qword_2B82D8);
      }

      else
      {
      }

      goto LABEL_14;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v24 = v34;
LABEL_14:
  v32 = [objc_opt_self() sharedInstance];
  [v32 setLiveRecognitionChatGPTEnabled:1];

  (*(v5 + 8))(v7, v4);
LABEL_15:
  result = *(v2 + OBJC_IVAR___VoiceOverExternalIntelligenceController_hostingController);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id VoiceOverExternalIntelligenceController.init()()
{
  v1 = OBJC_IVAR___VoiceOverExternalIntelligenceController_onboardingView;
  v2 = sub_19B3B4();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR___VoiceOverExternalIntelligenceController_hostingController] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VoiceOverExternalIntelligenceController();
  return objc_msgSendSuper2(&v4, "init");
}

id VoiceOverExternalIntelligenceController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceOverExternalIntelligenceController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_166E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E10);
    v3 = sub_19C5D4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_164454(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_166F70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8DD8);
    v3 = sub_19C5D4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_164454(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_167084(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E00);
    v3 = sub_19C5D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_160C70(v4, &v13, &qword_2B8E08);
      v5 = v13;
      v6 = v14;
      result = sub_164454(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1674C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for VoiceOverExternalIntelligenceController()
{
  result = qword_2B8DC0;
  if (!qword_2B8DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_167208()
{
  sub_1672A0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1672A0()
{
  if (!qword_2B8DD0)
  {
    sub_19B3B4();
    v0 = sub_19C484();
    if (!v1)
    {
      atomic_store(v0, &qword_2B8DD0);
    }
  }
}

unint64_t sub_1672F8()
{
  result = qword_2B8DE8;
  if (!qword_2B8DE8)
  {
    type metadata accessor for VoiceOverExternalIntelligenceController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8DE8);
  }

  return result;
}

uint64_t sub_167350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8DE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1673C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8DF8);
    v3 = sub_19C5D4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_164454(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_1674C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t SCATSpeechView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E20);
  sub_162D0C(&qword_2B8E28, &qword_2B8E20);
  return sub_19B324();
}

void sub_16757C(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F28);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = __chkstk_darwin(v3);
  v51 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F30);
  v47 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v52 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F38);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = __chkstk_darwin(v13);
  v48 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = a1;
  v53 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F40);
  sub_162D0C(&qword_2B8F48, &qword_2B8F40);
  v19 = v17;
  sub_19BDD4();
  v20 = sub_19BFB4();
  v21 = SCATLocString();

  if (v21)
  {
    v22 = sub_19BFE4();
    v24 = v23;

    v54 = v22;
    v55 = v24;
    __chkstk_darwin(v25);
    *(&v39 - 2) = v18;
    sub_19B364();
    sub_16870C(&qword_2B8F50, &type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
    sub_16082C();
    v26 = sub_19BDB4();
    v42 = v12;
    __chkstk_darwin(v26);
    *(&v39 - 2) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F58);
    sub_162D0C(&qword_2B8F60, &qword_2B8F58);
    sub_19BDD4();
    v27 = v48;
    v28 = *(v49 + 16);
    v43 = v17;
    v29 = v50;
    v28(v48, v19, v50);
    v40 = *(v47 + 16);
    v40(v52, v12, v8);
    v31 = v44;
    v30 = v45;
    v41 = v7;
    v39 = *(v44 + 16);
    v39(v51, v7, v45);
    v32 = v46;
    v28(v46, v27, v29);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F68);
    v40(&v32[*(v33 + 48)], v52, v8);
    v34 = v51;
    v39(&v32[*(v33 + 64)], v51, v30);
    v35 = *(v31 + 8);
    v35(v41, v30);
    v36 = *(v47 + 8);
    v36(v42, v8);
    v37 = v50;
    v38 = *(v49 + 8);
    v38(v43, v50);
    v35(v34, v30);
    v36(v52, v8);
    v38(v48, v37);
  }

  else
  {
    __break(1u);
  }
}

void sub_167B64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E38);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - v2;
  v4 = sub_19BFB4();
  v5 = SCATLocString();

  if (v5)
  {
    v6 = sub_19BFE4();
    v8 = v7;

    v9[4] = v6;
    v9[5] = v8;
    sub_19BE04();
    swift_getKeyPath();
    sub_19BE24();

    (*(v1 + 8))(v3, v0);
    sub_16082C();
    sub_19BD04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_167CFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E38);
  sub_19BDF4();
  sub_19C304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8320);
  sub_16870C(&qword_2B8F98, &type metadata accessor for AXSettings.AssistiveTouch);
  sub_19B0A4();

  return sub_19B354();
}

uint64_t sub_167DEC@<X0>(char *a1@<X8>)
{
  v24 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F70);
  __chkstk_darwin(v22);
  v2 = &v21 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F78);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  *v2 = sub_19B734();
  *(v2 + 1) = 0;
  v2[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F80);
  sub_168144();
  sub_162D0C(&qword_2B8F88, &qword_2B8F70);
  sub_19B9F4();
  sub_168FDC(v2);
  *v2 = sub_19B734();
  *(v2 + 1) = 0;
  v2[16] = 1;
  sub_1682D8();
  sub_19B9F4();
  sub_168FDC(v2);
  v15 = *(v4 + 16);
  v15(v9, v14, v3);
  v16 = v23;
  v15(v23, v12, v3);
  v17 = v24;
  v15(v24, v9, v3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F90);
  v15(&v17[*(v18 + 48)], v16, v3);
  v19 = *(v4 + 8);
  v19(v12, v3);
  v19(v14, v3);
  v19(v16, v3);
  return (v19)(v9, v3);
}

void sub_168144()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E38);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - v2;
  v4 = sub_19BFB4();
  v5 = SCATLocString();

  if (v5)
  {
    v6 = sub_19BFE4();
    v8 = v7;

    v9[4] = v6;
    v9[5] = v8;
    sub_19BE04();
    swift_getKeyPath();
    sub_19BE24();

    (*(v1 + 8))(v3, v0);
    sub_16082C();
    sub_19BD04();
  }

  else
  {
    __break(1u);
  }
}

void sub_1682D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E38);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - v2;
  v4 = sub_19BFB4();
  v5 = SCATLocString();

  if (v5)
  {
    v6 = sub_19BFE4();
    v8 = v7;

    v9[4] = v6;
    v9[5] = v8;
    sub_19BE04();
    swift_getKeyPath();
    sub_19BE24();

    (*(v1 + 8))(v3, v0);
    sub_16082C();
    sub_19BD04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_16846C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E20);
  sub_162D0C(&qword_2B8E28, &qword_2B8E20);
  return sub_19B324();
}

uint64_t _s21AccessibilitySettings14SCATSpeechViewV8settingsSo10AXSettingsC0A9UtilitiesE14AssistiveTouchCvpfP_0()
{
  swift_getObjectType();
  sub_16870C(&qword_2B8E18, &type metadata accessor for AXSettings.AssistiveTouch);

  return sub_19BE14();
}

UIViewController __swiftcall SCATSpeechSwiftUI.make()()
{
  sub_19B334();
  type metadata accessor for SCATSpeechView(0);
  sub_16870C(&qword_2B8E30, type metadata accessor for SCATSpeechView);
  return sub_19B344();
}

uint64_t sub_168624()
{
  sub_19C3B4();
  v0 = sub_19C314();
  v1 = direct field offset for AXSettings.assistiveTouch;
  swift_beginAccess();
  v2 = *&v0[v1];

  sub_19C304();
  sub_16870C(&qword_2B8E18, &type metadata accessor for AXSettings.AssistiveTouch);
  return sub_19BE14();
}

uint64_t sub_16870C(unint64_t *a1, void (*a2)(uint64_t))
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

id SCATSpeechSwiftUI.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E38);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = OBJC_IVAR___SCATSpeechSwiftUI__settings;
  sub_19C3B4();
  v12 = sub_19C314();
  v13 = direct field offset for AXSettings.assistiveTouch;
  swift_beginAccess();
  v14 = *&v12[v13];

  sub_19C304();
  sub_16870C(&qword_2B8E18, &type metadata accessor for AXSettings.AssistiveTouch);
  sub_19BE14();
  (*(v8 + 32))(&v4[v11], v10, v7);
  if (a2)
  {
    v15 = sub_19BFB4();
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for SCATSpeechSwiftUI(0);
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v15, a3);

  return v17;
}

id SCATSpeechSwiftUI.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR___SCATSpeechSwiftUI__settings;
  sub_19C3B4();
  v9 = sub_19C314();
  v10 = direct field offset for AXSettings.assistiveTouch;
  swift_beginAccess();
  v11 = *&v9[v10];

  sub_19C304();
  sub_16870C(&qword_2B8E18, &type metadata accessor for AXSettings.AssistiveTouch);
  sub_19BE14();
  (*(v5 + 32))(&v2[v8], v7, v4);
  v12 = type metadata accessor for SCATSpeechSwiftUI(0);
  v16.receiver = v2;
  v16.super_class = v12;
  v13 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

id SCATSpeechSwiftUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCATSpeechSwiftUI(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_168CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E38);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_168D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E38);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_168DAC()
{
  sub_168E18();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_168E18()
{
  if (!qword_2B8EB0)
  {
    sub_19C304();
    v0 = sub_19BE34();
    if (!v1)
    {
      atomic_store(v0, &qword_2B8EB0);
    }
  }
}

void sub_168EF0()
{
  sub_168E18();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_168FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_169044@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19C2E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_16909C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19C2C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1690F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19C2A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_169154@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9090) + 36);
  v6 = *(sub_19B634() + 20);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = sub_19B744();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  *v5 = v3;
  *(v5 + 1) = v3;
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9098) + 36)] = 256;
  *a1 = v4;
}

double sub_169240@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = sub_19BEA4();
  }

  else
  {
    v4 = sub_19BE74();
  }

  v6 = v4;
  v7 = v5;
  sub_1693E0(a1 & 1, __src);
  memcpy(__dst, __src, 0x101uLL);
  memcpy(v15, __src, 0x101uLL);
  sub_160C70(__dst, v12, &qword_2B9140);
  sub_160CD8(v15, &qword_2B9140);
  memcpy(__src, __dst, 0x101uLL);
  sub_19BE94();
  sub_19B674();
  *&v16[55] = v12[3];
  *&v16[71] = v12[4];
  *&v16[87] = v12[5];
  *&v16[103] = v12[6];
  *&v16[7] = v12[0];
  *&v16[23] = v12[1];
  *&v16[39] = v12[2];
  *a2 = v6;
  *(a2 + 8) = v7;
  memcpy((a2 + 16), __src, 0x101uLL);
  v8 = *&v16[80];
  *(a2 + 337) = *&v16[64];
  *(a2 + 353) = v8;
  *(a2 + 369) = *&v16[96];
  *(a2 + 384) = *&v16[111];
  v9 = *&v16[16];
  *(a2 + 273) = *v16;
  *(a2 + 289) = v9;
  result = *&v16[32];
  v11 = *&v16[48];
  *(a2 + 305) = *&v16[32];
  *(a2 + 321) = v11;
  return result;
}

uint64_t sub_1693E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_19BB54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19BB64();
  (*(v5 + 104))(v7, enum case for Color.RGBColorSpace.sRGBLinear(_:), v4);
  v9 = sub_19BC04();
  if (a1)
  {
    *v59 = sub_19B734();
    *&v59[8] = 0x4014000000000000;
    v59[16] = 0;
    sub_162C54();
  }

  else
  {
    *v59 = sub_19B774();
    *&v59[8] = 0x4014000000000000;
    v59[16] = 0;
    sub_162CA8();
  }

  v10 = sub_19BED4();

  sub_1697CC(v59);
  v50 = *&v59[96];
  v51 = *&v59[112];
  v52 = *&v59[128];
  v53 = *&v59[144];
  v46 = *&v59[32];
  v47 = *&v59[48];
  v48 = *&v59[64];
  v49 = *&v59[80];
  v44 = *v59;
  v45 = *&v59[16];
  v54[6] = *&v59[96];
  v54[7] = *&v59[112];
  v54[8] = *&v59[128];
  v54[9] = *&v59[144];
  v54[2] = *&v59[32];
  v54[3] = *&v59[48];
  v54[4] = *&v59[64];
  v54[5] = *&v59[80];
  v54[0] = *v59;
  v54[1] = *&v59[16];
  sub_160C70(&v44, v55, &qword_2B9148);
  sub_160CD8(v54, &qword_2B9148);

  v40 = v50;
  v41 = v51;
  v42 = v52;
  v43 = v53;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v34 = v44;
  v35 = v45;
  v11 = sub_19B934();
  sub_19B464();
  *&v55[0] = v10;
  v12 = v39;
  *(&v55[6] + 8) = v40;
  v13 = v40;
  *(&v55[7] + 8) = v41;
  v14 = v41;
  *(&v55[8] + 8) = v42;
  v15 = v42;
  *(&v55[9] + 8) = v43;
  v16 = v35;
  *(&v55[2] + 8) = v36;
  v17 = v36;
  *(&v55[3] + 8) = v37;
  v18 = v37;
  *(&v55[4] + 8) = v38;
  v19 = v38;
  *(&v55[5] + 8) = v39;
  *(v55 + 8) = v34;
  v20 = v34;
  *(&v55[1] + 8) = v35;
  BYTE8(v55[10]) = v11;
  *&v56 = v21;
  *(&v56 + 1) = v22;
  *&v57 = v23;
  *(&v57 + 1) = v24;
  v25 = v55[7];
  *(a2 + 144) = v55[6];
  *(a2 + 160) = v25;
  v26 = v55[9];
  *(a2 + 176) = v55[8];
  *(a2 + 192) = v26;
  v27 = v55[3];
  *(a2 + 80) = v55[2];
  *(a2 + 96) = v27;
  v28 = v55[5];
  *(a2 + 112) = v55[4];
  *(a2 + 128) = v28;
  v29 = v55[1];
  *(a2 + 48) = v55[0];
  *(a2 + 64) = v29;
  v30 = v56;
  *(a2 + 208) = v55[10];
  *(a2 + 224) = v30;
  *(a2 + 240) = v57;
  *&v59[104] = v13;
  *&v59[120] = v14;
  *&v59[136] = v15;
  *&v59[152] = v43;
  *&v59[40] = v17;
  *&v59[56] = v18;
  *&v59[72] = v19;
  *&v59[88] = v12;
  *&v59[8] = v20;
  v66 = 0;
  v58 = 0;
  *a2 = 0x4008000000000000;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = 0x4008000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 256) = 0;
  *v59 = v10;
  *&v59[24] = v16;
  v60 = v11;
  v61 = v21;
  v62 = v22;
  v63 = v23;
  v64 = v24;
  v65 = 0;

  sub_160C70(v55, &v33, &qword_2B9150);
  sub_160CD8(v59, &qword_2B9150);
}

uint64_t sub_1697CC@<X0>(uint64_t a1@<X8>)
{
  sub_19BB94();
  v2 = sub_19BBD4();

  v3 = sub_19BB94();
  sub_19BE94();
  sub_19B674();
  *&v27[0] = 0x4008000000000000;
  *(&v27[0] + 1) = v3;
  v4 = v24;
  v5 = v25;
  v27[5] = v24;
  v27[6] = v25;
  v27[7] = v26;
  v6 = v20;
  v7 = v21;
  v27[1] = v20;
  v27[2] = v21;
  *&v18[70] = v23;
  *&v18[118] = v26;
  *&v18[102] = v25;
  v8 = v23;
  v9 = v22;
  v27[3] = v22;
  v27[4] = v23;
  *&v18[86] = v24;
  v10 = v26;
  *&v18[54] = v22;
  *&v18[38] = v21;
  *&v18[22] = v20;
  *&v18[6] = v27[0];
  v11 = *&v18[16];
  *(a1 + 26) = *v18;
  v12 = *&v18[80];
  *(a1 + 90) = *&v18[64];
  v13 = *&v18[32];
  *(a1 + 74) = *&v18[48];
  *(a1 + 58) = v13;
  *(a1 + 42) = v11;
  v14 = *&v18[96];
  v15 = *&v18[112];
  *(a1 + 152) = *&v18[126];
  *(a1 + 138) = v15;
  *(a1 + 122) = v14;
  *(a1 + 106) = v12;
  v19 = 0;
  *a1 = 0x4008000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
  *(a1 + 25) = 0;
  v28[0] = 0x4008000000000000;
  v28[1] = v3;
  v33 = v4;
  v34 = v5;
  v35 = v10;
  v29 = v6;
  v30 = v7;
  v31 = v9;
  v32 = v8;

  sub_160C70(v27, v17, &qword_2B9118);
  sub_160CD8(v28, &qword_2B9118);
}

__n128 sub_169990@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_19BE94();
  v4 = v3;
  sub_169B5C(&v16);
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v30 = v16;
  v31 = v17;
  v44[10] = v26;
  v44[11] = v27;
  v44[12] = v28;
  v44[13] = v29;
  v44[6] = v22;
  v44[7] = v23;
  v44[8] = v24;
  v44[9] = v25;
  v44[2] = v18;
  v44[3] = v19;
  v44[4] = v20;
  v44[5] = v21;
  v44[0] = v16;
  v44[1] = v17;
  sub_160C70(&v30, v15, &qword_2B9158);
  sub_160CD8(v44, &qword_2B9158);
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v22 = v36;
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v18 = v32;
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v16 = v30;
  v17 = v31;
  sub_19BE94();
  sub_19B674();
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v27;
  *(a1 + 176) = v26;
  *(a1 + 192) = v5;
  v6 = v29;
  *(a1 + 208) = v28;
  *(a1 + 224) = v6;
  v7 = v23;
  *(a1 + 112) = v22;
  *(a1 + 128) = v7;
  v8 = v25;
  *(a1 + 144) = v24;
  *(a1 + 160) = v8;
  v9 = v19;
  *(a1 + 48) = v18;
  *(a1 + 64) = v9;
  v10 = v21;
  *(a1 + 80) = v20;
  *(a1 + 96) = v10;
  v11 = v17;
  *(a1 + 16) = v16;
  *(a1 + 32) = v11;
  v12 = v15[5];
  *(a1 + 304) = v15[4];
  *(a1 + 320) = v12;
  *(a1 + 336) = v15[6];
  v13 = v15[1];
  *(a1 + 240) = v15[0];
  *(a1 + 256) = v13;
  result = v15[3];
  *(a1 + 272) = v15[2];
  *(a1 + 288) = result;
  return result;
}

uint64_t sub_169B5C@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_19BB54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19BB64();
  (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGBLinear(_:), v2);
  v7 = sub_19BC04();
  LOBYTE(v5) = sub_19B934();
  sub_19B464();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v65[0]) = 0;
  v16 = sub_19BB94();
  sub_19BE94();
  sub_19B674();
  *&v58 = 0x4024000000000000;
  *(&v58 + 1) = v6;
  *&v59 = v7;
  *(&v59 + 1) = 0x4008000000000000;
  v60 = 0;
  v61 = 0;
  LOBYTE(v62) = v5;
  *(&v62 + 1) = v73[0];
  DWORD1(v62) = *(v73 + 3);
  *(&v62 + 1) = v9;
  *&v63[0] = v11;
  *(&v63[0] + 1) = v13;
  *&v63[1] = v15;
  BYTE8(v63[1]) = 0;
  v17 = v57;
  v38 = v58;
  v39 = v59;
  *(v42 + 9) = *(v63 + 9);
  v40 = 0u;
  v41 = v62;
  *&v64[0] = 0x4008000000000000;
  *(&v64[0] + 1) = v16;
  v64[1] = v51;
  v64[2] = v52;
  v18 = v56;
  v64[7] = v57;
  v19 = v54;
  v64[5] = v55;
  v64[6] = v56;
  v20 = v55;
  v21 = v53;
  v64[3] = v53;
  v64[4] = v54;
  v44 = v51;
  v45 = v52;
  v42[0] = v63[0];
  v43 = v64[0];
  v49 = v56;
  v50 = v57;
  v47 = v54;
  v48 = v55;
  v46 = v53;
  v22 = v59;
  *a1 = v58;
  a1[1] = v22;
  v23 = v42[1];
  a1[4] = v42[0];
  a1[5] = v23;
  v24 = v41;
  a1[2] = v40;
  a1[3] = v24;
  v25 = v46;
  a1[8] = v45;
  a1[9] = v25;
  v26 = v44;
  a1[6] = v43;
  a1[7] = v26;
  v27 = v50;
  a1[12] = v49;
  a1[13] = v27;
  v28 = v48;
  a1[10] = v47;
  a1[11] = v28;
  v65[0] = 0x4008000000000000;
  v65[1] = v16;
  v70 = v20;
  v71 = v18;
  v72 = v17;
  v66 = v51;
  v67 = v52;
  v68 = v21;
  v69 = v19;
  sub_160C70(&v58, v30, &qword_2B9160);
  sub_160C70(v64, v30, &qword_2B9118);
  sub_160CD8(v65, &qword_2B9118);
  v30[0] = 0x4024000000000000;
  v30[1] = v6;
  v30[2] = v7;
  v30[3] = 0x4008000000000000;
  v30[4] = 0;
  v30[5] = 0;
  v31 = v5;
  *v32 = v73[0];
  *&v32[3] = *(v73 + 3);
  v33 = v9;
  v34 = v11;
  v35 = v13;
  v36 = v15;
  v37 = 0;
  return sub_160CD8(v30, &qword_2B9160);
}

uint64_t sub_169EA4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v77 = a1;
  v92 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9060);
  __chkstk_darwin(v3 - 8);
  v89 = (&v72 - v4);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9068) - 8;
  v5 = __chkstk_darwin(v90);
  v91 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v87 = &v72 - v8;
  __chkstk_darwin(v7);
  v88 = &v72 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9070);
  v81 = *(v82 - 8);
  v10 = __chkstk_darwin(v82);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v72 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9078) - 8;
  __chkstk_darwin(v84);
  v16 = &v72 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9080) - 8;
  v17 = __chkstk_darwin(v83);
  v86 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v80 = &v72 - v20;
  __chkstk_darwin(v19);
  v93 = &v72 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9088);
  v23 = v22 - 8;
  v24 = __chkstk_darwin(v22);
  v85 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = (&v72 - v26);
  v28 = sub_19BB74();
  v29 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9090) + 36);
  v30 = *(sub_19B634() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = sub_19B744();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #10.0 }

  *v29 = _Q0;
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9098) + 36)] = 256;
  v79 = v27;
  *v27 = v28;
  v38 = sub_19BB94();
  v39 = (v27 + *(v23 + 44));
  *v39 = v38;
  v39[1] = 0x4014000000000000;
  v39[2] = 0;
  v39[3] = 0;
  *v16 = sub_19B774();
  *(v16 + 1) = 0x4014000000000000;
  v16[16] = 0;
  v78 = v16;
  v40 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B90A0) + 44)];
  sub_19BE94();
  sub_19B504();
  v76 = v94;
  v75 = v96;
  v74 = v98;
  v73 = v99;
  v102 = 1;
  v101 = v95;
  v100 = v97;
  *(swift_allocObject() + 16) = v2;
  sub_16CA50();
  sub_19BDA4();
  LOBYTE(v29) = v102;
  LOBYTE(v16) = v101;
  v41 = v100;
  v42 = v81;
  v43 = *(v81 + 16);
  v44 = v82;
  v43(v12, v14, v82);
  *v40 = 0;
  v40[8] = v29;
  *(v40 + 2) = v76;
  v40[24] = v16;
  *(v40 + 4) = v75;
  v40[40] = v41;
  v45 = v73;
  *(v40 + 6) = v74;
  *(v40 + 7) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B90B0);
  v43(&v40[*(v46 + 48)], v12, v44);
  v47 = *(v42 + 8);
  v47(v14, v44);
  v47(v12, v44);
  LOBYTE(v43) = sub_19B934();
  sub_19B464();
  v48 = v78;
  v49 = &v78[*(v84 + 44)];
  *v49 = v43;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  v54 = v80;
  sub_1609D0(v48, v80, &qword_2B9078);
  v55 = v77;
  if (v77)
  {
    v56 = 1.0;
  }

  else
  {
    v56 = 0.0;
  }

  *(v54 + *(v83 + 44)) = v56;
  if (v55)
  {
    v57 = 0.0;
  }

  else
  {
    v57 = 1.0;
  }

  v58 = v93;
  sub_1609D0(v54, v93, &qword_2B9080);
  v59 = sub_19B774();
  v60 = v89;
  *v89 = v59;
  *(v60 + 8) = 0x4014000000000000;
  *(v60 + 16) = 0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B90B8);
  sub_16A728(v55, v60 + *(v61 + 44));
  v62 = v87;
  sub_1609D0(v60, v87, &qword_2B9060);
  *(v62 + *(v90 + 44)) = v57;
  v63 = v88;
  sub_1609D0(v62, v88, &qword_2B9068);
  v64 = v79;
  v65 = v85;
  sub_160C70(v79, v85, &qword_2B9088);
  v66 = v86;
  sub_160C70(v58, v86, &qword_2B9080);
  v67 = v63;
  v68 = v91;
  sub_160C70(v63, v91, &qword_2B9068);
  v69 = v92;
  sub_160C70(v65, v92, &qword_2B9088);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B90C0);
  sub_160C70(v66, v69 + *(v70 + 48), &qword_2B9080);
  sub_160C70(v68, v69 + *(v70 + 64), &qword_2B9068);
  sub_160CD8(v67, &qword_2B9068);
  sub_160CD8(v93, &qword_2B9080);
  sub_160CD8(v64, &qword_2B9088);
  sub_160CD8(v68, &qword_2B9068);
  sub_160CD8(v66, &qword_2B9080);
  return sub_160CD8(v65, &qword_2B9088);
}

uint64_t sub_16A728@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v37 = sub_19B7E4();
  __chkstk_darwin(v37);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19BE44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_19BE54();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B90C8);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v35 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  sub_19BE94();
  sub_19B504();
  v32 = v42;
  v33 = v40;
  v30 = v45;
  v31 = v44;
  v48 = 1;
  v47 = v41;
  v46 = v43;
  *v7 = xmmword_1DBF50;
  (*(v5 + 104))(v7, enum case for GridItem.Size.flexible(_:), v4);
  sub_19BE64();
  v18 = sub_19C0C4();
  *(v18 + 16) = 2;
  v19 = v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  (*(v9 + 16))(v19, v11, v8);
  (*(v9 + 32))(v19 + *(v9 + 72), v11, v8);
  v38 = v34;
  sub_19B774();
  v39 = 0;
  sub_16CAAC(&qword_2B90D0, &type metadata accessor for PinnedScrollableViews);
  sub_19C6A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9070);
  sub_16CAF4();
  sub_19BEE4();
  LOBYTE(v5) = sub_19B934();
  sub_19B464();
  v20 = &v17[*(v13 + 44)];
  *v20 = v5;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  LOBYTE(v5) = v48;
  LOBYTE(v11) = v47;
  LOBYTE(v7) = v46;
  v25 = v35;
  sub_160C70(v17, v35, &qword_2B90C8);
  *a2 = 0;
  *(a2 + 8) = v5;
  v26 = v32;
  *(a2 + 16) = v33;
  *(a2 + 24) = v11;
  *(a2 + 32) = v26;
  *(a2 + 40) = v7;
  v27 = v30;
  *(a2 + 48) = v31;
  *(a2 + 56) = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B90E0);
  sub_160C70(v25, a2 + *(v28 + 48), &qword_2B90C8);
  sub_160CD8(v17, &qword_2B90C8);
  return sub_160CD8(v25, &qword_2B90C8);
}

uint64_t sub_16ABBC(char a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_16CA50();

  return sub_19BDA4();
}

uint64_t sub_16AC48@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_19BE74();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9058);
  return sub_169EA4(v3, a1 + *(v5 + 44));
}

uint64_t sub_16AC98@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v74 = a1;
  v73 = a3;
  v3 = sub_19BC54();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v65 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B90F0);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B90F8);
  v11 = __chkstk_darwin(v10 - 8);
  v78 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9090);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v77 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = (&v58 - v18);
  v20 = sub_19BB74();
  v21 = v19 + *(v15 + 44);
  v67 = sub_19B634();
  v22 = *(v67 + 20);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_19B744();
  v25 = *(v24 - 8);
  v26 = *(v25 + 104);
  v66 = v23;
  v63 = v25 + 104;
  v64 = v26;
  v26(&v21[v22], v23, v24);
  __asm { FMOV            V0.2D, #10.0 }

  v62 = _Q0;
  *v21 = _Q0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9098);
  *&v21[*(v32 + 36)] = 256;
  v76 = v19;
  *v19 = v20;
  if (v75)
  {
    v61 = v32;
    v59 = v75;
    sub_19BC34();
    v34 = v68;
    v33 = v69;
    v35 = v65;
    (*(v68 + 104))(v65, enum case for Image.ResizingMode.stretch(_:), v69);
    v60 = sub_19BC64();

    (*(v34 + 8))(v35, v33);
    sub_19BE94();
    sub_19B504();

    LOBYTE(v99) = 1;
    *&v80[6] = *(&v100[13] + 8);
    *&v80[22] = *(&v100[14] + 8);
    *&v80[38] = *(&v100[15] + 8);
    v36 = v72;
    v37 = &v8[*(v72 + 36)];
    v64(&v37[*(v67 + 20)], v66, v24);
    *v37 = v62;
    *&v37[*(v61 + 36)] = 256;
    v38 = *&v80[16];
    *(v8 + 18) = *v80;
    *v8 = v60;
    *(v8 + 1) = 0;
    *(v8 + 8) = 257;
    *(v8 + 34) = v38;
    *(v8 + 50) = *&v80[32];
    *(v8 + 8) = *&v80[46];
    v39 = v70;
    sub_1609D0(v8, v70, &qword_2B90F0);
    v40 = v39;
    v41 = v79;
    sub_1609D0(v40, v79, &qword_2B90F0);
    (*(v71 + 56))(v41, 0, 1, v36);
  }

  else
  {
    (*(v71 + 56))(v79, 1, 1, v72);
  }

  v75 = sub_19B774();
  v82 = 0;
  sub_16B53C(&v99);
  v93 = v100[9];
  v94[0] = v100[10];
  *(v94 + 9) = *(&v100[10] + 9);
  v89 = v100[5];
  v90 = v100[6];
  v91 = v100[7];
  v92 = v100[8];
  v85 = v100[1];
  v86 = v100[2];
  v87 = v100[3];
  v88 = v100[4];
  v83 = v99;
  v84 = v100[0];
  v95[9] = v100[8];
  v95[10] = v100[9];
  v96[0] = v100[10];
  *(v96 + 9) = *(&v100[10] + 9);
  v95[6] = v100[5];
  v95[7] = v100[6];
  v95[8] = v100[7];
  v95[2] = v100[1];
  v95[3] = v100[2];
  v95[4] = v100[3];
  v95[5] = v100[4];
  v95[0] = v99;
  v95[1] = v100[0];
  sub_160C70(&v83, &v97, &qword_2B9100);
  sub_160CD8(v95, &qword_2B9100);
  *(&v81[9] + 7) = v92;
  *(&v81[10] + 7) = v93;
  *(&v81[11] + 7) = v94[0];
  v81[12] = *(v94 + 9);
  *(&v81[5] + 7) = v88;
  *(&v81[6] + 7) = v89;
  *(&v81[7] + 7) = v90;
  *(&v81[8] + 7) = v91;
  *(&v81[1] + 7) = v84;
  *(&v81[2] + 7) = v85;
  *(&v81[3] + 7) = v86;
  *(&v81[4] + 7) = v87;
  *(v81 + 7) = v83;
  v42 = v82;
  v43 = v77;
  sub_160C70(v76, v77, &qword_2B9090);
  v44 = v78;
  sub_160C70(v79, v78, &qword_2B90F8);
  v45 = v43;
  v46 = v73;
  sub_160C70(v45, v73, &qword_2B9090);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9108);
  sub_160C70(v44, v46 + *(v47 + 48), &qword_2B90F8);
  v48 = v46 + *(v47 + 64);
  v49 = v75;
  *&v97 = v75;
  *(&v97 + 1) = 0x4014000000000000;
  v98[0] = v42;
  *&v98[145] = v81[9];
  *&v98[161] = v81[10];
  *&v98[177] = v81[11];
  *&v98[193] = v81[12];
  *&v98[81] = v81[5];
  *&v98[97] = v81[6];
  *&v98[113] = v81[7];
  *&v98[129] = v81[8];
  *&v98[33] = v81[2];
  *&v98[49] = v81[3];
  *&v98[65] = v81[4];
  *&v98[17] = v81[1];
  *&v98[1] = v81[0];
  v50 = *&v98[192];
  *(v48 + 192) = *&v98[176];
  *(v48 + 208) = v50;
  *(v48 + 224) = v98[208];
  v51 = *&v98[128];
  *(v48 + 128) = *&v98[112];
  *(v48 + 144) = v51;
  v52 = *&v98[160];
  *(v48 + 160) = *&v98[144];
  *(v48 + 176) = v52;
  v53 = *&v98[64];
  *(v48 + 64) = *&v98[48];
  *(v48 + 80) = v53;
  v54 = *&v98[96];
  *(v48 + 96) = *&v98[80];
  *(v48 + 112) = v54;
  v55 = *v98;
  *v48 = v97;
  *(v48 + 16) = v55;
  v56 = *&v98[32];
  *(v48 + 32) = *&v98[16];
  *(v48 + 48) = v56;
  sub_160C70(&v97, &v99, &qword_2B9110);
  sub_160CD8(v79, &qword_2B90F8);
  sub_160CD8(v76, &qword_2B9090);
  *(&v100[9] + 1) = v81[9];
  *(&v100[10] + 1) = v81[10];
  *(&v100[11] + 1) = v81[11];
  *(&v100[12] + 1) = v81[12];
  *(&v100[5] + 1) = v81[5];
  *(&v100[6] + 1) = v81[6];
  *(&v100[7] + 1) = v81[7];
  *(&v100[8] + 1) = v81[8];
  *(&v100[1] + 1) = v81[1];
  *(&v100[2] + 1) = v81[2];
  *(&v100[3] + 1) = v81[3];
  *(&v100[4] + 1) = v81[4];
  *&v99 = v49;
  *(&v99 + 1) = 0x4014000000000000;
  LOBYTE(v100[0]) = v42;
  *(v100 + 1) = v81[0];
  sub_160CD8(&v99, &qword_2B9110);
  sub_160CD8(v78, &qword_2B90F8);
  return sub_160CD8(v77, &qword_2B9090);
}

uint64_t sub_16B53C@<X0>(uint64_t a1@<X8>)
{
  sub_19BE94();
  sub_19B504();
  v2 = v48;
  v3 = v50;
  v4 = v52;
  v5 = v53;
  v56 = 1;
  v55 = v49;
  v54 = v51;
  v6 = sub_19BB94();
  sub_19BE94();
  sub_19B674();
  *&v32 = 0x4008000000000000;
  *(&v32 + 1) = v6;
  v7 = v29;
  v8 = v28;
  v37 = v29;
  v38 = v30;
  v9 = v30;
  v39 = v31;
  v10 = v25;
  v11 = v26;
  v33 = v25;
  v34 = v26;
  v12 = v27;
  v35 = v27;
  v36 = v28;
  v13 = v29;
  v14 = v30;
  v15 = v27;
  *(a1 + 128) = v28;
  *(a1 + 144) = v13;
  v16 = v39;
  *(a1 + 160) = v14;
  *(a1 + 176) = v16;
  v17 = v33;
  v18 = v34;
  v19 = v31;
  *(a1 + 64) = v32;
  *(a1 + 80) = v17;
  *(a1 + 96) = v18;
  *(a1 + 112) = v15;
  v41 = v10;
  v42 = v11;
  v46 = v9;
  v47 = v19;
  v44 = v8;
  v45 = v7;
  v20 = v56;
  v21 = v55;
  v22 = v54;
  v24[128] = 1;
  *a1 = 0;
  *(a1 + 8) = v20;
  *(a1 + 16) = v2;
  *(a1 + 24) = v21;
  *(a1 + 32) = v3;
  *(a1 + 40) = v22;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 192) = 0;
  *(a1 + 200) = 1;
  v40[0] = 0x4008000000000000;
  v40[1] = v6;
  v43 = v12;
  sub_160C70(&v32, v24, &qword_2B9118);
  return sub_160CD8(v40, &qword_2B9118);
}

uint64_t sub_16B6F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  *a1 = sub_19BE74();
  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B90E8);
  return sub_16AC98(v3, v4, a1 + *(v6 + 44));
}

uint64_t sub_16B754()
{
  v0 = sub_19BFE4();
  v2 = v1;
  if (v0 != sub_19BFE4() || v2 != v3)
  {
    sub_19C644();
  }

  sub_19BE94();
  sub_19B504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9008);
  sub_16C678(&qword_2B9010, &qword_2B9008, &unk_1DC0E8, sub_16C624);
  return sub_19BAA4();
}

void sub_16B8DC()
{
  v1 = *(v0 + 8);
  sub_19BE94();
  sub_19B504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9020);
  sub_16C678(&qword_2B9028, &qword_2B9020, &unk_1DC0F0, sub_16C6FC);
  sub_19BAA4();
}

id sub_16BA08(void *a1)
{
  v24.receiver = v1;
  v24.super_class = type metadata accessor for ClarityOnboardingPreviewView();
  v3 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v4 = a1;
  LOBYTE(v23) = AXDeviceIsPad();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9000));
  v6 = sub_19B574();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:{0, v4, v23}];
  v7 = v3;
  [v7 addSubview:v6];
  v8 = [v6 leadingAnchor];
  v9 = [v7 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v11 = [v6 trailingAnchor];
  v12 = [v7 trailingAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v14 = [v6 topAnchor];
  v15 = [v7 topAnchor];

  v16 = [v14 constraintEqualToAnchor:v15];
  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v17 = [v6 bottomAnchor];

  v18 = [v7 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v20 = objc_opt_self();
  sub_16C4E4();
  isa = sub_19C094().super.isa;

  [v20 activateConstraints:isa];

  return v7;
}

id sub_16BEE4(void *a1)
{
  v26.receiver = v1;
  v26.super_class = type metadata accessor for ClarityLockScreenPreviewView();
  v3 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v4 = a1;
  v5 = v3;
  LOBYTE(v24) = AXDeviceIsPad();
  v25 = a1;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8FF0));
  v7 = sub_19B574();
  [v7 setTranslatesAutoresizingMaskIntoConstraints:{0, v24, v25}];
  v8 = v5;
  [v8 addSubview:v7];
  v9 = [v7 leadingAnchor];
  v10 = [v8 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v12 = [v7 trailingAnchor];
  v13 = [v8 trailingAnchor];

  v14 = [v12 constraintEqualToAnchor:v13];
  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v15 = [v7 topAnchor];
  v16 = [v8 topAnchor];

  v17 = [v15 constraintEqualToAnchor:v16];
  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v18 = [v7 bottomAnchor];

  v19 = [v8 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v21 = objc_opt_self();
  sub_16C4E4();
  isa = sub_19C094().super.isa;

  [v21 activateConstraints:isa];

  return v8;
}

id sub_16C32C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id ClarityOnboardingAdminPreviewView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id sub_16C488(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_16C4E4()
{
  result = qword_2B8FF8;
  if (!qword_2B8FF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2B8FF8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_16C544(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_16C58C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_16C624()
{
  result = qword_2B9018;
  if (!qword_2B9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9018);
  }

  return result;
}

uint64_t sub_16C678(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_16C6FC()
{
  result = qword_2B9030;
  if (!qword_2B9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9030);
  }

  return result;
}

uint64_t sub_16C764(uint64_t a1, unsigned int a2)
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

uint64_t sub_16C7C4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_16C828()
{
  result = qword_2B9038;
  if (!qword_2B9038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9040);
    sub_16C678(&qword_2B9010, &qword_2B9008, &unk_1DC0E8, sub_16C624);
    sub_16CAAC(&qword_2B8730, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9038);
  }

  return result;
}

unint64_t sub_16C914()
{
  result = qword_2B9048;
  if (!qword_2B9048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9050);
    sub_16C678(&qword_2B9028, &qword_2B9020, &unk_1DC0F0, sub_16C6FC);
    sub_16CAAC(&qword_2B8730, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9048);
  }

  return result;
}

unint64_t sub_16CA50()
{
  result = qword_2B90A8;
  if (!qword_2B90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B90A8);
  }

  return result;
}

uint64_t sub_16CAAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_16CAF4()
{
  result = qword_2B90D8;
  if (!qword_2B90D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9070);
    sub_16CA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B90D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClarityOnboardingDeviceAdminPreviewView(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClarityOnboardingDeviceAdminPreviewView(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_16CCF0(uint64_t a1, int a2)
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

uint64_t sub_16CD38(uint64_t result, int a2, int a3)
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

unint64_t sub_16CE64()
{
  result = qword_2B9168;
  if (!qword_2B9168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9170);
    sub_162D0C(&qword_2B9178, &qword_2B9180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9168);
  }

  return result;
}

unint64_t sub_16CF20()
{
  result = qword_2B9188;
  if (!qword_2B9188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9190);
    sub_162D0C(&qword_2B9198, &qword_2B91A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9188);
  }

  return result;
}

unint64_t sub_16CFDC()
{
  result = qword_2B91A8;
  if (!qword_2B91A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9090);
    sub_16D094();
    sub_162D0C(&qword_2B91C8, &qword_2B9098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B91A8);
  }

  return result;
}

unint64_t sub_16D094()
{
  result = qword_2B91B0;
  if (!qword_2B91B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B91B8);
    sub_16D14C();
    sub_162D0C(&qword_2B8710, &qword_2B8718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B91B0);
  }

  return result;
}

unint64_t sub_16D14C()
{
  result = qword_2B91C0;
  if (!qword_2B91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B91C0);
  }

  return result;
}

uint64_t sub_16D1BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v31[1] = a2;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9270);
  __chkstk_darwin(v4);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9278);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9280);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (v31 - v12);
  v14 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9090) + 36) - v12;
  v15 = *(sub_19B634() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = sub_19B744();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #8.0 }

  *v14 = _Q0;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9098) + 36)] = 256;
  *v13 = a1;

  LOBYTE(a1) = sub_19B934();
  sub_19B464();
  v23 = v13 + *(v11 + 44);
  *v23 = a1;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_19BE94();
  sub_19B504();
  sub_160C70(v13, v9, &qword_2B9280);
  v28 = &v9[*(v7 + 36)];
  v29 = v34;
  *v28 = v33;
  *(v28 + 1) = v29;
  *(v28 + 2) = v35;
  sub_160C70(v9, v6, &qword_2B9278);
  swift_storeEnumTagMultiPayload();
  sub_16F378();
  sub_19B7A4();
  sub_160CD8(v9, &qword_2B9278);
  return sub_160CD8(v13, &qword_2B9280);
}

uint64_t sub_16D514@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19B6F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B92D8);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ClarityOnboardingToggle();
  sub_160C70(v1 + *(v10 + 20), v9, &qword_2B92D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_19B5D4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_19C3D4();
    v13 = sub_19B914();
    sub_19B414();

    sub_19B6E4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_16D71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46[1] = a1;
  v51 = a2;
  v49 = sub_19B5D4();
  v2 = *(v49 - 8);
  v3 = __chkstk_darwin(v49);
  v48 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v47 = v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B93F0);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v52 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v46 - v10;
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = sub_19B744();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  v14 = sub_19BB94();
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B93F8) + 36)) = v14;
  sub_19BE94();
  sub_19B504();
  v15 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9400) + 36));
  v16 = *&v73[7];
  *v15 = *&v73[5];
  v15[1] = v16;
  v15[2] = *&v73[9];
  v17 = sub_19B924();
  sub_19B464();
  v18 = *(v7 + 44);
  v50 = v11;
  v19 = v11 + v18;
  *v19 = v17;
  *(v19 + 8) = v20;
  *(v19 + 16) = v21;
  *(v19 + 24) = v22;
  *(v19 + 32) = v23;
  *(v19 + 40) = 0;
  v24 = sub_19BBC4();
  sub_19BE94();
  sub_19B504();
  v25 = v73[11];
  LOBYTE(v11) = v74;
  v26 = v75;
  v27 = v76;
  v28 = v77;
  v29 = v78;
  LOBYTE(v7) = sub_19B924();
  sub_19B464();
  LOBYTE(v79[0]) = v11;
  LOBYTE(v67) = v27;
  LOBYTE(v60) = 0;
  *&v81 = v24;
  *(&v81 + 1) = v25;
  LOBYTE(v82) = v11;
  *(&v82 + 1) = v26;
  LOBYTE(v83) = v27;
  *(&v83 + 1) = v28;
  *&v84 = v29;
  BYTE8(v84) = v7;
  *&v85 = v30;
  *(&v85 + 1) = v31;
  *&v86 = v32;
  *(&v86 + 1) = v33;
  v87 = 0;
  v34 = v47;
  sub_16D514(v47);
  v36 = v48;
  v35 = v49;
  (*(v2 + 104))(v48, enum case for LayoutDirection.rightToLeft(_:), v49);
  LOBYTE(v11) = sub_19B5C4();
  v37 = *(v2 + 8);
  v37(v36, v35);
  v37(v34, v35);
  v71 = v85;
  v72 = v86;
  LOBYTE(v73[0]) = v87;
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v70 = v84;
  if (v11)
  {
    *&v73[1] = xmmword_1DC4D0;
    sub_16FF3C(&v67);
  }

  else
  {
    *&v73[1] = xmmword_1DC4C0;
    sub_16FC80(&v67);
  }

  v64 = v71;
  v65 = v72;
  v66[0] = *v73;
  *(v66 + 9) = *(&v73[1] + 1);
  v60 = v67;
  v61 = v68;
  v62 = v69;
  v63 = v70;
  sub_160C70(&v81, v79, &qword_2B9408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9410);
  sub_16FC8C();
  sub_19B7A4();
  v38 = v50;
  v39 = v52;
  sub_160C70(v50, v52, &qword_2B93F0);
  v57 = v79[4];
  v58 = v79[5];
  v59[0] = v80[0];
  *(v59 + 9) = *(v80 + 9);
  v53 = v79[0];
  v54 = v79[1];
  v55 = v79[2];
  v56 = v79[3];
  v40 = v51;
  sub_160C70(v39, v51, &qword_2B93F0);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9450) + 48));
  v64 = v57;
  v65 = v58;
  v66[0] = v59[0];
  *(v66 + 9) = *(v59 + 9);
  v60 = v53;
  v61 = v54;
  v62 = v55;
  v63 = v56;
  sub_160C70(&v60, &v67, &qword_2B9458);
  sub_160CD8(&v81, &qword_2B9408);
  v42 = v65;
  v41[4] = v64;
  v41[5] = v42;
  v41[6] = v66[0];
  *(v41 + 105) = *(v66 + 9);
  v43 = v61;
  *v41 = v60;
  v41[1] = v43;
  v44 = v63;
  v41[2] = v62;
  v41[3] = v44;
  sub_160CD8(v38, &qword_2B93F0);
  v71 = v57;
  v72 = v58;
  *v73 = v59[0];
  *(&v73[1] + 1) = *(v59 + 9);
  v67 = v53;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  sub_160CD8(&v67, &qword_2B9458);
  return sub_160CD8(v39, &qword_2B93F0);
}

uint64_t sub_16DCE4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_19BE94();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B93E8);
  return sub_16D71C(v1, a1 + *(v4 + 44));
}

uint64_t sub_16DD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19BC54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19BC44();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v8 = sub_19BC64();

  (*(v5 + 8))(v7, v4);

  sub_19BE94();
  sub_19B504();
  v15[0] = 1;
  LOBYTE(v4) = sub_19B924();
  result = sub_19B464();
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = a1;
  v10 = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v10;
  *(a2 + 64) = v18;
  *(a2 + 80) = v4;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  *(a2 + 104) = v13;
  *(a2 + 112) = v14;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_16DF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_19B4A4();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;

  v12 = sub_19BE94();
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v13 = *v29;
  v14 = *&v29[16];
  v36 = *v29;
  v37 = *&v29[16];
  v35[0] = v33[0];
  v35[1] = v31;
  *&v38 = v12;
  *(&v38 + 1) = v15;
  v16 = v31;
  *(a3 + 8) = v33[0];
  v17 = v37;
  *(a3 + 72) = v38;
  v18 = v36;
  *(a3 + 56) = v17;
  *a3 = a2;
  *(a3 + 40) = v18;
  *(a3 + 24) = v16;
  v39[2] = v13;
  v39[3] = v14;
  v39[0] = v27;
  v39[1] = v28;
  v40 = v12;
  v41 = v15;
  sub_160C70(v33, v20, &qword_2B92C0);

  sub_160C70(v35, v20, &qword_2B92C8);
  sub_160CD8(v39, &qword_2B92C8);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_160CD8(v20, &qword_2B92C0);
}

__n128 sub_16E0BC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_19BBC4();
  v4 = sub_19BBD4();

  sub_16DF08(v4, v3, v9);

  sub_19BE94();
  sub_19B504();
  v5 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v5;
  *(a1 + 128) = v10;
  v6 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v6;
  v7 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v7;
  result = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_16E18C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B92D0) + 36));
  *v4 = 0x4020000000000000;
  v5 = *(type metadata accessor for ClarityOnboardingToggle() + 20);
  *(v4 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B92D8);
  swift_storeEnumTagMultiPayload();
  v6 = sub_19BEB4();
  v8 = v7;
  v9 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B92E0) + 36));
  *v9 = v6;
  v9[1] = v8;
  *a1 = v3;
}

uint64_t sub_16E268@<X0>(void *a1@<X8>)
{
  v3 = *v1;

  v4 = sub_19BB94();
  result = sub_19BEB4();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = 0x4008000000000000;
  a1[3] = result;
  a1[4] = v6;
  return result;
}

double sub_16E2B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_retain_n();
  sub_19BE94();
  sub_19B504();
  *a2 = a1;
  *(a2 + 8) = a1;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  result = *&v9;
  *(a2 + 72) = v9;
  *(a2 + 88) = a1;
  return result;
}

double sub_16E360@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_19B774();
  v18 = 0;
  sub_16E2B8(v3, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  sub_160C70(&v19, &v10, &qword_2B9298);
  sub_160CD8(v25, &qword_2B9298);
  *&v17[39] = v21;
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24;
  *&v17[7] = v19;
  *&v17[23] = v20;
  v5 = *&v17[32];
  *(a1 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v6;
  v8 = *v17;
  result = *&v17[16];
  *(a1 + 33) = *&v17[16];
  *(a1 + 49) = v5;
  v9 = v18;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 112) = *&v17[95];
  *(a1 + 17) = v8;
  return result;
}

uint64_t sub_16E46C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9090);
  v2 = v1 - 8;
  v3 = __chkstk_darwin(v1);
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v44[-v6];
  sub_19BB94();
  v8 = sub_19BBD4();

  v9 = v7 + *(v2 + 44);
  v10 = v7;
  v11 = *(sub_19B634() + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = sub_19B744();
  (*(*(v13 - 8) + 104))(&v9[v11], v12, v13);
  __asm { FMOV            V0.2D, #10.0 }

  *v9 = _Q0;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9098) + 36)] = 256;
  *v10 = v8;
  v19 = v10;
  v54 = v10;
  v57 = sub_19B774();
  v59 = 0;
  sub_19BE94();
  sub_19B504();
  v46 = v61;
  v20 = v63;
  v53 = v63;
  v48 = v65;
  v58 = v66;
  v72 = 1;
  v70 = v62;
  v68 = v64;
  v47 = sub_19BB74();
  LOBYTE(v11) = v72;
  v45 = v70;
  LOBYTE(v9) = v68;
  v50 = v72;
  v51 = v68;
  LOBYTE(v12) = v59;
  v49 = v59;
  v21 = sub_19B934();
  LOBYTE(v10) = v21;
  v52 = v21;
  sub_19B464();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v60 = 0;
  v55 = v5;
  sub_160C70(v19, v5, &qword_2B9090);
  v30 = v5;
  v31 = v56;
  sub_160C70(v30, v56, &qword_2B9090);
  v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9238) + 48));
  *&v75 = v57;
  *(&v75 + 1) = 0x4014000000000000;
  LOBYTE(v76) = v12;
  *(&v76 + 1) = *v73;
  DWORD1(v76) = *&v73[3];
  *(&v76 + 1) = 0;
  LOBYTE(v77) = v11;
  *(&v77 + 1) = v71[0];
  DWORD1(v77) = *(v71 + 3);
  v33 = v46;
  *(&v77 + 1) = v46;
  v34 = v45;
  LOBYTE(v78) = v45;
  *(&v78 + 1) = v69[0];
  DWORD1(v78) = *(v69 + 3);
  *(&v78 + 1) = v20;
  LOBYTE(v79) = v9;
  *(&v79 + 1) = v67[0];
  DWORD1(v79) = *(v67 + 3);
  v35 = v47;
  v36 = v48;
  *(&v79 + 1) = v48;
  *&v80 = v58;
  *(&v80 + 1) = v47;
  LOBYTE(v81) = v10;
  *(&v81 + 1) = *v74;
  DWORD1(v81) = *&v74[3];
  *(&v81 + 1) = v23;
  *&v82[0] = v25;
  *(&v82[0] + 1) = v27;
  *&v82[1] = v29;
  BYTE8(v82[1]) = 0;
  v38 = v81;
  v37 = v82[0];
  v39 = v78;
  v40 = v80;
  v32[4] = v79;
  v32[5] = v40;
  v41 = v76;
  v32[2] = v77;
  v32[3] = v39;
  *v32 = v75;
  v32[1] = v41;
  v42 = *(v82 + 9);
  v32[6] = v38;
  v32[7] = v37;
  *(v32 + 121) = v42;
  sub_160C70(&v75, v83, &qword_2B9240);
  sub_160CD8(v54, &qword_2B9090);
  v83[0] = v57;
  v83[1] = 0x4014000000000000;
  v84 = v49;
  *v85 = *v73;
  *&v85[3] = *&v73[3];
  v86 = 0;
  v87 = v50;
  *v88 = v71[0];
  *&v88[3] = *(v71 + 3);
  v89 = v33;
  v90 = v34;
  *v91 = v69[0];
  *&v91[3] = *(v69 + 3);
  v92 = v53;
  v93 = v51;
  *&v94[3] = *(v67 + 3);
  *v94 = v67[0];
  v95 = v36;
  v96 = v58;
  v97 = v35;
  v98 = v52;
  *v99 = *v74;
  *&v99[3] = *&v74[3];
  v100 = v23;
  v101 = v25;
  v102 = v27;
  v103 = v29;
  v104 = 0;
  sub_160CD8(v83, &qword_2B9240);
  return sub_160CD8(v55, &qword_2B9090);
}

uint64_t sub_16E8DC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_19BE74();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9228);
  sub_16E46C(a1 + *(v3 + 44));
  v4 = sub_19BB64();
  IsPad = AXDeviceIsPad();
  v6 = sub_19BE84();
  v8 = v7;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9230);
  v10 = a1 + *(result + 36);
  *v10 = v4;
  *(v10 + 1) = 0x4040000000000000;
  v10[16] = IsPad;
  *(v10 + 3) = v6;
  *(v10 + 4) = v8;
  return result;
}

uint64_t sub_16E97C()
{
  sub_19BE94();
  sub_19B504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9200);
  sub_16EFBC();
  return sub_19BAA4();
}

id sub_16EA58()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for ClarityOnboardingAdminPreviewView();
  v1 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  AXDeviceIsPad();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B91F8));
  v3 = sub_19B574();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = v1;
  [v4 addSubview:v3];
  v5 = [v3 leadingAnchor];
  v6 = [v4 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v8 = [v3 trailingAnchor];
  v9 = [v4 trailingAnchor];

  v10 = [v8 constraintEqualToAnchor:v9];
  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v11 = [v3 topAnchor];
  v12 = [v4 topAnchor];

  v13 = [v11 constraintEqualToAnchor:v12];
  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v14 = [v3 bottomAnchor];

  v15 = [v4 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  sub_19C084();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_19C0B4();
  }

  sub_19C0D4();
  v17 = objc_opt_self();
  sub_16C4E4();
  isa = sub_19C094().super.isa;

  [v17 activateConstraints:isa];

  return v4;
}

id ClarityOnboardingAdminPreviewView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClarityOnboardingAdminPreviewView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_16EFBC()
{
  result = qword_2B9208;
  if (!qword_2B9208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9200);
    sub_16F048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9208);
  }

  return result;
}

unint64_t sub_16F048()
{
  result = qword_2B9210;
  if (!qword_2B9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9210);
  }

  return result;
}

unint64_t sub_16F0B0()
{
  result = qword_2B9218;
  if (!qword_2B9218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9220);
    sub_16EFBC();
    sub_16F13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9218);
  }

  return result;
}

unint64_t sub_16F13C()
{
  result = qword_2B8730;
  if (!qword_2B8730)
  {
    sub_19B8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B8730);
  }

  return result;
}

uint64_t sub_16F1B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_16F1F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_16F25C()
{
  result = qword_2B9248;
  if (!qword_2B9248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9230);
    sub_162D0C(&qword_2B9250, &qword_2B9258);
    sub_162D0C(&qword_2B9260, &qword_2B9268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9248);
  }

  return result;
}

unint64_t sub_16F378()
{
  result = qword_2B9288;
  if (!qword_2B9288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9278);
    sub_16F404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9288);
  }

  return result;
}

unint64_t sub_16F404()
{
  result = qword_2B9290;
  if (!qword_2B9290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9280);
    sub_16CFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9290);
  }

  return result;
}

unint64_t sub_16F4C4()
{
  result = qword_2B92A0;
  if (!qword_2B92A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B92A8);
    sub_16F378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B92A0);
  }

  return result;
}

uint64_t type metadata accessor for ClarityOnboardingToggle()
{
  result = qword_2B9348;
  if (!qword_2B9348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_16F650(uint64_t a1)
{
  v2 = sub_19B5D4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_19B6C4();
}

uint64_t sub_16F740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B92E8);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_16F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B92E8);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_16F860()
{
  sub_16F8DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_16F8DC()
{
  if (!qword_2B9358)
  {
    sub_19B5D4();
    v0 = sub_19B494();
    if (!v1)
    {
      atomic_store(v0, &qword_2B9358);
    }
  }
}

unint64_t sub_16F938()
{
  result = qword_2B9388;
  if (!qword_2B9388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9390);
    sub_16F9C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9388);
  }

  return result;
}

unint64_t sub_16F9C4()
{
  result = qword_2B9398;
  if (!qword_2B9398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B93A0);
    sub_16D094();
    sub_162D0C(&qword_2B93A8, &qword_2B92C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9398);
  }

  return result;
}

unint64_t sub_16FA80()
{
  result = qword_2B93B0;
  if (!qword_2B93B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B93B8);
    sub_16FB38();
    sub_162D0C(&qword_2B93C8, &qword_2B93D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B93B0);
  }

  return result;
}

unint64_t sub_16FB38()
{
  result = qword_2B93C0;
  if (!qword_2B93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B93C0);
  }

  return result;
}

unint64_t sub_16FB90()
{
  result = qword_2B93D8;
  if (!qword_2B93D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B92D0);
    sub_16FB38();
    sub_162D0C(&qword_2B93E0, &qword_2B92E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B93D8);
  }

  return result;
}

unint64_t sub_16FC8C()
{
  result = qword_2B9418;
  if (!qword_2B9418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9410);
    sub_16FD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9418);
  }

  return result;
}

unint64_t sub_16FD18()
{
  result = qword_2B9420;
  if (!qword_2B9420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9408);
    sub_16FDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9420);
  }

  return result;
}

unint64_t sub_16FDA4()
{
  result = qword_2B9428;
  if (!qword_2B9428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9430);
    sub_16FE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9428);
  }

  return result;
}

unint64_t sub_16FE30()
{
  result = qword_2B9438;
  if (!qword_2B9438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9440);
    sub_16FEE8();
    sub_162D0C(&qword_2B8710, &qword_2B8718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9438);
  }

  return result;
}

unint64_t sub_16FEE8()
{
  result = qword_2B9448;
  if (!qword_2B9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9448);
  }

  return result;
}

unint64_t sub_16FF48()
{
  result = qword_2B9460;
  if (!qword_2B9460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9468);
    sub_16FFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9460);
  }

  return result;
}

unint64_t sub_16FFD4()
{
  result = qword_2B9470;
  if (!qword_2B9470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9478);
    sub_170060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9470);
  }

  return result;
}

unint64_t sub_170060()
{
  result = qword_2B9480;
  if (!qword_2B9480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9488);
    sub_170118();
    sub_162D0C(&qword_2B8710, &qword_2B8718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9480);
  }

  return result;
}

unint64_t sub_170118()
{
  result = qword_2B9490;
  if (!qword_2B9490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2B9498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2B9490);
  }

  return result;
}

unint64_t *sub_1701E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = &_swiftEmptyArrayStorage;
  sub_170474(0, v2, 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_171E6C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_170474((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id sub_1703B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVSEnrollmentCoordinatorFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_17040C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_170454(char *a1, int64_t a2, char a3)
{
  result = sub_170494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_170474(char *a1, int64_t a2, char a3)
{
  result = sub_1706C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_170494(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B94F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1705A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B94F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1706C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B94E0);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_1707D0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B94E8);
  v10 = *(sub_19AE74() - 8);
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
  v15 = *(sub_19AE74() - 8);
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

uint64_t sub_1709A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E10);
  v37 = a2;
  result = sub_19C5C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 24 * v21);
      v25 = v24[1];
      v38 = *v24;
      v39 = *v22;
      v26 = v24[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_19C684();
      sub_19C014();
      result = sub_19C694();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_170C80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8DD8);
  v37 = a2;
  result = sub_19C5C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_19C684();
      sub_19C014();
      result = sub_19C694();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_170F40(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_19C4F4() + 1) & ~v5;
    do
    {
      sub_19C684();

      sub_19C014();
      v9 = sub_19C694();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1710F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8E10);
  v2 = *v0;
  v3 = sub_19C5B4();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

void *sub_171288()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B8DD8);
  v2 = *v0;
  v3 = sub_19C5B4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_171400(uint64_t a1, uint64_t a2)
{
  v103 = a1;
  v104 = a2;
  v2 = sub_19B1F4();
  v107 = *(v2 - 8);
  v108 = v2;
  v3 = __chkstk_darwin(v2);
  v105 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v106 = &v100 - v5;
  v6 = sub_166F70(&_swiftEmptyArrayStorage);
  v7 = sub_166F70(&_swiftEmptyArrayStorage);
  v8 = sub_19BFE4();
  v10 = v9;
  v11 = sub_176CA4(0, 1, 1, &_swiftEmptyArrayStorage);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  v111 = v11;
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v15 = v111;
    *(v111 + 2) = v14;
    v16 = &v15[16 * v13];
    *(v16 + 4) = v8;
    *(v16 + 5) = v10;
    v17 = AXAssistiveTouchAccessibilityIcons();
    if (!v17)
    {
      goto LABEL_29;
    }

    v8 = v17;

    v14 = sub_19C0A4();

    v10 = *(v14 + 16);
    if (!v10)
    {
      v6 = &_swiftEmptyDictionarySingleton;
      goto LABEL_28;
    }

    v18 = 0;
    v19 = v14 + 40;
    v109 = (v10 - 1);
    v6 = &_swiftEmptyDictionarySingleton;
    v110 = (v14 + 40);
    while (2)
    {
      v20 = (v19 + 16 * v18);
      v21 = v18;
      while (1)
      {
        v12 = *(v14 + 16);
        if (v21 >= v12)
        {
          __break(1u);
          goto LABEL_86;
        }

        v8 = *(v20 - 1);
        v22 = *v20;

        v13 = sub_19BFB4();
        v23 = AXUIAssistiveTouchStringForName();

        if (v23)
        {
          v13 = v7;
          v101 = sub_19BFE4();
          v102 = v26;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v112 = v6;
          v28 = sub_164454(v8, v22);
          v30 = *(v6 + 16);
          v31 = (v29 & 1) == 0;
          v32 = __OFADD__(v30, v31);
          v33 = v30 + v31;
          if (v32)
          {
            __break(1u);
LABEL_92:
            __break(1u);
          }

          else
          {
            v34 = v29;
            if (*(v6 + 24) >= v33)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v44 = v28;
                sub_171288();
                v28 = v44;
              }
            }

            else
            {
              sub_170C80(v33, isUniquelyReferenced_nonNull_native);
              v28 = sub_164454(v8, v22);
              if ((v34 & 1) != (v35 & 1))
              {
LABEL_96:
                result = sub_19C674();
                __break(1u);
                return result;
              }
            }

            v7 = v13;
            v6 = v112;
            if (v34)
            {
              v37 = (v112[7] + 16 * v28);
              v8 = v37[1];
              v38 = v102;
              *v37 = v101;
              v37[1] = v38;

              goto LABEL_22;
            }

            v112[(v28 >> 6) + 8] |= 1 << v28;
            v39 = (*(v6 + 48) + 16 * v28);
            *v39 = v8;
            v39[1] = v22;
            v40 = (*(v6 + 56) + 16 * v28);
            v41 = v102;
            *v40 = v101;
            v40[1] = v41;
            v42 = *(v6 + 16);
            v32 = __OFADD__(v42, 1);
            v43 = v42 + 1;
            if (!v32)
            {
              *(v6 + 16) = v43;
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v24 = sub_164454(v8, v22);
        if (v25)
        {
          break;
        }

        ++v21;

        v20 += 2;
        if (v10 == v21)
        {
          goto LABEL_28;
        }
      }

      v8 = v24;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v112 = v6;
      if (!v36)
      {
        sub_171288();
        v6 = v112;
      }

      v13 = 16 * v8;

      sub_170F40(v8, v6);
LABEL_22:

LABEL_25:
      v19 = v110;
      v18 = v21 + 1;
      if (v109 != v21)
      {
        continue;
      }

      break;
    }

LABEL_28:

LABEL_29:
    v45 = AXSystemActionIconTypes();
    v46 = [v45 allObjects];

    v8 = sub_19C0A4();
    v47 = sub_1701E0(v8);

    if (!v47)
    {
      goto LABEL_84;
    }

    v102 = v6;

    v10 = v47[2];
    if (!v10)
    {
      break;
    }

    v48 = 0;
    v14 = 0;
    v49 = v47 + 5;
    v101 = v10 - 1;
    v6 = &_swiftEmptyArrayStorage;
    v109 = (v47 + 5);
LABEL_32:
    v110 = v6;
    v50 = &v49[2 * v48];
    v7 = v48;
    while (1)
    {
      v12 = v47[2];
      if (v7 >= v12)
      {
        break;
      }

      v51 = *(v50 - 1);
      v8 = *v50;

      v52 = AXAssistiveTouchAccessibilityIcons();
      if (!v52)
      {
        goto LABEL_95;
      }

      v53 = v52;
      v13 = sub_19C0A4();

      v112 = v51;
      v113 = v8;
      __chkstk_darwin(v54);
      *(&v100 - 2) = &v112;
      v6 = sub_176904(sub_171E48, (&v100 - 4), v13);

      if ((v6 & 1) == 0)
      {
        v6 = v110;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v114 = v6;
        if ((v55 & 1) == 0)
        {
          sub_170474(0, *(v6 + 16) + 1, 1);
          v6 = v114;
        }

        v49 = v109;
        v57 = *(v6 + 16);
        v56 = *(v6 + 24);
        v13 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          sub_170474((v56 > 1), v57 + 1, 1);
          v6 = v114;
        }

        v48 = v7 + 1;
        *(v6 + 16) = v13;
        v58 = v6 + 16 * v57;
        *(v58 + 32) = v51;
        *(v58 + 40) = v8;
        if (v101 != v7)
        {
          goto LABEL_32;
        }

        goto LABEL_45;
      }

      ++v7;

      v50 += 2;
      if (v10 == v7)
      {
        v6 = v110;
        goto LABEL_45;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v111 = sub_176CA4((v12 > 1), v14, 1, v111);
  }

  v14 = 0;
  v6 = &_swiftEmptyArrayStorage;
LABEL_45:

  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = 0;
    v60 = v6 + 40;
    v12 = &_swiftEmptyArrayStorage;
    v109 = &_swiftEmptyArrayStorage;
    v110 = v6;
    v101 = v6 + 40;
LABEL_47:
    v13 = v60 + 16 * v10;
    v61 = v10;
    while (v61 < v7)
    {
      v10 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_88;
      }

      v62 = *(v13 - 8);
      v8 = *v13;
      v112 = v62;
      v113 = v8;
      __chkstk_darwin(v59);
      *(&v100 - 2) = &v112;

      v63 = v111;

      v64 = sub_176904(sub_171EC8, (&v100 - 4), v63);

      if ((v64 & 1) == 0)
      {
        v65 = v109;
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v114 = v65;
        if ((v59 & 1) == 0)
        {
          v59 = sub_170474(0, *(v65 + 2) + 1, 1);
          v65 = v114;
        }

        v67 = *(v65 + 2);
        v66 = *(v65 + 3);
        v13 = v67 + 1;
        if (v67 >= v66 >> 1)
        {
          v59 = sub_170474((v66 > 1), v67 + 1, 1);
          v65 = v114;
        }

        *(v65 + 2) = v13;
        v109 = v65;
        v12 = &v65[16 * v67];
        *(v12 + 32) = v62;
        *(v12 + 40) = v8;
        v6 = v110;
        v60 = v101;
        if (v10 != v7)
        {
          goto LABEL_47;
        }

        goto LABEL_60;
      }

      ++v61;
      v13 += 16;
      v6 = v110;
      if (v10 == v7)
      {
        goto LABEL_60;
      }
    }

    goto LABEL_87;
  }

  v109 = &_swiftEmptyArrayStorage;
LABEL_60:

  v10 = v109;
  v68 = *(v109 + 2);
  if (v68)
  {
    v69 = 0;
    v70 = v109 + 40;
    v101 = v68 - 1;
    v71 = &_swiftEmptyDictionarySingleton;
    v110 = v109 + 40;
LABEL_62:
    v72 = v71;
    v73 = &v70[16 * v69];
    v7 = v69;
    do
    {
      v12 = *(v10 + 16);
      if (v7 >= v12)
      {
        goto LABEL_89;
      }

      v8 = *(v73 - 1);
      v74 = *v73;

      v13 = sub_19BFB4();
      v6 = AXUIAssistiveTouchStringForName();

      if (v6)
      {
        v13 = sub_19BFE4();
        v76 = v75;

        v77 = HIBYTE(v76) & 0xF;
        if ((v76 & 0x2000000000000000) == 0)
        {
          v77 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v77)
        {
          v78 = v72;
          LODWORD(v100) = swift_isUniquelyReferenced_nonNull_native();
          v112 = v72;
          v80 = sub_164454(v8, v74);
          v81 = v72[2];
          v82 = (v79 & 1) == 0;
          v83 = v81 + v82;
          if (__OFADD__(v81, v82))
          {
            goto LABEL_92;
          }

          v84 = v79;
          v70 = v110;
          if (v78[3] >= v83)
          {
            if (v100)
            {
              v87 = v112;
              if ((v79 & 1) == 0)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v100 = v80;
              sub_171288();
              v80 = v100;
              v87 = v112;
              if ((v84 & 1) == 0)
              {
                goto LABEL_79;
              }
            }
          }

          else
          {
            sub_170C80(v83, v100);
            v85 = sub_164454(v8, v74);
            if ((v84 & 1) != (v86 & 1))
            {
              goto LABEL_96;
            }

            v80 = v85;
            v87 = v112;
            if ((v84 & 1) == 0)
            {
LABEL_79:
              v87[(v80 >> 6) + 8] |= 1 << v80;
              v89 = (v87[6] + 16 * v80);
              *v89 = v8;
              v89[1] = v74;
              v90 = (v87[7] + 16 * v80);
              *v90 = v13;
              v90[1] = v76;
              v91 = v87[2];
              v32 = __OFADD__(v91, 1);
              v92 = v91 + 1;
              if (v32)
              {
                goto LABEL_94;
              }

              v6 = v87;
              v87[2] = v92;
LABEL_81:
              v10 = v109;
              v69 = v7 + 1;
              v93 = v101 == v7;
              v71 = v6;
              if (v93)
              {
                break;
              }

              goto LABEL_62;
            }
          }

          v6 = v87;
          v88 = (v87[7] + 16 * v80);
          v8 = v88[1];
          *v88 = v13;
          v88[1] = v76;

          goto LABEL_81;
        }

        v10 = v109;
      }

      ++v7;

      v73 += 2;
    }

    while (v68 != v7);
  }

LABEL_84:

  v94 = v106;
  sub_19B1E4();
  v96 = v107;
  v95 = v108;
  (*(v107 + 16))(v105, v94, v108);
  v97 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B94D8));
  v98 = sub_19B794();
  (*(v96 + 8))(v94, v95);

  return v98;
}

uint64_t sub_171E6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_171EE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_19C5A4();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_170454(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_19C564();
        sub_1544A0(0, &qword_2B8278);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_170454((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1674C4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1544A0(0, &qword_2B8278);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_170454((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1674C4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1720E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_19C5A4();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_19C5A4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1788A8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_178B20(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1721D0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_176F88(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_1722BC(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_supportedLocales] = 0;
  v5 = &v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_defaultLocaleIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_localeSpecifiers] = &_swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_installedLocaleSpecifiers] = &_swiftEmptyArrayStorage;
  v6 = &v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_clearButtonIdentifier];
  *v7 = 0xD00000000000001ALL;
  *(v7 + 1) = 0x800000000022DF10;
  if (a2)
  {
    v8 = sub_19BFB4();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for LiveCaptionsLanguagesSelection();
  v9 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v8, a3);

  v10 = v9;
  sub_1731E4();

  return v10;
}

id sub_172420(void *a1)
{
  *&v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_supportedLocales] = 0;
  v3 = &v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_defaultLocaleIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_localeSpecifiers] = &_swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_installedLocaleSpecifiers] = &_swiftEmptyArrayStorage;
  v4 = &v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_clearButtonIdentifier];
  *v5 = 0xD00000000000001ALL;
  *(v5 + 1) = 0x800000000022DF10;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for LiveCaptionsLanguagesSelection();
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1731E4();
  }

  return v7;
}

uint64_t static LiveCaptionsLanguagesSelection.defaultLocale()(uint64_t a1)
{
  v1[2] = sub_19C114();
  v1[3] = sub_19C104();
  sub_19B114();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1725E8;

  return static AXLiveCaptions.defaultLocale()(a1);
}

uint64_t sub_1725E8()
{

  v1 = sub_19C0F4();

  return _swift_task_switch(sub_172724, v1, v0);
}

uint64_t sub_172724()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1728F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_19AEF4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_19C114();
  v1[7] = sub_19C104();
  v4 = sub_19C0F4();

  return _swift_task_switch(sub_1729E8, v4, v3);
}

uint64_t sub_1729E8()
{
  v1 = v0[2];

  v0[8] = _Block_copy(v1);
  v0[9] = sub_19C104();
  sub_19B114();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_172AAC;
  v3 = v0[5];

  return static AXLiveCaptions.defaultLocale()(v3);
}

uint64_t sub_172AAC()
{

  v1 = sub_19C0F4();

  return _swift_task_switch(sub_172BE8, v1, v0);
}

uint64_t sub_172BE8()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  isa = sub_19AEA4().super.isa;
  (*(v3 + 8))(v2, v4);
  (v1)[2](v1, isa);

  _Block_release(v1);

  v6 = v0[1];

  return v6();
}

Swift::OpaquePointer_optional __swiftcall LiveCaptionsLanguagesSelection.specifiers()()
{
  v1 = v0;
  v2 = sub_19BFB4();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_19C4C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29[0] = v27;
  v29[1] = v28;
  if (!*(&v28 + 1))
  {
    sub_160CD8(v29, &unk_2B8C80);
LABEL_8:
    *&v29[0] = &_swiftEmptyArrayStorage;
    v6 = *&v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_installedLocaleSpecifiers];
    if (v6 >> 62)
    {
      v7 = sub_19C5A4();
    }

    else
    {
      v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    }

    if (v7 >= 1)
    {
      v8 = objc_opt_self();
      v9 = sub_19BFB4();
      v10 = [v8 groupSpecifierWithName:v9];

      if (v10)
      {
        sub_19C084();
        if (*(&dword_10 + (*&v29[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v29[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_19C0B4();
        }

        sub_19C0D4();

        sub_1720E0(v12);
        v13 = sub_19BFB4();
        v14 = [v8 groupSpecifierWithName:v13];

        if (v14)
        {
          sub_19C084();
          if (*(&dword_10 + (*&v29[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v29[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_19C0B4();
          }

          sub_19C0D4();
          goto LABEL_18;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_18:

    sub_1720E0(v15);
    if (!AXIsInternalInstall() || (v16 = objc_opt_self(), v17 = sub_19BFB4(), v18 = [v16 preferenceSpecifierNamed:v17 target:v1 set:0 get:0 detail:0 cell:13 edit:0], v17, !v18))
    {
LABEL_26:
      v23 = *&v29[0];
      sub_1544A0(0, &qword_2B8278);
      isa = sub_19C094().super.isa;
      v25 = sub_19BFB4();
      [v1 setValue:isa forKey:v25];

      v5 = sub_171EE4(v23);

      goto LABEL_27;
    }

    v19 = sub_19BFB4();
    [v18 setIdentifier:v19];

    [v18 setButtonAction:"clearLanguageSelection"];
    v20 = sub_19BFB4();
    v21 = [v16 groupSpecifierWithName:v20];

    if (v21)
    {
      sub_19C084();
      if (*(&dword_10 + (*&v29[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v29[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();
      v22 = v18;
      sub_19C084();
      if (*(&dword_10 + (*&v29[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v29[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      sub_19C0D4();

      goto LABEL_26;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2B8C90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v26;
LABEL_27:
  v11 = v5;
LABEL_32:
  result.value._rawValue = v11;
  result.is_nil = v4;
  return result;
}

uint64_t sub_1731E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9568);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 liveCaptionsSelectedLocaleIdentifier];

  if (v6)
  {
    v7 = sub_19BFE4();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = &v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier];
  *v10 = v7;
  v10[1] = v9;

  if (v9)
  {
    v25 = v7;
    v26 = v9;
    v23 = 45;
    v24 = 0xE100000000000000;
    sub_16082C();
    if (sub_19C4B4())
    {
LABEL_8:

      goto LABEL_9;
    }

    v25 = v7;
    v26 = v9;
    v23 = 95;
    v24 = 0xE100000000000000;
    v11 = sub_19C4B4();

    if ((v11 & 1) == 0)
    {
      *v10 = 0;
      v10[1] = 0;
      goto LABEL_8;
    }
  }

LABEL_9:
  v12 = swift_allocObject();
  *(v12 + 16) = *&v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_supportedLocales];
  v13 = swift_allocObject();
  v14 = *&v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_defaultLocaleIdentifier + 8];
  *(v13 + 16) = *&v1[OBJC_IVAR___LiveCaptionsLanguagesSelection_defaultLocaleIdentifier];
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = *v10;
  v17 = v10[1];
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  v18 = sub_19C144();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_19C114();

  v19 = v1;

  v20 = sub_19C104();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v12;
  v21[5] = v13;
  v21[6] = v19;
  v21[7] = v15;
  sub_175294(0, 0, v4, &unk_1DCC18, v21);
}

uint64_t sub_173504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[65] = a7;
  v7[63] = a5;
  v7[64] = a6;
  v7[62] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9570);
  v7[66] = v8;
  v7[67] = *(v8 - 8);
  v7[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9578);
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v9 = sub_19AEF4();
  v7[71] = v9;
  v7[72] = *(v9 - 8);
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = sub_19C114();
  v7[78] = sub_19C104();
  v11 = sub_19C0F4();
  v7[79] = v11;
  v7[80] = v10;

  return _swift_task_switch(sub_1736D8, v11, v10);
}

uint64_t sub_1736D8()
{
  v32 = v0;
  v1 = v0[62];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    v0[83] = v2;
    v0[84] = sub_19B114();

    v0[85] = sub_19B104();
    v3 = sub_19C3E4();
    v4 = AXLogLiveTranscription();
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v4, v3))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v31 = v7;
        *v6 = 136315138;
        v0[61] = *(v2 + 16);
        v8 = sub_19C624();
        v10 = sub_1772A0(v8, v9, &v31);

        *(v6 + 4) = v10;
        _os_log_impl(&dword_0, v5, v3, "LiveCaptions Settings: supportedLocales: %s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
      }

      v11 = v0[63];
      swift_beginAccess();
      if (!*(v11 + 24))
      {
        v29 = swift_task_alloc();
        v0[86] = v29;
        *v29 = v0;
        v29[1] = sub_1740BC;
        v4 = v0[76];

        return static AXLiveCaptions.defaultLocale()(v4);
      }

      v12 = v0[75];
      v13 = v0[72];
      v14 = v0[71];
      v0[59] = &_swiftEmptyArrayStorage;
      sub_19AEB4();
      v15 = sub_19AE44();
      v17 = v16;
      v18 = *(v13 + 8);
      v0[87] = v18;
      v0[88] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v18(v12, v14);
      v19 = sub_19C3E4();
      v4 = AXLogLiveTranscription();
      if (v4)
      {
        v20 = v4;
        if (os_log_type_enabled(v4, v19))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v31 = v22;
          *v21 = 136315138;

          v23 = sub_1772A0(v15, v17, &v31);

          *(v21 + 4) = v23;
          _os_log_impl(&dword_0, v20, v19, "LiveCaptions Settings: currentIdentifier: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
        }

        v0[44] = v15;
        v0[45] = v17;
        v0[38] = 95;
        v0[39] = 0xE100000000000000;
        v0[34] = 45;
        v0[35] = 0xE100000000000000;
        v0[89] = sub_16082C();
        v24 = sub_19C494();
        v26 = v25;

        v0[90] = v24;
        v0[91] = v26;
        v27 = swift_task_alloc();
        v0[92] = v27;
        *v27 = v0;
        v27[1] = sub_1745FC;

        return static AXLiveCaptions.installedLocales()();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return static AXLiveCaptions.defaultLocale()(v4);
  }

  sub_19B114();
  v28 = swift_task_alloc();
  v0[81] = v28;
  *v28 = v0;
  v28[1] = sub_173B6C;

  return static AXLiveCaptions.supportedLocales()();
}

uint64_t sub_173B6C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 656) = a1;

  v3 = *(v2 + 640);
  v4 = *(v2 + 632);

  return _swift_task_switch(sub_173C94, v4, v3);
}

uint64_t sub_173C94()
{
  v32 = v0;
  v1 = v0[82];
  v2 = v0[62];
  swift_beginAccess();
  *(v2 + 16) = v1;

  v3 = v0[82];
  v0[83] = v3;
  v0[84] = sub_19B114();
  v0[85] = sub_19B104();
  v4 = sub_19C3E4();
  v5 = AXLogLiveTranscription();
  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5;
  if (os_log_type_enabled(v5, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136315138;
    v0[61] = *(v3 + 16);
    v9 = sub_19C624();
    v11 = sub_1772A0(v9, v10, &v31);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v6, v4, "LiveCaptions Settings: supportedLocales: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v12 = v0[63];
  swift_beginAccess();
  if (!*(v12 + 24))
  {
    v29 = swift_task_alloc();
    v0[86] = v29;
    *v29 = v0;
    v29[1] = sub_1740BC;
    v5 = v0[76];

    return static AXLiveCaptions.defaultLocale()(v5);
  }

  v13 = v0[75];
  v14 = v0[72];
  v15 = v0[71];
  v0[59] = &_swiftEmptyArrayStorage;
  sub_19AEB4();
  v16 = sub_19AE44();
  v18 = v17;
  v19 = *(v14 + 8);
  v0[87] = v19;
  v0[88] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v13, v15);
  v20 = sub_19C3E4();
  v5 = AXLogLiveTranscription();
  if (!v5)
  {
LABEL_15:
    __break(1u);
    return static AXLiveCaptions.defaultLocale()(v5);
  }

  v21 = v5;
  if (os_log_type_enabled(v5, v20))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v23;
    *v22 = 136315138;

    v24 = sub_1772A0(v16, v18, &v31);

    *(v22 + 4) = v24;
    _os_log_impl(&dword_0, v21, v20, "LiveCaptions Settings: currentIdentifier: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v0[44] = v16;
  v0[45] = v18;
  v0[38] = 95;
  v0[39] = 0xE100000000000000;
  v0[34] = 45;
  v0[35] = 0xE100000000000000;
  v0[89] = sub_16082C();
  v25 = sub_19C494();
  v27 = v26;

  v0[90] = v25;
  v0[91] = v27;
  v28 = swift_task_alloc();
  v0[92] = v28;
  *v28 = v0;
  v28[1] = sub_1745FC;

  return static AXLiveCaptions.installedLocales()();
}

uint64_t sub_1740BC()
{
  v1 = *v0;

  v2 = *(v1 + 640);
  v3 = *(v1 + 632);

  return _swift_task_switch(sub_1741DC, v3, v2);
}

uint64_t sub_1741DC()
{
  v40 = v0;
  v1 = *(v0 + 504);
  *(v0 + 432) = sub_19AE44();
  *(v0 + 440) = v2;
  *(v0 + 400) = 95;
  *(v0 + 408) = 0xE100000000000000;
  *(v0 + 368) = 45;
  *(v0 + 376) = 0xE100000000000000;
  v3 = sub_16082C();
  v4 = sub_19C494();
  v6 = v5;

  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v6;

  v7 = sub_19C3E4();
  v8 = AXLogLiveTranscription();
  if (!v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return static AXLiveCaptions.installedLocales()();
  }

  v9 = v8;
  v10 = os_log_type_enabled(v8, v7);
  v11 = *(v0 + 608);
  v12 = *(v0 + 576);
  v13 = *(v0 + 568);
  if (v10)
  {
    v38 = *(v0 + 608);
    v14 = *(v0 + 504);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 136315138;
    swift_beginAccess();
    *(v0 + 448) = *(v14 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9520);
    v17 = sub_19C474();
    v19 = sub_1772A0(v17, v18, &v39);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v9, v7, "LiveCaptions Settings: defaultLocaleIdentifier: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);

    (*(v12 + 8))(v38, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 600);
  v21 = *(v0 + 576);
  v22 = *(v0 + 568);
  *(v0 + 472) = &_swiftEmptyArrayStorage;
  sub_19AEB4();
  v23 = sub_19AE44();
  v25 = v24;
  v26 = *(v21 + 8);
  *(v0 + 696) = v26;
  *(v0 + 704) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v20, v22);
  v27 = sub_19C3E4();
  v28 = AXLogLiveTranscription();
  if (!v28)
  {
    goto LABEL_12;
  }

  v29 = v28;
  if (os_log_type_enabled(v28, v27))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v30 = 136315138;

    v32 = sub_1772A0(v23, v25, &v39);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_0, v29, v27, "LiveCaptions Settings: currentIdentifier: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  *(v0 + 352) = v23;
  *(v0 + 360) = v25;
  *(v0 + 304) = 95;
  *(v0 + 312) = 0xE100000000000000;
  *(v0 + 272) = 45;
  *(v0 + 280) = 0xE100000000000000;
  *(v0 + 712) = v3;
  v33 = sub_19C494();
  v35 = v34;

  *(v0 + 720) = v33;
  *(v0 + 728) = v35;
  v36 = swift_task_alloc();
  *(v0 + 736) = v36;
  *v36 = v0;
  v36[1] = sub_1745FC;

  return static AXLiveCaptions.installedLocales()();
}

uint64_t sub_1745FC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 744) = a1;

  v3 = *(v2 + 640);
  v4 = *(v2 + 632);

  return _swift_task_switch(sub_174724, v4, v3);
}

uint64_t sub_174724()
{
  v83 = v0;
  v1 = *(v0 + 744);
  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = *(v0 + 576);
    v5 = *(v4 + 16);
    v4 += 16;
    v77 = v5;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v76 = *(v4 + 56);
    do
    {
      v7 = *(v0 + 728);
      v8 = *(v0 + 720);
      v77(*(v0 + 592), v6, *(v0 + 568));
      *(v0 + 288) = sub_19AE44();
      *(v0 + 296) = v9;
      *(v0 + 256) = 95;
      *(v0 + 264) = 0xE100000000000000;
      *(v0 + 320) = 45;
      *(v0 + 328) = 0xE100000000000000;
      v10 = sub_19C494();
      v12 = v11;

      if (v10 == v8 && v12 == v7 || (sub_19C644() & 1) != 0 || (v13 = sub_175584(*(v0 + 592))) == 0)
      {
        (*(v0 + 696))(*(v0 + 592), *(v0 + 568));
      }

      else
      {
        v14 = v13;
        sub_19C084();
        if (*(&dword_10 + (*(v0 + 472) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 472) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_19C0B4();
        }

        sub_19C0D4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_176CA4(0, *(v3 + 2) + 1, 1, v3);
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        v74 = v14;
        if (v16 >= v15 >> 1)
        {
          v80 = sub_176CA4((v15 > 1), v16 + 1, 1, v3);
        }

        else
        {
          v80 = v3;
        }

        v17 = *(v0 + 696);
        v18 = *(v0 + 592);
        v19 = *(v0 + 568);

        v17(v18, v19);
        v3 = v80;
        *(v80 + 2) = v16 + 1;
        v20 = &v80[16 * v16];
        *(v20 + 4) = v10;
        *(v20 + 5) = v12;
      }

      v6 += v76;
      --v2;
    }

    while (v2);
  }

  v82[0] = sub_178A8C(v21);
  sub_177848(v82);
  v81 = v3;
  v22 = *(v0 + 728);
  v23 = *(v0 + 720);
  v24 = *(v0 + 680);

  v25 = v82[0];
  *(v0 + 472) = v82[0];
  *(v0 + 336) = v23;
  *(v0 + 344) = v22;
  v26 = swift_task_alloc();
  *(v26 + 16) = v0 + 336;

  LOBYTE(v24) = sub_176904(sub_1795B0, v26, v24);

  if (v24)
  {
    v27 = *(v0 + 696);
    v28 = *(v0 + 600);
    v29 = *(v0 + 568);
    sub_19AEB4();
    v22 = sub_175584(v28);
    v27(v28, v29);
    if (v22)
    {
      if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
      {
LABEL_50:
        v65 = sub_19C5A4();
        if (v65 < 0)
        {
          __break(1u);
          return _swift_task_switch(v65, v66, v67);
        }
      }

      v30 = v22;
      sub_178E34(0, 0, v30);

      v31 = *(v81 + 2);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 480) = v81;
      if (!isUniquelyReferenced_nonNull_native || v31 >= *(v81 + 3) >> 1)
      {
        v81 = sub_176CA4(isUniquelyReferenced_nonNull_native, v31 + 1, 1, v81);
        *(v0 + 480) = v81;
      }

      v22 = (v0 + 480);
      sub_178F20(0, 0, 1, *(v0 + 720), *(v0 + 728));
    }
  }

  v33 = 0;
  v34 = *(v0 + 680);
  v35 = *(v0 + 664);
  v36 = *(v0 + 576);
  v37 = *(v0 + 536);
  v79 = *(v0 + 528);
  *(v0 + 464) = &_swiftEmptyArrayStorage;
  v72 = v36;
  v38 = (v37 + 56);
  v39 = (v37 + 48);
  v40 = (v36 + 32);
  v78 = v34;
  v73 = v35;
  v75 = v34 + 32;
  v41 = *(v35 + 16);
  while (1)
  {
    *(v0 + 752) = v81;
    if (v33 == v41)
    {
      v42 = 1;
      v33 = v41;
    }

    else
    {
      if (v33 >= *(v73 + 16))
      {
        goto LABEL_49;
      }

      v43 = *(v0 + 568);
      v44 = *(v0 + 552);
      v45 = *(v0 + 544);
      v46 = *(v0 + 664) + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v33;
      v47 = *(v79 + 48);
      *v45 = v33;
      (*(v72 + 16))(&v45[v47], v46, v43);
      sub_1609D0(v45, v44, &qword_2B9570);
      v42 = 0;
      ++v33;
    }

    v48 = *(v0 + 560);
    v49 = *(v0 + 552);
    v50 = *(v0 + 528);
    (*v38)(v49, v42, 1, v50);
    sub_1609D0(v49, v48, &qword_2B9578);
    if ((*v39)(v48, 1, v50) == 1)
    {
      break;
    }

    v51 = *(v0 + 560);
    v22 = *v51;
    (*v40)(*(v0 + 584), v51 + *(v79 + 48), *(v0 + 568));
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v22 >= *(v78 + 16))
    {
      goto LABEL_48;
    }

    v52 = (v75 + 16 * v22);
    v22 = v52[1];
    *(v0 + 416) = *v52;
    *(v0 + 424) = v22;
    v53 = swift_task_alloc();
    *(v53 + 16) = v0 + 416;

    v54 = sub_176904(sub_179950, v53, v81);

    if ((v54 & 1) != 0 || (v22 = *(v0 + 512), (v55 = sub_175584(*(v0 + 584))) == 0))
    {
      (*(v0 + 696))(*(v0 + 584), *(v0 + 568));
    }

    else
    {
      v71 = v55;
      sub_19C084();
      if (*(&dword_10 + (*(v0 + 464) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 464) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_19C0B4();
      }

      v70 = *(v0 + 696);
      v56 = *(v0 + 584);
      v69 = *(v0 + 568);
      v22 = (v0 + 464);
      sub_19C0D4();

      v70(v56, v69);
    }
  }

  v82[0] = sub_178A8C(v57);
  sub_177848(v82);
  v58 = *(v0 + 520);

  v59 = v82[0];
  *(v0 + 760) = v82[0];
  *(v0 + 464) = v59;
  swift_beginAccess();
  v60 = *(v58 + 24);
  if (v60)
  {
    v61 = *(v0 + 680);
    v62 = *(*(v0 + 520) + 16);

    *(v0 + 384) = v62;
    *(v0 + 392) = v60;
    v63 = swift_task_alloc();
    *(v63 + 16) = v0 + 384;
    LOBYTE(v62) = sub_176904(sub_179950, v63, v61);

    if (v62)
    {
      goto LABEL_44;
    }

    v64 = *(v0 + 520);
    swift_beginAccess();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
  }

  else
  {
  }

LABEL_44:
  v65 = sub_174F80;
  v66 = 0;
  v67 = 0;

  return _swift_task_switch(v65, v66, v67);
}

uint64_t sub_174F80()
{
  *(v0 + 768) = sub_19C104();
  v2 = sub_19C0F4();

  return _swift_task_switch(sub_17500C, v2, v1);
}

uint64_t sub_17500C()
{
  v1 = v0[95];
  v2 = v0[65];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[62];

  swift_beginAccess();
  *&v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_supportedLocales] = *(v5 + 16);

  swift_beginAccess();
  v6 = *(v4 + 24);
  v7 = &v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_defaultLocaleIdentifier];
  *v7 = *(v4 + 16);
  *(v7 + 1) = v6;

  swift_beginAccess();
  v8 = *(v2 + 24);
  v9 = &v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier];
  *v9 = *(v2 + 16);
  *(v9 + 1) = v8;

  v10 = v0[59];
  v0[97] = v10;
  *&v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_installedLocaleSpecifiers] = v10;

  *&v3[OBJC_IVAR___LiveCaptionsLanguagesSelection_localeSpecifiers] = v1;

  [v3 reloadSpecifiers];

  v11 = v0[80];
  v12 = v0[79];

  return _swift_task_switch(sub_175198, v12, v11);
}

uint64_t sub_175198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_175294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9568);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_179398(a3, v25 - v10);
  v12 = sub_19C144();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_160CD8(v11, &qword_2B9568);
  }

  else
  {
    sub_19C134();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19C0F4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19BFF4() + 32;
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

      sub_160CD8(a3, &qword_2B9568);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_160CD8(a3, &qword_2B9568);
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

NSObject *sub_175584(uint64_t a1)
{
  v101 = sub_19AEF4();
  v2 = *(v101 - 8);
  v3 = __chkstk_darwin(v101);
  v5 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v91 = v89 - v7;
  v8 = __chkstk_darwin(v6);
  v92 = v89 - v9;
  v10 = __chkstk_darwin(v8);
  v93 = v89 - v11;
  v12 = __chkstk_darwin(v10);
  v98 = v89 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = v89 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v89 - v18;
  __chkstk_darwin(v17);
  v21 = v89 - v20;
  sub_19AE84();
  LODWORD(v99) = sub_19C3C4();
  result = AXLogLiveTranscription();
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = result;
  v24 = *(v2 + 16);
  v25 = v101;
  v24(v19, a1, v101);
  v94 = v24;
  v95 = v2 + 16;
  v24(v16, v21, v25);
  v26 = os_log_type_enabled(v23, v99);
  v100 = v21;
  v97 = a1;
  v90 = v5;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v101;
    v89[2] = v28;
    v106[0] = v28;
    *v27 = 136315394;
    sub_1791DC();
    v30 = sub_19C624();
    v32 = v31;
    v33 = *(v2 + 8);
    v89[1] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v19, v29);
    v34 = sub_1772A0(v30, v32, v106);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2080;
    v21 = v100;
    v35 = sub_19C624();
    v37 = v36;
    v33(v16, v29);
    v38 = sub_1772A0(v35, v37, v106);

    *(v27 + 14) = v38;
    _os_log_impl(&dword_0, v23, v99, "LiveCaptions Settings: Fetching display name for locale %s disambiguated locale: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v33 = *(v2 + 8);
    v39 = v101;
    v33(v16, v101);
    v33(v19, v39);
  }

  v40 = v98;
  sub_19AEB4();
  v107._countAndFlagsBits = sub_19AE44();
  sub_19AE94(v107);
  v42 = v41;

  v33(v40, v101);
  if (v42)
  {
LABEL_11:
    v55 = objc_opt_self();
    v56 = sub_19BFB4();
    v57 = [v55 preferenceSpecifierNamed:v56 target:v96 set:0 get:0 detail:0 cell:3 edit:0];

    if (v57)
    {

      v106[0] = sub_19AE44();
      v106[1] = v58;
      v104 = 95;
      v105 = 0xE100000000000000;
      v102 = 45;
      v103 = 0xE100000000000000;
      sub_16082C();
      sub_19C494();

      v59 = sub_19BFB4();

      [v57 setProperty:v59 forKey:PSIDKey];

      v33(v100, v101);
      return v57;
    }

    v60 = sub_19C3C4();
    result = AXLogLiveTranscription();
    if (result)
    {
      v61 = result;

      v62 = v92;
      v94(v92, v97, v101);
      if (os_log_type_enabled(v61, v60))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v106[0] = v64;
        *v63 = 136315138;
        sub_1791DC();
        v65 = v101;
        v66 = sub_19C624();
        v68 = v67;
        v33(v62, v65);
        v69 = sub_1772A0(v66, v68, v106);

        *(v63 + 4) = v69;
        _os_log_impl(&dword_0, v61, v60, "LiveCaptions Settings: Couldn't create specifier for locale %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);

LABEL_20:

        v71 = v100;
        v87 = v65;
LABEL_23:
        v33(v71, v87);
        return 0;
      }

      v70 = v101;
      v33(v62, v101);
      v71 = v100;
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  v43 = sub_19C3C4();
  result = AXLogLiveTranscription();
  if (!result)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v44 = result;
  v45 = v93;
  v94(v93, v21, v101);
  if (os_log_type_enabled(v44, v43))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v106[0] = v47;
    *v46 = 136315138;
    sub_1791DC();
    v48 = v101;
    v49 = sub_19C624();
    v51 = v50;
    v33(v45, v48);
    v52 = sub_1772A0(v49, v51, v106);
    v21 = v100;

    *(v46 + 4) = v52;
    _os_log_impl(&dword_0, v44, v43, "LiveCaptions Settings: Couldn't get localized name for disambiguated locale %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {

    v33(v45, v101);
  }

  v108._countAndFlagsBits = sub_19AE44();
  sub_19AE94(v108);
  v54 = v53;

  if (v54)
  {
    goto LABEL_11;
  }

  v72 = sub_19C3C4();
  result = AXLogLiveTranscription();
  if (result)
  {
    v61 = result;
    v73 = v91;
    v74 = v101;
    v75 = v94;
    v94(v91, v97, v101);
    v76 = v90;
    v75(v90, v21, v74);
    if (os_log_type_enabled(v61, v72))
    {
      v77 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v106[0] = v99;
      *v77 = 136315394;
      sub_1791DC();
      LODWORD(v98) = v72;
      v78 = v76;
      v65 = v101;
      v79 = sub_19C624();
      v81 = v80;
      v33(v73, v65);
      v82 = sub_1772A0(v79, v81, v106);

      *(v77 + 4) = v82;
      *(v77 + 12) = 2080;
      v83 = sub_19C624();
      v85 = v84;
      v33(v78, v65);
      v86 = sub_1772A0(v83, v85, v106);

      *(v77 + 14) = v86;
      _os_log_impl(&dword_0, v61, v98, "LiveCaptions Settings: Couldn't get a name for locale %s disambiguated locale: %s", v77, 0x16u);
      swift_arrayDestroy();

      goto LABEL_20;
    }

    v88 = v76;
    v70 = v101;
    v33(v88, v101);
    v33(v73, v70);
    v71 = v21;
LABEL_22:
    v87 = v70;
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
  return result;
}

void LiveCaptionsLanguagesSelection.tableView(_:didSelectRowAt:)(uint64_t a1)
{
  v2 = v1;
  isa = sub_19AF04().super.isa;
  v50.receiver = v1;
  v50.super_class = type metadata accessor for LiveCaptionsLanguagesSelection();
  objc_msgSendSuper2(&v50, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v5 = sub_19AF04().super.isa;
  v6 = [v2 specifierForIndexPath:v5];

  if (v6)
  {
    v7 = [v6 identifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_19BFE4();
      v11 = v10;

      if (v9 == *&v2[OBJC_IVAR___LiveCaptionsLanguagesSelection_clearButtonIdentifier] && v11 == *&v2[OBJC_IVAR___LiveCaptionsLanguagesSelection_clearButtonIdentifier + 8])
      {

        return;
      }

      v13 = sub_19C644();

      if (v13)
      {
        goto LABEL_31;
      }
    }

    v14 = &v2[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier];
    v16 = *&v2[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier];
    v15 = *&v2[OBJC_IVAR___LiveCaptionsLanguagesSelection_selectedLocaleIdentifier + 8];

    v17 = [v6 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = sub_19BFE4();
      v21 = v20;

      if (v15)
      {
        if (v21)
        {
          if (v16 == v19 && v15 == v21)
          {

            return;
          }

          v43 = sub_19C644();

          if (v43)
          {
            goto LABEL_31;
          }

LABEL_19:
          v22 = [v6 identifier];
          if (v22)
          {
            v23 = v22;
            v24 = sub_19BFE4();
            v26 = v25;
          }

          else
          {
            v24 = 0;
            v26 = 0;
          }

          *v14 = v24;
          v14[1] = v26;

          v27 = sub_19C3E4();
          v28 = AXLogLiveTranscription();
          if (!v28)
          {
            __break(1u);
            return;
          }

          v29 = v28;
          if (os_log_type_enabled(v28, v27))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v44 = v31;
            *v30 = 136315138;
            aBlock = *v14;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9520);
            v32 = sub_19C474();
            v34 = sub_1772A0(v32, v33, &v44);

            *(v30 + 4) = v34;
            _os_log_impl(&dword_0, v29, v27, "LiveCaptions Settings: selectedLocaleIdentifier: %s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v31);
          }

          v35 = [objc_opt_self() sharedInstance];
          if (v14[1])
          {

            v36 = sub_19BFB4();
          }

          else
          {
            v36 = 0;
          }

          [v35 setLiveCaptionsSelectedLocaleIdentifier:v36];

          v37 = v14[1];
          if (v37)
          {
            v38 = *v14;
            v39 = AXLiveCaptionsAnalyticsLanguageSelectedEvent;
            v40 = swift_allocObject();
            *(v40 + 16) = v38;
            *(v40 + 24) = v37;
            v48 = sub_176560;
            v49 = v40;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v46 = sub_176568;
            v47 = &block_descriptor_1;
            v41 = _Block_copy(&aBlock);

            v42 = v39;

            AnalyticsSendEventLazy();
            _Block_release(v41);
          }

          [v2 reload];
          goto LABEL_31;
        }

LABEL_18:

        goto LABEL_19;
      }

      if (v21)
      {
        goto LABEL_18;
      }
    }

    else if (v15)
    {
      goto LABEL_18;
    }

LABEL_31:
  }
}

unint64_t sub_17646C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B95B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DAF90;
  *(inited + 32) = sub_19BFE4();
  *(inited + 40) = v1;
  *(inited + 48) = sub_19BFB4();
  v2 = sub_1673C0(inited);
  swift_setDeallocating();
  sub_160CD8(inited + 32, &qword_2B95C0);
  return v2;
}

uint64_t sub_176528()
{

  return _swift_deallocObject(v0, 32, 7);
}

Class sub_176568(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1544A0(0, &qword_2B95B0);
    v4.super.isa = sub_19BF64().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id LiveCaptionsLanguagesSelection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveCaptionsLanguagesSelection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_176904(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1769B0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_176AA8;

  return v6(a1);
}

uint64_t sub_176AA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_176BA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9580);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_176CA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B94E0);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_176DB0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B94E8);
  v10 = *(sub_19AE74() - 8);
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
  v15 = *(sub_19AE74() - 8);
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

char *sub_176F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B95A0);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_17708C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B94F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_17711C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9598);
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

char *sub_1771A4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B94E8);
  v4 = *(sub_19AE74() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1772A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_17736C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_171E6C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_17736C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_177478(a5, a6);
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
    result = sub_19C584();
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

char *sub_177478(uint64_t a1, unint64_t a2)
{
  v3 = sub_1774C4(a1, a2);
  sub_1775F4(&off_259778);
  return v3;
}

char *sub_1774C4(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1776E0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_19C584();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_19C044();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1776E0(v10, 0);
        result = sub_19C544();
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

uint64_t sub_1775F4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_177754(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1776E0(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B95A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_177754(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B95A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_177848(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_17895C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1778C4(v6);
  return sub_19C594();
}
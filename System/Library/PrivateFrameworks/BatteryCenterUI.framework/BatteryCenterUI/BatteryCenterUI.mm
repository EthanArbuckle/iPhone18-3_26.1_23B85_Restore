Swift::Void __swiftcall registerWidgetViewDecoders()()
{
  sub_1C1C4C228();
  sub_1C1C9A828();
  type metadata accessor for BatteryAvocadoArchivableView();
  sub_1C1C4D9B4();
  sub_1C1C9A828();
}

unint64_t sub_1C1C4C228()
{
  result = qword_1ED7C5500;
  if (!qword_1ED7C5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C5500);
  }

  return result;
}

unint64_t sub_1C1C4C280()
{
  result = qword_1ED7C54E8;
  if (!qword_1ED7C54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C54E8);
  }

  return result;
}

uint64_t sub_1C1C4C2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1C1C9B1B8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  BatteryAvocadoArchivableView.init(withSize:andFamily:)(v6, a2, 0.0, 0.0);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t BatteryAvocadoArchivableView.init(withSize:andFamily:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1C1C9B1B8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v15 = type metadata accessor for BatteryAvocadoArchivableView();
  v16 = v15[5];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  swift_storeEnumTagMultiPayload();
  v17 = v15[6];
  *(a2 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184E0);
  swift_storeEnumTagMultiPayload();
  v18 = a2 + v15[7];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v15[8];
  *(a2 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184E8);
  swift_storeEnumTagMultiPayload();
  v20 = v15[9];
  *(a2 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184F0);
  swift_storeEnumTagMultiPayload();
  v21 = a2 + v15[10];
  *v21 = sub_1C1C51248;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0;
  v22 = v15[11];
  v23 = sub_1C1C4CEF4();
  v24 = *v23;
  *(a2 + v22) = *v23;
  sub_1C1C4E714(a1, v10, &qword_1EBF184F8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v25 = v24;
    sub_1C1C4E77C(v10, &qword_1EBF184F8);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (a3 == 0.0 && a4 == 0.0)
    {
      v26 = *(v12 + 8);
      v27 = v24;
      v26(v14, v11);
    }

    else
    {
      v28 = v24;
      sub_1C1C8C71C();
      (*(v12 + 8))(v14, v11);
    }
  }

  sub_1C1C4E168();
  return sub_1C1C4E77C(a1, &qword_1EBF184F8);
}

uint64_t type metadata accessor for BatteryAvocadoArchivableView()
{
  result = qword_1ED7C5F90;
  if (!qword_1ED7C5F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1C1C4C784()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1C1C9A4C8();
  v58 = *(v1 - 8);
  v59 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v57 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1C9B448();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1C9B428();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C1C9B178();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtC15BatteryCenterUI21BatteryCenterObserver_subject;
  v9 = MEMORY[0x1E69E7CC0];
  v63 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF185A0);
  swift_allocObject();
  *&v0[v8] = sub_1C1C9A508();
  v54 = sub_1C1C4D00C(0, &qword_1ED7C5380);
  sub_1C1C9B168();
  v63 = v9;
  sub_1C1C4CF98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF185B0);
  sub_1C1C4CEAC(&qword_1ED7C5398, &unk_1EBF185B0);
  sub_1C1C9B4C8();
  (*(v55 + 104))(v5, *MEMORY[0x1E69E8098], v56);
  *&v0[OBJC_IVAR____TtC15BatteryCenterUI21BatteryCenterObserver_dispatchQueue] = sub_1C1C9B468();
  v10 = [objc_allocWithZone(MEMORY[0x1E698E840]) init];
  *&v0[OBJC_IVAR____TtC15BatteryCenterUI21BatteryCenterObserver_batteryController] = v10;
  v11 = type metadata accessor for BatteryCenterObserver();
  v62.receiver = v0;
  v62.super_class = v11;
  v12 = objc_msgSendSuper2(&v62, sel_init);
  v13 = OBJC_IVAR____TtC15BatteryCenterUI21BatteryCenterObserver_batteryController;
  v14 = *&v12[OBJC_IVAR____TtC15BatteryCenterUI21BatteryCenterObserver_batteryController];
  v15 = *&v12[OBJC_IVAR____TtC15BatteryCenterUI21BatteryCenterObserver_dispatchQueue];
  v16 = v12;
  [v14 addBatteryDeviceObserver:v16 queue:v15];
  v17 = *&v12[v13];

  result = [v17 connectedDevices];
  if (!result)
  {
    goto LABEL_20;
  }

  v19 = result;
  sub_1C1C4D00C(0, &qword_1ED7C5390);
  v20 = sub_1C1C9B338();

  v63 = v20;
  sub_1C1C9A4E8();

  v21 = sub_1C1C4D054();
  v23 = v57;
  v22 = v58;
  v24 = v59;
  (*(v58 + 16))(v57, v21, v59);
  v25 = v16;
  v26 = sub_1C1C9A4A8();
  v27 = sub_1C1C9B418();

  if (!os_log_type_enabled(v26, v27))
  {

LABEL_18:
    (*(v22 + 8))(v23, v24);
    return v25;
  }

  LODWORD(v55) = v27;
  v28 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v63 = v54;
  *v28 = 136315394;
  v29 = sub_1C1C9B608();
  v31 = sub_1C1C4DDB8(v29, v30, &v63);

  *(v28 + 4) = v31;
  v56 = v28;
  *(v28 + 12) = 2080;
  sub_1C1C9A4F8();
  v32 = v61;
  if (v61 >> 62)
  {
    v33 = sub_1C1C9B538();
    if (v33)
    {
      goto LABEL_5;
    }

LABEL_16:

    v35 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v61 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF185D8);
    sub_1C1C4CEAC(&qword_1ED7C53A0, &qword_1EBF185D8);
    v45 = sub_1C1C9B208();
    v47 = v46;

    v48 = sub_1C1C4DDB8(v45, v47, &v63);

    v49 = v56;
    *(v56 + 14) = v48;
    _os_log_impl(&dword_1C1C4A000, v26, v55, "(%s) initial devices: %s", v49, 0x16u);
    v50 = v54;
    swift_arrayDestroy();
    MEMORY[0x1C690AD10](v50, -1, -1);
    MEMORY[0x1C690AD10](v49, -1, -1);

    goto LABEL_18;
  }

  v33 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_16;
  }

LABEL_5:
  v60 = MEMORY[0x1E69E7CC0];
  result = sub_1C1C4E144(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v52 = v26;
    ObjectType = v25;
    v34 = 0;
    v35 = v60;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1C690A2A0](v34, v32);
      }

      else
      {
        v36 = *(v32 + 8 * v34 + 32);
      }

      v37 = v36;
      v38 = [v36 description];
      v39 = sub_1C1C9B258();
      v41 = v40;

      v60 = v35;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1C1C4E144((v42 > 1), v43 + 1, 1);
        v35 = v60;
      }

      ++v34;
      *(v35 + 16) = v43 + 1;
      v44 = v35 + 16 * v43;
      *(v44 + 32) = v39;
      *(v44 + 40) = v41;
    }

    while (v33 != v34);

    v22 = v58;
    v24 = v59;
    v23 = v57;
    v26 = v52;
    v25 = ObjectType;
    goto LABEL_17;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C1C4CEAC(unint64_t *a1, uint64_t *a2)
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

uint64_t *sub_1C1C4CEF4()
{
  if (qword_1ED7C5E80 != -1)
  {
    swift_once();
  }

  return &qword_1ED7C6348;
}

id sub_1C1C4CF44()
{
  result = [objc_allocWithZone(type metadata accessor for BatteryCenterObserver()) init];
  qword_1ED7C6348 = result;
  return result;
}

unint64_t sub_1C1C4CF98()
{
  result = qword_1ED7C5388;
  if (!qword_1ED7C5388)
  {
    sub_1C1C9B428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C5388);
  }

  return result;
}

uint64_t sub_1C1C4D00C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C1C4D078(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1C1C9A4C8();

  return __swift_project_value_buffer(v3, a2);
}

unint64_t sub_1C1C4D0D0()
{
  result = qword_1ED7C54F0;
  if (!qword_1ED7C54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C54F0);
  }

  return result;
}

unint64_t sub_1C1C4D128()
{
  result = qword_1ED7C54F8;
  if (!qword_1ED7C54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C54F8);
  }

  return result;
}

void sub_1C1C4D17C()
{
  sub_1C1C4D300();
  if (v0 <= 0x3F)
  {
    sub_1C1C4D3B8(319, &qword_1EBF17C18, MEMORY[0x1E697DBD0]);
    if (v1 <= 0x3F)
    {
      sub_1C1C4D3B8(319, &qword_1EBF17C10, MEMORY[0x1E697E730]);
      if (v2 <= 0x3F)
      {
        sub_1C1C4D470();
        if (v3 <= 0x3F)
        {
          sub_1C1C4D3B8(319, &qword_1EBF17C20, MEMORY[0x1E6969770]);
          if (v4 <= 0x3F)
          {
            sub_1C1C4D3B8(319, &qword_1EBF17C08, MEMORY[0x1E697F6A0]);
            if (v5 <= 0x3F)
            {
              sub_1C1C4D4C0();
              if (v6 <= 0x3F)
              {
                type metadata accessor for BatteryCenterObserver();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C1C4D300()
{
  if (!qword_1EBF17BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18540);
    v0 = sub_1C1C9A608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF17BF8);
    }
  }
}

void sub_1C1C4D364(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1C9A608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1C4D3B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1C9A608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1C4D40C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C1C4D470()
{
  if (!qword_1EBF17C00)
  {
    v0 = sub_1C1C9A608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF17C00);
    }
  }
}

void sub_1C1C4D4C0()
{
  if (!qword_1EBF17BF0)
  {
    type metadata accessor for AvocadoViewModel();
    sub_1C1C4D924(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
    v0 = sub_1C1C9A628();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF17BF0);
    }
  }
}

uint64_t type metadata accessor for AvocadoViewModel()
{
  result = qword_1ED7C5DB0;
  if (!qword_1ED7C5DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1C4D5A0()
{
  sub_1C1C9A5F8();
  if (v0 <= 0x3F)
  {
    sub_1C1C4D7C8(319, &qword_1ED7C53A8, &qword_1EBF17E60);
    if (v1 <= 0x3F)
    {
      sub_1C1C4D7C8(319, &qword_1ED7C53B0, &qword_1EBF17E78);
      if (v2 <= 0x3F)
      {
        sub_1C1C4D7C8(319, &qword_1ED7C53B8, &qword_1EBF17E90);
        if (v3 <= 0x3F)
        {
          sub_1C1C4D7C8(319, &qword_1ED7C53C8, &qword_1EBF17EA8);
          if (v4 <= 0x3F)
          {
            sub_1C1C4D83C();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1C1C4D7C8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1C1C9A578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1C4D83C()
{
  if (!qword_1ED7C53C0)
  {
    sub_1C1C9A798();
    v0 = sub_1C1C9A578();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7C53C0);
    }
  }
}

uint64_t sub_1C1C4D894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1C4D8DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1C4D924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1C4D96C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1C4D9B4()
{
  result = qword_1ED7C54E0;
  if (!qword_1ED7C54E0)
  {
    type metadata accessor for BatteryAvocadoArchivableView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C54E0);
  }

  return result;
}

uint64_t sub_1C1C4DAE4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C1C9A4C8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C1C9A4B8();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double sub_1C1C4DBCC(void *a1)
{
  v2 = sub_1C1C9B228();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1C9F970;
  v4 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1C1C50624();
  *(inited + 40) = a1;
  v5 = v4;
  v6 = a1;
  sub_1C1C50670(inited);
  swift_setDeallocating();
  sub_1C1C4E77C(inited + 32, &qword_1EBF18A08);
  type metadata accessor for Key();
  sub_1C1C4E7DC(&qword_1ED7C5360, type metadata accessor for Key);
  v7 = sub_1C1C9B1D8();

  [v2 sizeWithAttributes_];
  v9 = v8;

  return v9;
}

unint64_t sub_1C1C4DD2C()
{
  result = qword_1ED7C5368;
  if (!qword_1ED7C5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C5368);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1C1C4DDB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C1C4DE84(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C1C4DF90(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C1C4DE84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C1C6D3D4(a5, a6);
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
    result = sub_1C1C9B518();
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

uint64_t sub_1C1C4DF90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

char *sub_1C1C4E038(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF18640);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C1C4E144(char *a1, int64_t a2, char a3)
{
  result = sub_1C1C4E038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C1C4E168()
{
  sub_1C1C9A458();
  MEMORY[0x1EEE9AC00]();
  v40 = &v37 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181A8);
  v1 = *(v39 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v37 - v2;
  v4 = sub_1C1C4E5F8(MEMORY[0x1E69E7CC0]);
  v41 = 0;
  v5 = 0;
  v6 = (v1 + 8);
  v38 = *MEMORY[0x1E69DDCF8];
  v7 = 0.0;
  if (1.0 > 0.0)
  {
    goto LABEL_4;
  }

LABEL_2:
  v8 = 1.0;
  if (!((v7 != 1.0) | v41 & 1))
  {
    v41 = 1;
    while (1)
    {
      v42 = v7 * 100.0;
      sub_1C1C9A448();
      sub_1C1C4DD2C();
      sub_1C1C9A428();
      sub_1C1C4CEAC(&unk_1ED7C5370, &qword_1EBF181A8);
      v10 = v39;
      sub_1C1C9B1C8();
      (*v6)(v3, v10);
      v12 = v43;
      v11 = v44;
      v13 = [objc_opt_self() preferredFontForTextStyle_];
      v14 = sub_1C1C4DBCC(v13);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v4;
      v17 = sub_1C1C509D8(v14);
      v18 = v4[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        sub_1C1C9B5B8();
        __break(1u);
        return;
      }

      v21 = v16;
      if (v4[3] >= v20)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = v43;
          if (v16)
          {
            goto LABEL_14;
          }
        }

        else
        {
          sub_1C1C8DB54();
          v4 = v43;
          if (v21)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        sub_1C1C50A24(v20, isUniquelyReferenced_nonNull_native);
        v22 = sub_1C1C509D8(v14);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_29;
        }

        v17 = v22;
        v4 = v43;
        if (v21)
        {
LABEL_14:
          v27 = (v4[7] + 16 * v17);
          *v27 = v12;
          v27[1] = v11;

          goto LABEL_15;
        }
      }

      v4[(v17 >> 6) + 8] |= 1 << v17;
      *(v4[6] + 8 * v17) = v14;
      v24 = (v4[7] + 16 * v17);
      *v24 = v12;
      v24[1] = v11;
      v25 = v4[2];
      v9 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v9)
      {
        goto LABEL_28;
      }

      v4[2] = v26;
LABEL_15:
      v7 = v8;
      if (v8 >= 1.0)
      {
        goto LABEL_2;
      }

LABEL_4:
      v9 = __OFADD__(v5++, 1);
      if (v9)
      {
        goto LABEL_27;
      }

      v8 = v5 * 0.01 + 0.0;
    }
  }

  v29 = sub_1C1C59028(v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    if (v4[2])
    {
      sub_1C1C509D8(*&v29);
      if (v32)
      {

        v33 = *sub_1C1C59138();
        if (v33)
        {
          v34 = v33;
          v35 = sub_1C1C9B228();

          sub_1C1C55C1C();

          v36 = sub_1C1C9B228();

          [v34 setObject:v35 forKey:v36];

          return;
        }
      }
    }
  }
}

void *sub_1C1C4E5F8(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18588);
  v3 = sub_1C1C9B568();
  v4 = a1[4];
  v6 = *(a1 + 5);
  v5 = *(a1 + 6);
  v7 = sub_1C1C509D8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1C1C509D8(v4);
    v11 = v16;
    result = *&v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1C4E714(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1C4E77C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1C4E7DC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C1C4E838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18408);
  v3 = MEMORY[0x1EEE9AC00](v143);
  v146 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v144 = (&v124 - v5);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18410);
  MEMORY[0x1EEE9AC00](v127);
  v126 = (&v124 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18418);
  v139 = *(v7 - 8);
  *&v140 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v124 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18420);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v154 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v156 = &v124 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18428);
  MEMORY[0x1EEE9AC00](v135);
  v14 = &v124 - v13;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18430);
  v15 = MEMORY[0x1EEE9AC00](v138);
  v136 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v124 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18438);
  v141 = *(v18 - 8);
  v142 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v153 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v124 - v21;
  v22 = sub_1C1C9A7B8();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v124 - v27;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18440);
  v29 = MEMORY[0x1EEE9AC00](v151);
  v152 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v131 = &v124 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v157 = &v124 - v33;
  v34 = [objc_opt_self() labelColor];
  sub_1C1C9AE68();
  v132 = type metadata accessor for BCUIRingAndGlyphView(0);
  v130 = sub_1C1C9AED8();

  sub_1C1C503B8();
  sub_1C1C9A638();
  v129 = sub_1C1C9B0E8();
  v36 = v35;
  v150 = MEMORY[0x1E697E7E0];
  sub_1C1C87FD8(&qword_1EBF17D38, MEMORY[0x1E697E7E0], v28);
  LODWORD(v149) = *MEMORY[0x1E697E7D8];
  v147 = *(v23 + 104);
  v148 = v23 + 104;
  v133 = v22;
  v147(v26);
  v134 = v26;
  v37 = sub_1C1C9A7A8();
  v38 = *(v23 + 8);
  v128 = v38;
  v38(v26, v22);
  v38(v28, v22);
  if (v37)
  {
    v39 = 1.57079633;
  }

  else
  {
    v39 = -1.57079633;
  }

  sub_1C1C9B158();
  v160 = xmmword_1C1C9E570;
  v161 = v169;
  v162 = v170;
  *&v163 = v171;
  *(&v163 + 1) = v130;
  LOWORD(v164) = 256;
  *(&v164 + 1) = v129;
  *&v165 = v36;
  *(&v165 + 1) = v39;
  *&v166 = v40;
  *(&v166 + 1) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18448);
  sub_1C1C8B5E0();
  v42 = v131;
  sub_1C1C9AE08();
  v167[4] = v164;
  v167[5] = v165;
  v167[6] = v166;
  v167[0] = v160;
  v167[1] = v161;
  v167[2] = v162;
  v167[3] = v163;
  sub_1C1C4E77C(v167, &qword_1EBF18448);
  sub_1C1C9A7C8();
  sub_1C1C4E77C(v42, &qword_1EBF18440);
  v43 = v132;
  v44 = (a1 + *(v132 + 72));
  v45 = *v44;
  v46 = v44[1];
  *&v160 = v45;
  *(&v160 + 1) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
  sub_1C1C9AFD8();
  v47 = v158;
  v48 = (a1 + v43[20]);
  v50 = *v48;
  v49 = v48[1];
  *&v160 = v50;
  *(&v160 + 1) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18400);
  sub_1C1C9AFD8();
  v131 = v158;
  sub_1C1C503B8();
  sub_1C1C9A638();
  v51 = sub_1C1C9B0E8();
  v129 = v52;
  v130 = v51;
  sub_1C1C87FD8(&qword_1EBF17D38, v150, v28);
  v54 = v133;
  v53 = v134;
  (v147)(v134, v149, v133);
  v55 = sub_1C1C9A7A8();
  v56 = v53;
  v57 = v128;
  v128(v56, v54);
  v57(v28, v54);
  if (v55)
  {
    v58 = 1.57079633;
  }

  else
  {
    v58 = -1.57079633;
  }

  sub_1C1C9B158();
  v60 = v59;
  v62 = v61;
  v63 = a1 + v43[8];
  v64 = *(v63 + 8);
  v147 = *v63;
  v66 = *(v63 + 16);
  v65 = *(v63 + 24);
  *&v160 = v147;
  *(&v160 + 1) = v64;
  v150 = v66;
  v151 = v64;
  *&v161 = v66;
  *(&v161 + 1) = v65;
  v149 = v65;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  MEMORY[0x1C6909DC0](&v158);
  v67 = v158;
  v68 = &v14[*(v135 + 36)];
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18358);
  sub_1C1C9A858();
  *v68 = swift_getKeyPath();
  v69 = a1;
  *v14 = 0;
  *(v14 + 1) = v47;
  v70 = v167[8];
  *(v14 + 1) = v167[7];
  *(v14 + 2) = v70;
  v71 = v131;
  *(v14 + 6) = v168;
  *(v14 + 7) = v71;
  *(v14 + 32) = 256;
  v72 = v129;
  *(v14 + 9) = v130;
  *(v14 + 10) = v72;
  *(v14 + 11) = v58;
  *(v14 + 12) = v60;
  *(v14 + 13) = v62;
  *(v14 + 7) = v67;
  v73 = v156;
  sub_1C1C8B698();
  v74 = v136;
  sub_1C1C9AE08();
  sub_1C1C4E77C(v14, &qword_1EBF18428);
  v75 = v137;
  sub_1C1C9A7C8();
  sub_1C1C4E77C(v74, &qword_1EBF18430);
  sub_1C1C8B77C(&qword_1EBF17B50, &qword_1EBF18430, &unk_1C1C9E890, sub_1C1C8B698);
  sub_1C1C9AD58();
  sub_1C1C4E77C(v75, &qword_1EBF18430);
  v76 = (a1 + v43[7]);
  v77 = v76[1];
  v78 = v76[2];
  *&v160 = *v76;
  *(&v160 + 1) = v77;
  *&v161 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0](&v158, v79);
  v80 = 1;
  if (*(a1 + v43[16]) / -360.0 + 1.0 < *&v158)
  {
    v82 = v148;
    v81 = v149;
    v84 = v150;
    v83 = v151;
    v85 = a1 + v43[12];
    v86 = *v85;
    v87 = *(v85 + 8);
    LOBYTE(v85) = *(v85 + 16);
    *&v160 = v86;
    *(&v160 + 1) = v87;
    LOBYTE(v161) = v85;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
    MEMORY[0x1C6909DC0](&v158, v88);
    if (v158)
    {
      v80 = 1;
    }

    else
    {
      v89 = sub_1C1C9B0E8();
      v90 = v126;
      *v126 = v89;
      *(v90 + 8) = v91;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18470);
      sub_1C1C89B90(v69, v90 + *(v92 + 44));
      *&v160 = v147;
      *(&v160 + 1) = v83;
      *&v161 = v84;
      *(&v161 + 1) = v81;
      MEMORY[0x1C6909DC0](&v158, v82);
      v93 = v158;
      *(v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18478) + 52)) = v93;
      v94 = (v90 + *(v127 + 36));
      sub_1C1C9A858();
      *v94 = swift_getKeyPath();
      sub_1C1C8B830();
      v95 = v125;
      sub_1C1C9ADD8();
      sub_1C1C4E77C(v90, &qword_1EBF18410);
      sub_1C1C4F828(v95, v73);
      v80 = 0;
    }
  }

  (*(v139 + 56))(v73, v80, 1, v140);
  v96 = v69 + v43[9];
  v97 = *v96;
  v98 = *(v96 + 16);
  v160 = v97;
  *&v161 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18378);
  sub_1C1C9B048();
  v140 = v158;
  v99 = v159;
  v100 = type metadata accessor for DeviceGlyph(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v101 = v144;
  sub_1C1C9B048();
  v102 = v69 + v43[14];
  v103 = *v102;
  v104 = *(v102 + 8);
  LOBYTE(v160) = v103;
  *(&v160 + 1) = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  v105 = v158;
  v106 = *sub_1C1C54FD0();
  *v101 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v107 = v101 + *(v100 + 20);
  *v107 = v140;
  *(v107 + 2) = v99;
  v108 = v101 + *(v100 + 28);
  LOBYTE(v158) = v105;
  sub_1C1C9AFC8();
  v109 = *(&v160 + 1);
  *v108 = v160;
  *(v108 + 1) = v109;
  *&v160 = v106;
  sub_1C1C4DD2C();
  sub_1C1C9A668();
  *&v160 = v147;
  *(&v160 + 1) = v151;
  *&v161 = v150;
  *(&v161 + 1) = v149;
  MEMORY[0x1C6909DC0](&v158, v148);
  v110 = v158;
  *(v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18460) + 52)) = v110;
  sub_1C1C9A6E8();
  sub_1C1C9A6D8();
  sub_1C1C9A6F8();

  sub_1C1C54F80();

  v111 = sub_1C1C9A708();

  *(v101 + *(v143 + 36)) = v111;
  v112 = v152;
  sub_1C1C4E714(v157, v152, &qword_1EBF18440);
  v114 = v141;
  v113 = v142;
  v115 = *(v141 + 16);
  v116 = v153;
  v115(v153, v155, v142);
  sub_1C1C4F7B8(v156, v154);
  v117 = v146;
  sub_1C1C4E714(v101, v146, &qword_1EBF18408);
  v118 = v112;
  v119 = v145;
  sub_1C1C4E714(v118, v145, &qword_1EBF18440);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18468);
  v115((v119 + v120[12]), v116, v113);
  v121 = v154;
  sub_1C1C4F7B8(v154, v119 + v120[16]);
  sub_1C1C4E714(v117, v119 + v120[20], &qword_1EBF18408);
  sub_1C1C4E77C(v101, &qword_1EBF18408);
  sub_1C1C4E77C(v156, &qword_1EBF18420);
  v122 = *(v114 + 8);
  v122(v155, v113);
  sub_1C1C4E77C(v157, &qword_1EBF18440);
  sub_1C1C4E77C(v117, &qword_1EBF18408);
  sub_1C1C4E77C(v121, &qword_1EBF18420);
  v122(v153, v113);
  return sub_1C1C4E77C(v152, &qword_1EBF18440);
}

uint64_t sub_1C1C4F7B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C4F828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C4F898@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v2 = sub_1C1C9A798();
  v101 = *(v2 - 8);
  v102 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v100 = v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1C9AAA8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BCUIRingAndGlyphView(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v8;
  v10 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18380);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v86 - v12);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18388);
  v89 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v107 = v86 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18390);
  v92 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v106 = v86 - v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18398);
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v87 = v86 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF183A0);
  v98 = *(v17 - 8);
  v99 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v96 = v86 - v18;
  *v13 = sub_1C1C9B0E8();
  v13[1] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF183A8);
  sub_1C1C4E838(v1, v13 + *(v20 + 44));
  v21 = v1;
  sub_1C1C503B8();
  v22 = sub_1C1C9AC18();
  sub_1C1C9A5D8();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF183B0) + 36);
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_1C1C52D18(v1, v10);
  v32 = *(v7 + 80);
  v33 = (v32 + 16) & ~v32;
  v105 = v32;
  v34 = swift_allocObject();
  sub_1C1C52CB4(v10, v34 + v33);
  v35 = (v13 + *(v11 + 36));
  *v35 = sub_1C1C8A2E8;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  v36 = (v1 + *(v6 + 28));
  v37 = v36[1];
  v38 = v36[2];
  v94 = *v36;
  *&v109 = v94;
  *(&v109 + 1) = v37;
  v93 = v37;
  v110 = v38;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0](&v108);
  v86[0] = v10;
  sub_1C1C52D18(v1, v10);
  v86[1] = v9;
  v39 = swift_allocObject();
  sub_1C1C52CB4(v10, v39 + v33);
  v40 = sub_1C1C54FDC();
  v41 = sub_1C1C54F20();
  sub_1C1C9AE48();

  sub_1C1C4E77C(v13, &qword_1EBF18380);
  v42 = v6;
  v43 = v1 + *(v6 + 40);
  v44 = *v43;
  v45 = *(v43 + 8);
  LOBYTE(v43) = *(v43 + 16);
  *&v109 = v44;
  *(&v109 + 1) = v45;
  LOBYTE(v110) = v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v108);
  v47 = v86[0];
  sub_1C1C52D18(v1, v86[0]);
  v48 = swift_allocObject();
  sub_1C1C52CB4(v47, v48 + v33);
  *&v109 = v11;
  *(&v109 + 1) = MEMORY[0x1E69E7DE0];
  v110 = v40;
  v111 = v41;
  v49 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v107;
  v52 = v88;
  sub_1C1C9AE48();

  (*(v89 + 8))(v51, v52);
  v53 = v21 + v49[11];
  v54 = *v53;
  v55 = *(v53 + 8);
  LOBYTE(v53) = *(v53 + 16);
  *&v109 = v54;
  *(&v109 + 1) = v55;
  LOBYTE(v110) = v53;
  v107 = v46;
  v56 = v46;
  v57 = MEMORY[0x1E69E6388];
  MEMORY[0x1C6909DC0](&v108, v56);
  sub_1C1C52D18(v21, v47);
  v58 = swift_allocObject() + v33;
  v59 = v87;
  sub_1C1C52CB4(v47, v58);
  *&v109 = v52;
  v60 = MEMORY[0x1E69E6370];
  *(&v109 + 1) = MEMORY[0x1E69E6370];
  v110 = OpaqueTypeConformance2;
  v111 = v57;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v90;
  v63 = v106;
  sub_1C1C9AE48();

  (*(v92 + 8))(v63, v62);
  v64 = v21 + v49[9];
  v65 = *v64;
  v66 = *(v64 + 16);
  v109 = v65;
  v110 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18378);
  MEMORY[0x1C6909DC0](&v108, v67);
  v68 = v108;
  if (v108 != 0.0)
  {
  }

  *&v109 = v62;
  *(&v109 + 1) = v60;
  v110 = v61;
  v111 = v57;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v96;
  v71 = v97;
  sub_1C1C5261C(*&v68 != 0, v97, v69, v96);
  (*(v95 + 8))(v59, v71);
  sub_1C1C9AA98();
  sub_1C1C9AA88();
  v72 = v21 + v49[6];
  v73 = *v72;
  v75 = *(v72 + 16);
  v74 = *(v72 + 24);
  v109 = v73;
  v110 = v75;
  v111 = v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18370);
  MEMORY[0x1C6909DC0](&v108, v76);
  sub_1C1C9AA78();

  sub_1C1C9AA88();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v78 = v100;
  MEMORY[0x1C6909DC0](v77);
  v79 = sub_1C1C52B9C();
  (*(v101 + 8))(v78, v102);
  *&v109 = v94;
  *(&v109 + 1) = v93;
  v110 = v38;
  MEMORY[0x1C6909DC0](&v108, v91);
  v80 = sub_1C1C54F08(v108);
  sub_1C1C527FC(v79, v80);
  sub_1C1C9AA78();

  sub_1C1C9AA88();
  v81 = v21 + v49[12];
  v82 = *v81;
  v83 = *(v81 + 8);
  LOBYTE(v81) = *(v81 + 16);
  *&v109 = v82;
  *(&v109 + 1) = v83;
  LOBYTE(v110) = v81;
  MEMORY[0x1C6909DC0](&v108, v107);
  sub_1C1C54D24(SLOBYTE(v108));
  sub_1C1C9AA78();

  sub_1C1C9AA88();
  sub_1C1C9AAC8();
  *&v109 = v71;
  *(&v109 + 1) = v69;
  swift_getOpaqueTypeConformance2();
  v84 = v99;
  sub_1C1C9ADC8();

  return (*(v98 + 8))(v70, v84);
}

uint64_t sub_1C1C503B8()
{
  v1 = sub_1C1C9A798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView(0) + 56));
  v6 = *v5;
  v7 = *(v5 + 1);
  v11[16] = v6;
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  v8 = v11[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  if (v8 == 1)
  {
    sub_1C1C98F8C();
  }

  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_1C1C5056C(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void type metadata accessor for Key()
{
  if (!qword_1ED7C5350)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED7C5350);
    }
  }
}

unint64_t sub_1C1C50624()
{
  result = qword_1ED7C5348;
  if (!qword_1ED7C5348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7C5348);
  }

  return result;
}

unint64_t sub_1C1C50670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF18A70);
    v3 = sub_1C1C9B568();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1C50778(v4, &v11);
      v5 = v11;
      result = sub_1C1C507E8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1C50980(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_1C1C50778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1C507E8(uint64_t a1)
{
  sub_1C1C9B258();
  sub_1C1C9B5D8();
  sub_1C1C9B288();
  v2 = sub_1C1C9B5E8();

  return sub_1C1C5087C(a1, v2);
}

unint64_t sub_1C1C5087C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C1C9B258();
      v8 = v7;
      if (v6 == sub_1C1C9B258() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C1C9B5A8();

      if ((v11 & 1) == 0)
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

_OWORD *sub_1C1C50980(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C1C509D8(double a1)
{
  v2 = sub_1C1C9B5C8();

  return sub_1C1C5056C(v2, a1);
}

uint64_t sub_1C1C50A24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18588);
  result = sub_1C1C9B558();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1C1C9B5C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

char *sub_1C1C50D20(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1C1C9A4C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1C4D054();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_1C1C9A4A8();
  v10 = sub_1C1C9B418();
  v11 = a1;

  if (!os_log_type_enabled(v9, v10))
  {

    (*(v5 + 8))(v7, v4);
LABEL_16:
    v46 = v11;
    return sub_1C1C9A4E8();
  }

  v40 = v10;
  v42 = v9;
  v43 = v7;
  v44 = v5;
  v12 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v46 = v39;
  *v12 = 136315394;
  v13 = sub_1C1C9B608();
  v15 = sub_1C1C4DDB8(v13, v14, &v46);

  *(v12 + 4) = v15;
  v41 = v12;
  *(v12 + 12) = 2080;
  if (v11 >> 62)
  {
    v16 = sub_1C1C9B538();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
LABEL_15:
    v45 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF185D8);
    sub_1C1C4CEAC(&qword_1ED7C53A0, &qword_1EBF185D8);
    v30 = sub_1C1C9B208();
    v32 = v31;

    v33 = sub_1C1C4DDB8(v30, v32, &v46);

    v35 = v41;
    v34 = v42;
    *(v41 + 14) = v33;
    _os_log_impl(&dword_1C1C4A000, v34, v40, "(%s) devices changed: %s", v35, 0x16u);
    v36 = v39;
    swift_arrayDestroy();
    MEMORY[0x1C690AD10](v36, -1, -1);
    MEMORY[0x1C690AD10](v35, -1, -1);

    (*(v44 + 8))(v43, v4);
    goto LABEL_16;
  }

  v45 = MEMORY[0x1E69E7CC0];
  result = sub_1C1C4E144(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v37 = v4;
    v38 = v2;
    v19 = 0;
    v17 = v45;
    v20 = v11;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1C690A2A0](v19, v20);
      }

      else
      {
        v21 = *(v20 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = [v21 description];
      v24 = sub_1C1C9B258();
      v26 = v25;

      v45 = v17;
      v28 = *(v17 + 16);
      v27 = *(v17 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C1C4E144((v27 > 1), v28 + 1, 1);
        v17 = v45;
      }

      ++v19;
      *(v17 + 16) = v28 + 1;
      v29 = v17 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v20 = v11;
    }

    while (v16 != v19);
    v4 = v37;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1C5111C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1C51154()
{
  if (!qword_1ED7C4BD8)
  {
    sub_1C1C4DD2C();
    v0 = sub_1C1C9A688();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7C4BD8);
    }
  }
}

uint64_t sub_1C1C511B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1C4D924(&qword_1ED7C54E0, type metadata accessor for BatteryAvocadoArchivableView);

  return MEMORY[0x1EEDDA028](a1, a2, a3, v6);
}

uint64_t sub_1C1C51248()
{
  v0 = sub_1C1C9A5F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1C9A798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4CEF4();

  sub_1C1C9A4F8();

  v8 = v10[1];
  (*(v5 + 104))(v7, *MEMORY[0x1E697E6F8], v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBB8], v0);
  return sub_1C1C56454(v8, v7, v3);
}

uint64_t sub_1C1C51410(uint64_t a1, char *a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v51 = a1;
  v48 = sub_1C1C9A798();
  v46 = *(v48 - 8);
  v4 = (MEMORY[0x1EEE9AC00])();
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EB0);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E98);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E68);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  *(v3 + OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel_maxChargeRings) = 4;
  *(v3 + OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel_maxChargeRows) = 6;
  v20 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__devices;
  v21 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E60);
  sub_1C1C9A518();
  (*(v17 + 32))(v3 + v20, v19, v16);
  v22 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__chargeRingsData;
  v52 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E78);
  sub_1C1C9A518();
  (*(v13 + 32))(v3 + v22, v15, v12);
  v23 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__chargeRowsData;
  v52 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E90);
  sub_1C1C9A518();
  (*(v40 + 32))(v3 + v23, v11, v41);
  v24 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__systemMediumWidth;
  v52 = 0;
  v53 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EA8);
  v25 = v42;
  sub_1C1C9A518();
  (*(v43 + 32))(v3 + v24, v25, v44);
  v27 = v45;
  v26 = v46;
  v28 = *(v46 + 16);
  v29 = v48;
  v30 = v49;
  v28(v45, v49, v48);
  swift_beginAccess();
  v28(v47, v27, v29);
  sub_1C1C9A518();
  v31 = *(v26 + 8);
  v32 = v29;
  v31(v27, v29);
  swift_endAccess();
  v33 = OBJC_IVAR____TtC15BatteryCenterUI16AvocadoViewModel__colorScheme;
  v34 = sub_1C1C9A5F8();
  v35 = *(v34 - 8);
  v36 = v3 + v33;
  v37 = v50;
  (*(v35 + 16))(v36, v50, v34);
  (*(*v3 + 456))(v51);
  (*(v35 + 8))(v37, v34);
  v31(v30, v32);
  return v3;
}

uint64_t sub_1C1C519C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1C51A2C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C1C51A8C(char a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = sub_1C1C9A458();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181B0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  if (a1)
  {
    v15 = a2;
    sub_1C1C9A448();
    sub_1C1C4DD2C();
    sub_1C1C9A438();
    sub_1C1C4CEAC(&qword_1ED7C5340, &qword_1EBF181B0);
    sub_1C1C9B1C8();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v15 = a2 * 100.0;
    sub_1C1C9A448();
    sub_1C1C4DD2C();
    sub_1C1C9A428();
    sub_1C1C4CEAC(&unk_1ED7C5370, &qword_1EBF181A8);
    sub_1C1C9B1C8();
    (*(v5 + 8))(v7, v4);
  }

  return v16;
}

uint64_t sub_1C1C51D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v77 = a2;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = (&v52 - v4);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v79);
  v75 = &v52 - v5;
  v74 = type metadata accessor for BCUIChargeRingView(0);
  v6 = (v2 + *(v74 + 20));
  v7 = v6[3];
  v152 = v6[2];
  v153 = v7;
  v154 = *(v6 + 8);
  v8 = v6[1];
  v150 = *v6;
  v151 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  sub_1C1C9B048();
  swift_getKeyPath();
  v152 = v133[2];
  v153 = v133[3];
  v154 = v134;
  v150 = v133[0];
  v151 = v133[1];
  sub_1C1C9B038();

  sub_1C1C4E77C(v133, &qword_1EBF18188);
  v72 = v130;
  v73 = v129;
  v70 = v132;
  v71 = v131;
  v9 = v6[3];
  v147 = v6[2];
  v148 = v9;
  v149 = *(v6 + 8);
  v10 = v6[1];
  v145 = *v6;
  v146 = v10;
  sub_1C1C9B048();
  swift_getKeyPath();
  v126 = v135[2];
  v127 = v135[3];
  v128 = v136;
  v124 = v135[0];
  v125 = v135[1];
  sub_1C1C9B038();

  sub_1C1C4E77C(v135, &qword_1EBF18188);
  v68 = v122;
  v69 = v121;
  v11 = v123;
  v12 = v6[3];
  v147 = v6[2];
  v148 = v12;
  v149 = *(v6 + 8);
  v13 = v6[1];
  v145 = *v6;
  v146 = v13;
  sub_1C1C9B048();
  swift_getKeyPath();
  v118 = v137[2];
  v119 = v137[3];
  v120 = v138;
  v116 = v137[0];
  v117 = v137[1];
  sub_1C1C9B038();

  sub_1C1C4E77C(v137, &qword_1EBF18188);
  v67 = v113;
  v66 = v114;
  v65 = v115;
  v14 = v6[3];
  v147 = v6[2];
  v148 = v14;
  v149 = *(v6 + 8);
  v15 = v6[1];
  v145 = *v6;
  v146 = v15;
  sub_1C1C9B048();
  swift_getKeyPath();
  v110 = v139[2];
  v111 = v139[3];
  v112 = v140;
  v108 = v139[0];
  v109 = v139[1];
  sub_1C1C9B038();

  sub_1C1C4E77C(v139, &qword_1EBF18188);
  v64 = v106;
  v63 = v107;
  v16 = v6[3];
  v147 = v6[2];
  v148 = v16;
  v149 = *(v6 + 8);
  v17 = v6[1];
  v145 = *v6;
  v146 = v17;
  sub_1C1C9B048();
  swift_getKeyPath();
  v103 = v141[2];
  v104 = v141[3];
  v105 = v142;
  v101 = v141[0];
  v102 = v141[1];
  sub_1C1C9B038();

  sub_1C1C4E77C(v141, &qword_1EBF18188);
  v61 = v99;
  v62 = v98;
  v60 = v100;
  v18 = v6[3];
  v147 = v6[2];
  v148 = v18;
  v149 = *(v6 + 8);
  v19 = v6[1];
  v145 = *v6;
  v146 = v19;
  sub_1C1C9B048();
  swift_getKeyPath();
  v95 = v143[2];
  v96 = v143[3];
  v97 = v144;
  v93 = v143[0];
  v94 = v143[1];
  sub_1C1C9B038();

  sub_1C1C4E77C(v143, &qword_1EBF18188);
  v58 = v91;
  v59 = v90;
  v56 = v92;
  v20 = v6[3];
  v87 = v6[2];
  v88 = v20;
  v89 = *(v6 + 8);
  v21 = v6[1];
  v85 = *v6;
  v86 = v21;
  sub_1C1C9B048();
  swift_getKeyPath();
  v87 = v147;
  v88 = v148;
  v89 = v149;
  v85 = v145;
  v86 = v146;
  sub_1C1C9B038();

  sub_1C1C4E77C(&v145, &qword_1EBF18188);
  v22 = v83;
  v53 = v82;
  v23 = v84;
  v24 = v74;
  v25 = v75;
  v57 = *(v74 + 24);
  v26 = v78;
  sub_1C1C9B048();
  v27 = (v26 + *(v24 + 28));
  LODWORD(v74) = *v27;
  v55 = *(v27 + 1);
  v80 = v74;
  v81 = v55;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  v28 = v76;
  v29 = sub_1C1C5306C(v76);
  v30 = sub_1C1C53068(v29);
  v31 = v77;
  sub_1C1C52D7C(v28, v73, v72, v71, v70, v69, v68, v67, v77, v11, v30, v66, v65, v64, v63, v62, v61, v60, v59, v58, v56, v53, v22, v23, v25);
  v32 = v6[3];
  v126 = v6[2];
  v127 = v32;
  v128 = *(v6 + 8);
  v33 = v6[1];
  v124 = *v6;
  v125 = v33;
  sub_1C1C9B048();
  v34 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18710) + 36));
  v35 = type metadata accessor for BCUIBoltView(0);
  sub_1C1C9B048();
  LOBYTE(v124) = v74;
  *(&v124 + 1) = v55;
  sub_1C1C9AFD8();
  LOBYTE(v2) = v116;
  v36 = *sub_1C1C54EEC();
  v37 = *sub_1C1C54F74();
  *v34 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  swift_storeEnumTagMultiPayload();
  v38 = v34 + v35[5];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = v35[6];
  *(v34 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v40 = v34 + v35[7];
  v41 = v153;
  *(v40 + 2) = v152;
  *(v40 + 3) = v41;
  *(v40 + 8) = v154;
  v42 = v151;
  *v40 = v150;
  *(v40 + 1) = v42;
  v43 = v34 + v35[9];
  LOBYTE(v116) = v2;
  sub_1C1C9AFC8();
  v44 = *(&v124 + 1);
  *v43 = v124;
  *(v43 + 1) = v44;
  v45 = (v34 + v35[10]);
  *&v116 = 0;
  sub_1C1C9AFC8();
  v46 = *(&v124 + 1);
  *v45 = v124;
  v45[1] = v46;
  *&v124 = v36;
  sub_1C1C4DD2C();
  sub_1C1C9A668();
  *&v124 = v37;
  sub_1C1C9A668();
  v47 = sub_1C1C9B0E8();
  v49 = v48;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18718);
  v51 = (v34 + *(result + 36));
  *v51 = v47;
  v51[1] = v49;
  return result;
}

uint64_t sub_1C1C525D0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1C9B0D8();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF186B0);
  return sub_1C1C51D64(v1, a1 + *(v4 + 44));
}

uint64_t sub_1C1C5261C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1C1C9A7D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  v20 = a1;
  MEMORY[0x1C6909BE0](&v20, a2, &type metadata for AccessibilityConditionallyCombined, a3);
  v15 = sub_1C1C54E98();
  v19[1] = a3;
  v19[2] = v15;
  swift_getWitnessTable();
  v16 = *(v9 + 16);
  v16(v14, v12, v8);
  v17 = *(v9 + 8);
  v17(v12, v8);
  v16(a4, v14, v8);
  return (v17)(v14, v8);
}

uint64_t sub_1C1C52800@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A18);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_1C1C9A798();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, v2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = sub_1C1C9B478();
  sub_1C1C9AAF8();
  v13 = sub_1C1C9AAE8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    sub_1C1C4E77C(v6, &qword_1EBF18A10);
    if (qword_1EBF18D70 != -1)
    {
      swift_once();
    }

    v15 = sub_1C1C9A4C8();
    __swift_project_value_buffer(v15, qword_1EBF19A80);
    v16 = v12;
    v17 = sub_1C1C9A4A8();
    v18 = sub_1C1C9B3F8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1C1C4DDB8(0x5463696D616E7944, 0xEF657A6953657079, &v26);
      *(v19 + 12) = 2080;
      v21 = sub_1C1C9B258();
      v23 = sub_1C1C4DDB8(v21, v22, &v26);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_1C1C4A000, v17, v18, "(%s) Unable to convert UIContentSizeCategory of %s to ContentSizeCategory.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C690AD10](v20, -1, -1);
      MEMORY[0x1C690AD10](v19, -1, -1);
    }

    else
    {
    }

    return (*(v14 + 104))(a1, *MEMORY[0x1E697F668], v13);
  }

  else
  {

    return (*(v14 + 32))(a1, v6, v13);
  }
}

BOOL sub_1C1C52B9C()
{
  v0 = sub_1C1C9AAE8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7C5550 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED7C5558;
  sub_1C1C52800(v3);
  v5 = sub_1C1C530D4(v3, v4);
  (*(v1 + 8))(v3, v0);
  return !v5;
}

uint64_t sub_1C1C52CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BCUIRingAndGlyphView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C52D18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BCUIRingAndGlyphView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C52D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  sub_1C1C519C4(a1, a9, &qword_1EBF17D80);
  v30 = type metadata accessor for BCUIRingAndGlyphView(0);
  v31 = v30[5];
  *(a9 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v32 = (a9 + v30[6]);
  *v32 = a2;
  v32[1] = a3;
  v32[2] = a4;
  v32[3] = a5;
  v33 = a9 + v30[7];
  *v33 = a6;
  *(v33 + 8) = a7;
  *(v33 + 16) = a10;
  v34 = a9 + v30[8];
  *v34 = a8;
  *(v34 + 8) = a12;
  *(v34 + 24) = a13;
  v35 = a9 + v30[9];
  *v35 = a14;
  *(v35 + 16) = a15;
  v36 = a9 + v30[10];
  *v36 = a16;
  *(v36 + 8) = a17;
  *(v36 + 16) = a18;
  v37 = a9 + v30[11];
  *v37 = a19;
  *(v37 + 8) = a20;
  *(v37 + 16) = a21;
  v38 = a9 + v30[12];
  *v38 = a22;
  *(v38 + 8) = a23;
  *(v38 + 16) = a24;
  sub_1C1C519C4(a25, a9 + v30[13], &qword_1EBF17FA0);
  v39 = a9 + v30[14];
  sub_1C1C9AFC8();
  *v39 = v49;
  *(v39 + 8) = v50;
  sub_1C1C4DD2C();
  sub_1C1C9A668();
  *(a9 + v30[16]) = 0x4032000000000000;
  *(a9 + v30[17]) = 0x3FC0A3D70A3D70A4;
  v40 = a9 + v30[18];
  sub_1C1C9AFC8();
  *v40 = a11;
  *(v40 + 8) = v50;
  v41 = a9 + v30[19];
  sub_1C1C9AFC8();
  *v41 = a11;
  *(v41 + 8) = v50;
  v42 = a9 + v30[20];
  sub_1C1C9AEA8();
  result = sub_1C1C9AFC8();
  *v42 = a11;
  *(v42 + 8) = v50;
  return result;
}

BOOL sub_1C1C530D4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1C1C9AAE8();
    ++v2;
    sub_1C1C4E7DC(&qword_1ED7C4B48, MEMORY[0x1E697F6A0]);
  }

  while ((sub_1C1C9B218() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1C1C531E0()
{
  if (qword_1ED7C5540 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED7C5548;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A68);
  v1 = sub_1C1C9AAE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C1C9E190;
  v6 = *(v2 + 104);
  v6(v5 + v4, *MEMORY[0x1E697F670], v1);
  v6(v5 + v4 + v3, *MEMORY[0x1E697F668], v1);

  result = sub_1C1C536AC(v5);
  qword_1ED7C5558 = v0;
  return result;
}

uint64_t sub_1C1C53354()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A68);
  v0 = sub_1C1C9AAE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1C9F980;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E697F678], v0);
  v6(v5 + v2, *MEMORY[0x1E697F640], v0);
  result = (v6)(v5 + 2 * v2, *MEMORY[0x1E697F648], v0);
  qword_1ED7C5548 = v4;
  return result;
}

size_t sub_1C1C53494(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A68);
  v10 = *(sub_1C1C9AAE8() - 8);
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
  v15 = *(sub_1C1C9AAE8() - 8);
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

uint64_t sub_1C1C536AC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1C1C53494(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1C1C9AAE8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1C1C537E0()
{
  sub_1C1C53AC8(319, &qword_1EBF17BB8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C53AC8(319, &qword_1EBF17BC0, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1C1C53B2C(319, &qword_1EBF17A68, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1C1C53B2C(319, &qword_1EBF17A78, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1C1C53B7C();
          if (v4 <= 0x3F)
          {
            sub_1C1C53B2C(319, &qword_1EBF17A60, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
            if (v5 <= 0x3F)
            {
              sub_1C1C53AC8(319, &qword_1ED7C4AE8, MEMORY[0x1E697E730], MEMORY[0x1E6981948]);
              if (v6 <= 0x3F)
              {
                sub_1C1C53B2C(319, &qword_1EBF17AC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1C1C51154();
                  if (v8 <= 0x3F)
                  {
                    sub_1C1C53B2C(319, &qword_1EBF17AC0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1C1C53B2C(319, &qword_1EBF17AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C1C53AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C1C53B2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C1C53B7C()
{
  if (!qword_1EBF17A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17ED0);
    v0 = sub_1C1C9B068();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF17A70);
    }
  }
}

void sub_1C1C53BE0()
{
  sub_1C1C53E78(319, &qword_1EBF17C18, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C53EDC(319, &qword_1EBF17C00, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1C1C53E78(319, &qword_1EBF17BC0, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C1C53EDC(319, &qword_1EBF17A80, &type metadata for ChargeRingData, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1C1C53E78(319, &qword_1ED7C4AE8, MEMORY[0x1E697E730], MEMORY[0x1E6981948]);
          if (v4 <= 0x3F)
          {
            sub_1C1C53EDC(319, &qword_1EBF17AC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1C1C53EDC(319, &qword_1EBF17AC0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1C1C51154();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C1C53E14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C1C53E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C1C53EDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C1C53F8C()
{
  sub_1C1C53AC8(319, &qword_1EBF17BC0, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C53B7C();
    if (v1 <= 0x3F)
    {
      sub_1C1C53AC8(319, &qword_1ED7C4AE8, MEMORY[0x1E697E730], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1C1C53B2C(319, &qword_1EBF17AC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1C1C51154();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C1C540E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v21 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A20);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v20 - v5;
  v7 = sub_1C1C9AB98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A28);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  if (a2)
  {
    sub_1C1C9AB88();
    v20[1] = a3;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A30);
    v16 = sub_1C1C4CEAC(&qword_1ED7C4B38, &qword_1EBF18A30);
    sub_1C1C9ADF8();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 16))(v6, v14, v11);
    swift_storeEnumTagMultiPayload();
    v23 = v15;
    v24 = v16;
    swift_getOpaqueTypeConformance2();
    sub_1C1C9AB38();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18A30);
    (*(*(v18 - 8) + 16))(v6, v21, v18);
    swift_storeEnumTagMultiPayload();
    v19 = sub_1C1C4CEAC(&qword_1ED7C4B38, &qword_1EBF18A30);
    v23 = v18;
    v24 = v19;
    swift_getOpaqueTypeConformance2();
    return sub_1C1C9AB38();
  }
}

uint64_t sub_1C1C54464()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C1C9A558();
}

uint64_t sub_1C1C54500()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF186B8);
  sub_1C1C54578();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1C1C54578()
{
  result = qword_1ED7C4BB8;
  if (!qword_1ED7C4BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF186B8);
    sub_1C1C4CEAC(&qword_1ED7C4BD0, &qword_1EBF186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4BB8);
  }

  return result;
}

uint64_t sub_1C1C54690@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1C9B0E8();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF183E0);
  return sub_1C1C546DC(v1, a1 + *(v4 + 44));
}

uint64_t sub_1C1C546DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_1C1C9B1A8();
  v4 = *(v37 - 8);
  v5 = MEMORY[0x1EEE9AC00](v37);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18320);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF183E8);
  v13 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v35 - v14;
  v16 = (a1 + *(type metadata accessor for DeviceGlyph(0) + 20));
  v17 = *v16;
  v18 = *(v16 + 2);
  v40 = v17;
  v41 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18378);
  MEMORY[0x1C6909DC0](&v39, v19);
  v20 = v39;
  if (v39)
  {
    sub_1C1C54AB8();
    sub_1C1C9ACB8();
    v36 = a2;
    v21 = sub_1C1C9ACA8();
    (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
    v22 = sub_1C1C9ACC8();
    sub_1C1C4E77C(v12, &qword_1EBF18320);
    KeyPath = swift_getKeyPath();
    *&v40 = v20;
    *(&v40 + 1) = KeyPath;
    v41 = v22;

    sub_1C1C87FD8(&qword_1EBF17D40, MEMORY[0x1E6985778], v9);
    sub_1C1C9B198();
    v24 = sub_1C1C9B188();
    v25 = *(v4 + 8);
    v26 = v7;
    v27 = v37;
    v25(v26, v37);
    v25(v9, v27);
    v28 = *sub_1C1C55268();

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF183F0);
    v30 = sub_1C1C54C6C();
    sub_1C1C552B8(v24 & 1, v28, v29, v30, v15);
    a2 = v36;

    v31 = v38;
    (*(v13 + 32))(a2, v15, v38);
    v32 = 0;
    v33 = v31;
  }

  else
  {
    v32 = 1;
    v33 = v38;
  }

  return (*(v13 + 56))(a2, v32, 1, v33);
}

double sub_1C1C54AB8()
{
  v1 = sub_1C1C9A798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for DeviceGlyph(0) + 28));
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v13) = v6;
  v14 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  v8 = 24.0;
  if (v12[15] == 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    MEMORY[0x1C6909DC0](v9);
    v10 = sub_1C1C98F8C();
    (*(v2 + 8))(v4, v1);
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
      sub_1C1C9A678();
      v8 = 27.0;
      if (v13 + 24.0 < 27.0)
      {
        sub_1C1C9A678();
        return v13 + 24.0;
      }
    }
  }

  return v8;
}

unint64_t sub_1C1C54C6C()
{
  result = qword_1ED7C4BA0;
  if (!qword_1ED7C4BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF183F0);
    sub_1C1C4CEAC(&qword_1ED7C4B28, &qword_1EBF18110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4BA0);
  }

  return result;
}

uint64_t sub_1C1C54D24(char a1)
{
  if (qword_1ED7C5510 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  if (!qword_1ED7C62A0)
  {
    return 0;
  }

  v1 = a1;
  v2 = qword_1ED7C62A0;
  v3 = sub_1C1C9A408();
  v5 = v4;

  if (v1)
  {
    v6 = 8236;
  }

  else
  {
    v6 = 32;
  }

  v9 = v6;
  MEMORY[0x1C690A040](v3, v5);

  return v9;
}

uint64_t sub_1C1C54E68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1C1C9B5A8();
  }
}

unint64_t sub_1C1C54E98()
{
  result = qword_1ED7C4BF0[0];
  if (!qword_1ED7C4BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C4BF0);
  }

  return result;
}

unint64_t sub_1C1C54F20()
{
  result = qword_1ED7C5330;
  if (!qword_1ED7C5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C5330);
  }

  return result;
}

uint64_t *sub_1C1C54F80()
{
  if (qword_1ED7C5518 != -1)
  {
    swift_once();
  }

  return &qword_1ED7C62A8;
}

unint64_t sub_1C1C54FDC()
{
  result = qword_1EBF17B40;
  if (!qword_1EBF17B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18380);
    sub_1C1C8A7A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B40);
  }

  return result;
}

uint64_t sub_1C1C55068@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C1C9AA38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C1C4E714(v2, &v14 - v9, &qword_1EBF17D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1C9B1A8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1C9B408();
    v13 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t *sub_1C1C55268()
{
  if (qword_1ED7C5530 != -1)
  {
    swift_once();
  }

  return &qword_1ED7C62B8;
}

uint64_t sub_1C1C552B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a5;
  v38 = a4;
  v33 = a2;
  LODWORD(v34) = a1;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18910);
  v12 = sub_1C1C9A7D8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  v19 = sub_1C1C9AB48();
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  if (v34)
  {
    v34 = v19;
    v22 = v38;
    sub_1C1C9ADB8();
    v23 = sub_1C1C4CEAC(&qword_1ED7C4B20, &qword_1EBF18910);
    v39 = v22;
    v40 = v23;
    WitnessTable = swift_getWitnessTable();
    v24 = *(v13 + 16);
    v24(v18, v16, v12);
    v25 = *(v13 + 8);
    v25(v16, v12);
    v24(v16, v18, v12);
    v19 = v34;
    sub_1C1C58D3C(v16, v12);
    v25(v16, v12);
    v25(v18, v12);
  }

  else
  {
    v26 = *(v6 + 16);
    v26(v11, WitnessTable, a3);
    v26(v9, v11, a3);
    v27 = sub_1C1C4CEAC(&qword_1ED7C4B20, &qword_1EBF18910);
    v45 = v38;
    v46 = v27;
    swift_getWitnessTable();
    sub_1C1C55770(v9, v12, a3);
    v28 = *(v6 + 8);
    v28(v9, a3);
    v28(v11, a3);
  }

  v29 = sub_1C1C4CEAC(&qword_1ED7C4B20, &qword_1EBF18910);
  v30 = v38;
  v43 = v38;
  v44 = v29;
  v41 = swift_getWitnessTable();
  v42 = v30;
  swift_getWitnessTable();
  v31 = v36;
  (*(v36 + 16))(v37, v21, v19);
  return (*(v31 + 8))(v21, v19);
}

uint64_t sub_1C1C55770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C1C9AB28();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1C1C9AB38();
}

unint64_t sub_1C1C55888()
{
  result = qword_1EBF17B10;
  if (!qword_1EBF17B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18570);
    sub_1C1C55914();
    sub_1C1C559D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B10);
  }

  return result;
}

unint64_t sub_1C1C55914()
{
  result = qword_1EBF17BA0;
  if (!qword_1EBF17BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18578);
    sub_1C1C4D924(qword_1ED7C5010, type metadata accessor for BCUI2x2AvocadoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17BA0);
  }

  return result;
}

unint64_t sub_1C1C559D0()
{
  result = qword_1EBF17B98;
  if (!qword_1EBF17B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18558);
    sub_1C1C4D924(qword_1ED7C4F68, type metadata accessor for BCUI2x4AvocadoView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B98);
  }

  return result;
}

unint64_t sub_1C1C55A8C()
{
  result = qword_1EBF17B08;
  if (!qword_1EBF17B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18550);
    sub_1C1C56374();
    sub_1C1C55914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B08);
  }

  return result;
}

uint64_t sub_1C1C55B1C@<X0>(_BYTE *a1@<X8>)
{
  sub_1C1C9A9A8();
  sub_1C1C4D8DC(&qword_1EBF17B20, MEMORY[0x1E6985530]);
  result = sub_1C1C9AA48();
  *a1 = v3;
  return result;
}

void sub_1C1C55BAC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1C9B228();
  v2 = [v0 initWithSuiteName_];

  qword_1ED7C6330 = v2;
}

uint64_t sub_1C1C55C3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18528);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18530);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18538);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[9];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[11]);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C1C55E3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18510);
  sub_1C1C9A458();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18508);
  sub_1C1C9A5F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18500);
  sub_1C1C9A798();
  sub_1C1C4CEAC(&qword_1ED7C4B50, &qword_1EBF18500);
  sub_1C1C4D924(&qword_1ED7C4BC8, MEMORY[0x1E697E730]);
  swift_getOpaqueTypeConformance2();
  sub_1C1C4D924(&qword_1ED7C4BE0, MEMORY[0x1E697DBD0]);
  swift_getOpaqueTypeConformance2();
  sub_1C1C4D924(&qword_1ED7C5338, MEMORY[0x1E6969770]);
  return swift_getOpaqueTypeConformance2();
}

void sub_1C1C56018()
{
  sub_1C1C56138();
  if (v0 <= 0x3F)
  {
    sub_1C1C56190(319, &qword_1EBF17C00, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1C1C561E0();
      if (v2 <= 0x3F)
      {
        sub_1C1C51154();
        if (v3 <= 0x3F)
        {
          sub_1C1C56190(319, &qword_1EBF17AC0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C1C56138()
{
  if (!qword_1EBF17BC0)
  {
    sub_1C1C9B1A8();
    v0 = sub_1C1C9A608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF17BC0);
    }
  }
}

void sub_1C1C56190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C1C561E0()
{
  if (!qword_1EBF17BA8)
  {
    type metadata accessor for AvocadoViewModel();
    sub_1C1C4D894(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
    v0 = sub_1C1C9A778();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF17BA8);
    }
  }
}

uint64_t type metadata accessor for BCUI2x4AvocadoView()
{
  result = qword_1ED7C5940;
  if (!qword_1ED7C5940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1C562C0()
{
  sub_1C1C561E0();
  if (v0 <= 0x3F)
  {
    sub_1C1C51154();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C1C56374()
{
  result = qword_1EBF17B90;
  if (!qword_1EBF17B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18580);
    sub_1C1C56400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B90);
  }

  return result;
}

unint64_t sub_1C1C56400()
{
  result = qword_1ED7C4EE0[0];
  if (!qword_1ED7C4EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C4EE0);
  }

  return result;
}

uint64_t sub_1C1C56454(uint64_t a1, char *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1C1C51410(a1, a2, a3);

  return v6;
}

uint64_t sub_1C1C564B8(unint64_t a1)
{
  v3 = *v1;
  v4 = sub_1C1C9A4C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v97 - v9;
  v102 = v3;
  v10 = *(v3 + 176);

  v10(v11);
  v12 = MEMORY[0x1E69E7CC0];
  (*(*v1 + 224))(MEMORY[0x1E69E7CC0]);
  (*(*v1 + 272))(v12);
  if (a1 >> 62)
  {
LABEL_32:
    v88 = sub_1C1C9B538();
    if (v88 < 0)
    {
      __break(1u);
    }

    v14 = v88;
    if (!v88)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_35;
    }
  }

  v15 = 0;
  v113 = a1 & 0xFFFFFFFFFFFFFF8;
  v114 = a1 & 0xC000000000000001;
  v103 = (v5 + 8);
  v104 = (v5 + 16);
  *&v13 = 136315394;
  v99 = v13;
  v107 = v4;
  v108 = a1;
  v105 = v14;
  v106 = v8;
  while (v15 != 6)
  {
    if (v114)
    {
      v16 = MEMORY[0x1C690A2A0](v15, a1);
    }

    else
    {
      if (v15 >= *(v113 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v16 = *(a1 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = [v16 identifier];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1C1C9B258();
      v22 = v21;

      v23 = [v17 name];
      if (v23)
      {
        v111 = v22;
        v24 = v23;
        v25 = sub_1C1C9B258();
        v27 = v26;

        v28 = [v17 percentCharge] / 100.0;
        v29 = sub_1C1C570A8();
        v30 = [v17 isLowBattery];
        v31 = [v17 isLowPowerModeActive];
        v32 = [v17 isCharging];
        v33 = v32;
        v112 = v29;
        v109 = v25;
        if (v15 < 4)
        {
          *&v122 = v25;
          *(&v122 + 1) = v27;
          *&v123 = v28;
          *(&v123 + 1) = v29;
          LOBYTE(v124[0]) = v30;
          BYTE1(v124[0]) = v31;
          BYTE2(v124[0]) = v32;
          *(&v124[0] + 1) = v20;
          *&v124[1] = v111;
          *&v125 = v25;
          *(&v125 + 1) = v27;
          *&v126 = v28;
          *(&v126 + 1) = v29;
          LOBYTE(v127) = v30;
          BYTE1(v127) = v31;
          v100 = v32;
          BYTE2(v127) = v32;
          *(&v127 + 1) = v20;
          v128 = v111;

          sub_1C1C57248(&v122, &v119);
          sub_1C1C57280(&v125);
          v34 = (*(*v110 + 232))(&v119);
          v36 = v35;
          v37 = *v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97 = v36;
          *v36 = v37;
          v101 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = sub_1C1C58558(0, *(v37 + 2) + 1, 1, v37);
            *v97 = v37;
          }

          v40 = *(v37 + 2);
          v39 = *(v37 + 3);
          if (v40 >= v39 >> 1)
          {
            v37 = sub_1C1C58558((v39 > 1), v40 + 1, 1, v37);
            *v97 = v37;
          }

          *(v37 + 2) = v40 + 1;
          v41 = &v37[56 * v40];
          v42 = v122;
          v43 = v123;
          v44 = v124[0];
          *(v41 + 10) = *&v124[1];
          *(v41 + 3) = v43;
          *(v41 + 4) = v44;
          *(v41 + 2) = v42;
          v34(&v119, 0);
          v20 = v101;
          v29 = v112;
          v33 = v100;
        }

        *&v122 = v109;
        *(&v122 + 1) = v27;
        *&v123 = v28;
        *(&v123 + 1) = v29;
        *&v124[0] = v20;
        *(&v124[0] + 1) = v111;
        LOBYTE(v124[1]) = v33;
        BYTE1(v124[1]) = v30;
        BYTE2(v124[1]) = v31;
        *&v125 = v109;
        *(&v125 + 1) = v27;
        *&v126 = v28;
        *(&v126 + 1) = v29;
        *&v127 = v20;
        *(&v127 + 1) = v111;
        LOBYTE(v128) = v33;
        BYTE1(v128) = v30;
        BYTE2(v128) = v31;

        sub_1C1C58680(&v122, &v119);
        sub_1C1C59188(&v125);
        v45 = (*(*v110 + 280))(&v119);
        v47 = v46;
        v5 = *v46;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *v47 = v5;
        if ((v48 & 1) == 0)
        {
          v5 = sub_1C1C5925C(0, *(v5 + 2) + 1, 1, v5);
          *v47 = v5;
        }

        v50 = *(v5 + 2);
        v49 = *(v5 + 3);
        if (v50 >= v49 >> 1)
        {
          v5 = sub_1C1C5925C((v49 > 1), v50 + 1, 1, v5);
          *v47 = v5;
        }

        v14 = v105;
        *(v5 + 2) = v50 + 1;
        v51 = &v5[56 * v50];
        v52 = v122;
        v53 = v123;
        v54 = v124[0];
        *(v51 + 79) = *(v124 + 15);
        *(v51 + 3) = v53;
        *(v51 + 4) = v54;
        *(v51 + 2) = v52;
        v45(&v119, 0);

        v4 = v107;
        a1 = v108;
        v8 = v106;
      }

      else
      {

        v71 = sub_1C1C4D054();
        v5 = v98;
        (*v104)(v98, v71, v4);
        v72 = v17;
        v73 = sub_1C1C9A4A8();
        v74 = sub_1C1C9B3F8();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          *&v125 = v76;
          *v75 = v99;
          v77 = sub_1C1C9B608();
          v79 = sub_1C1C4DDB8(v77, v78, &v125);

          *(v75 + 4) = v79;
          *(v75 + 12) = 2080;
          v80 = [v72 description];
          v81 = sub_1C1C9B258();
          v112 = v72;
          v83 = v82;

          v84 = v81;
          v8 = v106;
          v85 = sub_1C1C4DDB8(v84, v83, &v125);

          *(v75 + 14) = v85;
          v4 = v107;
          _os_log_impl(&dword_1C1C4A000, v73, v74, "(%s) Skipping report of this device because its name was nil: %s", v75, 0x16u);
          swift_arrayDestroy();
          v86 = v76;
          a1 = v108;
          MEMORY[0x1C690AD10](v86, -1, -1);
          v87 = v75;
          v14 = v105;
          MEMORY[0x1C690AD10](v87, -1, -1);
        }

        else
        {
        }

        (*v103)(v5, v4);
      }
    }

    else
    {
      v55 = sub_1C1C4D054();
      (*v104)(v8, v55, v4);
      v5 = v17;
      v56 = sub_1C1C9A4A8();
      v57 = sub_1C1C9B3F8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v125 = v59;
        *v58 = v99;
        v60 = sub_1C1C9B608();
        v62 = sub_1C1C4DDB8(v60, v61, &v125);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2080;
        v63 = [v5 description];
        v64 = sub_1C1C9B258();
        v66 = v65;

        v67 = v64;
        v8 = v106;
        v68 = sub_1C1C4DDB8(v67, v66, &v125);

        *(v58 + 14) = v68;
        v4 = v107;
        _os_log_impl(&dword_1C1C4A000, v56, v57, "(%s) Skipping report of this device because its identifier was nil: %s", v58, 0x16u);
        swift_arrayDestroy();
        v69 = v59;
        a1 = v108;
        MEMORY[0x1C690AD10](v69, -1, -1);
        v70 = v58;
        v14 = v105;
        MEMORY[0x1C690AD10](v70, -1, -1);
      }

      else
      {
      }

      (*v103)(v8, v4);
    }

    if (v14 == ++v15)
    {
      break;
    }
  }

LABEL_35:
  if (qword_1ED7C5AE0 != -1)
  {
    swift_once();
  }

  v122 = xmmword_1ED7C62C0;
  v123 = *algn_1ED7C62D0;
  v124[0] = xmmword_1ED7C62E0;
  *&v124[1] = qword_1ED7C62F0;
  v119 = xmmword_1ED7C62C0;
  v120 = *algn_1ED7C62D0;
  v121[0] = xmmword_1ED7C62E0;
  *&v121[1] = qword_1ED7C62F0;
  v89 = v110;
  v90 = *(*v110 + 232);
  sub_1C1C57248(&v122, &v125);
  v91 = v90(v129);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E78);
  sub_1C1C5945C(&v119, 4, v92);
  v125 = v119;
  v126 = v120;
  v127 = v121[0];
  v128 = *&v121[1];
  sub_1C1C57280(&v125);
  v91(v129, 0);
  if (qword_1ED7C5AE8 != -1)
  {
    swift_once();
  }

  v129[0] = xmmword_1ED7C62F8;
  v129[1] = unk_1ED7C6308;
  v130[0] = xmmword_1ED7C6318;
  *(v130 + 15) = *(&xmmword_1ED7C6318 + 15);
  v116 = xmmword_1ED7C62F8;
  v117 = unk_1ED7C6308;
  v118[0] = xmmword_1ED7C6318;
  *(v118 + 15) = *(&xmmword_1ED7C6318 + 15);
  v93 = *(*v89 + 280);
  sub_1C1C58680(v129, &v119);
  v94 = v93(v115);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E90);
  sub_1C1C5945C(&v116, 6, v95);
  v119 = v116;
  v120 = v117;
  v121[0] = v118[0];
  *(v121 + 15) = *(v118 + 15);
  sub_1C1C59188(&v119);
  return v94(v115, 0);
}

uint64_t sub_1C1C57014()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1C1C9A568();
}

uint64_t sub_1C1C570A8()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v1 = [v0 batteryWidgetGlyphName_];
  sub_1C1C9B258();

  if (v5 != 1)
  {
    return sub_1C1C9AF18();
  }

  v2 = sub_1C1C9B228();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  return sub_1C1C9AF48();
}

uint64_t (*sub_1C1C572B0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1C1C9A548();
  return sub_1C1C57358;
}

void sub_1C1C5735C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1C1C573C4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1C57418@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18548);
  MEMORY[0x1EEE9AC00](v77);
  v78 = (&v69 - v9);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18550);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v69 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18558);
  MEMORY[0x1EEE9AC00](v74);
  v71 = (&v69 - v11);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18560);
  MEMORY[0x1EEE9AC00](v83);
  v13 = &v69 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18568);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18570);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v76 = &v69 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18578);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  v22 = sub_1C1C9AA38();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a2;
  if (a2)
  {
    v27 = a1;
    v28 = a1;
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v69 = v24;

    sub_1C1C9B408();
    v29 = sub_1C1C9ABF8();
    v70 = v21;
    v30 = v29;
    sub_1C1C9A498();

    v21 = v70;
    sub_1C1C9AA28();
    swift_getAtKeyPath();
    sub_1C1C5D6B4(a1, 0);
    (*(v23 + 8))(v26, v69);
    v28 = v84;
    if (!v84)
    {
LABEL_9:

      v45 = v76;
      sub_1C1C58770(v44);
      v46 = sub_1C1C58774();
      v48 = v47;
      sub_1C1C58798();
      v49 = sub_1C1C525B4();
      sub_1C1C57EA0(v45, v46, v48 & 1, v21, v49);
      v50 = swift_allocObject();
      *(v50 + 16) = a1;
      v51 = v80 & 1;
      *(v50 + 24) = v80 & 1;
      *(v50 + 32) = a3;
      *(v50 + 40) = a4;
      v52 = &v21[*(v19 + 36)];
      *v52 = sub_1C1C8DD48;
      *(v52 + 1) = v50;
      *(v52 + 2) = 0;
      *(v52 + 3) = 0;
      sub_1C1C4E714(v21, v78, &qword_1EBF18578);
      swift_storeEnumTagMultiPayload();
      sub_1C1C587B4(a1, v51);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18580);
      sub_1C1C56374();
      sub_1C1C55914();
      v53 = v79;
      sub_1C1C9AB38();
      sub_1C1C4E714(v53, v13, &qword_1EBF18550);
      swift_storeEnumTagMultiPayload();
      sub_1C1C55888();
      sub_1C1C55A8C();
      sub_1C1C9AB38();
      sub_1C1C4E77C(v53, &qword_1EBF18550);
      v42 = v21;
      v43 = &qword_1EBF18578;
      return sub_1C1C4E77C(v42, v43);
    }
  }

  v31 = [v28 family];

  if (v31 == 3)
  {

    v62 = sub_1C1C98A48(v61);
    v76 = v19;
    v64 = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = a1;
    v66 = v80 & 1;
    *(v65 + 24) = v80 & 1;
    *(v65 + 32) = a3;
    *(v65 + 40) = a4;
    v67 = v78;
    *v78 = v62;
    v67[1] = v64;
    v67[2] = sub_1C1C8DB0C;
    v67[3] = v65;
    v67[4] = 0;
    v67[5] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1C1C587B4(a1, v66);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18580);
    sub_1C1C56374();
    sub_1C1C55914();
    v68 = v79;
    sub_1C1C9AB38();
    sub_1C1C4E714(v68, v13, &qword_1EBF18550);
    swift_storeEnumTagMultiPayload();
    sub_1C1C55888();
    sub_1C1C55A8C();
    sub_1C1C9AB38();

    v42 = v68;
    v43 = &qword_1EBF18550;
    return sub_1C1C4E77C(v42, v43);
  }

  if (v31 == 2)
  {

    sub_1C1C77CC8(v55);
    v56 = v71;
    sub_1C1C779D4(v71);
    v57 = swift_allocObject();
    *(v57 + 16) = a1;
    v58 = v80 & 1;
    *(v57 + 24) = v80 & 1;
    *(v57 + 32) = a3;
    *(v57 + 40) = a4;
    v59 = (v56 + *(v74 + 36));
    *v59 = sub_1C1C8DB24;
    v59[1] = v57;
    v59[2] = 0;
    v59[3] = 0;
    sub_1C1C4E714(v56, v73, &qword_1EBF18558);
    swift_storeEnumTagMultiPayload();
    sub_1C1C587B4(a1, v58);
    sub_1C1C55914();
    sub_1C1C559D0();

    v60 = v75;
    sub_1C1C9AB38();
    sub_1C1C4E714(v60, v13, &qword_1EBF18570);
    swift_storeEnumTagMultiPayload();
    sub_1C1C55888();
    sub_1C1C55A8C();
    sub_1C1C9AB38();
    sub_1C1C4E77C(v60, &qword_1EBF18570);
    v42 = v56;
    v43 = &qword_1EBF18558;
    return sub_1C1C4E77C(v42, v43);
  }

  if (v31 != 1)
  {
    goto LABEL_9;
  }

  v33 = v76;
  sub_1C1C58770(v32);
  v34 = sub_1C1C58774();
  v36 = v35;
  sub_1C1C58798();
  v37 = sub_1C1C525B4();
  sub_1C1C57EA0(v33, v34, v36 & 1, v21, v37);
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  v39 = v80 & 1;
  *(v38 + 24) = v80 & 1;
  *(v38 + 32) = a3;
  *(v38 + 40) = a4;
  v40 = &v21[*(v19 + 36)];
  *v40 = sub_1C1C8DD48;
  *(v40 + 1) = v38;
  *(v40 + 2) = 0;
  *(v40 + 3) = 0;
  sub_1C1C4E714(v21, v73, &qword_1EBF18578);
  swift_storeEnumTagMultiPayload();
  sub_1C1C587B4(a1, v39);
  sub_1C1C55914();
  sub_1C1C559D0();

  v41 = v75;
  sub_1C1C9AB38();
  sub_1C1C4E714(v41, v13, &qword_1EBF18570);
  swift_storeEnumTagMultiPayload();
  sub_1C1C55888();
  sub_1C1C55A8C();
  sub_1C1C9AB38();
  sub_1C1C4E77C(v41, &qword_1EBF18570);
  v42 = v21;
  v43 = &qword_1EBF18578;
  return sub_1C1C4E77C(v42, v43);
}

double sub_1C1C57EA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D1>)
{
  sub_1C1C519C4(a1, a4, &qword_1EBF17D88);
  v9 = type metadata accessor for BCUI2x2AvocadoView(0);
  v10 = a4 + v9[5];
  *v10 = a2;
  *(v10 + 8) = a3 & 1;
  v11 = (a4 + v9[6]);
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D8DC(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  *v11 = sub_1C1C9A748();
  v11[1] = v12;
  sub_1C1C4DD2C();
  sub_1C1C9A668();
  sub_1C1C9A668();
  *(a4 + v9[9]) = 0x4047000000000000;
  v13 = a4 + v9[10];
  sub_1C1C9AFC8();
  *v13 = a5;
  *(v13 + 8) = v18;
  v14 = a4 + v9[11];
  sub_1C1C9AFC8();
  *v14 = a5;
  *(v14 + 8) = v18;
  v15 = a4 + v9[12];
  sub_1C1C9AFC8();
  *v15 = a5;
  *(v15 + 8) = v18;
  v16 = a4 + v9[13];
  sub_1C1C9AFC8();
  result = a5;
  *v16 = a5;
  *(v16 + 8) = v18;
  return result;
}

uint64_t sub_1C1C58090@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1C9B0E8();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181B8);
  return sub_1C1C82820(v1, a1 + *(v4 + 44));
}

uint64_t sub_1C1C580DC()
{
  sub_1C1C9A7D8();
  sub_1C1C9AB48();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C1C58188()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18910);
  sub_1C1C9A7D8();
  sub_1C1C9AB48();
  sub_1C1C4CEAC(&qword_1ED7C4B20, &qword_1EBF18910);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C1C58274()
{
  sub_1C1C9A7D8();
  sub_1C1C54E98();
  return swift_getWitnessTable();
}

uint64_t sub_1C1C582F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C1C58360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for BCUIChargeRingView(0);
  v7 = a3 + v6[5];
  v8 = *(a1 + 48);
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 3) = v8;
  *(v7 + 8) = *(a1 + 64);
  v9 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v9;
  sub_1C1C58444(a2, a3 + v6[6]);
  v10 = a3 + v6[7];
  result = sub_1C1C9AFC8();
  *v10 = v12;
  *(v10 + 1) = v13;
  return result;
}

uint64_t sub_1C1C58444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1C584B4()
{
  result = qword_1ED7C4AD0;
  if (!qword_1ED7C4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4AD0);
  }

  return result;
}

uint64_t *sub_1C1C58508()
{
  if (qword_1ED7C5528 != -1)
  {
    swift_once();
  }

  return &qword_1ED7C62B0;
}

char *sub_1C1C58558(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C1C586B8()
{
  result = sub_1C1C9B128();
  qword_1ED7C62A8 = result;
  return result;
}

uint64_t sub_1C1C58710@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);

  return swift_storeEnumTagMultiPayload();
}

id sub_1C1C587B4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1C1C587D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C1C9A558();

  return v1;
}

uint64_t sub_1C1C58848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1C588C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v35 = a4;
  v36 = a3;
  v5 = sub_1C1C9A7D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - v11;
  v13 = *(a2 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v34 = sub_1C1C9AB48();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v20 = &v31 - v19;
  if (v32 == 1)
  {
    v21 = *(v13 + 16);
    v21(v18, WitnessTable, a2);
    v21(v16, v18, a2);
    v37 = v36;
    v38 = MEMORY[0x1E697EBF8];
    swift_getWitnessTable();
    sub_1C1C58D3C(v16, a2);
    v22 = *(v13 + 8);
    v22(v16, a2);
    v22(v18, a2);
  }

  else
  {
    sub_1C1C9B0E8();
    v23 = v36;
    sub_1C1C9AE18();
    v43 = v23;
    v44 = MEMORY[0x1E697EBF8];
    WitnessTable = swift_getWitnessTable();
    v24 = *(v6 + 16);
    v24(v12, v9, v5);
    v25 = *(v6 + 8);
    v25(v9, v5);
    v24(v9, v12, v5);
    sub_1C1C55770(v9, a2, v5);
    v25(v9, v5);
    v25(v12, v5);
  }

  v26 = v36;
  v41 = v36;
  v42 = MEMORY[0x1E697EBF8];
  v27 = swift_getWitnessTable();
  v39 = v26;
  v40 = v27;
  v28 = v34;
  swift_getWitnessTable();
  v29 = v31;
  (*(v31 + 16))(v35, v20, v28);
  return (*(v29 + 8))(v20, v28);
}

uint64_t sub_1C1C58D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1C9AB28();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1C1C9AB38();
}

uint64_t sub_1C1C58E34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1C1C58E44()
{
  v1 = sub_1C1C9A798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1C81DC8();
  v6 = type metadata accessor for BCUI2x2AvocadoView(0);
  (*(**(v0 + *(v6 + 24) + 8) + 360))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  sub_1C1C9A678();
  if ((v5 & 1) == 0)
  {
    sub_1C1C8F8D8(0);
    sub_1C1C89B30(0);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C1C59028(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 48);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t *sub_1C1C59138()
{
  if (qword_1ED7C5D18 != -1)
  {
    swift_once();
  }

  return &qword_1ED7C6330;
}

void (*sub_1C1C591B8(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1C1C9A548();
  return sub_1C1C57354;
}

char *sub_1C1C5925C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C1C59380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1C1C593E8()
{
  *&v2[0] = 0;
  *(&v2[0] + 1) = 0xE000000000000000;
  memset(&v2[1], 0, 19);
  *(&v2[2] + 1) = 0;
  v3 = 0xE000000000000000;
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  v4[2] = 0;
  v5[0] = 0;
  *(v5 + 7) = 0;
  v5[2] = 0;
  v5[3] = 0xE000000000000000;
  sub_1C1C57248(v2, v1);
  sub_1C1C57280(v4);
  xmmword_1ED7C62C0 = v2[0];
  *algn_1ED7C62D0 = v2[1];
  result = *&v2[2];
  xmmword_1ED7C62E0 = v2[2];
  qword_1ED7C62F0 = v3;
  return result;
}

uint64_t sub_1C1C5945C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C1C9B368();
  if (result < a2)
  {
    result = sub_1C1C9B368();
    if (a2 < result)
    {
      __break(1u);
    }

    else
    {
      if (a2 == result)
      {
        return result;
      }

      v10 = a2 <= result;
      v11 = a2 - result;
      if (!v10)
      {
        v12 = *(v6 + 16);
        do
        {
          v12(v8, a1, v5);
          result = sub_1C1C9B378();
          --v11;
        }

        while (v11);
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C1C59580(uint64_t a1)
{
  v2 = type metadata accessor for BCUI2x2PlaceholderMask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C1C595DC()
{
  *&v2 = 0;
  *(&v2 + 1) = 0xE000000000000000;
  v3 = 0uLL;
  *v4 = 0;
  *&v4[8] = 0xE000000000000000;
  *&v4[16] = 0;
  v4[18] = 0;
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  memset(&v5[2], 0, 24);
  v5[5] = 0xE000000000000000;
  v6 = 0;
  v7 = 0;
  sub_1C1C58680(&v2, v1);
  sub_1C1C59188(v5);
  xmmword_1ED7C62F8 = v2;
  unk_1ED7C6308 = v3;
  result = *v4;
  xmmword_1ED7C6318 = *v4;
  *(&xmmword_1ED7C6318 + 15) = *&v4[15];
  return result;
}

uint64_t sub_1C1C59658@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C1C9AB18();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181C8);
  sub_1C1C861AC(v1, (a1 + *(v3 + 44)));
  sub_1C1C5A424();
  v4 = sub_1C1C9AC18();
  sub_1C1C9A5D8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF181D0);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C1C59728@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AvocadoViewModel();
  result = sub_1C1C9A4D8();
  *a1 = result;
  return result;
}

uint64_t sub_1C1C5978C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1C1C9AFC8();
  *a2 = v6;
  *(a2 + 8) = v7;
  v4 = type metadata accessor for BCUIChargeRingView.maskChargeRingView(0);
  return sub_1C1C58444(a1, a2 + *(v4 + 20));
}

uint64_t BatteryAvocadoArchivableView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v79 = sub_1C1C9A458();
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1C1C9A5F8();
  v3 = *(v2 - 8);
  v76 = v2;
  v77 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v75 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C1C9A798();
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v64 - v7;
  v8 = type metadata accessor for BatteryAvocadoArchivableView();
  v86 = *(v8 - 8);
  v9 = *(v86 + 64);
  v66 = v8 - 8;
  v89 = v9;
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C1C9ABA8();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1C1C9A888();
  v65 = *(v87 - 1);
  MEMORY[0x1EEE9AC00](v87);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18500);
  MEMORY[0x1EEE9AC00](v83);
  v18 = &v64 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18508);
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v84 = &v64 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18510);
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v85 = &v64 - v20;
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D924(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  sub_1C1C9A618();
  KeyPath = swift_getKeyPath();
  v22 = sub_1C1C9A748();
  v24 = v23;
  v25 = swift_getKeyPath();
  v26 = sub_1C1C9AB58();
  sub_1C1C9A878();
  v27 = sub_1C1C9B128();
  (*(v65 + 32))(v14, v16, v87);
  *&v14[*(v12 + 28)] = v27;
  *&v14[*(v12 + 32)] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18518);
  sub_1C1C5A600(v14, &v18[*(v28 + 36)], MEMORY[0x1E6980738]);
  *v18 = KeyPath;
  v18[8] = 0;
  *(v18 + 2) = v22;
  *(v18 + 3) = v24;
  *(v18 + 4) = v25;
  *(v18 + 5) = v26;
  *(v18 + 6) = MEMORY[0x1E697FC10];
  sub_1C1C5A668(v14);
  v87 = type metadata accessor for BatteryAvocadoArchivableView;
  v29 = v88;
  v30 = v82;
  sub_1C1C5A600(v88, v82, type metadata accessor for BatteryAvocadoArchivableView);
  v86 = *(v86 + 80);
  v31 = (v86 + 16) & ~v86;
  v32 = swift_allocObject();
  sub_1C1C5A750(v30, v32 + v31);
  v33 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18520) + 36)];
  *v33 = sub_1C1C8D00C;
  v33[1] = v32;
  v33[2] = 0;
  v33[3] = 0;
  v90 = *(*(v29 + *(v66 + 52)) + OBJC_IVAR____TtC15BatteryCenterUI21BatteryCenterObserver_subject);
  sub_1C1C5AC20();

  v34 = sub_1C1C9B458();
  v94 = v34;
  v35 = sub_1C1C9B438();
  v36 = v67;
  (*(*(v35 - 8) + 56))(v67, 1, 1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF185A0);
  sub_1C1C4CEAC(&qword_1ED7C4BE8, &qword_1EBF185A0);
  sub_1C1C4D924(&qword_1ED7C4AC0, sub_1C1C5AC20);
  sub_1C1C9A588();
  sub_1C1C4E77C(v36, &qword_1EBF17FF0);

  v38 = v87;
  v37 = v88;
  v39 = v82;
  sub_1C1C5A600(v88, v82, v87);
  v40 = swift_allocObject();
  sub_1C1C5A750(v39, v40 + v31);
  v41 = v83;
  v42 = &v18[*(v83 + 56)];
  *v42 = sub_1C1C5D70C;
  v42[1] = v40;
  v43 = v68;
  sub_1C1C8BC6C(v68);
  sub_1C1C5A600(v37, v39, v38);
  v44 = swift_allocObject();
  sub_1C1C5A750(v39, v44 + v31);
  v45 = sub_1C1C4CEAC(&qword_1ED7C4B50, &qword_1EBF18500);
  v46 = sub_1C1C4D924(&qword_1ED7C4BC8, MEMORY[0x1E697E730]);
  v47 = v43;
  v48 = v71;
  sub_1C1C9AE48();

  (*(v72 + 8))(v47, v48);
  sub_1C1C4E77C(v18, &qword_1EBF18500);
  v49 = v75;
  v50 = v88;
  sub_1C1C8BA48(v75);
  sub_1C1C5A600(v50, v39, v87);
  v51 = swift_allocObject();
  sub_1C1C5A750(v39, v51 + v31);
  v90 = v41;
  v91 = v48;
  v92 = v45;
  v93 = v46;
  v83 = MEMORY[0x1E6981440];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = sub_1C1C4D924(&qword_1ED7C4BE0, MEMORY[0x1E697DBD0]);
  v54 = v84;
  v55 = v69;
  v56 = v76;
  sub_1C1C9AE48();

  (*(v77 + 8))(v49, v56);
  (*(v70 + 8))(v54, v55);
  v57 = v78;
  v58 = v88;
  sub_1C1C8C05C(v78);
  sub_1C1C5A600(v58, v39, v87);
  v59 = swift_allocObject();
  sub_1C1C5A750(v39, v59 + v31);
  v90 = v55;
  v91 = v56;
  v92 = OpaqueTypeConformance2;
  v93 = v53;
  swift_getOpaqueTypeConformance2();
  sub_1C1C4D924(&qword_1ED7C5338, MEMORY[0x1E6969770]);
  v60 = v79;
  v61 = v73;
  v62 = v85;
  sub_1C1C9AE48();

  (*(v81 + 8))(v57, v60);
  return (*(v74 + 8))(v62, v61);
}

uint64_t sub_1C1C5A424()
{
  v1 = sub_1C1C9A798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1C85F10();
  (*(**(v0 + 24) + 360))();
  type metadata accessor for BCUI2x2PlaceholderMask(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  sub_1C1C9A678();
  if ((v5 & 1) == 0)
  {
    sub_1C1C8F8D8(0);
    sub_1C1C89B30(0);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C1C5A600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1C5A668(uint64_t a1)
{
  v2 = sub_1C1C9ABA8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1C5A6C4()
{
  result = qword_1ED7C4B80;
  if (!qword_1ED7C4B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18220);
    sub_1C1C878BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4B80);
  }

  return result;
}

uint64_t sub_1C1C5A750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatteryAvocadoArchivableView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C5A7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v37 = a3;
  LODWORD(v33) = a1;
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  v11 = sub_1C1C9A7D8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = sub_1C1C9AB48();
  v35 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  if (v33)
  {
    v33 = v18;
    v21 = v37;
    sub_1C1C9AE28();
    v22 = sub_1C1C5ABCC();
    v38 = v21;
    v39 = v22;
    WitnessTable = swift_getWitnessTable();
    v23 = *(v12 + 16);
    v23(v17, v15, v11);
    v24 = *(v12 + 8);
    v24(v15, v11);
    v23(v15, v17, v11);
    v18 = v33;
    sub_1C1C58D3C(v15, v11);
    v24(v15, v11);
    v24(v17, v11);
  }

  else
  {
    v25 = *(v5 + 16);
    v25(v10, WitnessTable, a2);
    v25(v8, v10, a2);
    v26 = sub_1C1C5ABCC();
    v44 = v37;
    v45 = v26;
    swift_getWitnessTable();
    sub_1C1C55770(v8, v11, a2);
    v27 = *(v5 + 8);
    v27(v8, a2);
    v27(v10, a2);
  }

  v28 = sub_1C1C5ABCC();
  v29 = v37;
  v42 = v37;
  v43 = v28;
  v40 = swift_getWitnessTable();
  v41 = v29;
  swift_getWitnessTable();
  v30 = v35;
  (*(v35 + 16))(v36, v20, v18);
  return (*(v30 + 8))(v20, v18);
}

unint64_t sub_1C1C5ABCC()
{
  result = qword_1EBF17B30;
  if (!qword_1EBF17B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17B30);
  }

  return result;
}

unint64_t sub_1C1C5AC20()
{
  result = qword_1ED7C5380;
  if (!qword_1ED7C5380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7C5380);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  sub_1C1C5D6B4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for BCUI2x2AvocadoView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C1C9B1A8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_1C1C5B774(*(v5 + v1[5]), *(v5 + v1[5] + 8));

  v7 = v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v9(v5 + v1[8], v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for BCUIRingAndGlyphView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C1C9A7B8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C1C9B1A8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v5 + v1[13];

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0) + 32);
  v11 = sub_1C1C9A798();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  v12 = v1[15];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for BatteryAvocadoArchivableView();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1C1C5D6B4(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1C1C9A5F8();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C1C9A798();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_1C1C5B774(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v10 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1C9A458();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF184F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1C1C9AAE8();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  sub_1C1C5D6C0();

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for BCUIBoltView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1C1C9A5F8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  sub_1C1C5B774(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1C1C9B1A8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v5 + v1[8];

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0) + 32);
  v11 = sub_1C1C9A798();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  v12 = v1[11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  v14 = *(*(v13 - 8) + 8);
  v14(v5 + v12, v13);
  v14(v5 + v1[12], v13);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1C5B774(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C1C5B780()
{
  v1 = v0;
  v2 = type metadata accessor for BCUIBoltView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C1C5BA20(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1C1C5BA84(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1C1C5BA20(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_1C1C5BA84(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6);
  v23 = sub_1C1C5BC34;
  v24 = v7;
  v25 = sub_1C1C8F938;
  v26 = v8;
  v27 = 0;
  v28 = 0;
  v9 = v1 + *(v3 + 36);
  v10 = *(v9 + 48);
  v20 = *(v9 + 32);
  v21 = v10;
  v22 = *(v9 + 64);
  v11 = *v9;
  v19 = *(v9 + 16);
  v18 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
  MEMORY[0x1C6909DC0](v16, v12);
  v29[0] = v16[0];
  v29[1] = v16[1];
  v30 = v16[2];
  v31 = v17;
  sub_1C1C57280(v29);
  LOBYTE(v18) = BYTE2(v30);
  sub_1C1C5BA20(v1, &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_1C1C5BA84(&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF186B8);
  sub_1C1C54578();
  sub_1C1C9AE48();
}

uint64_t sub_1C1C5BA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BCUIBoltView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C5BA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BCUIBoltView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C5BAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF186D0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v12 - v5);
  *v6 = sub_1C1C9B0E8();
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF186D8);
  sub_1C1C5BCB4(a2, a1, v6 + *(v8 + 44));
  sub_1C1C9A718();
  sub_1C1C9A718();
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  v9 = (v6 + *(v4 + 36));
  v10 = v12[1];
  *v9 = v12[0];
  v9[1] = v10;
  v9[2] = v12[2];
  sub_1C1C5CBA4();
  sub_1C1C9ADD8();
  return sub_1C1C4E77C(v6, &qword_1EBF186D0);
}

uint64_t sub_1C1C5BC34(uint64_t a1)
{
  v3 = *(type metadata accessor for BCUIBoltView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C1C5BAE8(a1, v4);
}

uint64_t sub_1C1C5BCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v57 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF186E8) - 8;
  v4 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - v6;
  v8 = sub_1C1C9AF08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C1C5C2E4();
  v12 = *v50;
  sub_1C1C9AF48();
  v49 = *MEMORY[0x1E6981630];
  v48 = *(v9 + 104);
  v48(v11);
  v58 = sub_1C1C9AF38();

  v47 = *(v9 + 8);
  v47(v11, v8);
  sub_1C1C5C3F4();
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  LOBYTE(v69) = 1;
  *&v61[3] = *&v61[27];
  *&v61[11] = *&v61[35];
  *&v61[19] = *&v61[43];
  v54 = sub_1C1C5C5A8();
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(type metadata accessor for BCUIBoltView(0) + 40));
  v14 = *v13;
  v52 = v13[1];
  v69 = v14;
  v70 = v52;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18280);
  sub_1C1C9AFD8();
  v15 = v62;
  sub_1C1C9B158();
  v17 = v16;
  v19 = v18;
  sub_1C1C9A718();
  v21 = sub_1C1C5C8AC(v20);
  v22 = *v50;
  sub_1C1C9AF48();
  (v48)(v11, v49, v8);
  v23 = sub_1C1C9AF38();

  v47(v11, v8);
  sub_1C1C5C3F4();
  sub_1C1C9B0E8();
  sub_1C1C9A6C8();
  LOBYTE(v69) = 1;
  *&v60[6] = *&v61[51];
  *&v60[22] = *&v61[59];
  *&v60[38] = *&v61[67];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF186F0) + 36);
  v25 = *MEMORY[0x1E6981DC0];
  v26 = sub_1C1C9B138();
  (*(*(v26 - 8) + 104))(&v7[v24], v25, v26);
  *v7 = v23;
  *(v7 + 1) = 0;
  *(v7 + 8) = 1;
  v27 = *&v60[16];
  *(v7 + 18) = *v60;
  *(v7 + 34) = v27;
  *(v7 + 50) = *&v60[32];
  *(v7 + 8) = *&v60[46];
  v69 = v14;
  v70 = v52;
  sub_1C1C9AFD8();
  v28 = v62;
  sub_1C1C9B158();
  v30 = v29;
  v32 = v31;
  v33 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF186F8) + 36)];
  *v33 = v28;
  *(v33 + 1) = v28;
  *(v33 + 2) = v30;
  *(v33 + 3) = v32;
  sub_1C1C9A718();
  v35 = sub_1C1C5C8AC(v34);
  v36 = v55;
  v37 = &v7[*(v56 + 44)];
  *v37 = 0;
  *(v37 + 1) = v35;
  sub_1C1C4E714(v7, v36, &qword_1EBF186E8);
  v62 = v58;
  LOWORD(v63[0]) = 1;
  *(v63 + 2) = *v61;
  *&v63[3] = *&v61[23];
  *(&v63[2] + 2) = *&v61[16];
  *(&v63[1] + 2) = *&v61[8];
  v38 = KeyPath;
  v39 = v54;
  *(&v63[3] + 1) = KeyPath;
  *&v64 = v54;
  *(&v64 + 1) = v15;
  *&v65 = v15;
  *(&v65 + 1) = v17;
  v66 = v19;
  v67 = 0;
  v68 = v21;
  v40 = v57;
  *(v57 + 96) = v65;
  *(v40 + 112) = v19;
  v41 = v63[2];
  *(v40 + 32) = v63[1];
  *(v40 + 48) = v41;
  v42 = v64;
  *(v40 + 64) = v63[3];
  *(v40 + 80) = v42;
  v43 = v63[0];
  *v40 = v62;
  *(v40 + 16) = v43;
  *(v40 + 128) = v68;
  v44 = v40;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18700);
  sub_1C1C4E714(v36, v44 + *(v45 + 48), &qword_1EBF186E8);
  sub_1C1C4E714(&v62, &v69, &qword_1EBF18708);
  sub_1C1C4E77C(v7, &qword_1EBF186E8);
  sub_1C1C4E77C(v36, &qword_1EBF186E8);
  v72 = *v61;
  v69 = v58;
  v70 = 0;
  v71 = 1;
  v73 = *&v61[8];
  *v74 = *&v61[16];
  *&v74[14] = *&v61[23];
  v75 = v38;
  v76 = v39;
  v77 = v15;
  v78 = v15;
  v79 = v17;
  v80 = v19;
  v81 = 0;
  v82 = v21;
  return sub_1C1C4E77C(&v69, &qword_1EBF18708);
}

uint64_t *sub_1C1C5C2E4()
{
  if (qword_1ED7C5510 != -1)
  {
    swift_once();
  }

  return &qword_1ED7C62A0;
}

void sub_1C1C5C334()
{
  sub_1C1C56190(319, &qword_1EBF17C00, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C561E0();
    if (v1 <= 0x3F)
    {
      sub_1C1C51154();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C1C5C3F4()
{
  v1 = sub_1C1C9A798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for BCUIBoltView(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 1);
  v11[16] = v6;
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  v8 = v11[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  if (v8 == 1)
  {
    sub_1C1C98F8C();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C1C5C5A8()
{
  v1 = v0;
  v2 = sub_1C1C9B1A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = type metadata accessor for BCUIBoltView(0);
  sub_1C1C55068(v8);
  sub_1C1C9B198();
  sub_1C1C5C864(&qword_1ED7C4AE0, MEMORY[0x1E6985778]);
  v10 = sub_1C1C9B218();
  v11 = *(v3 + 8);
  v11(v6, v2);
  v11(v8, v2);
  if (v10)
  {
    v12 = *sub_1C1C55268();
  }

  else
  {
    v13 = [objc_opt_self() labelColor];
    v12 = sub_1C1C9AE68();
    v14 = (v1 + *(v9 + 28));
    v15 = v14[2];
    v16 = v14[3];
    v17 = *v14;
    v33 = v14[1];
    v34 = v15;
    v35 = v16;
    v36 = *(v14 + 8);
    v32 = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18188);
    MEMORY[0x1C6909DC0](&v28);
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    sub_1C1C57280(&v37);
    if (*&v38 == 1.0)
    {
      v19 = v14[2];
      v20 = v14[3];
      v21 = *v14;
      v33 = v14[1];
      v34 = v19;
      v35 = v20;
      v36 = *(v14 + 8);
      v32 = v21;
      MEMORY[0x1C6909DC0](v26, v18);
      v28 = v26[0];
      v29 = v26[1];
      v30 = v26[2];
      v31 = v27;
      sub_1C1C57280(&v28);
      if (BYTE1(v30) == 1)
      {
        v22 = sub_1C1C9AEC8();
      }

      else
      {
        v22 = sub_1C1C9AEA8();
      }

      v23 = v22;

      return v23;
    }
  }

  return v12;
}

uint64_t sub_1C1C5C864(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1C1C5C8AC(double a1)
{
  v3 = sub_1C1C9A798();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v1 + *(type metadata accessor for BCUIBoltView(0) + 36));
  v8 = *v7;
  v9 = *(v7 + 1);
  v15[16] = v8;
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  v10 = v15[15];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  sub_1C1C89B28();
  sub_1C1C89B30(v10);
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  return v13 * 0.5 - a1 * 0.5;
}

void sub_1C1C5CA48()
{
  sub_1C1C53E78(319, &qword_1EBF17BC0, MEMORY[0x1E6985778], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C1C53EDC(319, &qword_1EBF17A80, &type metadata for ChargeRingData, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1C1C53E78(319, &qword_1ED7C4AE8, MEMORY[0x1E697E730], MEMORY[0x1E6981948]);
      if (v2 <= 0x3F)
      {
        sub_1C1C53EDC(319, &qword_1EBF17AC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1C5CBA4()
{
  result = qword_1ED7C4B90;
  if (!qword_1ED7C4B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF186D0);
    sub_1C1C4CEAC(&qword_1ED7C4AF0, &qword_1EBF186E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4B90);
  }

  return result;
}

void sub_1C1C5CCBC()
{
  sub_1C1C53EDC(319, &qword_1EBF17AC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1C1C53E78(319, &qword_1ED7C4AE8, MEMORY[0x1E697E730], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C1C5CDB4()
{
  sub_1C1C9A7D8();
  sub_1C1C9AB48();
  sub_1C1C5ABCC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C1C5CE7C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = *(v1 + 8);
  v11[16] = *v1;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  sub_1C1C9B048();
  sub_1C1C5D0C4(v5);
  sub_1C1C525B4();
  return sub_1C1C5D0E0(v5, v8, a1);
}

unint64_t sub_1C1C5CFCC()
{
  result = qword_1ED7C4B40;
  if (!qword_1ED7C4B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18A30);
    sub_1C1C4CEAC(&qword_1ED7C4B38, &qword_1EBF18A30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C4B40);
  }

  return result;
}

uint64_t sub_1C1C5D0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1C1C519C4(a1, a3, &qword_1EBF17CF0);
  v5 = type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0);
  v6 = a3 + *(v5 + 20);
  sub_1C1C9AFC8();
  *v6 = v8;
  *(v6 + 8) = v9;
  sub_1C1C519C4(a2, a3 + *(v5 + 24), &qword_1EBF17FA0);
  sub_1C1C4DD2C();
  return sub_1C1C9A668();
}

uint64_t sub_1C1C5D1E4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C1C9B0E8();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF183C0);
  sub_1C1C5D298(a1 + *(v3 + 44));
  sub_1C1C5D500();
  v4 = sub_1C1C9AC18();
  sub_1C1C9A5D8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF183C8);
  v14 = a1 + *(result + 36);
  *v14 = v4;
  *(v14 + 1) = v6;
  *(v14 + 2) = v8;
  *(v14 + 3) = v10;
  *(v14 + 4) = v12;
  v14[40] = 0;
  return result;
}

double sub_1C1C5D298@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1C9A5F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20[-v7];
  sub_1C1C9AE88();
  sub_1C1C87FD8(&qword_1EBF17CE8, MEMORY[0x1E697DBD0], v8);
  (*(v3 + 104))(v6, *MEMORY[0x1E697DBA8], v2);
  sub_1C1C9A5E8();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v9(v8, v2);
  v10 = sub_1C1C9AED8();

  sub_1C1C5D500();
  sub_1C1C9A638();
  v11 = sub_1C1C9B0E8();
  v13 = v12;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF183F8) + 36);
  v15 = *MEMORY[0x1E6981DC0];
  v16 = sub_1C1C9B138();
  (*(*(v16 - 8) + 104))(a1 + v14, v15, v16);
  result = 0.0;
  v18 = *&v20[8];
  v19 = v21;
  *a1 = xmmword_1C1C9E570;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(a1 + 48) = v22;
  *(a1 + 56) = v10;
  *(a1 + 64) = 256;
  *(a1 + 72) = v11;
  *(a1 + 80) = v13;
  return result;
}

uint64_t sub_1C1C5D500()
{
  v1 = sub_1C1C9A798();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (v0 + *(type metadata accessor for BCUIRingAndGlyphView.maskRingAndGlyphView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 1);
  v11[16] = v6;
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  v8 = v11[15];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  MEMORY[0x1C6909DC0](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  sub_1C1C9A678();
  if (v8 == 1)
  {
    sub_1C1C98F8C();
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_1C1C5D6B4(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_34Tm()
{
  sub_1C1C5D6B4(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1C5D70C(uint64_t *a1)
{
  type metadata accessor for BatteryAvocadoArchivableView();
  v2 = *a1;
  type metadata accessor for AvocadoViewModel();
  sub_1C1C4D924(qword_1ED7C53F8, type metadata accessor for AvocadoViewModel);
  v3 = *sub_1C1C9A618();
  (*(v3 + 456))(v2);
}

uint64_t sub_1C1C5D838(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C1C5D8B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C1C5D938(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[11];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D78);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D80);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[14];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[15];

  return v16(v17, a2, v15);
}

uint64_t sub_1C1C5DB1C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[11];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D78);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[14];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[15];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C1C5DD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1C1C9A7B8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1C1C5DD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1C1C9A7B8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1C1C5DDF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C5DE68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17DC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C5DED8()
{
  v1 = (type metadata accessor for BCUI2x4AvocadoView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1C5DFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1C5E08C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1C5E13C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17F18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17E78);
  sub_1C1C77780();
  sub_1C1C77950();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C1C5E218()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18008);
  sub_1C1C4CEAC(&qword_1EBF18018, &qword_1EBF18008);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C1C5E340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF180D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C5E3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C5E42C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1C1C5E5C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C1C5E75C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF18198);
  sub_1C1C817E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C1C5E7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C1C5E900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C1C5EA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1C5EAFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1C5EBB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C5EC24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[13];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[15];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1C1C5EE14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D80);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[15];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C1C5F004(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1C1C5F1AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C1C5F350(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1C1C5F4EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C1C5F688(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18528);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18530);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[8];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF18538);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11]) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[9];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

uint64_t sub_1C1C5F84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1C1C5F98C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C1C5FACC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1C1C5FB94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1C5FC44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[7] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[8];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[11];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_1C1C5FE34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1C1C600B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C1C600F0()
{
  v1 = sub_1C1C9A728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1C601BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1C601F4()
{
  v1 = sub_1C1C9A728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C1C602B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C1C60380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C1C6044C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1C1C605E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17FA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17EF8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1C1C6080C()
{
  v1 = type metadata accessor for Dividers(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1C1C9A5F8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_1C1C5B774(*(v0 + v3 + *(v1 + 20)), *(v0 + v3 + *(v1 + 20) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double BCUI6x8ColumnWidthForBounds(double a1, double a2, double a3, double a4)
{
  Width = CGRectGetWidth(*&a1);
  v5 = (Width + -72.0) * 0.125;
  v6 = Width == 72.0;
  v7 = Width < 72.0;
  result = 0.0;
  if (!v7 && !v6)
  {
    return v5;
  }

  return result;
}

void sub_1C1C63CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, char a25)
{
  objc_destroyWeak((v25 + 56));
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C1C66CC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

CGFloat CoordinatesOfPointAtArcFraction(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  Width = CGRectGetWidth(*&a1);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  Height = CGRectGetHeight(v17);
  if (Width <= Height)
  {
    Height = Width;
  }

  v12 = Height * 0.5;
  v13 = (a5 + -0.75 + a5 + -0.75) * 3.14159265;
  v14 = v12 * __sincosf_stret(v13).__cosval;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v15 = CGRectGetMidX(v18) - v14;
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMidY(v19);
  return v15;
}

uint64_t __NewRingCapShadowImage_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72) * 0.5;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = a2;
  v22.origin.x = v5;
  v22.origin.y = v6;
  v22.size.width = v7;
  v22.size.height = v3;
  v23 = CGRectInset(v22, v4, v4);
  CoordinatesOfPointAtArcFraction(v23.origin.x, v23.origin.y, v23.size.width, v23.size.height, 0.75);
  UIPointRoundToScale();
  v10 = *(a1 + 88) * 0.5 - v9;
  v12 = *(a1 + 96) * 0.5 - v11;
  Width = CGRectGetWidth(*(a1 + 40));
  Height = CGRectGetHeight(*(a1 + 40));
  v15 = [v8 CGContext];

  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = Width;
  v24.size.height = Height;
  CGContextClipToMask(v15, v24, *(a1 + 104));
  CGImageRelease(*(a1 + 104));
  v16 = [MEMORY[0x1E69DC888] colorWithRed:0.560784314 green:0.560784314 blue:0.560784314 alpha:1.0];
  [v16 set];

  v17 = *(a1 + 32);
  v18 = *MEMORY[0x1E695EFF8];
  v19 = *(MEMORY[0x1E695EFF8] + 8);

  return [v17 drawAtPoint:{v18, v19}];
}

id sub_1C1C6BAB0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v6 = [v4 preferredFontForTextStyle:a1 compatibleWithTraitCollection:v5];

  return v6;
}

uint64_t sub_1C1C6BB40()
{
  v0 = sub_1C1C9A5F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_1C1C9AE68();
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBB8], v0);
  sub_1C1C9A5E8();
  (*(v1 + 8))(v3, v0);
  v5 = sub_1C1C9AED8();

  return v5;
}

uint64_t sub_1C1C6BCB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C1C9AA38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C1C6BEE0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1C9A5F8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1C9B408();
    v13 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C1C6BEE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1C6BF74(uint64_t a1)
{
  v2 = sub_1C1C9A5F8();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C1C9A8C8();
}

uint64_t sub_1C1C6C03C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1C9AE98();
  *a1 = result;
  return result;
}

uint64_t sub_1C1C6C068@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C1C6C0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Utilities.Background()
{
  result = qword_1EBF19150;
  if (!qword_1EBF19150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1C6C200()
{
  sub_1C1C6C26C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C1C6C26C()
{
  if (!qword_1EBF17C18)
  {
    sub_1C1C9A5F8();
    v0 = sub_1C1C9A608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF17C18);
    }
  }
}

id sub_1C1C6C2D8()
{
  _s13currentBundleCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBF19A78 = result;
  return result;
}

uint64_t *sub_1C1C6C32C()
{
  if (qword_1EBF18D30 != -1)
  {
    swift_once();
  }

  return &qword_1EBF19A78;
}

id sub_1C1C6C37C()
{
  if (qword_1EBF18D30 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBF19A78;

  return v0;
}

uint64_t sub_1C1C6C458(void *a1)
{
  if ([a1 isLowBattery] && objc_msgSend(a1, sel_percentCharge) >= 1)
  {
    result = [a1 percentCharge];
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else if (result != -1)
    {
      return result;
    }

    __break(1u);
    return result;
  }

  if ([a1 accessoryCategory] != 2 || objc_msgSend(a1, sel_percentCharge) < 1 || (result = objc_msgSend(a1, sel_parts), LODWORD(v3) = 1.0, (result & 4) != 0))
  {
    if ([a1 accessoryCategory] != 10 || (result = objc_msgSend(a1, sel_percentCharge), result <= 0))
    {
      if ([a1 accessoryCategory] != 3 || (result = objc_msgSend(a1, sel_percentCharge), result <= 0))
      {
        if ([a1 accessoryCategory] != 7 || (result = objc_msgSend(a1, sel_percentCharge), result <= 0))
        {
          if ([a1 accessoryCategory] != 5 || (result = objc_msgSend(a1, sel_percentCharge), result <= 0))
          {
            if ([a1 accessoryCategory] != 6 || (result = objc_msgSend(a1, sel_percentCharge), result <= 0))
            {
              if ([a1 accessoryCategory] != 9 || (result = objc_msgSend(a1, sel_percentCharge), result <= 0))
              {
                if ([a1 accessoryCategory] != 8 || (result = objc_msgSend(a1, sel_percentCharge), result <= 0))
                {
                  if ([a1 accessoryCategory] != 2 || objc_msgSend(a1, sel_percentCharge) < 1 || (result = objc_msgSend(a1, sel_parts), LODWORD(v4) = 9.0, (result & 4) == 0))
                  {
                    if ([a1 accessoryCategory] != 4 || (result = objc_msgSend(a1, sel_percentCharge), result <= 0))
                    {
                      result = [a1 accessoryCategory];
                      if (result == 1)
                      {
                        return [a1 percentCharge];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C1C6C780()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C1C6C7B0()
{
  v1 = *(v0 + 32);

  return v1;
}

void sub_1C1C6C7E8(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v82 = *MEMORY[0x1E69E9840];
  v6 = sub_1C1C9A4C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v77 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v77 - v14;
  if (a2)
  {
    if (a2 == 1)
    {
      v16 = sub_1C1C98A98();
      (*(v7 + 16))(v13, v16, v6);
      v17 = sub_1C1C9A4A8();
      v18 = sub_1C1C9B418();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v80 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_1C1C4DDB8(0xD000000000000011, 0x80000001C1C9D040, &v80);
        _os_log_impl(&dword_1C1C4A000, v17, v18, "(%s) Not Connected", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x1C690AD10](v20, -1, -1);
        MEMORY[0x1C690AD10](v19, -1, -1);
      }

      (*(v7 + 8))(v13, v6);
      sub_1C1C4D00C(0, &qword_1EBF17BE8);
      v21 = sub_1C1C9B488();
      sub_1C1C9B388();
      v23 = v22;

      if (qword_1EBF18D30 != -1)
      {
        swift_once();
      }

      v24 = sub_1C1C9A408();
      v26 = v25;
      v27 = [a1 displayString];
      v28 = sub_1C1C9B258();
      v30 = v29;

      v31 = [a1 systemImageName];
      if (v31)
      {
        v32 = v31;
        sub_1C1C9B258();

        v33 = [a1 isCustomImage];
        v34 = a1;
        if (v33)
        {
          v35 = v33;
          v79 = v34;
          v36 = [v33 BOOLValue];

          v37 = sub_1C1C9AF18();
          if (v36)
          {
            sub_1C1C4D00C(0, &qword_1EBF17CF8);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v39 = [objc_opt_self() bundleForClass_];
            v40 = sub_1C1C9AF48();

            sub_1C1C6D7A4(v79, 1u);

            v37 = v40;
          }

          else
          {

            sub_1C1C6D7A4(v79, 1u);
          }

          v53 = 0;
          v68 = 0;
          goto LABEL_32;
        }

        sub_1C1C6D7A4(a1, 1u);
      }

      else
      {
        sub_1C1C6D7A4(a1, 1u);
      }

      v53 = 0;
      v68 = 0;
    }

    else
    {
      v60 = sub_1C1C98A98();
      (*(v7 + 16))(v10, v60, v6);
      v61 = sub_1C1C9A4A8();
      v62 = sub_1C1C9B418();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v80 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_1C1C4DDB8(0xD000000000000011, 0x80000001C1C9D040, &v80);
        _os_log_impl(&dword_1C1C4A000, v61, v62, "(%s) error", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        MEMORY[0x1C690AD10](v64, -1, -1);
        MEMORY[0x1C690AD10](v63, -1, -1);
      }

      (*(v7 + 8))(v10, v6);
      sub_1C1C4D00C(0, &qword_1EBF17BE8);
      v65 = sub_1C1C9B488();
      sub_1C1C9B388();
      v23 = v66;

      if (qword_1EBF18D30 != -1)
      {
        swift_once();
      }

      v30 = 0xE000000000000000;
      v24 = sub_1C1C9A408();
      v26 = v67;
      v53 = 0;
      v68 = 0;
      v28 = 0;
    }

    v37 = 0;
    goto LABEL_32;
  }

  v41 = sub_1C1C98A98();
  (*(v7 + 16))(v15, v41, v6);
  v42 = a1;
  v43 = sub_1C1C9A4A8();
  v44 = sub_1C1C9B418();
  sub_1C1C6D7A4(a1, 0);
  v45 = os_log_type_enabled(v43, v44);
  v79 = a1;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v78 = a3;
    v49 = v42;
    v50 = v48;
    v80 = v48;
    *v46 = 136315394;
    *(v46 + 4) = sub_1C1C4DDB8(0xD000000000000011, 0x80000001C1C9D040, &v80);
    *(v46 + 12) = 2112;
    *(v46 + 14) = v49;
    *v47 = a1;
    v51 = v49;
    _os_log_impl(&dword_1C1C4A000, v43, v44, "(%s) Connected: %@", v46, 0x16u);
    sub_1C1C6D7B8(v47);
    MEMORY[0x1C690AD10](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v50);
    v52 = v50;
    v42 = v49;
    a3 = v78;
    MEMORY[0x1C690AD10](v52, -1, -1);
    MEMORY[0x1C690AD10](v46, -1, -1);
  }

  (*(v7 + 8))(v15, v6);
  v53 = [v42 isCharging];
  [v42 percentCharge];
  v54 = sub_1C1C9B3D8();
  sub_1C1C9B388();
  v23 = v55;

  v56 = [objc_opt_self() bcui_newPercentChargeFormatter];
  v57 = sub_1C1C9A468();
  v58 = [v56 stringFromNumber_];

  if (v58)
  {
    v24 = sub_1C1C9B258();
    v26 = v59;
  }

  else
  {
    v80 = 0;
    v81 = 0xE000000000000000;
    sub_1C1C9B3B8();
    v24 = v80;
    v26 = v81;
  }

  v69 = [v42 name];
  if (v69)
  {
    v70 = v69;
    v28 = sub_1C1C9B258();
    v30 = v71;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  LOBYTE(v80) = 0;
  v72 = [v42 batteryWidgetGlyphName_];
  sub_1C1C9B258();

  v73 = v80;

  v37 = sub_1C1C9AF18();
  if (v73 == 1)
  {
    sub_1C1C4D00C(0, &qword_1EBF17CF8);
    v74 = swift_getObjCClassFromMetadata();
    v75 = [objc_opt_self() bundleForClass_];
    v76 = sub_1C1C9AF48();
    sub_1C1C6D7A4(v79, 0);

    v37 = v76;
  }

  else
  {
    sub_1C1C6D7A4(v79, 0);
  }

  v68 = 1;
LABEL_32:
  *a3 = v53;
  *(a3 + 1) = v68;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 24) = v26;
  *(a3 + 32) = v28;
  *(a3 + 40) = v30;
  *(a3 + 48) = v37;
}

uint64_t sub_1C1C6D1A0(uint64_t a1, uint64_t a2, char a3)
{

  result = sub_1C1C9AF18();
  if (a3)
  {
    sub_1C1C4D00C(0, &qword_1EBF17CF8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = objc_opt_self();

    v7 = [v6 bundleForClass_];
    v8 = sub_1C1C9AF48();

    return v8;
  }

  return result;
}

uint64_t sub_1C1C6D268()
{
  sub_1C1C9B4E8();
  MEMORY[0x1C690A040](0x656E6E6F43736928, 0xEE00203A64657463);
  if (*(v0 + 1))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 1))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C690A040](v1, v2);

  MEMORY[0x1C690A040](0xD000000000000011, 0x80000001C1CA0550);
  sub_1C1C9B3B8();
  MEMORY[0x1C690A040](0xD000000000000012, 0x80000001C1CA0570);
  MEMORY[0x1C690A040](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C690A040](0x745379646F62202CLL, 0xEE00203A676E6972);
  MEMORY[0x1C690A040](*(v0 + 32), *(v0 + 40));
  MEMORY[0x1C690A040](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C1C6D3D4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C1C6D420(a1, a2);
  sub_1C1C6D550(&unk_1F4166928);
  return v3;
}

uint64_t sub_1C1C6D420(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C1C6D63C(v5, 0);
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

  result = sub_1C1C9B518();
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
        v10 = sub_1C1C9B2A8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C1C6D63C(v10, 0);
        result = sub_1C1C9B4D8();
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

uint64_t sub_1C1C6D550(uint64_t result)
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

  result = sub_1C1C6D6B0(result, v11, 1, v3);
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

void *sub_1C1C6D63C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C1C6D6B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_1C1C6D7A4(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_1C1C6D7B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1C6D844(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1C1C6D88C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1C6D8E8()
{
  v0 = *sub_1C1C5C2E4();
  result = sub_1C1C9AF48();
  qword_1EBF191E8 = result;
  return result;
}

uint64_t sub_1C1C6D938()
{
  v0 = *sub_1C1C5C2E4();
  result = sub_1C1C9AF48();
  qword_1EBF18D48 = result;
  return result;
}

uint64_t sub_1C1C6D988()
{
  v0 = *sub_1C1C5C2E4();
  result = sub_1C1C9AF48();
  qword_1EBF18D68 = result;
  return result;
}

uint64_t sub_1C1C6D9D8()
{
  v0 = *sub_1C1C5C2E4();
  result = sub_1C1C9AF48();
  qword_1EBF18D58 = result;
  return result;
}

uint64_t sub_1C1C6DA28()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v5, v3);
  return v5;
}

uint64_t (*sub_1C1C6DADC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v4 + 48) = *v1;
  *(v4 + 56) = v6;
  v7 = *(v1 + 16);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C71EE8;
}

uint64_t sub_1C1C6DB90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  sub_1C1C9B048();
  return v1;
}

double sub_1C1C6DBEC()
{
  v1 = v0[4];
  v2 = v0[5];
  v5[1] = v0[3];
  v5[2] = v1;
  v5[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0](v5, v3);
  return *v5;
}

void (*sub_1C1C6DCA0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[3];
  v6 = v1[4];
  v4[8] = v5;
  v4[9] = v6;
  v7 = v1[5];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C6DD54;
}

void sub_1C1C6DD54(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 72);
  *(*a1 + 24) = *(*a1 + 64);
  v4 = v1[10];
  v1[4] = v3;
  v1[5] = v4;
  v1[7] = v2;
  sub_1C1C9B028();

  free(v1);
}

double sub_1C1C6DDCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  sub_1C1C9B048();
  return v1;
}

uint64_t sub_1C1C6DE28()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v5, v3);
  return v5;
}

uint64_t (*sub_1C1C6DEDC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 64);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C71EE8;
}

uint64_t sub_1C1C6DF90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  sub_1C1C9B048();
  return v1;
}

uint64_t sub_1C1C6DFEC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v5, v3);
  return v5;
}

uint64_t (*sub_1C1C6E0A0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 88);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0]();
  return sub_1C1C6E154;
}

void sub_1C1C6E158(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_1C1C9B028();

  free(v1);
}

uint64_t sub_1C1C6E1D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  sub_1C1C9B048();
  return v1;
}

double sub_1C1C6E268()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D20);
  sub_1C1C9AFD8();
  return v1;
}

void (*sub_1C1C6E318(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 96);
  *(v3 + 48) = v5;
  v6 = *(v1 + 104);
  v4[7] = v6;
  *v4 = v5;
  v4[1] = v6;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D20);
  sub_1C1C9AFD8();
  return sub_1C1C6E3C4;
}

void sub_1C1C6E3C4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 56);
  *(*a1 + 16) = *(*a1 + 48);
  v1[3] = v3;
  v1[5] = v2;
  sub_1C1C9AFE8();

  free(v1);
}

double sub_1C1C6E434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D20);
  sub_1C1C9AFF8();
  return v1;
}

uint64_t sub_1C1C6E494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return v1;
}

uint64_t (*sub_1C1C6E548(uint64_t *a1))()
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
  v5 = *(v1 + 112);
  *(v3 + 50) = v5;
  v6 = *(v1 + 120);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return sub_1C1C6E5F4;
}

uint64_t sub_1C1C6E5F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFF8();
  return v1;
}

uint64_t sub_1C1C6E690()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return v1;
}

uint64_t (*sub_1C1C6E744(uint64_t *a1))()
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
  v5 = *(v1 + 128);
  *(v3 + 50) = v5;
  v6 = *(v1 + 136);
  *(v4 + 32) = v6;
  *v4 = v5;
  *(v4 + 8) = v6;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  return sub_1C1C71EEC;
}

void sub_1C1C6E7F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v3;
  *(v1 + 49) = v2;
  sub_1C1C9AFE8();

  free(v1);
}

uint64_t sub_1C1C6E858()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFF8();
  return v1;
}

uint64_t sub_1C1C6E934@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1C9A9E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1C6EA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

double sub_1C1C6EB4C@<D0>(uint64_t a1@<X8>)
{
  sub_1C1C7199C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_1C1C6EBB0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1C1C9A598();
  return sub_1C1C6EC38;
}

void sub_1C1C6EC38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1C1C6EC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1C71758(&unk_1ED7C5790);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C1C6ED04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1C71758(&unk_1ED7C5790);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C1C6ED84(uint64_t a1)
{
  v2 = sub_1C1C71758(&unk_1ED7C5790);

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_1C1C6EDEC()
{
  v1 = v0;
  v2 = sub_1C1C9B1A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-v7];
  type metadata accessor for BCUIBatteryGlyphView(0);
  sub_1C1C7179C(&qword_1EBF17D40, MEMORY[0x1E6985778], v8);
  sub_1C1C9B198();
  sub_1C1C573C4(&qword_1ED7C4AE0, MEMORY[0x1E6985778]);
  v9 = sub_1C1C9B218();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    sub_1C1C55268();
  }

  else
  {
    v12 = *(v1 + 56);
    v13 = *(v1 + 64);
    v19 = *(v1 + 48);
    v20 = v12;
    v21 = v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
    MEMORY[0x1C6909DC0](&v18);
    if (v18 == 1)
    {
      return sub_1C1C9AE78();
    }

    else
    {
      v15 = *(v1 + 80);
      v16 = *(v1 + 88);
      v19 = *(v1 + 72);
      v20 = v15;
      v21 = v16;
      MEMORY[0x1C6909DC0](&v18, v14);
      if (v18 == 1)
      {
        return sub_1C1C9AEC8();
      }

      else
      {
        return sub_1C1C9AEA8();
      }
    }
  }
}

uint64_t sub_1C1C6F014()
{
  v21 = sub_1C1C9A5F8();
  v1 = *(v21 - 8);
  v2 = MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = sub_1C1C9B1A8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  type metadata accessor for BCUIBatteryGlyphView(0);
  v20 = v0;
  sub_1C1C7179C(&qword_1EBF17D40, MEMORY[0x1E6985778], v13);
  sub_1C1C9B198();
  sub_1C1C573C4(&qword_1ED7C4AE0, MEMORY[0x1E6985778]);
  v14 = sub_1C1C9B218();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if (v14)
  {
    sub_1C1C55268();
  }

  else
  {
    sub_1C1C7179C(&qword_1EBF17CE8, MEMORY[0x1E697DBD0], v6);
    v17 = v21;
    (*(v1 + 104))(v4, *MEMORY[0x1E697DBB8], v21);
    v18 = sub_1C1C9A5E8();
    v19 = *(v1 + 8);
    v19(v4, v17);
    v19(v6, v17);
    if (v18)
    {
      return sub_1C1C9AE88();
    }

    else
    {
      return sub_1C1C9AEB8();
    }
  }
}

uint64_t sub_1C1C6F314@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = sub_1C1C9AAA8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C1C9AB98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D48);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v22 - v9);
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D50);
  v11 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v13 = v22 - v12;
  *v10 = sub_1C1C9B0E8();
  v10[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D58);
  sub_1C1C6F670(v2, v10 + *(v15 + 44));
  sub_1C1C9AB78();
  v16 = sub_1C1C70E9C();
  sub_1C1C9ADF8();
  (*(v5 + 8))(v7, v4);
  sub_1C1C4E77C(v10, &qword_1EBF17D48);
  sub_1C1C9AA98();
  sub_1C1C9AA88();
  v17 = *(v2 + 8);
  v18 = *(v2 + 16);
  v24 = *v2;
  v25 = v17;
  v26 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](&v23, v19);
  sub_1C1C54D24(v23);
  sub_1C1C9AA78();

  sub_1C1C9AA88();
  sub_1C1C9AAC8();
  v24 = v8;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  v20 = v22[0];
  sub_1C1C9ADC8();

  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_1C1C6F670@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v160 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17DC8);
  v157 = *(v3 - 8);
  v158 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v142 = &v136 - v4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17DD0);
  v5 = MEMORY[0x1EEE9AC00](v139);
  v141 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v140 = &v136 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v161 = &v136 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17DD8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v176 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v175 = &v136 - v13;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17DE0);
  v159 = *(v185 - 8);
  v14 = MEMORY[0x1EEE9AC00](v185);
  v184 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v183 = &v136 - v16;
  v151 = type metadata accessor for BCUIBatteryGlyphView.BatteryFillShape(0);
  MEMORY[0x1EEE9AC00](v151);
  v144 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17DE8);
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v136 - v18;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17DF0);
  MEMORY[0x1EEE9AC00](v152);
  v149 = &v136 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17DF8);
  v153 = *(v20 - 8);
  v154 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v136 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E00);
  v173 = *(v22 - 8);
  v174 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v182 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v181 = &v136 - v25;
  v26 = sub_1C1C9B1A8();
  v179 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v163 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v162 = &v136 - v29;
  v30 = sub_1C1C9AF08();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E08);
  v177 = *(v172 - 8);
  v34 = MEMORY[0x1EEE9AC00](v172);
  v171 = &v136 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v156 = &v136 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v180 = &v136 - v38;
  if (qword_1EBF18D50 != -1)
  {
    swift_once();
  }

  v39 = *(v31 + 104);
  v166 = *MEMORY[0x1E6981630];
  v167 = v31 + 104;
  v165 = v39;
  v39(v33);
  v40 = sub_1C1C9AF38();
  v41 = *(v31 + 8);
  v168 = v33;
  v169 = v31 + 8;
  v170 = v30;
  v164 = v41;
  v41(v33, v30);
  v43 = *(a1 + 104);
  *&v199 = *(a1 + 96);
  v42 = v199;
  *(&v199 + 1) = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D20);
  sub_1C1C9AFD8();
  *&v199 = v42;
  v186 = v43;
  *(&v199 + 1) = v43;
  sub_1C1C9AFD8();
  sub_1C1C9B0E8();
  v178 = a1;
  sub_1C1C9A848();
  *&v199 = v40;
  WORD4(v205[1]) = 257;
  v146 = *(type metadata accessor for BCUIBatteryGlyphView(0) + 60);
  v45 = v162;
  sub_1C1C7179C(&qword_1EBF17D40, MEMORY[0x1E6985778], v162);
  v46 = v163;
  sub_1C1C9B198();
  v47 = sub_1C1C9B188();
  v49 = v179 + 8;
  v48 = *(v179 + 8);
  v48(v46, v26);
  v155 = v26;
  v179 = v49;
  v145 = v48;
  v48(v45, v26);
  v143 = sub_1C1C55268();
  v50 = *v143;

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E10);
  v137 = sub_1C1C71C14(&qword_1EBF17E18, &qword_1EBF17E10, &unk_1C1C9D468, sub_1C1C71C98);
  v138 = v51;
  sub_1C1C552B8(v47 & 1, v50, v51, v137, v180);

  v206[4] = v203;
  v206[5] = v204;
  v207[0] = v205[0];
  *(v207 + 10) = *(v205 + 10);
  v206[0] = v199;
  v206[1] = v200;
  v206[2] = v201;
  v206[3] = v202;
  v52 = v178;
  sub_1C1C4E77C(v206, &qword_1EBF17E10);
  v53 = *(v52 + 32);
  v54 = *(v52 + 40);
  *&v199 = *(v52 + 24);
  *(&v199 + 1) = v53;
  *&v200 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D18);
  MEMORY[0x1C6909DC0](v190, v55);
  v56 = *&v190[0];
  v57 = v151;
  v58 = v144;
  sub_1C1C7179C(&qword_1EBF17D38, MEMORY[0x1E697E7E0], &v144[*(v151 + 20)]);
  *&v199 = v42;
  v59 = v186;
  *(&v199 + 1) = v186;
  sub_1C1C9AFD8();
  v60 = *v190 * 19.0 / 10.0;
  *&v199 = v42;
  *(&v199 + 1) = v59;
  sub_1C1C9AFD8();
  *v58 = v56;
  *(v58 + *(v57 + 24)) = v60;
  *(v58 + *(v57 + 28)) = *&v190[0];
  *&v199 = v42;
  *(&v199 + 1) = v59;
  sub_1C1C9AFD8();
  *&v199 = v42;
  *(&v199 + 1) = v59;
  v151 = v44;
  sub_1C1C9AFD8();
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  v61 = v148;
  sub_1C1C71D1C(v58, v148);
  v62 = (v61 + *(v147 + 36));
  v63 = v207[7];
  v62[4] = v207[6];
  v62[5] = v63;
  v62[6] = v207[8];
  v64 = v207[3];
  *v62 = v207[2];
  v62[1] = v64;
  v65 = v207[5];
  v62[2] = v207[4];
  v62[3] = v65;
  v66 = v149;
  sub_1C1C519C4(v61, v149, &qword_1EBF17DE8);
  v67 = v152;
  *(v66 + *(v152 + 36)) = 257;
  v68 = *(v52 + 136);
  LOBYTE(v199) = *(v52 + 128);
  *(&v199 + 1) = v68;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D28);
  sub_1C1C9AFD8();
  v69 = LOBYTE(v190[0]);
  v70 = sub_1C1C6EDEC();
  v71 = sub_1C1C71C14(&qword_1EBF17E30, &qword_1EBF17DF0, &unk_1C1C9D448, sub_1C1C71D80);
  v72 = v150;
  sub_1C1C552B8(v69, v70, v67, v71, v150);

  sub_1C1C4E77C(v66, &qword_1EBF17DF0);
  *&v199 = v67;
  *(&v199 + 1) = v71;
  swift_getOpaqueTypeConformance2();
  v73 = v154;
  sub_1C1C9AD58();
  (*(v153 + 8))(v72, v73);
  if (qword_1EBF18D60 != -1)
  {
    swift_once();
  }

  v74 = v168;
  v75 = v170;
  v165(v168, v166, v170);
  v76 = sub_1C1C9AF38();
  v164(v74, v75);
  *&v199 = v42;
  v77 = v186;
  *(&v199 + 1) = v186;
  sub_1C1C9AFD8();
  *&v199 = v42;
  *(&v199 + 1) = v77;
  sub_1C1C9AFD8();
  sub_1C1C9B0E8();
  sub_1C1C9A848();
  *&v199 = v42;
  *(&v199 + 1) = v186;
  sub_1C1C9AFD8();
  v78 = *v190 * 11.5;
  *(&v190[3] + 8) = v195;
  *(&v190[4] + 8) = v196;
  *(&v190[5] + 8) = v197;
  *(&v190[6] + 8) = v198;
  *(v190 + 8) = v192;
  *(&v190[1] + 8) = v193;
  *(&v190[2] + 8) = v194;
  *&v190[0] = v76;
  WORD4(v190[7]) = 257;
  *&v191 = v78 / 10.0;
  *(&v191 + 1) = 0;
  v79 = v178;
  v80 = v162;
  sub_1C1C7179C(&qword_1EBF17D40, MEMORY[0x1E6985778], v162);
  v81 = v163;
  sub_1C1C9B198();
  v82 = sub_1C1C9B188();
  v83 = v81;
  v84 = v155;
  v85 = v145;
  v145(v83, v155);
  v85(v80, v84);
  v86 = *v143;

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E40);
  v88 = sub_1C1C71E28();
  sub_1C1C552B8(v82 & 1, v86, v87, v88, v183);

  v205[0] = v190[6];
  v205[1] = v190[7];
  v205[2] = v191;
  v201 = v190[2];
  v202 = v190[3];
  v203 = v190[4];
  v204 = v190[5];
  v199 = v190[0];
  v200 = v190[1];
  sub_1C1C4E77C(&v199, &qword_1EBF17E40);
  v89 = *(v79 + 8);
  v90 = *(v79 + 16);
  *&v190[0] = *v79;
  *(&v190[0] + 1) = v89;
  LOBYTE(v190[1]) = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D10);
  MEMORY[0x1C6909DC0](v188, v91);
  if (v188[0])
  {
    v92 = v177;
    if (qword_1EBF191F0 != -1)
    {
      swift_once();
    }

    v93 = v168;
    v94 = v170;
    v165(v168, v166, v170);
    v95 = sub_1C1C9AF38();
    v164(v93, v94);
    *&v190[0] = v42;
    v96 = v186;
    *(&v190[0] + 1) = v186;
    sub_1C1C9AFD8();
    *&v190[0] = v42;
    *(&v190[0] + 1) = v96;
    sub_1C1C9AFD8();
    sub_1C1C9B0E8();
    sub_1C1C9A848();
    v97 = *(v139 + 36);
    v98 = *MEMORY[0x1E6981DC0];
    v99 = sub_1C1C9B138();
    v100 = v140;
    (*(*(v99 - 8) + 104))(&v140[v97], v98, v99);
    v101 = v189[4];
    *(v100 + 56) = v189[5];
    v102 = v189[7];
    *(v100 + 72) = v189[6];
    *(v100 + 88) = v102;
    *(v100 + 104) = v189[8];
    v103 = v189[3];
    *(v100 + 8) = v189[2];
    *(v100 + 24) = v103;
    *v100 = v95;
    *(v100 + 40) = v101;
    *(v100 + 120) = 257;
    sub_1C1C519C4(v100, v161, &qword_1EBF17DD0);
    if (qword_1EBF191E0 != -1)
    {
      swift_once();
    }

    v104 = v168;
    v105 = v170;
    v165(v168, v166, v170);
    v106 = sub_1C1C9AF38();
    v164(v104, v105);
    *&v190[0] = v42;
    v107 = v186;
    *(&v190[0] + 1) = v186;
    sub_1C1C9AFD8();
    *&v190[0] = v42;
    *(&v190[0] + 1) = v107;
    sub_1C1C9AFD8();
    sub_1C1C9B0E8();
    sub_1C1C9A848();
    *&v188[0] = v106;
    WORD4(v189[1]) = 257;
    v108 = *(v79 + 120);
    LOBYTE(v190[0]) = *(v79 + 112);
    *(&v190[0] + 1) = v108;
    sub_1C1C9AFD8();
    v109 = v187;
    v110 = sub_1C1C6F014();
    v111 = v156;
    sub_1C1C552B8(v109, v110, v138, v137, v156);

    v190[4] = v188[4];
    v190[5] = v188[5];
    v190[6] = v189[0];
    *(&v190[6] + 10) = *(v189 + 10);
    v190[0] = v188[0];
    v190[1] = v188[1];
    v190[2] = v188[2];
    v190[3] = v188[3];
    sub_1C1C4E77C(v190, &qword_1EBF17E10);
    v112 = v141;
    sub_1C1C4E714(v161, v141, &qword_1EBF17DD0);
    v113 = *(v92 + 16);
    v114 = v171;
    v115 = v111;
    v116 = v172;
    v113(v171, v115, v172);
    v117 = v92;
    v118 = v142;
    sub_1C1C4E714(v112, v142, &qword_1EBF17DD0);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E58);
    v120 = v113;
    v113((v118 + *(v119 + 48)), v114, v116);
    v121 = *(v117 + 8);
    v121(v156, v116);
    sub_1C1C4E77C(v161, &qword_1EBF17DD0);
    v121(v114, v116);
    sub_1C1C4E77C(v112, &qword_1EBF17DD0);
    v122 = v175;
    sub_1C1C5DE68(v118, v175);
    (*(v157 + 56))(v122, 0, 1, v158);
  }

  else
  {
    v122 = v175;
    (*(v157 + 56))(v175, 1, 1, v158);
    v120 = *(v177 + 16);
    v114 = v171;
    v116 = v172;
  }

  v120(v114, v180, v116);
  v186 = *(v173 + 16);
  v186(v182, v181, v174);
  v123 = v159;
  v179 = *(v159 + 16);
  (v179)(v184, v183, v185);
  sub_1C1C5DDF8(v122, v176);
  v124 = v116;
  v125 = v160;
  v120(v160, v114, v124);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17E50);
  v127 = v174;
  v186(&v125[v126[12]], v182, v174);
  v128 = v185;
  (v179)(&v125[v126[16]], v184, v185);
  v129 = v176;
  sub_1C1C5DDF8(v176, &v125[v126[20]]);
  sub_1C1C4E77C(v175, &qword_1EBF17DD8);
  v130 = *(v123 + 8);
  v130(v183, v128);
  v131 = *(v173 + 8);
  v132 = v127;
  v131(v181, v127);
  v133 = *(v177 + 8);
  v134 = v172;
  v133(v180, v172);
  sub_1C1C4E77C(v129, &qword_1EBF17DD8);
  v130(v184, v185);
  v131(v182, v132);
  return (v133)(v171, v134);
}

unint64_t sub_1C1C70E9C()
{
  result = qword_1EBF17D60;
  if (!qword_1EBF17D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17D48);
    sub_1C1C4CEAC(&qword_1EBF17D68, &qword_1EBF17D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17D60);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C1C70F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, char a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a10;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  sub_1C1C9AFC8();
  *(a9 + 96) = v21;
  *(a9 + 104) = v22;
  sub_1C1C9AFC8();
  *(a9 + 112) = v21;
  *(a9 + 120) = v22;
  sub_1C1C9AFC8();
  *(a9 + 128) = v21;
  *(a9 + 136) = v22;
  v14 = type metadata accessor for BCUIBatteryGlyphView(0);
  v15 = v14[11];
  *(a9 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17CE8);
  swift_storeEnumTagMultiPayload();
  v16 = v14[12];
  *(a9 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D30);
  swift_storeEnumTagMultiPayload();
  v17 = a9 + v14[13];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v14[14];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D38);
  swift_storeEnumTagMultiPayload();
  v19 = v14[15];
  *(a9 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF17D40);
  return swift_storeEnumTagMultiPayload();
}

void sub_1C1C711E4()
{
  sub_1C1C71440(319, &qword_1EBF17A60, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1C1C71440(319, &qword_1EBF17A78, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      sub_1C1C71440(319, &qword_1EBF17D90, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1C1C71440(319, &qword_1EBF17AC8, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1C1C4D364(319, &qword_1EBF17C18, MEMORY[0x1E697DBD0]);
          if (v4 <= 0x3F)
          {
            sub_1C1C4D364(319, &qword_1EBF17D98, MEMORY[0x1E697F610]);
            if (v5 <= 0x3F)
            {
              sub_1C1C71440(319, &qword_1EBF17C00, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1C1C4D364(319, &qword_1EBF17BB8, MEMORY[0x1E697E7E0]);
                if (v7 <= 0x3F)
                {
                  sub_1C1C4D364(319, &qword_1EBF17BC0, MEMORY[0x1E6985778]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C1C71440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1C1C71490()
{
  result = qword_1EBF17DA0;
  if (!qword_1EBF17DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17DA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF17D48);
    sub_1C1C70E9C();
    swift_getOpaqueTypeConformance2();
    sub_1C1C573C4(&qword_1EBF17AF0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17DA0);
  }

  return result;
}

uint64_t sub_1C1C715D0()
{
  result = sub_1C1C9A7B8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C1C7169C()
{
  result = qword_1EBF17DC0;
  if (!qword_1EBF17DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF17DC0);
  }

  return result;
}

uint64_t sub_1C1C71758(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BCUIBatteryGlyphView.BatteryFillShape(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1C7179C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1C1C9AA38();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1C1C4E714(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1C1C9B408();
    v17 = sub_1C1C9ABF8();
    sub_1C1C9A498();

    sub_1C1C9AA28();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}
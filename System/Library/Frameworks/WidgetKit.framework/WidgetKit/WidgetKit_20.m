uint64_t sub_192204970(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 124)) = 1;
  *(a1 + *(result + 120)) = 1;
  return result;
}

uint64_t sub_192204A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920A59A8;

  return v13(a1, a2, a3, a4);
}

id static CHSWidgetDisplayPropertiesCodable.wrapping(_:)(void *a1)
{
  [a1 scale];
  v3 = v2;
  v4 = [a1 colorGamut];
  v5 = objc_allocWithZone(type metadata accessor for CHSWidgetDisplayPropertiesCodable());

  return [v5 initWithScale:v4 colorGamut:v3];
}

void (*EnvironmentValues._widgetDisplayProperties.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  sub_192040FB0();
  sub_1922261E0();
  return sub_192204C50;
}

void sub_192204C50(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = v3;
    EnvironmentValues._widgetDisplayProperties.setter(v5);
  }

  else
  {
    EnvironmentValues._widgetDisplayProperties.setter(v3);
  }
}

uint64_t sub_192204CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1922051AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_192204CE0(uint64_t a1)
{
  v2 = sub_19204522C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_192204D1C(uint64_t a1)
{
  v2 = sub_19204522C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id CHSWidgetDisplayPropertiesCodable.__allocating_init(displayConfiguration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithDisplayConfiguration_];

  return v3;
}

id CHSWidgetDisplayPropertiesCodable.__allocating_init(widgetDisplayProperties:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWidgetDisplayProperties_];

  return v3;
}

id CHSWidgetDisplayPropertiesCodable.__allocating_init(size:scale:colorGamut:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithSize:a1 scale:a2 colorGamut:{a3, a4}];
}

id CHSWidgetDisplayPropertiesCodable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CHSWidgetDisplayPropertiesCodable();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_192205158()
{
  result = qword_1EADF2628;
  if (!qword_1EADF2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2628);
  }

  return result;
}

uint64_t sub_1922051AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6147726F6C6F63 && a2 == 0xEA00000000007475)
  {

    return 2;
  }

  else
  {
    v6 = sub_1922289A0();

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

uint64_t sub_1922052E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2648, &qword_192245530);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_19220535C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2640, &qword_192245528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1922053CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2640, &qword_192245528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_192205434()
{
  result = qword_1ED74AEB0;
  if (!qword_1ED74AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2658, &unk_192245540);
    sub_19207DAD8();
    sub_192031E74(&qword_1ED74AEA8, &qword_1EADF2648, &qword_192245530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEB0);
  }

  return result;
}

uint64_t EnvironmentValues._archiveVersion.getter()
{
  sub_1920C86F0();

  return sub_1922261E0();
}

uint64_t EnvironmentValues._archiveVersion.setter(char *a1)
{
  v2 = *a1;
  sub_1920C86F0();
  return sub_1922261F0();
}

uint64_t static ArchiveVersion.current.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF2660;
  return result;
}

uint64_t static ArchiveVersion.current.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EADF2660 = v1;
  return result;
}

WidgetKit::ArchiveVersion_optional __swiftcall ArchiveVersion.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_192205690()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1 + 1);
  return sub_192228B30();
}

uint64_t sub_192205708()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1 + 1);
  return sub_192228B30();
}

uint64_t sub_192205814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192205978();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues._archiveVersion.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_1920C86F0();
  sub_1922261E0();
  return sub_1922058D8;
}

uint64_t sub_1922058D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_1922261F0();
}

unint64_t sub_192205914()
{
  result = qword_1EADF2668;
  if (!qword_1EADF2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2668);
  }

  return result;
}

unint64_t sub_192205978()
{
  result = qword_1EADF2670;
  if (!qword_1EADF2670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EADEEBC0, &qword_19222D980);
    sub_192205914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2670);
  }

  return result;
}

unint64_t sub_1922059FC()
{
  result = qword_1EADF2678;
  if (!qword_1EADF2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2678);
  }

  return result;
}

uint64_t sub_192205A50@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result - 1) >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * result);
  }

  *a2 = v2;
  return result;
}

id sub_192205A94(uint64_t a1)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 56);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {

    return v9;
  }

  else
  {
    v12[0] = *v8;

    sub_192227FA0();
    v11 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(v12[0], 0);
    (*(v4 + 8))(v7, v3);
    return v12[1];
  }
}

void sub_192205C0C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1922261D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 60);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    *a2 = v11;
  }

  else
  {

    sub_192227FA0();
    v12 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v11, 0);
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_192205D68(uint64_t a1)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 64);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_192227FA0();
    v10 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192049898(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

double sub_192205EBC(uint64_t a1)
{
  v2 = sub_192205A94(a1);
  v3 = [v2 nestedContentMetrics];

  if (!v3)
  {
    goto LABEL_4;
  }

  sub_19202A7A8(0, &qword_1EADEEEB8, 0x1E696AD98);
  sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
  sub_19220B010();
  v4 = sub_192227840();

  v5 = sub_1922281B0();
  v6 = sub_1920997B4(v5, v4);

  if (v6)
  {
    [v6 size];
  }

  else
  {
LABEL_4:
    v6 = sub_192205A94(a1);
    [v6 size];
  }

  v8 = v7;

  return v8;
}

uint64_t sub_192205FDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_192205D68(a1))
  {
    sub_192227230();
  }

  else
  {
    sub_192227250();
    sub_192205C0C(a1, &v7);
    v4 = qword_192245730[v7 == 0];
  }

  v5 = sub_192227260();

  *a2 = v5;
  return result;
}

uint64_t AccessoryWidgetGroup.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF78, &qword_192231FD0);
  v37 = a1[2];
  sub_192225C70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF18, &qword_192231E70);
  sub_192225C70();
  sub_192225C70();
  v35 = a1[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2688, &qword_192245740);
  v34 = a1[5];
  *&v59 = v35;
  *(&v59 + 1) = v3;
  *&v60 = v34;
  *(&v60 + 1) = sub_192206600();
  sub_192226870();
  sub_192227360();
  sub_192225C70();
  swift_getTupleTypeMetadata2();
  sub_192227660();
  swift_getWitnessTable();
  v4 = sub_192227540();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  v9 = sub_192225C70();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = sub_192225C70();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v33 - v17;
  sub_1922265C0();
  *&v18 = a1[4];
  *(&v18 + 1) = v34;
  *&v19 = v37;
  *(&v19 + 1) = v35;
  v43 = v19;
  v44 = v18;
  v45 = v39;
  sub_192227530();
  sub_192225C80();
  sub_192226D10();
  WitnessTable = swift_getWitnessTable();
  sub_1922270B0();
  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  LOBYTE(v59) = 0;
  v22 = swift_getKeyPath();
  LOBYTE(v50) = 0;
  v23 = swift_getKeyPath();
  LOBYTE(v58[0]) = 0;
  v24 = swift_getKeyPath();
  LOBYTE(v57[0]) = 0;
  v25 = v50;
  *&v50 = KeyPath;
  BYTE8(v50) = v59;
  *(&v50 + 9) = v58[0];
  HIDWORD(v50) = *(v58 + 3);
  v51 = v22;
  v52 = 0uLL;
  LOBYTE(v53) = v25;
  *(&v53 + 1) = v57[0];
  DWORD1(v53) = *(v57 + 3);
  *(&v53 + 1) = v23;
  LOBYTE(v54) = v58[0];
  DWORD1(v54) = *&v56[3];
  *(&v54 + 1) = *v56;
  *(&v54 + 1) = v24;
  v55 = 0;
  v48 = WitnessTable;
  v49 = MEMORY[0x1E6980A30];
  v26 = swift_getWitnessTable();
  v27 = v36;
  MEMORY[0x193B0A190](&v50, v9, &type metadata for LayoutInsetsModifier, v26);
  v61 = v52;
  v62 = v53;
  v63 = v54;
  v64 = v55;
  v59 = v50;
  v60 = v51;
  sub_192209EE0(&v59);
  (*(v40 + 8))(v12, v9);
  v28 = sub_192209F10();
  v46 = v26;
  v47 = v28;
  v29 = swift_getWitnessTable();
  v30 = v38;
  sub_1921BB14C(v27, v13, v29);
  v31 = *(v41 + 8);
  v31(v27, v13);
  sub_1921BB14C(v30, v13, v29);
  return (v31)(v30, v13);
}

unint64_t sub_192206600()
{
  result = qword_1EADF2690;
  if (!qword_1EADF2690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2688, &qword_192245740);
    sub_19220668C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2690);
  }

  return result;
}

unint64_t sub_19220668C()
{
  result = qword_1EADF2698;
  if (!qword_1EADF2698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF26A0, &qword_192245748);
    sub_192206718();
    sub_192206940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2698);
  }

  return result;
}

unint64_t sub_192206718()
{
  result = qword_1EADF26A8;
  if (!qword_1EADF26A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF26B0, &qword_192245750);
    sub_1922067D0();
    sub_192031E74(&qword_1EADF26E8, &qword_1EADF26F0, &qword_192245770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF26A8);
  }

  return result;
}

unint64_t sub_1922067D0()
{
  result = qword_1EADF26B8;
  if (!qword_1EADF26B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF26C0, &qword_192245758);
    sub_192206888();
    sub_192031E74(&qword_1EADF26D8, &qword_1EADF26E0, &qword_192245768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF26B8);
  }

  return result;
}

unint64_t sub_192206888()
{
  result = qword_1EADF26C8;
  if (!qword_1EADF26C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF26D0, &qword_192245760);
    sub_192031E74(&qword_1EADF26D8, &qword_1EADF26E0, &qword_192245768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF26C8);
  }

  return result;
}

unint64_t sub_192206940()
{
  result = qword_1EADF26F8;
  if (!qword_1EADF26F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2700, &qword_192245778);
    sub_192031E74(&qword_1EADF2708, &qword_1EADF2710, &qword_192245780);
    sub_192031E74(&qword_1EADF2718, &qword_1EADF2720, &qword_192245788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF26F8);
  }

  return result;
}

uint64_t sub_192206A20@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v111 = a4;
  v112 = a1;
  v107 = a6;
  v117 = a2;
  v118 = a3;
  v108 = a2;
  v119 = a4;
  v120 = a5;
  v94 = a5;
  v97 = type metadata accessor for AccessoryWidgetGroup();
  v100 = *(v97 - 8);
  v103 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v95 = v81 - v8;
  v9 = a3;
  v89 = a3;
  v92 = *(a3 - 8);
  v10 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v91 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2688, &qword_192245740);
  v99 = v13;
  v98 = sub_192206600();
  v117 = v9;
  v118 = v13;
  v119 = a5;
  v120 = v98;
  v101 = sub_192226870();
  v96 = sub_192227360();
  v105 = *(v96 - 8);
  v14 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v90 = v81 - v15;
  v104 = sub_192225C70();
  v106 = *(v104 - 8);
  v16 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v93 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v102 = v81 - v19;
  v88 = sub_192227400();
  v87 = *(v88 - 8);
  v20 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v22 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC8, &qword_192242DC0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v81 - v25;
  v27 = sub_192226F10();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF78, &qword_192231FD0);
  v32 = sub_192225C70();
  v84 = *(v32 - 8);
  v33 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v81 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF18, &qword_192231E70);
  v83 = sub_192225C70();
  v86 = *(v83 - 8);
  v36 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v81 - v37;
  v85 = sub_192225C70();
  v113 = *(v85 - 8);
  v38 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v109 = v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v110 = v81 - v42;
  (*(v28 + 104))(v31, *MEMORY[0x1E6980F28], v27, v41);
  v43 = *MEMORY[0x1E6980E28];
  v44 = sub_192226DA0();
  v45 = *(v44 - 8);
  (*(v45 + 104))(v26, v43, v44);
  (*(v45 + 56))(v26, 0, 1, v44);
  sub_192226E20();
  sub_192226E50();
  sub_192033970(v26, &qword_1EADEFEC8, &qword_192242DC0);
  (*(v28 + 8))(v31, v27);
  v46 = v111;
  sub_1922271A0();

  v47 = v87;
  v48 = v22;
  v49 = v88;
  (*(v87 + 104))(v22, *MEMORY[0x1E69816C8], v88);
  v50 = sub_192031E74(&qword_1EADEFF70, &qword_1EADEFF78, &qword_192231FD0);
  v116[9] = v46;
  v116[10] = v50;
  v51 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v53 = v82;
  sub_192227010();
  (*(v47 + 8))(v48, v49);
  (*(v84 + 8))(v35, v32);
  sub_192227600();
  v54 = sub_192031E74(&qword_1EADEFF10, &qword_1EADEFF18, &qword_192231E70);
  v116[7] = WitnessTable;
  v116[8] = v54;
  v81[1] = v51;
  v79 = v83;
  v80 = swift_getWitnessTable();
  v55 = v109;
  sub_1922271C0();
  (*(v86 + 8))(v53, v79);
  v116[5] = v80;
  v116[6] = MEMORY[0x1E697EBF8];
  v56 = v85;
  v86 = swift_getWitnessTable();
  sub_1921BB14C(v55, v56, v86);
  v87 = *(v113 + 8);
  v88 = v113 + 8;
  (v87)(v55, v56);
  v57 = v97;
  v58 = v112;
  v59 = v89;
  (*(v92 + 16))(v91, v112 + *(v97 + 52), v89);
  v60 = v100;
  v61 = v95;
  (*(v100 + 16))(v95, v58, v57);
  v62 = (*(v60 + 80) + 48) & ~*(v60 + 80);
  v63 = swift_allocObject();
  *(v63 + 2) = v108;
  *(v63 + 3) = v59;
  v64 = v94;
  *(v63 + 4) = v111;
  *(v63 + 5) = v64;
  (*(v60 + 32))(&v63[v62], v61, v57);
  v65 = v90;
  sub_192227340();
  sub_192205EBC(v57);
  sub_1922275F0();
  v116[4] = swift_getWitnessTable();
  v66 = v96;
  v67 = swift_getWitnessTable();
  v68 = v93;
  sub_1922271B0();
  (*(v105 + 8))(v65, v66);
  v116[2] = v67;
  v116[3] = MEMORY[0x1E697E040];
  v69 = v104;
  v70 = swift_getWitnessTable();
  v71 = v102;
  sub_1921BB14C(v68, v69, v70);
  v72 = v106;
  v73 = *(v106 + 8);
  v74 = v68;
  v73(v68, v69);
  v75 = v109;
  v76 = v110;
  (*(v113 + 16))(v109, v110, v56);
  v117 = v75;
  (*(v72 + 16))(v74, v71, v69);
  v118 = v74;
  v116[0] = v56;
  v116[1] = v69;
  v114 = v86;
  v115 = v70;
  sub_19212F67C(&v117, 2uLL, v116);
  v73(v71, v69);
  v77 = v87;
  (v87)(v76, v56);
  v73(v74, v69);
  return v77(v75, v56);
}

uint64_t sub_1922076E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v91 = a6;
  v90 = a5;
  v89 = a4;
  v88 = a3;
  v92 = a2;
  v102 = a7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2720, &qword_192245788);
  v8 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v80 = &v79 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2888, &qword_192245C48);
  v10 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v12 = &v79 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2700, &qword_192245778);
  v13 = *(*(v96 - 8) + 64);
  MEMORY[0x1EEE9AC00](v96);
  v87 = &v79 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2710, &qword_192245780);
  v15 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v17 = &v79 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26F0, &qword_192245770);
  v18 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v20 = &v79 - v19;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2890, &qword_192245C50);
  v21 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v79 - v22;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2898, &qword_192245C58);
  v23 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v79 - v24;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF28A0, &qword_192245C60);
  v25 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v27 = &v79 - v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26B0, &qword_192245750);
  v28 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v84 = &v79 - v29;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26A0, &qword_192245748);
  v30 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v79 - v31;
  v32 = sub_192226570();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_192226950();
  v98 = *(v37 - 8);
  v38 = *(v98 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v79 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v36, a1, v32, v39);
  sub_1921A8448(3);
  sub_19220B078();
  sub_192227E00();
  sub_192227E60();
  v42 = sub_192227E50();
  if (v42 > 1)
  {
    if (v42 == 2)
    {
      sub_192226960();
      v71 = v83;
      v72 = &v17[*(v83 + 68)];
      sub_192226960();
      v107 = v88;
      v108 = v89;
      v109 = v90;
      v110 = v91;
      v73 = type metadata accessor for AccessoryWidgetGroup();
      sub_192205FDC(v73, &v111);
      v103 = v111;
      LOBYTE(v104) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF28A8, &qword_192245C68);
      sub_19220B0D0();
      sub_1922266E0();
      v74 = v108;
      v75 = &v17[*(v71 + 72)];
      *v75 = v107;
      v75[8] = v74;
      v60 = &qword_192245780;
      sub_19202CFFC(v17, v12, &qword_1EADF2710, &qword_192245780);
      swift_storeEnumTagMultiPayload();
      sub_192031E74(&qword_1EADF2708, &qword_1EADF2710, &qword_192245780);
      sub_192031E74(&qword_1EADF2718, &qword_1EADF2720, &qword_192245788);
      v76 = v87;
      sub_1922266E0();
      sub_19202CFFC(v76, v95, &qword_1EADF2700, &qword_192245778);
      swift_storeEnumTagMultiPayload();
      sub_192206718();
      sub_192206940();
      v77 = v97;
      sub_1922266E0();
      sub_192033970(v76, &qword_1EADF2700, &qword_192245778);
      sub_19202CFFC(v77, v101, &qword_1EADF26A0, &qword_192245748);
      swift_storeEnumTagMultiPayload();
      sub_19220668C();
      sub_1922266E0();
      sub_192033970(v77, &qword_1EADF26A0, &qword_192245748);
      v53 = v17;
      v54 = &qword_1EADF2710;
    }

    else
    {
      if (v42 != 3)
      {
        goto LABEL_8;
      }

      v56 = v80;
      sub_192226960();
      v57 = v86;
      v58 = v56 + *(v86 + 68);
      sub_192226960();
      v59 = v56 + *(v57 + 72);
      sub_192226960();
      v60 = &qword_192245788;
      sub_19202CFFC(v56, v12, &qword_1EADF2720, &qword_192245788);
      swift_storeEnumTagMultiPayload();
      sub_192031E74(&qword_1EADF2708, &qword_1EADF2710, &qword_192245780);
      sub_192031E74(&qword_1EADF2718, &qword_1EADF2720, &qword_192245788);
      v61 = v87;
      sub_1922266E0();
      sub_19202CFFC(v61, v95, &qword_1EADF2700, &qword_192245778);
      swift_storeEnumTagMultiPayload();
      sub_192206718();
      sub_192206940();
      v62 = v97;
      sub_1922266E0();
      sub_192033970(v61, &qword_1EADF2700, &qword_192245778);
      sub_19202CFFC(v62, v101, &qword_1EADF26A0, &qword_192245748);
      swift_storeEnumTagMultiPayload();
      sub_19220668C();
      sub_1922266E0();
      sub_192033970(v62, &qword_1EADF26A0, &qword_192245748);
      v53 = v56;
      v54 = &qword_1EADF2720;
    }

    v55 = v60;
    goto LABEL_12;
  }

  if (!v42)
  {
    v107 = v88;
    v108 = v89;
    v109 = v90;
    v110 = v91;
    v63 = type metadata accessor for AccessoryWidgetGroup();
    sub_192205FDC(v63, &v107);
    v64 = v107;
    sub_192205FDC(v63, &v103);
    v65 = v103;
    sub_192205FDC(v63, &v111);
    v103 = v64;
    v104 = v65;
    v105 = v111;
    v106 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26D0, &qword_192245760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26E0, &qword_192245768);
    sub_192206888();
    sub_192031E74(&qword_1EADF26D8, &qword_1EADF26E0, &qword_192245768);
    sub_1922266E0();
    v66 = v107;
    v67 = v108;
    v68 = v109;
    LOBYTE(v65) = v110;
    *v27 = v107;
    *(v27 + 1) = v67;
    v91 = v67;
    v92 = v66;
    *(v27 + 2) = v68;
    v27[24] = v65;
    swift_storeEnumTagMultiPayload();
    sub_19220B154();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26C0, &qword_192245758);
    sub_1922067D0();
    sub_192031E74(&qword_1EADF26E8, &qword_1EADF26F0, &qword_192245770);
    v69 = v84;
    sub_1922266E0();
    sub_19202CFFC(v69, v95, &qword_1EADF26B0, &qword_192245750);
    swift_storeEnumTagMultiPayload();
    sub_192206718();
    sub_192206940();
    v70 = v97;
    sub_1922266E0();
    sub_192033970(v69, &qword_1EADF26B0, &qword_192245750);
    sub_19202CFFC(v70, v101, &qword_1EADF26A0, &qword_192245748);
    swift_storeEnumTagMultiPayload();
    sub_19220668C();
    sub_1922266E0();
    sub_19220B198();
    v53 = v70;
    v54 = &qword_1EADF26A0;
    v55 = &qword_192245748;
    goto LABEL_12;
  }

  if (v42 == 1)
  {
    sub_192226960();
    v107 = v88;
    v108 = v89;
    v109 = v90;
    v110 = v91;
    v43 = type metadata accessor for AccessoryWidgetGroup();
    sub_192205FDC(v43, &v111);
    v103 = v111;
    LOBYTE(v104) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF28A8, &qword_192245C68);
    sub_19220B0D0();
    sub_1922266E0();
    v44 = v107;
    v45 = v108;
    sub_192205FDC(v43, &v111);
    v103 = v111;
    LOBYTE(v104) = 0;
    sub_1922266E0();
    v46 = v107;
    v47 = v108;
    v48 = v85;
    v49 = &v20[*(v85 + 68)];
    *v49 = v44;
    v49[8] = v45;
    v50 = &v20[*(v48 + 72)];
    *v50 = v46;
    v50[8] = v47;
    sub_19202CFFC(v20, v27, &qword_1EADF26F0, &qword_192245770);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF26C0, &qword_192245758);
    sub_1922067D0();
    sub_192031E74(&qword_1EADF26E8, &qword_1EADF26F0, &qword_192245770);
    v51 = v84;
    sub_1922266E0();
    sub_19202CFFC(v51, v95, &qword_1EADF26B0, &qword_192245750);
    swift_storeEnumTagMultiPayload();
    sub_192206718();
    sub_192206940();
    v52 = v97;
    sub_1922266E0();
    sub_192033970(v51, &qword_1EADF26B0, &qword_192245750);
    sub_19202CFFC(v52, v101, &qword_1EADF26A0, &qword_192245748);
    swift_storeEnumTagMultiPayload();
    sub_19220668C();
    sub_1922266E0();
    sub_192033970(v52, &qword_1EADF26A0, &qword_192245748);
    v53 = v20;
    v54 = &qword_1EADF26F0;
    v55 = &qword_192245770;
LABEL_12:
    sub_192033970(v53, v54, v55);
    return (*(v98 + 8))(v41, v37);
  }

LABEL_8:
  swift_storeEnumTagMultiPayload();
  sub_19220668C();
  sub_1922266E0();
  return (*(v98 + 8))(v41, v37);
}

id sub_192208638()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v6 = *v0;
  v10 = *v0;
  if (v11 == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = v6;

    sub_192227FA0();
    v8 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_192033970(&v10, &qword_1EADF0B78, &qword_192236FE8);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }
}

double sub_1922087BC()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v11 = *(v0 + 48);
  v6 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v10[1] = v6;
  if (v11 == 1)
  {
    return *v10;
  }

  sub_192227FA0();
  v8 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();
  sub_192033970(v10, &qword_1EADF2878, &qword_192245C40);
  (*(v2 + 8))(v5, v1);
  return v9;
}

double sub_192208934()
{
  v0 = sub_192208638();
  v1 = [v0 widgetGroupMargins];

  if (v1)
  {
    [v1 layoutInsets];
    v3 = v2 - sub_1922087BC();
    [v1 layoutInsets];
    [v1 layoutInsets];
    [v1 layoutInsets];
    sub_1922087BC();
  }

  else
  {
    v4 = sub_192208638();
    [v4 safeAreaInsets];

    v5 = sub_192208638();
    [v5 safeAreaInsets];

    return 0.0;
  }

  return v3;
}

uint64_t sub_192208A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = v2[2];
  v19 = v2[3];
  v20 = v2[4];
  v21 = *(v2 + 80);
  v16 = *v2;
  v17 = v2[1];
  v5 = sub_192208934();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_192226D10();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2868, &qword_192245C30);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2870, &qword_192245C38);
  v15 = a2 + *(result + 36);
  *v15 = v12;
  *(v15 + 8) = v5;
  *(v15 + 16) = v7;
  *(v15 + 24) = v9;
  *(v15 + 32) = v11;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_192208B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = *(a1 + 24);
  v21 = *(a1 + 16);
  v4 = v21;
  v22 = MEMORY[0x1E6981840];
  v23 = v3;
  v24 = MEMORY[0x1E6981840];
  v25 = *(a1 + 32);
  v5 = v25;
  swift_getTupleTypeMetadata();
  sub_192227660();
  swift_getWitnessTable();
  v6 = sub_192227520();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  v17[4] = v4;
  v17[5] = v3;
  v17[6] = v5;
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = v17[0];
  sub_192226340();
  sub_192227510();
  WitnessTable = swift_getWitnessTable();
  sub_1921BB14C(v10, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_1921BB14C(v13, v6, WitnessTable);
  return (v15)(v13, v6);
}

uint64_t sub_192208D64@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v57 = a8;
  v56 = *(a4 - 1);
  v15 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v50 - v18;
  v55 = *(v19 - 8);
  v20 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v59 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v58 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v50 - v32;
  v53 = v34;
  sub_1921BB14C(v35, v36, v34);
  v71 = a2;
  v72 = a3;
  v73 = a4;
  v74 = a5;
  v52 = a6;
  v75 = a6;
  v76 = a7;
  v37 = a7;
  v50 = a7;
  v38 = type metadata accessor for NestedContent();
  v39 = a1 + *(v38 + 68);
  v51 = v25;
  sub_1921BB14C(v39, a3, a6);
  v40 = v54;
  sub_1921BB14C(a1 + *(v38 + 72), a4, v37);
  v41 = v58;
  (*(v27 + 16))(v58, v33, a2);
  v69 = 0;
  v70 = 1;
  v71 = v41;
  v72 = &v69;
  v42 = v55;
  v43 = v59;
  (*(v55 + 16))(v59, v25, a3);
  v67 = 0;
  v68 = 1;
  v73 = v43;
  v74 = &v67;
  v44 = v56;
  v45 = v60;
  (*(v56 + 16))(v60, v40, a4);
  v75 = v45;
  v66[0] = a2;
  v66[1] = MEMORY[0x1E6981840];
  v66[2] = a3;
  v66[3] = MEMORY[0x1E6981840];
  v66[4] = a4;
  v61 = v53;
  v62 = MEMORY[0x1E6981838];
  v63 = v52;
  v64 = MEMORY[0x1E6981838];
  v65 = v50;
  sub_19212F67C(&v71, 5uLL, v66);
  v46 = *(v44 + 8);
  v46(v40, a4);
  v47 = *(v42 + 8);
  v47(v51, a3);
  v48 = *(v27 + 8);
  v48(v33, a2);
  v46(v60, a4);
  v47(v59, a3);
  return (v48)(v58, a2);
}

uint64_t sub_1922091C0@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccessoryWidgetGroup();
  v7 = a3 + v6[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a3 + v6[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a3 + v6[16];
  KeyPath = swift_getKeyPath();
  *v9 = KeyPath;
  *(v9 + 8) = 0;
  v14 = a1(KeyPath, v11, v12, v13);
  v15 = a3 + v6[13];
  return a2(v14);
}

uint64_t AccessoryWidgetGroup<>.init(_:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a1;
  v8[3] = a2;
  v9 = a3;
  v10 = a4;
  AccessoryWidgetGroup.init(label:content:)(sub_1921D1100, v8, a5, a6, MEMORY[0x1E6981148], a7, MEMORY[0x1E6981138]);
}

uint64_t AccessoryWidgetGroup<>.init<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;
  v10[5] = a7;
  v10[6] = a1;
  AccessoryWidgetGroup.init(label:content:)(sub_192209F7C, v10, a2, a3, MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138]);
  return (*(*(a5 - 8) + 8))(a1, a5);
}

uint64_t sub_1922093CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  result = sub_192226FD0();
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10 & 1;
  *(a3 + 24) = v11;
  return result;
}

uint64_t AccessoryWidgetGroup<>.init(_:systemImage:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2730, &qword_192245880);
  v11 = sub_192031E74(qword_1EADF2738, &qword_1EADF2730, &qword_192245880);
  AccessoryWidgetGroup.init(label:content:)(sub_192209F8C, v14, a7, a8, v10, a9, v11);
}

uint64_t sub_1922095AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return MEMORY[0x1EEDDC7B0](a1, a2, a3, a4, a5, a6);
}

uint64_t AccessoryWidgetGroup<>.init<A>(_:systemImage:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2730, &qword_192245880);
  v14 = sub_192031E74(qword_1EADF2738, &qword_1EADF2730, &qword_192245880);
  AccessoryWidgetGroup.init(label:content:)(sub_192209FA0, v17, a4, a5, v13, a6, v14);

  return (*(*(a7 - 8) + 8))(a1, a7);
}

uint64_t sub_192209770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  return sub_192227450();
}

uint64_t AccessoryWidgetGroup<>.init(_:image:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2730, &qword_192245880);
  v12 = sub_192031E74(qword_1EADF2738, &qword_1EADF2730, &qword_192245880);
  AccessoryWidgetGroup.init(label:content:)(sub_192209FB4, v16, a6, a7, v11, a8, v12);

  v13 = sub_1922256F0();
  return (*(*(v13 - 8) + 8))(a5, v13);
}

uint64_t sub_192209998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1922256F0();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);

  return sub_192227460();
}

uint64_t AccessoryWidgetGroup<>.init<A>(_:image:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a1;
  v24 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2730, &qword_192245880);
  v14 = sub_192031E74(qword_1EADF2738, &qword_1EADF2730, &qword_192245880);
  AccessoryWidgetGroup.init(label:content:)(sub_192209FC4, v18, a3, a4, v13, a5, v14);
  v15 = sub_1922256F0();
  (*(*(v15 - 8) + 8))(a2, v15);
  return (*(*(a6 - 8) + 8))(a1, a6);
}

uint64_t sub_192209BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1922256F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a4 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v16 + 16))(&v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4, v14);
  (*(v8 + 16))(v11, a2, v7);
  return sub_192227470();
}

uint64_t View.accessoryWidgetGroupStyle(_:)(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_192227040();
}

uint64_t sub_192209E18()
{
  sub_19220AF00();

  return sub_1922261E0();
}

double sub_192209E90@<D0>(_OWORD *a1@<X8>)
{
  sub_19207D65C();
  sub_1922261E0();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_192209F10()
{
  result = qword_1EADF2728;
  if (!qword_1EADF2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2728);
  }

  return result;
}

uint64_t sub_192209F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1922093CC(v1[6], v1[3], a1);
}

uint64_t sub_192209FA0()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_192209770(v0[6], v0[7], v0[8], v0[2], v0[3]);
}

uint64_t sub_192209FC4()
{
  v1 = v0[4];
  v2 = v0[5];
  return sub_192209BFC(v0[6], v0[7], v0[2], v0[3]);
}

uint64_t sub_192209FD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_19220A018(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_19220A588();
      if (v6 <= 0x3F)
      {
        sub_19220A5F0(319, &qword_1EADF27C8);
        if (v7 <= 0x3F)
        {
          sub_19220A5F0(319, &qword_1EADEDFB8);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_19220A10C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v11 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((v10 + (v12 & ~v9) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = (a2 - v11 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (v18)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    if (v5 == v11)
    {
      return (*(v4 + 48))();
    }

    v22 = &a1[v12] & ~v9;
    if (v8 == v11)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 > 1)
    {
      return (v23 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = a1[v13];
  if (!a1[v13])
  {
    goto LABEL_30;
  }

LABEL_26:
  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v11 + (v21 | v20) + 1;
}

void sub_19220A2EC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = v10 + v11;
  v15 = ((v12 + ((v10 + v11) & ~v11) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v13 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v22 = *(v6 + 56);

        v22();
      }

      else
      {
        v23 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v24 = *(v8 + 56);

          v24(v23);
        }

        else
        {
          v25 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v25 + 8) = 0;
            *v25 = a2 - 255;
          }

          else
          {
            *(v25 + 8) = -a2;
          }
        }
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

void sub_19220A588()
{
  if (!qword_1EADF27C0)
  {
    sub_19202A7A8(255, &qword_1ED74BD10, 0x1E69943F0);
    v0 = sub_192225A00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADF27C0);
    }
  }
}

void sub_19220A5F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_192225A00();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_19220A68C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19220A6D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_19220A748(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_19220A7F0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_19220AAA8(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

unint64_t sub_19220AE30()
{
  result = qword_1EADF2860;
  if (!qword_1EADF2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2860);
  }

  return result;
}

uint64_t sub_19220AEA0(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_19220AF00()
{
  result = qword_1EADF2880;
  if (!qword_1EADF2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2880);
  }

  return result;
}

uint64_t sub_19220AF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for AccessoryWidgetGroup() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1922076E4(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_19220B010()
{
  result = qword_1EADF1A90;
  if (!qword_1EADF1A90)
  {
    sub_19202A7A8(255, &qword_1EADEEEB8, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF1A90);
  }

  return result;
}

unint64_t sub_19220B078()
{
  result = qword_1EADEFFC8;
  if (!qword_1EADEFFC8)
  {
    sub_192226950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFFC8);
  }

  return result;
}

unint64_t sub_19220B0D0()
{
  result = qword_1EADED318;
  if (!qword_1EADED318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF28A8, &qword_192245C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED318);
  }

  return result;
}

uint64_t sub_19220B154()
{
}

uint64_t sub_19220B198()
{
}

unint64_t sub_19220B1EC()
{
  result = qword_1EADF28B0;
  if (!qword_1EADF28B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2870, &qword_192245C38);
    sub_192031E74(&qword_1EADF28B8, &qword_1EADF2868, &qword_192245C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF28B0);
  }

  return result;
}

id WidgetAuxiliaryViewMetadata.Graphic.platformImage.getter()
{
  v1 = v0;
  v2 = sub_192226B50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_192226B70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v1, v7, v10);
  v13 = (*(v8 + 88))(v12, v7);
  if (v13 == *MEMORY[0x1E697CB08])
  {
    (*(v8 + 96))(v12, v7);
    (*(v3 + 32))(v6, v12, v2);
    v14 = sub_19220B4D4();
    (*(v3 + 8))(v6, v2);
    return v14;
  }

  else if (v13 == *MEMORY[0x1E697CB00])
  {
    (*(v8 + 96))(v12, v7);
    return *v12;
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    return 0;
  }
}

id sub_19220B4D4()
{
  v0 = sub_192226B30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_192226B00();
  sub_192226B40();
  v9 = 0;
  if ((*(v1 + 88))(v7, v0) == *MEMORY[0x1E697CAF8])
  {
    (*(v1 + 16))(v4, v7, v0);
    (*(v1 + 96))(v4, v0);
    if (*v4)
    {
      sub_192226AF0();
      v10 = sub_192227930();

      v11 = objc_opt_self();
      if ((v8 & 0x100000000) != 0)
      {
        v12 = [v11 _systemImageNamed_];
      }

      else
      {
        v12 = [v11 _systemImageNamed_variableValue_withConfiguration_];
      }

      v9 = v12;
    }

    else if ((v8 & 0x100000000) != 0)
    {
      sub_192226AF0();
      v13 = sub_192227930();

      v9 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      sub_19220B734();
      sub_192226AF0();
      v9 = sub_1922281A0();
    }
  }

  (*(v1 + 8))(v7, v0);
  return v9;
}

unint64_t sub_19220B734()
{
  result = qword_1EADF28C0;
  if (!qword_1EADF28C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADF28C0);
  }

  return result;
}

uint64_t Preview.init<A, B>(_:as:using:widget:contentStates:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a3;
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a5;
  v17[7] = a6;
  v23[3] = a9;
  v23[4] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v19 = *(a9 - 8);
  (*(v19 + 16))(boxed_opaque_existential_1, a4, a9);
  v20 = swift_allocObject();
  v20[2] = a9;
  v20[3] = a10;
  v20[4] = a11;
  v20[5] = a12;
  v20[6] = a7;
  v20[7] = a8;
  v23[5] = &unk_192245CE8;
  v23[6] = v20;
  sub_19220BC18();
  sub_192225740();
  return (*(v19 + 8))(a4, a9);
}

uint64_t sub_19220B8E8(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v9 = (a1 + *a1);
  v6 = a1[1];
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_19220B9D4;

  return v9();
}

uint64_t sub_19220B9D4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  swift_getAssociatedTypeWitness();
  v4 = sub_192228590();

  v5 = *(v7 + 8);

  return v5(v4);
}

uint64_t sub_19220BB44()
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
  v8[1] = sub_1920D7114;

  return sub_19220B8E8(v7, v6, v2, v3, v4);
}

unint64_t sub_19220BC18()
{
  result = qword_1EADF28C8[0];
  if (!qword_1EADF28C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF28C8);
  }

  return result;
}

uint64_t static PreviewActivityBuilder.buildExpression(_:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_192169490(AssociatedTypeWitness, AssociatedTypeWitness);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  swift_allocObject();
  v9 = sub_192227B90();
  (*(v6 + 16))(v10, a1, AssociatedTypeWitness);

  return sub_192167AD8(v9);
}

uint64_t static PreviewActivityBuilder.buildPartialBlock(accumulated:next:)()
{
  swift_getAssociatedTypeWitness();

  return _s9WidgetKit28PreviewRelevanceEntryBuilderV17buildPartialBlock11accumulated4nextSayxGAG_AGtFZ_0();
}

uint64_t static PreviewActivityBuilder.buildArray(_:)()
{
  swift_getAssociatedTypeWitness();
  sub_192227C40();
  sub_192227C40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_192227AE0();
}

uint64_t CodableColor.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t CodableColor.color.getter()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  sub_192227280();
  return sub_192227320();
}

id CodableColor.uiColor.getter()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = sub_192227280();
  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v7;
}

uint64_t CodableColor.resolved.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

uint64_t CodableColor.resolved.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t static CodableColor.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (a2[2])
    {
      return 1;
    }
  }

  else if ((a2[2] & 1) == 0)
  {
    v4 = *(a1 + 8);
    v5 = *a1;
    v6 = *a2;
    v7 = HIDWORD(a2[1]);
    if (sub_192227290())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_19220C040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465766C6F736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19220C0C8(uint64_t a1)
{
  v2 = sub_19220C2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19220C104(uint64_t a1)
{
  v2 = sub_19220C2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2950, &qword_192245D28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  HIDWORD(v12) = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220C2A0();
  sub_192228B90();
  v13 = v9;
  v14 = v8;
  v15 = BYTE4(v12);
  sub_1920CF350();
  sub_192228850();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_19220C2A0()
{
  result = qword_1EADEE478;
  if (!qword_1EADEE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE478);
  }

  return result;
}

uint64_t CodableColor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2958, &qword_192245D30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220C2A0();
  sub_192228B70();
  if (!v2)
  {
    sub_1920CF44C();
    sub_192228750();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_19220C46C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if (a2[2])
    {
      return 0;
    }

    v3 = *(a1 + 8);
    v4 = *a1;
    v5 = *a2;
    v6 = HIDWORD(a2[1]);
    return (sub_192227290() & 1) != 0;
  }

  return (a2[2] & 1) != 0;
}

unint64_t sub_19220C53C()
{
  result = qword_1EADF2960;
  if (!qword_1EADF2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2960);
  }

  return result;
}

unint64_t sub_19220C594()
{
  result = qword_1EADEE468;
  if (!qword_1EADEE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE468);
  }

  return result;
}

unint64_t sub_19220C5EC()
{
  result = qword_1EADEE470;
  if (!qword_1EADEE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE470);
  }

  return result;
}

uint64_t static ModifyControlStateRequest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF2970 = a1;
  return result;
}

uint64_t sub_19220C830(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control);
  v4 = sub_192227930();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_state);
  v7[3] = sub_1922254F0();
  v7[4] = sub_19220EC2C(&qword_1EADEE4F0);
  v7[0] = v5;

  sub_192228190();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

id ModifyControlStateRequest.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v4 = sub_192228140();
  if (v4)
  {
    v5 = v4;
    sub_1922254F0();
    sub_19220EC2C(&qword_1EADEDED0);
    sub_192228180();
    v6 = v24;
    if (v24)
    {
      *&v2[OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control] = v5;
      *&v2[OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_state] = v6;
      v23.receiver = v2;
      v23.super_class = type metadata accessor for ModifyControlStateRequest();
      v7 = objc_msgSendSuper2(&v23, sel_init);

      return v7;
    }

    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_1922258B0();
    __swift_project_value_buffer(v16, qword_1EAE00810);
    v17 = a1;
    v10 = sub_192225890();
    v18 = sub_192227F90();

    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = [v17 error];
      if (v21)
      {
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      *(v19 + 4) = v21;
      *v20 = v22;
      _os_log_impl(&dword_192028000, v10, v18, "Unable to decode state for control=(missing identity): %{public}@", v19, 0xCu);
      sub_1920FB918(v20);
      MEMORY[0x193B0C7F0](v20, -1, -1);
      MEMORY[0x193B0C7F0](v19, -1, -1);

      goto LABEL_21;
    }

LABEL_18:
LABEL_21:

    goto LABEL_22;
  }

  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v9 = sub_1922258B0();
  __swift_project_value_buffer(v9, qword_1EAE00810);
  v5 = a1;
  v10 = sub_192225890();
  v11 = sub_192227F90();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = [v5 error];
    if (v14)
    {
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    *(v12 + 4) = v14;
    *v13 = v15;
    _os_log_impl(&dword_192028000, v10, v11, "Unable to decode state for control=(missing identity): %{public}@", v12, 0xCu);
    sub_1920FB918(v13);
    MEMORY[0x193B0C7F0](v13, -1, -1);
    MEMORY[0x193B0C7F0](v12, -1, -1);
    goto LABEL_18;
  }

LABEL_22:
  type metadata accessor for ModifyControlStateRequest();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t static ControlsConfigurationXPCContainer.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF2971 = a1;
  return result;
}

id sub_19220CFC0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[*a3] = a1;
  *&v9[*a4] = a2;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_19220D058(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  *&v5[*a3] = a1;
  *&v5[*a4] = a2;
  v7.receiver = v5;
  v7.super_class = a5();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_19220D0A0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls);
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v4 = sub_192227B60();
  v5 = sub_192227930();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v1 + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens);
  sub_192162048(&unk_1EADF2998);
  v7 = sub_192227830();
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];
}

id ControlsConfigurationXPCContainer.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v5 = sub_192228170();
  if (v5)
  {
    v6 = v5;
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v7 = sub_192228160();
    if (v7)
    {
      v13 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29A8, &qword_192245F08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B0, &qword_192245F10);
      if (swift_dynamicCast())
      {
        v8 = v12;
        *&v4[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls] = v6;
        *&v4[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens] = v8;
        v11.receiver = v4;
        v11.super_class = v2;
        v9 = objc_msgSendSuper2(&v11, sel_init);

        return v9;
      }
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id ControlsConfigurationXPCContainer.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v4 = sub_192228170();
  if (v4)
  {
    v5 = v4;
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v6 = sub_192228160();
    if (v6)
    {
      v12 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29A8, &qword_192245F08);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B0, &qword_192245F10);
      if (swift_dynamicCast())
      {
        v7 = v11;
        *&v2[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls] = v5;
        *&v2[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens] = v7;
        v10.receiver = v2;
        v10.super_class = type metadata accessor for ControlsConfigurationXPCContainer();
        v8 = objc_msgSendSuper2(&v10, sel_init);

        return v8;
      }
    }
  }

  else
  {
  }

  type metadata accessor for ControlsConfigurationXPCContainer();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_19220D5BC()
{
  if (*v0)
  {
    result = 0x736E656B6F74;
  }

  else
  {
    result = 0x736C6F72746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_19220D5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C6F72746E6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E656B6F74 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

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

uint64_t sub_19220D6CC(uint64_t a1)
{
  v2 = sub_19220EC94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19220D708(uint64_t a1)
{
  v2 = sub_19220EC94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19220D7A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B8, &qword_192245F18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220EC94();
  sub_192228B90();
  v13 = *(v3 + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls);
  HIBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29C8, &qword_192245F20);
  sub_19220ED90(&unk_1EADF29D0, &qword_1EADEDFD8);
  sub_1922288C0();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens);
    HIBYTE(v12) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B0, &qword_192245F10);
    sub_19220ECE8();
    sub_1922288C0();
  }

  return (*(v6 + 8))(v9, v5);
}

id ControlsConfigurationXPCContainer.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29F0, &qword_192245F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19220EC94();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ControlsConfigurationXPCContainer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29C8, &qword_192245F20);
    v15 = 0;
    sub_19220ED90(&unk_1EADF29F8, &qword_1EADED380);
    sub_1922287C0();
    *&v1[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF29B0, &qword_192245F10);
    v15 = 1;
    sub_19220EE18();
    sub_1922287C0();
    *&v1[OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens] = v16;
    v12 = type metadata accessor for ControlsConfigurationXPCContainer();
    v14.receiver = v1;
    v14.super_class = v12;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id sub_19220DCA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ControlsConfigurationXPCContainer());
  result = ControlsConfigurationXPCContainer.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id ControlTemplateRequest.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment);
  *a1 = v2;
  return v2;
}

uint64_t ControlTemplateRequest.hostDeviceID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID);
  v2 = *(v0 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID + 8);

  return v1;
}

id ControlTemplateRequest.__allocating_init(fileHandle:control:environment:hostDeviceID:isPreview:)(void *a1, void *a2, void **a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v32 = v7;
  v12 = objc_allocWithZone(v7);
  v13 = *a3;
  *&v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control] = a2;
  *&v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle] = a1;
  v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview] = a6;
  KeyPath = swift_getKeyPath();
  v34 = a2;
  v33 = a1;
  v15 = v13;
  v16 = v15;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v17 = type metadata accessor for WidgetEnvironment.Storage();
    v18 = objc_allocWithZone(v17);
    v19 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v18[v19] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v20 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v21 = *&v15[v20];
    swift_beginAccess();
    *&v18[v19] = v21;

    v39.receiver = v18;
    v39.super_class = v17;
    v16 = objc_msgSendSuper2(&v39, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v22 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v23 = type metadata accessor for WidgetEnvironment.Storage();
    v24 = objc_allocWithZone(v23);
    v25 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v24[v25] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v26 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v27 = *&v16[v26];
    swift_beginAccess();
    *&v24[v25] = v27;

    v38.receiver = v24;
    v38.super_class = v23;
    v28 = objc_msgSendSuper2(&v38, sel_init);

    v16 = v28;
  }

  sub_19204C8C0(0, v22);

  *&v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment] = v16;
  v29 = &v12[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID];
  *v29 = a4;
  v29[1] = a5;
  v37.receiver = v12;
  v37.super_class = v32;
  v30 = objc_msgSendSuper2(&v37, sel_init);

  return v30;
}

id ControlTemplateRequest.init(fileHandle:control:environment:hostDeviceID:isPreview:)(void *a1, void *a2, void **a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v10 = *a3;
  *&v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control] = a2;
  *&v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle] = a1;
  v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview] = a6;
  KeyPath = swift_getKeyPath();
  v30 = a2;
  v29 = a1;
  v12 = v10;
  v13 = v12;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v14 = type metadata accessor for WidgetEnvironment.Storage();
    v15 = objc_allocWithZone(v14);
    v16 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v15[v16] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v17 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v18 = *&v12[v17];
    swift_beginAccess();
    *&v15[v16] = v18;

    v35.receiver = v15;
    v35.super_class = v14;
    v13 = objc_msgSendSuper2(&v35, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v19 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v20 = type metadata accessor for WidgetEnvironment.Storage();
    v21 = objc_allocWithZone(v20);
    v22 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v21[v22] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v23 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v24 = *&v13[v23];
    swift_beginAccess();
    *&v21[v22] = v24;

    v34.receiver = v21;
    v34.super_class = v20;
    v25 = objc_msgSendSuper2(&v34, sel_init);

    v13 = v25;
  }

  sub_19204C8C0(0, v19);

  *&v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment] = v13;
  v26 = &v7[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID];
  *v26 = a4;
  v26[1] = a5;
  v33.receiver = v7;
  v33.super_class = type metadata accessor for ControlTemplateRequest();
  v27 = objc_msgSendSuper2(&v33, sel_init);

  return v27;
}

uint64_t static ControlTemplateRequest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF2972 = a1;
  return result;
}

void sub_19220E3E4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control);
  v4 = sub_192227930();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle);
  v6 = sub_192227930();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview);
  v8 = sub_192227930();
  [a1 encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment);
  v10 = sub_192227930();
  [a1 encodeObject:v9 forKey:v10];

  if (*(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID + 8))
  {
    v11 = *(v1 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID);
    v12 = sub_192227930();
    v13 = sub_192227930();
    [a1 encodeObject:v12 forKey:v13];
  }
}

id ControlTemplateRequest.init(coder:)(void *a1)
{
  v2 = v1;
  sub_19202A7A8(0, &qword_1EADEE610, 0x1E6994260);
  v4 = sub_192228140();
  if (!v4)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_1922258B0();
    __swift_project_value_buffer(v15, qword_1EAE00810);
    v16 = sub_192225890();
    v17 = sub_192227F90();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      MEMORY[0x193B0C7F0](v18, -1, -1);
    }

    goto LABEL_22;
  }

  v5 = OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control;
  *&v1[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control] = v4;
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v6 = sub_192228140();
  if (!v6)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v19 = sub_1922258B0();
    __swift_project_value_buffer(v19, qword_1EAE00810);
    v20 = sub_192225890();
    v21 = sub_192227F90();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      MEMORY[0x193B0C7F0](v22, -1, -1);
    }

    goto LABEL_21;
  }

  v7 = OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle;
  *&v1[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle] = v6;
  type metadata accessor for WidgetEnvironment.Storage();
  v8 = sub_192228140();
  if (!v8)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_1922258B0();
    __swift_project_value_buffer(v23, qword_1EAE00810);
    v24 = sub_192225890();
    v25 = sub_192227F90();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_192028000, v24, v25, "Unable to decode 'environment", v26, 2u);
      MEMORY[0x193B0C7F0](v26, -1, -1);
    }

    a1 = *&v2[v7];
LABEL_21:

    a1 = *&v2[v5];
LABEL_22:

    type metadata accessor for ControlTemplateRequest();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *&v1[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment] = v8;
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v9 = sub_192228140();
  if (v9)
  {
    v10 = v9;
    v11 = sub_192227960();
    v13 = v12;

    v14 = &v2[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID];
    *v14 = v11;
    v14[1] = v13;
  }

  else
  {
    v28 = &v1[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID];
    *v28 = 0;
    v28[1] = 0;
  }

  v29 = sub_192227930();
  v30 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview] = v30;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for ControlTemplateRequest();
  v31 = objc_msgSendSuper2(&v32, sel_init);

  return v31;
}

id ControlTemplateRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_19220EB84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19220EC2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1922254F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19220EC94()
{
  result = qword_1EADF29C0;
  if (!qword_1EADF29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF29C0);
  }

  return result;
}

unint64_t sub_19220ECE8()
{
  result = qword_1EADF29E0;
  if (!qword_1EADF29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF29B0, &qword_192245F10);
    sub_192162048(&qword_1EADEDFD8);
    sub_1920593E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF29E0);
  }

  return result;
}

uint64_t sub_19220ED90(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF29C8, &qword_192245F20);
    sub_192162048(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19220EE18()
{
  result = qword_1EADF2A08;
  if (!qword_1EADF2A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF29B0, &qword_192245F10);
    sub_192162048(&qword_1EADED380);
    sub_192047340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A08);
  }

  return result;
}

unint64_t sub_19220F0C4()
{
  result = qword_1EADF2A48;
  if (!qword_1EADF2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A48);
  }

  return result;
}

unint64_t sub_19220F11C()
{
  result = qword_1EADF2A50;
  if (!qword_1EADF2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A50);
  }

  return result;
}

unint64_t sub_19220F174()
{
  result = qword_1EADF2A58;
  if (!qword_1EADF2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A58);
  }

  return result;
}

uint64_t sub_19220F1D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  if (a1 > 2u)
  {
    v3 = 0x8000000192248630;
    v4 = 0x8000000192248650;
    if (a1 == 4)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = 0x6465646E61707865;
    }

    if (a1 != 4)
    {
      v4 = 0xEF7363697274654DLL;
    }

    v5 = a1 == 3;
    if (a1 == 3)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = v7;
    }
  }

  else
  {
    v3 = 0x80000001922485D0;
    v4 = 0x80000001922485F0;
    if (a1 != 1)
    {
      v4 = 0x8000000192248610;
    }

    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000014;
    }
  }

  if (v5)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x8000000192248630;
      v2 = 0xD000000000000016;
    }

    else if (a2 == 4)
    {
      v10 = 0x8000000192248650;
    }

    else
    {
      v2 = 0x6465646E61707865;
      v10 = 0xEF7363697274654DLL;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = "obstructionSizeHeight";
    }

    else
    {
      v9 = "compactLeadingMetrics";
    }

    v10 = (v9 - 32) | 0x8000000000000000;
  }

  else
  {
    v10 = 0x80000001922485D0;
    v2 = 0xD000000000000014;
  }

  if (v6 == v2 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}

uint64_t sub_19220F374(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000746E65;
  v5 = 0x646E6148656C6966;
  if (a1 == 2)
  {
    v5 = 0x6D6E6F7269766E65;
  }

  else
  {
    v4 = 0xEA0000000000656CLL;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v6 = 1684957547;
  }

  else
  {
    v3 = 0x8000000192248840;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEB00000000746E65;
    v9 = 0xEA0000000000656CLL;
    if (a2 == 2)
    {
      v12 = 0x6D6E6F7269766E65;
    }

    else
    {
      v12 = 0x646E6148656C6966;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    v10 = 0x8000000192248840;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 1684957547;
    }

    else
    {
      v12 = 0xD000000000000011;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1922289A0();
  }

  return v14 & 1;
}

uint64_t sub_19220F4C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x5474736575716572;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 7235949;
    }

    else
    {
      v5 = 7889261;
    }

    v6 = 0xE300000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465786966;
    }

    else
    {
      v5 = 0x5474736575716572;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  v7 = 7235949;
  if (a2 != 2)
  {
    v7 = 7889261;
  }

  if (a2)
  {
    v3 = 0x6465786966;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1922289A0();
  }

  return v10 & 1;
}

id PlaceholderRequest.__allocating_init(extensionIdentity:kind:environment:fileHandle:)(void *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v6 = v5;
  v11 = objc_allocWithZone(v6);
  *&v11[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity] = a1;
  v12 = *a4;
  v13 = &v11[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind];
  *v13 = a2;
  *(v13 + 1) = a3;
  KeyPath = swift_getKeyPath();
  v34 = a1;
  v15 = v12;
  v16 = &property descriptor for StorageBackedControlArchive.state;
  v17 = v15;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v18 = type metadata accessor for WidgetEnvironment.Storage();
    v19 = objc_allocWithZone(v18);
    v20 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v19[v20] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v21 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v22 = *&v15[v21];
    swift_beginAccess();
    *&v19[v20] = v22;
    v16 = &property descriptor for StorageBackedControlArchive.state;

    v38.receiver = v19;
    v38.super_class = v18;
    v17 = objc_msgSendSuper2(&v38, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v23 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v24 = type metadata accessor for WidgetEnvironment.Storage();
    v25 = objc_allocWithZone(v24);
    v33 = v6;
    v26 = v16;
    v27 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v25[v27] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v28 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v29 = *&v17[v28];
    swift_beginAccess();
    *&v25[v27] = v29;
    v16 = v26;
    v6 = v33;

    v37.receiver = v25;
    v37.super_class = v24;
    v30 = objc_msgSendSuper2(&v37, v16 + 2936);

    v17 = v30;
  }

  sub_19204C8C0(0, v23);

  *&v11[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment] = v17;
  *&v11[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle] = a5;
  v36.receiver = v11;
  v36.super_class = v6;
  v31 = objc_msgSendSuper2(&v36, *(v16 + 347));

  return v31;
}

uint64_t PlaceholderRequest.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind);
  v2 = *(v0 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind + 8);

  return v1;
}

id PlaceholderRequest.environment.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment);
  *a1 = v2;
  return v2;
}

uint64_t sub_19220F8CC()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19220F998()
{
  *v0;
  *v0;
  sub_1922279B0();
}

uint64_t sub_19220FA50()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19220FB18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_192210A70();
  *a2 = result;
  return result;
}

void sub_19220FB48(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684957547;
  v4 = 0xEB00000000746E65;
  v5 = 0x6D6E6F7269766E65;
  if (*v1 != 2)
  {
    v5 = 0x646E6148656C6966;
    v4 = 0xEA0000000000656CLL;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000192248840;
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

unint64_t sub_19220FBD0()
{
  v1 = 1684957547;
  v2 = 0x6D6E6F7269766E65;
  if (*v0 != 2)
  {
    v2 = 0x646E6148656C6966;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19220FC54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192210A70();
  *a1 = result;
  return result;
}

uint64_t sub_19220FC7C(uint64_t a1)
{
  v2 = sub_192211354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19220FCB8(uint64_t a1)
{
  v2 = sub_192211354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id PlaceholderRequest.init(extensionIdentity:kind:environment:fileHandle:)(void *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity] = a1;
  v8 = *a4;
  v9 = &v6[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind];
  *v9 = a2;
  *(v9 + 1) = a3;
  KeyPath = swift_getKeyPath();
  v27 = a1;
  v11 = v8;
  v12 = v11;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v13 = type metadata accessor for WidgetEnvironment.Storage();
    v14 = objc_allocWithZone(v13);
    v15 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v14[v15] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v16 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v17 = *&v11[v16];
    swift_beginAccess();
    *&v14[v15] = v17;

    v31.receiver = v14;
    v31.super_class = v13;
    v12 = objc_msgSendSuper2(&v31, sel_init);
  }

  sub_19204C8C0(0, KeyPath);

  v18 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v19 = type metadata accessor for WidgetEnvironment.Storage();
    v20 = objc_allocWithZone(v19);
    v21 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v20[v21] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v22 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v23 = *&v12[v22];
    swift_beginAccess();
    *&v20[v21] = v23;

    v30.receiver = v20;
    v30.super_class = v19;
    v24 = objc_msgSendSuper2(&v30, sel_init);

    v12 = v24;
  }

  sub_19204C8C0(0, v18);

  *&v6[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment] = v12;
  *&v6[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle] = a5;
  v29.receiver = v6;
  v29.super_class = type metadata accessor for PlaceholderRequest();
  v25 = objc_msgSendSuper2(&v29, sel_init);

  return v25;
}

uint64_t sub_19220FF4C(void *a1)
{
  v3 = v1;
  v27[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2A80, &unk_1922461E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192211354();
  sub_192228B90();
  v27[0] = *(v3 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity);
  HIBYTE(v26) = 0;
  sub_192228100();
  sub_1922115B8(&qword_1ED74A500);
  sub_1922288C0();
  if (v2)
  {
    result = (*(v6 + 8))(v9, v5);
  }

  else
  {
    v11 = *(v3 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind);
    v12 = *(v3 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind + 8);
    LOBYTE(v27[0]) = 1;
    sub_192228860();
    v27[0] = *(v3 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment);
    v13 = v27[0];
    HIBYTE(v26) = 2;
    sub_1920E2830();
    v14 = v13;
    sub_1922288C0();

    v17 = objc_opt_self();
    v18 = *(v3 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle);
    v27[0] = 0;
    v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:v27];
    v20 = v27[0];
    if (v19)
    {
      v21 = sub_192225080();
      v23 = v22;
    }

    else
    {
      v24 = v20;
      v25 = sub_192224F90();

      swift_willThrow();
      v21 = 0;
      v23 = 0xF000000000000000;
    }

    v27[0] = v21;
    v27[1] = v23;
    HIBYTE(v26) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0400, &qword_192233B98);
    sub_192117B88();
    sub_1922288C0();
    (*(v6 + 8))(v9, v5);
    result = sub_192046ED4(v21, v23);
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PlaceholderRequest.init(coder:)(void *a1)
{
  sub_192228100();
  v2 = sub_192228140();
  sub_19202A7A8(0, &qword_1ED74BC20, 0x1E696AEC0);
  v7 = 0;
  v8 = 0;
  v3 = sub_192228140();
  sub_192227950();

  type metadata accessor for WidgetEnvironment.Storage();
  v4 = sub_192228140();
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v5 = sub_192228140();
  if (v2)
  {
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1922106F8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity);
  v4 = sub_192227930();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind);
  v6 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind + 8);
  v7 = sub_192227930();
  v8 = sub_192227930();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment);
  v10 = sub_192227930();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle);
  v12 = sub_192227930();
  [a1 encodeObject:v11 forKey:v12];
}

id PlaceholderRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceholderRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1922109FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_192210ABC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_192210A70()
{
  v0 = sub_192228700();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_192210ABC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AA8, &qword_1922463C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v62 - v6;
  v8 = a1[3];
  v9 = a1[4];
  v79 = a1;
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = sub_192211354();
  sub_192228B70();
  if (v1)
  {
    goto LABEL_3;
  }

  v12 = v4;
  sub_192228100();
  v76 = 0;
  sub_1922115B8(&qword_1ED748700);
  sub_1922287C0();
  v13 = v77;
  v76 = 2;
  sub_192044634();
  sub_1922287C0();
  v14 = v7;
  v15 = v77;
  LOBYTE(v77) = 1;
  v16 = sub_192228760();
  v18 = v17;
  v72 = v16;
  v76 = 3;
  sub_192047340();
  sub_1922287C0();
  v68 = v14;
  v71 = v15;
  v20 = v77;
  v21 = v78;
  v67 = sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
  sub_19202A7A8(0, &unk_1ED74C360, 0x1E696AC00);
  v70 = v20;
  v69 = v21;
  v22 = sub_192228010();
  v28 = v71;
  if (!v22)
  {

    v53 = sub_1922284A0();
    v54 = swift_allocError();
    v56 = v55;
    v57 = v3;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
    *v56 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_19222B480;
    *(v59 + 56) = &type metadata for PlaceholderRequest.CodingKeys;
    *(v59 + 64) = v11;
    *(v59 + 32) = 3;
    v60 = v57;
    sub_192228480();
    v61 = *(*(v53 - 8) + 104);
    LODWORD(v72) = *MEMORY[0x1E69E6B08];
    v61(v56);
    v67 = v54;
    swift_willThrow();
    v23 = sub_1922284A0();
    swift_allocError();
    v25 = v24;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
    *v25 = sub_19202A7A8(0, &qword_1ED74BB40, 0x1E6994370);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21D0, &qword_192238230);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_19222B480;
    *(v10 + 56) = &type metadata for PlaceholderRequest.CodingKeys;
    *(v10 + 64) = v11;
    *(v10 + 32) = 3;
    v26 = v67;
    v27 = v67;
    sub_192228480();
    (*(*(v23 - 8) + 104))(v25, v72, v23);
    swift_willThrow();
    sub_192039140(v70, v69);

    (*(v12 + 8))(v68, v60);
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v79);
    return v10;
  }

  v29 = v22;
  v66 = type metadata accessor for PlaceholderRequest();
  v30 = objc_allocWithZone(v66);
  *&v30[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity] = v13;
  v67 = v30;
  v31 = &v30[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind];
  *v31 = v72;
  *(v31 + 1) = v18;
  KeyPath = swift_getKeyPath();
  v32 = v28;
  v72 = v29;
  v71 = v13;
  v33 = &unk_1EADEF000;
  v34 = &property descriptor for StorageBackedControlArchive.state;
  v35 = v32;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v64 = type metadata accessor for WidgetEnvironment.Storage();
    v36 = objc_allocWithZone(v64);
    v37 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v36[v37] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v38 = v3;
    v39 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v40 = *&v32[v39];
    v3 = v38;
    swift_beginAccess();
    *&v36[v37] = v40;
    v33 = &unk_1EADEF000;
    v34 = &property descriptor for StorageBackedControlArchive.state;

    v75.receiver = v36;
    v75.super_class = v64;
    v35 = objc_msgSendSuper2(&v75, sel_init);
  }

  v64 = v32;
  sub_19204C8C0(0, KeyPath);

  v41 = swift_getKeyPath();
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v62 = type metadata accessor for WidgetEnvironment.Storage();
    v42 = objc_allocWithZone(v62);
    v63 = v41;
    v43 = v42;
    v44 = v34;
    v45 = v33[72];
    *&v42[v45] = sub_192043788(MEMORY[0x1E69E7CC0]);
    KeyPath = v3;
    v46 = v33[72];
    swift_beginAccess();
    v47 = *&v35[v46];
    v3 = KeyPath;
    swift_beginAccess();
    *&v43[v45] = v47;
    v34 = v44;

    v74.receiver = v43;
    v74.super_class = v62;
    v48 = objc_msgSendSuper2(&v74, v44 + 2936);

    v35 = v48;
    v41 = v63;
  }

  v49 = v68;
  sub_19204C8C0(0, v41);
  v50 = v64;

  v51 = v67;
  *&v67[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment] = v35;
  v52 = v72;
  *&v51[OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle] = v72;
  v73.receiver = v51;
  v73.super_class = v66;
  v10 = objc_msgSendSuper2(&v73, v34[347]);
  sub_192039140(v70, v69);

  (*(v12 + 8))(v49, v3);
  __swift_destroy_boxed_opaque_existential_1(v79);
  return v10;
}

unint64_t sub_192211354()
{
  result = qword_1EADF2A88;
  if (!qword_1EADF2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A88);
  }

  return result;
}

unint64_t sub_1922114B4()
{
  result = qword_1EADF2A90;
  if (!qword_1EADF2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A90);
  }

  return result;
}

unint64_t sub_19221150C()
{
  result = qword_1EADF2A98;
  if (!qword_1EADF2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2A98);
  }

  return result;
}

unint64_t sub_192211564()
{
  result = qword_1EADF2AA0;
  if (!qword_1EADF2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2AA0);
  }

  return result;
}

uint64_t sub_1922115B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_192228100();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_192211604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1920B3B44;

  return AppIntentTimelineProvider.snapshot(for:in:)(a1, a2, a3, a4, a5);
}

uint64_t AppIntentTimelineProvider.snapshot(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1922116F4, 0, 0);
}

uint64_t sub_1922116F4()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v6 = v0;
  v6[1] = sub_192211824;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v8, 0, 0, 0xD000000000000011, 0x800000019224ED50, sub_1922128DC, v2, AssociatedTypeWitness);
}

uint64_t sub_192211824()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_192211934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1920B3B44;

  return AppIntentTimelineProvider.timeline(for:in:)(a1, a2, a3, a4, a5);
}

uint64_t AppIntentTimelineProvider.timeline(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_192211A24, 0, 0);
}

uint64_t sub_192211A24()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 40) = v4;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Timeline();
  *v6 = v0;
  v6[1] = sub_192213000;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v8, 0, 0, 0xD000000000000011, 0x800000019224ED70, sub_1922128F4, v2, v7);
}

uint64_t sub_192211D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t AppIntentTimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_192211DD4, 0, 0);
}

uint64_t sub_192211DD4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  swift_getAssociatedTypeWitness();
  sub_19203BEB4(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_192211E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920B3B44;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t AppIntentTimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v6 = *(a3 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v3[6] = v8;
  *v8 = v3;
  v8[1] = sub_192212028;

  return (v10)(v3 + 2, a2, a3);
}

uint64_t sub_192212028()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_192212124, 0, 0);
}

uint64_t sub_192212124()
{
  v7 = v0;
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v6 = v0[2];
  swift_getAssociatedTypeWitness();
  sub_19208805C(&v6, v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1922121AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a2;
  swift_getAssociatedTypeWitness();
  v11 = sub_192227CA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v20 - v15;
  (*(v12 + 16))(v20 - v15, a1, v11, v14);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  (*(v12 + 32))(v18 + v17, v16, v11);
  (*(a6 + 72))(a3, a4, sub_192212F48, v18, a5, a6);
}

uint64_t sub_192212360(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v6 + 16))(&v8 - v5, a1, AssociatedTypeWitness, v4);
  sub_192227CA0();
  return sub_192227C90();
}

uint64_t sub_192212460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Timeline();
  v11 = sub_192227CA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v20 - v15;
  (*(v12 + 16))(v20 - v15, a1, v11, v14);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  (*(v12 + 32))(v18 + v17, v16, v11);
  (*(a6 + 80))(a3, a4, sub_192212E54, v18, a5, a6);
}

uint64_t sub_192212648(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for Timeline();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - v5, a1, v2, v4);
  sub_192227CA0();
  return sub_192227C90();
}

uint64_t _s9WidgetKit25AppIntentTimelineProviderPAAE15recommendationsSayAA0cD14RecommendationVy0D0QzGGyF_0()
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1922258B0();
  __swift_project_value_buffer(v0, qword_1ED74CCC8);
  v1 = sub_192225890();
  v2 = sub_192227F80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_192028000, v1, v2, "Default implementation for recommendations.", v3, 2u);
    MEMORY[0x193B0C7F0](v3, -1, -1);
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AppIntentRecommendation();

  return sub_192227BD0();
}

uint64_t dispatch thunk of AppIntentTimelineProvider.snapshot(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1920B3B44;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentTimelineProvider.timeline(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 64);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1920B3B44;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AppIntentTimelineProvider.relevances()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AppIntentTimelineProvider.relevance()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3);
}

uint64_t sub_192212E54(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Timeline();
  v5 = *(*(sub_192227CA0() - 8) + 80);

  return sub_192212648(a1);
}

uint64_t sub_192212F48(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_getAssociatedTypeWitness();
  v5 = *(*(sub_192227CA0() - 8) + 80);

  return sub_192212360(a1);
}

uint64_t sub_192213004()
{
  sub_1920791AC();

  return sub_192226630();
}

uint64_t sub_192213094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(a3 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = *(a5 + 40);
  v13 = *(*(*(a5 + 8) + 8) + 8);
  v14 = sub_192227A50();
  sub_19207A2A8(v14, v15, a2, a4);
}

uint64_t WidgetConfiguration.onBackgroundURLSessionEvents(matching:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  sub_1920797E8(sub_1922142A0, v8);
}

{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_19202D088(a1);

  sub_1920797E8(sub_1922142AC, v8);
}

uint64_t sub_192213268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(type metadata accessor for WidgetDescriptor(0) + 84);
  v12 = *(a1 + v11);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1920C39C8(0, *(v12 + 16) + 1, 1, v12);
    v12 = result;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    result = sub_1920C39C8((v14 > 1), v15 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v15 + 1;
  v16 = (v12 + 32 * v15);
  v16[4] = sub_1922144C0;
  v16[5] = v10;
  v16[6] = a4;
  v16[7] = a5;
  *(a1 + v11) = v12;
  return result;
}

uint64_t sub_1922133AC(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_192038FB8(a1, v5);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_192214464(v5);
  }

  v6 = v5[3];
  v45[2] = v5[2];
  v46 = v6;
  v47[0] = v5[4];
  *(v47 + 9) = *(v5 + 73);
  v7 = v5[1];
  v45[0] = *v5;
  v45[1] = v7;
  sub_1920B2B7C(&v46, &v32);
  if (BYTE8(v34) == 1)
  {
    sub_1920B2BD8(&v32);
  }

  else
  {
    sub_19209CBAC(&v32, v44);
    sub_192033A64(v44, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADF0C38, &qword_1922371C0);
    if (swift_dynamicCast())
    {
      v27[6] = v38;
      v27[7] = v39;
      v27[2] = v34;
      v27[3] = v35;
      v27[4] = v36;
      v27[5] = v37;
      v27[0] = v32;
      v27[1] = v33;
      v24 = v38;
      v25 = v39;
      v20 = v34;
      v21 = v35;
      v22 = v36;
      v23 = v37;
      v28 = v40;
      *&v26[0] = v40;
      v18 = v32;
      v19 = v33;
      BYTE8(v26[0]) = 1;
      *(v26 + 9) = v41;
      *(&v26[1] + 9) = *v42;
      *(&v26[2] + 1) = *&v42[15];
      v16[3] = &type metadata for ControlPickerTemplateProvider;
      v16[4] = &off_1F06AFD68;
      v9 = swift_allocObject();
      v16[0] = v9;
      v10 = v26[1];
      v9[9] = v26[0];
      v9[10] = v10;
      v9[11] = v26[2];
      v11 = v23;
      v9[5] = v22;
      v9[6] = v11;
      v12 = v25;
      v9[7] = v24;
      v9[8] = v12;
      v13 = v19;
      v9[1] = v18;
      v9[2] = v13;
      v14 = v21;
      v9[3] = v20;
      v9[4] = v14;
      v29 = 1;
      v30 = v41;
      *v31 = *v42;
      *&v31[15] = *&v42[15];
      sub_1920800B4(&v18, v15);
      sub_192080104(v27);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v17 = 0;
      sub_192147370(v16, &v46);
      sub_192214464(a1);
      sub_192081C60(v45, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v44);
    }
  }

  return sub_1920390EC(v45);
}

uint64_t sub_19221371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = sub_192214428;
  }

  else
  {
    v11 = sub_19203B3C0;
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = *(type metadata accessor for WidgetDescriptor(0) + 84);
  v14 = *(a1 + v13);
  sub_19202D088(a2);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1920C39C8(0, *(v14 + 16) + 1, 1, v14);
    v14 = result;
  }

  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v17 >= v16 >> 1)
  {
    result = sub_1920C39C8((v16 > 1), v17 + 1, 1, v14);
    v14 = result;
  }

  *(v14 + 16) = v17 + 1;
  v18 = (v14 + 32 * v17);
  v18[4] = sub_1922143E8;
  v18[5] = v12;
  v18[6] = a4;
  v18[7] = a5;
  *(a1 + v13) = v14;
  return result;
}

uint64_t WidgetConfiguration.promptsForUserConfiguration()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 1;
  sub_1920793F8(KeyPath, &v6, a1, a2);
}

uint64_t WidgetConfiguration.enabled(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = 1;
  if ((a1 & 1) == 0)
  {
    v7 = 2;
  }

  v9 = v7;
  sub_1920793F8(KeyPath, &v9, a2, a3);
}

uint64_t WidgetConfiguration.associatedKind(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10[0] = a1;
  v10[1] = a2;
  sub_1920793F8(KeyPath, v10, a3, a4);
}

uint64_t WidgetConfiguration.internalSupportedFamilies(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = a2;
    v6 = a3;
    v15 = MEMORY[0x1E69E7CC0];
    sub_19207A250(0, v3, 0);
    v4 = v15;
    v7 = (a1 + 32);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 > 0xCuLL)
      {
        break;
      }

      v10 = qword_1922468D0[v8];
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19207A250((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      *(v15 + 8 * v12 + 32) = v10;
      if (!--v3)
      {
        a3 = v6;
        a2 = v14;
        goto LABEL_8;
      }
    }

    result = sub_192228990();
    __break(1u);
  }

  else
  {
LABEL_8:
    WidgetConfiguration.privateSupportedFamilies(_:)(v4, a2, a3);
  }

  return result;
}

uint64_t sub_192213B94(uint64_t a1)
{
  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 72)) = 1;
  return result;
}

uint64_t WidgetConfiguration.isTransparent(_:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  sub_1920797E8(sub_1922142B8, v2);
}

uint64_t WidgetConfiguration.internalWidget()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 1;
  sub_1920793F8(KeyPath, &v6, a1, a2);
}

uint64_t WidgetConfiguration.visibilityConfigurableByInternalSettings(visibleByDefault:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = 2;
  if ((a1 & 1) == 0)
  {
    v7 = 3;
  }

  v9 = v7;
  sub_1920793F8(KeyPath, &v9, a2, a3);
}

uint64_t WidgetLocation.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t WidgetConfiguration.disfavoredLocations(_:for:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  sub_1920797E8(sub_192214308, v4);
}

unint64_t sub_192213EF0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return result;
  }

  v6 = result;
  v7 = type metadata accessor for WidgetDescriptor(0);
  v8 = 0;
  v9 = 0;
  v10 = *(v7 + 36);
  v11 = a2 + 32;
  while (1)
  {
    v12 = *(v11 + v9);
    sub_19203831C(v8);
    v13 = qword_192246938[v12];
    v14 = *(v6 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v6 + v10);
    v16 = v32;
    result = sub_1920B733C(v13);
    v18 = v16[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v16[3] < v21)
    {
      sub_19213D898(v21, isUniquelyReferenced_nonNull_native);
      v16 = v32;
      result = sub_1920B733C(v13);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_9:
      *(v6 + v10) = v16;
      if (v22)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v30 = result;
    sub_1921400B4();
    result = v30;
    v16 = v32;
    *(v6 + v10) = v32;
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_10:
    v16[(result >> 6) + 8] |= 1 << result;
    *(v16[6] + 8 * result) = v13;
    *(v16[7] + 8 * result) = MEMORY[0x1E69E7CD0];
    v24 = v16[2];
    v20 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v16[2] = v25;
LABEL_12:
    v26 = *(a3 + 16);
    if (v26)
    {
      v27 = v16[7] + 8 * result;
      v28 = (a3 + 32);
      do
      {
        v29 = *v28++;
        result = sub_1921C2028(&v31, v29);
        --v26;
      }

      while (v26);
    }

    ++v9;
    v8 = sub_1922140C8;
    if (v9 == v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  type metadata accessor for CHSWidgetFamily(0);
  result = sub_192228A40();
  __break(1u);
  return result;
}

uint64_t WidgetConfiguration.pushHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v10[0] = a1;
  v10[1] = a2;
  sub_1920793F8(KeyPath, v10, a3, a4);
}

uint64_t WidgetConfiguration.supportedMountingStyles(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_1920797E8(sub_192214310, v2);
}

uint64_t sub_1922141F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = *(type metadata accessor for WidgetDescriptor(0) + 64);
    v5 = (a2 + 32);
    do
    {
      if (*v5++)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      result = sub_1921C2044(&v9, v7);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1922142B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  result = type metadata accessor for WidgetDescriptor(0);
  *(a1 + *(result + 60)) = v4;
  *(a1 + *(result + 68)) = v3;
  return result;
}

unint64_t sub_19221431C()
{
  result = qword_1ED74AFE8;
  if (!qword_1ED74AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AFE8);
  }

  return result;
}

unint64_t sub_192214394()
{
  result = qword_1EADF2AB0;
  if (!qword_1EADF2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2AB0);
  }

  return result;
}

uint64_t sub_1922143E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v3(&v6, v7);
  return v6;
}

uint64_t sub_192214428@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_192214464(uint64_t a1)
{
  v2 = type metadata accessor for ViewSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1922144C0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) == a1 && *(v2 + 24) == a2)
  {
    return 1;
  }

  else
  {
    return sub_1922289A0();
  }
}

unint64_t sub_1922144F4()
{
  result = qword_1ED749950;
  if (!qword_1ED749950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749950);
  }

  return result;
}

unint64_t sub_19221454C()
{
  result = qword_1ED749938;
  if (!qword_1ED749938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749938);
  }

  return result;
}

unint64_t sub_1922145A4()
{
  result = qword_1ED749958;
  if (!qword_1ED749958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749958);
  }

  return result;
}

uint64_t sub_1922145F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x5079616C70736964;
  }

  else
  {
    v4 = 1111970419;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE900000000000033;
  }

  if (*a2)
  {
    v6 = 0x5079616C70736964;
  }

  else
  {
    v6 = 1111970419;
  }

  if (*a2)
  {
    v7 = 0xE900000000000033;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_19221469C()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19221471C()
{
  *v0;
  sub_1922279B0();
}

uint64_t sub_192214788()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_192214804@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_192228700();

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

void sub_192214864(uint64_t *a1@<X8>)
{
  v2 = 1111970419;
  if (*v1)
  {
    v2 = 0x5079616C70736964;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000033;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_192214950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x5079616C70736964;
  }

  else
  {
    v4 = 1111970419;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE900000000000033;
  }

  if (*a2)
  {
    v6 = 0x5079616C70736964;
  }

  else
  {
    v6 = 1111970419;
  }

  if (*a2)
  {
    v7 = 0xE900000000000033;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_1922149F4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x5079616C70736964;
  }

  else
  {
    v3 = 1111970419;
  }

  if (*a2)
  {
    v4 = 0xE900000000000033;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v5 = 0x5079616C70736964;
  }

  else
  {
    v5 = 1111970419;
  }

  if (v2)
  {
    v6 = 0xE900000000000033;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_192214AAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x5079616C70736964;
  }

  else
  {
    v4 = 1111970419;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE900000000000033;
  }

  if (*a2)
  {
    v6 = 0x5079616C70736964;
  }

  else
  {
    v6 = 1111970419;
  }

  if (*a2)
  {
    v7 = 0xE900000000000033;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_192214B64(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x5079616C70736964;
  }

  else
  {
    v3 = 1111970419;
  }

  if (*a2)
  {
    v4 = 0xE900000000000033;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (v2)
  {
    v5 = 0x5079616C70736964;
  }

  else
  {
    v5 = 1111970419;
  }

  if (v2)
  {
    v6 = 0xE900000000000033;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t sub_192214C08@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_192225A40();
  v5 = MEMORY[0x1E697DE28];
  if (!v3)
  {
    v5 = MEMORY[0x1E697DE20];
  }

  return (*(*(v4 - 8) + 104))(a2, *v5, v4);
}

uint64_t sub_192214C90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192214D68(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_192214CC0()
{
  result = qword_1ED749948;
  if (!qword_1ED749948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749948);
  }

  return result;
}

unint64_t sub_192214D14()
{
  result = qword_1ED749940;
  if (!qword_1ED749940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749940);
  }

  return result;
}

uint64_t sub_192214D68(uint64_t a1)
{
  v2 = sub_192225A40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 16);
  v8(v7, a1, v2, v5);
  v9 = (*(v3 + 88))(v7, v2);
  if (v9 == *MEMORY[0x1E697DE20] || v9 == *MEMORY[0x1E697DE28])
  {
    return v9 != *MEMORY[0x1E697DE20];
  }

  v20[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (v8)(boxed_opaque_existential_1, a1, v2);
  v12 = sub_1922284C0();
  swift_allocError();
  v14 = v13;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC0, &qword_192243910) + 48);
  sub_19202A98C(v20, v14);
  v19[0] = sub_192228430();
  v19[1] = v16;
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v20[5] = 36;
  v17 = sub_192228910();
  MEMORY[0x193B0A990](v17);

  sub_192228480();
  (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69E6B30], v12);
  __swift_destroy_boxed_opaque_existential_1(v20);
  swift_willThrow();
  return (*(v3 + 8))(v7, v2);
}

uint64_t static ControlArchiver.archive<A>(control:environment:hostDeviceID:asyncDataSource:fileHandle:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[4] = *a2;
  v15 = swift_task_alloc();
  v8[6] = v15;
  *v15 = v8;
  v15[1] = sub_1922150DC;

  return static ControlArchiver.archive<A>(control:environment:hostDeviceID:asyncDataSource:)(a1, v8 + 4, a3, a4, a5, a7, a8);
}

uint64_t sub_1922150DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 48);
  v8 = *v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;

  if (v2)
  {
    v6 = sub_192215298;
  }

  else
  {
    v6 = sub_1922151F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1922151F4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 56);
  sub_1920B2FE8();
  sub_192227F40();
  sub_192039140(*(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1922152B0(void (*a1)(char *, void **), uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v3 = type metadata accessor for ControlTemplateType(0);
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1922261D0();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v56 - v13;
  v14 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = MEMORY[0x1E69E7CC0];
  sub_19209AE60(0, 0, 0);
  v24 = v70;
  sub_19221954C(v2, v18, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v25 = *v18;
  v26 = *(v15 + 28);
  v27 = *(v65 + 16);
  v64 = *(v20 + 28);
  v65 += 16;
  v67 = v6;
  v63 = v27;
  v27(v23 + v64, v18 + v26, v6);
  v28 = v25;
  v29 = sub_192056208(MEMORY[0x1E69E7CC0]);
  v69 = v28;
  v30 = v28;

  v31 = sub_192056340(&v69, v29);
  v33 = v32;
  v35 = v34;

  *v23 = v31;
  v23[1] = v33;
  v23[2] = v35;
  sub_1922195B4(v18, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v57 = (v65 + 16);
  v62 = (v65 - 8);
  while (1)
  {
    v36 = v23[1];
    if (v36 >> 62)
    {
      if (v36 < 0)
      {
        v54 = v23[1];
      }

      v55 = sub_192228340();
      v38 = v55 - 1;
      if (v55 < 1)
      {
LABEL_23:
        sub_1922195B4(v23, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
        return v24;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = v37 - 1;
      if (v37 < 1)
      {
        goto LABEL_23;
      }
    }

    if ((sub_19205F34C(v38) & 1) == 0)
    {
      v39 = *v23;

      v40 = MEMORY[0x1E69E7CC0];
      *v23 = MEMORY[0x1E69E7CC0];
      v41 = v23[1];

      v23[1] = v40;
      v42 = v23[2];

      v23[2] = v40;
    }

    result = v63(v9, v23 + v64, v67);
    if (v36 >> 62)
    {
      result = sub_192228340();
      v44 = result;
      if (!result)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v44 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        goto LABEL_16;
      }
    }

    if (v44 < 1)
    {
      break;
    }

    for (i = 0; i != v44; ++i)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x193B0B410](i, v36);
      }

      else
      {
        v46 = *(v36 + 8 * i + 32);
      }

      (*(**(v46 + 16) + 112))(v9);
    }

LABEL_16:

    v47 = *v57;
    v48 = v59;
    v49 = v67;
    (*v57)(v59, v9, v67);
    v50 = v58;
    v47(v58, v48, v49);
    v51 = v68;
    v60(v50, &v69);
    if (v51)
    {
      (*v62)(v50, v49);
      sub_1922195B4(v23, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);

      return v24;
    }

    v68 = 0;
    (*v62)(v50, v49);
    v70 = v24;
    v53 = *(v24 + 16);
    v52 = *(v24 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_19209AE60(v52 > 1, v53 + 1, 1);
      v24 = v70;
    }

    *(v24 + 16) = v53 + 1;
    sub_192219614(v66, v24 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v53, type metadata accessor for ControlTemplateType);
  }

  __break(1u);
  return result;
}

unint64_t sub_192215874(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v5 = a1;
      v6 = a2;
      sub_192228400();

      v8[0] = 0xD000000000000017;
      v8[1] = 0x800000019224EF00;
      a1 = v5;
      a2 = v6;
    }

    else
    {
      v8[0] = 0;
      v8[1] = 0xE000000000000000;
      sub_192228400();
      MEMORY[0x193B0A990](0xD000000000000024, 0x800000019224A0D0);
      v3 = sub_192228910();
      MEMORY[0x193B0A990](v3);

      MEMORY[0x193B0A990](0x746365707865202CLL, 0xEB00000000206465);
      v4 = sub_192228910();
      MEMORY[0x193B0A990](v4);

      a1 = 46;
      a2 = 0xE100000000000000;
    }

    goto LABEL_7;
  }

  if (a3 == 2)
  {
    strcpy(v8, "Bad archive: ");
    HIWORD(v8[1]) = -4864;
LABEL_7:
    MEMORY[0x193B0A990](a1, a2);
    return v8[0];
  }

  return 0xD000000000000019;
}

uint64_t static ControlArchiver.archive<A>(control:environment:hostDeviceID:asyncDataSource:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  v9 = type metadata accessor for ControlArchiveStorage(0);
  v7[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a2;
  v7[9] = v11;
  v7[10] = v12;

  return MEMORY[0x1EEE6DFA0](sub_192215AEC, 0, 0);
}

uint64_t sub_192215AEC()
{
  v14 = v0[10];
  if (WidgetEnvironment.enumeratedCount()() < 1)
  {
    sub_1920B303C();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v12 = v0[9];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_192215C1C;
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[2];
    v9 = v0[3];

    return sub_192215ED4(v2, v6, v8, v3, v9, v7, v4, v5);
  }
}

uint64_t sub_192215C1C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_192215E70;
  }

  else
  {
    v3 = sub_192215D30;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192215D30()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  sub_192218FB8(&qword_1EADEE130, type metadata accessor for ControlArchiveStorage);
  v5 = sub_192227870();
  v6 = v0[9];
  if (v1)
  {
    sub_1922195B4(v6, type metadata accessor for ControlArchiveStorage);
    v7 = v0[9];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[9];
    v11 = v4;
    sub_1922195B4(v6, type metadata accessor for ControlArchiveStorage);

    v12 = v0[1];

    return v12(v5, v11);
  }
}

uint64_t sub_192215E70()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_192215ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  v11 = *(type metadata accessor for ControlTemplateType(0) - 8);
  v8[18] = v11;
  v12 = *(v11 + 64) + 15;
  v8[19] = swift_task_alloc();
  v13 = sub_1922261D0();
  v8[20] = v13;
  v14 = *(v13 - 8);
  v8[21] = v14;
  v15 = *(v14 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v16 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v8[25] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v18 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v8[27] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v20 = *(*(type metadata accessor for BundleStub() - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v21 = sub_192225150();
  v8[30] = v21;
  v22 = *(v21 - 8);
  v8[31] = v22;
  v23 = *(v22 + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v24 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v8[34] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v26 = *(a8 + 8);
  v30 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  v8[37] = v28;
  *v28 = v8;
  v28[1] = sub_192216204;

  return v30(a7, a8);
}

uint64_t sub_192216204(uint64_t a1)
{
  v3 = *(*v2 + 296);
  v4 = *v2;
  v4[38] = a1;

  if (v1)
  {
    v6 = v4[35];
    v5 = v4[36];
    v8 = v4[32];
    v7 = v4[33];
    v10 = v4[28];
    v9 = v4[29];
    v11 = v4[26];
    v12 = v4[23];
    v13 = v4[24];
    v17 = v4[22];
    v14 = v4[19];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1922163E4, 0, 0);
  }
}

uint64_t sub_1922163E4()
{
  v122 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v0 + 96);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v108 = *(v4 + 16);
  v108(v1, v2, v3);
  BundleStub.init(_:)([v6 extensionIdentity], v5);
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 288);
  v8 = *(v0 + 272);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v106 = *(v0 + 304);
  v107 = *(v0 + 224);
  v104 = *(v0 + 264);
  v105 = *(v0 + 216);
  v117 = *(v0 + 208);
  v111 = *(v0 + 200);
  v103 = *(v0 + 168);
  v114 = *(v0 + 160);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  swift_beginAccess();
  v15 = qword_1ED74BAA0;
  *(v7 + v8[6]) = v13;
  sub_19221954C(v12, v7, type metadata accessor for BundleStub);
  v108(v7 + v8[8], v9, v11);
  *(v7 + v8[5]) = v15;
  v121 = v14;
  v13;
  v16 = v14;
  WidgetEnvironment.filterForControlArchiving()();
  sub_1922195B4(v12, type metadata accessor for BundleStub);
  v17 = *(v10 + 8);
  v17(v9, v11);
  v17(v104, v11);
  v18 = v8[7];
  *(v7 + v18) = v14;
  *(v7 + v8[9]) = v106;
  v19 = *(v105 + 20);
  v20 = *(v7 + v18);
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v107 = v20;
  *(v0 + 312) = sub_192217738();
  v21 = *v107;
  v22 = *(v111 + 20);
  *(v0 + 396) = v22;
  v23 = *(v103 + 16);
  *(v0 + 320) = v23;
  *(v0 + 328) = (v103 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v117 + v22, v107 + v19, v114);
  v24 = v21;
  v25 = MEMORY[0x1E69E7CC0];
  v26 = sub_192056208(MEMORY[0x1E69E7CC0]);
  v121 = v24;
  v27 = v24;

  v28 = sub_192056340(&v121, v26);
  v30 = v29;
  v32 = v31;

  *v117 = v28;
  v117[1] = v30;
  v117[2] = v32;
  if (v30 >> 62)
  {
    v45 = sub_192228340();
    v34 = v45 - 1;
    if (v45 >= 1)
    {
LABEL_5:
      v35 = *(v0 + 136);
      *(v0 + 336) = *(v35 + 16);
      *(v0 + 344) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0x66C6000000000000;
      *(v0 + 352) = v25;
      v36 = *(v0 + 208);

      if ((sub_19205F34C(v34) & 1) == 0)
      {
        v37 = *(v0 + 208);
        v38 = *v37;

        *v37 = v25;
        v39 = v37[1];

        v37[1] = v25;
        v40 = v37[2];

        v37[2] = v25;
      }

      v41 = *(v0 + 328);
      (*(v0 + 320))(*(v0 + 184), *(v0 + 208) + *(v0 + 396), *(v0 + 160));
      if (v30 >> 62)
      {
        v42 = sub_192228340();
        if (v42)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v42 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v42)
        {
LABEL_9:
          if (v42 >= 1)
          {
            for (i = 0; i != v42; ++i)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v44 = MEMORY[0x193B0B410](i, v30);
              }

              else
              {
                v44 = *(v30 + 8 * i + 32);
              }

              (*(**(v44 + 16) + 112))(*(v0 + 184));
            }

            goto LABEL_26;
          }

          __break(1u);
          goto LABEL_33;
        }
      }

LABEL_26:
      v77 = *(v0 + 312);
      v79 = *(v0 + 184);
      v78 = *(v0 + 192);
      v81 = *(v0 + 168);
      v80 = *(v0 + 176);
      v82 = *(v0 + 160);

      v83 = *(v81 + 32);
      v83(v78, v79, v82);
      v83(v80, v78, v82);
      if (v77)
      {
        v84 = *(v0 + 312);
        v85 = *(v0 + 176);

        sub_192227270();
        v110 = v87;
        v113 = v86;
        v116 = v89;
        v119 = v88;

        v90.i64[0] = v113;
        v90.i64[1] = v110;
        v91 = vorrq_s8(vshll_n_s32(__PAIR64__(v116, v119), 0x20uLL), v90);
      }

      else
      {
        v91 = 0uLL;
      }

      v92 = *(v0 + 336);
      v93 = *(v0 + 344);
      v94 = *(v0 + 176);
      v95 = *(v0 + 312) == 0;
      *(v0 + 376) = v91;
      *(v0 + 392) = v95;
      sub_1920B3090();
      sub_1922261F0();
      v120 = (v92 + *v92);
      v96 = v92[1];
      v97 = swift_task_alloc();
      *(v0 + 360) = v97;
      *v97 = v0;
      v97[1] = sub_192216CD8;
      v98 = *(v0 + 344);
      v99 = *(v0 + 176);
      v100 = *(v0 + 128);
      v101 = *(v0 + 136);
      v102 = *(v0 + 88);

      return v120(v0 + 16, v99, v100, v101);
    }
  }

  else
  {
    v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v33 - 1;
    if (v33 >= 1)
    {
      goto LABEL_5;
    }
  }

  sub_1922195B4(*(v0 + 208), type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  if (qword_1EADEE4E8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v46 = *(v0 + 120);
  v47 = *(v0 + 96);
  v48 = sub_1922258B0();
  __swift_project_value_buffer(v48, qword_1EAE00810);

  v49 = v47;
  v50 = sub_192225890();
  v51 = sub_192227FB0();

  if (os_log_type_enabled(v50, v51))
  {
    v53 = *(v0 + 112);
    v52 = *(v0 + 120);
    v54 = *(v0 + 96);
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v121 = v57;
    *v55 = 138478083;
    *(v55 + 4) = v54;
    *v56 = v54;
    *(v55 + 12) = 2082;
    v58 = v54;
    v59 = sub_192225530();
    v61 = sub_19202B8CC(v59, v60, &v121);

    *(v55 + 14) = v61;
    _os_log_impl(&dword_192028000, v50, v51, "(async) generating control archive for %{private}@ for host %{public}s", v55, 0x16u);
    sub_192033970(v56, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v56, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x193B0C7F0](v57, -1, -1);
    MEMORY[0x193B0C7F0](v55, -1, -1);
  }

  v62 = *(v0 + 120);
  sub_19221954C(*(v0 + 288), *(v0 + 280), type metadata accessor for ControlArchiveStorageMetadata);
  if (v62)
  {
    v63 = sub_1922189A8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v63 = sub_192140634(MEMORY[0x1E69E7CC0]);
  }

  v64 = v63;
  v65 = *(v0 + 312);
  v67 = *(v0 + 280);
  v66 = *(v0 + 288);
  v69 = *(v0 + 256);
  v68 = *(v0 + 264);
  v70 = *(v0 + 224);
  v71 = *(v0 + 232);
  v72 = *(v0 + 208);
  v109 = *(v0 + 192);
  v112 = *(v0 + 184);
  v115 = *(v0 + 176);
  v118 = *(v0 + 152);
  v73 = *(v0 + 80);

  sub_1922195B4(v66, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1922195B4(v70, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_192219614(v67, v73, type metadata accessor for ControlArchiveStorageMetadata);
  v74 = type metadata accessor for ControlArchiveStorage(0);
  *(v73 + v74[5]) = MEMORY[0x1E69E7CC0];
  *(v73 + v74[7]) = 2;
  *(v73 + v74[6]) = v64;

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_192216CD8()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = *(v2 + 352);

    v5 = sub_1922175BC;
  }

  else
  {
    v5 = sub_192216DF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_192216DF4()
{
  v95 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 152);
  v3 = *(v0 + 40);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  ControlTemplateType.init<A>(_:)(v7, v3, v2);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 352);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1920C2FF4(0, *(v9 + 16) + 1, 1, *(v0 + 352));
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1920C2FF4(v10 > 1, v11 + 1, 1, v9);
  }

  v12 = *(v0 + 208);
  v13 = *(v0 + 152);
  v14 = *(v0 + 144);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  *(v9 + 16) = v11 + 1;
  sub_192219614(v13, v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11, type metadata accessor for ControlTemplateType);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v15 = *(v12 + 8);
  if (v15 >> 62)
  {
    if (v15 < 0)
    {
      v27 = *(v12 + 8);
    }

    v16 = sub_192228340();
    if (v16 > 0)
    {
LABEL_7:
      *(v0 + 352) = v9;
      v17 = *(v0 + 208);
      v18 = v16 - 1;

      if ((sub_19205F34C(v18) & 1) == 0)
      {
        v19 = *(v0 + 208);
        v20 = *v19;

        v21 = MEMORY[0x1E69E7CC0];
        *v19 = MEMORY[0x1E69E7CC0];
        v22 = v19[1];

        v19[1] = v21;
        v23 = v19[2];

        v19[2] = v21;
      }

      v24 = *(v0 + 328);
      (*(v0 + 320))(*(v0 + 184), *(v0 + 208) + *(v0 + 396), *(v0 + 160));
      if (v15 >> 62)
      {
        v9 = sub_192228340();
        if (v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v9 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
LABEL_11:
          if (v9 >= 1)
          {
            for (i = 0; i != v9; ++i)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v26 = MEMORY[0x193B0B410](i, v15);
              }

              else
              {
                v26 = *(v15 + 8 * i + 32);
              }

              (*(**(v26 + 16) + 112))(*(v0 + 184));
            }

            goto LABEL_30;
          }

          __break(1u);
          goto LABEL_37;
        }
      }

LABEL_30:
      v58 = *(v0 + 312);
      v60 = *(v0 + 184);
      v59 = *(v0 + 192);
      v62 = *(v0 + 168);
      v61 = *(v0 + 176);
      v63 = *(v0 + 160);

      v64 = *(v62 + 32);
      v64(v59, v60, v63);
      v64(v61, v59, v63);
      if (v58)
      {
        v65 = *(v0 + 312);
        v66 = *(v0 + 176);

        sub_192227270();
        v86 = v68;
        v88 = v67;
        v90 = v70;
        v92 = v69;

        v71.i64[0] = v88;
        v71.i64[1] = v86;
        v72 = vorrq_s8(vshll_n_s32(__PAIR64__(v90, v92), 0x20uLL), v71);
      }

      else
      {
        v72 = 0uLL;
      }

      v73 = *(v0 + 336);
      v74 = *(v0 + 344);
      v75 = *(v0 + 176);
      v76 = *(v0 + 312) == 0;
      *(v0 + 376) = v72;
      *(v0 + 392) = v76;
      sub_1920B3090();
      sub_1922261F0();
      v93 = (v73 + *v73);
      v77 = v73[1];
      v78 = swift_task_alloc();
      *(v0 + 360) = v78;
      *v78 = v0;
      v78[1] = sub_192216CD8;
      v79 = *(v0 + 344);
      v80 = *(v0 + 176);
      v81 = *(v0 + 128);
      v82 = *(v0 + 136);
      v83 = *(v0 + 88);

      return v93(v0 + 16, v80, v81, v82);
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16 > 0)
    {
      goto LABEL_7;
    }
  }

  sub_1922195B4(*(v0 + 208), type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  if (qword_1EADEE4E8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v28 = *(v0 + 120);
  v29 = *(v0 + 96);
  v30 = sub_1922258B0();
  __swift_project_value_buffer(v30, qword_1EAE00810);

  v31 = v29;
  v32 = sub_192225890();
  v33 = sub_192227FB0();

  if (os_log_type_enabled(v32, v33))
  {
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);
    v36 = *(v0 + 96);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v94 = v39;
    *v37 = 138478083;
    *(v37 + 4) = v36;
    *v38 = v36;
    *(v37 + 12) = 2082;
    v40 = v36;
    v41 = sub_192225530();
    v43 = sub_19202B8CC(v41, v42, &v94);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_192028000, v32, v33, "(async) generating control archive for %{private}@ for host %{public}s", v37, 0x16u);
    sub_192033970(v38, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x193B0C7F0](v39, -1, -1);
    MEMORY[0x193B0C7F0](v37, -1, -1);
  }

  v44 = *(v0 + 120);
  sub_19221954C(*(v0 + 288), *(v0 + 280), type metadata accessor for ControlArchiveStorageMetadata);
  if (v44)
  {
    v45 = sub_1922189A8(v9);
  }

  else
  {
    v45 = sub_192140634(MEMORY[0x1E69E7CC0]);
  }

  v46 = v45;
  v47 = *(v0 + 312);
  v49 = *(v0 + 280);
  v48 = *(v0 + 288);
  v51 = *(v0 + 256);
  v50 = *(v0 + 264);
  v52 = *(v0 + 224);
  v53 = *(v0 + 232);
  v84 = *(v0 + 208);
  v85 = *(v0 + 192);
  v87 = *(v0 + 184);
  v89 = *(v0 + 176);
  v91 = *(v0 + 152);
  v54 = *(v0 + 80);

  sub_1922195B4(v48, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1922195B4(v52, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_192219614(v49, v54, type metadata accessor for ControlArchiveStorageMetadata);
  v55 = type metadata accessor for ControlArchiveStorage(0);
  *(v54 + v55[5]) = v9;
  *(v54 + v55[7]) = 2;
  *(v54 + v55[6]) = v46;

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1922175BC()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[28];
  v4 = v0[26];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];

  (*(v6 + 8))(v5, v7);
  sub_1922195B4(v2, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1922195B4(v4, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  sub_1922195B4(v3, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v9 = v0[35];
  v8 = v0[36];
  v11 = v0[32];
  v10 = v0[33];
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[26];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];
  v20 = v0[19];
  v21 = v0[46];

  v18 = v0[1];

  return v18();
}

uint64_t sub_192217738()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1998, &unk_19223E680);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - v9;
  v11 = sub_192225020();
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &property descriptor for StorageBackedControlArchive.state;
  v15 = [v0 extensionIdentity];
  v16 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  sub_192225510();
  swift_endAccess();

  v17 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v18 = sub_192034E34();
  if (v18)
  {
    v49 = v11;
    v30 = v18;
    v31 = [v30 infoDictionary];
    v32 = sub_192227930();
    sub_1922194DC();
    v33 = [v31 objectForKey:v32 ofClass:swift_getObjCClassFromMetadata()];

    if (v33)
    {
      sub_1922282B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    v54 = v52;
    v55 = v53;
    v11 = v49;
    v14 = &property descriptor for StorageBackedControlArchive.state;
    if (*(&v53 + 1))
    {
      if (swift_dynamicCast())
      {
        v38 = [v30 URL];

        v39 = v50;
        sub_192224FF0();

        v40 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
        v41 = sub_192224FE0();
        [v40 initWithURL_];

        (*(v51 + 8))(v39, v11);
        v42 = sub_192227300();

        return v42;
      }
    }

    else
    {

      sub_192033970(&v54, &unk_1EADEF330, &unk_19222CD40);
    }
  }

  v19 = [v1 v14[330]];
  v20 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  sub_19221946C(v19 + v20, v5);

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v24 = sub_192225510();
    v26 = v25;
    v27 = objc_allocWithZone(MEMORY[0x1E69635F8]);
    v28 = sub_192219390(v24, v26, 0);
    if (v28)
    {
      v34 = v28;
      v35 = [v34 infoDictionary];
      v36 = sub_192227930();
      sub_1922194DC();
      v37 = [v35 objectForKey:v36 ofClass:swift_getObjCClassFromMetadata()];

      if (v37)
      {
        sub_1922282B0();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v54 = v52;
      v55 = v53;
      if (!*(&v53 + 1))
      {

        (*(v7 + 8))(v10, v6);
        v21 = &unk_1EADEF330;
        v22 = &unk_19222CD40;
        v23 = &v54;
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        v43 = [v34 URL];

        v44 = v50;
        sub_192224FF0();

        v45 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
        v46 = sub_192224FE0();
        [v45 initWithURL_];

        (*(v51 + 8))(v44, v11);
        v47 = sub_192227300();

        (*(v7 + 8))(v10, v6);
        return v47;
      }
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v21 = &qword_1EADF1988;
  v22 = &unk_1922404E0;
  v23 = v5;
LABEL_4:
  sub_192033970(v23, v21, v22);
  return 0;
}

int *static ControlArchiver.archive<A>(control:environment:hostDeviceID:dataSource:fileHandle:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a6;
  v26 = a8;
  v14 = type metadata accessor for ControlArchiveStorage(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v27 = *a2;
  if (WidgetEnvironment.enumeratedCount()() < 1)
  {
    sub_1920B303C();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v19 = v29;
    result = sub_192218010(a5, a1, v18, a3, a4, a7, v26, v17);
    if (!v19)
    {
      sub_192218FB8(&qword_1EADEE130, type metadata accessor for ControlArchiveStorage);
      v27 = sub_192227870();
      v28 = v22;
      v23 = v27;
      v24 = v22;
      sub_1920B2FE8();
      sub_192227F40();
      sub_1922195B4(v17, type metadata accessor for ControlArchiveStorage);
      return sub_192039140(v23, v24);
    }
  }

  return result;
}

int *sub_192218010@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v87 = a8;
  v88 = a5;
  v86 = a4;
  v90 = a2;
  v91 = a3;
  v11 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BundleStub();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v94 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_192225150();
  v89 = *(v18 - 8);
  v19 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v77 - v22;
  v23 = type metadata accessor for ControlArchiveStorageMetadata(0);
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v77 - v29;
  v31 = v95;
  result = (*(a7 + 8))(a6, a7, v28);
  if (!v31)
  {
    v79 = result;
    v80 = v11;
    v81 = a6;
    v82 = a1;
    v83 = a7;
    v84 = v14;
    v77 = v26;
    v95 = v30;
    v85 = 0;
    v33 = v92;
    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    v34 = v89;
    v78 = *(v89 + 16);
    v78(v93, v33, v18);
    v35 = v90;
    v36 = [v90 extensionIdentity];
    BundleStub.init(_:)(v36, v94);
    v37 = v18;
    if (qword_1ED74BA98 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v38 = v94;
    v39 = v95;
    *&v95[v23[6]] = v35;
    v40 = qword_1ED74BAA0;
    sub_19221954C(v38, v39, type metadata accessor for BundleStub);
    v41 = v93;
    v78((v39 + v23[8]), v93, v37);
    *(v39 + v23[5]) = v40;
    v42 = v91;
    v96 = v91;
    v43 = v35;
    v44 = v42;
    WidgetEnvironment.filterForControlArchiving()();
    sub_1922195B4(v38, type metadata accessor for BundleStub);
    v45 = *(v34 + 8);
    v45(v41, v37);
    v45(v92, v37);
    v46 = v23[7];
    *(v39 + v46) = v96;
    *(v39 + v23[9]) = v79;
    v47 = sub_192217738();
    v48 = *(v39 + v46);
    v49 = *(v80 + 20);
    v50 = v48;
    v51 = v84;
    v52 = _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    *v51 = v50;
    MEMORY[0x1EEE9AC00](v52);
    v53 = v82;
    v54 = v83;
    *(&v77 - 4) = v81;
    *(&v77 - 3) = v54;
    *(&v77 - 2) = v47;
    *(&v77 - 1) = v53;
    v55 = v85;
    v56 = sub_1922152B0(sub_192219528, (&v77 - 6));
    if (v55)
    {

      sub_1922195B4(v51, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
      return sub_1922195B4(v39, type metadata accessor for ControlArchiveStorageMetadata);
    }

    else
    {
      v57 = v56;
      sub_1922195B4(v51, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v58 = sub_1922258B0();
      __swift_project_value_buffer(v58, qword_1EAE00810);
      v59 = v88;

      v60 = v43;
      v61 = sub_192225890();
      v62 = sub_192227FB0();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v94 = v57;
        v65 = v64;
        v66 = swift_slowAlloc();
        v96 = v66;
        *v63 = 138478083;
        *(v63 + 4) = v60;
        *v65 = v60;
        *(v63 + 12) = 2082;
        v67 = v60;
        v68 = sub_192225530();
        v70 = sub_19202B8CC(v68, v69, &v96);

        *(v63 + 14) = v70;
        v59 = v88;
        _os_log_impl(&dword_192028000, v61, v62, "(sync) generating control archive for %{private}@ for host %{public}s", v63, 0x16u);
        sub_192033970(v65, &qword_1EADEEDF0, &qword_1922319C0);
        v71 = v65;
        v57 = v94;
        MEMORY[0x193B0C7F0](v71, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v66);
        v72 = v66;
        v39 = v95;
        MEMORY[0x193B0C7F0](v72, -1, -1);
        MEMORY[0x193B0C7F0](v63, -1, -1);
      }

      v73 = v87;
      v74 = v77;
      sub_19221954C(v39, v77, type metadata accessor for ControlArchiveStorageMetadata);
      if (v59)
      {
        v75 = sub_1922189A8(v57);
      }

      else
      {
        v75 = sub_192140634(MEMORY[0x1E69E7CC0]);
      }

      v76 = v75;

      sub_1922195B4(v39, type metadata accessor for ControlArchiveStorageMetadata);
      sub_192219614(v74, v73, type metadata accessor for ControlArchiveStorageMetadata);
      result = type metadata accessor for ControlArchiveStorage(0);
      *(v73 + result[5]) = v57;
      *(v73 + result[7]) = 2;
      *(v73 + result[6]) = v76;
    }
  }

  return result;
}

uint64_t sub_19221871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v36 = a5;
  v32 = a6;
  v11 = sub_1922261D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a1, v11, v14);
  if (a2)
  {
    sub_192227270();
    v19.i64[0] = v17;
    v19.i64[1] = v18;
    v21.i32[1] = v20;
    v22 = vorrq_s8(vshll_n_s32(v21, 0x20uLL), v19);
  }

  else
  {
    v22 = 0uLL;
  }

  v33 = v22;
  v34 = a2 == 0;
  sub_1920B3090();
  sub_1922261F0();
  (*(a4 + 16))(&v33, v16, a3, a4);
  if (v6)
  {
    result = (*(v12 + 8))(v16, v11);
    *v36 = v6;
  }

  else
  {
    v24 = v35;
    v25 = __swift_project_boxed_opaque_existential_1(&v33, v35);
    v26 = *(*(v24 - 8) + 64);
    v27 = MEMORY[0x1EEE9AC00](v25);
    v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29, v27);
    ControlTemplateType.init<A>(_:)(v29, v24, v32);
    (*(v12 + 8))(v16, v11);
    return __swift_destroy_boxed_opaque_existential_1(v33.i64);
  }

  return result;
}

uint64_t sub_1922189A8(uint64_t a1)
{
  v2 = sub_192140634(MEMORY[0x1E69E7CC0]);
  v39 = *(a1 + 16);
  if (!v39)
  {
    return v2;
  }

  v3 = type metadata accessor for ControlTemplateType(0);
  v4 = 0;
  v5 = *(v3 - 8);
  v38 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v37 = *(v5 + 72);
LABEL_4:
  v40 = v4 + 1;
  v6 = ControlTemplateType.vectorGlyphAssetLibraryDatas.getter();
  v7 = 0;
  v8 = v6 + 64;
  v41 = v6 + 64;
  v42 = v6;
  v9 = 1 << *(v6 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v17 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v17 >= v12)
        {
          break;
        }

        v11 = *(v8 + 8 * v17);
        ++v7;
        if (v11)
        {
          goto LABEL_15;
        }
      }

      v4 = v40;
      if (v40 == v39)
      {
        return v2;
      }

      goto LABEL_4;
    }

    v17 = v7;
LABEL_15:
    v18 = __clz(__rbit64(v11)) | (v17 << 6);
    v19 = *(*(v42 + 48) + 8 * v18);
    v20 = (*(v42 + 56) + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
    sub_1920367C8(*v20, v21);
    sub_1920367C8(v22, v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v2;
    v24 = sub_1920B70BC(v19);
    v26 = *(v2 + 16);
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (*(v2 + 24) >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v24;
        sub_19213EC2C();
        v24 = v35;
      }
    }

    else
    {
      sub_19213BA74(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1920B70BC(v19);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_28;
      }
    }

    v11 &= v11 - 1;
    if (v30)
    {
      v13 = v24;

      v2 = v43;
      v14 = (v43[7] + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      *v14 = v22;
      v14[1] = v21;
      sub_192039140(v15, v16);
      sub_192039140(v22, v21);
    }

    else
    {
      v2 = v43;
      v43[(v24 >> 6) + 8] |= 1 << v24;
      *(v43[6] + 8 * v24) = v19;
      v32 = (v43[7] + 16 * v24);
      *v32 = v22;
      v32[1] = v21;
      sub_192039140(v22, v21);
      v33 = v43[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_27;
      }

      v43[2] = v34;
    }

    v7 = v17;
    v8 = v41;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFAC8, &unk_192246D20);
  result = sub_192228A40();
  __break(1u);
  return result;
}

uint64_t static ControlUnarchiver.unarchive(url:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225030();
  if (!v1)
  {
    v5 = a1;
    v6 = result;
    v7 = v4;
    static ControlUnarchiver.unarchive(data:)(v5);
    return sub_192039140(v6, v7);
  }

  return result;
}

uint64_t static ControlUnarchiver.unarchive(data:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ControlArchiveStorage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  sub_192218FB8(&qword_1EADED888, type metadata accessor for ControlArchiveStorage);
  result = sub_192227D30();
  if (!v1)
  {
    sub_19221954C(v9, v6, type metadata accessor for ControlArchiveStorage);
    v11 = type metadata accessor for StorageBackedControlArchive(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    sub_19221954C(v6, v14 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_originatingBundle, type metadata accessor for BundleStub);
    v15 = type metadata accessor for ControlArchiveStorageMetadata(0);
    *(v14 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_systemVersion) = *&v6[v15[5]];
    v16 = v15[8];
    v17 = OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_creationDate;
    v18 = sub_192225150();
    (*(*(v18 - 8) + 16))(v14 + v17, &v6[v16], v18);
    v19 = *&v6[v15[7]];
    *(v14 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_environment) = v19;
    v20 = *&v6[v15[6]];
    *(v14 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_control) = v20;
    *(v14 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive_state) = *&v6[v15[9]];
    sub_192219614(v6, v14 + OBJC_IVAR____TtC9WidgetKit27StorageBackedControlArchive__storage, type metadata accessor for ControlArchiveStorage);
    a1[3] = v11;
    a1[4] = sub_192218FB8(&qword_1EADED5D0, type metadata accessor for StorageBackedControlArchive);
    *a1 = v14;
    v21 = v19;
    v22 = v20;

    return sub_1922195B4(v9, type metadata accessor for ControlArchiveStorage);
  }

  return result;
}

uint64_t sub_192218FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of AsyncControlArchiveDataSource.getState()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1920EF2F4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AsyncControlArchiveDataSource.makeTemplate(environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1920A59A8;

  return v13(a1, a2, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit21ControlArchivingErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1922192D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_192219320(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_192219364(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

id sub_192219390(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_192227930();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_192224F90();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_19221946C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1988, &unk_1922404E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1922194DC()
{
  result = qword_1ED74BC20;
  if (!qword_1ED74BC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74BC20);
  }

  return result;
}

uint64_t sub_19221954C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1922195B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192219614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PlaceholderArchivingDataSource.__allocating_init(source:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_19203832C(a1, v2 + 16);
  return v2;
}

uint64_t sub_192219718@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for ControlTemplateType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[5];
  v11 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  result = ControlArchive.template(in:)(a1, v10, v11);
  if (!v3)
  {
    ControlTemplateType.asPlaceholderTemplate()(a2);
    return sub_1922197EC(v9);
  }

  return result;
}

uint64_t sub_1922197EC(uint64_t a1)
{
  v2 = type metadata accessor for ControlTemplateType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlaceholderArchivingDataSource.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1922198A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = type metadata accessor for ControlTemplateType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = *(*v2 + 40);
  v12 = *(v10 + 48);
  __swift_project_boxed_opaque_existential_1((v10 + 16), v11);
  result = ControlArchive.template(in:)(a1, v11, v12);
  if (!v3)
  {
    ControlTemplateType.asPlaceholderTemplate()(a2);
    return sub_1922197EC(v9);
  }

  return result;
}

void sub_192219A34(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (*v3)
  {
    v14 = *v3;
    MEMORY[0x1EEE9AC00](a1);
    v13[2] = *(v5 + 16);
    v13[3] = a2;
    v7 = v6;
    type metadata accessor for WidgetRelevanceEntry();
    v8 = sub_192227C40();
    v9 = type metadata accessor for WidgetRelevanceEntry();
    WitnessTable = swift_getWitnessTable();
    v12 = sub_19204301C(sub_19221A318, v13, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
    WidgetRelevances.init(_:)(v12, &v14);
    sub_19208805C(&v14, v7);
  }

  else
  {

    sub_1920CA398(a3);
  }
}

uint64_t sub_192219B84(uint64_t a1)
{
  if (*v1)
  {
    v10 = *v1;
    v9 = *(MEMORY[0x1EEE9AC00](a1) + 16);
    KeyPath = swift_getKeyPath();
    type metadata accessor for WidgetRelevanceEntry();
    v3 = sub_192227C40();
    WitnessTable = swift_getWitnessTable();
    v6 = sub_19204301C(sub_1920CA26C, KeyPath, v3, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);

    return v6;
  }

  else
  {
    v8 = *(a1 + 16);
    return sub_192227BD0();
  }
}

uint64_t sub_192219C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*v2)
  {
    v9[5] = *v2;
    v9[2] = *(MEMORY[0x1EEE9AC00](a1) + 16);
    type metadata accessor for WidgetRelevanceEntry();
    v4 = sub_192227C40();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AC0, &qword_192246DB0);
    WitnessTable = swift_getWitnessTable();
    result = sub_19204301C(sub_19221A338, v9, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_192219DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for WidgetRelevanceEntry.Attribute();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v23 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AC8, &qword_192246DB8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = type metadata accessor for WidgetRelevanceEntry();
  (*(v7 + 16))(v10, a1 + *(v18 + 28), v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v15 = *v10;
  }

  else
  {
    v19 = sub_192224CC0();
    (*(*(v19 - 8) + 32))(v15, v10, v19);
  }

  swift_storeEnumTagMultiPayload();
  sub_19221A358(v15, v17);
  a3[3] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AC0, &qword_192246DB0);
  return sub_19221A358(v17, a3 + *(v21 + 28));
}

uint64_t sub_192219FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a1;
  v34 = a4;
  v6 = *(*(a3 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WidgetRelevanceEntry.Attribute();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v31 - v16);
  v35 = a3;
  v18 = type metadata accessor for WidgetRelevanceEntry.Attribute();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (&v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v31 - v24;
  v26 = type metadata accessor for WidgetRelevanceEntry();
  (*(v14 + 16))(v17, v36 + *(v26 + 28), v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v23 = *v17;
  }

  else
  {
    v27 = sub_192224CC0();
    (*(*(v27 - 8) + 32))(v23, v17, v27);
  }

  swift_storeEnumTagMultiPayload();
  (*(v19 + 32))(v25, v23, v18);
  (*(v32 + 16))(v12, v36, a2);
  v28 = v33;
  v29 = v35;
  swift_dynamicCast();
  return sub_192203894(v28, v25, v29, v34);
}

uint64_t sub_19221A358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AC8, &qword_192246DB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19221A3EC@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  v8 = swift_beginAccess();
  if (*(*(v6 + v7) + 16) && (v8 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a1, MEMORY[0x1E69E7CC0]), (v9 & 1) != 0))
  {
    v10 = type metadata accessor for ViewableTimelineEntry();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    v12 = *(v3 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
    MEMORY[0x1EEE9AC00](v8);

    sub_192098448(sub_19221B66C, v12, a2);
  }
}

uint64_t sub_19221A59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_19214D544(a3);
  v9 = v8;
  v10 = v7;
  if (v11)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    if (v7)
    {
LABEL_3:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }
  }

  else
  {
    v12 = result;
    v13 = *(v3 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

    v15 = sub_192096880(v14);

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (v12 >= *(v15 + 16))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_192033A64(v15 + 40 * v12 + 32, a1);

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = *(v3 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

  v18 = sub_192096880(v17);

  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 >= *(v18 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_192033A64(v18 + 40 * v9 + 32, a2);
}

double sub_19221A6E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v27[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 8))(v17, v16);
  (*(v12 + 16))(v15, a2, a4);
  v18 = sub_192227570();
  (*(a5 + 16))(v27, a3, a5);
  (*(v12 + 8))(a2, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  v19 = v27[0];
  v20 = v27[1];
  LOBYTE(a2) = v28;
  v21 = type metadata accessor for ViewableTimelineEntry();
  v22 = v21[7];
  v23 = type metadata accessor for WidgetViewMetadata();
  (*(*(v23 - 8) + 56))(a6 + v22, 1, 1, v23);
  *(a6 + v21[5]) = v18;
  v24 = a6 + v21[6];
  *v24 = v19;
  *(v24 + 8) = v20;
  *(v24 + 16) = a2;
  result = 0.0;
  *(a6 + v21[8]) = xmmword_19222A790;
  return result;
}

uint64_t ViewableTimelineEntry.init(date:view:relevance:viewMetadata:entryData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  v14 = a3[1];
  v15 = *(a3 + 16);
  v16 = sub_192225150();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for ViewableTimelineEntry();
  *(a7 + v17[5]) = a2;
  v18 = a7 + v17[6];
  *v18 = v13;
  *(v18 + 8) = v14;
  *(v18 + 16) = v15;
  result = sub_19204E300(a4, a7 + v17[7], &qword_1EADEEE60, &unk_192246DC0);
  v20 = (a7 + v17[8]);
  *v20 = a5;
  v20[1] = a6;
  return result;
}

double sub_19221A9F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1922250C0();
  (*(v6 + 16))(v9, a1, a2);
  v10 = sub_192227570();
  v11 = type metadata accessor for ViewableTimelineEntry();
  v12 = v11[7];
  v13 = type metadata accessor for WidgetViewMetadata();
  (*(*(v13 - 8) + 56))(a3 + v12, 1, 1, v13);
  *(a3 + v11[5]) = v10;
  v14 = a3 + v11[6];
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  result = 0.0;
  *(a3 + v11[8]) = xmmword_19222A790;
  return result;
}

__n128 ViewableTimelineEntry.relevance.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ViewableTimelineEntry() + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t ViewableTimelineEntry.entryData.getter()
{
  v1 = v0 + *(type metadata accessor for ViewableTimelineEntry() + 32);
  v2 = *v1;
  sub_19206A874(*v1, *(v1 + 8));
  return v2;
}

__n128 sub_19221ABD4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t static ArchiveURLAttributes.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x7365726975716572;
  }

  if (v3)
  {
    v5 = 0xEE0064616F6C6552;
  }

  else
  {
    v5 = 0x8000000192248870;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7365726975716572;
  }

  if (*a2)
  {
    v7 = 0x8000000192248870;
  }

  else
  {
    v7 = 0xEE0064616F6C6552;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

unint64_t ArchiveURLAttributes.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7365726975716572;
  }

  *v0;
  return result;
}

WidgetKit::ArchiveURLAttributes_optional __swiftcall ArchiveURLAttributes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_192228700();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_19221AD58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x7365726975716572;
  }

  if (v3)
  {
    v5 = 0xEE0064616F6C6552;
  }

  else
  {
    v5 = 0x8000000192248870;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7365726975716572;
  }

  if (*a2)
  {
    v7 = 0x8000000192248870;
  }

  else
  {
    v7 = 0xEE0064616F6C6552;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_19221AE10()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19221AEA4()
{
  *v0;
  sub_1922279B0();
}

uint64_t sub_19221AF24()
{
  v1 = *v0;
  sub_192228AD0();
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_19221AFB4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_192228700();

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

void sub_19221B014(unint64_t *a1@<X8>)
{
  v2 = 0x8000000192248870;
  v3 = 0x7365726975716572;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEE0064616F6C6552;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_19221B064(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x7365726975716572;
  }

  if (v3)
  {
    v5 = 0xEE0064616F6C6552;
  }

  else
  {
    v5 = 0x8000000192248870;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7365726975716572;
  }

  if (*a2)
  {
    v7 = 0x8000000192248870;
  }

  else
  {
    v7 = 0xEE0064616F6C6552;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1922289A0();
  }

  return v9 & 1;
}

uint64_t sub_19221B11C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7365726975716572;
  }

  if (*a2)
  {
    v4 = 0x8000000192248870;
  }

  else
  {
    v4 = 0xEE0064616F6C6552;
  }

  if (v2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7365726975716572;
  }

  if (v2)
  {
    v6 = 0x8000000192248870;
  }

  else
  {
    v6 = 0xEE0064616F6C6552;
  }

  if (v3 == v5 && v4 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_1922289A0();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_19221B1E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x7365726975716572;
  }

  if (v3)
  {
    v5 = 0xEE0064616F6C6552;
  }

  else
  {
    v5 = 0x8000000192248870;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7365726975716572;
  }

  if (*a2)
  {
    v7 = 0x8000000192248870;
  }

  else
  {
    v7 = 0xEE0064616F6C6552;
  }

  if (v4 == v6 && v5 == v7)
  {

    v10 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_19221B2B4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x7365726975716572;
  }

  if (*a2)
  {
    v4 = 0x8000000192248870;
  }

  else
  {
    v4 = 0xEE0064616F6C6552;
  }

  if (v2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x7365726975716572;
  }

  if (v2)
  {
    v6 = 0x8000000192248870;
  }

  else
  {
    v6 = 0xEE0064616F6C6552;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t TimelineViewCollection.isStale.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_192225150();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  TimelineViewCollection.staleDate.getter(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1920418D4(v7);
    v16 = 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
    v16 = sub_192225100();
    v17 = *(v9 + 8);
    v17(v12, v8);
    v17(v15, v8);
  }

  return v16 & 1;
}

unint64_t sub_19221B540()
{
  result = qword_1EADED898;
  if (!qword_1EADED898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED898);
  }

  return result;
}

uint64_t ActivityArchivedViewCollection.ViewIndex.description.getter()
{
  v1 = *(v0 + 8);
  v3 = *v0;
  return sub_192228910();
}

uint64_t static ActivityArchivedViewCollection.ViewIndex.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1[1])
  {
    if (*a1 == *a2)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 0;
    }

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_19221B73C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (*a1 == *a2)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = 0;
    }

    if (v4 == 1)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_19221B778()
{
  v1 = *(v0 + 8);
  v3 = *v0;
  return sub_192228910();
}

void ActivityArchivedViewCollection.ViewEntry.viewIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

__n128 ActivityArchivedViewCollection.ViewEntry.metadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 79) = *(v1 + 103);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

double ActivityArchivedViewCollection.ViewEntry.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 144);
  v3 = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t ActivityArchivedViewCollection.payloadID.getter()
{
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0) + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

id ActivityArchivedViewCollection.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
  *a1 = v3;

  return v3;
}

uint64_t ActivityArchivedViewCollection.jindoKeyColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  sub_19202CFFC(v0 + *(v5 + 52), v4, &qword_1EADF2AD8, &unk_192246FC8);
  v6 = type metadata accessor for JindoViewStates.Metadata(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_192033970(v4, &qword_1EADF2AD8, &unk_192246FC8);
    return 0;
  }

  else
  {
    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    v10 = v4[32];
    v11 = v4[33];
    sub_19221E81C(v4, type metadata accessor for JindoViewStates.Metadata);
    if (v11 & 1) != 0 || (v10)
    {
      return 0;
    }

    else
    {
      sub_192227280();
      return sub_192227320();
    }
  }
}

uint64_t ActivityArchivedViewCollection.jindoWidgetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  sub_19202CFFC(v1 + *(v7 + 52), v6, &qword_1EADF2AD8, &unk_192246FC8);
  v8 = type metadata accessor for JindoViewStates.Metadata(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_192033970(v6, &qword_1EADF2AD8, &unk_192246FC8);
    v9 = sub_192225020();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    sub_19202CFFC(&v6[*(v8 + 28)], a1, &qword_1EADEEE10, &unk_19222B630);
    return sub_19221E81C(v6, type metadata accessor for JindoViewStates.Metadata);
  }
}

void ActivityArchivedViewCollection.init(contentsOf:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1922266C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  v13 = a1;
  sub_192226650();
  if (v2)
  {
  }

  else
  {
    (*(v6 + 16))(v9, v12, v5);
    sub_19221BD64(v9, a2);

    (*(v6 + 8))(v12, v5);
  }
}

uint64_t sub_19221BD64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v41 - v7;
  v8 = type metadata accessor for JindoViewStates.Metadata(0);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ActivityArchivedViewCollection();
  v16 = a2 + *(v15 + 24);
  v17 = type metadata accessor for JindoArchivedViewCollection();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v46 = v17;
  v47 = v16;
  v44 = v18 + 56;
  v45 = v19;
  (v19)(v16, 1, 1);
  v20 = *(v15 + 20);
  v21 = sub_1922266C0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v53 = a2;
  v42 = v23;
  v43 = v20;
  v49 = v21;
  (v23)(a2 + v20, a1);
  v24 = sub_192224D80();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_192224D70();
  v27 = a1;
  v28 = sub_192226660();
  if (v29 >> 60 == 15)
  {
    __break(1u);
    sub_192046ED4(v2, a1);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v30 = v28;
    v31 = v29;
    sub_192031E74(&qword_1EADED128, &qword_1EADF2AD0, &qword_192246FC0);
    sub_192224D60();
    v32 = v27;
    v33 = v49;
    (*(v22 + 8))(v32, v49);
    sub_192046ED4(v30, v31);

    v34 = v53;
    sub_19221EBCC(v14, v53);
    v35 = v52;
    sub_19202CFFC(v34 + *(v11 + 52), v52, &qword_1EADF2AD8, &unk_192246FC8);
    if ((*(v50 + 48))(v35, 1, v51) == 1)
    {
      return sub_192033970(v35, &qword_1EADF2AD8, &unk_192246FC8);
    }

    else
    {
      v37 = v48;
      sub_19221EC3C(v35, v48);
      v38 = v47;
      sub_192033970(v47, &qword_1EADF2AE0, &qword_192246FD8);
      v39 = *(v34 + *(v11 + 56));
      v40 = v46;
      sub_19221EC3C(v37, &v38[*(v46 + 20)]);
      v42(&v38[*(v40 + 24)], v34 + v43, v33);
      *v38 = v39;
      return v45(v38, 0, 1, v40);
    }
  }

  return result;
}

uint64_t ActivityArchivedViewCollection.init(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_192225020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1922266C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  (*(v5 + 16))(v8, a1, v4, v15);
  sub_192226640();
  if (v2)
  {
    return (*(v5 + 8))(a1, v4);
  }

  (*(v10 + 16))(v13, v17, v9);
  sub_19221BD64(v13, v20);
  (*(v5 + 8))(a1, v4);
  return (*(v10 + 8))(v17, v9);
}

uint64_t ActivityArchivedViewCollection.init(contentsOf:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1922266C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1920367C8(a1, a2);
  sub_1922266A0();
  if (v3)
  {
    return sub_192039140(a1, a2);
  }

  (*(v8 + 16))(v11, v14, v7);
  sub_19221BD64(v11, a3);
  sub_192039140(a1, a2);
  return (*(v8 + 8))(v14, v7);
}

uint64_t ActivityArchivedViewCollection.metrics(viewIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v25 - v7);
  v9 = *a1;
  if (*(a1 + 8) != 1)
  {
    v16 = type metadata accessor for ActivityArchivedViewCollection();
    sub_19202CFFC(v2 + *(v16 + 24), v8, &qword_1EADF2AE0, &qword_192246FD8);
    v17 = type metadata accessor for JindoArchivedViewCollection();
    result = (*(*(v17 - 8) + 48))(v8, 1, v17);
    if (result != 1)
    {
      result = v9 - *v8;
      if (!__OFSUB__(v9, *v8))
      {
        v18 = *(v8 + *(v17 + 20) + 8);
        if (*(v18 + 16))
        {
          v19 = sub_1920B71E4(result);
          if (v20)
          {
            v21 = *(v18 + 56) + 88 * v19;
            v22 = *(v21 + 32);
            v23 = *v21;
            v25 = *(v21 + 16);
            v26 = v23;
            result = sub_19221E81C(v8, type metadata accessor for JindoArchivedViewCollection);
            v24 = v25;
            *a2 = v26;
            *(a2 + 16) = v24;
            *(a2 + 32) = v22;
            *(a2 + 40) = 0;
            return result;
          }
        }

        result = sub_19221E81C(v8, type metadata accessor for JindoArchivedViewCollection);
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0;
        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = type metadata accessor for ActivityViewStates.Metadata(0);
  v11 = *(v2 + *(result + 28));
  if (*(v11 + 16))
  {
    result = sub_1920B71E4(v9);
    if (v12)
    {
      v13 = *(v11 + 56) + 88 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 16);
      *a2 = *v13;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *(a2 + 40) = 0;
      return result;
    }
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
LABEL_12:
  *(a2 + 40) = 1;
  return result;
}

void ActivityArchivedViewCollection.index(for:environmentAtIndex:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  v8 = type metadata accessor for ActivityViewStates.Metadata(0);
  v9 = *(v4 + *(v8 + 24));
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = 0;
  v12 = v9 + 32;
  while (1)
  {
    v13 = *(v12 + v11);
    if (v13 == 4)
    {
      break;
    }

    if (v13 == v7)
    {
      goto LABEL_7;
    }

LABEL_4:
    if (v10 == ++v11)
    {
      goto LABEL_11;
    }
  }

  if (v7 != 4)
  {
    goto LABEL_4;
  }

LABEL_7:
  v20 = *(v4 + *(v8 + 20));
  v14 = v20;
  v15 = WidgetEnvironment.enumeratedCount()();

  v16 = v11 * v15;
  if ((v11 * v15) >> 64 != (v11 * v15) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16 + a2;
  if (__OFADD__(v16, a2))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v18 = *(type metadata accessor for ActivityArchivedViewCollection() + 20);
  sub_1922266C0();
  sub_19205E1C4(&qword_1EADEDD88, MEMORY[0x1E697C620]);
  sub_192227E00();
  sub_192227E60();
  if (v17 < sub_192227E50())
  {
    *a3 = v17;
    v19 = 1;
    goto LABEL_12;
  }

LABEL_11:
  *a3 = 0;
  v19 = -1;
LABEL_12:
  *(a3 + 8) = v19;
}

void ActivityArchivedViewCollection.index(for:in:ignoring:)(unsigned __int8 *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v32 - v16);
  v18 = *a1;
  if (v18 == 4)
  {
    v32 = *(v5 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
    v19 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, a3);
    if ((v20 & 1) == 0)
    {
      LOBYTE(v32) = 4;
      ActivityArchivedViewCollection.index(for:environmentAtIndex:)(&v32, v19, a4);
      return;
    }

    goto LABEL_8;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  sub_19202CFFC(v5 + *(v21 + 52), v17, &qword_1EADF2AD8, &unk_192246FC8);
  v22 = type metadata accessor for JindoViewStates.Metadata(0);
  if ((*(*(v22 - 8) + 48))(v17, 1, v22) == 1)
  {
    v23 = &qword_1EADF2AD8;
    v24 = &unk_192246FC8;
    v25 = v17;
LABEL_6:
    sub_192033970(v25, v23, v24);
    goto LABEL_8;
  }

  v26 = *v17;
  sub_19221E81C(v17, type metadata accessor for JindoViewStates.Metadata);
  v32 = v26;
  v27 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, a3);
  v29 = v28;

  if (v29)
  {
    goto LABEL_8;
  }

  v30 = type metadata accessor for ActivityArchivedViewCollection();
  sub_19202CFFC(v5 + *(v30 + 24), v13, &qword_1EADF2AE0, &qword_192246FD8);
  v31 = type metadata accessor for JindoArchivedViewCollection();
  if ((*(*(v31 - 8) + 48))(v13, 1, v31) == 1)
  {
    v23 = &qword_1EADF2AE0;
    v24 = &qword_192246FD8;
    v25 = v13;
    goto LABEL_6;
  }

  JindoArchivedViewCollection.index(for:environmentAtIndex:)(v18, v27);
  sub_19221E81C(v13, type metadata accessor for JindoArchivedViewCollection);
  if ((v33 & 1) == 0)
  {
    *a4 = v32;
    *(a4 + 8) = 0;
    return;
  }

LABEL_8:
  *a4 = 0;
  *(a4 + 8) = -1;
}

void ActivityArchivedViewCollection.viewEntry(for:in:ignoring:)(unsigned __int8 *a1@<X0>, char *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v142 = a4;
  v5 = v4;
  v146 = sub_1922261D0();
  v173 = *(v146 - 8);
  v9 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v138 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v138 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD8, &unk_192246FC8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v138 - v23);
  v147 = *a1;
  v144 = a2;
  if (v147 != 4)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
    sub_19202CFFC(v5 + *(v28 + 52), v24, &qword_1EADF2AD8, &unk_192246FC8);
    v29 = type metadata accessor for JindoViewStates.Metadata(0);
    if ((*(*(v29 - 8) + 48))(v24, 1, v29) == 1)
    {
      v30 = &qword_1EADF2AD8;
      v31 = &unk_192246FC8;
      v32 = v24;
    }

    else
    {
      v43 = *v24;
      sub_19221E81C(v24, type metadata accessor for JindoViewStates.Metadata);
      *&v148 = v43;
      v44 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(v144, a3);
      v46 = v45;

      if (v46)
      {
        goto LABEL_11;
      }

      v136 = type metadata accessor for ActivityArchivedViewCollection();
      sub_19202CFFC(v5 + *(v136 + 24), v17, &qword_1EADF2AE0, &qword_192246FD8);
      v137 = type metadata accessor for JindoArchivedViewCollection();
      if ((*(*(v137 - 8) + 48))(v17, 1, v137) != 1)
      {
        v34 = v147;
        JindoArchivedViewCollection.index(for:environmentAtIndex:)(v147, v44);
        sub_19221E81C(v17, type metadata accessor for JindoArchivedViewCollection);
        if (BYTE8(v148))
        {
          *&v158 = 0;
          BYTE8(v158) = -1;
          v26 = v144;
          goto LABEL_13;
        }

        v33 = 0;
        *&v158 = v148;
        goto LABEL_8;
      }

      v30 = &qword_1EADF2AE0;
      v31 = &qword_192246FD8;
      v32 = v17;
    }

    sub_192033970(v32, v30, v31);
LABEL_11:
    *&v158 = 0;
    v26 = v144;
    goto LABEL_12;
  }

  *&v148 = *(v5 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
  v25 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, a3);
  v26 = a2;
  if (v27)
  {
    *&v158 = 0;
LABEL_12:
    v34 = v147;
    goto LABEL_13;
  }

  LOBYTE(v148) = 4;
  ActivityArchivedViewCollection.index(for:environmentAtIndex:)(&v148, v25, &v158);
  v33 = BYTE8(v158);
  v34 = v147;
  if (BYTE8(v158) == 255)
  {
LABEL_13:
    v47 = *(v5 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
    v172 = v47;
    v143 = a3;
    if (v34 == 4)
    {
      v48 = v47;
    }

    else
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
      sub_19202CFFC(v5 + *(v49 + 52), v21, &qword_1EADF2AD8, &unk_192246FC8);
      v50 = type metadata accessor for JindoViewStates.Metadata(0);
      if ((*(*(v50 - 8) + 48))(v21, 1, v50) == 1)
      {
        v51 = v47;
        sub_192033970(v21, &qword_1EADF2AD8, &unk_192246FC8);
        v52 = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];

        v172 = v52;
      }

      else
      {
        v53 = *v21;
        v54 = v47;
        v55 = v53;
        sub_19221E81C(v21, type metadata accessor for JindoViewStates.Metadata);

        v172 = v55;
      }
    }

    v56 = v173;
    v57 = *(v173 + 16);
    v58 = v146;
    v57(v13, v26, v146);
    *&v158 = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];
    WidgetEnvironment.apply(environmentValues:)();
    v59 = *(v56 + 8);
    v173 = v56 + 8;
    v141 = v59;
    v59(v13, v58);
    v60 = v158;
    if (qword_1EADEE9B8 != -1)
    {
      swift_once();
    }

    v61 = sub_1922258B0();
    __swift_project_value_buffer(v61, qword_1EAE008C0);
    v62 = v145;
    v57(v145, v26, v58);
    v63 = v143;

    v64 = v60;
    v65 = v63;
    v66 = v64;
    v67 = sub_192225890();
    v68 = sub_192227FB0();

    v142 = v66;

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *&v148 = v139;
      *v69 = 136447234;
      v140 = v68;
      if (v147 == 4)
      {
        v70 = 0xE800000000000000;
        v71 = 0x6D6574497473696CLL;
      }

      else
      {
        v72 = 0x6465646E61707865;
        *&v158 = 0x2D6F646E696ALL;
        *(&v158 + 1) = 0xE600000000000000;
        v73 = 0xE800000000000000;
        v74 = 0x54746361706D6F63;
        v75 = 0xEF676E696C696172;
        if (v147 != 2)
        {
          v74 = 0x4D746361706D6F63;
          v75 = 0xEE006C616D696E69;
        }

        if (v147)
        {
          v72 = 0x4C746361706D6F63;
          v73 = 0xEE00676E69646165;
        }

        if (v147 <= 1)
        {
          v76 = v72;
        }

        else
        {
          v76 = v74;
        }

        if (v147 <= 1)
        {
          v77 = v73;
        }

        else
        {
          v77 = v75;
        }

        MEMORY[0x193B0A990](v76, v77);

        v70 = *(&v158 + 1);
        v71 = v158;
      }

      v78 = sub_19202B8CC(v71, v70, &v148);

      *(v69 + 4) = v78;
      *(v69 + 12) = 2082;
      *&v158 = 0xD000000000000012;
      *(&v158 + 1) = 0x80000001922488B0;
      v79 = v142;
      v80 = [v79 debugDescription];
      v81 = sub_192227960();
      v83 = v82;

      MEMORY[0x193B0A990](v81, v83);

      v84 = sub_19202B8CC(v158, *(&v158 + 1), &v148);

      *(v69 + 14) = v84;
      *(v69 + 22) = 2082;
      v85 = sub_1922282D0();
      v86 = v143;
      v87 = MEMORY[0x193B0AB30](v143, v85);
      v89 = sub_19202B8CC(v87, v88, &v148);

      *(v69 + 24) = v89;
      *(v69 + 32) = 2082;
      v65 = v86;
      swift_beginAccess();
      *&v158 = 0xD000000000000012;
      *(&v158 + 1) = 0x80000001922488B0;
      v90 = v172;
      v91 = [v90 debugDescription];
      v92 = sub_192227960();
      v94 = v93;

      MEMORY[0x193B0A990](v92, v94);

      v95 = sub_19202B8CC(v158, *(&v158 + 1), &v148);

      *(v69 + 34) = v95;
      *(v69 + 42) = 2080;
      *&v158 = v172;
      LOBYTE(v170) = 1;
      v96 = v172;
      v97 = v145;
      v98 = WidgetEnvironment.differences(from:ignoringEnvironmentKeys:usage:)(v145, v65, &v170);

      *&v158 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
      sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
      v99 = sub_1922278A0();
      v101 = v100;

      v141(v97, v146);
      v102 = sub_19202B8CC(v99, v101, &v148);

      *(v69 + 44) = v102;
      _os_log_impl(&dword_192028000, v67, v140, "Failed to get index for tag: %{public}s in environment: %{public}s ignoring %{public}s.  Available environments: %{public}s, diff: %s", v69, 0x34u);
      v103 = v139;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v103, -1, -1);
      MEMORY[0x193B0C7F0](v69, -1, -1);

      v26 = v144;
    }

    else
    {

      v141(v62, v58);
    }

    v104 = v147;
    *&v158 = 0;
    *(&v158 + 1) = 0xE000000000000000;
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000047, 0x800000019224EF80);
    if (v104 == 4)
    {
      v105 = v26;
      v106 = 0xE800000000000000;
      v107 = 0x6D6574497473696CLL;
    }

    else
    {
      v108 = 0x6465646E61707865;
      *&v148 = 0x2D6F646E696ALL;
      *(&v148 + 1) = 0xE600000000000000;
      v109 = 0xE800000000000000;
      v110 = 0x54746361706D6F63;
      v111 = 0xEF676E696C696172;
      if (v104 != 2)
      {
        v110 = 0x4D746361706D6F63;
        v111 = 0xEE006C616D696E69;
      }

      if (v104)
      {
        v108 = 0x4C746361706D6F63;
        v109 = 0xEE00676E69646165;
      }

      if (v104 <= 1)
      {
        v112 = v108;
      }

      else
      {
        v112 = v110;
      }

      if (v104 <= 1)
      {
        v113 = v109;
      }

      else
      {
        v113 = v111;
      }

      v105 = v26;
      MEMORY[0x193B0A990](v112, v113);

      v106 = *(&v148 + 1);
      v107 = v148;
    }

    MEMORY[0x193B0A990](v107, v106);

    MEMORY[0x193B0A990](0xD000000000000013, 0x800000019224EFD0);
    *&v148 = 0xD000000000000012;
    *(&v148 + 1) = 0x80000001922488B0;
    v114 = v142;
    v115 = [v142 debugDescription];
    v116 = sub_192227960();
    v118 = v117;

    MEMORY[0x193B0A990](v116, v118);

    MEMORY[0x193B0A990](v148, *(&v148 + 1));

    MEMORY[0x193B0A990](0x726F6E6769202C5DLL, 0xEE005B203A676E69);
    v119 = sub_1922282D0();
    v120 = MEMORY[0x193B0AB30](v65, v119);
    MEMORY[0x193B0A990](v120);

    MEMORY[0x193B0A990](0x3A66666964202C5DLL, 0xE900000000000020);
    swift_beginAccess();
    *&v148 = v172;
    LOBYTE(v169) = 1;
    v121 = v172;
    v122 = WidgetEnvironment.differences(from:ignoringEnvironmentKeys:usage:)(v105, v65, &v169);

    *&v148 = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
    v123 = sub_1922278A0();
    v125 = v124;

    MEMORY[0x193B0A990](v123, v125);

    v126 = v158;
    v127 = *MEMORY[0x1E69941E8];
    v128 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v129 = *MEMORY[0x1E696A278];
    v130 = sub_192227960();
    v132 = v131;
    *(&v159 + 1) = MEMORY[0x1E69E6158];
    v158 = v126;
    sub_19203BEDC(&v158, &v148);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v169 = v128;
    sub_19213DB28(&v148, v130, v132, isUniquelyReferenced_nonNull_native);

    v134 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v135 = sub_192227830();

    [v134 initWithDomain:v127 code:1301 userInfo:v135];

    swift_willThrow();
    return;
  }

LABEL_8:
  v170 = v158;
  v171 = v33 & 1;
  v168 = v34;
  v35 = v143;
  sub_19221DAB8(&v170, &v158);
  if (!v35)
  {
    v154 = v164;
    v155 = v165;
    v156 = v166;
    v157 = v167;
    v150 = v160;
    v151 = v161;
    v152 = v162;
    v153 = v163;
    v148 = v158;
    v149 = v159;
    nullsub_1(&v148, v36, v37);
    v38 = v155;
    v39 = v142;
    *(v142 + 6) = v154;
    v39[7] = v38;
    v39[8] = v156;
    *(v39 + 18) = v157;
    v40 = v151;
    v39[2] = v150;
    v39[3] = v40;
    v41 = v153;
    v39[4] = v152;
    v39[5] = v41;
    v42 = v149;
    *v39 = v148;
    v39[1] = v42;
  }
}

uint64_t sub_19221DAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE0, &qword_192246FD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v85 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AF0, qword_192247150);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v78 - v13;
  v15 = sub_192225B70();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v82 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v78 - v26;
  v27 = *a1;
  LODWORD(a1) = *(a1 + 8);
  v28 = type metadata accessor for ActivityArchivedViewCollection();
  v83 = a1;
  if (a1)
  {
    v29 = v15;
    v30 = v3 + *(v28 + 20);
    v31 = v87;
    sub_1922266B0();
    if (v31)
    {
      if (qword_1EADEDEB0 != -1)
      {
        swift_once();
      }

      v32 = sub_1922258B0();
      __swift_project_value_buffer(v32, qword_1EAE007D8);
      v33 = v31;
      v34 = sub_192225890();
      v35 = sub_192227F90();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = v27;
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 134349314;
        *(v37 + 4) = v36;
        *(v37 + 12) = 2114;
        v39 = v31;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v40;
        *v38 = v40;
        _os_log_impl(&dword_192028000, v34, v35, "Failed to fetch view from archive at index %{public}ld: %{public}@", v37, 0x16u);
        sub_192033970(v38, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v38, -1, -1);
        MEMORY[0x193B0C7F0](v37, -1, -1);
      }

      return swift_willThrow();
    }

    (*(v16 + 32))(v22, v19, v15);
    v54 = *(v3 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 28));
    if (!*(v54 + 16) || (v55 = sub_1920B71E4(v27), (v56 & 1) == 0))
    {
      sub_1920EECBC();
      swift_allocError();
      *v70 = 1;
      swift_willThrow();
      return (*(v16 + 8))(v22, v15);
    }

    v79 = v27;
    v81 = v16;
    v57 = *(v54 + 56) + 88 * v55;
    v58 = *v57;
    v87 = *(v57 + 16);
    v78 = v58;
    v59 = *(v57 + 32);
    v60 = *(v57 + 57);
    v90 = *(v57 + 41);
    v91[0] = v60;
    *(v91 + 10) = *(v57 + 67);
    v61 = &v90;
    v51 = v22;
LABEL_16:
    v62 = sub_192225B50() & 1;
    v63 = v51;
    v64 = v81;
    (*(v81 + 16))(v82, v63, v29);
    sub_19205E1C4(&qword_1EADEDE68, MEMORY[0x1E697C008]);
    v65 = sub_192227570();
    result = (*(v64 + 8))(v63, v29);
    v66 = v61[1];
    v67 = v84;
    *(v84 + 65) = *v61;
    *v67 = v79;
    *(v67 + 8) = v83;
    *(v67 + 16) = v65;
    v68 = v87;
    *(v67 + 40) = v87;
    v69 = v78;
    *(v67 + 24) = v78;
    *(v67 + 56) = v59;
    *(v67 + 64) = v62;
    *(v67 + 81) = v66;
    *(v67 + 91) = *(v61 + 26);
    *(v67 + 112) = v69;
    *(v67 + 128) = v68;
    *(v67 + 144) = v59;
    return result;
  }

  v42 = v87;
  v79 = v27;
  v81 = v16;
  v80 = v15;
  v43 = *(v28 + 24);
  *&v78 = v3;
  sub_19202CFFC(v3 + v43, v10, &qword_1EADF2AE0, &qword_192246FD8);
  v44 = type metadata accessor for JindoArchivedViewCollection();
  v45 = *(*(v44 - 8) + 48);
  if (v45(v10, 1, v44) == 1)
  {
    sub_192033970(v10, &qword_1EADF2AE0, &qword_192246FD8);
    (*(v81 + 56))(v14, 1, 1, v80);
    sub_192033970(v14, &qword_1EADF2AF0, qword_192247150);
    sub_1920EECBC();
    swift_allocError();
    *v46 = 1;
    return swift_willThrow();
  }

  v47 = &v10[*(v44 + 24)];
  sub_1922266B0();
  result = sub_19221E81C(v10, type metadata accessor for JindoArchivedViewCollection);
  if (!v42)
  {
    v48 = v81;
    v49 = v80;
    (*(v81 + 56))(v14, 0, 1, v80);
    v50 = *(v48 + 32);
    v51 = v86;
    v50(v86, v14, v49);
    v52 = v85;
    sub_19202CFFC(v78 + v43, v85, &qword_1EADF2AE0, &qword_192246FD8);
    if (v45(v52, 1, v44) == 1)
    {
      sub_192033970(v52, &qword_1EADF2AE0, &qword_192246FD8);
      v29 = v80;
      v53 = v81;
    }

    else
    {
      result = v79 - *v52;
      if (__OFSUB__(v79, *v52))
      {
        __break(1u);
        return result;
      }

      v71 = *&v52[*(v44 + 20) + 8];
      v29 = v80;
      v53 = v81;
      if (*(v71 + 16))
      {
        v72 = sub_1920B71E4(result);
        if (v73)
        {
          v74 = *(v71 + 56) + 88 * v72;
          v75 = *v74;
          v87 = *(v74 + 16);
          v78 = v75;
          v59 = *(v74 + 32);
          v76 = *(v74 + 57);
          v88 = *(v74 + 41);
          v89[0] = v76;
          *(v89 + 10) = *(v74 + 67);
          sub_19221E81C(v52, type metadata accessor for JindoArchivedViewCollection);
          v61 = &v88;
          goto LABEL_16;
        }
      }

      sub_19221E81C(v52, type metadata accessor for JindoArchivedViewCollection);
    }

    sub_1920EECBC();
    swift_allocError();
    *v77 = 1;
    swift_willThrow();
    return (*(v53 + 8))(v51, v29);
  }

  return result;
}

uint64_t ActivityArchivedViewCollection.viewState(for:environmentAtIndex:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  v12 = sub_1922261D0();
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  LOBYTE(v30) = v16;
  ActivityArchivedViewCollection.index(for:environmentAtIndex:)(&v30, a2, v43);
  if (BYTE8(v43[0]) != 255)
  {
    v41 = *&v43[0];
    v42 = BYTE8(v43[0]) & 1;
    v40 = v16;
    result = sub_19221DAB8(&v41, v43);
    if (v4)
    {
      return result;
    }

    v36 = v43[6];
    v37 = v43[7];
    v38 = v43[8];
    v39 = v44;
    v32 = v43[2];
    v33 = v43[3];
    v34 = v43[4];
    v35 = v43[5];
    v30 = v43[0];
    v31 = v43[1];
    v29 = *(v3 + *(type metadata accessor for ActivityViewStates.Metadata(0) + 20));
    v18 = v29;
    WidgetEnvironment.environmentValues(at:)(a2, v11);

    v19 = v45;
    if ((*(v45 + 48))(v11, 1, v12) != 1)
    {
      v21 = *(v19 + 32);
      v21(v15, v11, v12);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE8, &qword_192246FE0);
      v23 = *(v22 + 48);
      v24 = v37;
      *(a3 + 96) = v36;
      *(a3 + 112) = v24;
      *(a3 + 128) = v38;
      *(a3 + 144) = v39;
      v25 = v33;
      *(a3 + 32) = v32;
      *(a3 + 48) = v25;
      v26 = v35;
      *(a3 + 64) = v34;
      *(a3 + 80) = v26;
      v27 = v31;
      *a3 = v30;
      *(a3 + 16) = v27;
      v21((a3 + v23), v15, v12);
      return (*(*(v22 - 8) + 56))(a3, 0, 1, v22);
    }

    sub_19221E87C(&v30);
    sub_192033970(v11, &qword_1EADEF250, &qword_19222C6C0);
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AE8, &qword_192246FE0);
  return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
}

uint64_t ActivityArchivedViewCollection.archivedFamily.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ActivityViewStates.Metadata(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t _s9WidgetKit30ActivityArchivedViewCollectionV0E5EntryV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[8];
  v4 = *(a1 + 14);
  v5 = *(a1 + 15);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);
  v9 = *a2;
  v10 = a2[8];
  v11 = *(a2 + 14);
  v12 = *(a2 + 15);
  v13 = *(a2 + 16);
  v14 = *(a2 + 17);
  v15 = *(a2 + 18);
  if (a1[1])
  {
    if (*a1 == *a2)
    {
      v16 = *(a2 + 8);
    }

    else
    {
      v16 = 0;
    }

    if (v16 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v17 = *(a2 + 8);
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (a1[8] != 2)
  {
    v18 = *(a1 + 5);
    v32[0] = *(a1 + 3);
    v32[1] = v18;
    v19 = a1[7];
    v20 = *(a1 + 11);
    v35 = *(a1 + 9);
    v36[0] = v20;
    *(v36 + 15) = *(a1 + 103);
    v33 = v19;
    v34 = v3;
    if (v10 != 2)
    {
      v25 = v15;
      v26 = v8;
      v21 = *(a2 + 5);
      v27[0] = *(a2 + 3);
      v27[1] = v21;
      v22 = a2[7];
      v23 = *(a2 + 11);
      v30 = *(a2 + 9);
      v31[0] = v23;
      *(v31 + 15) = *(a2 + 103);
      v28 = v22;
      v29 = v10;
      if (_s9WidgetKit25ActivityViewEntryMetadataV2eeoiySbAC_ACtFZ_0(v32, v27))
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

  v25 = *(a2 + 18);
  v26 = *(a1 + 18);
  if (a2[8] != 2)
  {
    return 0;
  }

LABEL_16:
  v37.origin.x = v4;
  v37.origin.y = v5;
  v37.size.width = v6;
  v37.size.height = v7;
  v38.origin.x = v11;
  v38.origin.y = v12;
  v38.size.width = v13;
  v38.size.height = v14;
  LODWORD(result) = CGRectEqualToRect(v37, v38);
  if (v26 == v25)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for ActivityArchivedViewCollection()
{
  result = qword_1EADECF70;
  if (!qword_1EADECF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19221E81C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_19221E8D4()
{
  sub_19221E970();
  if (v0 <= 0x3F)
  {
    sub_1922266C0();
    if (v1 <= 0x3F)
    {
      sub_19221EA5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19221E970()
{
  if (!qword_1EADED120)
  {
    type metadata accessor for ActivityViewStates(255);
    type metadata accessor for JindoViewStates(255);
    sub_19205E1C4(&qword_1EADED138, type metadata accessor for ActivityViewStates);
    sub_19205E1C4(&qword_1EADED150, type metadata accessor for JindoViewStates);
    v0 = type metadata accessor for CompositeViewStates.Metadata();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADED120);
    }
  }
}

void sub_19221EA5C()
{
  if (!qword_1EADED000)
  {
    type metadata accessor for JindoArchivedViewCollection();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADED000);
    }
  }
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_19221EAF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_19221EB40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19221EBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AD0, &qword_192246FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19221EC3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JindoViewStates.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19221ED04(uint64_t a1)
{
  v6 = *(a1 + 16);
  v4 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v1);
  sub_1920C92D8();
  sub_1922267D0();
  return sub_19210F5E0(v5);
}

uint64_t sub_19221EDE8()
{
  v0 = type metadata accessor for TimelineReloadPolicy();
  __swift_allocate_value_buffer(v0, qword_1ED748AB0);
  v1 = __swift_project_value_buffer(v0, qword_1ED748AB0);
  v2 = sub_192225150();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_19221EEA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TimelineReloadPolicy();
  __swift_allocate_value_buffer(v4, qword_1ED74B570);
  v5 = __swift_project_value_buffer(v4, qword_1ED74B570);
  sub_1922250D0();
  v6 = sub_192225150();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  return sub_19221F810(v3, v5);
}

uint64_t sub_19221EFB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for TimelineReloadPolicy();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_192054E84(v6, a3);
}

uint64_t static TimelineReloadPolicy.after(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192225150();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_19221F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1922289A0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19221F178(uint64_t a1)
{
  v2 = sub_192055230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19221F1B4(uint64_t a1)
{
  v2 = sub_192055230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimelineReloadPolicy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2B00, &qword_192247268);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192055230();
  sub_192228B90();
  sub_192225150();
  sub_1920551EC(&qword_1ED74BB00);
  sub_192228850();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_19221F354(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2B00, &qword_192247268);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192055230();
  sub_192228B90();
  sub_192225150();
  sub_1920551EC(&qword_1ED74BB00);
  sub_192228850();
  return (*(v3 + 8))(v6, v2);
}

BOOL _s9WidgetKit20TimelineReloadPolicyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192225150();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBF0, &unk_192230908);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_192041788(a1, &v23 - v15);
  sub_192041788(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_192041788(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_1920551EC(&qword_1EADEDEE8);
      v21 = sub_192227910();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_192033970(v16, &qword_1EADEED10, &unk_19222B0F0);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_192033970(v16, &qword_1EADEFBF0, &unk_192230908);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_192033970(v16, &qword_1EADEED10, &unk_19222B0F0);
  return 1;
}

unint64_t sub_19221F7BC()
{
  result = qword_1EADF2B10;
  if (!qword_1EADF2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF2B10);
  }

  return result;
}

uint64_t sub_19221F810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

float64_t ActivityMetrics.effectiveSizePixelAligned(with:)(double a1)
{
  v3 = v1[1].f64[1];
  v4 = vmulq_n_f64(*v1, v3);
  if (v3 != 1.0)
  {
    *&v4.f64[0] = *&vmulq_n_f64(vrndmq_f64(vdivq_f64(vaddq_f64(vdupq_lane_s64(COERCE__INT64(1.0 / a1 * 0.5), 0), v4), vdupq_lane_s64(COERCE__INT64(1.0 / a1), 0))), 1.0 / a1);
  }

  return v4.f64[0];
}

uint64_t queriesForExtensionPoint(extensionPointIdentifier:)()
{
  v6 = MEMORY[0x1E69E7CC0];
  v0 = objc_allocWithZone(MEMORY[0x1E6966CE0]);
  v1 = sub_192227930();
  v2 = [v0 initWithExtensionPointIdentifier_];

  [v2 setIncludeUpdatingApps_];
  v3 = v2;
  MEMORY[0x193B0AB00]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_192227BB0();
  }

  sub_192227C00();

  return v6;
}

uint64_t sub_19221FA40()
{
  result = sub_19221FA60();
  qword_1EADECCF8 = result;
  return result;
}

uint64_t sub_19221FA60()
{
  v6 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  v0 = objc_allocWithZone(MEMORY[0x1E6966CE0]);

  v1 = sub_192227930();

  v2 = [v0 initWithExtensionPointIdentifier_];

  [v2 setIncludeUpdatingApps_];
  v3 = v2;
  MEMORY[0x193B0AB00]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_192227BB0();
  }

  sub_192227C00();

  sub_192167DE4(v6);
  return v7;
}

uint64_t QueriesForWidgetExtensionPoints.getter()
{
  if (qword_1EADECCF0 != -1)
  {
    swift_once();
  }
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B20, &unk_192234AF0);
      [v2 addObject_];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v6 = v2;
  sub_192227D50();

  sub_192228620();
  __break(1u);
}

void sub_19221FD6C()
{
  v0 = objc_opt_self();
  v1 = &unk_1F06C38D8;
  v2 = [v0 interfaceWithProtocol_];

  qword_1ED74A760 = v2;
}

uint64_t sub_19221FDD4()
{
  result = sub_19221FDF4();
  qword_1ED74C538 = result;
  return result;
}

uint64_t sub_19221FDF4()
{
  [objc_opt_self() interfaceWithProtocol_];
  sub_19202AE2C();
  inited = swift_initStackObject();
  *(inited + 32) = sub_19202A7A8(0, &qword_1ED74C6A0, 0x1E695DEC8);
  *(inited + 40) = sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v1 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v4 = *(inited + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B20, &unk_192234AF0);
  [v1 addObject_];
  swift_unknownObjectRelease();
  [v1 addObject_];
  swift_unknownObjectRelease();
  v2 = v1;
  sub_192227D50();

  result = sub_192228620();
  __break(1u);
  return result;
}

id sub_192220F30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  if (a1)
  {
    v10 = sub_192227B60();
  }

  else
  {
    v10 = 0;
  }

  sub_19218B864(a2, v9);
  v11 = sub_1922251B0();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    v13 = sub_192225170();
    (*(v12 + 8))(v9, v11);
  }

  v14 = type metadata accessor for _WidgetExtensionBaseContext();
  v18.receiver = v3;
  v18.super_class = v14;
  v15 = objc_msgSendSuper2(&v18, sel_initWithInputItems_contextUUID_, v10, v13);

  v16 = v15;
  sub_19218B8D4(a2);
  if (v16)
  {
  }

  return v16;
}

id sub_1922211F0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF2B90, &qword_1922474C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  if (a1)
  {
    v12 = sub_192227B60();
  }

  else
  {
    v12 = 0;
  }

  sub_19218B864(a3, v11);
  v13 = sub_1922251B0();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_192225170();
    (*(v14 + 8))(v11, v13);
  }

  v16 = type metadata accessor for _WidgetExtensionBaseContext();
  v20.receiver = v4;
  v20.super_class = v16;
  v17 = objc_msgSendSuper2(&v20, sel_initWithInputItems_listenerEndpoint_contextUUID_, v12, a2, v15);

  v18 = v17;
  sub_19218B8D4(a3);
  if (v18)
  {
  }

  return v18;
}

id sub_1922214D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _WidgetExtensionBaseContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_192221594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1920A59A8;

  return v11(a1, a2, a3);
}

uint64_t sub_1922216C0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v2[9] = v7;
  *v7 = v2;
  v7[1] = sub_1922217E4;

  return (v9)(v2 + 6, a1, a2);
}

uint64_t sub_1922217E4()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1922218E0, 0, 0);
}

uint64_t sub_1922218E0()
{
  if (v0[3].receiver)
  {
    super_class = v0[3].super_class;
    receiver = v0[4].receiver;
    v12 = v0[3].receiver;
    swift_getAssociatedTypeWitness();
    type metadata accessor for WidgetRelevances();
    v3 = sub_192222BC8();

    v4 = type metadata accessor for WidgetRelevanceFetchResult();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 0;
    v6 = sub_19218BD8C(v3);

    *&v5[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = v6;
    v0[2].receiver = v5;
    v7 = v0 + 2;
  }

  else
  {
    v4 = type metadata accessor for WidgetRelevanceFetchResult();
    v8 = objc_allocWithZone(v4);
    v8[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_isDefaultImplementation] = 1;
    *&v8[OBJC_IVAR____TtC9WidgetKit26WidgetRelevanceFetchResult_widgetRelevances] = sub_19218BD8C(MEMORY[0x1E69E7CC0]);
    v0[1].receiver = v8;
    v7 = v0 + 1;
  }

  v7->super_class = v4;
  v9 = [(objc_super *)v7 init];
  v10 = v0->super_class;

  return v10(v9);
}

uint64_t get_enum_tag_for_layout_string_9WidgetKit23DynamicIslandBackgroundV7StorageO(void *a1)
{
  v1 = a1[1] >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_192221A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v4();
  return sub_192227570();
}

uint64_t sub_192221B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_192225AB0();
}

uint64_t sub_192221BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_192225AB0();
  (*(v6 + 16))(v10, a2, a4);
  sub_1922275B0();
  return v15;
}

uint64_t sub_192221D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v61 = a1;
  v65 = a4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BA8, &qword_192247720);
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v54 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BB0, &qword_192247728);
  v7 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v9 = &v54 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BB8, &qword_192247730);
  v10 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BC0, &qword_192247738);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BC8, &qword_192247740);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BD0, &qword_192247748);
  v20 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BD8, &qword_192247750);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - v25;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE0, &qword_192247758);
  v27 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v29 = &v54 - v28;
  v59 = a3;
  v30 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v30 == 2)
    {
      v40 = v59;
      v41 = v59 & 0x3FFFFFFFFFFFFFFFLL;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE8, &qword_192247760);
      v43 = v55;
      (*(*(v42 - 8) + 16))(v55, v61, v42);
      v44 = v43 + *(v57 + 36);
      v45 = v60;
      *v44 = v60;
      *(v44 + 8) = v41;
      *(v44 + 16) = 256;
      sub_19202CFFC(v43, v9, &qword_1EADF2BA8, &qword_192247720);
      swift_storeEnumTagMultiPayload();
      sub_192101850(v45, v40);
      sub_192222610();
      sub_1922226F4();

      v46 = v58;
      sub_1922266E0();
      sub_19202CFFC(v46, v22, &qword_1EADF2BB8, &qword_192247730);
      swift_storeEnumTagMultiPayload();
      sub_1922227D8();
      sub_192222974();
      sub_1922266E0();

      sub_192033970(v46, &qword_1EADF2BB8, &qword_192247730);
      v37 = v43;
      v38 = &qword_1EADF2BA8;
      v39 = &qword_192247720;
    }

    else
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE8, &qword_192247760);
      (*(*(v52 - 8) + 16))(v26, v61, v52);
      swift_storeEnumTagMultiPayload();
      sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760);
      sub_192222890();
      sub_1922266E0();
      sub_19202CFFC(v29, v22, &qword_1EADF2BE0, &qword_192247758);
      swift_storeEnumTagMultiPayload();
      sub_1922227D8();
      sub_192222974();
      sub_1922266E0();
      v37 = v29;
      v38 = &qword_1EADF2BE0;
      v39 = &qword_192247758;
    }
  }

  else if (v30)
  {
    v47 = v60;

    v48 = sub_192226D10();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE8, &qword_192247760);
    (*(*(v49 - 8) + 16))(v15, v61, v49);
    v50 = &v15[*(v12 + 36)];
    *v50 = v47;
    v50[8] = v48;
    sub_19202CFFC(v15, v9, &qword_1EADF2BC0, &qword_192247738);
    swift_storeEnumTagMultiPayload();
    sub_192222610();
    sub_1922226F4();

    v51 = v58;
    sub_1922266E0();
    sub_19202CFFC(v51, v22, &qword_1EADF2BB8, &qword_192247730);
    swift_storeEnumTagMultiPayload();
    sub_1922227D8();
    sub_192222974();
    sub_1922266E0();
    sub_1921018A0(v47, v59);
    sub_192033970(v51, &qword_1EADF2BB8, &qword_192247730);
    v37 = v15;
    v38 = &qword_1EADF2BC0;
    v39 = &qword_192247738;
  }

  else
  {
    v31 = v60;

    v58 = sub_1922275F0();
    v33 = v32;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2BE8, &qword_192247760);
    (*(*(v34 - 8) + 16))(v19, v61, v34);
    v35 = &v19[*(v16 + 36)];
    v36 = v58;
    *v35 = v31;
    v35[1] = v36;
    v35[2] = v33;
    sub_19202CFFC(v19, v26, &qword_1EADF2BC8, &qword_192247740);
    swift_storeEnumTagMultiPayload();
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760);
    sub_192222890();

    sub_1922266E0();
    sub_19202CFFC(v29, v22, &qword_1EADF2BE0, &qword_192247758);
    swift_storeEnumTagMultiPayload();
    sub_1922227D8();
    sub_192222974();
    sub_1922266E0();
    sub_1921018A0(v31, v59);
    sub_192033970(v29, &qword_1EADF2BE0, &qword_192247758);
    v37 = v19;
    v38 = &qword_1EADF2BC8;
    v39 = &qword_192247740;
  }

  return sub_192033970(v37, v38, v39);
}

unint64_t sub_192222610()
{
  result = qword_1EADEDE38;
  if (!qword_1EADEDE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BC0, &qword_192247738);
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760);
    sub_192031E74(&qword_1EADEDD00, &qword_1EADF2BF0, &qword_192247768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE38);
  }

  return result;
}

unint64_t sub_1922226F4()
{
  result = qword_1EADEDE40;
  if (!qword_1EADEDE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BA8, &qword_192247720);
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760);
    sub_192031E74(&qword_1EADEDD08, &qword_1EADF2BF8, &qword_192247770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE40);
  }

  return result;
}

unint64_t sub_1922227D8()
{
  result = qword_1EADEDD78;
  if (!qword_1EADEDD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BE0, &qword_192247758);
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760);
    sub_192222890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD78);
  }

  return result;
}

unint64_t sub_192222890()
{
  result = qword_1EADEDE30;
  if (!qword_1EADEDE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BC8, &qword_192247740);
    sub_192031E74(&qword_1EADEDD30, &qword_1EADF2BE8, &qword_192247760);
    sub_192031E74(&qword_1EADEDD80, &qword_1EADF2C00, &qword_192247778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE30);
  }

  return result;
}

unint64_t sub_192222974()
{
  result = qword_1EADEDD70;
  if (!qword_1EADEDD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2BB8, &qword_192247730);
    sub_192222610();
    sub_1922226F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD70);
  }

  return result;
}

uint64_t sub_192222A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 16))
  {
    return (*a1 + 16381);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_192222A78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *result = a2 - 16381;
    *(result + 8) = 0;
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_192222AF4(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

unint64_t sub_192222B34()
{
  result = qword_1EADEDD50;
  if (!qword_1EADEDD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF2C08, &qword_192247818);
    sub_1922227D8();
    sub_192222974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDD50);
  }

  return result;
}

uint64_t sub_192222BC8()
{
  v1 = *v0;
  v9[0] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C10, &qword_192247890);
  if (swift_dynamicCast())
  {
    v2 = sub_1922234D8(*&v6[0]);
  }

  else
  {
    v8 = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C18, &qword_192247898);
    if (swift_dynamicCast())
    {
      sub_19203832C(v6, v9);
      v3 = v10;
      v4 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      v2 = (*(v4 + 8))(v3, v4);
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_192033970(v6, &qword_1EADF2C20, &qword_1922478A0);
      v9[0] = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C28, &qword_1922478A8);
      if (swift_dynamicCast())
      {
        v9[0] = *&v6[0];
        v2 = sub_192222D68();
      }

      else
      {
        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  return v2;
}

uint64_t sub_192222D68()
{
  v1 = sub_192224CC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v29 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C40, qword_1922478C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v29 - v13;
  v15 = *v0;
  result = MEMORY[0x1E69E7CC0];
  if (*v0)
  {
    v34 = MEMORY[0x1E69E7CC0];
    v17 = *(v15 + 16);
    if (v17)
    {
      v18 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v31 = (v2 + 32);
      v32 = MEMORY[0x1E69E7CC0];
      v33 = *(v12 + 72);
      v29 = v5;
      v30 = (v2 + 8);
      while (1)
      {
        sub_19202CFFC(v18, v14, &qword_1EADF2C40, qword_1922478C8);
        sub_19202CFFC(v14, v9, &qword_1EADF01C0, qword_1922329B0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        v19 = v9[1];
        if (!v19)
        {
          v25 = [objc_opt_self() ungrouped];
LABEL_12:
          v27 = [objc_allocWithZone(MEMORY[0x1E69943F8]) initWithAttribute:v25 intentReference:0];

          v28 = sub_192033970(v14, &qword_1EADF2C40, qword_1922478C8);
          if (v27)
          {
            MEMORY[0x193B0AB00](v28);
            if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_192227BB0();
            }

            sub_192227C00();
            v32 = v34;
          }

          goto LABEL_5;
        }

        if (v19 != 1)
        {
          v20 = *v9;
          v21 = objc_allocWithZone(MEMORY[0x1E6994400]);
          v22 = v6;
          v23 = v1;
          v24 = sub_192227930();
          sub_192163968(v20, v19);
          v25 = [v21 initWithNamedGroupIdentifier_];

          v1 = v23;
          v6 = v22;
          v5 = v29;
          goto LABEL_12;
        }

        sub_192033970(v14, &qword_1EADF2C40, qword_1922478C8);
LABEL_5:
        v18 += v33;
        if (!--v17)
        {
          return v32;
        }
      }

      (*v31)(v5, v9, v1);
      v26 = sub_192224CB0();
      v25 = [objc_allocWithZone(MEMORY[0x1E6994418]) initWithRelevantContext_];

      (*v30)(v5, v1);
      goto LABEL_12;
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_192223188(uint64_t a1)
{
  if (!*v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = *v1;
  MEMORY[0x1EEE9AC00](a1);
  v4 = *(v2 + 16);
  type metadata accessor for WidgetRelevanceEntry();
  sub_192227C40();
  sub_19222348C();
  swift_getWitnessTable();
  return sub_192227A90();
}

void sub_192223278(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = *(a1 + 8);
    sub_192224C70();
    sub_192224BE0();
    v7 = objc_allocWithZone(MEMORY[0x1E696E730]);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v8 = sub_192228980();
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v9 = [v7 initWithAppBundleIdentifier:v5 linkAction:v8 linkActionMetadata:sub_192228980()];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v10 = [objc_allocWithZone(MEMORY[0x1E69942D0]) initWithIntent_];
    v11 = type metadata accessor for WidgetRelevanceEntry();
    v12 = sub_19216370C(v11);
    if (v12)
    {
      v13 = v12;
      v14 = [objc_allocWithZone(MEMORY[0x1E69943F8]) initWithAttribute:v12 intentReference:v10];
    }

    else
    {

      v14 = 0;
    }

    *a2 = v14;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_19222348C()
{
  result = qword_1ED74A910;
  if (!qword_1ED74A910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74A910);
  }

  return result;
}

id sub_1922234D8(uint64_t a1)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v46 = sub_192224CC0();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C30, &qword_1922478B0);
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v8 = (&v39 - v7);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C38, &unk_1922478B8);
  v51 = *(v49 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v11 = (&v39 - v10);
  if (a1)
  {
    v12 = *(a1 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v14 = (a1 + ((*(v51 + 80) + 32) & ~*(v51 + 80)));
      v15 = objc_opt_self();
      v48 = v14;
      v16 = *v14;
      v52[0] = 0;
      v17 = [v15 _schemaDataFromIntent_error_];
      v18 = v17;
      if (v52[0])
      {
        v19 = v52[0];

        swift_willThrow();
      }

      else if (v17)
      {
        v43 = sub_192225080();
        v20 = v21;

        v40 = 0;
        goto LABEL_9;
      }

      v43 = 0;
      v40 = 0;
      v20 = 0xF000000000000000;
LABEL_9:
      v22 = 0;
      v52[0] = v13;
      v44 = (v2 + 8);
      v45 = (v2 + 32);
      v42 = v20;
      v47 = v20 >> 60;
      while (1)
      {
        v41 = v13;
        v23 = v22;
        while (1)
        {
          if (v23 >= v12)
          {
            __break(1u);
LABEL_33:
            __break(1u);
          }

          sub_19202CFFC(v48 + *(v51 + 72) * v23, v11, &qword_1EADF2C38, &unk_1922478B8);
          v22 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_33;
          }

          sub_19202CFFC(v11 + *(v49 + 28), v8, &qword_1EADF2C30, &qword_1922478B0);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v29 = v46;
            (*v45)(v5, v8, v46);
            v30 = sub_192224CB0();
            v31 = [objc_allocWithZone(MEMORY[0x1E6994418]) initWithRelevantContext_];

            (*v44)(v5, v29);
            goto LABEL_23;
          }

          v28 = v8[1];
          if (!v28)
          {
            v31 = [objc_opt_self() ungrouped];
            goto LABEL_23;
          }

          if (v28 != 1)
          {
            break;
          }

          sub_192033970(v11, &qword_1EADF2C38, &unk_1922478B8);
LABEL_13:
          ++v23;
          if (v22 == v12)
          {
            v13 = v41;
            goto LABEL_30;
          }
        }

        v32 = *v8;
        v33 = objc_allocWithZone(MEMORY[0x1E6994400]);
        v34 = sub_192227930();
        sub_192163968(v32, v28);
        v31 = [v33 initWithNamedGroupIdentifier_];

LABEL_23:
        v35 = *v11;
        if (v47 <= 0xE)
        {
          v24 = sub_192225050();
        }

        else
        {
          v24 = 0;
        }

        v25 = [objc_allocWithZone(MEMORY[0x1E69942D0]) initWithIntent:v35 schemaData:v24];

        v26 = [objc_allocWithZone(MEMORY[0x1E69943F8]) initWithAttribute:v31 intentReference:v25];
        v27 = sub_192033970(v11, &qword_1EADF2C38, &unk_1922478B8);
        if (!v26)
        {
          goto LABEL_13;
        }

        MEMORY[0x193B0AB00](v27);
        if (*((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v36 = *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_192227BB0();
        }

        sub_192227C00();
        v13 = v52[0];
        if (v22 == v12)
        {
LABEL_30:
          sub_192046ED4(v43, v42);
          break;
        }
      }
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v37 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t EnvironmentValues._widgetRenderScheme.getter()
{
  sub_192041274();

  return sub_1922261E0();
}

void (*EnvironmentValues._widgetRenderScheme.modify(uint64_t *a1))(char **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_192041274();
  sub_1922261E0();
  return sub_192223B60;
}

void sub_192223B60(char **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 1);
  v4 = v3 != 1;
  v6 = *(*a1 + 4);
  v5 = *(*a1 + 5);
  v1[16] = v2;
  *(v1 + 3) = v3;
  sub_1922261F0();
  v1[16] = v4;
  sub_1920412C8();
  sub_1922261F0();
  v1[16] = v2;
  sub_19202F774();
  sub_1922261F0();

  free(v1);
}

uint64_t TimelineProviderContext.init(environmentVariants:family:isPreview:personaIdentifier:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a4;
  v41 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  LOBYTE(a2) = *a2;
  *a6 = *a1;
  *(a6 + 8) = v18;
  *(a6 + 16) = v19;
  *(a6 + 24) = v20;
  v42 = a2;

  v21 = v17;

  sub_19206E384(&v42, &v43);
  *(a6 + 32) = v43;
  *(a6 + 33) = a2;
  *(a6 + 56) = a3;
  KeyPath = swift_getKeyPath();
  v23 = sub_192085490(KeyPath, v21, v18, v19, v20);

  if (v23)
  {
    if (*(v23 + 16))
    {
      v24 = *(v23 + 32);
    }

    else
    {
      v24 = 2.0;
    }
  }

  else
  {
    v24 = 2.0;
  }

  v25 = swift_getKeyPath();
  v26 = sub_192085D6C(v25, v21, v18, v19, v20);

  v27 = 0;
  if (!v26)
  {
    goto LABEL_16;
  }

  if (!(v26 >> 62))
  {
    result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  result = sub_192228340();
  if (!result)
  {
LABEL_15:

LABEL_16:
    v33 = 0;
LABEL_17:
    *(a6 + 64) = v27;
    *(a6 + 72) = v33;
    v34 = swift_getKeyPath();
    v35 = sub_192099884(v34);

    if (v35)
    {
      if (v35[2])
      {
        sub_19204154C(v35 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v13);

        sub_192224958(v13, v16);
LABEL_22:
        v37 = type metadata accessor for TimelineProviderContext();
        result = sub_192224958(v16, a6 + *(v37 + 40));
        v38 = v41;
        *(a6 + 40) = v40;
        *(a6 + 48) = v38;
        return result;
      }
    }

    v36 = sub_192224EA0();
    (*(*(v36 - 8) + 56))(v16, 1, 1, v36);
    goto LABEL_22;
  }

LABEL_10:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x193B0B410](0, v26);
    goto LABEL_13;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v26 + 32);
LABEL_13:
    v30 = v29;

    [v30 _rawLayoutInsetAdjustedSizePixelAlignedForDisplayScale_];
    v27 = v31;
    v33 = v32;

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_192223FD8@<X0>(void *a1@<X8>)
{
  result = sub_192225EA0();
  *a1 = v3;
  return result;
}

uint64_t sub_192224080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t _s9WidgetKit23TimelineProviderContextV19EnvironmentVariantsV13dynamicMemberSayxGSgs15WritableKeyPathCy7SwiftUI0F6ValuesVxG_tcluig_0(uint64_t *a1)
{
  v61 = *a1;
  v3 = sub_192225A40();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  sub_1922282D0();
  KeyPath = swift_getKeyPath();
  v12 = MEMORY[0x193B0B270](a1, KeyPath);

  if (v12)
  {
    result = 0;
    if (!v8)
    {
      return result;
    }

    sub_1922252A0();
    v14 = *(v61 + *MEMORY[0x1E69E6CE8] + 8);
LABEL_10:

    return sub_1922286F0();
  }

  v15 = swift_getKeyPath();
  v16 = MEMORY[0x193B0B270](a1, v15);

  if (v16)
  {
    result = 0;
    if (!v10)
    {
      return result;
    }

    sub_1922252C0();
    v17 = *(v61 + *MEMORY[0x1E69E6CE8] + 8);
    goto LABEL_10;
  }

  v18 = swift_getKeyPath();
  v19 = MEMORY[0x193B0B270](a1, v18);

  if (v19)
  {
    result = 0;
    if (!v9)
    {
      return result;
    }

    sub_192225C60();
    v20 = *(v61 + *MEMORY[0x1E69E6CE8] + 8);
    goto LABEL_10;
  }

  v21 = swift_getKeyPath();
  v22 = MEMORY[0x193B0B270](a1, v21);

  if ((v22 & 1) == 0)
  {
    v34 = swift_getKeyPath();
    v35 = MEMORY[0x193B0B270](a1, v34);

    if ((v35 & 1) == 0)
    {
      return sub_1920BD420(a1);
    }

    v36 = swift_getKeyPath();
    v25 = sub_19206FF50(v36);

    if (v25)
    {
      v24 = v25 & 0xFFFFFFFFFFFFFF8;
      if (v25 >> 62)
      {
        goto LABEL_50;
      }

      v37 = v25;
      v38 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38)
      {
        goto LABEL_30;
      }

      goto LABEL_51;
    }

    return 0;
  }

  v23 = swift_getKeyPath();
  v3 = sub_19206FF50(v23);

  if (!v3)
  {
    return 0;
  }

  if (v3 >> 62)
  {
    goto LABEL_47;
  }

  v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_51:

    v51 = *(v61 + *MEMORY[0x1E69E6CE8] + 8);
    v52 = sub_1922286F0();

    return v52;
  }

  while (1)
  {
    v63[0] = MEMORY[0x1E69E7CC0];
    v25 = v63;
    sub_192085D4C(0, v24 & ~(v24 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v27 = v63[0];
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x193B0B410](v26, v3);
        }

        else
        {
          v28 = *(v3 + 8 * v26 + 32);
        }

        v29 = v28;
        [v28 scale];
        v31 = v30;

        v63[0] = v27;
        v33 = *(v27 + 16);
        v32 = *(v27 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_192085D4C((v32 > 1), v33 + 1, 1);
          v27 = v63[0];
        }

        ++v26;
        *(v27 + 16) = v33 + 1;
        *(v27 + 8 * v33 + 32) = v31;
      }

      while (v24 != v26);
      goto LABEL_51;
    }

    __break(1u);
LABEL_50:
    v37 = v25;
    v38 = sub_192228340();
    if (!v38)
    {
      goto LABEL_51;
    }

LABEL_30:
    v55 = v24;
    v64 = MEMORY[0x1E69E7CC0];
    v39 = sub_19209AC60(0, v38 & ~(v38 >> 63), 0);
    if (v38 < 0)
    {
      break;
    }

    v40 = 0;
    v41 = v64;
    v42 = v37;
    v59 = v37 & 0xC000000000000001;
    v56 = *MEMORY[0x1E697DE20];
    v43 = (v60 + 104);
    v58 = *MEMORY[0x1E697DE28];
    v57 = v60 + 32;
    v44 = v42;
    while (1)
    {
      v45 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v59)
      {
        v46 = MEMORY[0x193B0B410](v40);
      }

      else
      {
        if (v40 >= *(v55 + 16))
        {
          goto LABEL_46;
        }

        v46 = *(v42 + 8 * v40 + 32);
      }

      v47 = v46;
      v39 = [v46 colorGamut];
      v48 = v58;
      if (v39)
      {
        v48 = v56;
        if (v39 != 1)
        {
          goto LABEL_54;
        }
      }

      (*v43)(v6, v48, v3);
      v64 = v41;
      v50 = *(v41 + 16);
      v49 = *(v41 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_19209AC60(v49 > 1, v50 + 1, 1);
        v41 = v64;
      }

      *(v41 + 16) = v50 + 1;
      (*(v60 + 32))(v41 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v50, v6, v3);
      ++v40;
      v42 = v44;
      if (v45 == v38)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = sub_192228340();
    if (!v24)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_54:
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  v53 = v39;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000025, 0x800000019224F0C0);
  v62 = v53;
  type metadata accessor for CHSDisplayGamut(0);
  sub_1922285A0();
  result = sub_192228620();
  __break(1u);
  return result;
}

uint64_t TimelineProviderContext.environmentVariants.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v5;
  a1[3] = v4;

  v6 = v3;
}

uint64_t TimelineProviderContext.chsWidgetFamily.getter()
{
  v1 = *(v0 + 33);
  if (v1 <= 0xC)
  {
    return qword_192247C38[v1];
  }

  result = sub_192228990();
  __break(1u);
  return result;
}

uint64_t TimelineProviderContext.personaIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

double TimelineProviderContext.displaySize.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t TimelineProviderContext.idealizedDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TimelineProviderContext() + 40);

  return sub_19204154C(v3, a1);
}

uint64_t sub_192224958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1922249F0()
{
  sub_192224ABC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_19214347C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_192224ABC()
{
  if (!qword_1ED74B590)
  {
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74B590);
    }
  }
}
uint64_t sub_22D0433E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  return sub_22D04F688(v3 + v4, a2, &unk_27D9F67A0, &unk_22D05E720);
}

uint64_t sub_22D043458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D05D9EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22D043518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22D05D9EC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22D0435E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22D043618()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22D043650()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D043690()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22D043758(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22D0437A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_22D043878()
{
  v0 = sub_22D05DA2C();
  __swift_allocate_value_buffer(v0, qword_27D9F72A0);
  __swift_project_value_buffer(v0, qword_27D9F72A0);
  return sub_22D05DA1C();
}

uint64_t sub_22D0438F8()
{
  v0 = sub_22D05DA2C();
  __swift_allocate_value_buffer(v0, qword_27D9F65C0);
  v1 = __swift_project_value_buffer(v0, qword_27D9F65C0);
  if (qword_27D9F6490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27D9F72A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t firmwareUpdateLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  v3 = __swift_project_value_buffer(v2, qword_27D9F65C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t sub_22D043B0C()
{
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](0);
  return sub_22D05DD8C();
}

uint64_t sub_22D043B78()
{
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](0);
  return sub_22D05DD8C();
}

uint64_t AccessoryFirmwareUpdateDeviceType.hashValue.getter()
{
  v1 = *v0;
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](v1);
  return sub_22D05DD8C();
}

uint64_t sub_22D043C68()
{
  v1 = *v0;
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](v1);
  return sub_22D05DD8C();
}

uint64_t sub_22D043CB0()
{
  v1 = *v0;
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](v1);
  return sub_22D05DD8C();
}

int *AccessoryFirmwareUpdateAccessory.init(deviceUuid:deviceType:firmwareVersion:vendorId:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = sub_22D05D9EC();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  *(a6 + result[5]) = v11;
  v14 = (a6 + result[6]);
  *v14 = a3;
  v14[1] = a4;
  *(a6 + result[7]) = a5;
  return result;
}

uint64_t AccessoryFirmwareUpdateAccessory.hash(into:)()
{
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
  sub_22D05DABC();
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  MEMORY[0x2318C6EA0](*(v0 + updated[5]));
  v2 = (v0 + updated[6]);
  v3 = *v2;
  v4 = v2[1];
  sub_22D05DAFC();
  return MEMORY[0x2318C6EA0](*(v0 + updated[7]));
}

uint64_t AccessoryFirmwareUpdateAccessory.hashValue.getter()
{
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
  sub_22D05DABC();
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  MEMORY[0x2318C6EA0](*(v0 + updated[5]));
  v2 = (v0 + updated[6]);
  v3 = *v2;
  v4 = v2[1];
  sub_22D05DAFC();
  MEMORY[0x2318C6EA0](*(v0 + updated[7]));
  return sub_22D05DD8C();
}

uint64_t sub_22D043F48(int *a1)
{
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
  sub_22D05DABC();
  MEMORY[0x2318C6EA0](*(v1 + a1[5]));
  v3 = (v1 + a1[6]);
  v4 = *v3;
  v5 = v3[1];
  sub_22D05DAFC();
  MEMORY[0x2318C6EA0](*(v1 + a1[7]));
  return sub_22D05DD8C();
}

uint64_t sub_22D044014(uint64_t a1, int *a2)
{
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
  sub_22D05DABC();
  MEMORY[0x2318C6EA0](*(v2 + a2[5]));
  v4 = (v2 + a2[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_22D05DAFC();
  return MEMORY[0x2318C6EA0](*(v2 + a2[7]));
}

uint64_t sub_22D0440CC(uint64_t a1, int *a2)
{
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
  sub_22D05DABC();
  MEMORY[0x2318C6EA0](*(v2 + a2[5]));
  v4 = (v2 + a2[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_22D05DAFC();
  MEMORY[0x2318C6EA0](*(v2 + a2[7]));
  return sub_22D05DD8C();
}

void sub_22D044198(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D05D9EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v73 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v64[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v70 = &v64[-v12];
  MEMORY[0x28223BE20](v11);
  v67 = &v64[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6698, &qword_22D05EA60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v64[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6688, &qword_22D05EA50);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v64[-v23];
  v71 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize;
  v25 = *(v2 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize);

  v74 = a1;
  v26 = sub_22D044B1C(a1, v25);

  if (v26)
  {
    goto LABEL_2;
  }

  v37 = v4;
  v38 = v5;
  v39 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_currentlyActiveDevice;
  swift_beginAccess();
  v68 = *(v38 + 16);
  v69 = v38 + 16;
  v68(v24, v74, v37);
  (*(v38 + 56))(v24, 0, 1, v37);
  v40 = *(v14 + 48);
  v66 = v2;
  v41 = v2 + v39;
  v5 = v38;
  sub_22D04F688(v41, v17, &qword_27D9F6688, &qword_22D05EA50);
  sub_22D04F688(v24, &v17[v40], &qword_27D9F6688, &qword_22D05EA50);
  v42 = *(v38 + 48);
  if (v42(v17, 1, v37) == 1)
  {
    sub_22D04F5CC(v24, &qword_27D9F6688, &qword_22D05EA50);
    v4 = v37;
    if (v42(&v17[v40], 1, v37) == 1)
    {
      sub_22D04F5CC(v17, &qword_27D9F6688, &qword_22D05EA50);
LABEL_2:
      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v27 = sub_22D05DA2C();
      __swift_project_value_buffer(v27, qword_27D9F65C0);
      v28 = v73;
      (*(v5 + 16))(v73, v74, v4);
      v29 = sub_22D05DA0C();
      v30 = sub_22D05DB3C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v75 = v32;
        *v31 = 136315394;
        *(v31 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D061190, &v75);
        *(v31 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v33 = sub_22D05DCCC();
        v35 = v34;
        (*(v5 + 8))(v28, v4);
        v36 = sub_22D04BCD8(v33, v35, &v75);

        *(v31 + 14) = v36;
        _os_log_impl(&dword_22D042000, v29, v30, "AccessoryFirmwareUpdateSerializer %s Device %s already in queue", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v32, -1, -1);
        MEMORY[0x2318C73A0](v31, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v28, v4);
      }

      return;
    }

    goto LABEL_12;
  }

  sub_22D04F688(v17, v22, &qword_27D9F6688, &qword_22D05EA50);
  if (v42(&v17[v40], 1, v37) == 1)
  {
    sub_22D04F5CC(v24, &qword_27D9F6688, &qword_22D05EA50);
    (*(v38 + 8))(v22, v37);
    v4 = v37;
LABEL_12:
    sub_22D04F5CC(v17, &qword_27D9F6698, &qword_22D05EA60);
    v43 = v66;
    goto LABEL_13;
  }

  v61 = v67;
  (*(v38 + 32))(v67, &v17[v40], v37);
  sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0]);
  v62 = sub_22D05DACC();
  v43 = v66;
  v65 = v62;
  v63 = *(v38 + 8);
  v63(v61, v37);
  sub_22D04F5CC(v24, &qword_27D9F6688, &qword_22D05EA50);
  v63(v22, v37);
  v5 = v38;
  sub_22D04F5CC(v17, &qword_27D9F6688, &qword_22D05EA50);
  v4 = v37;
  if (v65)
  {
    goto LABEL_2;
  }

LABEL_13:
  v44 = v43;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v45 = sub_22D05DA2C();
  __swift_project_value_buffer(v45, qword_27D9F65C0);
  v46 = v70;
  v68(v70, v74, v4);
  v47 = sub_22D05DA0C();
  v48 = sub_22D05DB5C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v75 = v50;
    *v49 = 136315394;
    *(v49 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D061190, &v75);
    *(v49 + 12) = 2080;
    sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
    v51 = sub_22D05DCCC();
    v53 = v52;
    (*(v5 + 8))(v46, v4);
    v54 = sub_22D04BCD8(v51, v53, &v75);

    *(v49 + 14) = v54;
    _os_log_impl(&dword_22D042000, v47, v48, "AccessoryFirmwareUpdateSerializer %s Adding device %s to queue", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v50, -1, -1);
    MEMORY[0x2318C73A0](v49, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v46, v4);
  }

  v55 = v72;
  v68(v72, v74, v4);
  v56 = v71;
  v57 = *(v44 + v71);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v44 + v56) = v57;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v57 = sub_22D04BA7C(0, v57[2] + 1, 1, v57);
    *(v44 + v56) = v57;
  }

  v60 = v57[2];
  v59 = v57[3];
  if (v60 >= v59 >> 1)
  {
    v57 = sub_22D04BA7C(v59 > 1, v60 + 1, 1, v57);
  }

  v57[2] = v60 + 1;
  (*(v5 + 32))(v57 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v60, v55, v4);
  *(v44 + v56) = v57;
  sub_22D045E0C();
}

BOOL sub_22D044B1C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_22D05D9EC() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0]);
  }

  while ((sub_22D05DACC() & 1) == 0);
  return v4 != v5;
}

void sub_22D044C28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D05D9EC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - v9;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v11 = sub_22D05DA2C();
  v12 = __swift_project_value_buffer(v11, qword_27D9F65C0);
  v76 = v5[2];
  v76(v10, a1, v4);
  v13 = sub_22D05DA0C();
  v14 = sub_22D05DB5C();
  v15 = os_log_type_enabled(v13, v14);
  v78 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v75 = v1;
    v17 = v16;
    v74 = swift_slowAlloc();
    v79 = v74;
    *v17 = 136315394;
    *(v17 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D060FD0, &v79);
    *(v17 + 12) = 2080;
    sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
    v18 = sub_22D05DCCC();
    v19 = v5;
    v20 = a1;
    v21 = v12;
    v22 = v4;
    v24 = v23;
    v25 = v10;
    v26 = v19[1];
    v26(v25, v22);
    v27 = sub_22D04BCD8(v18, v24, &v79);
    v4 = v22;
    v12 = v21;
    a1 = v20;

    *(v17 + 14) = v27;
    _os_log_impl(&dword_22D042000, v13, v14, "AccessoryFirmwareUpdateSerializer %s Stop serializing device %s to queue", v17, 0x16u);
    v28 = v74;
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v28, -1, -1);
    v29 = v17;
    v2 = v75;
    MEMORY[0x2318C73A0](v29, -1, -1);
  }

  else
  {

    v30 = v10;
    v26 = v5[1];
    v26(v30, v4);
  }

  sub_22D045764(a1);
  v31 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize;
  v32 = *&v2[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize];

  v33 = sub_22D044B1C(a1, v32);

  if (v33)
  {
    v34 = v2;
    v78 = v12;
    v35 = sub_22D05DA0C();
    v36 = sub_22D05DB3C();

    v37 = os_log_type_enabled(v35, v36);
    v73 = v4;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v79 = v77;
      *v38 = 136315394;
      *(v38 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D060FD0, &v79);
      *(v38 + 12) = 2080;
      v39 = *&v2[v31];

      v41 = v2;
      v42 = MEMORY[0x2318C6C60](v40, v4);
      v44 = v43;

      v45 = v42;
      v2 = v41;
      v46 = sub_22D04BCD8(v45, v44, &v79);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_22D042000, v35, v36, "AccessoryFirmwareUpdateSerializer %s queue before removing device %s", v38, 0x16u);
      v47 = v77;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v47, -1, -1);
      MEMORY[0x2318C73A0](v38, -1, -1);
    }

    v48 = *&v2[v31];
    MEMORY[0x28223BE20](v49);
    *(&v73 - 2) = a1;

    v50 = sub_22D045494(sub_22D04F468, (&v73 - 4), v48);
    v51 = *&v2[v31];
    *&v2[v31] = v50;

    v52 = v34;
    v53 = sub_22D05DA0C();
    v54 = sub_22D05DB3C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v79 = v56;
      *v55 = 136315394;
      *(v55 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D060FD0, &v79);
      *(v55 + 12) = 2080;
      v57 = *&v2[v31];

      v59 = MEMORY[0x2318C6C60](v58, v73);
      v61 = v60;

      v62 = sub_22D04BCD8(v59, v61, &v79);

      *(v55 + 14) = v62;
      _os_log_impl(&dword_22D042000, v53, v54, "AccessoryFirmwareUpdateSerializer %s queue after removing device %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v56, -1, -1);
      MEMORY[0x2318C73A0](v55, -1, -1);
    }
  }

  else
  {
    v63 = v77;
    v76(v77, a1, v4);
    v64 = sub_22D05DA0C();
    v65 = sub_22D05DB3C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v79 = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D060FD0, &v79);
      *(v66 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v68 = sub_22D05DCCC();
      v69 = v4;
      v71 = v70;
      v26(v63, v69);
      v72 = sub_22D04BCD8(v68, v71, &v79);

      *(v66 + 14) = v72;
      _os_log_impl(&dword_22D042000, v64, v65, "AccessoryFirmwareUpdateSerializer %s Device %s currently not in queue", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v67, -1, -1);
      MEMORY[0x2318C73A0](v66, -1, -1);
    }

    else
    {

      v26(v63, v4);
    }
  }
}

BOOL sub_22D045400()
{
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0]);
  return (sub_22D05DACC() & 1) == 0;
}

uint64_t sub_22D045494(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_22D05D9EC();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22D04C304(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22D04C304(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

void sub_22D045764(uint64_t a1)
{
  v3 = sub_22D05D9EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v53 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v44 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6698, &qword_22D05EA60);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6688, &qword_22D05EA50);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v49 = &v44 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - v20;
  v51 = *(v4 + 16);
  v52 = a1;
  v50 = v4 + 16;
  v51(&v44 - v20, a1, v3);
  v46 = *(v4 + 56);
  v46(v21, 0, 1, v3);
  v22 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_currentlyActiveDevice;
  swift_beginAccess();
  v23 = *(v10 + 56);
  sub_22D04F688(v21, v13, &qword_27D9F6688, &qword_22D05EA50);
  v47 = v22;
  v45 = v1;
  sub_22D04F688(v1 + v22, &v13[v23], &qword_27D9F6688, &qword_22D05EA50);
  v24 = v4;
  v25 = *(v4 + 48);
  if (v25(v13, 1, v3) == 1)
  {
    sub_22D04F5CC(v21, &qword_27D9F6688, &qword_22D05EA50);
    if (v25(&v13[v23], 1, v3) == 1)
    {
      sub_22D04F5CC(v13, &qword_27D9F6688, &qword_22D05EA50);
LABEL_13:
      v41 = v48;
      v46(v48, 1, 1, v3);
      v42 = v47;
      v43 = v45;
      swift_beginAccess();
      sub_22D04F564(v41, v43 + v42, &qword_27D9F6688, &qword_22D05EA50);
      swift_endAccess();
      sub_22D045E0C();
      return;
    }

    goto LABEL_6;
  }

  v26 = v49;
  sub_22D04F688(v13, v49, &qword_27D9F6688, &qword_22D05EA50);
  if (v25(&v13[v23], 1, v3) == 1)
  {
    sub_22D04F5CC(v21, &qword_27D9F6688, &qword_22D05EA50);
    (*(v4 + 8))(v26, v3);
LABEL_6:
    sub_22D04F5CC(v13, &qword_27D9F6698, &qword_22D05EA60);
    goto LABEL_7;
  }

  v37 = &v13[v23];
  v38 = v44;
  (*(v4 + 32))(v44, v37, v3);
  sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0]);
  v39 = sub_22D05DACC();
  v40 = *(v4 + 8);
  v40(v38, v3);
  sub_22D04F5CC(v21, &qword_27D9F6688, &qword_22D05EA50);
  v40(v26, v3);
  sub_22D04F5CC(v13, &qword_27D9F6688, &qword_22D05EA50);
  if (v39)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v27 = sub_22D05DA2C();
  __swift_project_value_buffer(v27, qword_27D9F65C0);
  v28 = v53;
  v51(v53, v52, v3);
  v29 = sub_22D05DA0C();
  v30 = sub_22D05DB5C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v54[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_22D04BCD8(0xD000000000000020, 0x800000022D060FA0, v54);
    *(v31 + 12) = 2080;
    sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
    v33 = sub_22D05DCCC();
    v35 = v34;
    (*(v24 + 8))(v28, v3);
    v36 = sub_22D04BCD8(v33, v35, v54);

    *(v31 + 14) = v36;
    _os_log_impl(&dword_22D042000, v29, v30, "AccessoryFirmwareUpdateSerializer %s No-op, device %s not currently being processed", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v32, -1, -1);
    MEMORY[0x2318C73A0](v31, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v28, v3);
  }
}

void sub_22D045E0C()
{
  v1 = v0;
  v2 = sub_22D05D9EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v62[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v62[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6688, &qword_22D05EA50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v66 = &v62[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v68 = &v62[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v62[-v19];
  v21 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_currentlyActiveDevice;
  swift_beginAccess();
  v69 = v21;
  sub_22D04F688(&v0[v21], v20, &qword_27D9F6688, &qword_22D05EA50);
  v70 = v2;
  v71 = v3;
  v22 = *(v3 + 48);
  LODWORD(v2) = v22(v20, 1, v2);
  sub_22D04F5CC(v20, &qword_27D9F6688, &qword_22D05EA50);
  if (v2 != 1)
  {
    v67 = v22;
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v38 = sub_22D05DA2C();
    __swift_project_value_buffer(v38, qword_27D9F65C0);
    v39 = v0;
    v40 = sub_22D05DA0C();
    v41 = sub_22D05DB3C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v72[0] = v68;
      *v42 = 136315394;
      *(v42 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D060F80, v72);
      *(v42 + 12) = 2080;
      sub_22D04F688(&v0[v69], v14, &qword_27D9F6688, &qword_22D05EA50);
      v43 = v70;
      v44 = v67(v14, 1, v70);

      if (v44 == 1)
      {
        goto LABEL_30;
      }

      v45 = v71;
      (*(v71 + 32))(v7, v14, v43);
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v46 = sub_22D05DCCC();
      v48 = v47;
      (*(v45 + 8))(v7, v43);
      v49 = sub_22D04BCD8(v46, v48, v72);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_22D042000, v40, v41, "AccessoryFirmwareUpdateSerializer %s Already in the middle of processing a device %s; ignoring current call ", v42, 0x16u);
      v50 = v68;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v50, -1, -1);
      MEMORY[0x2318C73A0](v42, -1, -1);
    }

    else
    {
    }

    return;
  }

  v23 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize;
  if (*(*&v0[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize] + 16))
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v24 = sub_22D05DA2C();
    __swift_project_value_buffer(v24, qword_27D9F65C0);
    v25 = v0;
    v26 = sub_22D05DA0C();
    v27 = sub_22D05DB5C();
    v28 = os_log_type_enabled(v26, v27);
    v67 = v22;
    if (!v28)
    {

      v31 = v70;
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v72[0] = v65;
    *v29 = 136315394;
    *(v29 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D060F80, v72);
    *(v29 + 12) = 2080;
    v30 = *&v0[v23];
    if (*(v30 + 16))
    {
      v63 = v27;

      v64 = v25;

      if (*(v30 + 16))
      {
        v31 = v70;
        v32 = v71;
        (*(v71 + 16))(v9, v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v70);

        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v33 = sub_22D05DCCC();
        v35 = v34;
        (*(v32 + 8))(v9, v31);
        v36 = sub_22D04BCD8(v33, v35, v72);

        *(v29 + 14) = v36;
        _os_log_impl(&dword_22D042000, v26, v63, "AccessoryFirmwareUpdateSerializer %s Processing next device %s", v29, 0x16u);
        v37 = v65;
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v37, -1, -1);
        MEMORY[0x2318C73A0](v29, -1, -1);

LABEL_21:
        v56 = *&v1[v23];
        if (*(v56 + 16))
        {
          v57 = v71;
          v58 = v68;
          (*(v71 + 16))(v68, v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v31);
          sub_22D04E49C(0, 1);
          (*(v57 + 56))(v58, 0, 1, v31);
          v59 = v69;
          swift_beginAccess();
          sub_22D04F564(v58, &v1[v59], &qword_27D9F6688, &qword_22D05EA50);
          swift_endAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          v60 = &v1[v59];
          v61 = v66;
          sub_22D04F688(v60, v66, &qword_27D9F6688, &qword_22D05EA50);
          if (v67(v61, 1, v31) != 1)
          {
            sub_22D04AF84(v61);
            swift_unknownObjectRelease();
            (*(v57 + 8))(v61, v31);
            return;
          }

LABEL_31:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (qword_27D9F6498 != -1)
  {
LABEL_27:
    swift_once();
  }

  v51 = sub_22D05DA2C();
  __swift_project_value_buffer(v51, qword_27D9F65C0);
  v52 = sub_22D05DA0C();
  v53 = sub_22D05DB3C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v72[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D060F80, v72);
    _os_log_impl(&dword_22D042000, v52, v53, "AccessoryFirmwareUpdateSerializer %s No more devices to serialize", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x2318C73A0](v55, -1, -1);
    MEMORY[0x2318C73A0](v54, -1, -1);
  }
}

uint64_t sub_22D0467A0(uint64_t a1, uint64_t *a2)
{
  sub_22D04F688(a1, v6, &unk_27D9F67A0, &unk_22D05E720);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  sub_22D04F564(v6, v3 + v4, &unk_27D9F67A0, &unk_22D05E720);
  return swift_endAccess();
}

uint64_t sub_22D04682C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  return sub_22D04F688(v1 + v3, a1, &unk_27D9F67A0, &unk_22D05E720);
}

uint64_t sub_22D046894(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  sub_22D04F564(a1, v1 + v3, &unk_27D9F67A0, &unk_22D05E720);
  return swift_endAccess();
}

char *AccessoryFirmwareUpdateManager.init(inClient:)(uint64_t a1)
{
  v27 = a1;
  v28 = sub_22D05DB7C();
  v3 = *(v28 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_22D05DB6C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_22D05DA6C() - 8) + 64);
  MEMORY[0x28223BE20]();
  *&v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue] = 0;
  v9 = &v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_currentBeaconList] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer] = 0;
  updated = type metadata accessor for AccessoryFirmwareUpdateManager();
  v30.receiver = v1;
  v30.super_class = updated;
  v11 = objc_msgSendSuper2(&v30, sel_init);
  v12 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  v13 = v11;
  sub_22D04E09C(a1, v11 + v12);
  swift_endAccess();
  sub_22D04E10C();
  sub_22D05DA5C();
  v29 = MEMORY[0x277D84F90];
  sub_22D04E158(&qword_281448138, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6608, &qword_22D05E750);
  sub_22D04E1A0();
  sub_22D05DC1C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v28);
  v14 = sub_22D05DB9C();
  v15 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue;
  v16 = *&v13[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue];
  *&v13[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue] = v14;

  v17 = sub_22D04E55C(MEMORY[0x277D84F90]);
  v18 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
  swift_beginAccess();
  v19 = *&v13[v18];
  *&v13[v18] = v17;

  v20 = *&v13[v15];
  v21 = objc_allocWithZone(type metadata accessor for AccessoryFirmwareUpdateSerializer(0));
  v22 = v20;
  v23 = sub_22D04E24C(v20, v13, &off_28403BAE0);

  sub_22D04F5CC(v27, &unk_27D9F67A0, &unk_22D05E720);
  v24 = *&v13[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer];
  *&v13[OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer] = v23;

  return v13;
}

void sub_22D046D40(int a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v60 = a1;
  v7 = sub_22D05D9EC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v62[3] = &type metadata for AirTag;
  v62[4] = sub_22D04E79C();
  v15 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  if (v15)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v16 = sub_22D05DA2C();
    v17 = __swift_project_value_buffer(v16, qword_27D9F65C0);
    v58 = v8[2];
    v59 = v8 + 2;
    v58(v14, a2, v7);
    v18 = a3;
    v19 = sub_22D05DA0C();
    v20 = sub_22D05DB5C();

    v55 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v56 = v8;
      v22 = v21;
      v53 = swift_slowAlloc();
      v62[0] = v53;
      *v22 = 136315906;
      *(v22 + 4) = sub_22D04BCD8(0xD000000000000045, 0x800000022D060BF0, v62);
      *(v22 + 12) = 1024;
      *(v22 + 14) = v60 & 1;
      *(v22 + 18) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v52 = v19;
      v23 = sub_22D05DCCC();
      v54 = v17;
      v25 = v24;
      v57 = v56[1];
      v57(v14, v7);
      v26 = sub_22D04BCD8(v23, v25, v62);

      *(v22 + 20) = v26;
      *(v22 + 28) = 2080;
      v61 = a3;
      v27 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6618, &qword_22D05E758);
      v28 = sub_22D05DAEC();
      v30 = sub_22D04BCD8(v28, v29, v62);

      *(v22 + 30) = v30;
      v31 = v52;
      _os_log_impl(&dword_22D042000, v52, v55, "AccessoryFirmwareUpdateManager: %s - isConnected %{BOOL}d, deviceUUID %s with error %s", v22, 0x26u);
      v32 = v53;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v32, -1, -1);
      MEMORY[0x2318C73A0](v22, -1, -1);
    }

    else
    {

      v57 = v8[1];
      v57(v14, v7);
    }

    v38 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    swift_beginAccess();
    v39 = *(v4 + v38);
    if (*(v39 + 16))
    {

      v40 = sub_22D04C4FC(a2);
      if (v41)
      {
        v42 = *(*(v39 + 56) + 8 * v40);

        if (v60)
        {
          sub_22D0543DC();
        }

        else
        {
          sub_22D0543FC(a3);
        }

        return;
      }
    }

    v58(v12, a2, v7);
    v43 = sub_22D05DA0C();
    v44 = sub_22D05DB4C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61 = v46;
      *v45 = 136315394;
      *(v45 + 4) = sub_22D04BCD8(0xD000000000000045, 0x800000022D060BF0, &v61);
      *(v45 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v47 = sub_22D05DCCC();
      v49 = v48;
      v57(v12, v7);
      v50 = sub_22D04BCD8(v47, v49, &v61);

      *(v45 + 14) = v50;
      _os_log_impl(&dword_22D042000, v43, v44, "AccessoryFirmwareUpdateManager: %s - no state machine found for device %s upon connection state change", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v46, -1, -1);
      MEMORY[0x2318C73A0](v45, -1, -1);
    }

    else
    {

      v57(v12, v7);
    }

    return;
  }

  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v33 = sub_22D05DA2C();
  __swift_project_value_buffer(v33, qword_27D9F65C0);
  v34 = sub_22D05DA0C();
  v35 = sub_22D05DB5C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v62[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_22D04BCD8(0xD000000000000045, 0x800000022D060BF0, v62);
    _os_log_impl(&dword_22D042000, v34, v35, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x2318C73A0](v37, -1, -1);
    MEMORY[0x2318C73A0](v36, -1, -1);
  }
}

void sub_22D047424(uint64_t a1, int a2)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v60[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v60[-v14];
  v70[3] = &type metadata for AirTag;
  v70[4] = sub_22D04E79C();
  v16 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v70);
  if (v16)
  {
    v61 = a2;
    v62 = v2;
    v64 = v10;
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v17 = sub_22D05DA2C();
    v18 = __swift_project_value_buffer(v17, qword_27D9F65C0);
    v67 = v6[2];
    v67(v15, a1, v5);
    v68 = v18;
    v19 = sub_22D05DA0C();
    v20 = sub_22D05DB5C();
    v21 = os_log_type_enabled(v19, v20);
    v65 = v6;
    v63 = a1;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v70[0] = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D060C40, v70);
      *(v22 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v24 = sub_22D05DCCC();
      v25 = v6;
      v27 = v26;
      v66 = v25[1];
      v66(v15, v5);
      v28 = sub_22D04BCD8(v24, v27, v70);

      *(v22 + 14) = v28;
      *(v22 + 22) = 1024;
      *(v22 + 24) = v61 & 1;
      _os_log_impl(&dword_22D042000, v19, v20, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s, isMaintained %{BOOL}d", v22, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v23, -1, -1);
      v29 = v22;
      a1 = v63;
      MEMORY[0x2318C73A0](v29, -1, -1);
    }

    else
    {

      v66 = v6[1];
      v66(v15, v5);
    }

    v67(v13, a1, v5);
    v35 = sub_22D05DA0C();
    v36 = sub_22D05DB3C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v70[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D060C40, v70);
      *(v37 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v39 = sub_22D05DCCC();
      v41 = v40;
      v66(v13, v5);
      v42 = sub_22D04BCD8(v39, v41, v70);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_22D042000, v35, v36, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s, relax the policy of needing a successful maintenance and instead use maintenance as a timer and kick off firmware update on every maintenance event", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v38, -1, -1);
      v43 = v37;
      a1 = v63;
      MEMORY[0x2318C73A0](v43, -1, -1);
    }

    else
    {

      v66(v13, v5);
    }

    v44 = v62;
    v45 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    v46 = swift_beginAccess();
    v47 = *(v44 + v45);
    MEMORY[0x28223BE20](v46);
    *&v60[-16] = a1;

    v48 = sub_22D047C98(sub_22D04F6F0, &v60[-32], v47);

    v49 = v64;
    if (v48)
    {
      v50 = *(v44 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer);
      if (v50)
      {
        v51 = v50;
        sub_22D044198(a1);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v67(v64, a1, v5);
      v52 = sub_22D05DA0C();
      v53 = sub_22D05DB4C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v69[0] = v55;
        *v54 = 136315394;
        *(v54 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D060C40, v69);
        *(v54 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v56 = sub_22D05DCCC();
        v58 = v57;
        v66(v49, v5);
        v59 = sub_22D04BCD8(v56, v58, v69);

        *(v54 + 14) = v59;
        _os_log_impl(&dword_22D042000, v52, v53, "AccessoryFirmwareUpdateManager: %s - failed to update state machine of %s since no record found", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v55, -1, -1);
        MEMORY[0x2318C73A0](v54, -1, -1);
      }

      else
      {

        v66(v49, v5);
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v30 = sub_22D05DA2C();
    __swift_project_value_buffer(v30, qword_27D9F65C0);
    v31 = sub_22D05DA0C();
    v32 = sub_22D05DB5C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v70[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D060C40, v70);
      _os_log_impl(&dword_22D042000, v31, v32, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x2318C73A0](v34, -1, -1);
      MEMORY[0x2318C73A0](v33, -1, -1);
    }
  }
}

uint64_t sub_22D047C98(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66B8, &qword_22D05EA78);
  v7 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v24 - v8;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v27 = a3;

  v16 = 0;
  while (v13)
  {
    v28 = v4;
LABEL_10:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = v27;
    v20 = *(v27 + 48);
    v21 = sub_22D05D9EC();
    (*(*(v21 - 8) + 16))(v9, v20 + *(*(v21 - 8) + 72) * v18, v21);
    *&v9[*(v25 + 48)] = *(*(v19 + 56) + 8 * v18);

    v22 = v28;
    v23 = v26(v9);
    v4 = v22;
    result = sub_22D04F5CC(v9, &qword_27D9F66B8, &qword_22D05EA78);
    if (v22)
    {
      goto LABEL_14;
    }

    v13 &= v13 - 1;
    if (v23)
    {
      a2 = 1;
LABEL_14:

      return a2 & 1;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      a2 = 0;
      goto LABEL_14;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v28 = v4;
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_22D047E8C(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v5 = *(*(updated - 1) + 64);
  v6 = MEMORY[0x28223BE20](updated);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v45[-v15];
  v49[3] = &type metadata for AirTag;
  v49[4] = sub_22D04E79C();
  v17 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  if ((v17 & 1) == 0)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v29 = sub_22D05DA2C();
    __swift_project_value_buffer(v29, qword_27D9F65C0);
    v20 = sub_22D05DA0C();
    v30 = sub_22D05DB5C();
    if (!os_log_type_enabled(v20, v30))
    {
      goto LABEL_14;
    }

    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v49[0] = v31;
    *v22 = 136315138;
    *(v22 + 4) = sub_22D04BCD8(0xD000000000000032, 0x800000022D060C80, v49);
    _os_log_impl(&dword_22D042000, v20, v30, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v28 = v31;
LABEL_13:
    MEMORY[0x2318C73A0](v28, -1, -1);
    MEMORY[0x2318C73A0](v22, -1, -1);
LABEL_14:

    return;
  }

  v18 = updated[5];
  if (*(a1 + v18) && (*(a1 + v18) != 1 || *(a1 + updated[7]) == 76))
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v19 = sub_22D05DA2C();
    __swift_project_value_buffer(v19, qword_27D9F65C0);
    sub_22D04E83C(a1, v8);
    v20 = sub_22D05DA0C();
    v21 = sub_22D05DB5C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49[0] = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_22D04BCD8(0xD000000000000032, 0x800000022D060C80, v49);
      *(v22 + 12) = 2080;
      sub_22D05D9EC();
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v24 = sub_22D05DCCC();
      v26 = v25;
      sub_22D04E8A0(v8);
      v27 = sub_22D04BCD8(v24, v26, v49);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_22D042000, v20, v21, "AccessoryFirmwareUpdateManager: %s - this device is not eligible for firmware update, deviceUUID %s", v22, 0x16u);
      swift_arrayDestroy();
      v28 = v23;
      goto LABEL_13;
    }

    sub_22D04E8A0(v8);
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v32 = sub_22D05DA2C();
    __swift_project_value_buffer(v32, qword_27D9F65C0);
    sub_22D04E83C(a1, v16);
    v33 = sub_22D05DA0C();
    v34 = sub_22D05DB5C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = v2;
      v36 = v35;
      v47 = swift_slowAlloc();
      v49[0] = v47;
      *v36 = 136315394;
      *(v36 + 4) = sub_22D04BCD8(0xD000000000000032, 0x800000022D060C80, v49);
      *(v36 + 12) = 2080;
      sub_22D05D9EC();
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v46 = v34;
      v37 = sub_22D05DCCC();
      v39 = v38;
      sub_22D04E8A0(v16);
      v40 = sub_22D04BCD8(v37, v39, v49);

      *(v36 + 14) = v40;
      _os_log_impl(&dword_22D042000, v33, v46, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s", v36, 0x16u);
      v41 = v47;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v41, -1, -1);
      MEMORY[0x2318C73A0](v36, -1, -1);
    }

    else
    {

      sub_22D04E8A0(v16);
    }

    v42 = (a1 + updated[6]);
    v43 = *v42;
    v44 = v42[1];
    LOBYTE(v49[0]) = *(a1 + v18);
    sub_22D049EB0(a1, v49, v43, v44);
    sub_22D054AC8();

    sub_22D04E83C(a1, v11);
    swift_beginAccess();
    sub_22D04CB5C(v14, v11);
    sub_22D04E8A0(v14);
    swift_endAccess();
  }
}

void sub_22D0484D8(uint64_t a1)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6620, &unk_22D05E760);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v57 - v3;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v68 = *(updated - 8);
  v6 = *(v68 + 64);
  v7 = MEMORY[0x28223BE20](updated);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = sub_22D05D9EC();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v71[3] = &type metadata for AirTag;
  v71[4] = sub_22D04E79C();
  v20 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  if (v20)
  {
    v60 = updated;
    if (qword_27D9F6498 != -1)
    {
LABEL_26:
      swift_once();
    }

    v21 = sub_22D05DA2C();
    v22 = __swift_project_value_buffer(v21, qword_27D9F65C0);
    v63 = v13[2];
    v64 = v13 + 2;
    v63(v19, v69, v12);
    v65 = v22;
    v23 = sub_22D05DA0C();
    v24 = sub_22D05DB5C();
    v25 = os_log_type_enabled(v23, v24);
    v62 = v13;
    v66 = v17;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v59 = v4;
      v27 = v13;
      v28 = v26;
      v58 = swift_slowAlloc();
      v71[0] = v58;
      *v28 = 136315394;
      *(v28 + 4) = sub_22D04BCD8(0xD000000000000035, 0x800000022D060CC0, v71);
      *(v28 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v29 = sub_22D05DCCC();
      v31 = v30;
      v32 = v27;
      v4 = v59;
      v61 = v32[1];
      v61(v19, v12);
      v33 = sub_22D04BCD8(v29, v31, v71);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_22D042000, v23, v24, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s", v28, 0x16u);
      v34 = v58;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v34, -1, -1);
      MEMORY[0x2318C73A0](v28, -1, -1);
    }

    else
    {

      v61 = v13[1];
      v61(v19, v12);
    }

    v13 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_currentBeaconList;
    v40 = v67;
    swift_beginAccess();
    v19 = *(v13 + v40);
    v41 = 1 << v19[32];
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v17 = v42 & *(v19 + 7);
    v43 = (v41 + 63) >> 6;
    v44 = *(v13 + v40);

    v45 = 0;
    if (v17)
    {
      while (1)
      {
        v46 = v45;
LABEL_18:
        sub_22D04E83C(*(v19 + 6) + *(v68 + 72) * (__clz(__rbit64(v17)) | (v46 << 6)), v11);
        sub_22D04E8FC(v11, v9);
        if (sub_22D05D9DC())
        {
          break;
        }

        v17 &= v17 - 1;
        sub_22D04E8A0(v9);
        v45 = v46;
        if (!v17)
        {
          goto LABEL_15;
        }
      }

      v56 = *(v60 + 24);
      LOBYTE(v70[0]) = v9[*(v60 + 20)];
      sub_22D04A854(0, v9, v70, *&v9[v56], *&v9[v56 + 8]);
      swift_beginAccess();
      sub_22D04D98C(v9, v4);
      sub_22D04F5CC(v4, &qword_27D9F6620, &unk_22D05E760);
      swift_endAccess();

      sub_22D04E8A0(v9);
    }

    else
    {
      while (1)
      {
LABEL_15:
        v46 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          goto LABEL_26;
        }

        if (v46 >= v43)
        {
          break;
        }

        v17 = *&v19[8 * v46 + 56];
        ++v45;
        if (v17)
        {
          goto LABEL_18;
        }
      }

      v47 = v66;
      v63(v66, v69, v12);
      v48 = sub_22D05DA0C();
      v49 = sub_22D05DB4C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v70[0] = v51;
        *v50 = 136315394;
        *(v50 + 4) = sub_22D04BCD8(0xD000000000000035, 0x800000022D060CC0, v70);
        *(v50 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v52 = sub_22D05DCCC();
        v54 = v53;
        v61(v47, v12);
        v55 = sub_22D04BCD8(v52, v54, v70);

        *(v50 + 14) = v55;
        _os_log_impl(&dword_22D042000, v48, v49, "AccessoryFirmwareUpdateManager: %s - unable to find device to remove, deviceUUID %s", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v51, -1, -1);
        MEMORY[0x2318C73A0](v50, -1, -1);
      }

      else
      {

        v61(v47, v12);
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v35 = sub_22D05DA2C();
    __swift_project_value_buffer(v35, qword_27D9F65C0);
    v36 = sub_22D05DA0C();
    v37 = sub_22D05DB5C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v71[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_22D04BCD8(0xD000000000000035, 0x800000022D060CC0, v71);
      _os_log_impl(&dword_22D042000, v36, v37, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x2318C73A0](v39, -1, -1);
      MEMORY[0x2318C73A0](v38, -1, -1);
    }
  }
}

void sub_22D048D0C(uint64_t a1, void *a2)
{
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v56[-v11];
  v66[3] = &type metadata for AirTag;
  v66[4] = sub_22D04E79C();
  v13 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  if (v13)
  {
    v64 = v2;
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v14 = sub_22D05DA2C();
    __swift_project_value_buffer(v14, qword_27D9F65C0);
    v61 = v6[2];
    v62 = v6 + 2;
    v61(v12, a1, v5);
    v15 = a2;
    v16 = sub_22D05DA0C();
    v17 = sub_22D05DB5C();
    v18 = os_log_type_enabled(v16, v17);
    v59 = v15;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v63 = v6;
      v20 = v19;
      v58 = swift_slowAlloc();
      v66[0] = v58;
      *v20 = 136315650;
      *(v20 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D060D00, v66);
      *(v20 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v57 = v17;
      v21 = sub_22D05DCCC();
      v22 = a1;
      v23 = v10;
      v25 = v24;
      v60 = v63[1];
      v60(v12, v5);
      v26 = sub_22D04BCD8(v21, v25, v66);
      v10 = v23;
      a1 = v22;

      *(v20 + 14) = v26;
      *(v20 + 22) = 2048;
      v27 = [v15 length];

      *(v20 + 24) = v27;
      _os_log_impl(&dword_22D042000, v16, v57, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s, uarpMessage length %ld", v20, 0x20u);
      v28 = v58;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v28, -1, -1);
      MEMORY[0x2318C73A0](v20, -1, -1);
    }

    else
    {

      v60 = v6[1];
      v60(v12, v5);
    }

    v34 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    v35 = v64;
    v36 = swift_beginAccess();
    v37 = *(v35 + v34);
    MEMORY[0x28223BE20](v36);
    *&v56[-16] = a1;

    v38 = sub_22D047C98(sub_22D04E960, &v56[-32], v37);

    if (v38)
    {
      v39 = *(v35 + v34);
      if (*(v39 + 16))
      {
        v40 = *(v35 + v34);

        v41 = sub_22D04C4FC(a1);
        if (v42)
        {
          v43 = *(*(v39 + 56) + 8 * v41);
          swift_retain_n();

          v44 = sub_22D05D96C();
          v46 = v45;
          sub_22D054E30(v44, v45);

          sub_22D04E990(v44, v46);
        }

        else
        {
        }
      }
    }

    else
    {
      v61(v10, a1, v5);
      v47 = sub_22D05DA0C();
      v48 = sub_22D05DB4C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v65[0] = v50;
        *v49 = 136315394;
        *(v49 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D060D00, v65);
        *(v49 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v51 = sub_22D05DCCC();
        v52 = v10;
        v54 = v53;
        v60(v52, v5);
        v55 = sub_22D04BCD8(v51, v54, v65);

        *(v49 + 14) = v55;
        _os_log_impl(&dword_22D042000, v47, v48, "AccessoryFirmwareUpdateManager: %s - failed to update state machine of %s since no record found", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v50, -1, -1);
        MEMORY[0x2318C73A0](v49, -1, -1);
      }

      else
      {

        v60(v10, v5);
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v29 = sub_22D05DA2C();
    __swift_project_value_buffer(v29, qword_27D9F65C0);
    v30 = sub_22D05DA0C();
    v31 = sub_22D05DB5C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v66[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D060D00, v66);
      _os_log_impl(&dword_22D042000, v30, v31, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x2318C73A0](v33, -1, -1);
      MEMORY[0x2318C73A0](v32, -1, -1);
    }
  }
}

void sub_22D049448(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D05D9EC();
  v87 = *(v5 - 8);
  v6 = v87[8];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v86 = &v76 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v76 - v12;
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v92 = &type metadata for AirTag;
  v93 = sub_22D04E79C();
  v17 = sub_22D05D9FC();
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  if (v17)
  {
    v84 = v2;
    v85 = v14;
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v81 = v9;
    v18 = sub_22D05DA2C();
    v19 = __swift_project_value_buffer(v18, qword_27D9F65C0);
    v82 = v87[2];
    v82(v13, a1, v5);
    v20 = v85;
    sub_22D04E9E4(v85, v15, v16);
    v83 = v19;
    v21 = sub_22D05DA0C();
    v22 = sub_22D05DB4C();
    sub_22D04E9FC(v20, v15, v16);
    v23 = os_log_type_enabled(v21, v22);
    v80 = v15;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v79 = a1;
      v25 = v24;
      v26 = swift_slowAlloc();
      v77 = v5;
      v27 = v26;
      v76 = v26;
      v78 = swift_slowAlloc();
      v91[0] = v78;
      *v25 = 136315650;
      *(v25 + 4) = sub_22D04BCD8(0xD000000000000022, 0x800000022D060D40, v91);
      *(v25 + 12) = 2112;
      sub_22D04EA58();
      swift_allocError();
      *v28 = v20;
      *(v28 + 8) = v15;
      *(v28 + 16) = v16;
      sub_22D04E9E4(v20, v15, v16);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v29;
      *v27 = v29;
      v5 = v77;
      *(v25 + 22) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v30 = sub_22D05DCCC();
      v32 = v31;
      v33 = v87[1];
      v33(v13, v5);
      v34 = sub_22D04BCD8(v30, v32, v91);
      v35 = v33;

      *(v25 + 24) = v34;
      _os_log_impl(&dword_22D042000, v21, v22, "AccessoryFirmwareUpdateManager: %s - failed with error: error %@ for device %s", v25, 0x20u);
      v36 = v76;
      sub_22D04F5CC(v76, &qword_27D9F6630, &qword_22D05EB60);
      MEMORY[0x2318C73A0](v36, -1, -1);
      v37 = v78;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v37, -1, -1);
      v38 = v25;
      a1 = v79;
      MEMORY[0x2318C73A0](v38, -1, -1);
    }

    else
    {

      v35 = v87[1];
      v35(v13, v5);
    }

    v44 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    v45 = v84;
    v46 = swift_beginAccess();
    v47 = *(v45 + v44);
    MEMORY[0x28223BE20](v46);
    *(&v76 - 2) = a1;

    v48 = sub_22D047C98(sub_22D04F6F0, (&v76 - 4), v47);

    if (v48)
    {
      v49 = *(v45 + v44);
      if (*(v49 + 16))
      {
        v50 = *(v45 + v44);

        v51 = sub_22D04C4FC(a1);
        if (v52)
        {
          v53 = *(*(v49 + 56) + 8 * v51);

          if (v16 <= 1)
          {
            if (!v16)
            {
              sub_22D04EA58();
              v70 = swift_allocError();
              v71 = v80;
              *v72 = v85;
              *(v72 + 8) = v71;
              *(v72 + 16) = 0;

              sub_22D05441C(v70);

              return;
            }
          }

          else if (v16 == 2 || v16 == 3)
          {
LABEL_34:

            return;
          }

          v73 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
          swift_beginAccess();
          sub_22D04F688(v45 + v73, v91, &unk_27D9F67A0, &unk_22D05E720);
          if (v92)
          {
            sub_22D04F500(v91, v88);
            sub_22D04F5CC(v91, &unk_27D9F67A0, &unk_22D05E720);
            v74 = v89;
            v75 = v90;
            __swift_project_boxed_opaque_existential_1(v88, v89);
            (*(v75 + 24))(a1, v74, v75);
            __swift_destroy_boxed_opaque_existential_1Tm(v88);
          }

          else
          {
            sub_22D04F5CC(v91, &unk_27D9F67A0, &unk_22D05E720);
          }

          sub_22D0543FC(0);
          goto LABEL_34;
        }
      }

      v82(v86, a1, v5);
      v55 = sub_22D05DA0C();
      v56 = sub_22D05DB4C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v91[0] = v58;
        *v57 = 136315394;
        *(v57 + 4) = sub_22D04BCD8(0xD000000000000022, 0x800000022D060D40, v91);
        *(v57 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v65 = v86;
        v66 = sub_22D05DCCC();
        v68 = v67;
        v35(v65, v5);
        v69 = sub_22D04BCD8(v66, v68, v91);

        *(v57 + 14) = v69;
        v63 = "AccessoryFirmwareUpdateManager: %s - received error for accessory that doesn't have an active statemachine with deviceUUID %s";
        goto LABEL_25;
      }

      v64 = v86;
    }

    else
    {
      v54 = v81;
      v82(v81, a1, v5);
      v55 = sub_22D05DA0C();
      v56 = sub_22D05DB4C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v91[0] = v58;
        *v57 = 136315394;
        *(v57 + 4) = sub_22D04BCD8(0xD000000000000022, 0x800000022D060D40, v91);
        *(v57 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v59 = sub_22D05DCCC();
        v61 = v60;
        v35(v54, v5);
        v62 = sub_22D04BCD8(v59, v61, v91);

        *(v57 + 14) = v62;
        v63 = "AccessoryFirmwareUpdateManager: %s - received error for accessory that is not monitored with deviceUUID %s";
LABEL_25:
        _os_log_impl(&dword_22D042000, v55, v56, v63, v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v58, -1, -1);
        MEMORY[0x2318C73A0](v57, -1, -1);

        return;
      }

      v64 = v54;
    }

    v35(v64, v5);
    return;
  }

  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v39 = sub_22D05DA2C();
  __swift_project_value_buffer(v39, qword_27D9F65C0);
  v40 = sub_22D05DA0C();
  v41 = sub_22D05DB5C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v91[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_22D04BCD8(0xD000000000000022, 0x800000022D060D40, v91);
    _os_log_impl(&dword_22D042000, v40, v41, "AccessoryFirmwareUpdateManager: %s - feature flag is not enabled", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x2318C73A0](v43, -1, -1);
    MEMORY[0x2318C73A0](v42, -1, -1);
  }
}

uint64_t sub_22D049EB0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v76 = a3;
  v77 = a4;
  v8 = sub_22D05D9BC();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v8);
  v78 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D05D9EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v84 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v72 - v16;
  v75 = *a2;
  v18 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
  swift_beginAccess();
  v81 = v18;
  v19 = *(v5 + v18);
  v85[2] = a1;

  v20 = sub_22D047C98(sub_22D04F6F0, v85, v19);

  v82 = v11;
  v83 = v12;
  if (v20)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v21 = sub_22D05DA2C();
    __swift_project_value_buffer(v21, qword_27D9F65C0);
    (*(v12 + 16))(v17, a1, v11);
    v22 = sub_22D05DA0C();
    v23 = sub_22D05DB4C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v89[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_22D04BCD8(0xD00000000000004ALL, 0x800000022D0610D0, v89);
      *(v24 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v26 = sub_22D05DCCC();
      v27 = a1;
      v29 = v28;
      (*(v83 + 8))(v17, v82);
      v30 = sub_22D04BCD8(v26, v29, v89);
      a1 = v27;

      *(v24 + 14) = v30;
      _os_log_impl(&dword_22D042000, v22, v23, "AccessoryFirmwareUpdateManager: %s - creating a state machine for an existing device %s", v24, 0x16u);
      swift_arrayDestroy();
      v31 = v25;
      v12 = v83;
      MEMORY[0x2318C73A0](v31, -1, -1);
      MEMORY[0x2318C73A0](v24, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v17, v11);
    }
  }

  v32 = type metadata accessor for AccessoryUarpDeviceBridge();
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[4] = 0;
  swift_unknownObjectWeakInit();
  v33[5] = 0x302E302E302E30;
  v33[6] = 0xE700000000000000;
  v34 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_client;
  swift_beginAccess();
  result = sub_22D04F688(v5 + v34, v89, &unk_27D9F67A0, &unk_22D05E720);
  if (!v89[3])
  {
    __break(1u);
    goto LABEL_16;
  }

  v74 = v5;
  v36 = *(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_queue);
  if (!v36)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v72[0] = *(v12 + 16);
  v37 = v84;
  v73 = a1;
  v38 = v82;
  (v72[0])(v84, a1, v82);
  v88[3] = v32;
  v88[4] = &off_28403BC10;
  v88[0] = v33;
  updated = type metadata accessor for AccessoryFirmwareUpdateDeviceStateMachine();
  v40 = *(updated + 48);
  v41 = *(updated + 52);
  v42 = swift_allocObject();
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v88, v32);
  v72[1] = v72;
  v44 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (v72 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v46;
  v87[3] = v32;
  v87[4] = &off_28403BC10;
  v87[0] = v48;
  *(v42 + 16) = 0x404E000000000000;
  v49 = (v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_availableFirmwareVersion);
  *v49 = 0;
  v49[1] = 0;
  *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer) = 0;
  v50 = v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 0;
  v51 = v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0;
  *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateMachineMonitor + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError) = 0;
  sub_22D04F500(v87, v86);
  swift_beginAccess();
  swift_retain_n();
  v52 = v36;
  sub_22D04F564(v86, v50, &qword_27D9F66B0, &qword_22D05EA70);
  swift_endAccess();
  sub_22D04F500(v89, v86);
  swift_beginAccess();
  sub_22D04F564(v86, v51, &unk_27D9F67A0, &unk_22D05E720);
  swift_endAccess();
  *(v42 + 24) = v52;
  (v72[0])(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v37, v38);
  *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceType) = v75;
  v53 = (v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
  v54 = v77;
  *v53 = v76;
  v53[1] = v54;
  v55 = (v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_availableFirmwareVersion);
  v56 = *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_availableFirmwareVersion + 8);
  *v55 = 0;
  v55[1] = 0;
  v57 = v52;

  *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentState) = 0;
  *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateTransitionTables) = MEMORY[0x277D84F98];
  *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_isConnected) = 0;
  v58 = v78;
  sub_22D05D98C();
  sub_22D05D99C();
  v60 = v59;
  (*(v79 + 8))(v58, v80);
  *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime) = v60;
  sub_22D05635C();
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v61 = sub_22D05DA2C();
  __swift_project_value_buffer(v61, qword_27D9F65C0);
  v62 = sub_22D05DA0C();
  v63 = sub_22D05DB5C();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v74;
  if (v64)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v86[0] = v67;
    *v66 = 136315138;
    *(v66 + 4) = sub_22D04BCD8(0xD000000000000090, 0x800000022D061030, v86);
    _os_log_impl(&dword_22D042000, v62, v63, "AccessoryFirmwareUpdateDeviceStateMachine: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x2318C73A0](v67, -1, -1);
    MEMORY[0x2318C73A0](v66, -1, -1);
  }

  else
  {
  }

  (*(v83 + 8))(v84, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v87);
  v68 = v73;
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  v69 = v81;
  swift_beginAccess();

  v70 = *(v65 + v69);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = *(v65 + v69);
  *(v65 + v69) = 0x8000000000000000;
  sub_22D05BBE8(v42, v68, isUniquelyReferenced_nonNull_native);
  *(v65 + v69) = v88[0];
  swift_endAccess();

  *(v42 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateMachineMonitor + 8) = &off_28403BAD0;
  swift_unknownObjectWeakAssign();
  return v42;
}

void sub_22D04A854(char a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_22D05D9EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  if (a1)
  {
    v52[0] = *a3;
    sub_22D049EB0(a2, v52, a4, a5);
    sub_22D054AC8();
  }

  else
  {
    v19 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
    v20 = swift_beginAccess();
    v21 = *(v5 + v19);
    MEMORY[0x28223BE20](v20);
    *(&v48 - 2) = a2;

    v22 = sub_22D047C98(sub_22D04F6F0, (&v48 - 4), v21);

    if (v22)
    {
      v50 = v5;
      v23 = *(v5 + v19);
      if (*(v23 + 16))
      {

        v24 = sub_22D04C4FC(a2);
        if (v25)
        {
          v26 = *(*(v23 + 56) + 8 * v24);

          sub_22D054AE8();
        }

        else
        {
        }
      }

      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v36 = sub_22D05DA2C();
      __swift_project_value_buffer(v36, qword_27D9F65C0);
      (*(v12 + 16))(v18, a2, v11);
      v37 = sub_22D05DA0C();
      v38 = sub_22D05DB5C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v51[0] = v49;
        *v39 = 136315394;
        *(v39 + 4) = sub_22D04BCD8(0xD000000000000060, 0x800000022D061120, v51);
        *(v39 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v40 = sub_22D05DCCC();
        v42 = v41;
        (*(v12 + 8))(v18, v11);
        v43 = sub_22D04BCD8(v40, v42, v51);

        *(v39 + 14) = v43;
        _os_log_impl(&dword_22D042000, v37, v38, "AccessoryFirmwareUpdateManager: %s - removing state machine of %s due to an unpairing event", v39, 0x16u);
        v44 = v49;
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v44, -1, -1);
        MEMORY[0x2318C73A0](v39, -1, -1);
      }

      else
      {

        (*(v12 + 8))(v18, v11);
      }

      v45 = v50;
      swift_beginAccess();
      sub_22D04AEBC(a2);
      swift_endAccess();

      v46 = *(v45 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer);
      if (v46)
      {
        v47 = v46;
        sub_22D044C28(a2);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v27 = sub_22D05DA2C();
      __swift_project_value_buffer(v27, qword_27D9F65C0);
      (*(v12 + 16))(v16, a2, v11);
      v28 = sub_22D05DA0C();
      v29 = sub_22D05DB5C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v51[0] = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_22D04BCD8(0xD000000000000060, 0x800000022D061120, v51);
        *(v30 + 12) = 2080;
        sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v32 = sub_22D05DCCC();
        v34 = v33;
        (*(v12 + 8))(v16, v11);
        v35 = sub_22D04BCD8(v32, v34, v51);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_22D042000, v28, v29, "AccessoryFirmwareUpdateManager: %s - failed to remove state machine of %s since no record found", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v31, -1, -1);
        MEMORY[0x2318C73A0](v30, -1, -1);
      }

      else
      {

        (*(v12 + 8))(v16, v11);
      }
    }
  }
}

uint64_t sub_22D04AEBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_22D04C4FC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22D05C194();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_22D05D9EC();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_22D05B62C(v6, v9);
  *v2 = v9;
  return v12;
}

void sub_22D04AF84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22D05D9EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v38[-v10];
  v12 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_deviceFirmwareUpdateStateMachines;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v42 = a1;

  v14 = sub_22D047C98(sub_22D04F6F0, &v41, v13);

  if (v14)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v15 = sub_22D05DA2C();
    __swift_project_value_buffer(v15, qword_27D9F65C0);
    (*(v5 + 16))(v11, a1, v4);
    v16 = sub_22D05DA0C();
    v17 = sub_22D05DB5C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43[0] = v40;
      *v18 = 136315394;
      *(v18 + 4) = sub_22D04BCD8(0xD00000000000002DLL, 0x800000022D060F50, v43);
      *(v18 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v39 = v17;
      v19 = sub_22D05DCCC();
      v21 = v20;
      (*(v5 + 8))(v11, v4);
      v22 = sub_22D04BCD8(v19, v21, v43);

      *(v18 + 14) = v22;
      _os_log_impl(&dword_22D042000, v16, v39, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s", v18, 0x16u);
      v23 = v40;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v23, -1, -1);
      MEMORY[0x2318C73A0](v18, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    v33 = *(v2 + v12);
    if (*(v33 + 16))
    {
      v34 = *(v2 + v12);

      v35 = sub_22D04C4FC(a1);
      if (v36)
      {
        v37 = *(*(v33 + 56) + 8 * v35);
        swift_retain_n();

        sub_22D054738(1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v24 = sub_22D05DA2C();
    __swift_project_value_buffer(v24, qword_27D9F65C0);
    (*(v5 + 16))(v9, a1, v4);
    v25 = sub_22D05DA0C();
    v26 = sub_22D05DB4C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_22D04BCD8(0xD00000000000002DLL, 0x800000022D060F50, v43);
      *(v27 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v29 = sub_22D05DCCC();
      v31 = v30;
      (*(v5 + 8))(v9, v4);
      v32 = sub_22D04BCD8(v29, v31, v43);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_22D042000, v25, v26, "AccessoryFirmwareUpdateManager: %s - failed to process %s because we don't have a record of it", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v28, -1, -1);
      MEMORY[0x2318C73A0](v27, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

void sub_22D04B4FC(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3)
{
  v4 = v3;
  v7 = a3;
  v8 = sub_22D05D9EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v7)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v13 = sub_22D05DA2C();
    __swift_project_value_buffer(v13, qword_27D9F65C0);
    (*(v9 + 16))(v12, a1, v8);
    v14 = sub_22D05DA0C();
    v15 = sub_22D05DB5C();
    if (os_log_type_enabled(v14, v15))
    {
      v34 = v4;
      v16 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v16 = 136315906;
      *(v16 + 4) = sub_22D04BCD8(0xD000000000000033, 0x800000022D060F10, &v35);
      *(v16 + 12) = 2080;
      sub_22D04E158(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v17 = sub_22D05DCCC();
      v19 = v18;
      (*(v9 + 8))(v12, v8);
      v20 = sub_22D04BCD8(v17, v19, &v35);

      *(v16 + 14) = v20;
      *(v16 + 22) = 2080;
      v21 = 0xEA0000000000676ELL;
      v22 = 0x697463656E6E6F63;
      if (a2 != 2)
      {
        v22 = 0x6C62616863616572;
        v21 = 0xE900000000000065;
      }

      v23 = 0xEC00000079627261;
      v24 = 0x654E656369766564;
      if (!a2)
      {
        v24 = 0x6863616552746F6ELL;
        v23 = 0xEC000000656C6261;
      }

      if (a2 <= 1u)
      {
        v25 = v24;
      }

      else
      {
        v25 = v22;
      }

      if (a2 <= 1u)
      {
        v26 = v23;
      }

      else
      {
        v26 = v21;
      }

      v27 = sub_22D04BCD8(v25, v26, &v35);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2080;
      v28 = sub_22D04BCD8(0x6863616552746F6ELL, 0xEC000000656C6261, &v35);

      *(v16 + 34) = v28;
      _os_log_impl(&dword_22D042000, v14, v15, "AccessoryFirmwareUpdateManager: %s - deviceUUID %s - transitioned from %s to %s - completed processing maintenance event", v16, 0x2Au);
      v29 = v33;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v29, -1, -1);
      MEMORY[0x2318C73A0](v16, -1, -1);

      v4 = v34;
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v30 = *(v4 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate30AccessoryFirmwareUpdateManager_accessoryFirmwareUpdateSerializer);
    if (v30)
    {
      v31 = v30;
      sub_22D045764(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

id AccessoryFirmwareUpdateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_22D04B96C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22D04BA30(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

size_t sub_22D04BA7C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6690, &qword_22D05EA58);
  v10 = *(sub_22D05D9EC() - 8);
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
  v15 = *(sub_22D05D9EC() - 8);
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

uint64_t sub_22D04BC7C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22D04BCD8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22D04BCD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22D04BDA4(v11, 0, 0, 1, a1, a2);
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
    sub_22D04F62C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_22D04BDA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22D04BEB0(a5, a6);
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
    result = sub_22D05DC7C();
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

uint64_t sub_22D04BEB0(uint64_t a1, unint64_t a2)
{
  v4 = sub_22D04BEFC(a1, a2);
  sub_22D04C02C(&unk_28403B958);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22D04BEFC(uint64_t a1, unint64_t a2)
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

  v6 = sub_22D04C118(v5, 0);
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

  result = sub_22D05DC7C();
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
        v10 = sub_22D05DB1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22D04C118(v10, 0);
        result = sub_22D05DC5C();
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

uint64_t sub_22D04C02C(uint64_t result)
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

  result = sub_22D04C18C(result, v12, 1, v3);
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

void *sub_22D04C118(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66C0, &qword_22D05EA80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_22D04C18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66C0, &qword_22D05EA80);
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

_BYTE **sub_22D04C280(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_22D04C290(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

size_t sub_22D04C304(size_t a1, int64_t a2, char a3)
{
  result = sub_22D04C324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22D04C324(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6690, &qword_22D05EA58);
  v10 = *(sub_22D05D9EC() - 8);
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
  v15 = *(sub_22D05D9EC() - 8);
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

unint64_t sub_22D04C4FC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
  v5 = sub_22D05DAAC();

  return sub_22D04C6E4(a1, v5);
}

unint64_t sub_22D04C594(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22D05DD5C();
  MEMORY[0x2318C6EA0](a1);
  v4 = sub_22D05DD8C();

  return sub_22D04C8A4(a1, v4);
}

unint64_t sub_22D04C600(int a1)
{
  v3 = *(v1 + 40);
  sub_22D05DD5C();
  sub_22D052498(v6, a1);
  v4 = sub_22D05DD8C();

  return sub_22D04C914(a1, v4);
}

unint64_t sub_22D04C66C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22D05DD5C();
  sub_22D05DAFC();
  v6 = sub_22D05DD8C();

  return sub_22D04CAA4(a1, a2, v6);
}

unint64_t sub_22D04C6E4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_22D05D9EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_22D04E158(&qword_27D9F66A0, MEMORY[0x277CC95F0]);
      v16 = sub_22D05DACC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_22D04C8A4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22D04C914(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      v8 = v7 >> 5;
      if (v7 >> 5 <= 1)
      {
        if (v8)
        {
          if ((a1 & 0xE0) != 0x20)
          {
            goto LABEL_4;
          }
        }

        else if (a1 > 0x1Fu)
        {
          goto LABEL_4;
        }

        if (((v7 ^ a1) & 1) == 0)
        {
          return result;
        }
      }

      else if (v8 == 2)
      {
        if ((a1 & 0xE0) == 0x40 && ((v7 ^ a1) & 0x1F) == 0)
        {
          return result;
        }
      }

      else if (v8 == 4)
      {
        if (a1 == 128)
        {
          return result;
        }
      }

      else if (*(*(v2 + 48) + result) > 0x63u)
      {
        if (*(*(v2 + 48) + result) > 0x65u)
        {
          if (v7 == 102)
          {
            if (a1 == 102)
            {
              return result;
            }
          }

          else if (a1 == 103)
          {
            return result;
          }
        }

        else if (v7 == 100)
        {
          if (a1 == 100)
          {
            return result;
          }
        }

        else if (a1 == 101)
        {
          return result;
        }
      }

      else if (*(*(v2 + 48) + result) > 0x61u)
      {
        if (v7 == 98)
        {
          if (a1 == 98)
          {
            return result;
          }
        }

        else if (a1 == 99)
        {
          return result;
        }
      }

      else if (v7 == 96)
      {
        if (a1 == 96)
        {
          return result;
        }
      }

      else if (a1 == 97)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22D04CAA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22D05DCDC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22D04CB5C(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v5 = *(updated - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](updated);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - v10;
  v30 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
  sub_22D05DABC();
  v13 = updated[5];
  MEMORY[0x2318C6EA0](*(a2 + v13));
  v14 = (a2 + updated[6]);
  v15 = *v14;
  v33 = v14[1];
  v34 = v15;
  sub_22D05DAFC();
  v32 = *(a2 + updated[7]);
  MEMORY[0x2318C6EA0]();
  v16 = sub_22D05DD8C();
  v17 = -1 << *(v11 + 32);
  v18 = v16 & ~v17;
  if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_22D04E83C(*(v11 + 48) + v20 * v18, v9);
      if ((sub_22D05D9DC() & 1) != 0 && v9[updated[5]] == *(a2 + v13))
      {
        v21 = &v9[updated[6]];
        v22 = *v21 == v34 && *(v21 + 1) == v33;
        if (v22 || (sub_22D05DCDC()) && *&v9[updated[7]] == v32)
        {
          break;
        }
      }

      sub_22D04E8A0(v9);
      v18 = (v18 + 1) & v19;
      if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_22D04E8A0(v9);
    sub_22D04E8A0(a2);
    sub_22D04E83C(*(v11 + 48) + v20 * v18, v31);
    return 0;
  }

  else
  {
LABEL_13:
    v23 = v30;
    v24 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v29;
    sub_22D04E83C(a2, v29);
    v35 = *v23;
    sub_22D04D194(v26, v18, isUniquelyReferenced_nonNull_native);
    *v23 = v35;
    sub_22D04E8FC(a2, v31);
    return 1;
  }
}

uint64_t sub_22D04CE34(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v41 = *(updated - 8);
  v42 = updated;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](updated);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66A8, &qword_22D05EA68);
  result = sub_22D05DC4C();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v2;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v41 + 72);
      sub_22D04E8FC(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      sub_22D05DD5C();
      sub_22D05D9EC();
      sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
      sub_22D05DABC();
      v26 = v42;
      MEMORY[0x2318C6EA0](v7[*(v42 + 20)]);
      v27 = &v7[*(v26 + 24)];
      v28 = *v27;
      v29 = *(v27 + 1);
      sub_22D05DAFC();
      MEMORY[0x2318C6EA0](*&v7[*(v26 + 28)]);
      result = sub_22D05DD8C();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22D04E8FC(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v40;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v37 = 1 << *(v8 + 32);
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    v2 = v39;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22D04D194(uint64_t a1, unint64_t a2, char a3)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v8 = *(updated - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](updated);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v32 = v8;
  v33 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    sub_22D04CE34(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22D04D478();
      goto LABEL_20;
    }

    sub_22D04D65C(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
  sub_22D05DABC();
  v16 = updated[5];
  MEMORY[0x2318C6EA0](*(a1 + v16));
  v17 = (a1 + updated[6]);
  v18 = v17[1];
  v34 = *v17;
  sub_22D05DAFC();
  v31 = *(a1 + updated[7]);
  MEMORY[0x2318C6EA0]();
  v19 = sub_22D05DD8C();
  v20 = -1 << *(v14 + 32);
  a2 = v19 & ~v20;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v8 + 72);
    do
    {
      sub_22D04E83C(*(v14 + 48) + v22 * a2, v11);
      if ((sub_22D05D9DC() & 1) != 0 && v11[updated[5]] == *(a1 + v16))
      {
        v23 = &v11[updated[6]];
        v24 = *v23 == v34 && *(v23 + 1) == v18;
        if (v24 || (sub_22D05DCDC()) && *&v11[updated[7]] == v31)
        {
          goto LABEL_23;
        }
      }

      sub_22D04E8A0(v11);
      a2 = (a2 + 1) & v21;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_20:
  v25 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22D04E8FC(a1, *(v25 + 48) + *(v32 + 72) * a2);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_23:
  sub_22D04E8A0(v11);
  result = sub_22D05DCEC();
  __break(1u);
  return result;
}

void *sub_22D04D478()
{
  v1 = v0;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v3 = *(updated - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](updated - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66A8, &qword_22D05EA68);
  v7 = *v0;
  v8 = sub_22D05DC3C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_22D04E83C(*(v7 + 48) + v22, v6);
        result = sub_22D04E8FC(v6, *(v9 + 48) + v22);
      }

      while (v17);
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
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_22D04D65C(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v40 = *(updated - 8);
  v41 = updated;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](updated);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66A8, &qword_22D05EA68);
  result = sub_22D05DC4C();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v40 + 72);
      sub_22D04E83C(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      sub_22D05DD5C();
      sub_22D05D9EC();
      sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
      sub_22D05DABC();
      v26 = v41;
      MEMORY[0x2318C6EA0](v7[*(v41 + 20)]);
      v27 = &v7[*(v26 + 24)];
      v28 = *v27;
      v29 = *(v27 + 1);
      sub_22D05DAFC();
      MEMORY[0x2318C6EA0](*&v7[*(v26 + 28)]);
      result = sub_22D05DD8C();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22D04E8FC(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v39;
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

        v2 = v38;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_22D04D98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v29 = *(updated - 1);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](updated);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  v8 = *v2;
  v9 = *(*v2 + 40);
  sub_22D05DD5C();
  sub_22D05D9EC();
  sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
  sub_22D05DABC();
  v10 = updated[5];
  MEMORY[0x2318C6EA0](*(a1 + v10));
  v11 = (a1 + updated[6]);
  v12 = *v11;
  v31 = v11[1];
  v32 = v12;
  sub_22D05DAFC();
  v30 = *(a1 + updated[7]);
  MEMORY[0x2318C6EA0]();
  v13 = sub_22D05DD8C();
  v14 = -1 << *(v8 + 32);
  v15 = v13 & ~v14;
  if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return (*(v29 + 56))(v28, 1, 1, updated);
  }

  v16 = ~v14;
  v17 = *(v29 + 72);
  while (1)
  {
    sub_22D04E83C(*(v8 + 48) + v17 * v15, v7);
    if ((sub_22D05D9DC() & 1) != 0 && v7[updated[5]] == *(a1 + v10))
    {
      v18 = &v7[updated[6]];
      v19 = *v18 == v32 && *(v18 + 1) == v31;
      if (v19 || (sub_22D05DCDC()) && *&v7[updated[7]] == v30)
      {
        break;
      }
    }

    sub_22D04E8A0(v7);
    v15 = (v15 + 1) & v16;
    if (((*(v8 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return (*(v29 + 56))(v28, 1, 1, updated);
    }
  }

  sub_22D04E8A0(v7);
  v21 = v27;
  v22 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v21;
  v33 = *v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22D04D478();
    v24 = v33;
  }

  v25 = v28;
  sub_22D04E8FC(*(v24 + 48) + v17 * v15, v28);
  sub_22D04DC58(v15);
  *v21 = v33;
  return (*(v29 + 56))(v25, 0, 1, updated);
}

uint64_t sub_22D04DC58(unint64_t a1)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  v34 = *(updated - 8);
  v3 = *(v34 + 64);
  result = MEMORY[0x28223BE20](updated);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    v12 = *v1;

    v13 = a1;
    v14 = sub_22D05DC2C();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v15 = (v14 + 1) & v11;
      v16 = *(v34 + 72);
      v17 = v11;
      v35 = v8;
      do
      {
        v18 = v16;
        v19 = v16 * v10;
        sub_22D04E83C(*(v7 + 48) + v16 * v10, v6);
        v20 = v7;
        v21 = *(v7 + 40);
        sub_22D05DD5C();
        sub_22D05D9EC();
        sub_22D04E158(&qword_27D9F65D8, MEMORY[0x277CC95F0]);
        v22 = v15;
        v23 = v17;
        sub_22D05DABC();
        v24 = updated;
        MEMORY[0x2318C6EA0](v6[*(updated + 20)]);
        v25 = &v6[*(v24 + 24)];
        v26 = *v25;
        v27 = *(v25 + 1);
        sub_22D05DAFC();
        MEMORY[0x2318C6EA0](*&v6[*(v24 + 28)]);
        v28 = sub_22D05DD8C();
        sub_22D04E8A0(v6);
        v29 = v28 & v23;
        v17 = v23;
        v15 = v22;
        if (v13 >= v22)
        {
          if (v29 < v22)
          {
            v7 = v20;
          }

          else
          {
            v7 = v20;
            if (v13 >= v29)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v7 = v20;
          if (v29 >= v15 || v13 >= v29)
          {
LABEL_13:
            v16 = v18;
            v30 = v18 * v13;
            if (v18 * v13 < v19 || *(v7 + 48) + v18 * v13 >= (*(v7 + 48) + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              v13 = v10;
            }

            else
            {
              v13 = v10;
              if (v30 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                v13 = v10;
              }
            }

            goto LABEL_6;
          }
        }

        v16 = v18;
LABEL_6:
        v10 = (v10 + 1) & v17;
        v8 = v35;
      }

      while (((*(v35 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v13) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v31 = *(v7 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v33;
    ++*(v7 + 36);
  }

  return result;
}

BOOL _s23AccessoryFirmwareUpdate0abcA0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22D05D9DC() & 1) == 0)
  {
    return 0;
  }

  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  if (*(a1 + updated[5]) != *(a2 + updated[5]))
  {
    return 0;
  }

  v5 = updated[6];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v7 == *v8 && v6 == v8[1])
  {
    return *(a1 + updated[7]) == *(a2 + updated[7]);
  }

  v10 = updated;
  v11 = sub_22D05DCDC();
  updated = v10;
  return (v11 & 1) != 0 && *(a1 + updated[7]) == *(a2 + updated[7]);
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

uint64_t sub_22D04E09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F67A0, &unk_22D05E720);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_22D04E10C()
{
  result = qword_281448130;
  if (!qword_281448130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281448130);
  }

  return result;
}

uint64_t sub_22D04E158(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22D04E1A0()
{
  result = qword_281448140;
  if (!qword_281448140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F6608, &qword_22D05E750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281448140);
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

id sub_22D04E24C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_queue;
  *&v3[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_queue] = 0;
  v7 = &v3[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_client];
  *&v3[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_client + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_devicesToSerialize] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer_currentlyActiveDevice;
  v9 = sub_22D05D9EC();
  (*(*(v9 - 8) + 56))(&v3[v8], 1, 1, v9);
  v10 = *&v3[v6];
  *&v3[v6] = a1;
  v11 = a1;

  *(v7 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v13.receiver = v3;
  v13.super_class = type metadata accessor for AccessoryFirmwareUpdateSerializer(0);
  return objc_msgSendSuper2(&v13, sel_init);
}

unint64_t sub_22D04E354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_22D05D9EC();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_22D04E49C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_22D04BA7C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_22D04E354(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_22D04E55C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F66C8, &qword_22D05EA88);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F67D0, qword_22D05EA90);
    v8 = sub_22D05DCBC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22D04F688(v10, v6, &qword_27D9F66C8, &qword_22D05EA88);
      result = sub_22D04C4FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22D05D9EC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22D04E764(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22D04E79C()
{
  result = qword_27D9F6610;
  if (!qword_27D9F6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6610);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22D04E83C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_22D04E8A0(uint64_t a1)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_22D04E8FC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AccessoryFirmwareUpdateAccessory(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_22D04E990(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22D04E9E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_22D04E9FC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22D04EA58()
{
  result = qword_27D9F6628;
  if (!qword_27D9F6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6628);
  }

  return result;
}

unint64_t sub_22D04EAB0()
{
  result = qword_27D9F6638;
  if (!qword_27D9F6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6638);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryFirmwareUpdateDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryFirmwareUpdateDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
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
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22D04ECD4()
{
  result = sub_22D05D9EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22D04ED78()
{
  sub_22D04EE2C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22D04EE2C()
{
  if (!qword_281448460)
  {
    sub_22D05D9EC();
    v0 = sub_22D05DC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_281448460);
    }
  }
}

uint64_t getEnumTagSinglePayload for AirTag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AirTag(_WORD *result, int a2, int a3)
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

unint64_t sub_22D04F198()
{
  result = qword_27D9F6670;
  if (!qword_27D9F6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6670);
  }

  return result;
}

unint64_t sub_22D04F1EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F67B0, &qword_22D05EA48);
  v3 = sub_22D05DCBC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  result = sub_22D04C600(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v11 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v12 = v3[7] + 24 * result;
    *v12 = v5;
    *(v12 + 1) = v6;
    *(v12 + 8) = v7;
    *(v12 + 16) = v8;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    sub_22D04F454(v7);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v11 - 24);
    v5 = *(v11 - 16);
    v6 = *(v11 - 15);
    v7 = *(v11 - 1);
    v8 = *v11;
    result = sub_22D04C600(v4);
    v11 += 4;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22D04F314(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6678, &qword_22D05EA38);
    v3 = sub_22D05DCBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22D04F688(v4, &v13, &qword_27D9F6680, &qword_22D05EA40);
      v5 = v13;
      v6 = v14;
      result = sub_22D04C66C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22D04F444(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_22D04F444(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22D04F454(uint64_t result)
{
  if (result)
  {
  }

  return result;
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

uint64_t sub_22D04F500(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22D04F564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D04F5CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22D04F62C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22D04F688(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22D04F84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_22D05D9EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v15 = sub_22D05DA2C();
  __swift_project_value_buffer(v15, qword_27D9F65C0);
  v16 = *(v11 + 16);
  v38 = a1;
  v16(v14, a1, v10);
  v17 = sub_22D05DA0C();
  v18 = sub_22D05DB5C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = a2;
    v35 = v21;
    v39 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_22D04BCD8(0xD000000000000029, 0x800000022D061400, &v39);
    *(v20 + 12) = 2080;
    sub_22D051CD8();
    v22 = sub_22D05DCCC();
    v23 = a3;
    v25 = v24;
    (*(v11 + 8))(v14, v10);
    v26 = sub_22D04BCD8(v22, v25, &v39);
    a3 = v23;

    *(v20 + 14) = v26;
    _os_log_impl(&dword_22D042000, v17, v18, "#AccessoryUarpDeviceBridge -%s for %s", v20, 0x16u);
    v27 = v35;
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v27, -1, -1);
    v28 = v20;
    a4 = v36;
    MEMORY[0x2318C73A0](v28, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v29 = objc_allocWithZone(MEMORY[0x277D73FD8]);
  v30 = sub_22D05D9CC();
  v31 = [v29 initWithUUID:v30 delegate:v5 delegateQueue:a4 listener:0];

  v32 = *(v5 + 16);
  *(v5 + 16) = v31;

  *(v5 + 32) = a3;
  return swift_unknownObjectWeakAssign();
}

id sub_22D04FB54()
{
  v1 = v0;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = sub_22D05DA0C();
  v4 = sub_22D05DB5C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22D04BCD8(0xD000000000000011, 0x800000022D0613E0, &v8);
    _os_log_impl(&dword_22D042000, v3, v4, "#AccessoryUarpDeviceBridge -%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318C73A0](v6, -1, -1);
    MEMORY[0x2318C73A0](v5, -1, -1);
  }

  result = *(v1 + 16);
  if (result)
  {

    return [result deviceAvailable_];
  }

  return result;
}

id sub_22D04FCD4()
{
  v1 = v0;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = sub_22D05DA0C();
  v4 = sub_22D05DB5C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22D04BCD8(0xD000000000000013, 0x800000022D0613C0, &v9);
    _os_log_impl(&dword_22D042000, v3, v4, "#AccessoryUarpDeviceBridge -%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318C73A0](v6, -1, -1);
    MEMORY[0x2318C73A0](v5, -1, -1);
  }

  v7 = *(v1 + 16);

  return [v7 deviceUnavailable];
}

id sub_22D04FE34()
{
  v1 = v0;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = sub_22D05DA0C();
  v4 = sub_22D05DB5C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22D04BCD8(0xD00000000000001ALL, 0x800000022D0613A0, &v8);
    _os_log_impl(&dword_22D042000, v3, v4, "#AccessoryUarpDeviceBridge -%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318C73A0](v6, -1, -1);
    MEMORY[0x2318C73A0](v5, -1, -1);
  }

  result = *(v1 + 16);
  if (result)
  {

    return [result deviceTransportAvailable_];
  }

  return result;
}

void sub_22D04FFB4()
{
  v1 = v0;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = sub_22D05DA0C();
  v4 = sub_22D05DB5C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22D04BCD8(0xD000000000000034, 0x800000022D061360, &v10);
    _os_log_impl(&dword_22D042000, v3, v4, "#AccessoryUarpDeviceBridge -%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318C73A0](v6, -1, -1);
    MEMORY[0x2318C73A0](v5, -1, -1);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7;
    v9 = sub_22D05D95C();
    [v8 deviceReceiveUarpMessageFromTransport_];
  }
}

id sub_22D050170()
{
  v1 = *(v0 + 16);
  if (!v1 || (v2 = [v1 activeFirmwareVersion]) == 0 || (v3 = v2, v4 = objc_msgSend(v2, sel_versionString), v3, !v4))
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v15 = sub_22D05DA2C();
    __swift_project_value_buffer(v15, qword_27D9F65C0);
    v16 = sub_22D05DA0C();
    v17 = sub_22D05DB4C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_22D04BCD8(0xD000000000000017, 0x800000022D061340, &v30);
      _os_log_impl(&dword_22D042000, v16, v17, "#AccessoryUarpDeviceBridge -%s activeFirmwareVersionStr is nil", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x2318C73A0](v19, -1, -1);
      MEMORY[0x2318C73A0](v18, -1, -1);
    }

    return 0;
  }

  v5 = sub_22D05DADC();
  v7 = v6;

  v8 = v5 == *(v0 + 40) && v7 == *(v0 + 48);
  if (v8 || (sub_22D05DCDC() & 1) != 0)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v9 = sub_22D05DA2C();
    __swift_project_value_buffer(v9, qword_27D9F65C0);

    v10 = sub_22D05DA0C();
    v11 = sub_22D05DB4C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_22D04BCD8(0xD000000000000017, 0x800000022D061340, &v30);
      *(v12 + 12) = 2080;
      v14 = sub_22D04BCD8(v5, v7, &v30);

      *(v12 + 14) = v14;
      _os_log_impl(&dword_22D042000, v10, v11, "#AccessoryUarpDeviceBridge -%s activeFirmwareVersionStr is invalid - %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v13, -1, -1);
      MEMORY[0x2318C73A0](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v21 = *(v0 + 16);
  v22 = MEMORY[0x277D83B88];
  v23 = MEMORY[0x277D83BF8];
  if (v21)
  {
    result = [*(v0 + 16) activeFirmwareVersion];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;

    v34 = 0;
    v35 = 0xE000000000000000;
    v28 = v22;
    v29 = v23;
    *&v27 = [v24 majorVersion];
    sub_22D051CC0(&v27, &v30);
  }

  else
  {

    v24 = 0;
    v34 = 0;
    v35 = 0xE000000000000000;
    v32 = MEMORY[0x277D837D0];
    v33 = MEMORY[0x277D83838];
    v30 = 7104878;
    v31 = 0xE300000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F6730, qword_22D05EB68);
  sub_22D05DC8C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  MEMORY[0x2318C6C40](46, 0xE100000000000000);
  if (v21)
  {
    v25 = [v24 minorVersion];
    v28 = v22;
    v29 = v23;
    *&v27 = v25;
    sub_22D051CC0(&v27, &v30);
  }

  else
  {
    v32 = MEMORY[0x277D837D0];
    v33 = MEMORY[0x277D83838];
    v30 = 7104878;
    v31 = 0xE300000000000000;
  }

  sub_22D05DC8C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  MEMORY[0x2318C6C40](46, 0xE100000000000000);
  if (v21)
  {
    v26 = [v24 buildVersion];
    v28 = v22;
    v29 = v23;
    *&v27 = v26;
    sub_22D051CC0(&v27, &v30);
  }

  else
  {
    v32 = MEMORY[0x277D837D0];
    v33 = MEMORY[0x277D83838];
    v30 = 7104878;
    v31 = 0xE300000000000000;
  }

  sub_22D05DC8C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);

  return v34;
}

id sub_22D050698()
{
  result = *(v0 + 16);
  if (result)
  {
    result = [result stagedFirmwareVersion];
    if (result)
    {
      v2 = result;
      v3 = [result versionString];

      if (!v3)
      {
        return 0;
      }

      v4 = sub_22D05DADC();
      v6 = v5;

      v7 = v4 == *(v0 + 40) && v6 == *(v0 + 48);
      if (v7 || (sub_22D05DCDC() & 1) != 0)
      {

        return 0;
      }

      v8 = *(v0 + 16);
      v9 = MEMORY[0x277D83B88];
      v10 = MEMORY[0x277D83BF8];
      if (v8)
      {
        result = [*(v0 + 16) stagedFirmwareVersion];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v11 = result;

        v21 = 0;
        v22 = 0xE000000000000000;
        v15 = v9;
        v16 = v10;
        *&v14 = [v11 majorVersion];
        sub_22D051CC0(&v14, &v17);
      }

      else
      {

        v11 = 0;
        v21 = 0;
        v22 = 0xE000000000000000;
        v19 = MEMORY[0x277D837D0];
        v20 = MEMORY[0x277D83838];
        v17 = 7104878;
        v18 = 0xE300000000000000;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F6730, qword_22D05EB68);
      sub_22D05DC8C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      MEMORY[0x2318C6C40](46, 0xE100000000000000);
      if (v8)
      {
        v12 = [v11 minorVersion];
        v15 = v9;
        v16 = v10;
        *&v14 = v12;
        sub_22D051CC0(&v14, &v17);
      }

      else
      {
        v19 = MEMORY[0x277D837D0];
        v20 = MEMORY[0x277D83838];
        v17 = 7104878;
        v18 = 0xE300000000000000;
      }

      sub_22D05DC8C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      MEMORY[0x2318C6C40](46, 0xE100000000000000);
      if (v8)
      {
        v13 = [v11 buildVersion];
        v15 = v9;
        v16 = v10;
        *&v14 = v13;
        sub_22D051CC0(&v14, &v17);
      }

      else
      {
        v19 = MEMORY[0x277D837D0];
        v20 = MEMORY[0x277D83838];
        v17 = 7104878;
        v18 = 0xE300000000000000;
      }

      sub_22D05DC8C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);

      return v21;
    }
  }

  return result;
}

void sub_22D050954()
{
  v1 = v0;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = sub_22D05DA0C();
  v4 = sub_22D05DB5C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22D04BCD8(0x44796F7274736564, 0xEF29286563697665, &v8);
    _os_log_impl(&dword_22D042000, v3, v4, "#AccessoryUarpDeviceBridge -%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2318C73A0](v6, -1, -1);
    MEMORY[0x2318C73A0](v5, -1, -1);
  }

  v7 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t sub_22D050AB8(void *a1)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = a1;
  v4 = sub_22D05DA0C();
  v5 = sub_22D05DB5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_22D04BCD8(0xD000000000000021, 0x800000022D061310, &v11);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_22D042000, v4, v5, "#AccessoryUarpDeviceBridge -%s for %@", v6, 0x16u);
    sub_22D051C58(v7);
    MEMORY[0x2318C73A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v6, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_22D052A28();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22D050CB0(void *a1)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = a1;
  v4 = sub_22D05DA0C();
  v5 = sub_22D05DB5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_22D04BCD8(0xD00000000000001BLL, 0x800000022D0612F0, &v10);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_22D042000, v4, v5, "#AccessoryUarpDeviceBridge -%s for %@", v6, 0x16u);
    sub_22D051C58(v7);
    MEMORY[0x2318C73A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v6, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22D052A48();
    swift_unknownObjectRelease();
  }

  sub_22D0515A4(3);
}

void sub_22D050E94(void *a1)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = a1;
  v4 = sub_22D05DA0C();
  v5 = sub_22D05DB5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_22D04BCD8(0xD00000000000001CLL, 0x800000022D0612D0, &v10);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_22D042000, v4, v5, "#AccessoryUarpDeviceBridge -%s for %@", v6, 0x16u);
    sub_22D051C58(v7);
    MEMORY[0x2318C73A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v6, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22D052D40();
    swift_unknownObjectRelease();
  }

  sub_22D0515A4(4);
}

void sub_22D051078(void *a1)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v2 = sub_22D05DA2C();
  __swift_project_value_buffer(v2, qword_27D9F65C0);
  v3 = a1;
  v4 = sub_22D05DA0C();
  v5 = sub_22D05DB5C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_22D04BCD8(0xD000000000000016, 0x800000022D0612B0, &v10);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&dword_22D042000, v4, v5, "#AccessoryUarpDeviceBridge -%s for %@", v6, 0x16u);
    sub_22D051C58(v7);
    MEMORY[0x2318C73A0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v6, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22D052D60();
    swift_unknownObjectRelease();
  }

  sub_22D0515A4(5);
}

uint64_t sub_22D05125C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_22D0512BC(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v6 = sub_22D05DA2C();
  __swift_project_value_buffer(v6, qword_27D9F65C0);
  v7 = a1;
  sub_22D051C04(a2, a3);
  v8 = sub_22D05DA0C();
  v9 = sub_22D05DB5C();

  sub_22D04E990(a2, a3);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_22D04BCD8(0xD00000000000002FLL, 0x800000022D061280, &v18);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    *(v10 + 22) = 2080;
    v13 = v7;
    v14 = sub_22D05D94C();
    v16 = sub_22D04BCD8(v14, v15, &v18);

    *(v10 + 24) = v16;
    _os_log_impl(&dword_22D042000, v8, v9, "#AccessoryUarpDeviceBridge -%s for %@ with %s", v10, 0x20u);
    sub_22D051C58(v11);
    MEMORY[0x2318C73A0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v12, -1, -1);
    MEMORY[0x2318C73A0](v10, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_22D052D80(a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22D0515A4(char a1)
{
  v2 = sub_22D050170();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    oslog = sub_22D050698();
    if (v6)
    {
      v7 = v6;
      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v8 = sub_22D05DA2C();
      __swift_project_value_buffer(v8, qword_27D9F65C0);

      v9 = sub_22D05DA0C();
      v10 = sub_22D05DB5C();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v35 = v12;
        *v11 = 136315906;
        *(v11 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061240, &v35);
        *(v11 + 12) = 2080;
        v13 = sub_22D04BCD8(v4, v5, &v35);

        *(v11 + 14) = v13;
        *(v11 + 22) = 2080;
        v14 = oslog;
        *(v11 + 24) = sub_22D04BCD8(oslog, v7, &v35);
        *(v11 + 32) = 2080;
        v15 = sub_22D051DBC(a1);
        v17 = sub_22D04BCD8(v15, v16, &v35);

        *(v11 + 34) = v17;
        _os_log_impl(&dword_22D042000, v9, v10, "#AccessoryUarpDeviceBridge -%s - activeFirmwareVersion: %s, stagedFirmwareVersion: %s with completionReason: %s", v11, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v12, -1, -1);
        MEMORY[0x2318C73A0](v11, -1, -1);
      }

      else
      {

        v14 = oslog;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_22D0534A8(v14, v7, 0);
        goto LABEL_25;
      }
    }

    else
    {
      if (qword_27D9F6498 != -1)
      {
        swift_once();
      }

      v25 = sub_22D05DA2C();
      __swift_project_value_buffer(v25, qword_27D9F65C0);

      v26 = sub_22D05DA0C();
      v27 = sub_22D05DB5C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35 = v29;
        *v28 = 136315650;
        *(v28 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061240, &v35);
        *(v28 + 12) = 2080;
        *(v28 + 14) = sub_22D04BCD8(v4, v5, &v35);
        *(v28 + 22) = 2080;
        v30 = sub_22D051DBC(a1);
        v32 = sub_22D04BCD8(v30, v31, &v35);

        *(v28 + 24) = v32;
        _os_log_impl(&dword_22D042000, v26, v27, "#AccessoryUarpDeviceBridge -%s - only activeFirmwareVersion: %s retrieved -- reporting to delegate with completionReason: %s", v28, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v29, -1, -1);
        MEMORY[0x2318C73A0](v28, -1, -1);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {

        sub_22D052DA8(v4, v5);

        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_22D0534A8(v4, v5, a1);
LABEL_25:

        swift_unknownObjectRelease();
        return;
      }
    }
  }

  else
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v18 = sub_22D05DA2C();
    __swift_project_value_buffer(v18, qword_27D9F65C0);
    osloga = sub_22D05DA0C();
    v19 = sub_22D05DB4C();
    if (os_log_type_enabled(osloga, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061240, &v35);
      *(v20 + 12) = 2080;
      v22 = sub_22D051DBC(a1);
      v24 = sub_22D04BCD8(v22, v23, &v35);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_22D042000, osloga, v19, "#AccessoryUarpDeviceBridge -%s - No active firmware version found - exiting with completionReason: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v21, -1, -1);
      MEMORY[0x2318C73A0](v20, -1, -1);
    }
  }
}

uint64_t sub_22D051B98()
{
  sub_22D04F488(v0 + 24);
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_22D051C04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22D051C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6630, &qword_22D05EB60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22D051CC0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_22D051CD8()
{
  result = qword_27D9F6760;
  if (!qword_27D9F6760)
  {
    sub_22D05D9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F6760);
  }

  return result;
}

uint64_t sub_22D051DBC(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v4 = 0x6F5464656C696166;
    if (a1 != 1)
    {
      v4 = 0x697463656E6E6F63;
    }

    if (a1)
    {
      return v4;
    }

    else
    {
      return 0x73736563637573;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    if (a1 == 5)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0xD000000000000016;
    if (a1 != 3)
    {
      v2 = 0x656465654E746F6ELL;
    }

    if (a1 <= 4u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22D051EF8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_22D05DC6C();

    v7 = 0xD000000000000014;
    MEMORY[0x2318C6C40](a1, a2);
    return v7;
  }

  if (a3 == 1)
  {
    v7 = 0x6174614470726175;
    v3 = sub_22D05D94C();
    MEMORY[0x2318C6C40](v3);

    return v7;
  }

  return 0x617461446F6ELL;
}

uint64_t sub_22D051FD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_22D05DD5C();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x2318C6EA0](2);
      sub_22D05D97C();
    }

    else
    {
      MEMORY[0x2318C6EA0](0);
    }
  }

  else
  {
    MEMORY[0x2318C6EA0](1);
    sub_22D05DAFC();
  }

  return sub_22D05DD8C();
}

uint64_t sub_22D052074()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x2318C6EA0](2);

      return sub_22D05D97C();
    }

    else
    {
      return MEMORY[0x2318C6EA0](0);
    }
  }

  else
  {
    MEMORY[0x2318C6EA0](1);

    return sub_22D05DAFC();
  }
}

uint64_t sub_22D05212C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_22D05DD5C();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x2318C6EA0](2);
      sub_22D05D97C();
    }

    else
    {
      MEMORY[0x2318C6EA0](0);
    }
  }

  else
  {
    MEMORY[0x2318C6EA0](1);
    sub_22D05DAFC();
  }

  return sub_22D05DD8C();
}

uint64_t sub_22D0521C8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v6)
  {
    if (v6 == 1)
    {
      if (v9 == 1)
      {
        return sub_22D05CE4C(v4, v5, v7, v8);
      }

      return 0;
    }

    if (v9 != 2 || (v8 | v7) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    if (v4 != v7 || v5 != v8)
    {
      return sub_22D05DCDC();
    }
  }

  return 1;
}

unint64_t sub_22D052234(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 <= 1)
  {
    if (a1 >> 5)
    {
      return 0xD000000000000014;
    }

    sub_22D05DC6C();
    MEMORY[0x2318C6C40](0xD000000000000017, 0x800000022D0617F0);
LABEL_8:
    sub_22D05DC8C();
    return 0;
  }

  if (v1 == 2)
  {
    sub_22D05DC6C();
    MEMORY[0x2318C6C40](0xD000000000000023, 0x800000022D0616D0);
    goto LABEL_8;
  }

  if (v1 == 4)
  {
    return 0xD000000000000012;
  }

  if (a1 > 0x63u)
  {
    v5 = 0xD000000000000020;
    if (a1 != 102)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0xD00000000000001ALL;
    if (a1 == 100)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 0x65u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v3 = 0x6172547075746573;
    v4 = 0xD000000000000017;
    if (a1 != 98)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 != 96)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 0x61u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_22D052498(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2 >> 5;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x2318C6EA0](9);
      v4 = a2 & 0x1F;
    }

    else if (v3 == 4)
    {
      v4 = 11;
    }

    else if (a2 > 0x63u)
    {
      if (a2 > 0x65u)
      {
        if (a2 == 102)
        {
          v4 = 8;
        }

        else
        {
          v4 = 10;
        }
      }

      else if (a2 == 100)
      {
        v4 = 6;
      }

      else
      {
        v4 = 7;
      }
    }

    else if (a2 > 0x61u)
    {
      if (a2 == 98)
      {
        v4 = 4;
      }

      else
      {
        v4 = 5;
      }
    }

    else if (a2 == 96)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    return MEMORY[0x2318C6EA0](v4);
  }

  if (!(a2 >> 5))
  {
    MEMORY[0x2318C6EA0](0);
    v4 = a2 & 1;
    return MEMORY[0x2318C6EA0](v4);
  }

  MEMORY[0x2318C6EA0](1);
  return sub_22D05DD7C();
}

uint64_t sub_22D052594()
{
  v1 = *v0;
  sub_22D05DD5C();
  sub_22D052498(v3, v1);
  return sub_22D05DD8C();
}

uint64_t sub_22D0525E4()
{
  v1 = *v0;
  sub_22D05DD5C();
  sub_22D052498(v3, v1);
  return sub_22D05DD8C();
}

uint64_t sub_22D0526A4()
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v1 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
  swift_beginAccess();
  sub_22D04F564(&v12, v0 + v1, &qword_27D9F66B0, &qword_22D05EA70);
  swift_endAccess();
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v2 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  swift_beginAccess();
  sub_22D04F564(&v12, v0 + v2, &unk_27D9F67A0, &unk_22D05E720);
  swift_endAccess();
  v3 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer;
  v4 = *(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer);
  *(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer) = 0;
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid;
  v6 = sub_22D05D9EC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateTransitionTables);

  v8 = *(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);

  v9 = *(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_availableFirmwareVersion + 8);

  v10 = *(v0 + v3);
  swift_unknownObjectRelease();
  sub_22D04F5CC(v0 + v1, &qword_27D9F66B0, &qword_22D05EA70);
  sub_22D04F5CC(v0 + v2, &unk_27D9F67A0, &unk_22D05E720);
  sub_22D04F488(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateMachineMonitor);

  return v0;
}

uint64_t sub_22D052870()
{
  sub_22D0526A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AccessoryFirmwareUpdateDeviceStateMachine()
{
  result = qword_281448438;
  if (!qword_281448438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22D05291C()
{
  result = sub_22D05D9EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22D052A68(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D05DA4C();
  v18 = *(v5 - 8);
  v6 = *(v18 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D05DA6C();
  v9 = *(v17 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v19 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v18 + 8))(v8, v5);
  (*(v9 + 8))(v12, v17);
}

uint64_t sub_22D052DA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22D05DA4C();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D05DA6C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 24);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v14;
  aBlock[4] = sub_22D05D184;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = &block_descriptor_116;
  v16 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v21 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_22D0530C0(uint64_t a1, unint64_t a2)
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v4 = sub_22D05DA2C();
  __swift_project_value_buffer(v4, qword_27D9F65C0);

  v5 = sub_22D05DA0C();
  v6 = sub_22D05DB5C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315650;
    *(v7 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D0618F0, v26);
    *(v7 + 12) = 2080;
    v24 = a1;
    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    v10 = 0xE000000000000000;
    if (a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12 = sub_22D04BCD8(v9, v11, v26);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = *(Strong + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
      v10 = *(Strong + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_22D04BCD8(v14, v10, v26);

    *(v7 + 24) = v15;
    _os_log_impl(&dword_22D042000, v5, v6, "#AccessoryInteraction: %s - activeFirmwareVersion: %s & currentFirmwareVersion: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v8, -1, -1);
    MEMORY[0x2318C73A0](v7, -1, -1);

    a1 = v24;
    if (!a2)
    {
      return;
    }
  }

  else
  {

    if (!a2)
    {
      return;
    }
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v18 = *(v16 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    v17 = *(v16 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);

    if (v18 == a1 && v17 == a2)
    {

LABEL_21:
      v20 = sub_22D05DA0C();
      v21 = sub_22D05DB5C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v25 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_22D04BCD8(0xD00000000000003CLL, 0x800000022D0618F0, &v25);
        _os_log_impl(&dword_22D042000, v20, v21, "#AccessoryInteraction: %s - firmware version has not been updated", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x2318C73A0](v23, -1, -1);
        MEMORY[0x2318C73A0](v22, -1, -1);
      }

      return;
    }

    v19 = sub_22D05DCDC();

    if (v19)
    {
      goto LABEL_21;
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D0551E4(0x67u, a1, a2, 0);
  }
}

uint64_t sub_22D0534A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22D05DA4C();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D05DA6C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + 24);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = v16;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  aBlock[4] = sub_22D05D110;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = &block_descriptor_109;
  v18 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v23 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

void sub_22D0537C8(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v76 = a4;
  v5 = sub_22D05D9BC();
  v77 = *(v5 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v5);
  v78 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u && a1 <= 4u && a1 != 3)
  {

    v9 = 0.01;
    v14 = 0xE900000000000064;
    v15 = 0x656465654E746F6ELL;
    goto LABEL_32;
  }

  v8 = sub_22D05DCDC();

  if (v8)
  {
    v9 = 0.01;
    goto LABEL_6;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = *(Strong + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime);

    v18 = v78;
    sub_22D05D98C();
    sub_22D05D99C();
    v20 = v19;
    v21 = *(v77 + 8);
    v21(v18, v5);
    if (v17 != v20)
    {
      v27 = v78;
      sub_22D05D9AC();
      sub_22D05D99C();
      v29 = v28;
      v21(v27, v5);
      v9 = v29 - v17;
LABEL_6:
      if (a1 <= 2u)
      {
        if (a1)
        {
          if (a1 != 1)
          {
            v14 = 0xEE0074736F4C6E6FLL;
            v15 = 0x697463656E6E6F63;
            goto LABEL_46;
          }

          v15 = 0x6F5464656C696166;
          v14 = 0xEF7463656E6E6F43;
        }

        else
        {
          v14 = 0xE700000000000000;
          v15 = 0x73736563637573;
        }
      }

      else
      {
        v10 = 0x800000022D0618B0;
        v11 = 0xD000000000000018;
        if (a1 != 5)
        {
          v10 = 0x800000022D061810;
          v11 = 0xD00000000000001BLL;
        }

        v12 = 0x800000022D0618D0;
        if (a1 != 3)
        {
          v12 = 0xE900000000000064;
        }

        v13 = 0x656465654E746F6ELL;
        if (a1 == 3)
        {
          v13 = 0xD000000000000016;
        }

        if (a1 <= 4u)
        {
          v14 = v12;
        }

        else
        {
          v14 = v10;
        }

        if (a1 <= 4u)
        {
          v15 = v13;
        }

        else
        {
          v15 = v11;
        }
      }

LABEL_32:
      v30 = sub_22D05DCDC();

      if (v30)
      {
        goto LABEL_47;
      }

      if (a1 != 1)
      {
        v31 = sub_22D05DCDC();

        if ((v31 & 1) == 0)
        {
          if (v9 > 0.0)
          {
LABEL_36:
            v74 = v5;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F67C0, &qword_22D05EF28);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22D05EBD0;
            *(inited + 32) = 0x6D614E746E657665;
            v33 = MEMORY[0x277D837D0];
            *(inited + 40) = 0xE900000000000065;
            *(inited + 48) = 0xD00000000000001DLL;
            *(inited + 56) = 0x800000022D061870;
            *(inited + 72) = v33;
            *(inited + 80) = 0x6E6F697461727564;
            *(inited + 88) = 0xE800000000000000;
            v34 = MEMORY[0x277D839F8];
            *(inited + 96) = v9;
            *(inited + 120) = v34;
            *(inited + 128) = 0x7555656369766564;
            *(inited + 136) = 0xEA00000000006469;
            swift_beginAccess();
            v35 = swift_weakLoadStrong();
            if (!v35)
            {
              __break(1u);
              return;
            }

            v36 = v35;
            v37 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid;
            v38 = sub_22D05D9EC();
            *(inited + 168) = v38;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 144));
            (*(*(v38 - 8) + 16))(boxed_opaque_existential_0, v36 + v37, v38);

            *(inited + 176) = 0x6F69737265566F74;
            *(inited + 184) = 0xE90000000000006ELL;
            v40 = v76;
            *(inited + 192) = v75;
            *(inited + 200) = v40;
            *(inited + 216) = v33;
            *(inited + 224) = 0xD000000000000010;
            *(inited + 264) = v33;
            *(inited + 232) = 0x800000022D061890;
            *(inited + 240) = v15;
            *(inited + 248) = v14;

            v41 = sub_22D04F314(inited);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6680, &qword_22D05EA40);
            swift_arrayDestroy();
            swift_beginAccess();
            v42 = swift_weakLoadStrong();
            if (v42)
            {
              v43 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
              v44 = v42;
              swift_beginAccess();
              sub_22D04F688(v44 + v43, &v83, &unk_27D9F67A0, &unk_22D05E720);

              v5 = v74;
              if (v85)
              {
                sub_22D04F500(&v83, v80);
                sub_22D04F5CC(&v83, &unk_27D9F67A0, &unk_22D05E720);
                v45 = v81;
                v46 = v82;
                __swift_project_boxed_opaque_existential_1(v80, v81);
                (*(v46 + 48))(v41, v45, v46);

                __swift_destroy_boxed_opaque_existential_1Tm(v80);
              }

              else
              {

                sub_22D04F5CC(&v83, &unk_27D9F67A0, &unk_22D05E720);
              }
            }

            else
            {

              v5 = v74;
            }

            swift_beginAccess();
            v47 = swift_weakLoadStrong();
            if (v47)
            {
              v48 = *(v47 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError);
              *(v47 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError) = 0;
            }

            goto LABEL_57;
          }

LABEL_52:

          if (qword_27D9F6498 != -1)
          {
            swift_once();
          }

          v63 = sub_22D05DA2C();
          __swift_project_value_buffer(v63, qword_27D9F65C0);
          v64 = sub_22D05DA0C();
          v65 = sub_22D05DB4C();
          if (os_log_type_enabled(v64, v65))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v83 = v67;
            *v66 = 136315138;
            *(v66 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061830, &v83);
            _os_log_impl(&dword_22D042000, v64, v65, "#AccessoryInteraction: %s - invalid firmware update duration calculated", v66, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v67);
            MEMORY[0x2318C73A0](v67, -1, -1);
            MEMORY[0x2318C73A0](v66, -1, -1);
          }

LABEL_57:
          swift_beginAccess();
          v68 = swift_weakLoadStrong();
          if (v68)
          {
            v69 = v68;
            v70 = v78;
            sub_22D05D98C();
            sub_22D05D99C();
            v72 = v71;
            (*(v77 + 8))(v70, v5);
            *(v69 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime) = v72;
          }

          return;
        }

LABEL_47:
        v49 = 0x6E776F6E6B6E55;
        v83 = v15;
        v84 = v14;

        MEMORY[0x2318C6C40](58, 0xE100000000000000);

        v51 = v83;
        v50 = v84;
        swift_beginAccess();
        v52 = swift_weakLoadStrong();
        if (v52 && (v53 = *(v52 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError), v54 = v53, , v53))
        {
          ErrorValue = swift_getErrorValue();
          v73 = &v73;
          v74 = v5;
          v56 = v79;
          v57 = *(v79 - 8);
          v58 = *(v57 + 64);
          MEMORY[0x28223BE20](ErrorValue);
          v60 = &v73 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v57 + 16))(v60);

          v49 = sub_22D05DD0C();
          v62 = v61;
          (*(v57 + 8))(v60, v56);
          v5 = v74;
        }

        else
        {
          v62 = 0xE700000000000000;
        }

        v83 = v51;
        v84 = v50;

        MEMORY[0x2318C6C40](v49, v62);

        v15 = v83;
        v14 = v84;
        if (v9 > 0.0)
        {
          goto LABEL_36;
        }

        goto LABEL_52;
      }

LABEL_46:

      goto LABEL_47;
    }
  }

  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v22 = sub_22D05DA2C();
  __swift_project_value_buffer(v22, qword_27D9F65C0);
  v23 = sub_22D05DA0C();
  v24 = sub_22D05DB4C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v83 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_22D04BCD8(0xD000000000000039, 0x800000022D061830, &v83);
    _os_log_impl(&dword_22D042000, v23, v24, "#AccessoryInteraction: %s - firmware update start time has not been set", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x2318C73A0](v26, -1, -1);
    MEMORY[0x2318C73A0](v25, -1, -1);
  }
}

uint64_t sub_22D05443C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D05DA4C();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D05DA6C();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError);
  *(v3 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError) = a1;
  v16 = a1;

  v20 = *(v3 + 24);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a2;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = a3;
  v18 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v23 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v14, v10, v18);
  _Block_release(v18);
  (*(v22 + 8))(v10, v7);
  (*(v11 + 8))(v14, v21);
}

uint64_t sub_22D054738(char a1)
{
  v2 = v1;
  v4 = sub_22D05DA4C();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D05DA6C();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError);
  *(v2 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryConnectionStateUpdateError) = 0;

  v17 = *(v2 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_22D05D104;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = &block_descriptor_102;
  v15 = _Block_copy(aBlock);

  sub_22D05DA5C();
  v20 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v11, v7, v15);
  _Block_release(v15);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_22D054A58(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D0551E4(a2 & 1 | 0x20u, 0, 0, 2);
  }

  return result;
}

uint64_t sub_22D054B08(unsigned __int8 a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateTransitionTables;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (*(v11 + 16) && (v12 = sub_22D04C594(a1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);

    sub_22D04F454(a3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = v14;
    sub_22D05BA98(a2, a3, a4, HIBYTE(a2), isUniquelyReferenced_nonNull_native);
    swift_beginAccess();
    v16 = *(v5 + v10);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v29[0] = *(v5 + v10);
    *(v5 + v10) = 0x8000000000000000;
    sub_22D05B94C(v14, a1, v17);
    *(v5 + v10) = v29[0];
    return swift_endAccess();
  }

  else
  {
    v19 = sub_22D04F1EC(MEMORY[0x277D84F90]);
    swift_beginAccess();
    v20 = *(v5 + v10);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v29[0] = *(v5 + v10);
    *(v5 + v10) = 0x8000000000000000;
    sub_22D05B94C(v19, a1, v21);
    *(v5 + v10) = v29[0];
    swift_endAccess();
    v22 = sub_22D052644();
    v24 = sub_22D054D6C(v29, a1);
    if (*v23)
    {
      v25 = v23;
      sub_22D04F454(a3);
      v26 = *v25;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v28 = *v25;
      *v25 = 0x8000000000000000;
      sub_22D05BA98(a2, a3, a4, HIBYTE(a2), v27);
      *v25 = v28;
    }

    (v24)(v29, 0);
    return (v22)(v30, 0);
  }
}

void (*sub_22D054D6C(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_22D05C7D4(v4, a2);
  return sub_22D054DE4;
}

void sub_22D054DE4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_22D054E58(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = sub_22D05DA4C();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22D05DA6C();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v5 + 24);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D05D8C0;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  sub_22D051C04(a1, a2);
  sub_22D05DA5C();
  v26 = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10);
  sub_22D05DC1C();
  MEMORY[0x2318C6CC0](0, v16, v12, v19);
  _Block_release(v19);
  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

uint64_t sub_22D055164(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D0551E4(a4, a2, a3, 1u);
  }

  return result;
}

void sub_22D0551E4(unsigned int a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v5 = v4;
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v9 = 0xEC000000656C6261;
  v10 = sub_22D05DA2C();
  __swift_project_value_buffer(v10, qword_27D9F65C0);

  sub_22D05D094(a2, a3, a4);
  v11 = sub_22D05DA0C();
  v12 = sub_22D05DB5C();

  sub_22D05D0B4(a2, a3, a4);
  p_vtable = (_TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer + 24);
  v110 = a4;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v113[0] = v15;
    *v14 = 136316162;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
    v16 = sub_22D05DCCC();
    v18 = sub_22D04BCD8(v16, v17, v113);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, v113);
    *(v14 + 22) = 2080;
    if (*(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentState) > 1u)
    {
      if (*(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentState) == 2)
      {
        v19 = 0x697463656E6E6F63;
        v9 = 0xEA0000000000676ELL;
      }

      else
      {
        v19 = 0x6C62616863616572;
        v9 = 0xE900000000000065;
      }
    }

    else
    {
      v19 = 0x6863616552746F6ELL;
      if (*(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentState))
      {
        v19 = 0x654E656369766564;
        v9 = 0xEC00000079627261;
      }
    }

    v20 = sub_22D04BCD8(v19, v9, v113);

    *(v14 + 24) = v20;
    *(v14 + 32) = 2080;
    v21 = sub_22D052234(a1);
    v23 = sub_22D04BCD8(v21, v22, v113);

    *(v14 + 34) = v23;
    *(v14 + 42) = 2080;
    v24 = sub_22D051EF8(a2, a3, v110);
    v26 = sub_22D04BCD8(v24, v25, v113);

    *(v14 + 44) = v26;
    _os_log_impl(&dword_22D042000, v11, v12, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - currentState: %s - event: %s with eventData: %s", v14, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v15, -1, -1);
    MEMORY[0x2318C73A0](v14, -1, -1);

    v9 = 0xEC000000656C6261;
    p_vtable = _TtC23AccessoryFirmwareUpdate33AccessoryFirmwareUpdateSerializer.vtable;
  }

  else
  {
  }

  v27 = p_vtable[149];
  v28 = v27[v5];
  v29 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_stateTransitionTables;
  swift_beginAccess();
  v30 = *(v5 + v29);
  if (!*(v30 + 16) || (v31 = sub_22D04C594(v28), (v32 & 1) == 0))
  {

    v49 = sub_22D05DA0C();
    v50 = v5;
    v51 = sub_22D05DB4C();

    if (os_log_type_enabled(v49, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v112 = v53;
      *v52 = 136315650;
      sub_22D05D9EC();
      sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v54 = sub_22D05DCCC();
      v56 = sub_22D04BCD8(v54, v55, &v112);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v112);
      *(v52 + 22) = 2080;
      if (v27[v50] > 1u)
      {
        if (v27[v50] == 2)
        {
          v57 = 0x697463656E6E6F63;
          v9 = 0xEA0000000000676ELL;
        }

        else
        {
          v57 = 0x6C62616863616572;
          v9 = 0xE900000000000065;
        }
      }

      else
      {
        v57 = 0x6863616552746F6ELL;
        if (v27[v50])
        {
          v57 = 0x654E656369766564;
          v9 = 0xEC00000079627261;
        }
      }

      v71 = sub_22D04BCD8(v57, v9, &v112);

      *(v52 + 24) = v71;
      v72 = "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - No state transition found for state %s";
      goto LABEL_34;
    }

LABEL_35:

    return;
  }

  v33 = *(*(v30 + 56) + 8 * v31);
  if (*(v33 + 16))
  {
    v34 = sub_22D04C600(a1);
    if (v35)
    {
      v36 = *(v33 + 56) + 24 * v34;
      v37 = *(v36 + 8);
      if (v37)
      {
        v38 = *(v36 + 16);

        v39 = v37(a1, a2, a3, v110);
        if (v39 == 4)
        {

          v40 = sub_22D05DA0C();
          v41 = v5;
          v42 = sub_22D05DB5C();

          if (os_log_type_enabled(v40, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v112 = v44;
            *v43 = 136315650;
            sub_22D05D9EC();
            sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
            v45 = sub_22D05DCCC();
            v47 = sub_22D04BCD8(v45, v46, &v112);

            *(v43 + 4) = v47;
            *(v43 + 12) = 2080;
            *(v43 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v112);
            *(v43 + 22) = 2080;
            if (v27[v41] > 1u)
            {
              if (v27[v41] == 2)
              {
                v48 = 0x697463656E6E6F63;
                v9 = 0xEA0000000000676ELL;
              }

              else
              {
                v48 = 0x6C62616863616572;
                v9 = 0xE900000000000065;
              }
            }

            else
            {
              v48 = 0x6863616552746F6ELL;
              if (v27[v41])
              {
                v48 = 0x654E656369766564;
                v9 = 0xEC00000079627261;
              }
            }

            v91 = sub_22D04BCD8(v48, v9, &v112);

            *(v43 + 24) = v91;
            _os_log_impl(&dword_22D042000, v40, v42, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - no state change, staying in: %s", v43, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x2318C73A0](v44, -1, -1);
            MEMORY[0x2318C73A0](v43, -1, -1);
            v89 = v37;
          }

          else
          {
            v89 = v37;
          }

          sub_22D05D0D4(v89);
        }

        else
        {
          v78 = v39;
          if (v27[v5] != v39)
          {

            v79 = sub_22D05DA0C();
            v80 = sub_22D05DB3C();

            if (os_log_type_enabled(v79, v80))
            {
              v109 = v80;
              v81 = swift_slowAlloc();
              v82 = swift_slowAlloc();
              v112 = v82;
              *v81 = 136315906;
              sub_22D05D9EC();
              sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
              v83 = sub_22D05DCCC();
              v85 = sub_22D04BCD8(v83, v84, &v112);

              *(v81 + 4) = v85;
              *(v81 + 12) = 2080;
              *(v81 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v112);
              *(v81 + 22) = 2080;
              if (v27[v5] > 1u)
              {
                if (v27[v5] == 2)
                {
                  v86 = 0x697463656E6E6F63;
                  v87 = 0xEA0000000000676ELL;
                }

                else
                {
                  v86 = 0x6C62616863616572;
                  v87 = 0xE900000000000065;
                }
              }

              else
              {
                v86 = 0x6863616552746F6ELL;
                v87 = 0xEC000000656C6261;
                if (v27[v5])
                {
                  v86 = 0x654E656369766564;
                  v87 = 0xEC00000079627261;
                }
              }

              v92 = sub_22D04BCD8(v86, v87, &v112);

              *(v81 + 24) = v92;
              *(v81 + 32) = 2080;
              if (v78 > 1u)
              {
                if (v78 == 2)
                {
                  v93 = 0x697463656E6E6F63;
                  v9 = 0xEA0000000000676ELL;
                }

                else
                {
                  v93 = 0x6C62616863616572;
                  v9 = 0xE900000000000065;
                }
              }

              else
              {
                v93 = 0x6863616552746F6ELL;
                if (v78)
                {
                  v93 = 0x654E656369766564;
                  v9 = 0xEC00000079627261;
                }
              }

              v94 = sub_22D04BCD8(v93, v9, &v112);

              *(v81 + 34) = v94;
              _os_log_impl(&dword_22D042000, v79, v109, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s: state changed from %s to %s", v81, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x2318C73A0](v82, -1, -1);
              MEMORY[0x2318C73A0](v81, -1, -1);
            }

            else
            {
            }

            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_22D04B4FC(v5 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v27[v5], v78);
              swift_unknownObjectRelease();
            }
          }

          v27[v5] = v78;

          v95 = sub_22D05DA0C();
          v96 = sub_22D05DB5C();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v112 = v98;
            *v97 = 136315906;
            sub_22D05D9EC();
            sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
            v99 = sub_22D05DCCC();
            v101 = sub_22D04BCD8(v99, v100, &v112);

            *(v97 + 4) = v101;
            *(v97 + 12) = 2080;
            *(v97 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v112);
            *(v97 + 22) = 2080;
            v102 = sub_22D052234(a1);
            v104 = sub_22D04BCD8(v102, v103, &v112);

            *(v97 + 24) = v104;
            *(v97 + 32) = 2080;
            if (v27[v5] > 1u)
            {
              if (v27[v5] == 2)
              {
                v106 = 0x697463656E6E6F63;
                v105 = 0xEA0000000000676ELL;
              }

              else
              {
                v106 = 0x6C62616863616572;
                v105 = 0xE900000000000065;
              }
            }

            else
            {
              v105 = 0xEC000000656C6261;
              v106 = 0x6863616552746F6ELL;
              if (v27[v5])
              {
                v106 = 0x654E656369766564;
                v105 = 0xEC00000079627261;
              }
            }

            v108 = sub_22D04BCD8(v106, v105, &v112);

            *(v97 + 34) = v108;
            _os_log_impl(&dword_22D042000, v95, v96, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - handled event: %s new state: %s", v97, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x2318C73A0](v98, -1, -1);
            MEMORY[0x2318C73A0](v97, -1, -1);
            v107 = v37;
          }

          else
          {
            v107 = v37;
          }

          sub_22D05D0D4(v107);
        }

        return;
      }

      v49 = sub_22D05DA0C();
      v73 = v5;
      v51 = sub_22D05DB4C();

      if (os_log_type_enabled(v49, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v112 = v53;
        *v52 = 136315650;
        sub_22D05D9EC();
        sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
        v74 = sub_22D05DCCC();
        v76 = sub_22D04BCD8(v74, v75, &v112);

        *(v52 + 4) = v76;
        *(v52 + 12) = 2080;
        *(v52 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v112);
        *(v52 + 22) = 2080;
        if (v27[v73] > 1u)
        {
          if (v27[v73] == 2)
          {
            v77 = 0x697463656E6E6F63;
            v9 = 0xEA0000000000676ELL;
          }

          else
          {
            v77 = 0x6C62616863616572;
            v9 = 0xE900000000000065;
          }
        }

        else
        {
          v77 = 0x6863616552746F6ELL;
          if (v27[v73])
          {
            v77 = 0x654E656369766564;
            v9 = 0xEC00000079627261;
          }
        }

        v90 = sub_22D04BCD8(v77, v9, &v112);

        *(v52 + 24) = v90;
        v72 = "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - no state change because no event handler found, staying in: %s";
LABEL_34:
        _os_log_impl(&dword_22D042000, v49, v51, v72, v52, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2318C73A0](v53, -1, -1);
        MEMORY[0x2318C73A0](v52, -1, -1);
        goto LABEL_35;
      }

      goto LABEL_35;
    }
  }

  v58 = sub_22D05DA0C();
  v59 = sub_22D05DB4C();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = v5;
    v62 = swift_slowAlloc();
    v112 = v62;
    *v60 = 136315906;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
    v63 = sub_22D05DCCC();
    v65 = sub_22D04BCD8(v63, v64, &v112);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061650, &v112);
    *(v60 + 22) = 2080;
    v66 = sub_22D052234(a1);
    v68 = sub_22D04BCD8(v66, v67, &v112);

    *(v60 + 24) = v68;
    *(v60 + 32) = 2080;
    if (v27[v61] > 1u)
    {
      if (v27[v61] == 2)
      {
        v70 = 0x697463656E6E6F63;
        v69 = 0xEA0000000000676ELL;
      }

      else
      {
        v70 = 0x6C62616863616572;
        v69 = 0xE900000000000065;
      }
    }

    else
    {
      v69 = 0xEC000000656C6261;
      v70 = 0x6863616552746F6ELL;
      if (v27[v61])
      {
        v70 = 0x654E656369766564;
        v69 = 0xEC00000079627261;
      }
    }

    v88 = sub_22D04BCD8(v70, v69, &v112);

    *(v60 + 34) = v88;
    _os_log_impl(&dword_22D042000, v58, v59, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - No state transition found for event %s with state %s", v60, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v62, -1, -1);
    MEMORY[0x2318C73A0](v60, -1, -1);
  }
}

uint64_t sub_22D05635C()
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v0 = sub_22D05DA2C();
  __swift_project_value_buffer(v0, qword_27D9F65C0);

  v1 = sub_22D05DA0C();
  v2 = sub_22D05DB5C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315650;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
    v5 = sub_22D05DCCC();
    v7 = sub_22D04BCD8(v5, v6, &v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_22D04BCD8(0xD00000000000001DLL, 0x800000022D061630, &v12);
    *(v3 + 22) = 2080;
    v8 = sub_22D05DCCC();
    v10 = sub_22D04BCD8(v8, v9, &v12);

    *(v3 + 24) = v10;
    _os_log_impl(&dword_22D042000, v1, v2, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s - defining state transition table for device %s", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2318C73A0](v4, -1, -1);
    MEMORY[0x2318C73A0](v3, -1, -1);
  }

  sub_22D0565A0();
  sub_22D0572A8();
  sub_22D057E78();

  return sub_22D0585D0();
}

uint64_t sub_22D0565A0()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 256, sub_22D05D06C, v0);

  v1 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 0, sub_22D05D8B4, v1);

  v2 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 8448, sub_22D05D074, v2);

  v3 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 0x2000, sub_22D05D8B8, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 24576, sub_22D05D07C, v4);

  v5 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 25088, sub_22D05D084, v5);

  v6 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(0, 26368, sub_22D05D08C, v6);
}

uint64_t sub_22D0567EC()
{
  v0 = sub_22D05D9EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
  v7 = Strong;
  swift_beginAccess();
  sub_22D04F688(v7 + v6, v15, &qword_27D9F66B0, &qword_22D05EA70);

  if (!v16)
  {
    sub_22D04F5CC(v15, &qword_27D9F66B0, &qword_22D05EA70);
    return 0;
  }

  sub_22D04F500(v15, v14);
  sub_22D04F5CC(v15, &qword_27D9F66B0, &qword_22D05EA70);
  v8 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  (*(v1 + 16))(v4, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v0);

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 24);

    v12 = *v8;
    sub_22D04F84C(v4, v10, &off_28403BE08, v11);

    (*(v1 + 8))(v4, v0);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    return 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_22D056A68()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v2 = Strong;
    swift_beginAccess();
    sub_22D04F688(v2 + v1, v6, &qword_27D9F66B0, &qword_22D05EA70);

    if (v7)
    {
      sub_22D04F500(v6, v5);
      sub_22D04F5CC(v6, &qword_27D9F66B0, &qword_22D05EA70);
      v3 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_22D04FB54();
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }

    else
    {
      sub_22D04F5CC(v6, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
    }

    sub_22D059430();
  }

  return 1;
}

uint64_t sub_22D056BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v9 = Strong;
    swift_beginAccess();
    sub_22D04F688(v9 + v8, v13, &qword_27D9F66B0, &qword_22D05EA70);

    if (v14)
    {
      sub_22D04F500(v13, v12);
      sub_22D04F5CC(v13, &qword_27D9F66B0, &qword_22D05EA70);
      v10 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
      a6();
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      sub_22D04F5CC(v13, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 0;
}

uint64_t sub_22D056CCC()
{
  v0 = sub_22D05D9EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A2B0();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 2;
  }

  v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  v7 = Strong;
  swift_beginAccess();
  sub_22D04F688(v7 + v6, v15, &unk_27D9F67A0, &unk_22D05E720);

  if (!v16)
  {
    sub_22D04F5CC(v15, &unk_27D9F67A0, &unk_22D05E720);
    return 2;
  }

  sub_22D04F500(v15, v12);
  sub_22D04F5CC(v15, &unk_27D9F67A0, &unk_22D05E720);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v1 + 16))(v4, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v0);

    (*(v9 + 8))(v4, v8, v9);
    (*(v1 + 8))(v4, v0);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return 2;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D056F10()
{
  v0 = sub_22D05D9EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  v7 = Strong;
  swift_beginAccess();
  sub_22D04F688(v7 + v6, v15, &unk_27D9F67A0, &unk_22D05E720);

  if (!v16)
  {
    sub_22D04F5CC(v15, &unk_27D9F67A0, &unk_22D05E720);
    return 0;
  }

  sub_22D04F500(v15, v12);
  sub_22D04F5CC(v15, &unk_27D9F67A0, &unk_22D05E720);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v1 + 16))(v4, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v0);

    (*(v9 + 24))(v4, v8, v9);
    (*(v1 + 8))(v4, v0);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D057128(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v8 = Strong;
  if (a4)
  {
  }

  else
  {
    v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    swift_beginAccess();
    sub_22D04F688(v8 + v10, v18, &unk_27D9F67A0, &unk_22D05E720);
    if (v19)
    {
      sub_22D04F500(v18, v15);
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
      v11 = v16;
      v12 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v12 + 40))(v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, a2, a3, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }

    else
    {
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
    }

    v13 = (v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    v14 = *(v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);
    *v13 = a2;
    v13[1] = a3;
  }

  return 0;
}

uint64_t sub_22D0572A8()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1u, 1, sub_22D05CFEC, v0);

  v1 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1u, 8449, sub_22D05D01C, v1);

  v2 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1u, 8193, sub_22D05D024, v2);

  v3 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1u, 24833, sub_22D05D8BC, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1u, 24577, sub_22D05D054, v4);

  v5 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1u, 25089, sub_22D05D05C, v5);

  v6 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1u, 26369, sub_22D05D064, v6);

  v7 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(1u, 32769, sub_22D05D8BC, v7);
}

uint64_t sub_22D057540()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v2 = Strong;
    swift_beginAccess();
    sub_22D04F688(v2 + v1, v6, &qword_27D9F66B0, &qword_22D05EA70);

    if (v7)
    {
      sub_22D04F500(v6, v5);
      sub_22D04F5CC(v6, &qword_27D9F66B0, &qword_22D05EA70);
      v3 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_22D04FB54();
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }

    else
    {
      sub_22D04F5CC(v6, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 1;
}

uint64_t sub_22D057634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v9 = Strong;
    swift_beginAccess();
    sub_22D04F688(v9 + v8, v13, &qword_27D9F66B0, &qword_22D05EA70);

    if (v14)
    {
      sub_22D04F500(v13, v12);
      sub_22D04F5CC(v13, &qword_27D9F66B0, &qword_22D05EA70);
      v10 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
      a6();
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      sub_22D04F5CC(v13, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A0B0();
  }

  return 0;
}

uint64_t sub_22D057768()
{
  v0 = sub_22D05D9EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A2B0();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v7 = Strong;
    swift_beginAccess();
    sub_22D04F688(v7 + v6, v15, &unk_27D9F67A0, &unk_22D05E720);

    if (v16)
    {
      sub_22D04F500(v15, v12);
      sub_22D04F5CC(v15, &unk_27D9F67A0, &unk_22D05E720);
      v8 = v13;
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v4, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v0);

      (*(v9 + 8))(v4, v8, v9);
      (*(v1 + 8))(v4, v0);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }

    else
    {
      sub_22D04F5CC(v15, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A0B0();
  }

  return 2;
}

uint64_t sub_22D0579E4()
{
  v0 = sub_22D05D9EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v7 = Strong;
    swift_beginAccess();
    sub_22D04F688(v7 + v6, v19, &unk_27D9F67A0, &unk_22D05E720);

    if (v20)
    {
      sub_22D04F500(v19, v16);
      sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v4, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v0);

      (*(v9 + 24))(v4, v8, v9);
      (*(v1 + 8))(v4, v0);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v13 = v11;
    swift_beginAccess();
    sub_22D04F688(v13 + v12, v19, &qword_27D9F66B0, &qword_22D05EA70);

    if (v20)
    {
      sub_22D04F500(v19, v16);
      sub_22D04F5CC(v19, &qword_27D9F66B0, &qword_22D05EA70);
      v14 = *__swift_project_boxed_opaque_existential_1(v16, v17);
      sub_22D04FCD4();
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      sub_22D04F5CC(v19, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22D05A0B0();
  }

  return 0;
}

uint64_t sub_22D057CF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v8 = Strong;
  if (a4)
  {
  }

  else
  {
    v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    swift_beginAccess();
    sub_22D04F688(v8 + v10, v18, &unk_27D9F67A0, &unk_22D05E720);
    if (v19)
    {
      sub_22D04F500(v18, v15);
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
      v11 = v16;
      v12 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v12 + 40))(v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, a2, a3, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }

    else
    {
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
    }

    v13 = (v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    v14 = *(v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);
    *v13 = a2;
    v13[1] = a3;
  }

  return 1;
}

uint64_t sub_22D057E78()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2u, 2, sub_22D05D8B4, v0);

  v1 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2u, 24834, sub_22D05CFB4, v1);

  v2 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2u, 25090, sub_22D05CFBC, v2);

  v3 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2u, 25346, sub_22D05D8B8, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2u, 25602, sub_22D05CFC4, v4);

  v5 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(2u, 26370, sub_22D05CFE4, v5);
}

uint64_t sub_22D058078()
{
  v0 = sub_22D05D9EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v7 = Strong;
    swift_beginAccess();
    sub_22D04F688(v7 + v6, v19, &unk_27D9F67A0, &unk_22D05E720);

    if (v20)
    {
      sub_22D04F500(v19, v16);
      sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v4, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v0);

      (*(v9 + 32))(v4, v8, v9);
      (*(v1 + 8))(v4, v0);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v13 = v11;
    swift_beginAccess();
    sub_22D04F688(v13 + v12, v19, &qword_27D9F66B0, &qword_22D05EA70);

    if (v20)
    {
      sub_22D04F500(v19, v16);
      sub_22D04F5CC(v19, &qword_27D9F66B0, &qword_22D05EA70);
      v14 = *__swift_project_boxed_opaque_existential_1(v16, v17);
      sub_22D04FCD4();
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      sub_22D04F5CC(v19, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 0;
}

uint64_t sub_22D05835C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v2 = Strong;
    swift_beginAccess();
    sub_22D04F688(v2 + v1, v6, &qword_27D9F66B0, &qword_22D05EA70);

    if (v7)
    {
      sub_22D04F500(v6, v5);
      sub_22D04F5CC(v6, &qword_27D9F66B0, &qword_22D05EA70);
      v3 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_22D04FE34();
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }

    else
    {
      sub_22D04F5CC(v6, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 3;
}

uint64_t sub_22D058450(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v8 = Strong;
  if (a4)
  {
  }

  else
  {
    v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    swift_beginAccess();
    sub_22D04F688(v8 + v10, v18, &unk_27D9F67A0, &unk_22D05E720);
    if (v19)
    {
      sub_22D04F500(v18, v15);
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
      v11 = v16;
      v12 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v12 + 40))(v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, a2, a3, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }

    else
    {
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
    }

    v13 = (v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    v14 = *(v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);
    *v13 = a2;
    v13[1] = a3;
  }

  return 2;
}

uint64_t sub_22D0585D0()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 3, sub_22D05CCD8, v0);

  v1 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 24835, sub_22D05CD08, v1);

  v2 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 25347, sub_22D05CD10, v2);

  v3 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 25603, sub_22D05CD40, v3);

  v4 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 25859, sub_22D05CD60, v4);

  v5 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 26115, sub_22D05CD68, v5);

  v6 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 16387, sub_22D05CD70, v6);

  v7 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 16643, sub_22D05D8B0, v7);

  v8 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 16899, sub_22D05D8B0, v8);

  v9 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 17155, sub_22D05D8B0, v9);

  v10 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 17411, sub_22D05D8B0, v10);

  v11 = swift_allocObject();
  swift_weakInit();
  sub_22D054B08(3u, 26371, sub_22D05CD8C, v11);
}

uint64_t sub_22D058998()
{
  v0 = sub_22D05D9EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v7 = Strong;
    swift_beginAccess();
    sub_22D04F688(v7 + v6, v19, &unk_27D9F67A0, &unk_22D05E720);

    if (v20)
    {
      sub_22D04F500(v19, v16);
      sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v4, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v0);

      (*(v9 + 24))(v4, v8, v9);
      (*(v1 + 8))(v4, v0);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      sub_22D04F5CC(v19, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v13 = v11;
    swift_beginAccess();
    sub_22D04F688(v13 + v12, v19, &qword_27D9F66B0, &qword_22D05EA70);

    if (v20)
    {
      sub_22D04F500(v19, v16);
      sub_22D04F5CC(v19, &qword_27D9F66B0, &qword_22D05EA70);
      v14 = *__swift_project_boxed_opaque_existential_1(v16, v17);
      sub_22D04FCD4();
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {
      sub_22D04F5CC(v19, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  return 0;
}

uint64_t sub_22D058C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
    v9 = Strong;
    swift_beginAccess();
    sub_22D04F688(v9 + v8, v16, &qword_27D9F66B0, &qword_22D05EA70);

    if (v17)
    {
      sub_22D04F500(v16, v15);
      sub_22D04F5CC(v16, &qword_27D9F66B0, &qword_22D05EA70);
      v10 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_22D04FCD4();
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }

    else
    {
      sub_22D04F5CC(v16, &qword_27D9F66B0, &qword_22D05EA70);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v13 = *(v11 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
      v12 = *(v11 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);
    }

    else
    {
      v13 = 0;
      v12 = 0xE000000000000000;
    }

    sub_22D0534A8(v13, v12, a6);
  }

  return 0;
}

uint64_t sub_22D058E18(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4;
  v5 = sub_22D05D9EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (v4 != 1)
  {
    return 3;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 3;
  }

  v11 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
  v12 = Strong;
  swift_beginAccess();
  sub_22D04F688(v12 + v11, v21, &unk_27D9F67A0, &unk_22D05E720);

  if (!v22)
  {
    sub_22D04F5CC(v21, &unk_27D9F67A0, &unk_22D05E720);
    return 3;
  }

  sub_22D04F500(v21, v18);
  sub_22D04F5CC(v21, &unk_27D9F67A0, &unk_22D05E720);
  v13 = v19;
  v14 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v6 + 16))(v9, result + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, v5);

    v16 = sub_22D05D95C();
    (*(v14 + 16))(v9, v16, v13, v14);

    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    return 3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22D059064(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v14 = v4;
    v15 = v5;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_uarpDeviceBridge;
      v8 = Strong;
      swift_beginAccess();
      sub_22D04F688(v8 + v7, v12, &qword_27D9F66B0, &qword_22D05EA70);

      if (v13)
      {
        sub_22D04F500(v12, v11);
        sub_22D04F5CC(v12, &qword_27D9F66B0, &qword_22D05EA70);
        v9 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);
        sub_22D04FFB4();
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
      }

      else
      {
        sub_22D04F5CC(v12, &qword_27D9F66B0, &qword_22D05EA70);
      }
    }
  }

  return 3;
}

uint64_t sub_22D059180()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    v2 = Strong;
    swift_beginAccess();
    sub_22D04F688(v2 + v1, v6, &unk_27D9F67A0, &unk_22D05E720);

    if (v7)
    {
      sub_22D04F500(v6, v5);
      sub_22D04F5CC(v6, &unk_27D9F67A0, &unk_22D05E720);
      v3 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_22D04F314(MEMORY[0x277D84F90]);
      (*(v3 + 48))();

      __swift_destroy_boxed_opaque_existential_1Tm(v5);
    }

    else
    {
      sub_22D04F5CC(v6, &unk_27D9F67A0, &unk_22D05E720);
    }
  }

  return 3;
}

uint64_t sub_22D0592B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 4;
  }

  v8 = Strong;
  if (a4)
  {
  }

  else
  {
    v10 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_accessoryFirmwareUpdateDelegate;
    swift_beginAccess();
    sub_22D04F688(v8 + v10, v18, &unk_27D9F67A0, &unk_22D05E720);
    if (v19)
    {
      sub_22D04F500(v18, v15);
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
      v11 = v16;
      v12 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v12 + 40))(v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_deviceUuid, a2, a3, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }

    else
    {
      sub_22D04F5CC(v18, &unk_27D9F67A0, &unk_22D05E720);
    }

    v13 = (v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion);
    v14 = *(v8 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_currentFirmwareVersion + 8);
    *v13 = a2;
    v13[1] = a3;
  }

  return 3;
}

uint64_t sub_22D059430()
{
  v1 = v0;
  v2 = sub_22D05DA4C();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22D05DA6C();
  v54 = *(v56 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D05DA3C();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v53 - v11;
  v67 = sub_22D05DA8C();
  v62 = *(v67 - 8);
  v12 = *(v62 + 64);
  v13 = MEMORY[0x28223BE20](v67);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = &v53 - v16;
  v17 = sub_22D05DBAC();
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v21 = sub_22D05DA2C();
  __swift_project_value_buffer(v21, qword_27D9F65C0);

  v22 = sub_22D05DA0C();
  v23 = sub_22D05DB5C();

  v24 = v0;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
    v27 = sub_22D05DCCC();
    v29 = sub_22D04BCD8(v27, v28, aBlock);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_22D042000, v22, v23, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - Starting backstop timer", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v30 = v26;
    v1 = v24;
    MEMORY[0x2318C73A0](v30, -1, -1);
    MEMORY[0x2318C73A0](v25, -1, -1);
  }

  sub_22D05CC4C();
  v31 = *(v1 + 24);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D05D298(&qword_27D9F6770, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6778, &qword_22D05EF08);
  sub_22D05D778(&qword_27D9F6780, &qword_27D9F6778, &qword_22D05EF08);
  sub_22D05DC1C();
  v32 = sub_22D05DBBC();
  (*(v60 + 8))(v20, v17);
  v59 = v24;
  v60 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer;
  v33 = *(v24 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer);
  *(v24 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer) = v32;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  sub_22D05DA7C();
  v35 = v61;
  sub_22D05DA9C();
  v62 = *(v62 + 8);
  (v62)(v15, v67);
  v37 = v65;
  v36 = v66;
  v38 = *(v65 + 104);
  v39 = v63;
  v38(v63, *MEMORY[0x277D85180], v66);
  v40 = v64;
  *v64 = 0;
  v38(v40, *MEMORY[0x277D85168], v36);
  MEMORY[0x2318C6D30](v35, v39, v40, ObjectType);
  swift_unknownObjectRelease();
  v41 = *(v37 + 8);
  v41(v40, v36);
  v42 = v39;
  v43 = v59;
  v41(v42, v36);
  v44 = v35;
  v45 = v60;
  result = (v62)(v44, v67);
  if (*(v43 + v45))
  {
    v47 = *(v43 + v45);
    swift_getObjectType();
    v48 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_22D05CC98;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D05D8C0;
    aBlock[3] = &block_descriptor;
    v49 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v50 = v53;
    sub_22D05DA5C();
    v51 = v55;
    sub_22D059FC4();
    sub_22D05DBCC();
    _Block_release(v49);
    swift_unknownObjectRelease();
    (*(v57 + 8))(v51, v58);
    (*(v54 + 8))(v50, v56);

    if (*(v43 + v45))
    {
      v52 = *(v43 + v45);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_22D05DBEC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_22D059C24(uint64_t a1)
{
  v2 = sub_22D05DA4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D05DA6C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 24);
    v17 = v7;
    v16 = v13;

    aBlock[4] = sub_22D05CCB8;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22D05D8C0;
    aBlock[3] = &block_descriptor_58;
    v14 = _Block_copy(aBlock);

    sub_22D05DA5C();
    v18 = MEMORY[0x277D84F90];
    sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
    sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10);
    sub_22D05DC1C();
    v15 = v16;
    MEMORY[0x2318C6CC0](0, v11, v6, v14);
    _Block_release(v14);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v17);
  }

  return result;
}

uint64_t sub_22D059F14(uint64_t a1, unsigned int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22D0551E4(a2, 0, 0, 2u);
  }

  return result;
}

uint64_t sub_22D059F80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_22D059FC4()
{
  sub_22D05DA4C();
  sub_22D05D298(&qword_27D9F6788, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F6790, &unk_22D05EF10);
  sub_22D05D778(&qword_27D9F6798, &qword_27D9F6790, &unk_22D05EF10);
  return sub_22D05DC1C();
}

uint64_t sub_22D05A0B0()
{
  if (qword_27D9F6498 != -1)
  {
    swift_once();
  }

  v1 = sub_22D05DA2C();
  __swift_project_value_buffer(v1, qword_27D9F65C0);

  v2 = sub_22D05DA0C();
  v3 = sub_22D05DB5C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    sub_22D05D9EC();
    sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
    v6 = sub_22D05DCCC();
    v8 = sub_22D04BCD8(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_22D042000, v2, v3, "AccessoryFirmwareUpdateDeviceStateMachine: device %s -  Stopping backstop timer", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x2318C73A0](v5, -1, -1);
    MEMORY[0x2318C73A0](v4, -1, -1);
  }

  v9 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer;
  if (*(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer))
  {
    v10 = *(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_backstopTimer);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22D05DBDC();
    swift_unknownObjectRelease();
    v11 = *(v0 + v9);
  }

  *(v0 + v9) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_22D05A2B0()
{
  v1 = v0;
  v2 = sub_22D05D9BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime;
  v8 = *(v0 + OBJC_IVAR____TtC23AccessoryFirmwareUpdate41AccessoryFirmwareUpdateDeviceStateMachine_firmwareUpdateStartTime);
  sub_22D05D98C();
  sub_22D05D99C();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v6, v2);
  if (v8 != v10)
  {
    if (qword_27D9F6498 != -1)
    {
      swift_once();
    }

    v12 = sub_22D05DA2C();
    __swift_project_value_buffer(v12, qword_27D9F65C0);

    v13 = sub_22D05DA0C();
    v14 = sub_22D05DB4C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v15 = 136315394;
      v24 = v14;
      sub_22D05D9EC();
      sub_22D05D298(&qword_27D9F6760, MEMORY[0x277CC95F0]);
      v16 = sub_22D05DCCC();
      v18 = sub_22D04BCD8(v16, v17, &v26);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_22D04BCD8(0xD00000000000001FLL, 0x800000022D061600, &v26);
      _os_log_impl(&dword_22D042000, v13, v24, "AccessoryFirmwareUpdateDeviceStateMachine: device %s - %s firmware update is ongoing, overriding previous firmware update start time", v15, 0x16u);
      v19 = v25;
      swift_arrayDestroy();
      MEMORY[0x2318C73A0](v19, -1, -1);
      MEMORY[0x2318C73A0](v15, -1, -1);
    }
  }

  sub_22D05D9AC();
  sub_22D05D99C();
  v21 = v20;
  result = (v11)(v6, v2);
  *(v1 + v7) = v21;
  return result;
}
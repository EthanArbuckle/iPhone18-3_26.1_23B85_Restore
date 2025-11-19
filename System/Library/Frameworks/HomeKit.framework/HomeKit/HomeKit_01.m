uint64_t sub_19BB53648(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_19BB536D8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_19BB5379C()
{
  result = qword_1EAFE8630;
  if (!qword_1EAFE8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8630);
  }

  return result;
}

unint64_t sub_19BB537F4()
{
  result = qword_1EAFE8638;
  if (!qword_1EAFE8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8638);
  }

  return result;
}

unint64_t sub_19BB5384C()
{
  result = qword_1EAFE8640;
  if (!qword_1EAFE8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8640);
  }

  return result;
}

uint64_t sub_19BB538E8()
{
  v0 = objc_opt_self();
  v1 = sub_19BE0DE5C();
  v2 = sub_19BE0DE5C();
  v3 = [v0 topicFromSuffixID:513 homeUUID:v1 accessoryUUID:v2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_19BE0DFAC();

  return v4;
}

id HMAccessory.hapInstanceID.getter()
{
  v1 = [v0 HAPInstanceID];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 unsignedLongLongValue];

  return v3;
}

uint64_t sub_19BB53A64()
{
  sub_19BB54B84(v0 + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_19BB54308()
{
  v1 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___HMAddAccessoryRequestPayload_payload);
  v7 = OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  sub_19BB54B20(v6 + v7, v5);
  v8 = 0;
  v9 = &v5[*(v2 + 36)];
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    v11 = *v9;
    sub_19BB4A270(0, &qword_1EAFE86E8, 0x1E696ACD0);
    sub_19BB4A270(0, &unk_1EAFE86F0, off_1E7545BB0);
    sub_19BB530E8(v11, v10);
    v8 = sub_19BE0E19C();
    if (v8)
    {
      sub_19BB54B0C(v11, v10);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = sub_19BE0DF9C();
      v15 = [v13 hmfErrorWithCode:3 reason:v14];

      swift_willThrow();
      sub_19BB54B0C(v11, v10);

      v8 = 0;
    }
  }

  sub_19BB54B84(v5);
  return v8;
}

void __swiftcall HMAddAccessoryRequestPayload.init()(HMAddAccessoryRequestPayload *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id HMAddAccessoryRequestPayload.init()()
{
  v1 = OBJC_IVAR___HMAddAccessoryRequestPayload_payload;
  v2 = _s7WrapperCMa();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = v5 + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  v7 = sub_19BE0DE8C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  v8(v6 + v9[5], 1, 1, v7);
  v10 = (v6 + v9[6]);
  *v10 = 0;
  v10[1] = 0;
  *(v6 + v9[7]) = xmmword_19BE36670;
  *(v6 + v9[8]) = 0;
  *(v6 + v9[9]) = 0;
  *&v0[v1] = v5;
  v12.receiver = v0;
  v12.super_class = HMAddAccessoryRequestPayload;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t _s7WrapperCMa()
{
  result = qword_1EAFE8668;
  if (!qword_1EAFE8668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19BB5487C()
{
  result = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
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

uint64_t sub_19BB54A58(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HMAddAccessoryRequestPayload_payload) + OBJC_IVAR____TtCE7HomeKitCSo28HMAddAccessoryRequestPayloadP33_FA0A1A01509B8795493F726A62070D837Wrapper_wrapped;
  swift_beginAccess();
  if (a1)
  {
    v4 = encodeRootObject(a1);
    v5 = sub_19BE0DDFC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  v8 = (v3 + *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 28));
  v9 = *v8;
  v10 = v8[1];
  *v8 = v5;
  v8[1] = v7;
  sub_19BB54B0C(v9, v10);
  return swift_endAccess();
}

uint64_t sub_19BB54B0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19BB52344(a1, a2);
  }

  return a1;
}

uint64_t sub_19BB54B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19BB54B84(uint64_t a1)
{
  v2 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19BB54BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19BB54C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19BB54CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id HMAccessory.matterNodeID.getter()
{
  v1 = [v0 matterNodeID];
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 unsignedLongLongValue];

  return v3;
}

uint64_t sub_19BB54D90()
{
  result = sub_19BE0DFAC();
  qword_1EAFE8710 = result;
  *algn_1EAFE8718 = v1;
  return result;
}

uint64_t HMCharacteristicPropertySupportsEventNotification.getter()
{
  if (qword_1EAFE8138 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAFE8710;

  return v0;
}

uint64_t sub_19BB54E38(uint64_t a1)
{
  v2 = sub_19BB54FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB54E74(uint64_t a1)
{
  v2 = sub_19BB54FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HMFMessagePrototype.EmptyPayload.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8720, &unk_19BE366A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB54FC4();
  sub_19BE0E51C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_19BB54FC4()
{
  result = qword_1EAFE8728;
  if (!qword_1EAFE8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8728);
  }

  return result;
}

uint64_t HMFMessagePrototype.Payload<>.init(messagePayload:)(uint64_t a1)
{
  v2 = sub_19BE0DB6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19BE0DBAC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_19BE0DB9C();
  (*(v3 + 104))(v6, *MEMORY[0x1E6967F30], v2);
  sub_19BE0DB7C();
  if (*(a1 + 16) && (v10 = sub_19BB50740(1852797802, 0xE400000000000000), (v11 & 1) != 0))
  {
    sub_19BB4516C(*(a1 + 56) + 32 * v10, v17);

    sub_19BB42FFC(v17, &v18);
  }

  else
  {
    v12 = MEMORY[0x1E69E6158];

    v19 = v12;
    *&v18 = 32123;
    *(&v18 + 1) = 0xE200000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  if (swift_dynamicCast())
  {
    v13 = sub_19BB556C0(*&v17[0], *(&v17[0] + 1));
    v15 = v14;
    sub_19BE0DB8C();

    return sub_19BB52344(v13, v15);
  }

  else
  {
    type metadata accessor for HMError(0);
    *&v17[0] = 52;
    sub_19BB57810(MEMORY[0x1E69E7CC0]);
    sub_19BB57920();
    sub_19BE0DD4C();
    swift_willThrow();
  }
}

_BYTE *HMFMessagePrototype.Payload<>.messagePayload.getter()
{
  v0 = sub_19BE0DFDC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_19BE0DBCC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_19BE0DBEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_19BE0DC2C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_19BE0DC1C();
  (*(v7 + 104))(v10, *MEMORY[0x1E6967FC8], v6);
  sub_19BE0DBFC();
  sub_19BE0DBBC();
  sub_19BE0DBDC();
  v14 = v25;
  v15 = sub_19BE0DC0C();
  if (!v14)
  {
    v17 = v15;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83A8, &qword_19BE366B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19BE35710;
    *(inited + 32) = 1852797802;
    *(inited + 40) = 0xE400000000000000;
    sub_19BE0DFCC();
    v20 = sub_19BE0DFBC();
    v22 = v21;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8730, &qword_19BE366B8);
    *(inited + 48) = v20;
    *(inited + 56) = v22;
    v3 = sub_19BB51184(inited);
    swift_setDeallocating();
    sub_19BB49974(inited + 32, &qword_1EAFE83B8, &qword_19BE366C0);
    sub_19BB52344(v17, v18);
  }

  return v3;
}

uint64_t sub_19BB555AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8720, &unk_19BE366A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB54FC4();
  sub_19BE0E51C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_19BB556C0(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8758, &qword_19BE36860);
  if (swift_dynamicCast())
  {
    sub_19BB530A4(__src, &v42);
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    sub_19BE0DCAC();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_19BB49974(__src, &qword_1EAFE8760, &qword_19BE36868);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_19BE0E2AC();
  }

  sub_19BB56F48(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_19BB57670(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_19BB57010(sub_19BB58114);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_19BE0DDDC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_19BB6184C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_19BE0E02C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_19BE0E05C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_19BE0E2AC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_19BB6184C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_19BE0E03C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_19BE0DDEC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_19BE0DDEC();
    sub_19BB54B0C(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_19BB54B0C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_19BB530E8(*&__src[0], *(&__src[0] + 1));

  sub_19BB52344(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t HMFMessageDispatcher.send<A>(_:payload:destination:headers:userInfo:messageUUID:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v16;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v15;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a1;
  v9[4] = a3;
  v10 = sub_19BE0DE8C();
  v9[13] = v10;
  v11 = *(v10 - 8);
  v9[14] = v11;
  v12 = *(v11 + 64) + 15;
  v9[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19BB55CB8, 0, 0);
}

uint64_t sub_19BB55CB8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[4];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
  v7 = v0[15];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[10];
  v12 = v0[7];
  v11 = v0[8];
  v32 = (*(v0[11] + 40))();
  (*(v8 + 16))(v7, v11, v9);
  if (v12)
  {
    v13 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
    v14 = sub_19BE0DF2C();
    if (v0[6])
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
      v15 = sub_19BE0DF2C();
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (v0[6])
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v17 = v0[14];
  v16 = v0[15];
  v30 = v0[13];
  v31 = v0[12];
  v18 = v0[9];
  v19 = v0[5];
  v20 = objc_allocWithZone(MEMORY[0x1E69A2A10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  v21 = sub_19BE0DF2C();

  v22 = [v20 initWithName:v32 qualityOfService:v18 destination:v19 userInfo:v14 headers:v15 payload:v21];
  v0[16] = v22;

  v23 = v22;
  v24 = sub_19BE0DE5C();
  [v23 setIdentifier_];

  (*(v17 + 8))(v16, v30);
  v25 = swift_task_alloc();
  v0[17] = v25;
  *(v25 + 16) = v23;
  *(v25 + 24) = v31;
  v26 = *(MEMORY[0x1E69E8920] + 4);
  v27 = swift_task_alloc();
  v0[18] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8738, &qword_19BE366D0);
  *v27 = v0;
  v27[1] = sub_19BB5605C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000004ALL, 0x800000019BE38460, sub_19BB57978, v25, v28);
}

uint64_t sub_19BB5605C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_19BB56294;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_19BB56178;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19BB56178()
{
  v1 = v0[19];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[2];
  v4 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  v8 = v0[16];
  if (v1)
  {

    v9 = v0[15];
  }

  else
  {
    v11 = v0[15];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_19BB56294()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t HMFMessageDispatcher.dispatch<A>(_:payload:destination:headers:userInfo:messageUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v15;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[3] = a1;
  v10 = sub_19BE0DE8C();
  v9[12] = v10;
  v11 = *(v10 - 8);
  v9[13] = v11;
  v12 = *(v11 + 64) + 15;
  v9[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19BB56408, 0, 0);
}

uint64_t sub_19BB56408()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[4];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
  v7 = v0[14];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[9];
  v12 = v0[7];
  v11 = v0[8];
  v31 = (*(v0[10] + 40))();
  (*(v8 + 16))(v7, v11, v9);
  if (v12)
  {
    v13 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
    v14 = sub_19BE0DF2C();
    if (v0[6])
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
      v15 = sub_19BE0DF2C();
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    if (v0[6])
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = v0[13];
  v17 = v0[14];
  v18 = v0[12];
  v30 = v0[11];
  v19 = v0[5];
  v20 = objc_allocWithZone(MEMORY[0x1E69A2A10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  v21 = sub_19BE0DF2C();

  v22 = [v20 initWithName:v31 qualityOfService:-1 destination:v19 userInfo:v14 headers:v15 payload:v21];
  v0[15] = v22;

  v23 = v22;
  v24 = sub_19BE0DE5C();
  [v23 setIdentifier_];

  (*(v16 + 8))(v17, v18);
  v25 = swift_task_alloc();
  v0[16] = v25;
  *(v25 + 16) = v23;
  *(v25 + 24) = v30;
  v26 = *(MEMORY[0x1E69E8920] + 4);
  v27 = swift_task_alloc();
  v0[17] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8738, &qword_19BE366D0);
  *v27 = v0;
  v27[1] = sub_19BB567A8;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000003DLL, 0x800000019BE384B0, sub_19BB579B8, v25, v28);
}

uint64_t sub_19BB567A8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_19BB569E0;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_19BB568C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19BB568C4()
{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[2];
  v4 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  v8 = v0[15];
  if (v1)
  {

    v9 = v0[14];
  }

  else
  {
    v11 = v0[14];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_19BB569E0()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);
  v3 = *(v0 + 112);

  v4 = *(v0 + 8);

  return v4();
}

id sub_19BB56A54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8750, &qword_19BE36858);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  sub_19BE0E15C();
  return [a3 *a6];
}

uint64_t sub_19BB56BA8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8750, &qword_19BE36858);
    return sub_19BE0E12C();
  }

  else
  {
    if (!a2)
    {
      sub_19BB51184(MEMORY[0x1E69E7CC0]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8750, &qword_19BE36858);
    return sub_19BE0E13C();
  }
}

void sub_19BB56C4C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_19BB56CB8(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v14 = sub_19BE0DE8C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(a8);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
    a4 = sub_19BE0DF3C();
  }

  sub_19BE0DE6C();
  _Block_copy(v19);
  swift_unknownObjectRetain();
  v20 = a5;
  v21 = a1;
  sub_19BB57B3C(a3, a4, v20, v18, a7, v21, v19);
  _Block_release(v19);
  _Block_release(v19);
  swift_unknownObjectRelease();

  return (*(v15 + 8))(v18, v14);
}

void sub_19BB56E5C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
    v5 = sub_19BE0DF2C();
  }

  if (a2)
  {
    v6 = sub_19BE0DD5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_19BB56F48@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_19BB575B8(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_19BE0DC9C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_19BE0DC4C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_19BE0DDCC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_19BB57010(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_19BB52344(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_19BB52344(v6, v5);
    *v3 = xmmword_19BE36690;
    sub_19BB52344(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_19BE0DC5C() && __OFSUB__(v6, sub_19BE0DC8C()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_19BE0DC9C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_19BE0DC3C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_19BB574B4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_19BB52344(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_19BE36690;
    sub_19BB52344(0, 0xC000000000000000);
    sub_19BE0DDAC();
    result = sub_19BB574B4(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_19BB573B4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_19BB575B8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_19BB57710(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_19BB5778C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_19BB57448(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_19BB574B4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_19BE0DC5C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_19BE0DC8C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_19BE0DC7C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_19BB57568@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_19BE0E26C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19BB575B8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19BB57670(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_19BE0DC9C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_19BE0DC6C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_19BE0DDCC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_19BB57710(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_19BE0DC9C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_19BE0DC4C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_19BE0DDCC();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_19BB5778C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_19BE0DC9C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_19BE0DC4C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_19BB57810(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE85B8, &unk_19BE36870);
    v3 = sub_19BE0E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_19BB5819C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_19BB50740(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_19BB42FFC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_19BB57920()
{
  result = qword_1EAFE8250;
  if (!qword_1EAFE8250)
  {
    type metadata accessor for HMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8250);
  }

  return result;
}

unint64_t sub_19BB57A90()
{
  result = qword_1EAFE8740;
  if (!qword_1EAFE8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8740);
  }

  return result;
}

unint64_t sub_19BB57AE8()
{
  result = qword_1EAFE8748;
  if (!qword_1EAFE8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8748);
  }

  return result;
}

void sub_19BB57B3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (**a7)(void, void, void))
{
  v41 = a4;
  v42 = a2;
  v43 = a3;
  aBlock[7] = *MEMORY[0x1E69E9840];
  v11 = sub_19BE0DE8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  aBlock[0] = 0;
  _Block_copy(a7);
  v17 = [a1 makeMessagePayloadWithError_];
  v18 = aBlock[0];
  if (v17)
  {
    v19 = v17;
    v39 = a5;
    v40 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
    sub_19BE0DF3C();
    v20 = v18;

    v21 = [a1 messageName];
    (*(v12 + 16))(v15, v41, v11);
    v22 = v11;
    if (v42)
    {
      v23 = sub_19BE0DF2C();
    }

    else
    {
      v23 = 0;
    }

    v28 = objc_allocWithZone(MEMORY[0x1E69A2A10]);
    v29 = sub_19BE0DF2C();

    v30 = [v28 initWithName:v21 qualityOfService:v39 destination:v43 userInfo:0 headers:v23 payload:v29];

    v31 = v30;
    v32 = sub_19BE0DE5C();
    [v31 setIdentifier_];

    (*(v12 + 8))(v15, v22);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_19BB57F78;
    *(v33 + 24) = v16;
    v34 = v31;

    sub_19BE0E15C();

    v35 = swift_allocObject();
    v35[2] = sub_19BB57F78;
    v35[3] = v16;
    aBlock[4] = sub_19BB57FB4;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19BB56C4C;
    aBlock[3] = &block_descriptor_2;
    v36 = _Block_copy(aBlock);

    [v40 sendMessage:v34 completionHandler:v36];
    _Block_release(v36);
  }

  else
  {
    v24 = aBlock[0];
    v25 = sub_19BE0DD6C();

    swift_willThrow();
    v26 = v25;
    v27 = sub_19BE0DD5C();
    (a7)[2](a7, 0, v27);
  }

  v37 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19BB57F80(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a2, a1);
}

uint64_t sub_19BB57FB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_22Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8750, &qword_19BE36858);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void *sub_19BB58114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_19BB57448(sub_19BB5817C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_19BB5819C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE85C0, &qword_19BE36470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19BB5822C(uint64_t a1)
{
  v2 = sub_19BB588B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB58268(uint64_t a1)
{
  v2 = sub_19BB588B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19BB582A4()
{
  v1 = 0x656D6F487461;
  if (*v0 != 1)
  {
    v1 = 0x6D6F487441746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_19BB58300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19BB5A7AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19BB58334(uint64_t a1)
{
  v2 = sub_19BB58808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB58370(uint64_t a1)
{
  v2 = sub_19BB58808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19BB583AC(uint64_t a1)
{
  v2 = sub_19BB5885C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB583E8(uint64_t a1)
{
  v2 = sub_19BB5885C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19BB58424(uint64_t a1)
{
  v2 = sub_19BB58904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB58460(uint64_t a1)
{
  v2 = sub_19BB58904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresenceStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8768, &qword_19BE36880);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8770, &qword_19BE36888);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8778, &qword_19BE36890);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8780, &qword_19BE36898);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB58808();
  sub_19BE0E51C();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_19BB588B0();
      v12 = v26;
      sub_19BE0E3EC();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_19BB5885C();
      v12 = v29;
      sub_19BE0E3EC();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_19BB58904();
    sub_19BE0E3EC();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_19BB58808()
{
  result = qword_1EAFE8788;
  if (!qword_1EAFE8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8788);
  }

  return result;
}

unint64_t sub_19BB5885C()
{
  result = qword_1EAFE8790;
  if (!qword_1EAFE8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8790);
  }

  return result;
}

unint64_t sub_19BB588B0()
{
  result = qword_1EAFE8798;
  if (!qword_1EAFE8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8798);
  }

  return result;
}

unint64_t sub_19BB58904()
{
  result = qword_1EAFE87A0;
  if (!qword_1EAFE87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE87A0);
  }

  return result;
}

uint64_t PresenceStatus.hashValue.getter()
{
  v1 = *v0;
  sub_19BE0E4DC();
  MEMORY[0x19EAEB100](v1);
  return sub_19BE0E4FC();
}

uint64_t PresenceStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE87A8, &qword_19BE368A0);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE87B0, &qword_19BE368A8);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE87B8, &qword_19BE368B0);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE87C0, &qword_19BE368B8);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB58808();
  v18 = v49;
  sub_19BE0E50C();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_19BE0E3DC();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_19BB588B0();
          v33 = v40;
          sub_19BE0E37C();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_19BB5885C();
          v37 = v40;
          sub_19BE0E37C();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_19BB58904();
        v35 = v40;
        sub_19BE0E37C();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_0(v30);
    }
  }

  v26 = sub_19BE0E29C();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE87C8, &qword_19BE368C0) + 48);
  *v28 = &type metadata for PresenceStatus;
  sub_19BE0E38C();
  sub_19BE0E28C();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t sub_19BB58FBC()
{
  result = sub_19BE0DF9C();
  qword_1EAFE8120 = result;
  return result;
}

uint64_t sub_19BB59018()
{
  result = sub_19BE0DF9C();
  qword_1EAFE8108 = result;
  return result;
}

uint64_t sub_19BB59074()
{
  result = sub_19BE0DF9C();
  qword_1ED8FCBC0 = result;
  return result;
}

id sub_19BB590D0(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

Swift::Void __swiftcall HMHome.configurePresenceSubscriptions()()
{
  v1 = [v0 context];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 messageDispatcher];

    if (qword_1ED8FCBB0 != -1)
    {
      swift_once();
    }

    [v3 registerForMessage:qword_1ED8FCBC0 receiver:v0 selector:sel_handlePresenceUpdateMessage_];
  }
}

unint64_t sub_19BB593D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8860, &unk_19BE36480);
    v2 = sub_19BE0E35C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        sub_19BB530E8(v24, *(&v24 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
        swift_dynamicCast();
        sub_19BB538D0(&v25, v27);
        sub_19BB538D0(v27, v28);
        sub_19BB538D0(v28, &v26);
        result = sub_19BB50740(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_19BB538D0(&v26, v12);
          v8 = v13;
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
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_19BB538D0(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
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

void sub_19BB596C0(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v31[1] = a4;
  v32 = a3;
  v33 = a1;
  v5 = sub_19BE0DE8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8848, &qword_19BE36D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19BE35710;
  v11 = *MEMORY[0x1E69A29A8];
  *(inited + 32) = sub_19BE0DFAC();
  *(inited + 40) = v12;
  v13 = sub_19BE0DEBC();
  v14 = HMFEncodedRootObject();

  v15 = sub_19BE0DDFC();
  v17 = v16;

  *(inited + 48) = v15;
  *(inited + 56) = v17;
  v18 = sub_19BB51560(inited);
  swift_setDeallocating();
  sub_19BB49974(inited + 32, &unk_1EAFE8850, &qword_19BE36D68);
  if (*a2 != -1)
  {
    swift_once();
  }

  v19 = v33;
  v20 = *v32;
  v21 = [v33 uuid];
  sub_19BE0DE6C();

  v22 = objc_allocWithZone(MEMORY[0x1E69A2A00]);
  v23 = sub_19BE0DE5C();
  v24 = [v22 initWithTarget_];

  (*(v6 + 8))(v9, v5);
  sub_19BB593D8(v18);

  v25 = objc_allocWithZone(MEMORY[0x1E69A29F8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  v26 = sub_19BE0DF2C();

  v27 = [v25 initWithName:v20 destination:v24 payload:v26];

  v28 = [v19 context];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 messageDispatcher];

    [v30 sendMessage_];
  }
}

uint64_t HMHome.handlePresenceUpdateMessage(_:)(void *a1)
{
  v1 = [a1 flow];
  v2 = *MEMORY[0x1E69A2980];
  sub_19BE0DFAC();
  sub_19BE0DEAC();
  sub_19BE0DEDC();
}

uint64_t sub_19BB59AB4(void *a1, void *a2)
{
  v5 = sub_19BE0DE8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - v13;
  v15 = sub_19BE0DF9C();
  v16 = [a1 uuidForKey_];

  if (!v16)
  {
    return sub_19BE0DEEC();
  }

  v47 = v2;
  sub_19BE0DE6C();

  (*(v6 + 32))(v14, v12, v5);
  v17 = sub_19BE0DE5C();
  v18 = [a2 userWithUUID_];

  if (!v18)
  {
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_19BE0E25C();

    v51 = 0xD00000000000001DLL;
    v52 = 0x800000019BE385D0;
    sub_19BB5A8C8();
    v29 = sub_19BE0E43C();
    MEMORY[0x19EAEAC30](v29);

    MEMORY[0x19EAEAC30](0x656D6F68206E6920, 0xEA0000000000203ALL);
    v30 = [a2 description];
    v31 = sub_19BE0DFAC();
    v33 = v32;

    MEMORY[0x19EAEAC30](v31, v33);

    sub_19BE0DEEC();

    return (*(v6 + 8))(v14, v5);
  }

  v19 = sub_19BE0DF9C();
  v20 = [a1 dataForKey_];

  if (!v20)
  {
    sub_19BE0DEEC();

    return (*(v6 + 8))(v14, v5);
  }

  v21 = sub_19BE0DDFC();
  v23 = v22;

  v24 = sub_19BE0DCDC();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_19BE0DCCC();
  sub_19BB5A920();
  v27 = v47;
  sub_19BE0DCBC();
  if (v27)
  {

    sub_19BE0DEEC();

    sub_19BB52344(v21, v23);
    return (*(v6 + 8))(v14, v5);
  }

  v47 = 0;

  v34 = v51;
  v45 = a2;
  v35 = [a2 delegate];
  if (v35 && (v55 = v35, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8838, &qword_19BE36D50), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8840, &qword_19BE36D58), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v49 + 1))
    {
      sub_19BB530A4(&v48, &v51);
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_19BE0E25C();
      MEMORY[0x19EAEAC30](0xD000000000000029, 0x800000019BE386A0);
      v44 = v34;
      LOBYTE(v55) = v34;
      sub_19BE0E30C();
      MEMORY[0x19EAEAC30](0x65737520726F6620, 0xEB00000000203A72);
      sub_19BB5A8C8();
      v36 = sub_19BE0E43C();
      MEMORY[0x19EAEAC30](v36);

      MEMORY[0x19EAEAC30](0x656D6F68206E6920, 0xEA0000000000203ALL);
      v37 = [v45 uuid];
      v38 = v46;
      sub_19BE0DE6C();

      v39 = sub_19BE0E43C();
      MEMORY[0x19EAEAC30](v39);

      v43 = *(v6 + 8);
      v43(v38, v5);
      sub_19BE0DECC();

      v41 = v53;
      v40 = v54;
      __swift_project_boxed_opaque_existential_0(&v51, v53);
      LOBYTE(v48) = v44;
      (*(v40 + 8))(v45, v18, &v48, v41, v40);

      sub_19BB52344(v21, v23);
      v43(v14, v5);
      return __swift_destroy_boxed_opaque_existential_0(&v51);
    }
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
  }

  sub_19BB49974(&v48, &qword_1EAFE8830, &unk_19BE36D40);
  sub_19BE0DEEC();

  sub_19BB52344(v21, v23);
  return (*(v6 + 8))(v14, v5);
}

unint64_t sub_19BB5A1A8()
{
  result = qword_1EAFE87D0;
  if (!qword_1EAFE87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE87D0);
  }

  return result;
}

uint64_t _s9EnergyKitO15ClearAllMessageV15ResponsePayloadV7FailureV12ErrorDetailsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9EnergyKitO15ClearAllMessageV15ResponsePayloadV7FailureV12ErrorDetailsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_19BB5A498()
{
  result = qword_1EAFE87D8;
  if (!qword_1EAFE87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE87D8);
  }

  return result;
}

unint64_t sub_19BB5A4F0()
{
  result = qword_1EAFE87E0;
  if (!qword_1EAFE87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE87E0);
  }

  return result;
}

unint64_t sub_19BB5A548()
{
  result = qword_1EAFE87E8;
  if (!qword_1EAFE87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE87E8);
  }

  return result;
}

unint64_t sub_19BB5A5A0()
{
  result = qword_1EAFE87F0;
  if (!qword_1EAFE87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE87F0);
  }

  return result;
}

unint64_t sub_19BB5A5F8()
{
  result = qword_1EAFE87F8;
  if (!qword_1EAFE87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE87F8);
  }

  return result;
}

unint64_t sub_19BB5A650()
{
  result = qword_1EAFE8800;
  if (!qword_1EAFE8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8800);
  }

  return result;
}

unint64_t sub_19BB5A6A8()
{
  result = qword_1EAFE8808;
  if (!qword_1EAFE8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8808);
  }

  return result;
}

unint64_t sub_19BB5A700()
{
  result = qword_1EAFE8810;
  if (!qword_1EAFE8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8810);
  }

  return result;
}

unint64_t sub_19BB5A758()
{
  result = qword_1EAFE8818;
  if (!qword_1EAFE8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8818);
  }

  return result;
}

uint64_t sub_19BB5A7AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_19BE0E44C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D6F487461 && a2 == 0xE600000000000000 || (sub_19BE0E44C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F487441746F6ELL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_19BE0E44C();

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

unint64_t sub_19BB5A8C8()
{
  result = qword_1EAFE8820;
  if (!qword_1EAFE8820)
  {
    sub_19BE0DE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8820);
  }

  return result;
}

unint64_t sub_19BB5A920()
{
  result = qword_1EAFE8828;
  if (!qword_1EAFE8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8828);
  }

  return result;
}

uint64_t HMService.matterEndpointID.getter()
{
  v1 = [v0 matterEndpointID];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedShortValue];
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v2 == 0) << 16);
}

uint64_t AccessoryInfoFetchItemCollection.__allocating_init(accessoryUniqueIdentifier:accessoryInfoFetchItems:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = OBJC_IVAR____TtC7HomeKit32AccessoryInfoFetchItemCollection_accessoryUniqueIdentifier;
  v9 = sub_19BE0DE8C();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  return v7;
}

uint64_t AccessoryInfoFetchItemCollection.init(accessoryUniqueIdentifier:accessoryInfoFetchItems:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v4 = OBJC_IVAR____TtC7HomeKit32AccessoryInfoFetchItemCollection_accessoryUniqueIdentifier;
  v5 = sub_19BE0DE8C();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t AccessoryInfoFetchItemCollection.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC7HomeKit32AccessoryInfoFetchItemCollection_accessoryUniqueIdentifier;
  v3 = sub_19BE0DE8C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t AccessoryInfoFetchItemCollection.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC7HomeKit32AccessoryInfoFetchItemCollection_accessoryUniqueIdentifier;
  v3 = sub_19BE0DE8C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t type metadata accessor for AccessoryInfoFetchItemCollection()
{
  result = qword_1EAFE8870;
  if (!qword_1EAFE8870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19BB5AD0C()
{
  result = sub_19BE0DE8C();
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

uint64_t sub_19BB5ADD8(uint64_t a1)
{
  v2 = sub_19BE0DB6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19BE0DBAC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_19BE0DB9C();
  (*(v3 + 104))(v6, *MEMORY[0x1E6967F30], v2);
  sub_19BE0DB7C();
  if (*(a1 + 16) && (v10 = sub_19BB50740(1852797802, 0xE400000000000000), (v11 & 1) != 0))
  {
    sub_19BB4516C(*(a1 + 56) + 32 * v10, v17);

    sub_19BB538D0(v17, &v18);
  }

  else
  {
    v12 = MEMORY[0x1E69E6158];

    v19 = v12;
    *&v18 = 32123;
    *(&v18 + 1) = 0xE200000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  if (swift_dynamicCast())
  {
    v13 = sub_19BB556C0(*&v17[0], *(&v17[0] + 1));
    v15 = v14;
    sub_19BB60BF8();
    sub_19BE0DB8C();

    return sub_19BB52344(v13, v15);
  }

  else
  {
    type metadata accessor for HMError(0);
    *&v17[0] = 52;
    sub_19BB57810(MEMORY[0x1E69E7CC0]);
    sub_19BB60094(&qword_1EAFE8250, type metadata accessor for HMError);
    sub_19BE0DD4C();
    swift_willThrow();
  }
}

uint64_t sub_19BB5B05C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_19BE0DB6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19BE0DBAC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_19BE0DB9C();
  (*(v6 + 104))(v9, *MEMORY[0x1E6967F30], v5);
  sub_19BE0DB7C();
  if (*(a1 + 16) && (v13 = sub_19BB50740(1852797802, 0xE400000000000000), (v14 & 1) != 0))
  {
    sub_19BB4516C(*(a1 + 56) + 32 * v13, v20);

    sub_19BB538D0(v20, &v21);
  }

  else
  {
    v15 = MEMORY[0x1E69E6158];

    v22 = v15;
    *&v21 = 32123;
    *(&v21 + 1) = 0xE200000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  if (swift_dynamicCast())
  {
    v16 = sub_19BB556C0(*&v20[0], *(&v20[0] + 1));
    v18 = v17;
    sub_19BB60C58();
    sub_19BE0DB8C();

    result = sub_19BB52344(v16, v18);
    if (!v2)
    {
      *a2 = v21;
    }
  }

  else
  {
    type metadata accessor for HMError(0);
    *&v20[0] = 52;
    sub_19BB57810(MEMORY[0x1E69E7CC0]);
    sub_19BB60094(&qword_1EAFE8250, type metadata accessor for HMError);
    sub_19BE0DD4C();
    swift_willThrow();
  }

  return result;
}

_BYTE *sub_19BB5B2F4()
{
  v1 = sub_19BE0DFDC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_19BE0DBCC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_19BE0DBEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_19BE0DC2C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_19BE0DC1C();
  (*(v8 + 104))(v11, *MEMORY[0x1E6967FC8], v7);
  sub_19BE0DBFC();
  sub_19BE0DBBC();
  sub_19BE0DBDC();
  sub_19BB60CAC();
  v15 = sub_19BE0DC0C();
  if (!v0)
  {
    v17 = v15;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83A8, &qword_19BE366B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19BE35710;
    *(inited + 32) = 1852797802;
    *(inited + 40) = 0xE400000000000000;
    sub_19BE0DFCC();
    v20 = sub_19BE0DFBC();
    v22 = v21;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8730, &qword_19BE366B8);
    *(inited + 48) = v20;
    *(inited + 56) = v22;
    v4 = sub_19BB51184(inited);
    swift_setDeallocating();
    sub_19BB49974(inited + 32, &qword_1EAFE83B8, &qword_19BE366C0);
    sub_19BB52344(v17, v18);
  }

  return v4;
}

_BYTE *sub_19BB5B594(uint64_t a1, uint64_t a2)
{
  v5 = sub_19BE0DFDC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_19BE0DBCC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_19BE0DBEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = a1;
  v30 = a2;
  v16 = sub_19BE0DC2C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_19BE0DC1C();
  (*(v12 + 104))(v15, *MEMORY[0x1E6967FC8], v11);
  sub_19BE0DBFC();
  sub_19BE0DBBC();
  sub_19BE0DBDC();
  sub_19BB60BA4();
  v19 = sub_19BE0DC0C();
  if (!v2)
  {
    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83A8, &qword_19BE366B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19BE35710;
    *(inited + 32) = 1852797802;
    *(inited + 40) = 0xE400000000000000;
    sub_19BE0DFCC();
    v24 = sub_19BE0DFBC();
    v26 = v25;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8730, &qword_19BE366B8);
    *(inited + 48) = v24;
    *(inited + 56) = v26;
    v8 = sub_19BB51184(inited);
    swift_setDeallocating();
    sub_19BB49974(inited + 32, &qword_1EAFE83B8, &qword_19BE366C0);
    sub_19BB52344(v21, v22);
  }

  return v8;
}

uint64_t HMHomeManager.clearEnergyKitDataForAllHomes()()
{
  v1[15] = v0;
  v1[16] = swift_getObjectType();
  v2 = type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure(0);
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v4 = *(v3 + 64) + 15;
  v1[19] = swift_task_alloc();
  v5 = *(type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Success(0) - 8);
  v1[20] = v5;
  v6 = *(v5 + 64) + 15;
  v1[21] = swift_task_alloc();
  v7 = sub_19BE0DE8C();
  v1[22] = v7;
  v8 = *(v7 - 8);
  v1[23] = v8;
  v9 = *(v8 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v11 = sub_19BE0DF1C();
  v1[28] = v11;
  v12 = *(v11 - 8);
  v1[29] = v12;
  v13 = *(v12 + 64) + 15;
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19BB5BA70, 0, 0);
}

uint64_t sub_19BB5BA70()
{
  if ([*(v0 + 120) isDaemonRunningWithROARFramework])
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    sub_19BE0DFAC();
    sub_19BE0DE3C();

    v4 = (*(v3 + 48))(v1, 1, v2);
    if (v4 == 1)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v0 + 208);
      v12 = *(v0 + 216);
      v14 = *(v0 + 176);
      v15 = *(v0 + 184);
      v16 = *(v0 + 120);
      v17 = objc_allocWithZone(MEMORY[0x1E69A2A00]);
      v18 = sub_19BE0DE5C();
      v19 = [v17 initWithTarget_];
      *(v0 + 248) = v19;

      v20 = *(v15 + 8);
      *(v0 + 256) = v20;
      *(v0 + 264) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v20(v12, v14);
      v21 = [v16 context];
      v22 = [v21 messageDispatcher];
      *(v0 + 272) = v22;

      sub_19BE0DE7C();
      sub_19BB5B2F4();
      v40 = *(v0 + 200);
      v41 = *(v0 + 208);
      v42 = *(v0 + 176);
      v43 = *(v0 + 184);
      v53 = sub_19BE0DF9C();
      v44 = *(v43 + 16);
      *(v0 + 280) = v44;
      *(v0 + 288) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v44(v40, v41, v42);
      v45 = objc_allocWithZone(MEMORY[0x1E69A2A10]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
      v46 = sub_19BE0DF2C();

      v47 = [v45 initWithName:v53 qualityOfService:-1 destination:v19 userInfo:0 headers:0 payload:v46];
      *(v0 + 296) = v47;

      v48 = v47;
      v49 = sub_19BE0DE5C();
      [v48 setIdentifier_];

      v20(v40, v42);
      v50 = swift_task_alloc();
      *(v0 + 304) = v50;
      *(v50 + 16) = v48;
      *(v50 + 24) = v22;
      v51 = *(MEMORY[0x1E69E8920] + 4);
      v52 = swift_task_alloc();
      *(v0 + 312) = v52;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8738, &qword_19BE366D0);
      *v52 = v0;
      v52[1] = sub_19BB5BF6C;
      v9 = sub_19BB5E7C4;
      v4 = v0 + 112;
      v8 = 0x800000019BE38460;
      v5 = 0;
      v6 = 0;
      v7 = 0xD00000000000004ALL;
      v10 = v50;
    }

    return MEMORY[0x1EEE6DE38](v4, v5, v6, v7, v8, v9, v10, v11);
  }

  else
  {
    v23 = *(v0 + 240);
    v24 = *(v0 + 128);
    sub_19BE0E14C();
    v25 = sub_19BE0DEFC();
    v26 = sub_19BE0E18C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_19BB39000, v25, v26, "Activity history is only supported in HH2 mode", v27, 2u);
      MEMORY[0x19EAEC200](v27, -1, -1);
    }

    v29 = *(v0 + 232);
    v28 = *(v0 + 240);
    v30 = *(v0 + 224);

    (*(v29 + 8))(v28, v30);
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    v31 = *(v0 + 240);
    v32 = *(v0 + 208);
    v33 = *(v0 + 216);
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v36 = *(v0 + 168);
    v37 = *(v0 + 152);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_19BB5BF6C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 304);

  if (v0)
  {
    v6 = sub_19BB5C84C;
  }

  else
  {
    v6 = sub_19BB5C0A0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

unint64_t sub_19BB5C0A0()
{
  v1 = *(v0 + 320);
  sub_19BB5B05C(*(v0 + 112), (v0 + 96));
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 208);
  v6 = *(v0 + 176);

  result = v4(v5, v6);
  if (v1)
  {

    v8 = *(v0 + 240);
    v9 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 168);
    v14 = *(v0 + 152);

    v15 = *(v0 + 8);

    return v15();
  }

  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v110 = MEMORY[0x1E69E7CC8];
  if (__OFADD__(*(v16 + 16), *(v17 + 16)))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8880, &qword_19BE36E00);
  sub_19BE0DF5C();
  v18 = *(v16 + 16);
  v99 = v17;
  if (!v18)
  {
    goto LABEL_22;
  }

  v19 = *(v0 + 160);
  v108 = v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v103 = *(v0 + 184);

  for (i = 0; i != v18; ++i)
  {
    if (i >= *(v16 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v28 = *(v0 + 192);
    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    sub_19BB5FED4(v108 + *(v19 + 72) * i, v30, type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Success);
    v103[4](v28, v30, v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_19BB506BC(v28);
    v33 = v110[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_45;
    }

    v37 = v32;
    if (v110[3] < v36)
    {
      v38 = *(v0 + 192);
      sub_19BB5F1DC(v36, isUniquelyReferenced_nonNull_native);
      result = sub_19BB506BC(v38);
      if ((v37 & 1) != (v39 & 1))
      {
LABEL_36:
        v90 = *(v0 + 176);

        return sub_19BE0E46C();
      }

LABEL_16:
      if (v37)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v49 = result;
    sub_19BB5FC40();
    result = v49;
    if (v37)
    {
LABEL_8:
      v22 = *(v0 + 256);
      v21 = *(v0 + 264);
      v23 = *(v0 + 192);
      v24 = *(v0 + 176);
      v25 = v110[7] + 16 * result;
      v26 = *v25;
      v27 = *(v25 + 8);
      *v25 = 0;
      *(v25 + 8) = 0;
      sub_19BB5FF98(v26, v27);
      result = v22(v23, v24);
      continue;
    }

LABEL_17:
    v41 = *(v0 + 280);
    v40 = *(v0 + 288);
    v42 = *(v0 + 256);
    v105 = *(v0 + 264);
    v43 = *(v0 + 192);
    v44 = *(v0 + 176);
    v110[(result >> 6) + 8] |= 1 << result;
    v45 = result;
    v41(v110[6] + v103[9] * result, v43, v44);
    v46 = v110[7] + 16 * v45;
    *v46 = 0;
    *(v46 + 8) = 0;
    result = v42(v43, v44);
    v47 = v110[2];
    v35 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (v35)
    {
      goto LABEL_47;
    }

    v110[2] = v48;
  }

  v17 = v99;
LABEL_22:

  v50 = *(v17 + 16);
  if (v50)
  {
    v100 = *(v0 + 184);
    v51 = *(v0 + 144);
    v106 = (*(v0 + 152) + *(*(v0 + 136) + 20));
    v104 = objc_opt_self();
    v52 = v17 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v102 = *MEMORY[0x1E696A578];
    v101 = *(v51 + 72);
    v53 = v110;
    while (1)
    {
      v107 = v50;
      v109 = *(v0 + 152);
      sub_19BB5FED4(v52, v109, type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure);
      v58 = *v106;
      v59 = v106[1];
      v60 = v106[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8888, &qword_19BE36E08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19BE35710;
      *(inited + 32) = sub_19BE0DFAC();
      *(inited + 40) = v62;
      v64 = v106[3];
      v63 = v106[4];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v64;
      *(inited + 56) = v63;

      sub_19BB51678(inited);
      swift_setDeallocating();
      sub_19BB49974(inited + 32, &qword_1EAFE85C0, &qword_19BE36470);
      v65 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v66 = sub_19BE0DF9C();
      v67 = sub_19BE0DF2C();

      v68 = [v65 initWithDomain:v66 code:v60 userInfo:v67];

      v69 = sub_19BE0DF9C();
      v70 = v68;
      v71 = sub_19BE0DD5C();

      v72 = [v104 hmErrorWithCode:-1 description:v69 reason:0 suggestion:0 underlyingError:v71];
      v73 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_19BB506BC(v109);
      v75 = v110[2];
      v76 = (v74 & 1) == 0;
      v35 = __OFADD__(v75, v76);
      v77 = v75 + v76;
      if (v35)
      {
        goto LABEL_46;
      }

      v78 = v74;
      if (v110[3] < v77)
      {
        break;
      }

      if (v73)
      {
        goto LABEL_31;
      }

      v89 = result;
      sub_19BB5FC40();
      result = v89;
      if ((v78 & 1) == 0)
      {
LABEL_32:
        v82 = *(v0 + 280);
        v81 = *(v0 + 288);
        v83 = *(v0 + 176);
        v84 = *(v0 + 152);
        v110[(result >> 6) + 8] |= 1 << result;
        v85 = result;
        result = v82(v110[6] + *(v100 + 72) * result, v84, v83);
        v86 = v110[7] + 16 * v85;
        *v86 = v72;
        *(v86 + 8) = 1;
        v87 = v110[2];
        v35 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v35)
        {
          goto LABEL_48;
        }

        v110[2] = v88;
        goto LABEL_25;
      }

LABEL_24:
      v54 = v110[7] + 16 * result;
      v55 = *v54;
      v56 = *(v54 + 8);
      *v54 = v72;
      *(v54 + 8) = 1;
      sub_19BB5FF98(v55, v56);
LABEL_25:
      v57 = *(v0 + 152);

      sub_19BB5FF3C(v57);
      v52 += v101;
      v50 = v107 - 1;
      if (v107 == 1)
      {

        goto LABEL_41;
      }
    }

    v79 = *(v0 + 152);
    sub_19BB5F1DC(v77, v73);
    result = sub_19BB506BC(v79);
    if ((v78 & 1) != (v80 & 1))
    {
      goto LABEL_36;
    }

LABEL_31:
    if ((v78 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v53 = v110;
LABEL_41:
  v91 = *(v0 + 240);
  v93 = *(v0 + 208);
  v92 = *(v0 + 216);
  v95 = *(v0 + 192);
  v94 = *(v0 + 200);
  v96 = *(v0 + 168);
  v97 = *(v0 + 152);

  v98 = *(v0 + 8);

  return v98(v53);
}

uint64_t sub_19BB5C84C()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 208);
  v5 = *(v0 + 176);

  v3(v4, v5);
  v6 = *(v0 + 320);

  v7 = *(v0 + 240);
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v12 = *(v0 + 168);
  v13 = *(v0 + 152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_19BB5C978(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.init(successes:failures:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_19BB5C9C8()
{
  if (*v0)
  {
    result = 0x736572756C696166;
  }

  else
  {
    result = 0x6573736563637573;
  }

  *v0;
  return result;
}

uint64_t sub_19BB5CA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573736563637573 && a2 == 0xE900000000000073;
  if (v6 || (sub_19BE0E44C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736572756C696166 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19BE0E44C();

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

uint64_t sub_19BB5CAEC(uint64_t a1)
{
  v2 = sub_19BB5FFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB5CB28(uint64_t a1)
{
  v2 = sub_19BB5FFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Success.init(homeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19BE0DE8C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_19BB5CC18()
{
  sub_19BE0E4DC();
  MEMORY[0x19EAEB100](0);
  return sub_19BE0E4FC();
}

uint64_t sub_19BB5CC84()
{
  sub_19BE0E4DC();
  MEMORY[0x19EAEB100](0);
  return sub_19BE0E4FC();
}

uint64_t sub_19BB5CCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656449656D6F68 && a2 == 0xEE00726569666974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19BE0E44C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19BB5CD78(uint64_t a1)
{
  v2 = sub_19BB602C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB5CDB4(uint64_t a1)
{
  v2 = sub_19BB602C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19BB5CDF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19BE0DE8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + 16);
  *(a1 + 32) = v5;
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure.init(homeIdentifier:error:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_19BE0DE8C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  v8 = sub_19BE0DD5C();
  v9 = [v8 domain];
  v19 = sub_19BE0DFAC();
  v11 = v10;

  v12 = [v8 code];
  v13 = [v8 localizedDescription];
  v14 = sub_19BE0DFAC();
  v16 = v15;

  (*(v7 + 8))(a1, v6);
  result = type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure(0);
  v18 = (a3 + *(result + 20));
  *v18 = v19;
  v18[1] = v11;
  v18[2] = v12;
  v18[3] = v14;
  v18[4] = v16;
  return result;
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure.ErrorDetails.init(domain:code:message:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_19BB5D044()
{
  if (*v0)
  {
    result = 0x726F727265;
  }

  else
  {
    result = 0x6E656449656D6F68;
  }

  *v0;
  return result;
}

uint64_t sub_19BB5D088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656449656D6F68 && a2 == 0xEE00726569666974;
  if (v6 || (sub_19BE0E44C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19BE0E44C();

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

uint64_t sub_19BB5D168(uint64_t a1)
{
  v2 = sub_19BB60178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB5D1A4(uint64_t a1)
{
  v2 = sub_19BB60178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8890, &qword_19BE36E10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB5FFA4();

  sub_19BE0E51C();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE88A0, &qword_19BE36E18);
  sub_19BB600DC(&qword_1EAFE88A8, &qword_1EAFE88B0);
  sub_19BE0E42C();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE88B8, &qword_19BE36E20);
    sub_19BB5FFF8(&qword_1EAFE88C0, &qword_1EAFE88C8);
    sub_19BE0E42C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE88D0, &qword_19BE36E28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB5FFA4();
  sub_19BE0E50C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE88A0, &qword_19BE36E18);
  v15 = 0;
  sub_19BB600DC(&qword_1EAFE88D8, &qword_1EAFE88E0);
  sub_19BE0E3CC();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE88B8, &qword_19BE36E20);
  v15 = 1;
  sub_19BB5FFF8(&qword_1EAFE88E8, &qword_1EAFE88F0);
  sub_19BE0E3CC();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure.ErrorDetails.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure.ErrorDetails.message.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_19BB5D760()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_19BB5D7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19BB60A90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19BB5D7D8(uint64_t a1)
{
  v2 = sub_19BB60274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19BB5D814(uint64_t a1)
{
  v2 = sub_19BB60274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE88F8, &qword_19BE36E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB60178();
  sub_19BE0E51C();
  LOBYTE(v16) = 0;
  sub_19BE0DE8C();
  sub_19BB60094(&qword_1EAFE8908, MEMORY[0x1E69695A8]);
  sub_19BE0E42C();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure(0) + 20));
    v12 = v11[1];
    v13 = v11[4];
    v16 = *v11;
    v17 = v12;
    v18 = *(v11 + 1);
    v19 = v13;
    v15[7] = 1;
    sub_19BB601CC();

    sub_19BE0E42C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v33 = sub_19BE0DE8C();
  v30 = *(v33 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8918, &qword_19BE36E38);
  v8 = *(v7 - 8);
  v31 = v7;
  v32 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB60178();
  sub_19BE0E50C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v12;
  v17 = v15;
  v18 = v30;
  LOBYTE(v34) = 0;
  sub_19BB60094(&qword_1EAFE8920, MEMORY[0x1E69695A8]);
  v19 = v33;
  v20 = v31;
  sub_19BE0E3CC();
  v21 = *(v18 + 32);
  v27 = v17;
  v21(v17, v6, v19);
  v38 = 1;
  sub_19BB60220();
  sub_19BE0E3CC();
  (*(v32 + 8))(v11, v20);
  v22 = v35;
  v23 = v37;
  v24 = v27;
  v25 = v27 + *(v28 + 20);
  *v25 = v34;
  *(v25 + 8) = v22;
  *(v25 + 16) = v36;
  *(v25 + 32) = v23;
  sub_19BB5FED4(v24, v29, type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_19BB5FF3C(v24);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure.ErrorDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8930, &qword_19BE36E40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB60274();
  sub_19BE0E51C();
  v17 = 0;
  v12 = v14[3];
  sub_19BE0E40C();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v16 = 1;
  sub_19BE0E41C();
  v15 = 2;
  sub_19BE0E40C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure.ErrorDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8940, &qword_19BE36E48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB60274();
  sub_19BE0E50C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v11 = sub_19BE0E3AC();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v22 = sub_19BE0E3BC();
  v23 = 2;
  v15 = sub_19BE0E3AC();
  v18 = v17;
  v19 = *(v6 + 8);
  v21 = v15;
  v19(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  v20 = v21;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Success.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8948, &qword_19BE36E50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB602C8();
  sub_19BE0E51C();
  sub_19BE0DE8C();
  sub_19BB60094(&qword_1EAFE8908, MEMORY[0x1E69695A8]);
  sub_19BE0E42C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Success.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_19BE0DE8C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8958, &qword_19BE36E58);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Success(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB602C8();
  sub_19BE0E50C();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_19BB60094(&qword_1EAFE8920, MEMORY[0x1E69695A8]);
    sub_19BE0E3CC();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_19BB6031C(v14, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_19BB5E64C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8948, &qword_19BE36E50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_19BB602C8();
  sub_19BE0E51C();
  sub_19BE0DE8C();
  sub_19BB60094(&qword_1EAFE8908, MEMORY[0x1E69695A8]);
  sub_19BE0E42C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_19BB5E7CC(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_19BE0DE2C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19BE0DE8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8A08, &unk_19BE374C0);
  v52 = a2;
  result = sub_19BE0E34C();
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
      sub_19BB60094(&qword_1EAFE83D8, MEMORY[0x1E69695A8]);
      result = sub_19BE0DF6C();
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

uint64_t sub_19BB5EC9C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_19BE0E34C();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_19BE0E4DC();
      MEMORY[0x19EAEB100](v23);
      result = sub_19BE0E4FC();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_19BB5EF24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8860, &unk_19BE36480);
  v36 = a2;
  result = sub_19BE0E34C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_19BB538D0(v25, v37);
      }

      else
      {
        sub_19BB4516C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_19BE0E4DC();
      sub_19BE0E00C();
      result = sub_19BE0E4FC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_19BB538D0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_19BB5F1DC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_19BE0DE8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE89F0, &qword_19BE374B8);
  v48 = a2;
  result = sub_19BE0E34C();
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
        sub_19BB60C4C(*v34, v33);
      }

      v35 = *(v13 + 40);
      sub_19BB60094(&qword_1EAFE83D8, MEMORY[0x1E69695A8]);
      result = sub_19BE0DF6C();
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

char *sub_19BB5F5D4()
{
  v1 = v0;
  v43 = sub_19BE0DE2C();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00]();
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_19BE0DE8C();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00]();
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8A08, &unk_19BE374C0);
  v6 = *v0;
  v7 = sub_19BE0E33C();
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

void *sub_19BB5F950(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_19BE0E33C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_19BB5FA9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8860, &unk_19BE36480);
  v2 = *v0;
  v3 = sub_19BE0E33C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_19BB4516C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_19BB538D0(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_19BB5FC40()
{
  v1 = v0;
  v2 = sub_19BE0DE8C();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE89F0, &qword_19BE374B8);
  v6 = *v0;
  v7 = sub_19BE0E33C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = v26 + 16 * v21;
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = *(v31 + 56) + v27;
        v6 = v37;
        *v32 = v29;
        *(v32 + 8) = v30;
        result = sub_19BB60C4C(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
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

uint64_t sub_19BB5FED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19BB5FF3C(uint64_t a1)
{
  v2 = type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19BB5FF98(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_19BB5FFA4()
{
  result = qword_1EAFE8898;
  if (!qword_1EAFE8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8898);
  }

  return result;
}

uint64_t sub_19BB5FFF8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFE88B8, &qword_19BE36E20);
    sub_19BB60094(a2, type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Failure);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19BB60094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19BB600DC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFE88A0, &qword_19BE36E18);
    sub_19BB60094(a2, type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Success);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19BB60178()
{
  result = qword_1EAFE8900;
  if (!qword_1EAFE8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8900);
  }

  return result;
}

unint64_t sub_19BB601CC()
{
  result = qword_1EAFE8910;
  if (!qword_1EAFE8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8910);
  }

  return result;
}

unint64_t sub_19BB60220()
{
  result = qword_1EAFE8928;
  if (!qword_1EAFE8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8928);
  }

  return result;
}

unint64_t sub_19BB60274()
{
  result = qword_1EAFE8938;
  if (!qword_1EAFE8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8938);
  }

  return result;
}

unint64_t sub_19BB602C8()
{
  result = qword_1EAFE8950;
  if (!qword_1EAFE8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8950);
  }

  return result;
}

uint64_t sub_19BB6031C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HMHomeManager.EnergyKit.ClearAllMessage.ResponsePayload.Success(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19BB603B8(uint64_t *a1, int a2)
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

uint64_t sub_19BB60400(uint64_t result, int a2, int a3)
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

uint64_t sub_19BB60474()
{
  result = sub_19BE0DE8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19BB60508()
{
  result = sub_19BE0DE8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_19BB60590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_19BB605D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19BB60674()
{
  result = qword_1EAFE8980;
  if (!qword_1EAFE8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8980);
  }

  return result;
}

unint64_t sub_19BB606CC()
{
  result = qword_1EAFE8988;
  if (!qword_1EAFE8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8988);
  }

  return result;
}

unint64_t sub_19BB60724()
{
  result = qword_1EAFE8990;
  if (!qword_1EAFE8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8990);
  }

  return result;
}

unint64_t sub_19BB6077C()
{
  result = qword_1EAFE8998;
  if (!qword_1EAFE8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8998);
  }

  return result;
}

unint64_t sub_19BB607D4()
{
  result = qword_1EAFE89A0;
  if (!qword_1EAFE89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89A0);
  }

  return result;
}

unint64_t sub_19BB6082C()
{
  result = qword_1EAFE89A8;
  if (!qword_1EAFE89A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89A8);
  }

  return result;
}

unint64_t sub_19BB60884()
{
  result = qword_1EAFE89B0;
  if (!qword_1EAFE89B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89B0);
  }

  return result;
}

unint64_t sub_19BB608DC()
{
  result = qword_1EAFE89B8;
  if (!qword_1EAFE89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89B8);
  }

  return result;
}

unint64_t sub_19BB60934()
{
  result = qword_1EAFE89C0;
  if (!qword_1EAFE89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89C0);
  }

  return result;
}

unint64_t sub_19BB6098C()
{
  result = qword_1EAFE89C8;
  if (!qword_1EAFE89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89C8);
  }

  return result;
}

unint64_t sub_19BB609E4()
{
  result = qword_1EAFE89D0;
  if (!qword_1EAFE89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89D0);
  }

  return result;
}

unint64_t sub_19BB60A3C()
{
  result = qword_1EAFE89D8;
  if (!qword_1EAFE89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89D8);
  }

  return result;
}

uint64_t sub_19BB60A90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_19BE0E44C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_19BE0E44C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_19BE0E44C();

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

unint64_t sub_19BB60BA4()
{
  result = qword_1EAFE89E0;
  if (!qword_1EAFE89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89E0);
  }

  return result;
}

unint64_t sub_19BB60BF8()
{
  result = qword_1EAFE89E8;
  if (!qword_1EAFE89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89E8);
  }

  return result;
}

id sub_19BB60C4C(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

unint64_t sub_19BB60C58()
{
  result = qword_1EAFE89F8;
  if (!qword_1EAFE89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE89F8);
  }

  return result;
}

unint64_t sub_19BB60CAC()
{
  result = qword_1EAFE8A00;
  if (!qword_1EAFE8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFE8A00);
  }

  return result;
}

id HMUserActionPredictionTransformerMatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HMUserActionPredictionTransformerMatter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMUserActionPredictionTransformerMatter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HMUserActionPredictionTransformerMatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMUserActionPredictionTransformerMatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_19BB60E5C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE8608, &qword_19BE364C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_19BB60ED0(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_19BE0E07C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_19BB61454();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_19BE0E2AC();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_19BB61454()
{
  v0 = sub_19BE0E08C();
  v4 = sub_19BB614D4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_19BB614D4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_19BE0DFFC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_19BE0E1DC();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_19BB60E5C(v9, 0);
  v12 = sub_19BB6162C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_19BE0DFFC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_19BE0E2AC();
LABEL_4:

  return sub_19BE0DFFC();
}

unint64_t sub_19BB6162C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_19BB6184C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_19BE0E05C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_19BE0E2AC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_19BB6184C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_19BE0E03C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_19BB6184C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_19BE0E06C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x19EAEAC60](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_19BB618C8(unint64_t result, unint64_t a2, id a3)
{
  v3 = a2;
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    goto LABEL_79;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v34[0] = result;
    v34[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v4)
      {
        if (--v4)
        {
          v8 = 0;
          v16 = v34 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            if (!is_mul_ok(v8, 0xAuLL))
            {
              break;
            }

            v11 = __CFADD__(10 * v8, v17);
            v8 = 10 * v8 + v17;
            if (v11)
            {
              break;
            }

            ++v16;
            if (!--v4)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_89:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v19 = v34;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = __CFADD__(10 * v8, v20);
          v8 = 10 * v8 + v20;
          if (v11)
          {
            break;
          }

          ++v19;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v34 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            break;
          }

          v11 = 10 * v8 >= v13;
          v8 = 10 * v8 - v13;
          if (!v11)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_87;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v33 = a3;
    result = sub_19BE0E2AC();
    a3 = v33;
  }

  v7 = *result;
  if (v7 == 43)
  {
    if (v5 < 1)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v4 = v5 - 1;
    if (v5 != 1)
    {
      v8 = 0;
      if (result)
      {
        v14 = (result + 1);
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            goto LABEL_63;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            goto LABEL_63;
          }

          v11 = __CFADD__(10 * v8, v15);
          v8 = 10 * v8 + v15;
          if (v11)
          {
            goto LABEL_63;
          }

          ++v14;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_55;
    }

LABEL_63:
    v8 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_64;
  }

  if (v7 != 45)
  {
    if (v5)
    {
      v8 = 0;
      if (result)
      {
        while (1)
        {
          v18 = *result - 48;
          if (v18 > 9)
          {
            goto LABEL_63;
          }

          if (!is_mul_ok(v8, 0xAuLL))
          {
            goto LABEL_63;
          }

          v11 = __CFADD__(10 * v8, v18);
          v8 = 10 * v8 + v18;
          if (v11)
          {
            goto LABEL_63;
          }

          ++result;
          if (!--v5)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_55;
    }

    goto LABEL_63;
  }

  if (v5 < 1)
  {
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v4 = v5 - 1;
  if (v5 == 1)
  {
    goto LABEL_63;
  }

  v8 = 0;
  if (result)
  {
    v9 = (result + 1);
    while (1)
    {
      v10 = *v9 - 48;
      if (v10 > 9)
      {
        goto LABEL_63;
      }

      if (!is_mul_ok(v8, 0xAuLL))
      {
        goto LABEL_63;
      }

      v11 = 10 * v8 >= v10;
      v8 = 10 * v8 - v10;
      if (!v11)
      {
        goto LABEL_63;
      }

      ++v9;
      if (!--v4)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_55:
  LOBYTE(v4) = 0;
LABEL_64:
  v35 = v4;
  if ((v4 & 1) == 0)
  {
    while (1)
    {
      v21 = [a3 accessories];
      sub_19BB61D50();
      v3 = sub_19BE0E0DC();

      if (v3 >> 62)
      {
        result = sub_19BE0E32C();
        v22 = result;
        if (!result)
        {
LABEL_82:

          return 0;
        }
      }

      else
      {
        v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_82;
        }
      }

      v23 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x19EAEAE90](v23, v3);
        }

        else
        {
          if (v23 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          result = *(v3 + 8 * v23 + 32);
        }

        v24 = result;
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v26 = [result matterNodeID];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 unsignedLongLongValue];

          if (v28 == v8)
          {

            return v24;
          }
        }

        ++v23;
        if (v25 == v22)
        {
          goto LABEL_82;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      v29 = a3;
      v30 = result;

      v8 = sub_19BB60ED0(v30, v3, 10);
      v32 = v31;

      if (v32)
      {
        return 0;
      }

      a3 = v29;
    }
  }

  return 0;
}

unint64_t sub_19BB61D50()
{
  result = qword_1EAFE8A10;
  if (!qword_1EAFE8A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFE8A10);
  }

  return result;
}

double HMAccessory.AddAccessoryRequestMessage.RequestPayload.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_19BE0DE8C();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  v3(a1 + v4[5], 1, 1, v2);
  v5 = (a1 + v4[6]);
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a1 + v4[7]) = xmmword_19BE36670;
  *(a1 + v4[8]) = 0;
  *(a1 + v4[9]) = 0;
  return result;
}

uint64_t type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload()
{
  result = qword_1EAFE8A18;
  if (!qword_1EAFE8A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.messagePayload.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v98 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v92 - v5;
  v7 = sub_19BE0DE8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v95 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v92 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83A8, &qword_19BE366B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19BE37510;
  *(inited + 32) = sub_19BE0DFAC();
  *(inited + 40) = v14;
  v15 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  v16 = *(v0 + v15[8]);
  v17 = MEMORY[0x1E69E6370];
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = v16;
  *(inited + 80) = sub_19BE0DFAC();
  *(inited + 88) = v18;
  v19 = *(v0 + v15[9]);
  *(inited + 120) = v17;
  *(inited + 96) = v19;
  v20 = sub_19BB51184(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83B8, &qword_19BE366C0);
  swift_arrayDestroy();
  v21 = (v0 + v15[7]);
  v22 = v21[1];
  v99 = v8;
  if (v22 >> 60 != 15)
  {
    v23 = *v21;
    v96 = sub_19BE0DFAC();
    v97 = v7;
    v25 = v24;
    v103 = MEMORY[0x1E6969080];
    *&v102 = v23;
    *(&v102 + 1) = v22;
    sub_19BB538D0(&v102, &v100);
    sub_19BB63748(v23, v22);
    sub_19BB530E8(v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v20;
    v27 = v101;
    v28 = __swift_mutable_project_boxed_opaque_existential_0(&v100, v101);
    v93 = &v92;
    v29 = *(*(v27 - 8) + 64);
    MEMORY[0x1EEE9AC00](v28);
    v31 = v0;
    v32 = (&v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32);
    v34 = *v32;
    v35 = v32[1];
    v0 = v31;
    sub_19BB632AC(v34, v35, v96, v25, isUniquelyReferenced_nonNull_native, &v104);
    v7 = v97;

    v36 = v23;
    v8 = v99;
    sub_19BB54B0C(v36, v22);
    __swift_destroy_boxed_opaque_existential_0(&v100);
    v20 = v104;
  }

  sub_19BB54CB8(v0, v6);
  v97 = *(v8 + 48);
  v37 = v97(v6, 1, v7);
  v38 = MEMORY[0x1E69E6158];
  if (v37 == 1)
  {
    sub_19BB54C50(v6);
  }

  else
  {
    v39 = v94;
    (*(v8 + 32))(v94, v6, v7);
    v93 = sub_19BE0DFAC();
    v40 = v38;
    v42 = v41;
    v96 = v0;
    v43 = sub_19BE0DE4C();
    v103 = v40;
    *&v102 = v43;
    *(&v102 + 1) = v44;
    sub_19BB538D0(&v102, &v100);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v20;
    v46 = v101;
    v47 = __swift_mutable_project_boxed_opaque_existential_0(&v100, v101);
    v48 = *(*(v46 - 8) + 64);
    MEMORY[0x1EEE9AC00](v47);
    v50 = v7;
    v51 = (&v92 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = v99;
    (*(v52 + 16))(v51);
    v53 = *v51;
    v54 = v51[1];
    v7 = v50;
    v55 = v45;
    v0 = v96;
    sub_19BB63494(v53, v54, v93, v42, v55, &v104);

    (*(v8 + 8))(v39, v50);
    __swift_destroy_boxed_opaque_existential_0(&v100);
    v20 = v104;
  }

  v56 = (v0 + v15[6]);
  v57 = v56[1];
  if (v57)
  {
    v58 = *v56;
    v59 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v59 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      v60 = sub_19BE0DFAC();
      v96 = v0;
      v61 = v60;
      v63 = v62;
      v103 = MEMORY[0x1E69E6158];
      *&v102 = v58;
      *(&v102 + 1) = v57;
      sub_19BB538D0(&v102, &v100);

      v64 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v20;
      v65 = v101;
      v66 = __swift_mutable_project_boxed_opaque_existential_0(&v100, v101);
      v67 = *(*(v65 - 8) + 64);
      MEMORY[0x1EEE9AC00](v66);
      v69 = v7;
      v70 = (&v92 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v71 + 16))(v70);
      v72 = *v70;
      v73 = v70[1];
      v7 = v69;
      v74 = v61;
      v0 = v96;
      sub_19BB63494(v72, v73, v74, v63, v64, &v104);

      __swift_destroy_boxed_opaque_existential_0(&v100);
      v20 = v104;
    }

    v8 = v99;
  }

  v75 = v98;
  sub_19BB54CB8(v0 + v15[5], v98);
  if (v97(v75, 1, v7) == 1)
  {
    sub_19BB54C50(v75);
  }

  else
  {
    v76 = v95;
    (*(v8 + 32))(v95, v75, v7);
    v77 = sub_19BE0DFAC();
    v79 = v78;
    v80 = sub_19BE0DE4C();
    v103 = MEMORY[0x1E69E6158];
    *&v102 = v80;
    *(&v102 + 1) = v81;
    sub_19BB538D0(&v102, &v100);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v20;
    v83 = v8;
    v84 = v101;
    v85 = __swift_mutable_project_boxed_opaque_existential_0(&v100, v101);
    v86 = *(*(v84 - 8) + 64);
    MEMORY[0x1EEE9AC00](v85);
    v88 = v7;
    v89 = (&v92 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v90 + 16))(v89);
    sub_19BB63494(*v89, v89[1], v77, v79, v82, &v104);

    (*(v83 + 8))(v76, v88);
    __swift_destroy_boxed_opaque_existential_0(&v100);
    return v104;
  }

  return v20;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HMAccessory.AddAccessoryRequestMessage.RequestPayload.makeAccessoryDescription()(HMSetupAccessoryDescription_optional *__return_ptr retstr)
{
  v3 = (v1 + *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 28));
  v4 = v3[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_19BB4A270(0, &qword_1EAFE86E8, 0x1E696ACD0);
    sub_19BB4A270(0, &unk_1EAFE86F0, off_1E7545BB0);
    sub_19BB530E8(v5, v4);
    v6 = sub_19BE0E19C();
    if (v2)
    {
LABEL_3:
      sub_19BB54B0C(v5, v4);
      return;
    }

    if (!v6)
    {
      v7 = objc_opt_self();
      v8 = sub_19BE0DF9C();
      [v7 hmfErrorWithCode:3 reason:v8];

      swift_willThrow();
      goto LABEL_3;
    }

    sub_19BB54B0C(v5, v4);
  }
}

Swift::Void __swiftcall HMAccessory.AddAccessoryRequestMessage.RequestPayload.setAccessoryDescription(_:)(HMSetupAccessoryDescription_optional *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = encodeRootObject(v2);
    v4 = sub_19BE0DDFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = v1 + *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 28);
  sub_19BB54B0C(*v7, *(v7 + 8));
  *v7 = v4;
  *(v7 + 8) = v6;
}

uint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.accessoryPeerIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 20);

  return sub_19BB54CB8(v3, a1);
}

uint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.accessoryPeerIdentifier.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 20);

  return sub_19BB6375C(a1, v3);
}

uint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.accessoryPairingPassword.getter()
{
  v1 = (v0 + *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.accessoryPairingPassword.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.accessoryDescriptionData.getter()
{
  v1 = v0 + *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 28);
  v2 = *v1;
  sub_19BB63748(*v1, *(v1 + 8));
  return v2;
}

uint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.accessoryDescriptionData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload() + 28);
  result = sub_19BB54B0C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.isSetupCodeDeferred.setter(char a1)
{
  result = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.shouldRetrySetup.setter(char a1)
{
  result = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t HMAccessory.AddAccessoryRequestMessage.RequestPayload.init(messagePayload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v57 - v8;
  v10 = sub_19BE0DE8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(a2, 1, 1, v10);
  v14 = type metadata accessor for HMAccessory.AddAccessoryRequestMessage.RequestPayload();
  v57 = v14[5];
  v63 = v12;
  v59 = v13;
  v12(a2 + v57, 1, 1, v10);
  v15 = a2 + v14[7];
  *v15 = xmmword_19BE36670;
  v16 = sub_19BE0DFAC();
  if (*(a1 + 16))
  {
    v18 = sub_19BB50740(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_19BB4516C(*(a1 + 56) + 32 * v18, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
      if (swift_dynamicCast())
      {
        v21 = v60;
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v21 = 0;
LABEL_7:
  *(a2 + v14[8]) = v21;
  v22 = sub_19BE0DFAC();
  if (*(a1 + 16))
  {
    v24 = sub_19BB50740(v22, v23);
    v26 = v25;

    if (v26)
    {
      sub_19BB4516C(*(a1 + 56) + 32 * v24, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
      if (swift_dynamicCast())
      {
        v27 = v60;
        goto LABEL_13;
      }
    }
  }

  else
  {
  }

  v27 = 0;
LABEL_13:
  *(a2 + v14[9]) = v27;
  v28 = sub_19BE0DFAC();
  if (*(a1 + 16))
  {
    v30 = sub_19BB50740(v28, v29);
    v32 = v31;

    v33 = 0xF000000000000000;
    if (v32)
    {
      sub_19BB4516C(*(a1 + 56) + 32 * v30, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
      v34 = swift_dynamicCast();
      if (v34)
      {
        v35 = v60;
      }

      else
      {
        v35 = 0;
      }

      if (v34)
      {
        v33 = v61;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {

    v35 = 0;
    v33 = 0xF000000000000000;
  }

  sub_19BB54B0C(*v15, *(v15 + 8));
  *v15 = v35;
  *(v15 + 8) = v33;
  v36 = sub_19BE0DFAC();
  if (*(a1 + 16))
  {
    v38 = sub_19BB50740(v36, v37);
    v40 = v39;

    v41 = v58;
    if (v40)
    {
      sub_19BB4516C(*(a1 + 56) + 32 * v38, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
      v42 = swift_dynamicCast() ^ 1;
      v43 = v9;
      goto LABEL_28;
    }
  }

  else
  {

    v41 = v58;
  }

  v43 = v9;
  v42 = 1;
LABEL_28:
  v63(v43, v42, 1, v10);
  sub_19BB6375C(v9, a2);
  v44 = sub_19BE0DFAC();
  if (!*(a1 + 16))
  {

    goto LABEL_33;
  }

  v46 = sub_19BB50740(v44, v45);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
LABEL_33:
    v50 = 0;
    v51 = 0;
    goto LABEL_34;
  }

  sub_19BB4516C(*(a1 + 56) + 32 * v46, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  v49 = swift_dynamicCast();
  v50 = v60;
  v51 = v61;
  if (!v49)
  {
    v50 = 0;
    v51 = 0;
  }

LABEL_34:
  v52 = (a2 + v14[6]);
  *v52 = v50;
  v52[1] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFE8700, &qword_19BE35810);
  v53 = sub_19BE0DF2C();

  v54 = [v53 hmf:@"kAccessoryPeerIdentifierKey" UUIDForKey:?];

  if (v54)
  {
    sub_19BE0DE6C();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v63(v41, v55, 1, v10);
  return sub_19BB6375C(v41, a2 + v57);
}

_OWORD *sub_19BB632AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x1E6969080];
  v31 = MEMORY[0x1E6969080];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_19BB50740(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_19BB538D0(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_19BB5FA9C();
    goto LABEL_7;
  }

  sub_19BB5EF24(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_19BB50740(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_19BE0E46C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_19BB6367C(v13, a3, a4, *v28, v28[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_19BB63494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v10 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1E69E6158];
  *&v30 = a1;
  *(&v30 + 1) = a2;
  v11 = *a6;
  v13 = sub_19BB50740(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 32 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_19BB538D0(&v30, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_19BB5FA9C();
    goto LABEL_7;
  }

  sub_19BB5EF24(v16, a5 & 1);
  v22 = *a6;
  v23 = sub_19BB50740(a3, a4);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_19BE0E46C();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_19BB6367C(v13, a3, a4, *v28, v28[1], v19, v10);

  return __swift_destroy_boxed_opaque_existential_0(&v30);
}

_OWORD *sub_19BB6367C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = a7;
  *&v13 = a4;
  *(&v13 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a6[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  result = sub_19BB538D0(&v13, (a6[7] + 32 * a1));
  v10 = a6[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v12;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_19BB63748(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19BB530E8(a1, a2);
  }

  return a1;
}

uint64_t sub_19BB6375C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFE83D0, &unk_19BE37520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_19BB63810()
{
  sub_19BB638DC();
  if (v0 <= 0x3F)
  {
    sub_19BB63934(319, &qword_1EAFE8A30);
    if (v1 <= 0x3F)
    {
      sub_19BB63934(319, &qword_1EAFE8A38);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19BB638DC()
{
  if (!qword_1EAFE8A28)
  {
    sub_19BE0DE8C();
    v0 = sub_19BE0E1CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAFE8A28);
    }
  }
}

void sub_19BB63934(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_19BE0E1CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t HMMediaGroupProtoMediaDestinationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            v27 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_40;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_40:
          *(a1 + 8) = v24;
          goto LABEL_41;
        }

        if (v13 != 4)
        {
LABEL_24:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_41;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadString();
        v15 = 32;
      }

      v17 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_41:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMMediaGroupProtoSurroundSystemRolesReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_1E7546848[v13];
        v15 = PBReaderReadString();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void _initLocationEventWithRegion(void *a1, void *a2)
{
  v6 = a1;
  v3 = [a2 copy];
  v4 = v6[7];
  v6[7] = v3;

  v5 = v6[8];
  v6[8] = 0;

  v6[9] = 1;
}

uint64_t HMMediaGroupProtoMediaGroupRoleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v22) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        [a1 clearOneofValuesForRole];
        *(a1 + 32) |= 1u;
        *(a1 + 16) = 1;
        v19 = objc_alloc_init(HMMediaGroupProtoMediaSystemRoles);
        objc_storeStrong((a1 + 8), v19);
        v22 = 0;
        v23 = 0;
        if (!PBReaderPlaceMark() || !HMMediaGroupProtoMediaSystemRolesReadFrom(v19, a2))
        {
          goto LABEL_40;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_38;
      }

      if (v13)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = 0;
        while (1)
        {
          LOBYTE(v22) = 0;
          v15 = [a2 position] + 1;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 1, v16 <= objc_msgSend(a2, "length")))
          {
            v17 = [a2 data];
            [v17 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v22 & 0x80000000) == 0)
          {
            break;
          }

          if (v14++ > 8)
          {
            goto LABEL_38;
          }
        }

        [a2 hasError];
      }

LABEL_38:
      v20 = [a2 position];
      if (v20 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    [a1 clearOneofValuesForRole];
    *(a1 + 32) |= 1u;
    *(a1 + 16) = 2;
    v19 = objc_alloc_init(HMMediaGroupProtoSurroundSystemRoles);
    objc_storeStrong((a1 + 24), v19);
    v22 = 0;
    v23 = 0;
    if (!PBReaderPlaceMark() || !HMMediaGroupProtoSurroundSystemRolesReadFrom(v19, a2))
    {
LABEL_40:

      return 0;
    }

    goto LABEL_34;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMMediaGroupProtoMediaParticipantDataReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(HMMediaGroupProtoMediaDestinationControllerData);
        objc_storeStrong(a1 + 3, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HMMediaGroupProtoMediaDestinationControllerDataReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

LABEL_25:
        PBReaderRecallMark();
LABEL_28:

        goto LABEL_30;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(HMMediaGroupProtoMediaDestination);
        objc_storeStrong(a1 + 2, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !HMMediaGroupProtoMediaDestinationReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    if (v14)
    {
      [a1 addBackupGroups:v14];
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HMAccessoryDiagnosticInfoProtoSetupInfoReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v286 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v286 & 0x7F) << v6;
      if ((v286 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 384) |= 0x100000000uLL;
        while (1)
        {
          v286 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v286 & 0x7F) << v14;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_509:
            v284 = 264;
            goto LABEL_603;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_509;
      case 5u:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        *(a1 + 384) |= 0x8000000uLL;
        while (1)
        {
          v286 = 0;
          v148 = [a2 position] + 1;
          if (v148 >= [a2 position] && (v149 = objc_msgSend(a2, "position") + 1, v149 <= objc_msgSend(a2, "length")))
          {
            v150 = [a2 data];
            [v150 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v147 |= (v286 & 0x7F) << v145;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v145 += 7;
          v12 = v146++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_513;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v147;
        }

LABEL_513:
        v284 = 224;
        goto LABEL_603;
      case 6u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        *(a1 + 384) |= 4uLL;
        while (1)
        {
          v286 = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v286 & 0x7F) << v121;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v12 = v122++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_493;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v123;
        }

LABEL_493:
        v284 = 24;
        goto LABEL_603;
      case 7u:
        v187 = 0;
        v188 = 0;
        v189 = 0;
        *(a1 + 384) |= 0x10000uLL;
        while (1)
        {
          v286 = 0;
          v190 = [a2 position] + 1;
          if (v190 >= [a2 position] && (v191 = objc_msgSend(a2, "position") + 1, v191 <= objc_msgSend(a2, "length")))
          {
            v192 = [a2 data];
            [v192 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v189 |= (v286 & 0x7F) << v187;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v187 += 7;
          v12 = v188++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_541;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v189;
        }

LABEL_541:
        v284 = 136;
        goto LABEL_603;
      case 8u:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        *(a1 + 384) |= 0x4000000uLL;
        while (1)
        {
          v286 = 0;
          v202 = [a2 position] + 1;
          if (v202 >= [a2 position] && (v203 = objc_msgSend(a2, "position") + 1, v203 <= objc_msgSend(a2, "length")))
          {
            v204 = [a2 data];
            [v204 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v201 |= (v286 & 0x7F) << v199;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v199 += 7;
          v12 = v200++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_549;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v201;
        }

LABEL_549:
        v284 = 216;
        goto LABEL_603;
      case 9u:
        v133 = 0;
        v134 = 0;
        v135 = 0;
        *(a1 + 384) |= 0x2000000uLL;
        while (1)
        {
          v286 = 0;
          v136 = [a2 position] + 1;
          if (v136 >= [a2 position] && (v137 = objc_msgSend(a2, "position") + 1, v137 <= objc_msgSend(a2, "length")))
          {
            v138 = [a2 data];
            [v138 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v135 |= (v286 & 0x7F) << v133;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v133 += 7;
          v12 = v134++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_501;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v135;
        }

LABEL_501:
        v284 = 208;
        goto LABEL_603;
      case 0xAu:
        v151 = 0;
        v152 = 0;
        v153 = 0;
        *(a1 + 384) |= 0x40000000uLL;
        while (1)
        {
          v286 = 0;
          v154 = [a2 position] + 1;
          if (v154 >= [a2 position] && (v155 = objc_msgSend(a2, "position") + 1, v155 <= objc_msgSend(a2, "length")))
          {
            v156 = [a2 data];
            [v156 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v153 |= (v286 & 0x7F) << v151;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v151 += 7;
          v12 = v152++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_517;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v153;
        }

LABEL_517:
        v284 = 248;
        goto LABEL_603;
      case 0xBu:
        v157 = 0;
        v158 = 0;
        v159 = 0;
        *(a1 + 384) |= 2uLL;
        while (1)
        {
          v286 = 0;
          v160 = [a2 position] + 1;
          if (v160 >= [a2 position] && (v161 = objc_msgSend(a2, "position") + 1, v161 <= objc_msgSend(a2, "length")))
          {
            v162 = [a2 data];
            [v162 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v159 |= (v286 & 0x7F) << v157;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v157 += 7;
          v12 = v158++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_521;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v159;
        }

LABEL_521:
        v284 = 16;
        goto LABEL_603;
      case 0xCu:
        v217 = 0;
        v218 = 0;
        v219 = 0;
        *(a1 + 384) |= 8uLL;
        while (1)
        {
          v286 = 0;
          v220 = [a2 position] + 1;
          if (v220 >= [a2 position] && (v221 = objc_msgSend(a2, "position") + 1, v221 <= objc_msgSend(a2, "length")))
          {
            v222 = [a2 data];
            [v222 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v219 |= (v286 & 0x7F) << v217;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v217 += 7;
          v12 = v218++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_561;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v219;
        }

LABEL_561:
        v284 = 32;
        goto LABEL_603;
      case 0xDu:
        v211 = 0;
        v212 = 0;
        v213 = 0;
        *(a1 + 384) |= 0x400uLL;
        while (1)
        {
          v286 = 0;
          v214 = [a2 position] + 1;
          if (v214 >= [a2 position] && (v215 = objc_msgSend(a2, "position") + 1, v215 <= objc_msgSend(a2, "length")))
          {
            v216 = [a2 data];
            [v216 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v213 |= (v286 & 0x7F) << v211;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v211 += 7;
          v12 = v212++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_557;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v213;
        }

LABEL_557:
        v284 = 88;
        goto LABEL_603;
      case 0xEu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 384) |= 0x200uLL;
        while (1)
        {
          v286 = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v286 & 0x7F) << v79;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v12 = v80++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_465;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v81;
        }

LABEL_465:
        v284 = 80;
        goto LABEL_603;
      case 0xFu:
        v139 = 0;
        v140 = 0;
        v141 = 0;
        *(a1 + 384) |= 1uLL;
        while (1)
        {
          v286 = 0;
          v142 = [a2 position] + 1;
          if (v142 >= [a2 position] && (v143 = objc_msgSend(a2, "position") + 1, v143 <= objc_msgSend(a2, "length")))
          {
            v144 = [a2 data];
            [v144 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v141 |= (v286 & 0x7F) << v139;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v139 += 7;
          v12 = v140++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_505;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v141;
        }

LABEL_505:
        v284 = 8;
        goto LABEL_603;
      case 0x10u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *(a1 + 384) |= 0x10000000uLL;
        while (1)
        {
          v286 = 0;
          v112 = [a2 position] + 1;
          if (v112 >= [a2 position] && (v113 = objc_msgSend(a2, "position") + 1, v113 <= objc_msgSend(a2, "length")))
          {
            v114 = [a2 data];
            [v114 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v111 |= (v286 & 0x7F) << v109;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_485;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v111;
        }

LABEL_485:
        v284 = 232;
        goto LABEL_603;
      case 0x11u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 384) |= 0x20000uLL;
        while (1)
        {
          v286 = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v286 & 0x7F) << v67;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v12 = v68++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_457;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v69;
        }

LABEL_457:
        v284 = 144;
        goto LABEL_603;
      case 0x12u:
        v169 = 0;
        v170 = 0;
        v171 = 0;
        *(a1 + 384) |= 0x20000000uLL;
        while (1)
        {
          v286 = 0;
          v172 = [a2 position] + 1;
          if (v172 >= [a2 position] && (v173 = objc_msgSend(a2, "position") + 1, v173 <= objc_msgSend(a2, "length")))
          {
            v174 = [a2 data];
            [v174 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v171 |= (v286 & 0x7F) << v169;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v169 += 7;
          v12 = v170++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_529;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v171;
        }

LABEL_529:
        v284 = 240;
        goto LABEL_603;
      case 0x13u:
        v175 = 0;
        v176 = 0;
        v177 = 0;
        *(a1 + 384) |= 0x20uLL;
        while (1)
        {
          v286 = 0;
          v178 = [a2 position] + 1;
          if (v178 >= [a2 position] && (v179 = objc_msgSend(a2, "position") + 1, v179 <= objc_msgSend(a2, "length")))
          {
            v180 = [a2 data];
            [v180 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v177 |= (v286 & 0x7F) << v175;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v175 += 7;
          v12 = v176++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_533;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v177;
        }

LABEL_533:
        v284 = 48;
        goto LABEL_603;
      case 0x14u:
        v235 = 0;
        v236 = 0;
        v237 = 0;
        *(a1 + 384) |= 0x100000uLL;
        while (1)
        {
          v286 = 0;
          v238 = [a2 position] + 1;
          if (v238 >= [a2 position] && (v239 = objc_msgSend(a2, "position") + 1, v239 <= objc_msgSend(a2, "length")))
          {
            v240 = [a2 data];
            [v240 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v237 |= (v286 & 0x7F) << v235;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v235 += 7;
          v12 = v236++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_573;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v237;
        }

LABEL_573:
        v284 = 168;
        goto LABEL_603;
      case 0x15u:
        v223 = 0;
        v224 = 0;
        v225 = 0;
        *(a1 + 384) |= 0x10uLL;
        while (1)
        {
          v286 = 0;
          v226 = [a2 position] + 1;
          if (v226 >= [a2 position] && (v227 = objc_msgSend(a2, "position") + 1, v227 <= objc_msgSend(a2, "length")))
          {
            v228 = [a2 data];
            [v228 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v225 |= (v286 & 0x7F) << v223;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v223 += 7;
          v12 = v224++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_565;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v225;
        }

LABEL_565:
        v284 = 40;
        goto LABEL_603;
      case 0x16u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 384) |= 0x80000000uLL;
        while (1)
        {
          v286 = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v286 & 0x7F) << v55;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v12 = v56++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_449;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v57;
        }

LABEL_449:
        v284 = 256;
        goto LABEL_603;
      case 0x17u:
        v115 = 0;
        v116 = 0;
        v117 = 0;
        *(a1 + 384) |= 0x400000000uLL;
        while (1)
        {
          v286 = 0;
          v118 = [a2 position] + 1;
          if (v118 >= [a2 position] && (v119 = objc_msgSend(a2, "position") + 1, v119 <= objc_msgSend(a2, "length")))
          {
            v120 = [a2 data];
            [v120 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v117 |= (v286 & 0x7F) << v115;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v115 += 7;
          v12 = v116++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_489;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v117;
        }

LABEL_489:
        v285 = 304;
        goto LABEL_594;
      case 0x18u:
        v247 = 0;
        v248 = 0;
        v249 = 0;
        *(a1 + 384) |= 0x800000000uLL;
        while (1)
        {
          v286 = 0;
          v250 = [a2 position] + 1;
          if (v250 >= [a2 position] && (v251 = objc_msgSend(a2, "position") + 1, v251 <= objc_msgSend(a2, "length")))
          {
            v252 = [a2 data];
            [v252 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v249 |= (v286 & 0x7F) << v247;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v247 += 7;
          v12 = v248++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_581;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v249;
        }

LABEL_581:
        v285 = 308;
        goto LABEL_594;
      case 0x19u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 384) |= 0x4000000000uLL;
        while (1)
        {
          v286 = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v286 & 0x7F) << v61;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v12 = v62++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_453;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v63;
        }

LABEL_453:
        v285 = 360;
        goto LABEL_594;
      case 0x1Au:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *(a1 + 384) |= 0x8000000000uLL;
        while (1)
        {
          v286 = 0;
          v106 = [a2 position] + 1;
          if (v106 >= [a2 position] && (v107 = objc_msgSend(a2, "position") + 1, v107 <= objc_msgSend(a2, "length")))
          {
            v108 = [a2 data];
            [v108 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v105 |= (v286 & 0x7F) << v103;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_481;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v105;
        }

LABEL_481:
        v285 = 364;
        goto LABEL_594;
      case 0x1Bu:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 384) |= 0x800uLL;
        while (1)
        {
          v286 = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v286 & 0x7F) << v73;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v12 = v74++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_461;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v75;
        }

LABEL_461:
        v284 = 96;
        goto LABEL_603;
      case 0x1Cu:
        v27 = PBReaderReadString();
        v28 = 320;
        goto LABEL_380;
      case 0x1Du:
        v27 = PBReaderReadString();
        v28 = 328;
        goto LABEL_380;
      case 0x1Eu:
        v254 = 0;
        v255 = 0;
        v256 = 0;
        *(a1 + 384) |= 0x1000uLL;
        while (1)
        {
          v286 = 0;
          v257 = [a2 position] + 1;
          if (v257 >= [a2 position] && (v258 = objc_msgSend(a2, "position") + 1, v258 <= objc_msgSend(a2, "length")))
          {
            v259 = [a2 data];
            [v259 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v256 |= (v286 & 0x7F) << v254;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v254 += 7;
          v12 = v255++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_585;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v256;
        }

LABEL_585:
        v284 = 104;
        goto LABEL_603;
      case 0x1Fu:
        v27 = PBReaderReadString();
        v28 = 336;
        goto LABEL_380;
      case 0x20u:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 384) |= 0x1000000uLL;
        while (1)
        {
          v286 = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v286 & 0x7F) << v91;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v12 = v92++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_473;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v93;
        }

LABEL_473:
        v284 = 200;
        goto LABEL_603;
      case 0x21u:
        v127 = 0;
        v128 = 0;
        v129 = 0;
        *(a1 + 384) |= 0x1000000000uLL;
        while (1)
        {
          v286 = 0;
          v130 = [a2 position] + 1;
          if (v130 >= [a2 position] && (v131 = objc_msgSend(a2, "position") + 1, v131 <= objc_msgSend(a2, "length")))
          {
            v132 = [a2 data];
            [v132 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v129 |= (v286 & 0x7F) << v127;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v127 += 7;
          v12 = v128++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_497;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v129;
        }

LABEL_497:
        v285 = 312;
        goto LABEL_594;
      case 0x22u:
        v181 = 0;
        v182 = 0;
        v183 = 0;
        *(a1 + 384) |= 0x2000000000uLL;
        while (1)
        {
          v286 = 0;
          v184 = [a2 position] + 1;
          if (v184 >= [a2 position] && (v185 = objc_msgSend(a2, "position") + 1, v185 <= objc_msgSend(a2, "length")))
          {
            v186 = [a2 data];
            [v186 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v183 |= (v286 & 0x7F) << v181;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v181 += 7;
          v12 = v182++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_537;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v183;
        }

LABEL_537:
        v285 = 316;
        goto LABEL_594;
      case 0x23u:
        v27 = PBReaderReadString();
        v28 = 272;
        goto LABEL_380;
      case 0x24u:
        v266 = 0;
        v267 = 0;
        v268 = 0;
        *(a1 + 384) |= 0x80000000000uLL;
        while (1)
        {
          v286 = 0;
          v269 = [a2 position] + 1;
          if (v269 >= [a2 position] && (v270 = objc_msgSend(a2, "position") + 1, v270 <= objc_msgSend(a2, "length")))
          {
            v271 = [a2 data];
            [v271 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v268 |= (v286 & 0x7F) << v266;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v266 += 7;
          v12 = v267++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_593;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v268;
        }

LABEL_593:
        v285 = 380;
        goto LABEL_594;
      case 0x25u:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 384) |= 0x8000uLL;
        while (1)
        {
          v286 = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v286 & 0x7F) << v85;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v12 = v86++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_469;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v87;
        }

LABEL_469:
        v284 = 128;
        goto LABEL_603;
      case 0x26u:
        v229 = 0;
        v230 = 0;
        v231 = 0;
        *(a1 + 384) |= 0x20000000000uLL;
        while (1)
        {
          v286 = 0;
          v232 = [a2 position] + 1;
          if (v232 >= [a2 position] && (v233 = objc_msgSend(a2, "position") + 1, v233 <= objc_msgSend(a2, "length")))
          {
            v234 = [a2 data];
            [v234 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v231 |= (v286 & 0x7F) << v229;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v229 += 7;
          v12 = v230++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_569;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v231;
        }

LABEL_569:
        v285 = 372;
        goto LABEL_594;
      case 0x27u:
        v260 = 0;
        v261 = 0;
        v262 = 0;
        *(a1 + 384) |= 0x40000000000uLL;
        while (1)
        {
          v286 = 0;
          v263 = [a2 position] + 1;
          if (v263 >= [a2 position] && (v264 = objc_msgSend(a2, "position") + 1, v264 <= objc_msgSend(a2, "length")))
          {
            v265 = [a2 data];
            [v265 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v262 |= (v286 & 0x7F) << v260;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v260 += 7;
          v12 = v261++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_589;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v262;
        }

LABEL_589:
        v285 = 376;
        goto LABEL_594;
      case 0x28u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 384) |= 0x10000000000uLL;
        while (1)
        {
          v286 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v286 & 0x7F) << v42;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_441;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_441:
        v285 = 368;
        goto LABEL_594;
      case 0x29u:
        v205 = 0;
        v206 = 0;
        v207 = 0;
        *(a1 + 384) |= 0x200000000uLL;
        while (1)
        {
          v286 = 0;
          v208 = [a2 position] + 1;
          if (v208 >= [a2 position] && (v209 = objc_msgSend(a2, "position") + 1, v209 <= objc_msgSend(a2, "length")))
          {
            v210 = [a2 data];
            [v210 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v207 |= (v286 & 0x7F) << v205;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v205 += 7;
          v12 = v206++ >= 9;
          if (v12)
          {
            v48 = 0;
            goto LABEL_553;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v207;
        }

LABEL_553:
        v285 = 280;
LABEL_594:
        *(a1 + v285) = v48;
        continue;
      case 0x2Au:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 384) |= 0x2000uLL;
        while (1)
        {
          v286 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v286 & 0x7F) << v36;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_437;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v38;
        }

LABEL_437:
        v284 = 112;
        goto LABEL_603;
      case 0x2Bu:
        v27 = PBReaderReadString();
        v28 = 344;
        goto LABEL_380;
      case 0x2Cu:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        *(a1 + 384) |= 0x4000uLL;
        while (1)
        {
          v286 = 0;
          v100 = [a2 position] + 1;
          if (v100 >= [a2 position] && (v101 = objc_msgSend(a2, "position") + 1, v101 <= objc_msgSend(a2, "length")))
          {
            v102 = [a2 data];
            [v102 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v99 |= (v286 & 0x7F) << v97;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v12 = v98++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_477;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v99;
        }

LABEL_477:
        v284 = 120;
        goto LABEL_603;
      case 0x2Du:
        v27 = PBReaderReadString();
        v28 = 352;
        goto LABEL_380;
      case 0x2Eu:
        v241 = 0;
        v242 = 0;
        v243 = 0;
        *(a1 + 384) |= 0x800000uLL;
        while (1)
        {
          v286 = 0;
          v244 = [a2 position] + 1;
          if (v244 >= [a2 position] && (v245 = objc_msgSend(a2, "position") + 1, v245 <= objc_msgSend(a2, "length")))
          {
            v246 = [a2 data];
            [v246 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v243 |= (v286 & 0x7F) << v241;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v241 += 7;
          v12 = v242++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_577;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v243;
        }

LABEL_577:
        v284 = 192;
        goto LABEL_603;
      case 0x2Fu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 384) |= 0x40000uLL;
        while (1)
        {
          v286 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v286 & 0x7F) << v21;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_429;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_429:
        v284 = 152;
        goto LABEL_603;
      case 0x30u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 384) |= 0x200000uLL;
        while (1)
        {
          v286 = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v286 & 0x7F) << v49;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v12 = v50++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_445;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v51;
        }

LABEL_445:
        v284 = 176;
        goto LABEL_603;
      case 0x31u:
        v163 = 0;
        v164 = 0;
        v165 = 0;
        *(a1 + 384) |= 0x80000uLL;
        while (1)
        {
          v286 = 0;
          v166 = [a2 position] + 1;
          if (v166 >= [a2 position] && (v167 = objc_msgSend(a2, "position") + 1, v167 <= objc_msgSend(a2, "length")))
          {
            v168 = [a2 data];
            [v168 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v165 |= (v286 & 0x7F) << v163;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v163 += 7;
          v12 = v164++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_525;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v165;
        }

LABEL_525:
        v284 = 160;
        goto LABEL_603;
      case 0x32u:
        v193 = 0;
        v194 = 0;
        v195 = 0;
        *(a1 + 384) |= 0x40uLL;
        while (1)
        {
          v286 = 0;
          v196 = [a2 position] + 1;
          if (v196 >= [a2 position] && (v197 = objc_msgSend(a2, "position") + 1, v197 <= objc_msgSend(a2, "length")))
          {
            v198 = [a2 data];
            [v198 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v195 |= (v286 & 0x7F) << v193;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v193 += 7;
          v12 = v194++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_545;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v195;
        }

LABEL_545:
        v284 = 56;
        goto LABEL_603;
      case 0x33u:
        v272 = 0;
        v273 = 0;
        v274 = 0;
        *(a1 + 384) |= 0x80uLL;
        while (1)
        {
          v286 = 0;
          v275 = [a2 position] + 1;
          if (v275 >= [a2 position] && (v276 = objc_msgSend(a2, "position") + 1, v276 <= objc_msgSend(a2, "length")))
          {
            v277 = [a2 data];
            [v277 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v274 |= (v286 & 0x7F) << v272;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v272 += 7;
          v12 = v273++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_598;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v274;
        }

LABEL_598:
        v284 = 64;
        goto LABEL_603;
      case 0x34u:
        v27 = PBReaderReadString();
        v28 = 288;
        goto LABEL_380;
      case 0x35u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 384) |= 0x100uLL;
        while (1)
        {
          v286 = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v286 & 0x7F) << v29;
          if ((v286 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_433;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v31;
        }

LABEL_433:
        v284 = 72;
        goto LABEL_603;
      case 0x36u:
        v27 = PBReaderReadString();
        v28 = 296;
LABEL_380:
        v253 = *(a1 + v28);
        *(a1 + v28) = v27;

        continue;
      case 0x37u:
        v278 = 0;
        v279 = 0;
        v280 = 0;
        *(a1 + 384) |= 0x400000uLL;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v286 = 0;
      v281 = [a2 position] + 1;
      if (v281 >= [a2 position] && (v282 = objc_msgSend(a2, "position") + 1, v282 <= objc_msgSend(a2, "length")))
      {
        v283 = [a2 data];
        [v283 getBytes:&v286 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v280 |= (v286 & 0x7F) << v278;
      if ((v286 & 0x80) == 0)
      {
        break;
      }

      v278 += 7;
      v12 = v279++ >= 9;
      if (v12)
      {
        v20 = 0;
        goto LABEL_602;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v280;
    }

LABEL_602:
    v284 = 184;
LABEL_603:
    *(a1 + v284) = v20;
  }

  return [a2 hasError] ^ 1;
}
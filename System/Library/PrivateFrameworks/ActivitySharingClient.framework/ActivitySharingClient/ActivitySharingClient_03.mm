double SecureCloudWithdrawRequestProtobuf.date.getter()
{
  v1 = v0 + *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t SecureCloudWithdrawRequestProtobuf.handshakeToken.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t (*SecureCloudWithdrawRequestProtobuf.date.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_23E569668;
}

Swift::Void __swiftcall SecureCloudWithdrawRequestProtobuf.clearDate()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_23E5B0FB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_23E5B1018(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudWithdrawRequestProtobuf.handshakeToken.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23E566674;
}

Swift::Void __swiftcall SecureCloudWithdrawRequestProtobuf.clearHandshakeToken()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SecureCloudWithdrawRequestProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudWithdrawRequestProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SecureCloudWithdrawRequestProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  sub_23E5C8CC0();
  result = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_23E5B12DC()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E3468E0);
  __swift_project_value_buffer(v0, qword_27E3468E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CB3D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23E5C8E60();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "handshakeToken";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_23E5C8E70();
}

uint64_t static SecureCloudWithdrawRequestProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E346100 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E3468E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SecureCloudWithdrawRequestProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23E5C8D30();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 20);
      sub_23E5C8D60();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 24);
      sub_23E5C8D70();
    }
  }

  return result;
}

uint64_t SecureCloudWithdrawRequestProtobuf.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v3 = (v0 + *(v2 + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = v2;
    v5 = *v3;
    result = sub_23E5C8E20();
    if (v1)
    {
      return result;
    }

    v2 = v4;
  }

  v7 = (v0 + *(v2 + 24));
  if (!v7[1])
  {
    return sub_23E5C8CB0();
  }

  v8 = *v7;
  result = sub_23E5C8E30();
  if (!v1)
  {
    return sub_23E5C8CB0();
  }

  return result;
}

uint64_t SecureCloudWithdrawRequestProtobuf.hashValue.getter()
{
  sub_23E5C94D0();
  type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  sub_23E5B1D04(&qword_27E3468F8, type metadata accessor for SecureCloudWithdrawRequestProtobuf);
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

uint64_t sub_23E5B1754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23E5C8CC0();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_23E5B17E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E5B1D04(&qword_27E346918, type metadata accessor for SecureCloudWithdrawRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23E5B1860@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E346100 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E3468E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E5B1908(uint64_t a1)
{
  v2 = sub_23E5B1D04(&qword_27E3462E8, type metadata accessor for SecureCloudWithdrawRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23E5B1974()
{
  sub_23E5B1D04(&qword_27E3462E8, type metadata accessor for SecureCloudWithdrawRequestProtobuf);

  return sub_23E5C8DE0();
}

uint64_t _s21ActivitySharingClient34SecureCloudWithdrawRequestProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_23E5C9430() & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    sub_23E5C8CD0();
    sub_23E5B1D04(&qword_27E346150, MEMORY[0x277D216C8]);
    return sub_23E5C8F20() & 1;
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  return 0;
}

void sub_23E5B1C48()
{
  sub_23E5C8CD0();
  if (v0 <= 0x3F)
  {
    sub_23E56BB90(319, &qword_27E346250);
    if (v1 <= 0x3F)
    {
      sub_23E56BB90(319, &qword_27E346140);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23E5B1D04(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_23E5B1D5C()
{
  v0 = sub_23E5C9370();

  return v0 != 0;
}

uint64_t sub_23E5B1DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5B1E18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_23E5B1E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5B1EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_23E5B1F64@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23E5B1D5C();
  *a2 = result;
  return result;
}

BOOL sub_23E5B1FA8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_23E5B1D5C();
  *a1 = result;
  return result;
}

uint64_t sub_23E5B1FD4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_23E570108();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23E5B2004(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23E5B2058(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableProtobuf.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  type metadata accessor for CodableProtobuf.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_23E5C93F0();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v21);
  v8 = &v18 - v7;
  v9 = *v2;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5C9510();
  v11 = [v9 data];
  if (v11)
  {
    v12 = v11;
    v13 = sub_23E5C8BB0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v19 = v13;
  v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
  sub_23E5B2294();
  v16 = v21;
  sub_23E5C93E0();
  sub_23E56121C(v19, v20);
  return (*(v5 + 8))(v8, v16);
}

unint64_t sub_23E5B2294()
{
  result = qword_27E346920;
  if (!qword_27E346920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3465D8, &qword_23E5CDE40);
    sub_23E568E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346920);
  }

  return result;
}

uint64_t CodableProtobuf.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  type metadata accessor for CodableProtobuf.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_23E5C93B0();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5C9500();
  if (!v2)
  {
    v9 = v20;
    v10 = v17;
    sub_23E568DB8();
    sub_23E5C93A0();
    v11 = v18;
    v12 = v19;
    sub_23E561880(v18, v19);
    v13 = sub_23E5B2550(v11, v12);
    sub_23E561230(v11, v12);
    if (v13)
    {
      sub_23E561230(v11, v12);
      (*(v10 + 8))(v7, v4);
      *v9 = v13;
    }

    else
    {
      sub_23E5B25B4();
      swift_allocError();
      *v15 = 0;
      swift_willThrow();
      sub_23E561230(v11, v12);
      (*(v10 + 8))(v7, v4);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

id sub_23E5B2550(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_23E5C8BA0();
  }

  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithData_];

  return v3;
}

unint64_t sub_23E5B25B4()
{
  result = qword_27E346928[0];
  if (!qword_27E346928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E346928);
  }

  return result;
}

uint64_t sub_23E5B263C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23E5B2690(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_23E5B26D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransportError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransportError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E5B28D8()
{
  result = qword_27E346A30;
  if (!qword_27E346A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346A30);
  }

  return result;
}

uint64_t XPCClient.__allocating_init()()
{
  v0 = swift_allocObject();
  XPCClient.init()();
  return v0;
}

uint64_t sub_23E5B2964(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t XPCClient.deinit()
{
  [*(v0 + 112) setInterruptionHandler_];
  [*(v0 + 112) setInvalidationHandler_];
  [*(v0 + 112) invalidate];

  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCClient.__deallocating_deinit()
{
  [*(v0 + 112) setInterruptionHandler_];
  [*(v0 + 112) setInvalidationHandler_];
  [*(v0 + 112) invalidate];

  v1 = *(v0 + 120);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23E5B2A88(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v6 = sub_23E5C8EB0();
  __swift_project_value_buffer(v6, qword_280C09128);

  v7 = a1;
  v8 = sub_23E5C8E90();
  v9 = sub_23E5C9160();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_23E560AF0(a2, a3, &v17);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v12 = sub_23E5694FC();
    v14 = sub_23E560AF0(v12, v13, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_23E55E000, v8, v9, "Error encountered on remote proxy %{public}s: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF0DE00](v11, -1, -1);
    MEMORY[0x23EF0DE00](v10, -1, -1);
  }

  v17 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0);
  return sub_23E5C90E0();
}

void sub_23E5B2C78(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_23E5B2CEC()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v0 = sub_23E5C8EB0();
  __swift_project_value_buffer(v0, qword_280C09128);
  oslog = sub_23E5C8E90();
  v1 = sub_23E5C9160();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23E55E000, oslog, v1, "XPC connection interrupted", v2, 2u);
    MEMORY[0x23EF0DE00](v2, -1, -1);
  }
}

uint64_t sub_23E5B2DD4()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v11 - v1;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v3 = sub_23E5C8EB0();
  __swift_project_value_buffer(v3, qword_280C09128);
  v4 = sub_23E5C8E90();
  v5 = sub_23E5C9160();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23E55E000, v4, v5, "XPC connection invalidated", v6, 2u);
    MEMORY[0x23EF0DE00](v6, -1, -1);
  }

  v7 = sub_23E5C9110();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  sub_23E59D4DC(0, 0, v2, &unk_23E5CE2F8, v9);
}

uint64_t sub_23E5B2FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23E5B2FDC, 0, 0);
}

uint64_t sub_23E5B2FDC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_23E5B30A0, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_23E5B30A0()
{
  v1 = *(v0 + 56);
  if (*(v1 + 128) != 2)
  {
    *(v1 + 128) = 2;
    v2 = v1;
    [*(v1 + 112) setInterruptionHandler_];
    [*(v2 + 112) setInvalidationHandler_];
    [*(v2 + 112) invalidate];
    v3 = *(v0 + 56);
  }

  return MEMORY[0x2822009F8](sub_23E5B3160, 0, 0);
}

uint64_t sub_23E5B31A8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 128) != 2)
  {
    *(v1 + 128) = 2;
    v2 = *(v1 + 112);
    [v2 setInterruptionHandler_];
    [v2 setInvalidationHandler_];
    [v2 invalidate];
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t XPCClient.sendItem(_:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23E5B3274, v1, 0);
}

uint64_t sub_23E5B3274()
{
  v1 = v0[5];
  if (*(v1 + 128) == 1)
  {
    v2 = v0[4];
    v3 = sub_23E563978();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    *(v4 + 32) = xmmword_23E5CA6B0;
    v5 = *(MEMORY[0x277D85A40] + 4);
    v6 = swift_task_alloc();
    v0[7] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
    *v6 = v0;
    v6[1] = sub_23E5B340C;

    return MEMORY[0x2822008A0](v0 + 2, v1, v3, 0xD000000000000019, 0x800000023E5D01C0, sub_23E5639D8, v4, v7);
  }

  else
  {
    sub_23E56D8C8();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23E5B340C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_23E5B3530;
  }

  else
  {
    v7 = *(v2 + 40);
    v6 = *(v2 + 48);

    v5 = sub_23E59A984;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23E5B3530()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t XPCClient.sendItem<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_23E5C9210();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E5B3660, v4, 0);
}

uint64_t sub_23E5B3660()
{
  v1 = v0 + 9;
  v2 = v0[11];
  v3 = v0[6];
  (*(v0[10] + 16))(v2, v0[5], v0[9]);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
    v4 = v0[10];
    v6 = 0xF000000000000000;
  }

  else
  {
    v7 = v0[11];
    v5 = (*(v0[7] + 8))(v0[6]);
    v6 = v8;
    v1 = v0 + 6;
  }

  v9 = *v1;
  v0[12] = v5;
  v0[13] = v6;
  v10 = v0[8];
  (*(v4 + 8))(v0[11], v9);
  if (*(v10 + 128) == 1)
  {
    v11 = v0[8];
    v12 = v0[4];
    v13 = sub_23E563978();
    v14 = swift_task_alloc();
    v0[14] = v14;
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = v5;
    v14[5] = v6;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    v0[15] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
    *v16 = v0;
    v16[1] = sub_23E5B390C;

    return MEMORY[0x2822008A0](v0 + 2, v11, v13, 0xD000000000000019, 0x800000023E5D01C0, sub_23E5639E4, v14, v17);
  }

  else
  {
    sub_23E56D8C8();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    sub_23E56121C(v0[12], v0[13]);
    v19 = v0[11];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_23E5B390C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_23E5B3A34;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 64);

    v5 = sub_23E59AE8C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23E5B3A34()
{
  v1 = v0[14];

  v2 = v0[16];
  sub_23E56121C(v0[12], v0[13]);
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t XPCClient.sendItem<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5B3AD0, v4, 0);
}

{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_23E5C9210();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E5B3E58, v4, 0);
}

uint64_t sub_23E5B3AD0()
{
  v1 = v0[8];
  if (*(v1 + 128) == 1)
  {
    v2 = v0[5];
    v3 = sub_23E563978();
    v4 = swift_task_alloc();
    v0[9] = v4;
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    *(v4 + 32) = xmmword_23E5CA6B0;
    v5 = *(MEMORY[0x277D85A40] + 4);
    v6 = swift_task_alloc();
    v0[10] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
    *v6 = v0;
    v6[1] = sub_23E5B3C68;

    return MEMORY[0x2822008A0](v0 + 2, v1, v3, 0xD000000000000019, 0x800000023E5D01C0, sub_23E5639E4, v4, v7);
  }

  else
  {
    sub_23E56D8C8();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23E5B3C68()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_23E59B284;
  }

  else
  {
    v7 = *(v2 + 64);
    v6 = *(v2 + 72);

    v5 = sub_23E59B1EC;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23E5B3E58()
{
  v1 = v0[8];
  if (*(v1 + 128) == 1)
  {
    v2 = v0[5];
    v3 = sub_23E563978();
    v4 = swift_task_alloc();
    v0[12] = v4;
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    *(v4 + 32) = xmmword_23E5CA6B0;
    v5 = *(MEMORY[0x277D85A40] + 4);
    v6 = swift_task_alloc();
    v0[13] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
    *v6 = v0;
    v6[1] = sub_23E561F14;

    return MEMORY[0x2822008A0](v0 + 2, v1, v3, 0xD000000000000019, 0x800000023E5D01C0, sub_23E5639E4, v4, v7);
  }

  else
  {
    sub_23E56D8C8();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[11];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_23E5B40C8()
{
  v1 = v0 + 12;
  v2 = v0[14];
  v3 = v0[7];
  (*(v0[13] + 16))(v2, v0[6], v0[12]);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
    v4 = v0[13];
    v6 = 0xF000000000000000;
  }

  else
  {
    v7 = v0[14];
    v5 = (*(v0[9] + 8))(v0[7]);
    v6 = v8;
    v1 = v0 + 7;
  }

  v9 = *v1;
  v0[15] = v5;
  v0[16] = v6;
  v10 = v0[11];
  (*(v4 + 8))(v0[14], v9);
  if (*(v10 + 128) == 1)
  {
    v11 = v0[11];
    v12 = v0[5];
    v13 = sub_23E563978();
    v14 = swift_task_alloc();
    v0[17] = v14;
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = v5;
    v14[5] = v6;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    v0[18] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
    *v16 = v0;
    v16[1] = sub_23E5B4378;

    return MEMORY[0x2822008A0](v0 + 2, v11, v13, 0xD000000000000019, 0x800000023E5D01C0, sub_23E5639E4, v14, v17);
  }

  else
  {
    sub_23E56D8C8();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    sub_23E56121C(v0[15], v0[16]);
    v19 = v0[14];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_23E5B4378()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_23E5B44A0;
  }

  else
  {
    v6 = *(v2 + 136);
    v7 = *(v2 + 88);

    v5 = sub_23E59BA9C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23E5B44A0()
{
  v1 = v0[17];

  v2 = v0[19];
  sub_23E56121C(v0[15], v0[16]);
  v3 = v0[14];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23E5B4514()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_23E5B463C;
  }

  else
  {
    v6 = *(v2 + 160);
    v7 = *(v2 + 88);

    v5 = sub_23E59C098;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23E5B463C()
{
  v1 = v0[20];

  v2 = v0[22];
  sub_23E56121C(v0[18], v0[19]);
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E5B46BC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E55FD64;

  return XPCClient.invalidate()();
}

uint64_t sub_23E5B474C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E55FD60;

  return XPCClient.sendItem(_:)(a1);
}

uint64_t sub_23E5B47E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23E55FD60;

  return XPCClient.sendItem<A>(_:payload:)(a1, a2, a3, a4);
}

uint64_t sub_23E5B48A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23E55FD60;

  return XPCClient.sendItem<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_23E5B4968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23E55FD60;

  return XPCClient.sendItem<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_23E5B4A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23E55FD60;

  return XPCClient.sendItem<A, B>(_:payload:)(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_23E5B4B54()
{
  result = qword_27E346A38;
  if (!qword_27E346A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346A38);
  }

  return result;
}

uint64_t sub_23E5B4BA8(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_23E5B2A88(a1, v4, v5);
}

uint64_t sub_23E5B4C28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E55FD64;

  return sub_23E5B2FBC(a1, v4, v5, v6);
}

uint64_t SecureCloudPingResponseProtobuf.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t type metadata accessor for SecureCloudPingResponseProtobuf()
{
  result = qword_27E346A70;
  if (!qword_27E346A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudPingResponseProtobuf.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SecureCloudPingResponseProtobuf.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 20));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SecureCloudPingResponseProtobuf.requestIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_23E5B4E64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_23E5B4EC8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudPingResponseProtobuf.identifier.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SecureCloudPingResponseProtobuf() + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23E569B50;
}

Swift::Void __swiftcall SecureCloudPingResponseProtobuf.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_23E5B5034@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_23E5B5098(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudPingResponseProtobuf.requestIdentifier.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SecureCloudPingResponseProtobuf() + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23E56BC24;
}

Swift::Void __swiftcall SecureCloudPingResponseProtobuf.clearRequestIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudPingResponseProtobuf() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SecureCloudPingResponseProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudPingResponseProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SecureCloudPingResponseProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  sub_23E5C8CC0();
  result = type metadata accessor for SecureCloudPingResponseProtobuf();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_23E5B5354()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E346A48);
  __swift_project_value_buffer(v0, qword_27E346A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CB3D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23E5C8E60();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requestIdentifier";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_23E5C8E70();
}

uint64_t static SecureCloudPingResponseProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E346108 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E346A48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SecureCloudPingResponseProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23E5C8D30();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for SecureCloudPingResponseProtobuf() + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for SecureCloudPingResponseProtobuf() + 24);
LABEL_3:
      v0 = 0;
      sub_23E5C8D70();
    }
  }
}

uint64_t SecureCloudPingResponseProtobuf.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for SecureCloudPingResponseProtobuf();
  v3 = (v0 + *(v2 + 20));
  if (!v3[1] || (v4 = *v3, result = sub_23E5C8E30(), !v1))
  {
    v6 = (v0 + *(v2 + 24));
    if (!v6[1])
    {
      return sub_23E5C8CB0();
    }

    v7 = *v6;
    result = sub_23E5C8E30();
    if (!v1)
    {
      return sub_23E5C8CB0();
    }
  }

  return result;
}

uint64_t SecureCloudPingResponseProtobuf.hashValue.getter()
{
  sub_23E5C94D0();
  type metadata accessor for SecureCloudPingResponseProtobuf();
  sub_23E5B5D44(&qword_27E346A60, type metadata accessor for SecureCloudPingResponseProtobuf);
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

uint64_t sub_23E5B57B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23E5C8CC0();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_23E5B583C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E5B5D44(&unk_27E346A80, type metadata accessor for SecureCloudPingResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23E5B58B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E346108 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E346A48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E5B5960(uint64_t a1)
{
  v2 = sub_23E5B5D44(&qword_27E3462C8, type metadata accessor for SecureCloudPingResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23E5B59CC()
{
  sub_23E5B5D44(&qword_27E3462C8, type metadata accessor for SecureCloudPingResponseProtobuf);

  return sub_23E5C8DE0();
}

uint64_t _s21ActivitySharingClient31SecureCloudPingResponseProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudPingResponseProtobuf();
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_23E5C9430();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_23E5C9430() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_23E5C8CD0();
    sub_23E5B5D44(&qword_27E346150, MEMORY[0x277D216C8]);
    return sub_23E5C8F20() & 1;
  }

  return 0;
}

void sub_23E5B5CC0()
{
  sub_23E5C8CD0();
  if (v0 <= 0x3F)
  {
    sub_23E56735C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23E5B5D44(unint64_t *a1, void (*a2)(uint64_t))
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

char *ActivitySharingFriendQuery.__allocating_init(activitySharingClient:updateHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_23E5B6AA8(a1, a2, a3);

  return v8;
}

char *ActivitySharingFriendQuery.init(activitySharingClient:updateHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23E5B6AA8(a1, a2, a3);

  return v4;
}

void sub_23E5B5E30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_280C09100 != -1)
    {
      swift_once();
    }

    v2 = sub_23E5C8EB0();
    __swift_project_value_buffer(v2, qword_280C09128);
    sub_23E560890(0xD00000000000006CLL, 0x800000023E5D0AC0, 0xD000000000000018, 0x800000023E5D0B30);
    _s21ActivitySharingClient0aB11FriendQueryC24fitnessAppsStateObserver_018applicationInstallH29DidChangeForBundleIdentifiersySo09FIFitnessghI0C_SaySSGtF_0();
  }
}

void sub_23E5B5F94(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_23E593770(0, &qword_280C08FE8, 0x277CE90F8);
    sub_23E5B70BC(&qword_280C08FE0, &qword_280C08FE8, 0x277CE90F8);
    v5 = sub_23E5C9120();
  }

  if (a2)
  {
    v6 = sub_23E5C8B80();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void _s21ActivitySharingClient0aB11FriendQueryC24fitnessAppsStateObserver_018applicationInstallH29DidChangeForBundleIdentifiersySo09FIFitnessghI0C_SaySSGtF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v5 = sub_23E5C8EB0();
  __swift_project_value_buffer(v5, qword_280C09128);
  sub_23E560890(0xD00000000000006CLL, 0x800000023E5D0AC0, 0xD000000000000011, 0x800000023E5D0B50);
  v6 = [objc_opt_self() sharedBehavior];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isAppleWatch];

    v9 = MEMORY[0x277D09518];
    if (!v8)
    {
      v9 = MEMORY[0x277D09530];
    }

    v10 = *v9;
    v11 = sub_23E5C8F40();
    v13 = v12;
    v14 = *(v0 + OBJC_IVAR____ASActivitySharingFriendQuery_fitnessAppsStateObserver);
    v15 = sub_23E5C8F30();
    v16 = [v14 installStateForBundleIdentifier_];

    if (v16 == 1)
    {

      v17 = sub_23E5C9110();
      (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v18;
      sub_23E59D0CC(0, 0, v4, &unk_23E5CE520, v19);
    }

    else
    {

      v25 = sub_23E5C8E90();
      v20 = sub_23E5C9170();

      if (os_log_type_enabled(v25, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v26 = v22;
        *v21 = 136315138;
        v23 = sub_23E560AF0(v11, v13, &v26);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_23E55E000, v25, v20, "App with bundle id %s not installed, not updating friend list", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x23EF0DE00](v22, -1, -1);
        MEMORY[0x23EF0DE00](v21, -1, -1);
      }

      else
      {

        v24 = v25;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E5B64D8()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____ASActivitySharingFriendQuery_activitySharingClient);
    v0[12] = v3;
    v4 = Strong;
    v3;

    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_23E5B6650;

    return sub_23E59019C();
  }

  else
  {
    v7 = v0[11];
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler);
      v10 = *(v8 + OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler + 8);
      v11 = v8;

      v9(0, 0);
    }

    else
    {
    }

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_23E5B6650(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_23E5B6848;
  }

  else
  {

    *(v4 + 120) = a1;
    v7 = sub_23E5B6780;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23E5B6780()
{
  v1 = v0[15];
  v2 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler);
    v4 = *(Strong + OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler + 8);
    v6 = Strong;

    v5(v1, 0);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_23E5B6848()
{
  v1 = *(v0 + 88);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = *(v0 + 112);
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler);
    v4 = *(Strong + OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler + 8);
    v6 = Strong;

    v7 = v3;
    v5(0, v3);
  }

  v8 = *(v0 + 8);

  return v8();
}

id ActivitySharingFriendQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivitySharingFriendQuery.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingFriendQuery();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_23E5B6AA8(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = sub_23E5C91A0();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B20, &qword_23E5CE528);
  v12 = *(v11 - 8);
  v35 = v11;
  v36 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v33 = sub_23E5C91C0();
  v37 = *(v33 - 8);
  v16 = *(v37 + 64);
  MEMORY[0x28223BE20](v33);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____ASActivitySharingFriendQuery_cancellable] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____ASActivitySharingFriendQuery_activitySharingClient] = a1;
  v19 = &v3[OBJC_IVAR____ASActivitySharingFriendQuery_updateHandler];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = objc_allocWithZone(MEMORY[0x277D09598]);
  v21 = a1;

  v22 = [v20 init];
  *&v3[OBJC_IVAR____ASActivitySharingFriendQuery_fitnessAppsStateObserver] = v22;
  v23 = type metadata accessor for ActivitySharingFriendQuery();
  v39.receiver = v3;
  v39.super_class = v23;
  v24 = objc_msgSendSuper2(&v39, sel_init);
  v25 = *&v24[OBJC_IVAR____ASActivitySharingFriendQuery_fitnessAppsStateObserver];
  v26 = v24;
  [v25 setDelegate_];
  _s21ActivitySharingClient0aB11FriendQueryC24fitnessAppsStateObserver_018applicationInstallH29DidChangeForBundleIdentifiersySo09FIFitnessghI0C_SaySSGtF_0();
  v27 = [objc_opt_self() defaultCenter];
  v28 = *MEMORY[0x277CE9158];
  sub_23E5C91D0();

  sub_23E5C9190();
  sub_23E593770(0, &unk_280C08D38, 0x277D85C78);
  v29 = sub_23E5C91B0();
  v38 = v29;
  sub_23E5B7064();
  sub_23E5B70BC(&qword_280C08D48, &unk_280C08D38, 0x277D85C78);
  v30 = v33;
  sub_23E5C8ED0();

  (*(v7 + 8))(v10, v34);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_23E5B7108(qword_280C08D60, &qword_27E346B20, &qword_23E5CE528);
  v31 = v35;
  sub_23E5C8EE0();

  (*(v36 + 8))(v15, v31);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B28, &unk_23E5CE530);
  sub_23E5B7108(&unk_280C08D50, &qword_27E346B28, &unk_23E5CE530);
  sub_23E5C8EC0();
  swift_endAccess();

  (*(v37 + 8))(v18, v30);
  return v26;
}

uint64_t sub_23E5B6FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E55FD64;

  return sub_23E5B64B8(a1, v4, v5, v6);
}

unint64_t sub_23E5B7064()
{
  result = qword_280C08D30;
  if (!qword_280C08D30)
  {
    sub_23E5C91C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C08D30);
  }

  return result;
}

uint64_t sub_23E5B70BC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23E593770(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E5B7108(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void __swiftcall SendFriendInviteTransportItem.init(destination:callerID:serviceIdentifier:)(ActivitySharingClient::SendFriendInviteTransportItem *__return_ptr retstr, Swift::String destination, Swift::String callerID, Swift::String serviceIdentifier)
{
  retstr->destination = destination;
  retstr->callerID = callerID;
  retstr->serviceIdentifier = serviceIdentifier;
}

uint64_t SendFriendInviteTransportItem.destination.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SendFriendInviteTransportItem.callerID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SendFriendInviteTransportItem.serviceIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SendFriendInviteTransportItem.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23E5C92D0();
  MEMORY[0x23EF0D190](0xD00000000000001DLL, 0x800000023E5CE520);
  MEMORY[0x23EF0D190](0x616E697473656428, 0xEE00203A6E6F6974);
  MEMORY[0x23EF0D190](v1, v2);
  MEMORY[0x23EF0D190](0x4972656C6C616320, 0xEB00000000203A44);
  MEMORY[0x23EF0D190](v3, v4);
  MEMORY[0x23EF0D190](0xD000000000000014, 0x800000023E5D0B70);
  MEMORY[0x23EF0D190](v5, v6);
  MEMORY[0x23EF0D190](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_23E5B732C()
{
  v1 = 0x444972656C6C6163;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616E6974736564;
  }
}

uint64_t sub_23E5B7394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E5B7AB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E5B73BC(uint64_t a1)
{
  v2 = sub_23E5B75F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5B73F8(uint64_t a1)
{
  v2 = sub_23E5B75F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SendFriendInviteTransportItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B30, "\n7");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B75F8();
  sub_23E5C9510();
  v18 = 0;
  v13 = v15[5];
  sub_23E5C93C0();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_23E5C93C0();
  v16 = 2;
  sub_23E5C93C0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23E5B75F8()
{
  result = qword_27E346B38;
  if (!qword_27E346B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B38);
  }

  return result;
}

uint64_t SendFriendInviteTransportItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B40, &qword_23E5CE568);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B75F8();
  sub_23E5C9500();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_23E5C9380();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_23E5C9380();
  v23 = v14;
  v25 = 2;
  v15 = sub_23E5C9380();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23E5B78F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23E5B7940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23E5B79B0()
{
  result = qword_27E346B48;
  if (!qword_27E346B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B48);
  }

  return result;
}

unint64_t sub_23E5B7A08()
{
  result = qword_27E346B50;
  if (!qword_27E346B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B50);
  }

  return result;
}

unint64_t sub_23E5B7A60()
{
  result = qword_27E346B58;
  if (!qword_27E346B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B58);
  }

  return result;
}

uint64_t sub_23E5B7AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_23E5C9430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444972656C6C6163 && a2 == 0xE800000000000000 || (sub_23E5C9430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023E5CFEB0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23E5C9430();

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

uint64_t sub_23E5B7BF4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23E5B7C30(uint64_t a1)
{
  v2 = sub_23E5B7DE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5B7C6C(uint64_t a1)
{
  v2 = sub_23E5B7DE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23E5B7CD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B60, &qword_23E5CE810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B7DE4();
  sub_23E5C9510();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_23E5B7DE4()
{
  result = qword_27E346B68;
  if (!qword_27E346B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B68);
  }

  return result;
}

unint64_t sub_23E5B7E4C()
{
  result = qword_27E346B70;
  if (!qword_27E346B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B70);
  }

  return result;
}

unint64_t sub_23E5B7EA4()
{
  result = qword_27E346B78;
  if (!qword_27E346B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B78);
  }

  return result;
}

ActivitySharingClient::SetMuteEnabledTransportItem __swiftcall SetMuteEnabledTransportItem.init(isMuteEnabled:friendUUID:)(Swift::Bool isMuteEnabled, Swift::String friendUUID)
{
  *v2 = isMuteEnabled;
  *(v2 + 8) = friendUUID;
  result.friendUUID = friendUUID;
  result.isMuteEnabled = isMuteEnabled;
  return result;
}

uint64_t SetMuteEnabledTransportItem.friendUUID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t SetMuteEnabledTransportItem.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_23E5C92D0();

  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23EF0D190](v4, v5);

  MEMORY[0x23EF0D190](0x55646E6569726620, 0xED0000203A444955);
  MEMORY[0x23EF0D190](v2, v3);
  MEMORY[0x23EF0D190](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

uint64_t sub_23E5B8030()
{
  if (*v0)
  {
    result = 0x5555646E65697266;
  }

  else
  {
    result = 0x6E456574754D7369;
  }

  *v0;
  return result;
}

uint64_t sub_23E5B807C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E456574754D7369 && a2 == 0xED000064656C6261;
  if (v6 || (sub_23E5C9430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5555646E65697266 && a2 == 0xEA00000000004449)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23E5C9430();

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

uint64_t sub_23E5B8168(uint64_t a1)
{
  v2 = sub_23E5B8370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5B81A4(uint64_t a1)
{
  v2 = sub_23E5B8370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetMuteEnabledTransportItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B80, &qword_23E5CE8E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B8370();
  sub_23E5C9510();
  v15 = 0;
  sub_23E5C93D0();
  if (!v2)
  {
    v14 = 1;
    sub_23E5C93C0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_23E5B8370()
{
  result = qword_27E346B88;
  if (!qword_27E346B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B88);
  }

  return result;
}

uint64_t SetMuteEnabledTransportItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346B90, &qword_23E5CE8E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5B8370();
  sub_23E5C9500();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_23E5C9390();
    v17 = 1;
    v13 = sub_23E5C9380();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_23E5B85C8()
{
  result = qword_27E346B98;
  if (!qword_27E346B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346B98);
  }

  return result;
}

unint64_t sub_23E5B8620()
{
  result = qword_27E346BA0;
  if (!qword_27E346BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BA0);
  }

  return result;
}

unint64_t sub_23E5B8678()
{
  result = qword_27E346BA8;
  if (!qword_27E346BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BA8);
  }

  return result;
}

uint64_t sub_23E5B86CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_23E594A1C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_23E5B880C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[29] = a2;
  v3[30] = a3;
  v3[28] = a1;
  return MEMORY[0x2822009F8](sub_23E5B8830, 0, 0);
}

uint64_t sub_23E5B8830()
{
  v1 = v0[30];
  v2 = v1[2];
  v0[31] = v2;
  if (v2)
  {
    v3 = v0[28];
    v0[32] = MEMORY[0x277D84F90];
    v4 = v1[5];
    v0[33] = v4;
    v0[34] = 1;
    v0[26] = v1[4];
    v0[27] = v4;

    v11 = (v3 + *v3);
    v5 = v3[1];
    v6 = swift_task_alloc();
    v0[35] = v6;
    *v6 = v0;
    v6[1] = sub_23E5B89A8;
    v7 = v0[29];

    return (v11)(v0 + 2, v0 + 26);
  }

  else
  {
    v9 = v0[1];
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_23E5B89A8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 256);

    v5 = sub_23E5B8D38;
  }

  else
  {
    v5 = sub_23E5B8AC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E5B8AC4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 256);
    v2 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v2;
    v3 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 256);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_23E5C2BCC(0, *(v5 + 2) + 1, 1, *(v0 + 256));
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_23E5C2BCC((v6 > 1), v7 + 1, 1, v5);
    }

    v8 = *(v0 + 264);
    v9 = *(v0 + 272);
    v10 = *(v0 + 248);

    *(v5 + 2) = v7 + 1;
    v12 = &v5[64 * v7];
    v13 = *(v0 + 144);
    v14 = *(v0 + 160);
    v15 = *(v0 + 192);
    *(v12 + 4) = *(v0 + 176);
    *(v12 + 5) = v15;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    if (v9 != v10)
    {
      v16 = *(v0 + 272);
      *(v0 + 256) = v5;
      goto LABEL_14;
    }
  }

  else
  {
    v17 = *(v0 + 264);
    v18 = *(v0 + 272);
    v19 = *(v0 + 248);

    v20 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v20;
    v21 = *(v0 + 64);
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 128) = v21;
    result = sub_23E562510(v0 + 80, &qword_27E346BD0, &qword_23E5CEBE0);
    if (v18 != v19)
    {
      v16 = *(v0 + 272);
LABEL_14:
      if (v16 >= *(v0 + 248))
      {
        __break(1u);
      }

      else
      {
        v23 = *(v0 + 240) + 16 * v16;
        result = *(v23 + 40);
        *(v0 + 264) = result;
        *(v0 + 272) = v16 + 1;
        if (!__OFADD__(v16, 1))
        {
          v24 = *(v0 + 224);
          *(v0 + 208) = *(v23 + 32);
          *(v0 + 216) = result;

          v28 = (v24 + *v24);
          v25 = v24[1];
          v26 = swift_task_alloc();
          *(v0 + 280) = v26;
          *v26 = v0;
          v26[1] = sub_23E5B89A8;
          v27 = *(v0 + 232);

          return v28(v0 + 16, v0 + 208);
        }
      }

      __break(1u);
      return result;
    }

    v5 = *(v0 + 256);
  }

  v22 = *(v0 + 8);

  return v22(v5);
}

uint64_t sub_23E5B8D38()
{
  v1 = v0[33];

  v2 = v0[1];
  v3 = v0[36];

  return v2();
}

uint64_t sub_23E5B8D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  return MEMORY[0x2822009F8](sub_23E5B8DC0, 0, 0);
}

uint64_t sub_23E5B8DC0()
{
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  *(v0 + 360) = v2;
  if (v2)
  {
    v3 = *(v0 + 336);
    *(v0 + 368) = 0;
    v4 = *(v1 + 80);
    v6 = *(v1 + 32);
    v5 = *(v1 + 48);
    *(v0 + 48) = *(v1 + 64);
    *(v0 + 64) = v4;
    *(v0 + 16) = v6;
    *(v0 + 32) = v5;
    v8 = *(v1 + 64);
    v7 = *(v1 + 80);
    v9 = *(v1 + 48);
    *(v0 + 80) = *(v1 + 32);
    *(v0 + 96) = v9;
    *(v0 + 112) = v8;
    *(v0 + 128) = v7;
    sub_23E57EA28(v0 + 16, v0 + 144);
    v15 = (v3 + *v3);
    v10 = v3[1];
    v11 = swift_task_alloc();
    *(v0 + 376) = v11;
    *v11 = v0;
    v11[1] = sub_23E5B8F28;
    v12 = *(v0 + 344);

    return v15(v0 + 80);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_23E5B8F28()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_23E5B91D4;
  }

  else
  {
    v3 = sub_23E5B903C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5B903C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368) + 1;
  v3 = *(v0 + 96);
  *(v0 + 272) = *(v0 + 80);
  *(v0 + 288) = v3;
  v4 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v4;
  sub_23E587D58(v0 + 272);
  if (v2 == v1)
  {
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 368) + 1;
    *(v0 + 368) = v7;
    v8 = *(v0 + 336);
    v9 = (*(v0 + 352) + (v7 << 6));
    v10 = v9[5];
    v12 = v9[2];
    v11 = v9[3];
    *(v0 + 48) = v9[4];
    *(v0 + 64) = v10;
    *(v0 + 16) = v12;
    *(v0 + 32) = v11;
    v14 = v9[4];
    v13 = v9[5];
    v15 = v9[3];
    *(v0 + 80) = v9[2];
    *(v0 + 96) = v15;
    *(v0 + 112) = v14;
    *(v0 + 128) = v13;
    sub_23E57EA28(v0 + 16, v0 + 144);
    v19 = (v8 + *v8);
    v16 = v8[1];
    v17 = swift_task_alloc();
    *(v0 + 376) = v17;
    *v17 = v0;
    v17[1] = sub_23E5B8F28;
    v18 = *(v0 + 344);

    return v19(v0 + 80);
  }
}

uint64_t sub_23E5B91D4()
{
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  sub_23E587D58(v0 + 208);
  v3 = *(v0 + 8);
  v4 = *(v0 + 384);

  return v3();
}

uint64_t sub_23E5B9248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5B926C, 0, 0);
}

uint64_t sub_23E5B926C()
{
  v1 = v0[6];
  v2 = v1[2];
  v0[7] = v2;
  if (v2)
  {
    v3 = v0[4];
    v0[8] = MEMORY[0x277D84F90];
    v0[9] = 0;
    v4 = v1[4];
    v0[10] = v4;
    v5 = v1[5];
    v0[11] = v5;
    v0[2] = v4;
    v0[3] = v5;

    v12 = (v3 + *v3);
    v6 = v3[1];
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_23E5B93DC;
    v8 = v0[5];

    return v12(v0 + 2);
  }

  else
  {
    v10 = v0[1];
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }
}

uint64_t sub_23E5B93DC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = *(v4 + 64);

    v8 = sub_23E5B9724;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v8 = sub_23E5B9510;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23E5B9510()
{
  v1 = *(v0 + 88);
  if (*(v0 + 112))
  {
    v2 = *(v0 + 64);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 64);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_23E5C2AC0(0, *(v4 + 2) + 1, 1, *(v0 + 64));
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_23E5C2AC0((v5 > 1), v6 + 1, 1, v4);
    }

    v8 = *(v0 + 80);
    v7 = *(v0 + 88);

    *(v4 + 2) = v6 + 1;
    v9 = &v4[16 * v6];
    *(v9 + 4) = v8;
    *(v9 + 5) = v7;
  }

  else
  {

    v4 = *(v0 + 64);
  }

  v10 = *(v0 + 72) + 1;
  if (v10 == *(v0 + 56))
  {
    v11 = *(v0 + 8);

    return v11(v4);
  }

  else
  {
    *(v0 + 64) = v4;
    *(v0 + 72) = v10;
    v13 = *(v0 + 32);
    v14 = *(v0 + 48) + 16 * v10;
    v15 = *(v14 + 32);
    *(v0 + 80) = v15;
    v16 = *(v14 + 40);
    *(v0 + 88) = v16;
    *(v0 + 16) = v15;
    *(v0 + 24) = v16;

    v20 = (v13 + *v13);
    v17 = v13[1];
    v18 = swift_task_alloc();
    *(v0 + 96) = v18;
    *v18 = v0;
    v18[1] = sub_23E5B93DC;
    v19 = *(v0 + 40);

    return v20(v0 + 16);
  }
}

uint64_t sub_23E5B9724()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_23E5B9788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_23E5B97AC, 0, 0);
}

uint64_t sub_23E5B97AC()
{
  v1 = v0[3];
  if (*(v1 + 16))
  {
    v3 = v0[5];
    v2 = v0[6];
    v4 = v0[4];
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    v6 = sub_23E5B9D64(MEMORY[0x277D84F98], sub_23E5BCDC8, v5, v1);
    v0[7] = v6;

    v7 = swift_task_alloc();
    v0[8] = v7;
    v7[2] = v6;
    v7[3] = v4;
    v7[4] = v3;
    v8 = *(MEMORY[0x277D85A40] + 4);
    v9 = swift_task_alloc();
    v0[9] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB0, &qword_23E5CEBC0);
    *v9 = v0;
    v9[1] = sub_23E5B9960;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x800000023E5D0BC0, sub_23E5BCDE4, v7, v10);
  }

  else
  {
    v11 = v0[1];
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

uint64_t sub_23E5B9960()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_23E5B9A84;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);

    v4 = sub_23E592820;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E5B9A84()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_23E5B9AF0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  result = sub_23E5B9B94(*a2, v4);
  if (v6)
  {
    v7 = result;
    v8 = v6;

    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    sub_23E571CEC(v3, v4, v7, v8, isUniquelyReferenced_nonNull_native);

    *a1 = v11;
  }

  return result;
}

uint64_t sub_23E5B9B94(uint64_t a1, unint64_t a2)
{
  v4 = sub_23E5C8F30();
  IsEmail = ASDestinationIsEmail();

  v6 = sub_23E5C8F30();
  if (IsEmail)
  {
    v7 = MEMORY[0x23EF0D790]();
  }

  else
  {
    IsPhoneNumber = ASDestinationIsPhoneNumber();

    if (!IsPhoneNumber)
    {
      if (qword_280C088F8 != -1)
      {
        swift_once();
      }

      v12 = sub_23E5C8EB0();
      __swift_project_value_buffer(v12, qword_280C09108);

      v13 = sub_23E5C8E90();
      v14 = sub_23E5C9160();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v17 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_23E560AF0(a1, a2, &v17);
        _os_log_impl(&dword_23E55E000, v13, v14, "Unknown destination type %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x23EF0DE00](v16, -1, -1);
        MEMORY[0x23EF0DE00](v15, -1, -1);
      }

      return 0;
    }

    v6 = sub_23E5C8F30();
    v7 = IDSCopyIDForPhoneNumber();
  }

  v9 = v7;

  if (v9)
  {
    v10 = sub_23E5C8F40();

    return v10;
  }

  return 0;
}

uint64_t sub_23E5B9D64(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

void sub_23E5B9E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v47 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB8, &qword_23E5CEBC8);
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v46);
  v9 = &v36 - v8;
  v10 = [objc_opt_self() sharedInstance];
  if (!v10)
  {
    __break(1u);
    return;
  }

  v41 = v9;
  v42 = v10;
  v43 = a2;
  v44 = a4;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = sub_23E5BCB34(*(a2 + 16), 0);
    v13 = sub_23E5BCDF0(aBlock, v12 + 4, v11, a2);

    sub_23E5BCF48();
    if (v13 == v11)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v12 = MEMORY[0x277D84F90];
LABEL_6:
  sub_23E5BA288(v12);

  v40 = sub_23E5C9040();

  v14 = v44;
  v15 = v45;
  v39 = sub_23E5C8F30();
  v38 = [objc_opt_self() refreshIDInfo];
  v37 = sub_23E5C8F30();
  sub_23E593770(0, &unk_280C08D38, 0x277D85C78);
  v16 = sub_23E5C91B0();
  v17 = v41;
  v18 = v46;
  (*(v6 + 16))(v41, v47, v46);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = (v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v6 + 32))(v21 + v19, v17, v18);
  *(v21 + v20) = v43;
  v22 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v15;
  v22[1] = v14;
  aBlock[4] = sub_23E5BCF50;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E5BB480;
  aBlock[3] = &block_descriptor_4;
  v23 = _Block_copy(aBlock);

  v24 = v42;
  v26 = v39;
  v25 = v40;
  v28 = v37;
  v27 = v38;
  v29 = [v42 idInfoForDestinations:v40 service:v39 infoTypes:1 options:v38 listenerID:v37 queue:v16 completionBlock:v23];
  _Block_release(v23);

  if ((v29 & 1) == 0)
  {
    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v30 = sub_23E5C8EB0();
    __swift_project_value_buffer(v30, qword_280C09108);
    v31 = sub_23E5C8E90();
    v32 = sub_23E5C9160();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23E55E000, v31, v32, "IDS identity query failed to initiate", v33, 2u);
      MEMORY[0x23EF0DE00](v33, -1, -1);
    }

    sub_23E5BD018();
    v34 = swift_allocError();
    *v35 = 0;
    aBlock[0] = v34;
    sub_23E5C90E0();
  }
}

uint64_t sub_23E5BA288(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_23E5864CC(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23E5864CC((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_23E5BD3F4(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23E5BA388(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v4 = sub_23E5C8EB0();
    __swift_project_value_buffer(v4, qword_280C09108);
    v5 = a2;
    v6 = sub_23E5C8E90();
    v7 = sub_23E5C9160();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_23E55E000, v6, v7, "IDS identity query returned an error: %@", v8, 0xCu);
      sub_23E562510(v9, &qword_27E346750, &qword_23E5CD2A0);
      MEMORY[0x23EF0DE00](v9, -1, -1);
      MEMORY[0x23EF0DE00](v8, -1, -1);
    }

    v26 = a2;
  }

  else
  {
    if (a1)
    {
      sub_23E5BA72C(a1);
      if (v12)
      {
        v13 = MEMORY[0x28223BE20](v12);
        v14 = sub_23E5BD078(v13, sub_23E5BD06C);

        v26 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB8, &qword_23E5CEBC8);
        return sub_23E5C90F0();
      }
    }

    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v16 = sub_23E5C8EB0();
    __swift_project_value_buffer(v16, qword_280C09108);

    v17 = sub_23E5C8E90();
    v18 = sub_23E5C9160();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BC8, &unk_23E5CEBD0);
      v21 = sub_23E5C8F50();
      v23 = sub_23E560AF0(v21, v22, &v26);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_23E55E000, v17, v18, "Invalid results from IDS identity query: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23EF0DE00](v20, -1, -1);
      MEMORY[0x23EF0DE00](v19, -1, -1);
    }

    sub_23E5BD018();
    v24 = swift_allocError();
    *v25 = 1;
    v26 = v24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB8, &qword_23E5CEBC8);
  return sub_23E5C90E0();
}

void sub_23E5BA72C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BD8, &qword_23E5CEBE8);
    v2 = sub_23E5C9360();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = sub_23E593770(0, &qword_280C088A0, 0x277CCACA8);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v27 = v8 >> 6;

    v28 = 0;
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_31:
    while (1)
    {
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v34 >= v27)
      {
        goto LABEL_46;
      }

      v7 = *(v4 + 8 * v34);
      ++v28;
      if (v7)
      {
        while (1)
        {
          v35 = __clz(__rbit64(v7)) | (v34 << 6);
          sub_23E5BD398(*(a1 + 48) + 40 * v35, &v49);
          sub_23E560BBC(*(a1 + 56) + 32 * v35, &v51 + 8);
          v46 = v51;
          v47 = v52;
          v48 = v53;
          v44 = v49;
          v45 = v50;
          v36 = sub_23E5C9290();
          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (!v37)
          {
            break;
          }

          v38 = v37;
          sub_23E560BBC(&v46 + 8, v43);
          sub_23E562510(&v44, &qword_27E346BE0, &unk_23E5CEBF0);
          sub_23E593770(0, &qword_280C088D8, 0x277D189D0);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_46;
          }

          v7 &= v7 - 1;
          v39 = sub_23E57C6D4(v38);
          if (v40)
          {
            v29 = *(v2 + 48);
            v30 = *(v29 + 8 * v39);
            *(v29 + 8 * v39) = v38;
            v31 = v39;

            v32 = *(v2 + 56);
            v33 = *(v32 + 8 * v31);
            *(v32 + 8 * v31) = v42;

            v28 = v34;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v41 = *(v2 + 16);
            if (v41 >= *(v2 + 24))
            {
              goto LABEL_50;
            }

            *(v2 + 64 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
            *(*(v2 + 48) + 8 * v39) = v38;
            *(*(v2 + 56) + 8 * v39) = v42;
            *(v2 + 16) = v41 + 1;
            v28 = v34;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v34 = v28;
        }

LABEL_44:
        sub_23E562510(&v44, &qword_27E346BE0, &unk_23E5CEBF0);
LABEL_46:

        return;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = __clz(__rbit64(v7)) | (v11 << 6);
      sub_23E5BD398(*(a1 + 48) + 40 * v14, &v49);
      sub_23E560BBC(*(a1 + 56) + 32 * v14, &v51 + 8);
      v46 = v51;
      v47 = v52;
      v48 = v53;
      v44 = v49;
      v45 = v50;
      v15 = sub_23E5C9290();
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {

        goto LABEL_44;
      }

      v17 = v16;
      sub_23E560BBC(&v46 + 8, v43);
      sub_23E562510(&v44, &qword_27E346BE0, &unk_23E5CEBF0);
      sub_23E593770(0, &qword_280C088D8, 0x277D189D0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_46;
      }

      v18 = *(v2 + 40);
      v19 = sub_23E5C91F0();
      v20 = -1 << *(v2 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v10 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v10 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_48;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v10 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v17;
      *(*(v2 + 56) + 8 * v12) = v42;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_46;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

double sub_23E5BAC20@<D0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v10 = sub_23E5C8F40();
  v12 = v10;
  v13 = v11;
  if (!*(a2 + 16) || (v14 = sub_23E57C65C(v10, v11), (v15 & 1) == 0))
  {
    if (qword_280C088F8 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_20;
  }

  v16 = (*(a2 + 56) + 16 * v14);
  v18 = *v16;
  v17 = v16[1];

  v19 = [a1 status];
  if (v19 > 2)
  {

    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v54 = sub_23E5C8EB0();
    __swift_project_value_buffer(v54, qword_280C09108);
    v55 = a1;
    v45 = sub_23E5C8E90();
    v56 = sub_23E5C9160();
    if (!os_log_type_enabled(v45, v56))
    {

      v45 = v55;
      goto LABEL_33;
    }

    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 134218242;
    *(v57 + 4) = [v55 status];

    *(v57 + 12) = 2112;
    *(v57 + 14) = v55;
    *v58 = v55;
    v59 = v55;
    _os_log_impl(&dword_23E55E000, v45, v56, "Failed to parse reachability %ld, %@", v57, 0x16u);
    sub_23E562510(v58, &qword_27E346750, &qword_23E5CD2A0);
    v60 = v58;
LABEL_31:
    MEMORY[0x23EF0DE00](v60, -1, -1);
    v53 = v57;
LABEL_32:
    MEMORY[0x23EF0DE00](v53, -1, -1);
    goto LABEL_33;
  }

  v83 = v19;
  v20 = [a1 endpoints];
  if (!v20)
  {

    if (qword_280C088F8 == -1)
    {
LABEL_29:
      v61 = sub_23E5C8EB0();
      __swift_project_value_buffer(v61, qword_280C09108);
      v62 = a1;
      v45 = sub_23E5C8E90();
      v63 = sub_23E5C9160();

      if (!os_log_type_enabled(v45, v63))
      {
        goto LABEL_33;
      }

      v57 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v57 = 138412290;
      *(v57 + 4) = v62;
      *v64 = v62;
      v65 = v62;
      _os_log_impl(&dword_23E55E000, v45, v63, "IDS identity query didn't return any endpoints: %@", v57, 0xCu);
      sub_23E562510(v64, &qword_27E346750, &qword_23E5CD2A0);
      v60 = v64;
      goto LABEL_31;
    }

LABEL_45:
    swift_once();
    goto LABEL_29;
  }

  v21 = v20;
  sub_23E593770(0, &qword_280C088E8, 0x277D189C0);
  v22 = sub_23E5C9050();

  v23 = v22;
  if (v22 >> 62)
  {
    v77 = v22;
    v24 = sub_23E5C9330();
    v23 = v77;
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(&v81 + 1) = v13;
  v82 = a5;
  *(&v80 + 1) = a4;
  *&v81 = v12;
  *&v80 = a3;
  if (!v24)
  {

    v27 = MEMORY[0x277D84F90];
LABEL_35:
    v91 = v81;
    *&v92 = v18;
    *(&v92 + 1) = v17;
    *&v93 = v27;
    BYTE8(v93) = v83;
    v94 = v80;
    v67 = qword_280C088F8;

    if (v67 != -1)
    {
      swift_once();
    }

    v68 = sub_23E5C8EB0();
    __swift_project_value_buffer(v68, qword_280C09108);
    sub_23E57EA28(&v91, &v90);
    v69 = sub_23E5C8E90();
    v70 = sub_23E5C9170();
    sub_23E587D58(&v91);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v89 = v72;
      *v71 = 136315138;
      v73 = v94;
      v90 = v92;

      MEMORY[0x23EF0D190](8250, 0xE200000000000000);
      MEMORY[0x23EF0D190](v73, *(&v73 + 1));
      v74 = sub_23E560AF0(v90, *(&v90 + 1), &v89);

      *(v71 + 4) = v74;
      _os_log_impl(&dword_23E55E000, v69, v70, "Found invitation destination: %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x23EF0DE00](v72, -1, -1);
      MEMORY[0x23EF0DE00](v71, -1, -1);
    }

    v75 = v92;
    *v82 = v91;
    v82[1] = v75;
    result = *&v93;
    v76 = v94;
    v82[2] = v93;
    v82[3] = v76;
    return result;
  }

  v25 = v23;
  v78 = v18;
  v79 = v17;
  *&v91 = MEMORY[0x277D84F90];
  sub_23E5864EC(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v26 = 0;
  v27 = v91;
  v28 = v25;
  v88 = v25 & 0xC000000000000001;
  v84 = v25 & 0xFFFFFFFFFFFFFF8;
  v85 = *MEMORY[0x277D188B8];
  v86 = v24;
  v87 = v25;
  while (1)
  {
    if (v88)
    {
      v29 = MEMORY[0x23EF0D4D0](v26, v28);
      goto LABEL_15;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v26 >= *(v84 + 16))
    {
      goto LABEL_41;
    }

    v29 = *(v28 + 8 * v26 + 32);
LABEL_15:
    v30 = v29;
    v31 = [v29 capabilities];
    v32 = [v31 valueForCapability_];

    v13 = v32 == 1;
    v33 = [v30 pushToken];
    v34 = sub_23E5C8BB0();
    v36 = v35;

    v37 = [v30 URI];
    v38 = [v37 prefixedURI];

    v12 = sub_23E5C8F40();
    v40 = v39;

    *&v91 = v27;
    v42 = *(v27 + 16);
    v41 = *(v27 + 24);
    a5 = (v42 + 1);
    if (v42 >= v41 >> 1)
    {
      sub_23E5864EC((v41 > 1), v42 + 1, 1);
      v27 = v91;
    }

    ++v26;
    *(v27 + 16) = a5;
    v43 = (v27 + 40 * v42);
    v43[4] = v13;
    v43[5] = v34;
    v43[6] = v36;
    v43[7] = v12;
    v43[8] = v40;
    v28 = v87;
    if (v86 == v26)
    {

      v18 = v78;
      v17 = v79;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  swift_once();
LABEL_20:
  v44 = sub_23E5C8EB0();
  __swift_project_value_buffer(v44, qword_280C09108);

  v45 = sub_23E5C8E90();
  v46 = sub_23E5C9160();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v91 = v48;
    *v47 = 136315394;
    v49 = sub_23E560AF0(v12, v13, &v91);

    *(v47 + 4) = v49;
    *(v47 + 12) = 2080;
    v50 = sub_23E5C8F00();
    v52 = sub_23E560AF0(v50, v51, &v91);

    *(v47 + 14) = v52;
    _os_log_impl(&dword_23E55E000, v45, v46, "Failed to map result destination to raw destination %s, %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF0DE00](v48, -1, -1);
    v53 = v47;
    goto LABEL_32;
  }

LABEL_33:

  result = 0.0;
  a5[2] = 0u;
  a5[3] = 0u;
  *a5 = 0u;
  a5[1] = 0u;
  return result;
}

uint64_t sub_23E5BB480(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23E5C8EF0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_23E5BB52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23E5BB550, 0, 0);
}

uint64_t sub_23E5BB550()
{
  v22 = v0;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_23E5C8EB0();
  v0[6] = __swift_project_value_buffer(v3, qword_280C09128);

  v4 = sub_23E5C8E90();
  v5 = sub_23E5C9170();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    v11 = MEMORY[0x23EF0D250](v8, MEMORY[0x277D837D0]);
    v13 = sub_23E560AF0(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_23E560AF0(v7, v6, &v21);
    _os_log_impl(&dword_23E55E000, v4, v5, "Querying destinations %s on service %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF0DE00](v10, -1, -1);
    MEMORY[0x23EF0DE00](v9, -1, -1);
  }

  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];
  v17 = swift_task_alloc();
  v0[7] = v17;
  v17[2] = v14;
  v17[3] = v16;
  v17[4] = v15;
  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = sub_23E5BB7C0;
  v19 = v0[2];

  return sub_23E5B880C(&unk_23E5CEB78, v17, v19);
}

void sub_23E5BB7C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {
  }

  else
  {
    v6 = *(v3 + 56);

    MEMORY[0x2822009F8](sub_23E5BB900, 0, 0);
  }
}

uint64_t sub_23E5BB900()
{
  v42 = v0;
  v1 = v0[9];
  v2 = v0[6];

  v3 = sub_23E5C8E90();
  v4 = sub_23E5C9170();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    v38 = v7;
    *v6 = 136315138;
    v9 = *(v5 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v34 = v7;
      v35 = v6;
      v36 = v4;
      v37 = v3;
      v11 = v0[9];
      v39 = MEMORY[0x277D84F90];
      sub_23E5864AC(0, v9, 0);
      v10 = v39;
      v12 = (v11 + 48);
      do
      {
        v13 = *(v12 - 1);
        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[4];
        v17 = v12[5];
        v40 = *v12;
        v41 = v14;

        swift_bridgeObjectRetain_n();

        MEMORY[0x23EF0D190](8250, 0xE200000000000000);
        MEMORY[0x23EF0D190](v16, v17);
        MEMORY[0x23EF0D190](10, 0xE100000000000000);

        v18 = v40;
        v19 = v41;
        v39 = v10;
        v21 = *(v10 + 16);
        v20 = *(v10 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_23E5864AC((v20 > 1), v21 + 1, 1);
          v10 = v39;
        }

        *(v10 + 16) = v21 + 1;
        v22 = v10 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        v12 += 8;
        --v9;
      }

      while (v9);
      v3 = v37;
      v4 = v36;
      v8 = v34;
      v6 = v35;
    }

    v23 = MEMORY[0x23EF0D250](v10, MEMORY[0x277D837D0]);
    v25 = v24;

    v26 = sub_23E560AF0(v23, v25, &v38);

    *(v6 + 4) = v26;
    _os_log_impl(&dword_23E55E000, v3, v4, "Found cached results %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EF0DE00](v8, -1, -1);
    MEMORY[0x23EF0DE00](v6, -1, -1);
  }

  v28 = v0[4];
  v27 = v0[5];
  v29 = v0[3];
  v30 = swift_task_alloc();
  v0[10] = v30;
  v30[2] = v27;
  v30[3] = v29;
  v30[4] = v28;
  v31 = swift_task_alloc();
  v0[11] = v31;
  *v31 = v0;
  v31[1] = sub_23E5BBC24;
  v32 = v0[2];

  return sub_23E5B9248(&unk_23E5CEB90, v30, v32);
}

void sub_23E5BBC24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
  }

  else
  {
    v7 = v4[10];

    v8 = swift_task_alloc();
    v4[13] = v8;
    *v8 = v6;
    v8[1] = sub_23E5BBD9C;
    v9 = v4[4];
    v10 = v4[5];
    v11 = v4[3];

    sub_23E5B9788(a1, v11, v9);
  }
}

uint64_t sub_23E5BBD9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v8 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v5 = sub_23E5BC384;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_23E5BBEB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E5BBEB8()
{
  v40 = v0;
  v1 = v0[14];
  v2 = v0[6];

  v3 = sub_23E5C8E90();
  v4 = sub_23E5C9170();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    v36 = v7;
    *v6 = 136315138;
    v9 = *(v5 + 16);
    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      v32 = v7;
      v33 = v6;
      v34 = v4;
      v35 = v3;
      v11 = v0[14];
      v37 = MEMORY[0x277D84F90];
      sub_23E5864AC(0, v9, 0);
      v10 = v37;
      v12 = (v11 + 48);
      do
      {
        v13 = *(v12 - 1);
        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[4];
        v17 = v12[5];
        v38 = *v12;
        v39 = v14;

        swift_bridgeObjectRetain_n();

        MEMORY[0x23EF0D190](8250, 0xE200000000000000);
        MEMORY[0x23EF0D190](v16, v17);
        MEMORY[0x23EF0D190](10, 0xE100000000000000);

        v18 = v38;
        v19 = v39;
        v37 = v10;
        v21 = *(v10 + 16);
        v20 = *(v10 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_23E5864AC((v20 > 1), v21 + 1, 1);
          v10 = v37;
        }

        *(v10 + 16) = v21 + 1;
        v22 = v10 + 16 * v21;
        *(v22 + 32) = v18;
        *(v22 + 40) = v19;
        v12 += 8;
        --v9;
      }

      while (v9);
      v3 = v35;
      v4 = v34;
      v8 = v32;
      v6 = v33;
    }

    v23 = MEMORY[0x23EF0D250](v10, MEMORY[0x277D837D0]);
    v25 = v24;

    v26 = sub_23E560AF0(v23, v25, &v36);

    *(v6 + 4) = v26;
    _os_log_impl(&dword_23E55E000, v3, v4, "Fetched new results %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EF0DE00](v8, -1, -1);
    MEMORY[0x23EF0DE00](v6, -1, -1);
  }

  v27 = v0[5];
  v28 = swift_task_alloc();
  v0[16] = v28;
  *(v28 + 16) = v27;
  v29 = swift_task_alloc();
  v0[17] = v29;
  *v29 = v0;
  v29[1] = sub_23E5BC1D4;
  v30 = v0[14];

  return sub_23E5B8D9C(&unk_23E5CEBB0, v28, v30);
}

void sub_23E5BC1D4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 128);

    MEMORY[0x2822009F8](sub_23E5BC310, 0, 0);
  }
}

uint64_t sub_23E5BC310()
{
  v3 = v0[9];
  sub_23E585D88(v0[14]);
  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_23E5BC384()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_23E5BC3F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  v6 = a2[1];
  v5[6] = *a2;
  v5[7] = v6;
  return MEMORY[0x2822009F8](sub_23E5BC420, 0, 0);
}

uint64_t sub_23E5BC420()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v13 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BC554;
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  return v13(v11, v7, v8, v9, v10, v2, v3);
}

uint64_t sub_23E5BC554()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23E5BC64C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[4] = a4;
  v4[5] = v5;
  v4[6] = v6;
  return MEMORY[0x2822009F8](sub_23E5BC678, 0, 0);
}

uint64_t sub_23E5BC678()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_23E5BC7A8;
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  return v12(v8, v7, v9, v10, v2, v3);
}

uint64_t sub_23E5BC7A8(char a1)
{
  v3 = *(*v1 + 56);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4((a1 & 1) == 0);
}

uint64_t sub_23E5BC8AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  *(v2 + 48) = *(a1 + 32);
  v4 = *(a1 + 56);
  *(v2 + 104) = *(a1 + 48);
  *(v2 + 112) = v4;
  return MEMORY[0x2822009F8](sub_23E5BC8E8, 0, 0);
}

uint64_t sub_23E5BC8E8()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v0[4] = v4;
  v0[5] = v3;
  v0[8] = v2;
  v0[9] = v1;
  v8 = *(v7 + 8);
  v16 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[15] = v10;
  *v10 = v0;
  v10[1] = sub_23E5BCA3C;
  v11 = v0[13];
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[12];

  return (v16)(v0 + 2, v13, v14, v11, v12, v6, v7);
}

uint64_t sub_23E5BCA3C()
{
  v1 = *(*v0 + 120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_23E5BCB34(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466D0, &qword_23E5CA670);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_23E5BCBB8(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23E55FD64;

  return sub_23E5BC3F4(a1, a2, v6, v7, v8);
}

uint64_t sub_23E5BCC7C(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E594A1C;

  return sub_23E5BC64C(a1, v4, v5, v6);
}

uint64_t sub_23E5BCD2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E55FD60;

  return sub_23E5BC8AC(a1, v4);
}

void *sub_23E5BCDF0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23E5BCF50(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BB8, &qword_23E5CEBC8) - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = (v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_23E5BA388(a1, a2);
}

unint64_t sub_23E5BD018()
{
  result = qword_27E346BC0;
  if (!qword_27E346BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BC0);
  }

  return result;
}

uint64_t sub_23E5BD078(unint64_t a1, void (*a2)(__int128 *__return_ptr, id, id))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = sub_23E5C9310() | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v10 = 0;
  v27 = MEMORY[0x277D84F90];
  v40 = v5;
LABEL_8:
  v11 = v10;
  v12 = v4;
  if ((v5 & 0x8000000000000000) != 0)
  {
    do
    {
      v19 = sub_23E5C9320();
      if (!v19)
      {
        goto LABEL_25;
      }

      v21 = v20;
      *&v32 = v19;
      sub_23E593770(0, &qword_280C088A0, 0x277CCACA8);
      swift_dynamicCast();
      v17 = v36;
      *&v32 = v21;
      sub_23E593770(0, &qword_280C088D8, 0x277D189D0);
      swift_dynamicCast();
      v18 = v36;
      v10 = v11;
      v4 = v12;
      if (!v17)
      {
        goto LABEL_25;
      }

LABEL_17:
      a2(&v36, v17, v18);

      if (*(&v36 + 1))
      {
        v32 = v36;
        v33 = v37;
        v34 = v38;
        v35 = v39;
        v22 = v27;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_23E5C2BCC(0, *(v27 + 16) + 1, 1, v27);
          v22 = result;
        }

        v5 = v40;
        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_23E5C2BCC((v23 > 1), v24 + 1, 1, v22);
          v22 = result;
        }

        v30 = v34;
        v31 = v35;
        v25 = v32;
        v29 = v33;
        *(v22 + 16) = v24 + 1;
        v27 = v22;
        v26 = (v22 + (v24 << 6));
        v26[4] = v30;
        v26[5] = v31;
        v26[2] = v25;
        v26[3] = v29;
        goto LABEL_8;
      }

      v32 = v36;
      v33 = v37;
      v34 = v38;
      v35 = v39;
      result = sub_23E562510(&v32, &qword_27E346BD0, &qword_23E5CEBE0);
      v11 = v10;
      v12 = v4;
      v5 = v40;
    }

    while ((v40 & 0x8000000000000000) != 0);
  }

  v13 = v11;
  v14 = v12;
  v10 = v11;
  if (v12)
  {
LABEL_13:
    v4 = (v14 - 1) & v14;
    v15 = (v10 << 9) | (8 * __clz(__rbit64(v14)));
    v16 = *(*(v5 + 56) + v15);
    v17 = *(*(v5 + 48) + v15);
    v18 = v16;
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_23E5BCF48();
    return v27;
  }

  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= ((v3 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v14 = *(v2 + 8 * v10);
    ++v13;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_23E5BD3F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

ActivitySharingClient::InvitationDestinationReachability_optional __swiftcall InvitationDestinationReachability.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23E5BD434()
{
  result = qword_27E346BE8;
  if (!qword_27E346BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BE8);
  }

  return result;
}

unint64_t sub_23E5BD550()
{
  result = qword_27E346BF0;
  if (!qword_27E346BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346BF0);
  }

  return result;
}

uint64_t SecureCloudClient.acceptInvite(from:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BD5C8, 0, 0);
}

uint64_t sub_23E5BD5C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD724;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1105, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

uint64_t sub_23E5BD724()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E575B50, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t SecureCloudClient.withdrawInvite(to:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BD87C, 0, 0);
}

uint64_t sub_23E5BD87C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD9D8;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1106, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

uint64_t sub_23E5BD9D8()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E576438, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t SecureCloudClient.ignoreInvite(from:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BDB30, 0, 0);
}

uint64_t sub_23E5BDB30()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD9D8;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1107, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.setMuteEnabled(setMuteEnabledTransportItem:)(uint64_t a1)
{
  *(v2 + 80) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  return MEMORY[0x2822009F8](sub_23E5BDCBC, 0, 0);
}

uint64_t sub_23E5BDCBC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 32);

  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_23E5BDE2C;

  return (v11)(1158, v0 + 16, &type metadata for SetMuteEnabledTransportItem, &protocol witness table for SetMuteEnabledTransportItem, v5, v6);
}

uint64_t sub_23E5BDE2C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 32);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E57643C, 0, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t SecureCloudClient.setActivityDataVisible(setActivityDataVisibleTransportItem:)(uint64_t a1)
{
  *(v2 + 80) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  return MEMORY[0x2822009F8](sub_23E5BDFB8, 0, 0);
}

uint64_t sub_23E5BDFB8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(v6 + 32);

  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_23E5BE128;

  return (v11)(1159, v0 + 16, &type metadata for SetActivityDataVisibleTransportItem, &protocol witness table for SetActivityDataVisibleTransportItem, v5, v6);
}

uint64_t sub_23E5BE128()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 32);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E5760D0, 0, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t SecureCloudClient.removeFriend(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BE2A8, 0, 0);
}

uint64_t sub_23E5BE2A8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD9D8;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1157, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

uint64_t sub_23E5BE444()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E574BCC;

  return v8(1101, v2, v3);
}

uint64_t sub_23E5BE58C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E576440;

  return v8(1102, v2, v3);
}

uint64_t SecureCloudClient.sendInvitation(destination:callerIdentifier:serviceIdentifier:additionalServiceIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[15] = a7;
  v8[16] = v7;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a3;
  v8[12] = a4;
  v8[9] = a1;
  v8[10] = a2;
  return MEMORY[0x2822009F8](sub_23E5BE6E0, 0, 0);
}

uint64_t sub_23E5BE6E0()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v1[4];
  v15 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v15);
  v0[2] = v7;
  v0[3] = v8;
  v0[4] = v5;
  v0[5] = v6;
  v0[6] = v4;
  v0[7] = v3;
  v0[8] = v2;
  v10 = *(v9 + 32);

  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_23E5BE87C;

  return (v14)(1103, v0 + 2, &type metadata for InvitationRequestItem, &protocol witness table for InvitationRequestItem, v15, v9);
}

uint64_t sub_23E5BE87C()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[8];
  sub_23E5BE9DC(v3[2], v3[3]);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E5BE9C4, 0, 0);
  }

  else
  {
    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_23E5BE9DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t SecureCloudClient.pingDestination(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BEA64, 0, 0);
}

uint64_t sub_23E5BEA64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD9D8;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1150, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.upgradeFriend(friendIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BEBE4, 0, 0);
}

uint64_t sub_23E5BEBE4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD9D8;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1108, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.migrateFriend(friendIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BED64, 0, 0);
}

uint64_t sub_23E5BED64()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD9D8;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1110, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

uint64_t sub_23E5BEEE0()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346BF8, &qword_23E5CEE18);
  v8 = sub_23E5BF150();
  *v6 = v0;
  v6[1] = sub_23E5BF03C;

  return v10(v0 + 16, 1111, v7, v8, v2, v3);
}

uint64_t sub_23E5BF03C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_23E590504;
  }

  else
  {
    v3 = sub_23E592820;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

unint64_t sub_23E5BF150()
{
  result = qword_280C088F0;
  if (!qword_280C088F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E346BF8, &qword_23E5CEE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C088F0);
  }

  return result;
}

uint64_t SecureCloudClient.requestDowngrade(friendIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BF1F0, 0, 0);
}

uint64_t sub_23E5BF1F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD9D8;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1153, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.acknowledgeDowngradeRequest(friendIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BF370, 0, 0);
}

uint64_t sub_23E5BF370()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD9D8;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1156, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

uint64_t SecureCloudClient.repairFriend(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E5BF4F0, 0, 0);
}

uint64_t sub_23E5BF4F0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v0[2] = v3;
  v0[3] = v2;
  v6 = *(v5 + 32);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_23E5BD9D8;
  v9 = MEMORY[0x277D837D0];

  return (v11)(1160, v0 + 2, v9, &protocol witness table for String, v4, v5);
}

void __swiftcall InvitationRequestItem.init(destination:localCallerIdentifier:preferredServiceIdentifier:additionalServiceIdentifiers:)(ActivitySharingClient::InvitationRequestItem *__return_ptr retstr, Swift::String destination, Swift::String localCallerIdentifier, Swift::String preferredServiceIdentifier, Swift::OpaquePointer additionalServiceIdentifiers)
{
  retstr->destination = destination;
  retstr->localCallerIdentifier = localCallerIdentifier;
  retstr->preferredServiceIdentifier = preferredServiceIdentifier;
  retstr->additionalServiceIdentifiers = additionalServiceIdentifiers;
}

uint64_t InvitationRequestItem.destination.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InvitationRequestItem.localCallerIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InvitationRequestItem.preferredServiceIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

unint64_t sub_23E5BF6F8()
{
  v1 = 0x74616E6974736564;
  v2 = 0xD00000000000001CLL;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_23E5BF788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E5C0028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E5BF7BC(uint64_t a1)
{
  v2 = sub_23E5BFA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5BF7F8(uint64_t a1)
{
  v2 = sub_23E5BFA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitationRequestItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C00, &unk_23E5CEEC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v17 = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5BFA98();
  sub_23E5C9510();
  v27 = 0;
  v13 = v22;
  sub_23E5C93C0();
  if (!v13)
  {
    v14 = v17;
    v26 = 1;
    sub_23E5C93C0();
    v25 = 2;
    sub_23E5C93C0();
    v23 = v14;
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3464F0, &qword_23E5CBE80);
    sub_23E586C78(&qword_27E346520);
    sub_23E5C93E0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23E5BFA98()
{
  result = qword_27E346C08;
  if (!qword_27E346C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C08);
  }

  return result;
}

uint64_t InvitationRequestItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C10, &qword_23E5CEED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5BFA98();
  sub_23E5C9500();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = 0;
  v11 = sub_23E5C9380();
  v26 = v12;
  v30 = 1;
  v13 = sub_23E5C9380();
  v25 = v14;
  v23 = v13;
  v29 = 2;
  v22 = sub_23E5C9380();
  v24 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3464F0, &qword_23E5CBE80);
  v28 = 3;
  sub_23E586C78(&qword_27E3464F8);
  sub_23E5C93A0();
  (*(v6 + 8))(v9, v5);
  v18 = v26;
  v17 = v27;
  *a2 = v11;
  a2[1] = v18;
  v19 = v22;
  v21 = v24;
  v20 = v25;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v21;
  a2[6] = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
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

uint64_t sub_23E5BFE6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23E5BFEB4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23E5BFF24()
{
  result = qword_27E346C18;
  if (!qword_27E346C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C18);
  }

  return result;
}

unint64_t sub_23E5BFF7C()
{
  result = qword_27E346C20;
  if (!qword_27E346C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C20);
  }

  return result;
}

unint64_t sub_23E5BFFD4()
{
  result = qword_27E346C28;
  if (!qword_27E346C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C28);
  }

  return result;
}

uint64_t sub_23E5C0028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_23E5C9430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023E5D0C40 == a2 || (sub_23E5C9430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000023E5D0C60 == a2 || (sub_23E5C9430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000023E5D0C80 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23E5C9430();

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

uint64_t sub_23E5C0198@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_23E5C0204()
{
  result = qword_27E346C30;
  if (!qword_27E346C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C30);
  }

  return result;
}

unint64_t sub_23E5C025C()
{
  result = qword_27E346C38;
  if (!qword_27E346C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C38);
  }

  return result;
}

unint64_t sub_23E5C02B4()
{
  result = qword_27E346C40;
  if (!qword_27E346C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C40);
  }

  return result;
}

unint64_t sub_23E5C030C()
{
  result = qword_27E346C48;
  if (!qword_27E346C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C48);
  }

  return result;
}

BOOL sub_23E5C039C(void *a1, uint64_t *a2)
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

void *sub_23E5C03CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23E5C03F8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23E5C04D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for InvitationDestinationEndpointCapabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InvitationDestinationEndpointCapabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_23E5C05F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = 32;
    v19 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 16);
      v24[0] = *(a3 + v9);
      v24[1] = v10;
      v11 = *(a3 + v9 + 48);
      v25 = *(a3 + v9 + 32);
      v26 = v11;
      v27 = v24[0];
      v28 = v10;
      v29 = v25;
      v30 = v11;
      sub_23E57EA28(v24, &v20);
      v12 = v6(&v27);
      if (v3)
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        sub_23E587D58(&v20);

        goto LABEL_15;
      }

      if (v12)
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        result = swift_isUniquelyReferenced_nonNull_native();
        v31 = v8;
        if ((result & 1) == 0)
        {
          result = sub_23E58650C(0, *(v8 + 16) + 1, 1);
          v8 = v31;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_23E58650C((v13 > 1), v14 + 1, 1);
          v8 = v31;
        }

        *(v8 + 16) = v14 + 1;
        v15 = (v8 + (v14 << 6));
        v16 = v20;
        v17 = v21;
        v18 = v23;
        v15[4] = v22;
        v15[5] = v18;
        v15[2] = v16;
        v15[3] = v17;
        v6 = v19;
      }

      else
      {
        v20 = v27;
        v21 = v28;
        v22 = v29;
        v23 = v30;
        result = sub_23E587D58(&v20);
      }

      ++v7;
      v9 += 64;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_23E5C07A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_23E5C07CC, 0, 0);
}

uint64_t sub_23E5C07CC()
{
  v1 = v0[7];
  v2 = v1[2];
  v0[8] = v2;
  if (v2)
  {
    v3 = v0[5];
    v0[9] = MEMORY[0x277D84F90];
    v0[10] = 0;
    v4 = v1[5];
    v0[11] = v4;
    v0[2] = v1[4];
    v0[3] = v4;

    v11 = (v3 + *v3);
    v5 = v3[1];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_23E5C0940;
    v7 = v0[6];

    return (v11)(v0 + 4, v0 + 2);
  }

  else
  {
    v9 = v0[1];
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_23E5C0940()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);

    v5 = sub_23E5B9724;
  }

  else
  {
    v5 = sub_23E5C0A5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E5C0A5C()
{
  v1 = v0[4];
  result = v0[9];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = v0[9];
  if (result && (v7 = *(v6 + 24) >> 1, v7 >= v5))
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v4 <= v5)
    {
      v11 = v4 + v3;
    }

    else
    {
      v11 = v4;
    }

    result = sub_23E5C2BCC(result, v11, 1, v0[9]);
    v6 = result;
    v7 = *(result + 24) >> 1;
    if (*(v1 + 16))
    {
LABEL_5:
      if (v7 - *(v6 + 16) >= v3)
      {
        swift_arrayInitWithCopy();

        if (!v3)
        {
          goto LABEL_14;
        }

        v8 = *(v6 + 16);
        v9 = __OFADD__(v8, v3);
        v10 = v8 + v3;
        if (!v9)
        {
          *(v6 + 16) = v10;
          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return result;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  if (v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[8];

  if (v13 + 1 == v14)
  {
    v15 = v0[1];

    return v15(v6);
  }

  else
  {
    v16 = v0[10] + 1;
    v0[9] = v6;
    v0[10] = v16;
    v17 = v0[5];
    v18 = v0[7] + 16 * v16;
    v19 = *(v18 + 40);
    v0[11] = v19;
    v0[2] = *(v18 + 32);
    v0[3] = v19;

    v23 = (v17 + *v17);
    v20 = v17[1];
    v21 = swift_task_alloc();
    v0[12] = v21;
    *v21 = v0;
    v21[1] = sub_23E5C0940;
    v22 = v0[6];

    return (v23)(v0 + 4, v0 + 2);
  }
}

uint64_t sub_23E5C0CC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a3;
  v5 = *a2;
  v6 = a2[1];
  v4[9] = a4;
  v4[10] = v5;
  v4[11] = v6;
  return MEMORY[0x2822009F8](sub_23E5C0CEC, 0, 0);
}

uint64_t sub_23E5C0CEC()
{
  sub_23E5C6C54(v0[8], (v0 + 2));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_23E5C0D94;
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  return sub_23E5BB52C(v4, v2, v3);
}

uint64_t sub_23E5C0D94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_23E5C0F2C;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_23E5C0EBC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23E5C0EBC()
{
  v1 = v0[14];
  v2 = v0[7];
  sub_23E5C6CB8((v0 + 2));
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_23E5C0F2C()
{
  v24 = v0;
  sub_23E5C6CB8(v0 + 16);
  if (qword_280C088F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09108);

  v5 = v1;
  v6 = sub_23E5C8E90();
  v7 = sub_23E5C9160();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
    v22 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136315650;
    v14 = MEMORY[0x23EF0D250](v10, MEMORY[0x277D837D0]);
    v16 = sub_23E560AF0(v14, v15, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_23E560AF0(v9, v22, &v23);
    *(v11 + 22) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v18;
    *v12 = v18;
    _os_log_impl(&dword_23E55E000, v6, v7, "Failed to query destinations %s on service identifier %s, error: %@", v11, 0x20u);
    sub_23E586568(v12);
    MEMORY[0x23EF0DE00](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23EF0DE00](v13, -1, -1);
    MEMORY[0x23EF0DE00](v11, -1, -1);
  }

  v19 = *(v0 + 56);
  *v19 = MEMORY[0x277D84F90];
  v20 = *(v0 + 8);

  return v20();
}

char *sub_23E5C119C(uint64_t a1)
{
  v27 = a1;
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v7;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v4)) | (v7 << 6);
    v10 = (*(v27 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(*(v27 + 56) + 8 * v9);
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v24[2] = v13;
    v24[3] = v26;
    swift_bridgeObjectRetain_n();

    *&v32 = sub_23E5C05F0(sub_23E5C3B84, v24, v13);

    sub_23E5C40F8(&v32);
    v4 &= v4 - 1;

    if (*(v32 + 16))
    {
      v14 = *(v32 + 48);
      v28 = *(v32 + 32);
      v29 = v14;
      v15 = *(v32 + 80);
      v30 = *(v32 + 64);
      v31 = v15;
      sub_23E57EA28(&v28, &v32);

      v32 = v28;
      v33 = v29;
      v34 = v30;
      v35 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_23E5C2CD8(0, *(v25 + 2) + 1, 1, v25);
        v25 = isUniquelyReferenced_nonNull_native;
      }

      v17 = *(v25 + 2);
      v16 = *(v25 + 3);
      if (v17 >= v16 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_23E5C2CD8((v16 > 1), v17 + 1, 1, v25);
        v25 = isUniquelyReferenced_nonNull_native;
      }

      v18 = v25;
      *(v25 + 2) = v17 + 1;
      v19 = &v18[88 * v17];
      *(v19 + 4) = v11;
      *(v19 + 5) = v12;
      v20 = v32;
      v21 = v33;
      v22 = v35;
      *(v19 + 5) = v34;
      *(v19 + 6) = v22;
      *(v19 + 3) = v20;
      *(v19 + 4) = v21;
      *(v19 + 14) = v13;
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return v25;
    }

    v4 = *(v1 + 8 * v7);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_23E5C1410(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (qword_280C08900 != -1)
  {
    swift_once();
  }

  v6 = qword_280C09120;
  v7 = *(qword_280C09120 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  for (i = (qword_280C09120 + 40); ; i += 2)
  {
    v10 = *(i - 1) == v2 && *i == v3;
    if (v10 || (sub_23E5C9430() & 1) != 0)
    {
      break;
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  v11 = 0;
  for (j = (v6 + 40); ; j += 2)
  {
    v13 = *(j - 1) == v4 && *j == v5;
    if (v13 || (sub_23E5C9430() & 1) != 0)
    {
      break;
    }

    if (v7 == ++v11)
    {
      return 0;
    }
  }

  return v11 >= v8;
}

uint64_t sub_23E5C1528(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1[1];
  v53 = *a1;
  v54 = v4;
  v5 = a1[3];
  v55 = a1[2];
  v56 = v5;
  if (BYTE8(v55) != 1)
  {
    goto LABEL_38;
  }

  v7 = *(&v56 + 1);
  v6 = v56;
  if (__PAIR128__(0x800000023E5CFB50, 0xD00000000000002ELL) != v56)
  {
    v8 = a2;
    v9 = sub_23E5C9430();
    a2 = v8;
    v3 = v2;
    if ((v9 & 1) == 0)
    {
      v25 = *MEMORY[0x277CE9340];
      if (sub_23E5C8F40() == v56 && v26 == *(&v56 + 1))
      {
        goto LABEL_40;
      }

      v28 = sub_23E5C9430();

      if (v28)
      {
LABEL_28:
        v24 = 1;
        return v24 & 1;
      }

      v29 = *MEMORY[0x277CE9348];
      if (sub_23E5C8F40() == v56 && v30 == *(&v56 + 1))
      {
LABEL_40:

        v24 = 1;
        return v24 & 1;
      }

      v32 = sub_23E5C9430();

      if (v32)
      {
        goto LABEL_28;
      }

      if (qword_280C088F8 != -1)
      {
LABEL_43:
        swift_once();
      }

      v33 = sub_23E5C8EB0();
      __swift_project_value_buffer(v33, qword_280C09108);
      sub_23E57EA28(&v53, &v49);
      v34 = sub_23E5C8E90();
      v35 = sub_23E5C9160();
      sub_23E587D58(&v53);
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v57 = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_23E560AF0(v6, v7, &v57);
        *(v36 + 12) = 2080;
        v45 = v53;
        v46 = v54;
        v47 = v55;
        v48 = v56;
        sub_23E57EA28(&v53, &v49);
        v38 = InvitationDestination.description.getter();
        v40 = v39;
        v49 = v45;
        v50 = v46;
        v51 = v47;
        v52 = v48;
        sub_23E587D58(&v49);
        v41 = sub_23E560AF0(v38, v40, &v57);

        *(v36 + 14) = v41;
        _os_log_impl(&dword_23E55E000, v34, v35, "Unexpected service %s for %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EF0DE00](v37, -1, -1);
        MEMORY[0x23EF0DE00](v36, -1, -1);
      }

LABEL_38:
      v24 = 0;
      return v24 & 1;
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = a2 + 32;
    v6 = MEMORY[0x277D84F90];
    v44 = a2 + 32;
    do
    {
      v13 = (v12 + (v11 << 6));
      v7 = v11;
      while (1)
      {
        if (v7 >= v10)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v14 = v13[1];
        v49 = *v13;
        v50 = v14;
        v15 = v13[3];
        v51 = v13[2];
        v52 = v15;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_42;
        }

        v16 = v52 == 0xD00000000000002ELL && 0x800000023E5CFB50 == *(&v52 + 1);
        if (!v16 && (sub_23E5C9430() & 1) == 0)
        {
          break;
        }

        ++v7;
        v13 += 4;
        if (v11 == v10)
        {
          goto LABEL_22;
        }
      }

      sub_23E57EA28(&v49, &v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v6;
      v43 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23E58650C(0, *(v6 + 16) + 1, 1);
        v6 = v57;
      }

      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_23E58650C((v18 > 1), v19 + 1, 1);
        v6 = v57;
      }

      *(v6 + 16) = v19 + 1;
      v20 = (v6 + (v19 << 6));
      v21 = v49;
      v22 = v50;
      v23 = v52;
      v20[4] = v51;
      v20[5] = v23;
      v20[2] = v21;
      v20[3] = v22;
      v3 = v43;
      v12 = v44;
    }

    while (v11 != v10);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_22:
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v52 = v56;
  v24 = sub_23E5C1970(&v49, v6);

  return v24 & 1;
}

uint64_t sub_23E5C1970(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1[3];
  v47 = a1[2];
  v48 = v3;
  v4 = a1[1];
  v45 = *a1;
  v46 = v4;
  v5 = *(v47 + 16);
  v6 = (v47 + 32);
  v7 = v5 + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 5;
    if ((qword_2850DED38 & ~v8) != 0)
    {
      if (qword_280C088F8 != -1)
      {
        swift_once();
      }

      v9 = sub_23E5C8EB0();
      __swift_project_value_buffer(v9, qword_280C09108);
      sub_23E57EA28(&v45, &v41);
      v10 = sub_23E5C8E90();
      v11 = sub_23E5C9160();
      sub_23E587D58(&v45);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v36[0] = v13;
        *v12 = 136315138;
        v37 = v45;
        v38 = v46;
        v39 = v47;
        v40 = v48;
        sub_23E57EA28(&v45, &v41);
        v14 = InvitationDestination.description.getter();
        v16 = v15;
        v41 = v37;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        sub_23E587D58(&v41);
        v17 = sub_23E560AF0(v14, v16, v36);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_23E55E000, v10, v11, "Some endpoints on invitation destination are missing capabilities %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x23EF0DE00](v13, -1, -1);
        MEMORY[0x23EF0DE00](v12, -1, -1);
      }

      return 0;
    }
  }

  v18 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v41 = MEMORY[0x277D84F90];
    sub_23E58652C(0, v5, 0);
    v18 = v41;
    v19 = (v47 + 48);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      sub_23E561880(v20, *v19);
      *&v41 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_23E58652C((v22 > 1), v23 + 1, 1);
        v18 = v41;
      }

      v19 += 5;
      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      --v5;
    }

    while (v5);
    v2 = a2;
  }

  v25 = sub_23E5C6B64(v18);

  v26 = *(v2 + 16);
  if (!v26)
  {
LABEL_19:

    return 1;
  }

  v27 = (v2 + 32);
  while (1)
  {
    v28 = v27[1];
    v41 = *v27;
    v42 = v28;
    v29 = v27[3];
    v31 = *v27;
    v30 = v27[1];
    v43 = v27[2];
    v44 = v29;
    v37 = v31;
    v38 = v30;
    v32 = v27[3];
    v39 = v27[2];
    v40 = v32;
    sub_23E57EA28(&v41, v36);
    v33 = sub_23E5C1CC0(&v37, v25, &v45);
    v36[0] = v37;
    v36[1] = v38;
    v36[2] = v39;
    v36[3] = v40;
    sub_23E587D58(v36);
    if ((v33 & 1) == 0)
    {
      break;
    }

    v27 += 4;
    if (!--v26)
    {
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t sub_23E5C1CC0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1[3];
  v37 = a1[2];
  v38 = v5;
  v6 = a1[1];
  v35 = *a1;
  v36 = v6;
  v7 = *(v37 + 16);
  v8 = MEMORY[0x277D84F90];
  v39 = v37;
  if (v7)
  {
    v34[0] = MEMORY[0x277D84F90];
    sub_23E58652C(0, v7, 0);
    v8 = v34[0];
    v9 = (v37 + 48);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      sub_23E561880(v10, *v9);
      v34[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_23E58652C((v12 > 1), v13 + 1, 1);
        v8 = v34[0];
      }

      v9 += 5;
      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      --v7;
    }

    while (v7);
    v3 = a3;
  }

  v15 = sub_23E5C6B64(v8);

  v16 = sub_23E5C60B4(a2, v15);

  if ((v16 & 1) == 0)
  {
    if (qword_280C088F8 != -1)
    {
      swift_once();
    }

    v17 = sub_23E5C8EB0();
    __swift_project_value_buffer(v17, qword_280C09108);
    sub_23E57EA28(&v35, v34);
    v18 = sub_23E5C8E90();
    v19 = sub_23E5C9170();
    sub_23E587D58(&v35);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_23E560AF0(v36, *(&v36 + 1), v34);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_23E560AF0(v38, *(&v38 + 1), v34);
      _os_log_impl(&dword_23E55E000, v18, v19, "Invite service missing endpoints from %s - %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF0DE00](v21, -1, -1);
      MEMORY[0x23EF0DE00](v20, -1, -1);
    }

    sub_23E57EA28(&v35, v34);
    sub_23E57EA28(v3, v34);
    v22 = sub_23E5C8E90();
    v23 = sub_23E5C9170();
    sub_23E587D58(v3);
    sub_23E587D58(&v35);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34[0] = v25;
      *v24 = 136315394;
      v26 = MEMORY[0x23EF0D250](*(v3 + 32), &type metadata for InvitationDestinationEndpoint);
      v28 = sub_23E560AF0(v26, v27, v34);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = MEMORY[0x23EF0D250](v39, &type metadata for InvitationDestinationEndpoint);
      v31 = sub_23E560AF0(v29, v30, v34);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_23E55E000, v22, v23, "Invite service endpoints: %s, other endpoints: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF0DE00](v25, -1, -1);
      MEMORY[0x23EF0DE00](v24, -1, -1);
    }
  }

  return v16 & 1;
}

uint64_t InvitationDestinationService.fetchInvitationDestinationGroups(for:)(uint64_t a1)
{
  *(v2 + 368) = a1;
  *(v2 + 376) = v1;
  return MEMORY[0x2822009F8](sub_23E5C2090, 0, 0);
}

uint64_t sub_23E5C2090()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = sub_23E5C8EB0();
  __swift_project_value_buffer(v1, qword_280C09128);
  sub_23E560890(0xD00000000000007ALL, 0x800000023E5D0CA0, 0xD000000000000026, 0x800000023E5D0D20);
  if (qword_280C08900 != -1)
  {
    swift_once();
  }

  v2 = qword_280C09120;
  v6 = v0[23];
  sub_23E560890(0xD00000000000007ALL, 0x800000023E5D0CA0, 0xD000000000000033, 0x800000023E5D0D50);
  v3 = swift_task_alloc();
  v0[24].i64[0] = v3;
  v3[1] = vextq_s8(v6, v6, 8uLL);
  v4 = swift_task_alloc();
  v0[24].i64[1] = v4;
  *v4 = v0;
  v4[1] = sub_23E5C225C;

  return sub_23E5C07A8(&unk_23E5CF360, v3, v2);
}

void sub_23E5C225C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  v5 = *v2;
  *(*v2 + 400) = a1;

  if (v1)
  {
  }

  else
  {
    v6 = *(v3 + 384);

    MEMORY[0x2822009F8](sub_23E5C239C, 0, 0);
  }
}

void sub_23E5C239C()
{
  v1 = *(v0 + 400);
  v45 = *(v1 + 16);
  if (v45)
  {
    v2 = 0;
    v3 = MEMORY[0x277D84F98];
    v4 = (v1 + 32);
    v44 = *(v0 + 400);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      v7 = *v4;
      v8 = v4[1];
      v9 = v4[3];
      *(v0 + 144) = v4[2];
      *(v0 + 160) = v9;
      *(v0 + 112) = v7;
      *(v0 + 128) = v8;
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      if (!v3[2])
      {
        break;
      }

      sub_23E57EA28(v0 + 112, v0 + 176);

      v12 = sub_23E57C65C(v11, v10);
      v13 = MEMORY[0x277D84F90];
      if (v14)
      {
        v13 = *(v3[7] + 8 * v12);
LABEL_10:
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C50, &qword_23E5CF370);
      inited = swift_initStackObject();
      inited[1] = xmmword_23E5CA3C0;
      v16 = *(v0 + 160);
      v18 = *(v0 + 112);
      v17 = *(v0 + 128);
      inited[4] = *(v0 + 144);
      inited[5] = v16;
      inited[2] = v18;
      inited[3] = v17;
      v19 = *(v13 + 2);
      sub_23E57EA28(v0 + 112, v0 + 240);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v21 = *(v13 + 3) >> 1, v21 <= v19))
      {
        v13 = sub_23E5C2BCC(isUniquelyReferenced_nonNull_native, v19 + 1, 1, v13);
        v21 = *(v13 + 3) >> 1;
      }

      if (v21 <= *(v13 + 2))
      {
        goto LABEL_35;
      }

      v46 = v2;
      swift_arrayInitWithCopy();

      ++*(v13 + 2);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v23 = v10;
      v24 = v22;
      v25 = v11;
      v26 = v11;
      v27 = v23;
      v29 = sub_23E57C65C(v26, v23);
      v30 = v3[2];
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_36;
      }

      v33 = v28;
      if (v3[3] >= v32)
      {
        if (v24)
        {
          if (v28)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_23E57E868();
          if (v33)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_23E5C37BC(v32, v24, &qword_27E3463E8, &unk_23E5CF440);
        v34 = sub_23E57C65C(v25, v27);
        if ((v33 & 1) != (v35 & 1))
        {

          sub_23E5C9470();
          return;
        }

        v29 = v34;
        if (v33)
        {
LABEL_3:

          v5 = v3[7];
          v6 = *(v5 + 8 * v29);
          *(v5 + 8 * v29) = v13;

          sub_23E587D58(v0 + 112);
          goto LABEL_4;
        }
      }

      v3[(v29 >> 6) + 8] |= 1 << v29;
      v36 = (v3[6] + 16 * v29);
      *v36 = v25;
      v36[1] = v27;
      *(v3[7] + 8 * v29) = v13;
      sub_23E587D58(v0 + 112);
      v37 = v3[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_37;
      }

      v3[2] = v39;
LABEL_4:
      v2 = v46 + 1;
      v4 += 4;
      v1 = v44;
      if (v45 == v46 + 1)
      {
        v40 = *(v0 + 400);
        goto LABEL_28;
      }
    }

    sub_23E57EA28(v0 + 112, v0 + 304);
    v13 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v3 = MEMORY[0x277D84F98];
LABEL_28:
  v41 = *(v0 + 376);

  v42 = sub_23E5C119C(v3);

  v43 = *(v0 + 8);

  v43(v42);
}

uint64_t sub_23E5C2748(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD64;

  return sub_23E5C0CC0(a1, a2, v7, v6);
}

uint64_t sub_23E5C27FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E5AFA94;

  return InvitationDestinationService.fetchInvitationDestinationGroups(for:)(a1);
}

uint64_t sub_23E5C2890@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_23E5C8B50();
    if (v10)
    {
      v11 = sub_23E5C8B70();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_23E5C8B60();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_23E5C8B50();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_23E5C8B70();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_23E5C8B60();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

char *sub_23E5C2AC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466D0, &qword_23E5CA670);
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

char *sub_23E5C2BCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C50, &qword_23E5CF370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E5C2CD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C58, &qword_23E5CF420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E5C2E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C60, &qword_23E5CF428);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_23E5C2F04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346408, &unk_23E5CF470);
  result = sub_23E5C9350();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_23E5C94D0();
      MEMORY[0x23EF0D6D0](v21);
      result = sub_23E5C94F0();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23E5C31A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346400, &unk_23E5CB930);
  v40 = a2;
  result = sub_23E5C9350();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 6);
      if (v40)
      {
        v41 = *(v26 + 8);
        v43 = *v26;
        v44 = *(v26 + 16);
        v42 = *(v26 + 24);
        v46 = *(v26 + 40);
        v47 = *(v26 + 48);
        v45 = *(v26 + 56);
      }

      else
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v29 = *(v26 + 48);
        *&v49[16] = *(v26 + 32);
        v50 = v29;
        v48 = v27;
        *v49 = v28;
        v47 = v29;
        v46 = v49[24];
        v44 = v28;
        v45 = *(&v29 + 1);
        v42 = *&v49[8];
        v41 = *(&v27 + 1);
        v43 = v27;

        sub_23E57EA28(&v48, v51);
      }

      v30 = *(v8 + 40);
      sub_23E5C94D0();
      sub_23E5C8F80();
      result = sub_23E5C94F0();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v43;
      *(v18 + 8) = v41;
      *(v18 + 16) = v44;
      *(v18 + 24) = v42;
      *(v18 + 40) = v46;
      *(v18 + 48) = v47;
      *(v18 + 56) = v45;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23E5C34FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3463F0, &unk_23E5CB920);
  v40 = a2;
  result = sub_23E5C9350();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_23E5C94D0();
      sub_23E5C8F80();
      result = sub_23E5C94F0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23E5C37BC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_23E5C9350();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
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
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_23E5C94D0();
      sub_23E5C8F80();
      result = sub_23E5C94F0();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t dispatch thunk of InvitationDestinationServiceProtocol.fetchInvitationDestinationGroups(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23E594A1C;

  return v11(a1, a2, a3);
}

char *sub_23E5C3BA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466D0, &qword_23E5CA670);
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

char *sub_23E5C3CB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C80, &qword_23E5CF640);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_23E5C3DC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C78, &unk_23E5CF450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E5C3EE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C50, &qword_23E5CF370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E5C3FEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C70, &qword_23E5CF438);
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

uint64_t sub_23E5C40F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23E5C6B50(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23E5C4164(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23E5C4164(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E5C9400();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23E5C9080();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23E5C43FC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23E5C425C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23E5C425C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v7 = *a4;
    v8 = (*a4 + (a3 << 6));
    v9 = result - a3 + 1;
LABEL_4:
    v10 = v9;
    for (i = v8; ; i -= 4)
    {
      v12 = *i;
      v13 = i[1];
      v14 = i[3];
      v47[2] = i[2];
      v47[3] = v14;
      v47[0] = v12;
      v47[1] = v13;
      v15 = i[1];
      v43 = *i;
      v44 = v15;
      v16 = i[3];
      v45 = i[2];
      v46 = v16;
      v17 = *(i - 1);
      v19 = *(i - 4);
      v18 = *(i - 3);
      v48[2] = *(i - 2);
      v48[3] = v17;
      v48[0] = v19;
      v48[1] = v18;
      v20 = *(i - 3);
      v39 = *(i - 4);
      v40 = v20;
      v21 = *(i - 1);
      v41 = *(i - 2);
      v42 = v21;
      sub_23E57EA28(v47, &v35);
      sub_23E57EA28(v48, &v35);
      v22 = sub_23E5C1410(&v43, &v39);
      if (v4)
      {
        v31 = v39;
        v32 = v40;
        v33 = v41;
        v34 = v42;
        sub_23E587D58(&v31);
        v35 = v43;
        v36 = v44;
        v37 = v45;
        v38 = v46;
        return sub_23E587D58(&v35);
      }

      v23 = v22;
      v31 = v39;
      v32 = v40;
      v33 = v41;
      v34 = v42;
      sub_23E587D58(&v31);
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      result = sub_23E587D58(&v35);
      if (!v23)
      {
LABEL_3:
        ++v5;
        v8 += 4;
        --v9;
        if (v5 == a2)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v7)
      {
        break;
      }

      v24 = i - 4;
      v26 = i[2];
      v25 = i[3];
      v28 = *i;
      v27 = i[1];
      v29 = *(i - 3);
      *i = *(i - 4);
      i[1] = v29;
      v30 = *(i - 1);
      i[2] = *(i - 2);
      i[3] = v30;
      *v24 = v28;
      v24[1] = v27;
      v24[2] = v26;
      v24[3] = v25;
      if (!v10)
      {
        goto LABEL_3;
      }

      ++v10;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E5C43FC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v133 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_110:
    v7 = v5;
    v5 = *v133;
    if (*v133)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_140;
      }

      goto LABEL_112;
    }

    goto LABEL_149;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7 + 1;
    v135 = v7;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_18;
    }

    v10 = *a3;
    v11 = (*a3 + (v9 << 6));
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[3];
    v170 = v11[2];
    v171 = v14;
    v168 = v12;
    v169 = v13;
    v164 = *v11;
    v165 = v11[1];
    v166 = v11[2];
    v167 = v11[3];
    v15 = (v10 + (v7 << 6));
    v16 = v15[3];
    v18 = *v15;
    v17 = v15[1];
    v174 = v15[2];
    v175 = v16;
    v172 = v18;
    v173 = v17;
    v19 = v15[1];
    v160 = *v15;
    v161 = v19;
    v20 = v15[3];
    v162 = v15[2];
    v163 = v20;
    sub_23E57EA28(&v168, &v156);
    sub_23E57EA28(&v172, &v156);
    v21 = sub_23E5C1410(&v164, &v160);
    if (v5)
    {
      v152 = v160;
      v153 = v161;
      v154 = v162;
      v155 = v163;
      sub_23E587D58(&v152);
      v156 = v164;
      v157 = v165;
      v158 = v166;
      v159 = v167;
      sub_23E587D58(&v156);
    }

    v22 = v21;
    v152 = v160;
    v153 = v161;
    v154 = v162;
    v155 = v163;
    sub_23E587D58(&v152);
    v156 = v164;
    v157 = v165;
    v158 = v166;
    v159 = v167;
    result = sub_23E587D58(&v156);
    v23 = v7 + 2;
    if (v7 + 2 >= v6)
    {
      v7 += 2;
      if (!v22)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v24 = v15 + 8;
    while (1)
    {
      v7 = v23;
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[3];
      v150[2] = v24[2];
      v150[3] = v27;
      v150[0] = v25;
      v150[1] = v26;
      v28 = v24[1];
      v146 = *v24;
      v147 = v28;
      v29 = v24[3];
      v148 = v24[2];
      v149 = v29;
      v30 = *(v24 - 1);
      v32 = *(v24 - 4);
      v31 = *(v24 - 3);
      v151[2] = *(v24 - 2);
      v151[3] = v30;
      v151[0] = v32;
      v151[1] = v31;
      v33 = *(v24 - 3);
      v142 = *(v24 - 4);
      v143 = v33;
      v34 = *(v24 - 1);
      v144 = *(v24 - 2);
      v145 = v34;
      sub_23E57EA28(v150, v141);
      sub_23E57EA28(v151, v141);
      v35 = sub_23E5C1410(&v146, &v142);
      v140[0] = v142;
      v140[1] = v143;
      v140[2] = v144;
      v140[3] = v145;
      sub_23E587D58(v140);
      v141[0] = v146;
      v141[1] = v147;
      v141[2] = v148;
      v141[3] = v149;
      result = sub_23E587D58(v141);
      if ((v22 ^ v35))
      {
        break;
      }

      v23 = v7 + 1;
      v24 += 4;
      if (v6 == v7 + 1)
      {
        v9 = v7;
        v7 = v6;
        if (!v22)
        {
          goto LABEL_18;
        }

LABEL_16:
        v36 = v135;
        if (v7 >= v135)
        {
          if (v135 <= v9)
          {
            v113 = (v7 << 6) - 64;
            v114 = v135 << 6;
            v115 = v7;
            do
            {
              if (v36 != --v115)
              {
                v116 = *a3;
                if (!*a3)
                {
                  goto LABEL_147;
                }

                v117 = (v116 + v114);
                v118 = (v116 + v113);
                v120 = v117[2];
                v119 = v117[3];
                v122 = *v117;
                v121 = v117[1];
                v123 = v118[3];
                v125 = *v118;
                v124 = v118[1];
                v117[2] = v118[2];
                v117[3] = v123;
                *v117 = v125;
                v117[1] = v124;
                *v118 = v122;
                v118[1] = v121;
                v118[2] = v120;
                v118[3] = v119;
              }

              ++v36;
              v113 -= 64;
              v114 += 64;
            }

            while (v36 < v115);
          }

          goto LABEL_18;
        }

LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }
    }

    v9 = v7 - 1;
    if (v22)
    {
      goto LABEL_16;
    }

LABEL_18:
    v37 = a3[1];
    if (v7 < v37)
    {
      if (__OFSUB__(v7, v135))
      {
        goto LABEL_139;
      }

      if (v7 - v135 < a4)
      {
        v38 = v135 + a4;
        if (__OFADD__(v135, a4))
        {
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v38 >= v37)
        {
          v38 = a3[1];
        }

        if (v38 < v135)
        {
          goto LABEL_142;
        }

        if (v7 != v38)
        {
          v131 = v5;
          v137 = *a3;
          v134 = v38;
          do
          {
            v39 = v7;
            v138 = v7;
            while (1)
            {
              v40 = (v137 + (v39 << 6));
              v41 = v39 - 1;
              v42 = *v40;
              v43 = v40[1];
              v44 = v40[3];
              v170 = v40[2];
              v171 = v44;
              v168 = v42;
              v169 = v43;
              v45 = (v137 + ((v39 - 1) << 6));
              v46 = *v45;
              v47 = v45[1];
              v48 = v45[3];
              v174 = v45[2];
              v175 = v48;
              v172 = v46;
              v173 = v47;
              v49 = v171;
              sub_23E57EA28(&v168, &v164);
              sub_23E57EA28(&v172, &v164);
              if (qword_280C08900 != -1)
              {
                swift_once();
              }

              v50 = v8;
              v51 = *(qword_280C09120 + 16);
              if (!v51)
              {
                break;
              }

              v136 = v41;
              v52 = 0;
              v53 = (qword_280C09120 + 40);
              v54 = (qword_280C09120 + 40);
              while (1)
              {
                v55 = *(v54 - 1) == v49 && *v54 == *(&v49 + 1);
                if (v55 || (sub_23E5C9430() & 1) != 0)
                {
                  break;
                }

                ++v52;
                v54 += 2;
                if (v51 == v52)
                {
                  goto LABEL_51;
                }
              }

              v56 = 0;
              v57 = v175;
              while (1)
              {
                v58 = *(v53 - 1) == v57 && *v53 == *(&v57 + 1);
                if (v58 || (sub_23E5C9430() & 1) != 0)
                {
                  break;
                }

                ++v56;
                v53 += 2;
                if (v51 == v56)
                {
                  goto LABEL_51;
                }
              }

              sub_23E587D58(&v172);
              result = sub_23E587D58(&v168);
              v8 = v50;
              v59 = v138;
              if (v56 >= v52)
              {
                if (!v137)
                {
                  goto LABEL_145;
                }

                v61 = v40[2];
                v60 = v40[3];
                v63 = *v40;
                v62 = v40[1];
                v64 = v45[1];
                *v40 = *v45;
                v40[1] = v64;
                v65 = v45[3];
                v40[2] = v45[2];
                v40[3] = v65;
                *v45 = v63;
                v45[1] = v62;
                v45[2] = v61;
                v45[3] = v60;
                v39 = v136;
                if (v136 != v135)
                {
                  continue;
                }
              }

              goto LABEL_52;
            }

LABEL_51:
            sub_23E587D58(&v172);
            sub_23E587D58(&v168);
            v8 = v50;
            v59 = v138;
LABEL_52:
            v7 = v59 + 1;
          }

          while (v7 != v134);
          v7 = v134;
          v5 = v131;
        }
      }
    }

    if (v7 < v135)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E5C2E00(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v67 = *(v8 + 2);
    v66 = *(v8 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_23E5C2E00((v66 > 1), v67 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v68;
    v69 = &v8[16 * v67];
    *(v69 + 4) = v135;
    *(v69 + 5) = v7;
    v70 = *v133;
    if (!*v133)
    {
      goto LABEL_148;
    }

    if (v67)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_110;
    }
  }

  while (1)
  {
    v71 = v68 - 1;
    if (v68 >= 4)
    {
      v76 = &v8[16 * v68 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_125;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_126;
      }

      v83 = &v8[16 * v68];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_128;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_131;
      }

      if (v87 >= v79)
      {
        v105 = &v8[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_137;
        }

        if (v74 < v108)
        {
          v71 = v68 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

    if (v68 == 3)
    {
      v72 = *(v8 + 4);
      v73 = *(v8 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_74:
      if (v75)
      {
        goto LABEL_127;
      }

      v88 = &v8[16 * v68];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_130;
      }

      v94 = &v8[16 * v71 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_133;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_134;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          v71 = v68 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_88;
    }

    v98 = &v8[16 * v68];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_88:
    if (v93)
    {
      goto LABEL_129;
    }

    v101 = &v8[16 * v71];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_132;
    }

    if (v104 < v92)
    {
      goto LABEL_3;
    }

LABEL_95:
    v109 = v71 - 1;
    if (v71 - 1 >= v68)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_144;
    }

    v110 = *&v8[16 * v109 + 32];
    v111 = *&v8[16 * v71 + 40];
    sub_23E5C4CDC((*a3 + (v110 << 6)), (*a3 + (*&v8[16 * v71 + 32] << 6)), (*a3 + (v111 << 6)), v70);
    if (v5)
    {
    }

    if (v111 < v110)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_23E5C51A8(v8);
    }

    if (v109 >= *(v8 + 2))
    {
      goto LABEL_124;
    }

    v112 = &v8[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v176 = v8;
    result = sub_23E5C511C(v71);
    v8 = v176;
    v68 = *(v176 + 2);
    if (v68 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  result = sub_23E5C51A8(v8);
  v8 = result;
LABEL_112:
  v176 = v8;
  v126 = *(v8 + 2);
  if (v126 < 2)
  {
  }

  while (*a3)
  {
    v127 = v8;
    v8 = (v126 - 1);
    v128 = *&v127[16 * v126];
    v129 = *&v127[16 * v126 + 24];
    sub_23E5C4CDC((*a3 + (v128 << 6)), (*a3 + (*&v127[16 * v126 + 16] << 6)), (*a3 + (v129 << 6)), v5);
    if (v7)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_23E5C51A8(v127);
    }

    if (v126 - 2 >= *(v127 + 2))
    {
      goto LABEL_136;
    }

    v130 = &v127[16 * v126];
    *v130 = v128;
    *(v130 + 1) = v129;
    v176 = v127;
    result = sub_23E5C511C(v126 - 1);
    v8 = v176;
    v126 = *(v176 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_23E5C4CDC(char *__src, char *a2, char *a3, char *__dst)
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 63;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 6;
  v12 = a3 - a2;
  v13 = a3 - a2 + 63;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 6;
  if (v11 < v13 >> 6)
  {
    if (__dst != __src || &__src[64 * v11] <= __dst)
    {
      memmove(__dst, __src, v11 << 6);
    }

    v15 = v5 + (v11 << 6);
    if (v9 < 64)
    {
LABEL_10:
      v7 = v8;
LABEL_52:
      v55 = v15 - v5 + 63;
      if ((v15 - v5) >= 0)
      {
        v55 = v15 - v5;
      }

      goto LABEL_54;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v21 = *v7;
      v22 = *(v7 + 1);
      v23 = *(v7 + 3);
      v78 = *(v7 + 2);
      v79 = v23;
      v76 = v21;
      v77 = v22;
      v24 = *v7;
      v25 = *(v7 + 1);
      v26 = *(v7 + 3);
      v74 = *(v7 + 2);
      v75 = v26;
      v72 = v24;
      v73 = v25;
      v27 = *v5;
      v28 = *(v5 + 16);
      v29 = *(v5 + 48);
      v82 = *(v5 + 32);
      v83 = v29;
      v80 = v27;
      v81 = v28;
      v30 = *v5;
      v31 = *(v5 + 16);
      v32 = *(v5 + 48);
      v70 = *(v5 + 32);
      v71 = v32;
      v68 = v30;
      v69 = v31;
      sub_23E57EA28(&v76, &v64);
      sub_23E57EA28(&v80, &v64);
      v33 = sub_23E5C1410(&v72, &v68);
      if (v4)
      {
        v60 = v68;
        v61 = v69;
        v62 = v70;
        v63 = v71;
        sub_23E587D58(&v60);
        v64 = v72;
        v65 = v73;
        v66 = v74;
        v67 = v75;
        sub_23E587D58(&v64);
        v56 = v15 - v5 + 63;
        if ((v15 - v5) >= 0)
        {
          v56 = v15 - v5;
        }

        if (v8 < v5 || v8 >= v5 + (v56 & 0xFFFFFFFFFFFFFFC0) || v8 != v5)
        {
          v57 = v56 >> 6 << 6;
          v58 = v8;
          goto LABEL_58;
        }

        return 1;
      }

      v34 = v33;
      v60 = v68;
      v61 = v69;
      v62 = v70;
      v63 = v71;
      sub_23E587D58(&v60);
      v64 = v72;
      v65 = v73;
      v66 = v74;
      v67 = v75;
      sub_23E587D58(&v64);
      if (v34)
      {
        break;
      }

      v16 = v5;
      v17 = v8 == v5;
      v5 += 64;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 64;
      if (v5 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v7;
    v17 = v8 == v7;
    v7 += 64;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *v16;
    v19 = v16[1];
    v20 = v16[3];
    *(v8 + 2) = v16[2];
    *(v8 + 3) = v20;
    *v8 = v18;
    *(v8 + 1) = v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[64 * v14] <= __dst)
  {
    memmove(__dst, a2, v14 << 6);
  }

  v15 = v5 + (v14 << 6);
  if (v12 < 64 || v7 <= v8)
  {
    goto LABEL_52;
  }

  v35 = -v5;
  v84 = -v5;
LABEL_26:
  v36 = v7 - 64;
  v37 = v35 + v15;
  v6 -= 64;
  v38 = v15;
  while (1)
  {
    v15 = v38;
    v42 = *(v38 - 4);
    v43 = *(v38 - 3);
    v44 = *(v38 - 1);
    v78 = *(v38 - 2);
    v79 = v44;
    v76 = v42;
    v77 = v43;
    v45 = *(v38 - 4);
    v46 = *(v38 - 3);
    v47 = *(v38 - 1);
    v74 = *(v38 - 2);
    v75 = v47;
    v72 = v45;
    v73 = v46;
    v48 = *(v7 - 3);
    v80 = *v36;
    v81 = v48;
    v49 = *(v7 - 1);
    v82 = *(v7 - 2);
    v83 = v49;
    v68 = v80;
    v69 = v48;
    v70 = v82;
    v71 = v49;
    sub_23E57EA28(&v76, &v64);
    sub_23E57EA28(&v80, &v64);
    v50 = sub_23E5C1410(&v72, &v68);
    if (v4)
    {
      break;
    }

    v51 = v50;
    v60 = v68;
    v61 = v69;
    v62 = v70;
    v63 = v71;
    sub_23E587D58(&v60);
    v64 = v72;
    v65 = v73;
    v66 = v74;
    v67 = v75;
    sub_23E587D58(&v64);
    if (v51)
    {
      if (v6 + 64 < v7 || v6 >= v7 || v6 + 64 != v7)
      {
        v52 = *v36;
        v53 = *(v7 - 3);
        v54 = *(v7 - 1);
        *(v6 + 2) = *(v7 - 2);
        *(v6 + 3) = v54;
        *v6 = v52;
        *(v6 + 1) = v53;
      }

      v35 = v84;
      if (v15 <= v5 || (v7 -= 64, v36 <= v8))
      {
        v7 = v36;
        goto LABEL_52;
      }

      goto LABEL_26;
    }

    v38 = (v15 - 64);
    if ((v6 + 64) < v15 || v6 >= v15 || v6 + 64 != v15)
    {
      v39 = *v38;
      v40 = *(v15 - 48);
      v41 = *(v15 - 16);
      *(v6 + 2) = *(v15 - 32);
      *(v6 + 3) = v41;
      *v6 = v39;
      *(v6 + 1) = v40;
    }

    v37 -= 64;
    v6 -= 64;
    if (v38 <= v5)
    {
      v15 -= 64;
      goto LABEL_52;
    }
  }

  v60 = v68;
  v61 = v69;
  v62 = v70;
  v63 = v71;
  sub_23E587D58(&v60);
  v64 = v72;
  v65 = v73;
  v66 = v74;
  v67 = v75;
  sub_23E587D58(&v64);
  if (v37 >= 0)
  {
    v55 = v37;
  }

  else
  {
    v55 = v37 + 63;
  }

LABEL_54:
  if (v7 < v5 || v7 >= v5 + (v55 & 0xFFFFFFFFFFFFFFC0) || v7 != v5)
  {
    v57 = v55 >> 6 << 6;
    v58 = v7;
LABEL_58:
    memmove(v58, v5, v57);
  }

  return 1;
}

uint64_t sub_23E5C511C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23E5C51A8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23E5C51BC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_23E5C94D0();
  sub_23E5C8BC0();
  v8 = sub_23E5C94F0();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_62:
    v36 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v53 = *v43;
    sub_23E561880(a2, a3);
    sub_23E5C58A4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v43 = *v53;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
    goto LABEL_64;
  }

  v12 = ~v10;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v51 = v14;
  v15 = a3 >> 62;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v48 = v16;
  v47 = a3;
  v49 = v12;
  v50 = BYTE6(a3);
  v45 = v6 + 56;
  v46 = v6;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || v15 < 3;
      if (((v23 | v51) & 1) == 0)
      {
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v24 = 0;
      if (v15 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_66;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_67;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v50;
        if (v15)
        {
          v28 = HIDWORD(a2) - a2;
          if (v48)
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_65;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_61;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v53 = v19;
        *&v53[8] = v18;
        v53[10] = BYTE2(v18);
        v53[11] = BYTE3(v18);
        v53[12] = BYTE4(v18);
        v53[13] = BYTE5(v18);
        sub_23E561880(v19, v18);
        v12 = v49;
        goto LABEL_60;
      }

      if (v19 >> 32 < v19)
      {
        goto LABEL_68;
      }

      sub_23E561880(v19, v18);
      v33 = sub_23E5C8B50();
      if (v33)
      {
        v35 = sub_23E5C8B70();
        if (__OFSUB__(v19, v35))
        {
          goto LABEL_71;
        }

        v33 += v19 - v35;
      }

      goto LABEL_57;
    }

    if (v20 != 2)
    {
      break;
    }

    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    sub_23E561880(v19, v18);
    v33 = sub_23E5C8B50();
    if (v33)
    {
      v34 = sub_23E5C8B70();
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_70;
      }

      v33 += v32 - v34;
    }

    if (__OFSUB__(v31, v32))
    {
      goto LABEL_69;
    }

LABEL_57:
    sub_23E5C8B60();
    a3 = v47;
    sub_23E5C2890(v33, a2, v47, v53);
    sub_23E561230(v19, v18);
    v9 = v45;
    v6 = v46;
    v12 = v49;
    if (v53[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v53[6] = 0;
  *v53 = 0;
  sub_23E561880(v19, v18);
LABEL_60:
  sub_23E5C2890(v53, a2, a3, &v52);
  sub_23E561230(v19, v18);
  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_61:
  v39 = a2;
  v40 = a3;
LABEL_63:
  sub_23E561230(v39, v40);
  v41 = *(*(v6 + 48) + 16 * v11);
  *a1 = v41;
  sub_23E561880(v41, *(&v41 + 1));
  result = 0;
LABEL_64:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E5C5644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C68, &qword_23E5CF430);
  result = sub_23E5C92B0();
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
      sub_23E5C94D0();
      sub_23E5C8BC0();
      result = sub_23E5C94F0();
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

uint64_t sub_23E5C58A4(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v53 = *MEMORY[0x277D85DE8];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_23E5C5644(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_23E5C5D1C();
        goto LABEL_68;
      }

      sub_23E5C5E78(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    sub_23E5C94D0();
    sub_23E5C8BC0();
    result = sub_23E5C94F0();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v50 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v47 = v18;
      v46 = HIDWORD(v7) - v7;
      v48 = v14;
      v49 = BYTE6(a2);
      v43 = v7;
      v44 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v49;
          if (v17)
          {
            v27 = v46;
            if (v47)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_23E561880(v21, v20);
              v35 = sub_23E5C8B50();
              if (v35)
              {
                v36 = sub_23E5C8B70();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v52[6] = 0;
            *v52 = 0;
            sub_23E561880(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_23E561880(v21, v20);
              v35 = sub_23E5C8B50();
              if (v35)
              {
                v37 = sub_23E5C8B70();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_23E5C8B60();
              v7 = v43;
              a2 = v44;
              sub_23E5C2890(v35, v43, v44, v52);
              result = sub_23E561230(v21, v20);
              v12 = v10 + 56;
              v14 = v48;
              if (v52[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v52 = v21;
            *&v52[8] = v20;
            v52[10] = BYTE2(v20);
            v52[11] = BYTE3(v20);
            v52[12] = BYTE4(v20);
            v52[13] = BYTE5(v20);
            sub_23E561880(v21, v20);
            v14 = v48;
          }

          sub_23E5C2890(v52, v7, a2, &v51);
          result = sub_23E561230(v21, v20);
          if (v51)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v50) & 1) == 0)
      {
LABEL_67:
        result = sub_23E5C9460();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v45;
  *(*v45 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_23E5C5D1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C68, &qword_23E5CF430);
  v2 = *v0;
  v3 = sub_23E5C92A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_23E561880(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_23E5C5E78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C68, &qword_23E5CF430);
  result = sub_23E5C92B0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_23E5C94D0();
      sub_23E561880(v19, v20);
      sub_23E5C8BC0();
      result = sub_23E5C94F0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23E5C60B4(uint64_t a1, uint64_t a2)
{
  v115 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v3 = a1;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    v99 = v9;
    v100 = v3;
    v91 = v2;
    v87 = v8;
    v88 = v4;
    if (!v7)
    {
      goto LABEL_6;
    }

    while (*(v3 + 16))
    {
      v90 = v10;
      v12 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = v9;
      v14 = *v12;
      v15 = v12[1];
      v16 = *(v3 + 40);
      sub_23E5C94D0();
      sub_23E561880(v14, v15);
      sub_23E5C8BC0();
      v17 = sub_23E5C94F0();
      v18 = -1 << *(v3 + 32);
      v19 = v17 & ~v18;
      if (((*(v13 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {

        v83 = v14;
        v84 = v15;
LABEL_157:
        sub_23E561230(v83, v84);
        goto LABEL_158;
      }

      v89 = (v7 - 1) & v7;
      v20 = ~v18;
      v21 = v15 >> 62;
      if (v14)
      {
        v22 = 0;
      }

      else
      {
        v22 = v15 == 0xC000000000000000;
      }

      v23 = !v22;
      v102 = v23;
      v94 = HIDWORD(v14);
      v24 = __OFSUB__(HIDWORD(v14), v14);
      v98 = v24;
      v96 = v14;
      v97 = HIDWORD(v14) - v14;
      v103 = v15;
      __n = BYTE6(v15);
      v95 = v14;
      v92 = (v14 >> 32) - v14;
      v93 = v14 >> 32;
      v101 = v20;
      v9 = v13;
      while (1)
      {
        v25 = (*(v3 + 48) + 16 * v19);
        v27 = *v25;
        v26 = v25[1];
        v28 = v26 >> 62;
        if (v26 >> 62 == 3)
        {
          if (v27)
          {
            v29 = 0;
          }

          else
          {
            v29 = v26 == 0xC000000000000000;
          }

          v31 = !v29 || v21 < 3;
          if (((v31 | v102) & 1) == 0)
          {
            v81 = 0;
            v82 = 0xC000000000000000;
LABEL_152:
            sub_23E561230(v81, v82);
            v2 = v91;
            v8 = v87;
            v4 = v88;
            goto LABEL_153;
          }

LABEL_47:
          v32 = 0;
          if (v21 <= 1)
          {
            goto LABEL_44;
          }

          goto LABEL_48;
        }

        if (v28 > 1)
        {
          if (v28 != 2)
          {
            goto LABEL_47;
          }

          v34 = *(v27 + 16);
          v33 = *(v27 + 24);
          v35 = __OFSUB__(v33, v34);
          v32 = v33 - v34;
          if (v35)
          {
            goto LABEL_167;
          }

          if (v21 <= 1)
          {
            goto LABEL_44;
          }
        }

        else if (v28)
        {
          LODWORD(v32) = HIDWORD(v27) - v27;
          if (__OFSUB__(HIDWORD(v27), v27))
          {
            goto LABEL_166;
          }

          v32 = v32;
          if (v21 <= 1)
          {
LABEL_44:
            v36 = __n;
            if (v21)
            {
              v36 = v97;
              if (v98)
              {
                goto LABEL_165;
              }
            }

            goto LABEL_50;
          }
        }

        else
        {
          v32 = BYTE6(v26);
          if (v21 <= 1)
          {
            goto LABEL_44;
          }
        }

LABEL_48:
        if (v21 != 2)
        {
          if (!v32)
          {
            goto LABEL_151;
          }

          goto LABEL_24;
        }

        v38 = *(v14 + 16);
        v37 = *(v14 + 24);
        v35 = __OFSUB__(v37, v38);
        v36 = v37 - v38;
        if (v35)
        {
          goto LABEL_164;
        }

LABEL_50:
        if (v32 != v36)
        {
          goto LABEL_24;
        }

        if (v32 < 1)
        {
          goto LABEL_151;
        }

        if (v28 <= 1)
        {
          if (v28)
          {
            if (v27 > v27 >> 32)
            {
              goto LABEL_168;
            }

            sub_23E561880(v27, v26);
            v49 = sub_23E5C8B50();
            if (v49)
            {
              v50 = v49;
              v51 = sub_23E5C8B70();
              if (__OFSUB__(v27, v51))
              {
                goto LABEL_170;
              }

              v48 = (v27 - v51 + v50);
            }

            else
            {
              v48 = 0;
            }

            result = sub_23E5C8B60();
            v9 = v99;
            v3 = v100;
            if (v21 == 2)
            {
              v77 = *(v14 + 16);
              v76 = *(v14 + 24);
              v59 = sub_23E5C8B50();
              if (v59)
              {
                v78 = sub_23E5C8B70();
                if (__OFSUB__(v77, v78))
                {
                  goto LABEL_184;
                }

                v59 += v77 - v78;
              }

              v14 = v96;
              v35 = __OFSUB__(v76, v77);
              v79 = v76 - v77;
              if (v35)
              {
                goto LABEL_180;
              }

              result = sub_23E5C8B60();
              if (result >= v79)
              {
                v61 = v79;
              }

              else
              {
                v61 = result;
              }

              if (!v48)
              {
                goto LABEL_193;
              }

              v3 = v100;
              if (!v59)
              {
                goto LABEL_192;
              }
            }

            else
            {
              if (v21 != 1)
              {
                *__s1 = v14;
                __s1[2] = BYTE2(v14);
                __s1[3] = BYTE3(v14);
                __s1[4] = v94;
                __s1[5] = BYTE5(v14);
                __s1[6] = BYTE6(v14);
                __s1[7] = HIBYTE(v14);
                *&__s1[8] = v103;
                *&__s1[12] = WORD2(v103);
                if (!v48)
                {
                  goto LABEL_195;
                }

LABEL_150:
                v80 = memcmp(v48, __s1, __n);
                sub_23E561230(v27, v26);
                v20 = v101;
                if (!v80)
                {
                  goto LABEL_151;
                }

                goto LABEL_24;
              }

              if (v93 < v95)
              {
                goto LABEL_179;
              }

              v59 = sub_23E5C8B50();
              if (v59)
              {
                v62 = sub_23E5C8B70();
                if (__OFSUB__(v95, v62))
                {
                  goto LABEL_186;
                }

                v59 += v95 - v62;
              }

              v14 = v96;
              result = sub_23E5C8B60();
              v61 = v92;
              if (result < v92)
              {
                v61 = result;
              }

              if (!v48)
              {
                goto LABEL_197;
              }

              if (!v59)
              {
                goto LABEL_196;
              }
            }

            goto LABEL_145;
          }

          *__s1 = v27;
          *&__s1[8] = v26;
          __s1[10] = BYTE2(v26);
          __s1[11] = BYTE3(v26);
          __s1[12] = BYTE4(v26);
          __s1[13] = BYTE5(v26);
          if (!v21)
          {
LABEL_80:
            __s2 = v14;
            v106 = BYTE2(v14);
            v107 = BYTE3(v14);
            v108 = v94;
            v109 = BYTE5(v14);
            v110 = BYTE6(v14);
            v111 = HIBYTE(v14);
            v112 = v103;
            v113 = WORD2(v103);
            v58 = memcmp(__s1, &__s2, __n);
            v20 = v101;
            if (!v58)
            {
              goto LABEL_151;
            }

            goto LABEL_24;
          }

          if (v21 != 1)
          {
            v64 = *(v14 + 16);
            v63 = *(v14 + 24);
            sub_23E561880(v27, v26);
            v54 = sub_23E5C8B50();
            if (v54)
            {
              v65 = sub_23E5C8B70();
              if (__OFSUB__(v64, v65))
              {
                goto LABEL_181;
              }

              v54 += v64 - v65;
            }

            v14 = v96;
            v35 = __OFSUB__(v63, v64);
            v56 = v63 - v64;
            if (v35)
            {
              goto LABEL_174;
            }

            v57 = sub_23E5C8B60();
            if (!v54)
            {
              goto LABEL_187;
            }

LABEL_111:
            if (v57 >= v56)
            {
              v66 = v56;
            }

            else
            {
              v66 = v57;
            }

            v67 = memcmp(__s1, v54, v66);
            sub_23E561230(v27, v26);
            v3 = v100;
LABEL_147:
            v9 = v99;
            v20 = v101;
            if (!v67)
            {
              goto LABEL_151;
            }

            goto LABEL_24;
          }

          if (v93 < v95)
          {
            goto LABEL_172;
          }

          sub_23E561880(v27, v26);
          v39 = sub_23E5C8B50();
          if (!v39)
          {
            goto LABEL_191;
          }

          v40 = v39;
          v41 = sub_23E5C8B70();
          if (__OFSUB__(v95, v41))
          {
            goto LABEL_176;
          }

          v42 = (v95 - v41 + v40);
          result = sub_23E5C8B60();
          if (!v42)
          {
            goto LABEL_194;
          }

          goto LABEL_119;
        }

        if (v28 == 2)
        {
          break;
        }

        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v21)
        {
          goto LABEL_80;
        }

        if (v21 == 2)
        {
          v53 = *(v14 + 16);
          v52 = *(v14 + 24);
          sub_23E561880(v27, v26);
          v54 = sub_23E5C8B50();
          if (v54)
          {
            v55 = sub_23E5C8B70();
            if (__OFSUB__(v53, v55))
            {
              goto LABEL_182;
            }

            v54 += v53 - v55;
          }

          v14 = v96;
          v35 = __OFSUB__(v52, v53);
          v56 = v52 - v53;
          if (v35)
          {
            goto LABEL_175;
          }

          v57 = sub_23E5C8B60();
          if (!v54)
          {
            goto LABEL_190;
          }

          goto LABEL_111;
        }

        if (v93 < v95)
        {
          goto LABEL_171;
        }

        sub_23E561880(v27, v26);
        v68 = sub_23E5C8B50();
        if (!v68)
        {
          goto LABEL_188;
        }

        v69 = v68;
        v70 = sub_23E5C8B70();
        if (__OFSUB__(v95, v70))
        {
          goto LABEL_177;
        }

        v42 = (v95 - v70 + v69);
        result = sub_23E5C8B60();
        if (!v42)
        {
          goto LABEL_189;
        }

LABEL_119:
        if (result >= v92)
        {
          v71 = v92;
        }

        else
        {
          v71 = result;
        }

        v72 = memcmp(__s1, v42, v71);
        sub_23E561230(v27, v26);
        v3 = v100;
        v14 = v96;
        v20 = v101;
        if (!v72)
        {
LABEL_151:
          v81 = v14;
          v82 = v103;
          goto LABEL_152;
        }

LABEL_24:
        v19 = (v19 + 1) & v20;
        if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {

          v83 = v14;
          v84 = v103;
          goto LABEL_157;
        }
      }

      v44 = *(v27 + 16);
      sub_23E561880(v27, v26);
      v45 = sub_23E5C8B50();
      if (v45)
      {
        v46 = v45;
        v47 = sub_23E5C8B70();
        if (__OFSUB__(v44, v47))
        {
          goto LABEL_169;
        }

        v48 = (v44 - v47 + v46);
      }

      else
      {
        v48 = 0;
      }

      sub_23E5C8B60();
      v9 = v99;
      v3 = v100;
      if (v21 == 2)
      {
        v73 = *(v14 + 16);
        v86 = *(v14 + 24);
        v59 = sub_23E5C8B50();
        if (v59)
        {
          v74 = sub_23E5C8B70();
          if (__OFSUB__(v73, v74))
          {
            goto LABEL_183;
          }

          v59 += v73 - v74;
        }

        v14 = v96;
        v35 = __OFSUB__(v86, v73);
        v75 = v86 - v73;
        if (v35)
        {
          goto LABEL_178;
        }

        result = sub_23E5C8B60();
        if (result >= v75)
        {
          v61 = v75;
        }

        else
        {
          v61 = result;
        }

        if (!v48)
        {
          goto LABEL_201;
        }

        v3 = v100;
        if (!v59)
        {
          goto LABEL_200;
        }
      }

      else
      {
        if (v21 != 1)
        {
          *__s1 = v14;
          __s1[2] = BYTE2(v14);
          __s1[3] = BYTE3(v14);
          __s1[4] = v94;
          __s1[5] = BYTE5(v14);
          __s1[6] = BYTE6(v14);
          __s1[7] = HIBYTE(v14);
          *&__s1[8] = v103;
          *&__s1[12] = WORD2(v103);
          if (!v48)
          {
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            sub_23E5C8B60();
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            result = sub_23E5C8B60();
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
            return result;
          }

          goto LABEL_150;
        }

        if (v93 < v95)
        {
          goto LABEL_173;
        }

        v59 = sub_23E5C8B50();
        if (v59)
        {
          v60 = sub_23E5C8B70();
          if (__OFSUB__(v95, v60))
          {
            goto LABEL_185;
          }

          v59 += v95 - v60;
        }

        v14 = v96;
        result = sub_23E5C8B60();
        v61 = v92;
        if (result < v92)
        {
          v61 = result;
        }

        if (!v48)
        {
          goto LABEL_199;
        }

        if (!v59)
        {
          goto LABEL_198;
        }
      }

LABEL_145:
      if (v48 != v59)
      {
        v67 = memcmp(v48, v59, v61);
        sub_23E561230(v27, v26);
        goto LABEL_147;
      }

      sub_23E561230(v27, v26);
      sub_23E561230(v14, v103);
      v2 = v91;
      v8 = v87;
      v4 = v88;
      v9 = v99;
LABEL_153:
      v7 = v89;
      v10 = v90;
      if (v89)
      {
        continue;
      }

LABEL_6:
      while (2)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
        }

        if (v11 >= v8)
        {

          result = 1;
          goto LABEL_159;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (!v7)
        {
          continue;
        }

        break;
      }

      v10 = v11;
    }
  }

LABEL_158:
  result = 0;
LABEL_159:
  v85 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E5C6B64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23E5C6C00();
  result = MEMORY[0x23EF0D340](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_23E561880(v7, *v5);
      sub_23E5C51BC(v8, v7, v6);
      sub_23E561230(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_23E5C6C00()
{
  result = qword_280C08CE8;
  if (!qword_280C08CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C08CE8);
  }

  return result;
}

uint64_t sub_23E5C6C54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SecureCloudRepairMessage.MessageType.hashValue.getter()
{
  v1 = *v0;
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](v1);
  return sub_23E5C94F0();
}

uint64_t SecureCloudRepairMessage.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8C20();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudRepairMessage.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudRepairMessage() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for SecureCloudRepairMessage()
{
  result = qword_280C08C30;
  if (!qword_280C08C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SecureCloudRepairMessage.secureCloudShareItem.getter()
{
  v1 = *(v0 + *(type metadata accessor for SecureCloudRepairMessage() + 24));

  return v1;
}

uint64_t SecureCloudRepairMessage.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SecureCloudRepairMessage();
  *a1 = *(v1 + *(result + 28));
  return result;
}

int *SecureCloudRepairMessage.init(date:identifier:secureCloudShareItem:type:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = sub_23E5C8C20();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for SecureCloudRepairMessage();
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + result[6]) = a4;
  *(a7 + result[7]) = v13;
  *(a7 + result[8]) = a6;
  return result;
}

uint64_t SecureCloudRepairMessage.protobuf()()
{
  type metadata accessor for SecureCloudRepairMessageProtobuf();
  sub_23E5C7680(&qword_27E3462F8);
  return sub_23E5C8DF0();
}

uint64_t sub_23E5C7064(uint64_t a1, uint64_t a2)
{
  sub_23E5C8BE0();
  v5 = v4;
  v6 = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v7 = a1 + v6[5];
  *v7 = v5;
  *(v7 + 8) = 0;
  v8 = type metadata accessor for SecureCloudRepairMessage();
  v9 = (a2 + v8[5]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + v6[6]);
  v13 = v12[1];

  *v12 = v11;
  v12[1] = v10;
  v14 = [*(a2 + v8[6]) codableShareItem];
  if (!v14 || (v15 = v14, v16 = [v14 data], v15, !v16))
  {
    sub_23E56D8C8();
    swift_allocError();
    *v25 = 1;
    return swift_willThrow();
  }

  v17 = sub_23E5C8BB0();
  v19 = v18;

  v20 = a1 + v6[7];
  result = sub_23E56121C(*v20, *(v20 + 8));
  *v20 = v17;
  *(v20 + 8) = v19;
  v22 = *(a2 + v8[8]);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v22))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v23 = a1 + v6[9];
  *v23 = v22;
  *(v23 + 4) = 0;
  v24 = a1 + v6[8];
  *v24 = (*(a2 + v8[7]) & 1) != 0;
  *(v24 + 8) = 1;
  return result;
}

int *SecureCloudRepairMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v38 = sub_23E5C8C20();
  v37 = *(v38 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v8 = a1 + v7[5];
  v9 = *v8;
  *(v8 + 8);
  sub_23E5C8BD0();
  v10 = (a1 + v7[6]);
  v11 = v10[1];
  v35 = v2;
  if (v11)
  {
    v33 = *v10;
    v36 = v11;
  }

  else
  {
    v33 = 0;
    v36 = 0xE000000000000000;
  }

  v12 = (a1 + v7[9]);
  if (*(v12 + 4))
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12;
  }

  v32 = v13;
  v14 = (a1 + v7[7]);
  v16 = *v14;
  v15 = v14[1];
  if (v15 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = *v14;
  }

  if (v15 >> 60 == 15)
  {
    v18 = 0xC000000000000000;
  }

  else
  {
    v18 = v14[1];
  }

  v19 = objc_allocWithZone(MEMORY[0x277CE90C0]);

  sub_23E562570(v16, v15);
  v20 = sub_23E5C8BA0();
  sub_23E561230(v17, v18);
  v21 = [v19 initWithData_];

  if (!v21)
  {
    goto LABEL_18;
  }

  v22 = [objc_opt_self() shareItemWithCodableShareItem_];
  if (!v22)
  {

LABEL_18:

    sub_23E56D8C8();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
LABEL_19:
    sub_23E5C7564(a1);
    return (*(v37 + 8))(v6, v38);
  }

  v23 = v22;
  v24 = a1 + v7[8];
  if (*(v24 + 9))
  {
    goto LABEL_16;
  }

  if ((*(v24 + 8) & 1) == 0)
  {

    sub_23E56D8C8();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();

    goto LABEL_19;
  }

  if (*v24)
  {
    sub_23E5C7564(a1);

    v25 = 1;
    goto LABEL_23;
  }

LABEL_16:

  sub_23E5C7564(a1);
  v25 = 0;
LABEL_23:
  v28 = v34;
  (*(v37 + 32))(v34, v6, v38);
  result = type metadata accessor for SecureCloudRepairMessage();
  v29 = (v28 + result[5]);
  v30 = v36;
  *v29 = v33;
  v29[1] = v30;
  *(v28 + result[6]) = v23;
  *(v28 + result[7]) = v25;
  *(v28 + result[8]) = v32;
  return result;
}

uint64_t sub_23E5C7564(uint64_t a1)
{
  v2 = type metadata accessor for SecureCloudRepairMessageProtobuf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E5C75C4()
{
  result = qword_27E346C88;
  if (!qword_27E346C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346C88);
  }

  return result;
}

uint64_t sub_23E5C7680(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SecureCloudRepairMessageProtobuf();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E5C76C4()
{
  type metadata accessor for SecureCloudRepairMessageProtobuf();
  sub_23E5C7680(&qword_27E3462F8);
  return sub_23E5C8DF0();
}

unint64_t sub_23E5C7798()
{
  result = sub_23E5C8C20();
  if (v1 <= 0x3F)
  {
    result = sub_23E56DBFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E5C7884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23E5C78CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t CodableObjectArray.value.getter(uint64_t a1)
{
  v3 = *v1;
  sub_23E593770(0, &unk_280C088B0, 0x277CBEA60);
  v4 = *(a1 + 16);
  sub_23E5C90B0();
  v5 = v3;
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return sub_23E5C9070();
  }
}

BOOL sub_23E5C79D8()
{
  v0 = sub_23E5C9370();

  return v0 != 0;
}

uint64_t sub_23E5C7A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5C7A94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_23E5C7B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5C7B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_23E5C7BE0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23E5C79D8();
  *a2 = result;
  return result;
}

BOOL sub_23E5C7C14@<W0>(_BYTE *a1@<X8>)
{
  result = sub_23E5C79D8();
  *a1 = result;
  return result;
}

uint64_t sub_23E5C7C40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23E5C7C94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableObject.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_23E5629F0(a1, a2, type metadata accessor for CodableObject.CodingKeys);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CodableObject.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v39[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for CodableObject.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_23E5C93B0();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5C9500();
  if (!v3)
  {
    v35 = a2;
    sub_23E568DB8();
    sub_23E5C93A0();
    v11 = v39[0];
    v12 = v39[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C80, &qword_23E5CF640);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_23E5CA3C0;
    v14 = v35;
    *(v13 + 56) = swift_getMetatypeMetadata();
    *(v13 + 32) = v14;
    sub_23E593770(0, &qword_280C088C0, 0x277CBEB98);
    v15 = MEMORY[0x23EF0D3D0](v13);
    v39[0] = 0;
    sub_23E5C9130();
    if (v39[0])
    {
      v33 = v15;
      v16 = v11;
      v17 = objc_opt_self();
      v18 = v12;
      v19 = sub_23E5C9120();

      v34 = v18;
      v20 = sub_23E5C8BA0();
      v39[0] = 0;
      v21 = [v17 _strictlyUnarchivedObjectOfClasses_fromData_error_];

      if (v21)
      {
        v22 = v39[0];
        sub_23E5C9260();
        swift_unknownObjectRelease();
        v23 = swift_dynamicCast();
        v24 = v37;
        if (v23)
        {
          (*(v37 + 8))(v9, v6);

          sub_23E561230(v16, v34);
          *v36 = v38;
        }

        else
        {
          sub_23E5B25B4();
          swift_allocError();
          *v31 = 1;
          swift_willThrow();

          sub_23E561230(v16, v34);
          (*(v24 + 8))(v9, v6);
        }

        goto LABEL_11;
      }

      v28 = v39[0];
      sub_23E5C8B90();

      swift_willThrow();
      v26 = v16;
      v27 = v34;
    }

    else
    {
      sub_23E5B25B4();
      swift_allocError();
      *v25 = 3;
      swift_willThrow();

      v26 = v11;
      v27 = v12;
    }

    sub_23E561230(v26, v27);
    (*(v37 + 8))(v9, v6);
  }

LABEL_11:
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_23E5C8198()
{
  v0 = sub_23E5C9370();

  return v0 != 0;
}

uint64_t sub_23E5C8214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5C8288(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_23E5C82F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_23E5C8364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_23E5C83D4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23E5C8198();
  *a2 = result;
  return result;
}

BOOL sub_23E5C8408@<W0>(_BYTE *a1@<X8>)
{
  result = sub_23E5C8198();
  *a1 = result;
  return result;
}

uint64_t sub_23E5C8434(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23E5C8488(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t CodableObjectArray.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v37 = a3;
  v39[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for CodableObjectArray.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_23E5C93B0();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5C9500();
  if (!v3)
  {
    v36 = a1;
    sub_23E568DB8();
    sub_23E5C93A0();
    v14 = v39[0];
    v15 = v39[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346C80, &qword_23E5CF640);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_23E5CB3D0;
    v17 = sub_23E593770(0, &unk_280C088B0, 0x277CBEA60);
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E346C90, &qword_23E5CF648);
    *(v16 + 32) = v17;
    *(v16 + 88) = swift_getMetatypeMetadata();
    *(v16 + 64) = a2;
    sub_23E593770(0, &qword_280C088C0, 0x277CBEB98);
    v18 = MEMORY[0x23EF0D3D0](v16);
    v39[0] = 0;
    sub_23E5C9130();
    if (v39[0])
    {
      v34 = v18;
      v35 = v6;
      v19 = objc_opt_self();
      v20 = v15;
      v21 = sub_23E5C9120();

      v22 = sub_23E5C8BA0();
      v39[0] = 0;
      v23 = [v19 _strictlyUnarchivedObjectOfClasses_fromData_error_];

      if (v23)
      {
        v32 = v14;
        v33 = v20;
        v24 = v39[0];
        sub_23E5C9260();
        swift_unknownObjectRelease();
        sub_23E5C90B0();
        if (swift_dynamicCast())
        {
          v25 = sub_23E5C9040();

          sub_23E561230(v32, v33);
          (*(v38 + 8))(v9, v35);
          v11 = v36;
          *v37 = v25;
          goto LABEL_6;
        }

        sub_23E5B25B4();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();

        v28 = v32;
        v29 = v33;
      }

      else
      {
        v27 = v39[0];
        sub_23E5C8B90();

        swift_willThrow();
        v28 = v14;
        v29 = v20;
      }

      sub_23E561230(v28, v29);
      (*(v38 + 8))(v9, v35);
    }

    else
    {
      sub_23E5B25B4();
      swift_allocError();
      *v26 = 3;
      swift_willThrow();

      sub_23E561230(v14, v15);
      (*(v38 + 8))(v9, v6);
    }

    a1 = v36;
  }

  v11 = a1;
LABEL_6:
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23E5C8998()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23E5C89EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}
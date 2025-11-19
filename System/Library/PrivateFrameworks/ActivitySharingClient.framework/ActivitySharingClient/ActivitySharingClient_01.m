uint64_t sub_23E576394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23E5763DC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t SecureCloudUpgradeMessageProtobuf.date.setter(double a1)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for SecureCloudUpgradeMessageProtobuf()
{
  result = qword_27E3463B8;
  if (!qword_27E3463B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudUpgradeMessageProtobuf.upgradeToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SecureCloudUpgradeMessageProtobuf.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SecureCloudUpgradeMessageProtobuf.version.setter(int a1)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t SecureCloudUpgradeMessageProtobuf.secureCloudShareItem.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 32);
  result = sub_23E56121C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SecureCloudUpgradeMessageProtobuf.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v5 = v1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

double SecureCloudUpgradeMessageProtobuf.date.getter()
{
  v1 = v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t SecureCloudUpgradeMessageProtobuf.upgradeToken.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 24));
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

uint64_t SecureCloudUpgradeMessageProtobuf.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 28));
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

uint64_t SecureCloudUpgradeMessageProtobuf.version.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SecureCloudUpgradeMessageProtobuf.secureCloudShareItem.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 32));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_23E562570(*v1, v2);
  return v3;
}

uint64_t SecureCloudUpgradeMessageProtobuf.type.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v4 = (v1 + *(result + 36));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t (*SecureCloudUpgradeMessageProtobuf.date.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 20);
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

Swift::Void __swiftcall SecureCloudUpgradeMessageProtobuf.clearDate()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_23E5768B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 24));
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

uint64_t sub_23E57691C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudUpgradeMessageProtobuf.upgradeToken.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 24);
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

Swift::Void __swiftcall SecureCloudUpgradeMessageProtobuf.clearUpgradeToken()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_23E576A88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 28));
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

uint64_t sub_23E576AEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudUpgradeMessageProtobuf.identifier.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 28);
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

Swift::Void __swiftcall SecureCloudUpgradeMessageProtobuf.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_23E576C58(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 32));
  v5 = *v4;
  v6 = v4[1];
  sub_23E561880(v2, v3);
  result = sub_23E56121C(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*SecureCloudUpgradeMessageProtobuf.secureCloudShareItem.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 32);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_23E562570(v5, v6);
  return sub_23E576D30;
}

uint64_t sub_23E576D30(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16) + *(a1 + 24);
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  if (a2)
  {
    sub_23E561880(*a1, v2);
    sub_23E56121C(v5, v6);
    *v3 = v4;
    *(v3 + 8) = v2;

    return sub_23E561230(v4, v2);
  }

  else
  {
    result = sub_23E56121C(*v3, *(v3 + 8));
    *v3 = v4;
    *(v3 + 8) = v2;
  }

  return result;
}

Swift::Void __swiftcall SecureCloudUpgradeMessageProtobuf.clearSecureCloudShareItem()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 32);
  sub_23E56121C(*v1, *(v1 + 8));
  *v1 = xmmword_23E5CA6B0;
}

uint64_t (*SecureCloudUpgradeMessageProtobuf.type.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return sub_23E576EBC;
}

uint64_t sub_23E576EBC(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall SecureCloudUpgradeMessageProtobuf.clearType()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 36);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t (*SecureCloudUpgradeMessageProtobuf.version.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_23E56A734;
}

Swift::Void __swiftcall SecureCloudUpgradeMessageProtobuf.clearVersion()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t SecureCloudUpgradeMessageProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudUpgradeMessageProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t SecureCloudUpgradeMessageProtobuf.MessageType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t SecureCloudUpgradeMessageProtobuf.MessageType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_23E57714C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_23E577164()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_23E577180@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_23E57719C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_23E5771BC()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_23E5C94D0();
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

uint64_t sub_23E577228(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E577BB4();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_23E577274()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_23E5C94D0();
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

BOOL sub_23E5772DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

double SecureCloudUpgradeMessageProtobuf.init()@<D0>(uint64_t a1@<X8>)
{
  sub_23E5C8CC0();
  v2 = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a1 + v2[8]) = xmmword_23E5CA6B0;
  v7 = a1 + v2[9];
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = a1 + v2[10];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t static SecureCloudUpgradeMessageProtobuf.MessageType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27E346340 = a1;
}

uint64_t sub_23E577498@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27E346340;
}

uint64_t sub_23E577504()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E346348);
  __swift_project_value_buffer(v0, qword_27E346348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23E5CB3C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 3;
  *v4 = "date";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_23E5C8E60();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 4;
  *v8 = "upgradeToken";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 5;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "secureCloudShareItem";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "version";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  return sub_23E5C8E70();
}

uint64_t SecureCloudUpgradeMessageProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23E5C8D30();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 5)
    {
      switch(result)
      {
        case 6:
          v6 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 32);
          sub_23E5C8D50();
          break;
        case 7:
          sub_23E577968();
          break;
        case 8:
          v5 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 40);
          sub_23E5C8D80();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 20);
          sub_23E5C8D60();
          break;
        case 4:
          v7 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 24);
LABEL_16:
          v0 = 0;
          sub_23E5C8D70();
          break;
        case 5:
          v4 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 28);
          goto LABEL_16;
      }
    }
  }
}

uint64_t sub_23E577968()
{
  v0 = *(type metadata accessor for SecureCloudUpgradeMessageProtobuf() + 36);
  sub_23E577BB4();
  return sub_23E5C8D40();
}

uint64_t SecureCloudUpgradeMessageProtobuf.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_23E5C8E20(), !v1))
  {
    v6 = (v0 + v2[6]);
    if (!v6[1] || (v7 = *v6, result = sub_23E5C8E30(), !v1))
    {
      v8 = (v0 + v2[7]);
      if (!v8[1] || (v9 = *v8, result = sub_23E5C8E30(), !v1))
      {
        v10 = v1;
        v11 = v0 + v2[8];
        v12 = *(v11 + 8);
        if (v12 >> 60 != 15)
        {
          v13 = *v11;
          sub_23E561880(*v11, *(v11 + 8));
          sub_23E5C8E10();
          result = sub_23E56121C(v13, v12);
          if (v1)
          {
            return result;
          }

          v10 = 0;
        }

        v14 = (v0 + v2[9]);
        if (*(v14 + 9))
        {
          v15 = v10;
        }

        else
        {
          v18 = *v14;
          v19 = v14[1] & 1;
          sub_23E577BB4();
          v15 = v10;
          result = sub_23E5C8E00();
          if (v10)
          {
            return result;
          }
        }

        v16 = (v0 + v2[10]);
        if (v16[1])
        {
          return sub_23E5C8CB0();
        }

        v17 = *v16;
        result = sub_23E5C8E40();
        if (!v15)
        {
          return sub_23E5C8CB0();
        }
      }
    }
  }

  return result;
}

unint64_t sub_23E577BB4()
{
  result = qword_27E346378;
  if (!qword_27E346378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346378);
  }

  return result;
}

uint64_t SecureCloudUpgradeMessageProtobuf.hashValue.getter()
{
  sub_23E5C94D0();
  type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  sub_23E578A1C(&qword_27E346380, type metadata accessor for SecureCloudUpgradeMessageProtobuf);
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

double sub_23E577C94@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23E5C8CC0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  result = 0.0;
  *(a2 + v7) = xmmword_23E5CA6B0;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 256;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  return result;
}

uint64_t sub_23E577D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E578A1C(&qword_27E3463D8, type metadata accessor for SecureCloudUpgradeMessageProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23E577DFC(uint64_t a1)
{
  v2 = sub_23E578A1C(&qword_27E346278, type metadata accessor for SecureCloudUpgradeMessageProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23E577E68()
{
  sub_23E578A1C(&qword_27E346278, type metadata accessor for SecureCloudUpgradeMessageProtobuf);

  return sub_23E5C8DE0();
}

uint64_t sub_23E577EE8()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E346360);
  __swift_project_value_buffer(v0, qword_27E346360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CB3D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23E5C8E60();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23E5C8E70();
}

uint64_t sub_23E5780D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23E5C8E80();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_23E578190@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23E5C8E80();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t _s21ActivitySharingClient33SecureCloudUpgradeMessageProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudUpgradeMessageProtobuf();
  v5 = v4[5];
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

  v10 = v4[6];
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

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v4;
      v17 = sub_23E5C9430();
      v4 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v4;
      v25 = sub_23E5C9430();
      v4 = v24;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v26 = v4[8];
  v28 = *(a1 + v26);
  v27 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v31 = *v29;
  v30 = v29[1];
  if (v27 >> 60 == 15)
  {
    if (v30 >> 60 == 15)
    {
      v32 = v4;
      sub_23E562570(v28, v27);
      sub_23E562570(v31, v30);
      sub_23E56121C(v28, v27);
      v33 = v32;
      goto LABEL_32;
    }

LABEL_29:
    sub_23E562570(v28, v27);
    sub_23E562570(v31, v30);
    sub_23E56121C(v28, v27);
    sub_23E56121C(v31, v30);
    return 0;
  }

  if (v30 >> 60 == 15)
  {
    goto LABEL_29;
  }

  v35 = v4;
  sub_23E562570(v28, v27);
  sub_23E562570(v31, v30);
  v36 = sub_23E59FB18(v28, v27, v31, v30);
  sub_23E56121C(v31, v30);
  sub_23E56121C(v28, v27);
  v33 = v35;
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v37 = v33[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 9);
  v40 = (a2 + v37);
  v41 = *(v40 + 9);
  if (v39)
  {
    if ((*(v40 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v40 + 9))
    {
      return 0;
    }

    v47 = *v38;
    v48 = *(v38 + 8);
    v49 = *v40;
    v50 = *(v40 + 8);
    v51 = v47 != 0;
    if ((v48 & 1) == 0)
    {
      v51 = v47;
    }

    if (v50)
    {
      if (v49)
      {
        if (v51 != 1)
        {
          return 0;
        }
      }

      else if (v51)
      {
        return 0;
      }
    }

    else if (v51 != v49)
    {
      return 0;
    }
  }

  v42 = v33[10];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 4);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 4);
  if (v44)
  {
    if (v46)
    {
      goto LABEL_47;
    }

    return 0;
  }

  if (*v43 != *v45)
  {
    LOBYTE(v46) = 1;
  }

  if (v46)
  {
    return 0;
  }

LABEL_47:
  sub_23E5C8CD0();
  sub_23E578A1C(&qword_27E346150, MEMORY[0x277D216C8]);
  return sub_23E5C8F20() & 1;
}

unint64_t sub_23E57853C()
{
  result = qword_27E346388;
  if (!qword_27E346388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346388);
  }

  return result;
}

unint64_t sub_23E578594()
{
  result = qword_27E346390;
  if (!qword_27E346390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346390);
  }

  return result;
}

unint64_t sub_23E5785EC()
{
  result = qword_27E346398;
  if (!qword_27E346398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346398);
  }

  return result;
}

unint64_t sub_23E578644()
{
  result = qword_27E3463A0;
  if (!qword_27E3463A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3463A8, &qword_23E5CB4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3463A0);
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

void sub_23E578838()
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
        sub_23E56BB90(319, &qword_27E3463C8);
        if (v3 <= 0x3F)
        {
          sub_23E56BB90(319, &qword_27E3463D0);
          if (v4 <= 0x3F)
          {
            sub_23E56BB90(319, &qword_27E346260);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureCloudUpgradeMessageProtobuf.MessageType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SecureCloudUpgradeMessageProtobuf.MessageType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_23E5789D0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E5789EC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_23E578A1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TransportDispatchService.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t TransportDispatchService.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_23E578AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_23E578AF8, v3, 0);
}

uint64_t sub_23E578AF8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CB710;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_23E571874(&unk_23E5CB170, v6, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v11;
  swift_endAccess();

  v9 = v0[1];

  return v9();
}

uint64_t sub_23E578C2C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23E55FD60;

  return v8();
}

uint64_t sub_23E578D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_23E578D3C, v5, 0);
}

uint64_t sub_23E578D3C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CB738;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_23E571874(&unk_23E5CB740, v6, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v11;
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23E578E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v8 = sub_23E5C9210();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E578F48, 0, 0);
}

uint64_t sub_23E578F48()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v2 + 16);
  sub_23E562570(v5, v4);
  v6(v5, v4, v3, v2);
  v12 = (v0[4] + *v0[4]);
  v7 = *(v0[4] + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_23E5790E8;
  v9 = v0[10];
  v10 = v0[5];

  return v12(v9);
}

uint64_t sub_23E5790E8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_23E57927C;
  }

  else
  {
    v3 = sub_23E5791FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5791FC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23E57927C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[12];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23E5792F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_23E579320, v5, 0);
}

uint64_t sub_23E579320()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CB758;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_23E571874(&unk_23E5CB760, v6, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v11;
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23E579460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v9 = sub_23E5C9210();
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = *(a6 - 8);
  v7[11] = v12;
  v13 = *(v12 + 64) + 15;
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E579580, 0, 0);
}

uint64_t sub_23E579580()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(v2 + 16);
  sub_23E562570(v5, v4);
  v6(v5, v4, v3, v2);
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[6];
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    (*(v0[9] + 8))(v7, v0[8]);
    sub_23E56D8C8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    v11 = v0[12];
    v12 = v0[10];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[4];
    (*(v8 + 32))(v0[12], v7, v9);
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[13] = v17;
    *v17 = v0;
    v17[1] = sub_23E5797C0;
    v18 = v0[12];
    v19 = v0[5];

    return v20(v18);
  }
}

uint64_t sub_23E5797C0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_23E579960;
  }

  else
  {
    v3 = sub_23E5798D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5798D4()
{
  v1 = v0[10];
  (*(v0[11] + 8))(v0[12], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_23E579960()
{
  (*(v0[11] + 8))(v0[12], v0[6]);
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23E5799E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_23E579A10, v5, 0);
}

uint64_t sub_23E579A10()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CB778;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_23E571874(&unk_23E5CB780, v6, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v11;
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23E579B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  v10 = sub_23E5C9210();
  *(v7 + 88) = v10;
  v11 = *(v10 - 8);
  *(v7 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  v13 = *(a6 - 8);
  *(v7 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = *a3;
  *(v7 + 33) = *(a3 + 16);

  return MEMORY[0x2822009F8](sub_23E579C84, 0, 0);
}

uint64_t sub_23E579C84()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v2 + 16);
  sub_23E562570(v5, v4);
  v6(v5, v4, v3, v2);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 72);
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    (*(*(v0 + 96) + 8))(v7, *(v0 + 88));
    sub_23E56D8C8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
LABEL_8:
    v25 = *(v0 + 120);
    v26 = *(v0 + 104);

    v27 = *(v0 + 8);

    return v27();
  }

  v11 = *(v0 + 33);
  (*(v8 + 32))(*(v0 + 120), v7, v9);
  if (v11 == 255)
  {
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 72);
    sub_23E56D8C8();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    (*(v22 + 8))(v21, v23);
    goto LABEL_8;
  }

  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 56);
  *(v0 + 16) = v12;
  *(v0 + 24) = v13;
  v15 = *(v0 + 33) & 1;
  *(v0 + 32) = v15;
  sub_23E57EA84(v12, v13, v15);
  v28 = (v14 + *v14);
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  *v17 = v0;
  v17[1] = sub_23E579F48;
  v18 = *(v0 + 120);
  v19 = *(v0 + 64);

  return v28(v18, v0 + 16);
}

uint64_t sub_23E579F48()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_23E57A100;
  }

  else
  {
    v3 = sub_23E57A05C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E57A05C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 72);
  sub_23E57EA94(*(v0 + 128), *(v0 + 136), *(v0 + 33));
  (*(v2 + 8))(v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23E57A100()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 33);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 72));
  sub_23E57EA94(v1, v2, v3);
  v4 = *(v0 + 152);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23E57A1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_23E57A1D0, v5, 0);
}

uint64_t sub_23E57A1D0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CB798;
  *(v6 + 24) = v5;
  swift_beginAccess();

  v7 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_23E571874(&unk_23E5CB7A8, v6, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v11;
  swift_endAccess();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23E57A310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a1;
  v10 = sub_23E5C9210();
  v8[5] = v10;
  v11 = *(v10 - 8);
  v8[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v8[7] = v13;
  v17 = (a5 + *a5);
  v14 = a5[1];
  v15 = swift_task_alloc();
  v8[8] = v15;
  *v15 = v8;
  v15[1] = sub_23E55FAB8;

  return v17(v13);
}

uint64_t sub_23E57A478()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_23E57A4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  return MEMORY[0x2822009F8](sub_23E57A508, v7, 0);
}

uint64_t sub_23E57A508()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  v6 = *(v0 + 80);
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_23E5CB7C0;
  *(v7 + 24) = v5;
  swift_beginAccess();

  v8 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_23E571874(&unk_23E5CB7C8, v7, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v12;
  swift_endAccess();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23E57A648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v17;
  v8[10] = v18;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = sub_23E5C9210();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  v12 = sub_23E5C9210();
  v8[14] = v12;
  v13 = *(v12 - 8);
  v8[15] = v13;
  v14 = *(v13 + 64) + 15;
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E57A788, 0, 0);
}

uint64_t sub_23E57A788()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v2 + 16);
  sub_23E562570(v5, v4);
  v6(v5, v4, v3, v2);
  v13 = (v0[5] + *v0[5]);
  v7 = *(v0[5] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_23E57A93C;
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[6];

  return v13(v10, v9);
}

uint64_t sub_23E57A93C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_23E57ABD8;
  }

  else
  {
    v3 = sub_23E57AA50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E57AA50()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  if (v4 == 1)
  {
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[2];
    (*(v6 + 8))(v0[16], v0[14]);
    (*(v9 + 8))(v1, v8);
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
  }

  else
  {
    v11 = v0[10];
    v12 = v0[2];
    v12[3] = v2;
    v12[4] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
    (*(v6 + 8))(v5, v7);
  }

  v14 = v0[16];
  v15 = v0[13];

  v16 = v0[1];

  return v16();
}

uint64_t sub_23E57ABD8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_23E57AC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = a7;
  v8[12] = v7;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  return MEMORY[0x2822009F8](sub_23E57AC8C, v7, 0);
}

uint64_t sub_23E57AC8C()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = swift_allocObject();
  v6 = *(v0 + 80);
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v6;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = &unk_23E5CB7E0;
  *(v7 + 24) = v5;
  swift_beginAccess();

  v8 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_23E571874(&unk_23E5CB7E8, v7, v4, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v12;
  swift_endAccess();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23E57ADCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v20;
  v8[10] = v21;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v10 = sub_23E5C9210();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v13 = sub_23E5C9210();
  v8[14] = v13;
  v14 = *(v13 - 8);
  v8[15] = v14;
  v15 = *(v14 + 64) + 15;
  v8[16] = swift_task_alloc();
  v16 = *(a7 - 8);
  v8[17] = v16;
  v17 = *(v16 + 64) + 15;
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E57AF5C, 0, 0);
}

uint64_t sub_23E57AF5C()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v2 + 16);
  sub_23E562570(v5, v4);
  v6(v5, v4, v3, v2);
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[7];
  if ((*(v8 + 48))(v7, 1, v9) == 1)
  {
    (*(v0[15] + 8))(v7, v0[14]);
    sub_23E56D8C8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    v11 = v0[18];
    v12 = v0[16];
    v13 = v0[13];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[5];
    (*(v8 + 32))(v0[18], v7, v9);
    v22 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_23E57B1B0;
    v19 = v0[18];
    v20 = v0[13];
    v21 = v0[6];

    return v22(v20, v19);
  }
}

uint64_t sub_23E57B1B0()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_23E57B450;
  }

  else
  {
    v3 = sub_23E57B2C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E57B2C4()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[17];
  v5 = v0[18];
  if (v4 == 1)
  {
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[2];
    (*(v6 + 8))(v0[18], v0[7]);
    (*(v8 + 8))(v1, v7);
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
  }

  else
  {
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[2];
    v12[3] = v2;
    v12[4] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
    (*(v6 + 8))(v5, v11);
  }

  v14 = v0[18];
  v15 = v0[16];
  v16 = v0[13];

  v17 = v0[1];

  return v17();
}

uint64_t sub_23E57B450()
{
  (*(v0[17] + 8))(v0[18], v0[7]);
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E57B4EC(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  *(v4 + 40) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 48) = v9;
  *v9 = v4;
  v9[1] = sub_23E57B608;

  return v11(v5, v6, v4 + 16);
}

uint64_t sub_23E57B608()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_23E576448;
  }

  else
  {
    v3 = sub_23E57B71C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E57B71C()
{
  v1 = *(v0 + 40);
  *(v1 + 24) = &type metadata for VoidTransportSerializable;
  *(v1 + 32) = &off_2850E2580;
  return (*(v0 + 8))();
}

uint64_t sub_23E57B74C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E55FD60;

  return sub_23E57B4EC(a1, a2, a3, v9);
}

uint64_t sub_23E57B810(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v7 = *a2;
  v8 = a2[1];
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E55FD64;

  return v12(a1, v7, v8, a3);
}

uint64_t sub_23E57B928(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 112);
  v5 = sub_23E57C5F0(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(v2 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E57D178();
    }

    v11 = *(*(v10 + 56) + 16 * v7 + 8);

    sub_23E57C718(v7, v10);
    *(v2 + 112) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_23E57B9D8(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *(v2 + 32) = -1;
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_23E57BA98;

  return sub_23E57C360(a1, 0, 0xF000000000000000, v2 + 16);
}

uint64_t sub_23E57BA98(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = *(v6 + 40);

    return MEMORY[0x2822009F8](sub_23E576448, v9, 0);
  }

  else
  {
    sub_23E56121C(a1, a2);
    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_23E57BC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(v4 + 32) = -1;
  v8 = swift_task_alloc();
  *(v4 + 48) = v8;
  *v8 = v4;
  v8[1] = sub_23E57BA98;

  return sub_23E57C360(a1, a2, a3, v4 + 16);
}

uint64_t sub_23E57BCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = v4;
  v9 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v9;
  v10 = swift_task_alloc();
  *(v5 + 48) = v10;
  *v10 = v5;
  v10[1] = sub_23E57BDA0;

  return sub_23E57C360(a1, a2, a3, v5 + 16);
}

uint64_t sub_23E57BDA0(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = *(v6 + 40);

    return MEMORY[0x2822009F8](sub_23E575364, v9, 0);
  }

  else
  {
    sub_23E56121C(a1, a2);
    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_23E57BF08(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  *(v2 + 32) = -1;
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = sub_23E57BFC8;

  return sub_23E57C360(a1, 0, 0xF000000000000000, v2 + 16);
}

uint64_t sub_23E57BFC8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = *(v6 + 40);

    return MEMORY[0x2822009F8](sub_23E576448, v9, 0);
  }

  else
  {
    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_23E57C12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  *(v4 + 32) = -1;
  v8 = swift_task_alloc();
  *(v4 + 48) = v8;
  *v8 = v4;
  v8[1] = sub_23E57C1FC;

  return sub_23E57C360(a1, a2, a3, v4 + 16);
}

uint64_t sub_23E57C1FC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = *(v6 + 40);

    return MEMORY[0x2822009F8](sub_23E575364, v9, 0);
  }

  else
  {
    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_23E57C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 136) = a3;
  *(v5 + 144) = v4;
  *(v5 + 120) = a1;
  *(v5 + 128) = a2;
  *(v5 + 152) = *a4;
  *(v5 + 97) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_23E57C394, v4, 0);
}

uint64_t sub_23E57C394()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_23E57C5F0(*(v0 + 120)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 97);
    v6 = *(v2 + 56) + 16 * v3;
    v8 = *v6;
    v7 = *(v6 + 8);
    *(v0 + 80) = *(v0 + 152);
    *(v0 + 168) = v7;
    *(v0 + 96) = v5;
    *(v0 + 104) = *(v0 + 128);

    v14 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_23E55FE58;

    return v14(v0 + 16, v0 + 104, v0 + 80);
  }

  else
  {
    sub_23E56D8C8();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t TransportDispatchService.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TransportDispatchService.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_23E57C5F0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](a1);
  v4 = sub_23E5C94F0();

  return sub_23E57CF90(a1, v4);
}

unint64_t sub_23E57C65C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23E5C94D0();
  sub_23E5C8F80();
  v6 = sub_23E5C94F0();

  return sub_23E57CFFC(a1, a2, v6);
}

unint64_t sub_23E57C6D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23E5C91F0();

  return sub_23E57D0B4(a1, v5);
}

uint64_t sub_23E57C718(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E5C9280() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_23E5C94D0();
      MEMORY[0x23EF0D6D0](v10);
      result = sub_23E5C94F0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t sub_23E57C8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_23E55FD60;

  return sub_23E578E7C(a1, a2, a3, v11, v10, v8, v9);
}

uint64_t sub_23E57C980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_23E55FD60;

  return sub_23E579460(a1, a2, a3, v11, v10, v8, v9);
}

uint64_t sub_23E57CA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v11 = v3[4];
  v10 = v3[5];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_23E55FD60;

  return sub_23E579B50(a1, a2, a3, v11, v10, v8, v9);
}

uint64_t sub_23E57CB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_23E55FD60;

  return sub_23E57A310(a1, a2, a3, a4, v13, v12, v10, v11);
}

uint64_t sub_23E57CC08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E55FD60;

  return sub_23E57B810(a1, a2, a3, v9);
}

uint64_t sub_23E57CCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v12 = v4[4];
  v11 = v4[5];
  v14 = v4[6];
  v13 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_23E55FD60;

  return sub_23E57A648(a1, a2, a3, a4, v14, v13, v9, v10);
}

uint64_t sub_23E57CDCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E55FD64;

  return sub_23E57B810(a1, a2, a3, v9);
}

uint64_t sub_23E57CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[2];
  v10 = v4[3];
  v12 = v4[4];
  v11 = v4[5];
  v14 = v4[6];
  v13 = v4[7];
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_23E55FD60;

  return sub_23E57ADCC(a1, a2, a3, a4, v14, v13, v9, v10);
}

unint64_t sub_23E57CF90(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_23E57CFFC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23E5C9430())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23E57D0B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_23E57E9DC();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23E5C9200();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_23E57D178()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346408, &unk_23E5CF470);
  v2 = *v0;
  v3 = sub_23E5C9340();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

uint64_t sub_23E57D2DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3463E0, &qword_23E5CB820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of TransportDispatchService.register(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E55FD60;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of TransportDispatchService.register<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 136);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_23E55FD60;

  return v16(a1, a2, a3, a4, a5);
}

{
  v12 = *(*v5 + 144);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_23E55FD60;

  return v16(a1, a2, a3, a4, a5);
}

{
  v12 = *(*v5 + 152);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_23E55FD60;

  return v16(a1, a2, a3, a4, a5);
}

{
  v12 = *(*v5 + 160);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_23E55FD60;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TransportDispatchService.register<A, B>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 168);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_23E55FD64;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

{
  v16 = *(*v7 + 176);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_23E55FD60;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of TransportDispatchService.dispatchMessage(_:)(uint64_t a1)
{
  v4 = *(*v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E55FD60;

  return v8(a1);
}

uint64_t dispatch thunk of TransportDispatchService.dispatchMessage(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 216);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E55FD60;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of TransportDispatchService.dispatchMessage(_:data:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 224);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23E55FD60;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TransportDispatchService.dispatchRequest(_:)(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E57EABC;

  return v8(a1);
}

uint64_t dispatch thunk of TransportDispatchService.dispatchRequest(_:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 240);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E57E2F0;

  return v12(a1, a2, a3);
}

uint64_t sub_23E57E2F0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of TransportDispatchService.dispatchRequest(_:data:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 248);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23E57EABC;

  return v14(a1, a2, a3, a4);
}

void *sub_23E57E550()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346400, &unk_23E5CB930);
  v2 = *v0;
  v3 = sub_23E5C9340();
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_23E57EA28(&v32, &v31);
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

void *sub_23E57E6F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3463F0, &unk_23E5CB920);
  v2 = *v0;
  v3 = sub_23E5C9340();
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

void *sub_23E57E87C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23E5C9340();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

unint64_t sub_23E57E9DC()
{
  result = qword_280C088A0;
  if (!qword_280C088A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C088A0);
  }

  return result;
}

id sub_23E57EA84(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_23E57EA94(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_23E57EAAC(a1, a2, a3 & 1);
  }
}

void sub_23E57EAAC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double SecureCloudInviteUserInfoProtobuf.init()@<D0>(uint64_t a1@<X8>)
{
  sub_23E5C8CC0();
  v2 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  result = 0.0;
  *(a1 + v2[5]) = xmmword_23E5CA6B0;
  *(a1 + v2[6]) = xmmword_23E5CA6B0;
  *(a1 + v2[7]) = xmmword_23E5CA6B0;
  v4 = (a1 + v2[8]);
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t type metadata accessor for SecureCloudInviteUserInfoProtobuf()
{
  result = qword_27E346438;
  if (!qword_27E346438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudInviteUserInfoProtobuf.activityDataPreview.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 20);
  result = sub_23E56121C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SecureCloudInviteUserInfoProtobuf.legacyShareLocations.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 28);
  result = sub_23E56121C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SecureCloudInviteUserInfoProtobuf.secureCloudShareItem.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 24);
  result = sub_23E56121C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SecureCloudInviteUserInfoProtobuf.cloudKitAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SecureCloudInviteUserInfoProtobuf.cloudKitAddress.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 32));
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

uint64_t SecureCloudInviteUserInfoProtobuf.activityDataPreview.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 20));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_23E562570(*v1, v2);
  return v3;
}

uint64_t SecureCloudInviteUserInfoProtobuf.legacyShareLocations.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 28));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_23E562570(*v1, v2);
  return v3;
}

uint64_t SecureCloudInviteUserInfoProtobuf.secureCloudShareItem.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 24));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_23E562570(*v1, v2);
  return v3;
}

uint64_t sub_23E57EDC8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_23E561880(v2, v3);
  result = sub_23E56121C(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*SecureCloudInviteUserInfoProtobuf.activityDataPreview.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_23E562570(v5, v6);
  return sub_23E5802E8;
}

Swift::Void __swiftcall SecureCloudInviteUserInfoProtobuf.clearActivityDataPreview()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 20);
  sub_23E56121C(*v1, *(v1 + 8));
  *v1 = xmmword_23E5CA6B0;
}

uint64_t sub_23E57EF14(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 24));
  v5 = *v4;
  v6 = v4[1];
  sub_23E561880(v2, v3);
  result = sub_23E56121C(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*SecureCloudInviteUserInfoProtobuf.secureCloudShareItem.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 24);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_23E562570(v5, v6);
  return sub_23E57EFEC;
}

Swift::Void __swiftcall SecureCloudInviteUserInfoProtobuf.clearSecureCloudShareItem()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 24);
  sub_23E56121C(*v1, *(v1 + 8));
  *v1 = xmmword_23E5CA6B0;
}

uint64_t sub_23E57F064(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 28));
  v5 = *v4;
  v6 = v4[1];
  sub_23E561880(v2, v3);
  result = sub_23E56121C(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t (*SecureCloudInviteUserInfoProtobuf.legacyShareLocations.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_23E562570(v5, v6);
  return sub_23E5802E8;
}

Swift::Void __swiftcall SecureCloudInviteUserInfoProtobuf.clearLegacyShareLocations()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 28);
  sub_23E56121C(*v1, *(v1 + 8));
  *v1 = xmmword_23E5CA6B0;
}

uint64_t sub_23E57F1B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 32));
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

uint64_t sub_23E57F214(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudInviteUserInfoProtobuf.cloudKitAddress.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 32);
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

Swift::Void __swiftcall SecureCloudInviteUserInfoProtobuf.clearCloudKitAddress()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SecureCloudInviteUserInfoProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudInviteUserInfoProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_23E57F48C()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E346410);
  __swift_project_value_buffer(v0, qword_27E346410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CB940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activityDataPreview";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23E5C8E60();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "secureCloudShareItem";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "legacyShareLocations";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cloudKitAddress";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_23E5C8E70();
}

uint64_t static SecureCloudInviteUserInfoProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E3460D8 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E346410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SecureCloudInviteUserInfoProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23E5C8D30();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        v1 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 28);
        goto LABEL_3;
      }

      if (result == 5)
      {
        v5 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 32);
        sub_23E5C8D70();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 20);
LABEL_3:
      v0 = 0;
      sub_23E5C8D50();
    }

    else if (result == 3)
    {
      v4 = *(type metadata accessor for SecureCloudInviteUserInfoProtobuf() + 24);
      goto LABEL_3;
    }
  }
}

uint64_t SecureCloudInviteUserInfoProtobuf.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v4 = v0 + v3[5];
  v5 = *(v4 + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    sub_23E561880(*v4, *(v4 + 8));
    sub_23E5C8E10();
    result = sub_23E56121C(v6, v5);
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  v8 = v0 + v3[6];
  v9 = *(v8 + 8);
  if (v9 >> 60 != 15)
  {
    v10 = *v8;
    sub_23E561880(*v8, *(v8 + 8));
    sub_23E5C8E10();
    result = sub_23E56121C(v10, v9);
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  v11 = v0 + v3[7];
  v12 = *(v11 + 8);
  if (v12 >> 60 == 15)
  {
    v13 = v2;
  }

  else
  {
    v14 = *v11;
    sub_23E561880(*v11, *(v11 + 8));
    v13 = v2;
    sub_23E5C8E10();
    result = sub_23E56121C(v14, v12);
    if (v2)
    {
      return result;
    }
  }

  v15 = (v0 + v3[8]);
  if (!v15[1])
  {
    return sub_23E5C8CB0();
  }

  v16 = *v15;
  result = sub_23E5C8E30();
  if (!v13)
  {
    return sub_23E5C8CB0();
  }

  return result;
}

uint64_t SecureCloudInviteUserInfoProtobuf.hashValue.getter()
{
  sub_23E5C94D0();
  type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  sub_23E5802A0(&qword_27E346428, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

double sub_23E57FAC4@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23E5C8CC0();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_23E5CA6B0;
  *(a2 + v5) = xmmword_23E5CA6B0;
  v6 = a1[8];
  *(a2 + a1[7]) = xmmword_23E5CA6B0;
  v7 = (a2 + v6);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_23E57FB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E5802A0(&qword_27E346448, type metadata accessor for SecureCloudInviteUserInfoProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23E57FBD8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E3460D8 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8E80();
  v3 = __swift_project_value_buffer(v2, qword_27E346410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_23E57FC80(uint64_t a1)
{
  v2 = sub_23E5802A0(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23E57FCEC()
{
  sub_23E5802A0(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);

  return sub_23E5C8DE0();
}

uint64_t _s21ActivitySharingClient33SecureCloudInviteUserInfoProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_15;
    }

    sub_23E562570(v7, v6);
    sub_23E562570(v10, v9);
    sub_23E56121C(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_23E562570(v7, v6);
    sub_23E562570(v10, v9);
    v11 = sub_23E59FB18(v7, v6, v10, v9);
    sub_23E56121C(v10, v9);
    sub_23E56121C(v7, v6);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_15;
    }

    sub_23E562570(v7, v6);
    sub_23E562570(v10, v9);
    sub_23E56121C(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_23E562570(v7, v6);
    sub_23E562570(v10, v9);
    v14 = sub_23E59FB18(v7, v6, v10, v9);
    sub_23E56121C(v10, v9);
    sub_23E56121C(v7, v6);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v7 = *(a1 + v15);
  v6 = *(a1 + v15 + 8);
  v16 = (a2 + v15);
  v10 = *v16;
  v9 = v16[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_23E562570(v7, v6);
      sub_23E562570(v10, v9);
      sub_23E56121C(v7, v6);
      goto LABEL_18;
    }

LABEL_15:
    sub_23E562570(v7, v6);
    sub_23E562570(v10, v9);
    sub_23E56121C(v7, v6);
    sub_23E56121C(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_15;
  }

  sub_23E562570(v7, v6);
  sub_23E562570(v10, v9);
  v18 = sub_23E59FB18(v7, v6, v10, v9);
  sub_23E56121C(v10, v9);
  sub_23E56121C(v7, v6);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (v23 && (*v20 == *v22 && v21 == v23 || (sub_23E5C9430() & 1) != 0))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v23)
  {
    return 0;
  }

LABEL_25:
  sub_23E5C8CD0();
  sub_23E5802A0(&qword_27E346150, MEMORY[0x277D216C8]);
  return sub_23E5C8F20() & 1;
}

void sub_23E5801DC()
{
  sub_23E5C8CD0();
  if (v0 <= 0x3F)
  {
    sub_23E56BB90(319, &qword_27E3463C8);
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

uint64_t sub_23E5802A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SecureCloudInviteResponseProtobuf.date.setter(double a1)
{
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for SecureCloudInviteResponseProtobuf()
{
  result = qword_27E3464C8;
  if (!qword_27E3464C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudInviteResponseProtobuf.handshakeToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SecureCloudInviteResponseProtobuf.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SecureCloudInviteResponseProtobuf.userInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 36);
  sub_23E562510(v1 + v3, &qword_27E346210, &unk_23E5CA6D0);
  sub_23E56A098(a1, v1 + v3);
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t SecureCloudInviteResponseProtobuf.version.setter(int a1)
{
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t SecureCloudInviteResponseProtobuf.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v5 = v1 + *(result + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

double SecureCloudInviteResponseProtobuf.date.getter()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t SecureCloudInviteResponseProtobuf.handshakeToken.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 24));
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

uint64_t SecureCloudInviteResponseProtobuf.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 28));
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

BOOL SecureCloudInviteResponseProtobuf.hasUserInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  sub_23E56A028(v0 + *(v5 + 36), v4);
  v6 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_23E562510(v4, &qword_27E346210, &unk_23E5CA6D0);
  return v7;
}

uint64_t SecureCloudInviteResponseProtobuf.userInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  sub_23E56A028(v1 + *(v7 + 36), v6);
  v8 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_23E56A098(v6, a1);
  }

  sub_23E5C8CC0();
  *(a1 + v8[5]) = xmmword_23E5CA6B0;
  *(a1 + v8[6]) = xmmword_23E5CA6B0;
  *(a1 + v8[7]) = xmmword_23E5CA6B0;
  v10 = (a1 + v8[8]);
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_23E562510(v6, &qword_27E346210, &unk_23E5CA6D0);
  }

  return result;
}

uint64_t SecureCloudInviteResponseProtobuf.version.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SecureCloudInviteResponseProtobuf.type.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v4 = (v1 + *(result + 32));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t (*SecureCloudInviteResponseProtobuf.date.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 20);
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

Swift::Void __swiftcall SecureCloudInviteResponseProtobuf.clearDate()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_23E5809A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 24));
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

uint64_t sub_23E580A08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudInviteResponseProtobuf.handshakeToken.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 24);
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

Swift::Void __swiftcall SecureCloudInviteResponseProtobuf.clearHandshakeToken()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_23E580B74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 28));
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

uint64_t sub_23E580BD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*SecureCloudInviteResponseProtobuf.identifier.modify(uint64_t *a1))(uint64_t **, char)
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
  v5 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 28);
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

Swift::Void __swiftcall SecureCloudInviteResponseProtobuf.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*SecureCloudInviteResponseProtobuf.type.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return sub_23E576EBC;
}

Swift::Void __swiftcall SecureCloudInviteResponseProtobuf.clearType()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 32);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t sub_23E580E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  sub_23E56A028(a1 + *(v8 + 36), v7);
  v9 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_23E56A098(v7, a2);
  }

  sub_23E5C8CC0();
  *(a2 + v9[5]) = xmmword_23E5CA6B0;
  *(a2 + v9[6]) = xmmword_23E5CA6B0;
  *(a2 + v9[7]) = xmmword_23E5CA6B0;
  v11 = (a2 + v9[8]);
  *v11 = 0;
  v11[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_23E562510(v7, &qword_27E346210, &unk_23E5CA6D0);
  }

  return result;
}

uint64_t sub_23E580F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E56A428(a1, v8);
  v9 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 36);
  sub_23E562510(a2 + v9, &qword_27E346210, &unk_23E5CA6D0);
  sub_23E56A098(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*SecureCloudInviteResponseProtobuf.userInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 36);
  *(v5 + 12) = v15;
  sub_23E56A028(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_23E5C8CC0();
    *(v14 + v9[5]) = xmmword_23E5CA6B0;
    *(v14 + v9[6]) = xmmword_23E5CA6B0;
    *(v14 + v9[7]) = xmmword_23E5CA6B0;
    v17 = (v14 + v9[8]);
    *v17 = 0;
    v17[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_23E562510(v8, &qword_27E346210, &unk_23E5CA6D0);
    }
  }

  else
  {
    sub_23E56A098(v8, v14);
  }

  return sub_23E56A310;
}

Swift::Void __swiftcall SecureCloudInviteResponseProtobuf.clearUserInfo()()
{
  v1 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 36);
  sub_23E562510(v0 + v1, &qword_27E346210, &unk_23E5CA6D0);
  v2 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t (*SecureCloudInviteResponseProtobuf.version.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_23E56A734;
}

Swift::Void __swiftcall SecureCloudInviteResponseProtobuf.clearVersion()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t SecureCloudInviteResponseProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudInviteResponseProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t SecureCloudInviteResponseProtobuf.ProtobufType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_23E581528(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E58202C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t SecureCloudInviteResponseProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  sub_23E5C8CC0();
  v2 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = 256;
  v7 = v2[9];
  v8 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  result = (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  v10 = a1 + v2[10];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t static SecureCloudInviteResponseProtobuf.ProtobufType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27E346450 = a1;
}

uint64_t sub_23E581744@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27E346450;
}

uint64_t sub_23E5817B0()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E346458);
  __swift_project_value_buffer(v0, qword_27E346458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CB3C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
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
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "identifier";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "userInfo";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "version";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_23E5C8E70();
}

uint64_t SecureCloudInviteResponseProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23E5C8D30();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      switch(result)
      {
        case 5:
          sub_23E581BF8();
          break;
        case 6:
          sub_23E581C6C();
          break;
        case 7:
          v5 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 40);
          sub_23E5C8D80();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 20);
          sub_23E5C8D60();
          break;
        case 2:
          v6 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 24);
LABEL_16:
          v0 = 0;
          sub_23E5C8D70();
          break;
        case 3:
          v4 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 28);
          goto LABEL_16;
      }
    }
  }
}

uint64_t sub_23E581BF8()
{
  v0 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 32);
  sub_23E58202C();
  return sub_23E5C8D40();
}

uint64_t sub_23E581C6C()
{
  v0 = *(type metadata accessor for SecureCloudInviteResponseProtobuf() + 36);
  type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  sub_23E582EE4(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
  return sub_23E5C8D90();
}

uint64_t SecureCloudInviteResponseProtobuf.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v11 = (v0 + v10[5]);
  if ((v11[1] & 1) != 0 || (v12 = *v11, result = sub_23E5C8E20(), !v1))
  {
    v14 = (v0 + v10[6]);
    if (!v14[1] || (v15 = *v14, result = sub_23E5C8E30(), !v1))
    {
      v16 = (v0 + v10[7]);
      if (!v16[1] || (v17 = *v16, result = sub_23E5C8E30(), !v1))
      {
        v18 = v1;
        v19 = (v0 + v10[8]);
        if ((*(v19 + 9) & 1) == 0)
        {
          v20 = *(v19 + 8);
          v24 = *v19;
          v25 = v20 & 1;
          sub_23E58202C();
          result = sub_23E5C8E00();
          if (v1)
          {
            return result;
          }

          v18 = 0;
        }

        sub_23E56A028(v0 + v10[9], v5);
        if ((*(v26 + 48))(v5, 1, v6) == 1)
        {
          sub_23E562510(v5, &qword_27E346210, &unk_23E5CA6D0);
          v21 = v18;
        }

        else
        {
          sub_23E56A098(v5, v9);
          sub_23E582EE4(&qword_27E346218, type metadata accessor for SecureCloudInviteUserInfoProtobuf);
          v21 = v18;
          sub_23E5C8E50();
          result = sub_23E56A48C(v9);
          if (v18)
          {
            return result;
          }
        }

        v22 = (v0 + v10[10]);
        if (v22[1])
        {
          return sub_23E5C8CB0();
        }

        v23 = *v22;
        result = sub_23E5C8E40();
        if (!v21)
        {
          return sub_23E5C8CB0();
        }
      }
    }
  }

  return result;
}

unint64_t sub_23E58202C()
{
  result = qword_27E346488;
  if (!qword_27E346488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346488);
  }

  return result;
}

uint64_t SecureCloudInviteResponseProtobuf.hashValue.getter()
{
  sub_23E5C94D0();
  type metadata accessor for SecureCloudInviteResponseProtobuf();
  sub_23E582EE4(&qword_27E346490, type metadata accessor for SecureCloudInviteResponseProtobuf);
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

uint64_t sub_23E58210C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23E5C8CC0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 256;
  v10 = a1[9];
  v11 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  v13 = a2 + a1[10];
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_23E582214(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E582EE4(&qword_27E3464E0, type metadata accessor for SecureCloudInviteResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23E5822B4(uint64_t a1)
{
  v2 = sub_23E582EE4(&qword_27E3462A8, type metadata accessor for SecureCloudInviteResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23E582320()
{
  sub_23E582EE4(&qword_27E3462A8, type metadata accessor for SecureCloudInviteResponseProtobuf);

  return sub_23E5C8DE0();
}

uint64_t sub_23E5823A0()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E346470);
  __swift_project_value_buffer(v0, qword_27E346470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23E5CA6C0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "accept";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_23E5C8E60();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "incompatibleVersion";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "incompatibleAccount";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ineligibleDevices";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "invalidAddress";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_23E5C8E70();
}

uint64_t _s21ActivitySharingClient33SecureCloudInviteResponseProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudInviteUserInfoProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346210, &unk_23E5CA6D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346270, &qword_23E5CBE40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v57 - v15;
  v17 = type metadata accessor for SecureCloudInviteResponseProtobuf();
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_56;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_56;
    }
  }

  v23 = v17[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_56;
    }

    if (*v24 != *v26 || v25 != v27)
    {
      v29 = v17;
      v30 = sub_23E5C9430();
      v17 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else if (v27)
  {
    goto LABEL_56;
  }

  v31 = v17[7];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_56;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v17;
      v37 = sub_23E5C9430();
      v17 = v36;
      if ((v37 & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_56;
  }

  v38 = v17[8];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 9);
  v41 = a2 + v38;
  v42 = *(a2 + v38 + 9);
  if (v40)
  {
    if (v42)
    {
      goto LABEL_25;
    }

LABEL_56:
    v55 = 0;
    return v55 & 1;
  }

  if (v42)
  {
    goto LABEL_56;
  }

  v47 = *v39;
  v48 = *v41;
  if (*(v41 + 8))
  {
    if (v48 <= 1)
    {
      if (v48)
      {
        if (v47 != 1)
        {
          goto LABEL_56;
        }
      }

      else if (v47)
      {
        goto LABEL_56;
      }
    }

    else if (v48 == 2)
    {
      if (v47 != 2)
      {
        goto LABEL_56;
      }
    }

    else if (v48 == 3)
    {
      if (v47 != 3)
      {
        goto LABEL_56;
      }
    }

    else if (v47 != 4)
    {
      goto LABEL_56;
    }
  }

  else if (v47 != v48)
  {
    goto LABEL_56;
  }

LABEL_25:
  v43 = v17;
  v44 = v17[9];
  v45 = *(v13 + 48);
  sub_23E56A028(a1 + v44, v16);
  sub_23E56A028(a2 + v44, &v16[v45]);
  v46 = *(v5 + 48);
  if (v46(v16, 1, v4) == 1)
  {
    if (v46(&v16[v45], 1, v4) == 1)
    {
      sub_23E562510(v16, &qword_27E346210, &unk_23E5CA6D0);
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  sub_23E56A028(v16, v12);
  if (v46(&v16[v45], 1, v4) == 1)
  {
    sub_23E56A48C(v12);
LABEL_37:
    sub_23E562510(v16, &qword_27E346270, &qword_23E5CBE40);
    goto LABEL_56;
  }

  sub_23E56A098(&v16[v45], v8);
  v49 = static SecureCloudInviteUserInfoProtobuf.== infix(_:_:)(v12, v8);
  sub_23E56A48C(v8);
  sub_23E56A48C(v12);
  sub_23E562510(v16, &qword_27E346210, &unk_23E5CA6D0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_41:
  v50 = v43[10];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if (v52)
  {
    if (!v54)
    {
      goto LABEL_56;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      goto LABEL_56;
    }
  }

  sub_23E5C8CD0();
  sub_23E582EE4(&qword_27E346150, MEMORY[0x277D216C8]);
  v55 = sub_23E5C8F20();
  return v55 & 1;
}

unint64_t sub_23E582AFC()
{
  result = qword_27E346498;
  if (!qword_27E346498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346498);
  }

  return result;
}

unint64_t sub_23E582B54()
{
  result = qword_27E3464A0;
  if (!qword_27E3464A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3464A0);
  }

  return result;
}

unint64_t sub_23E582BAC()
{
  result = qword_27E3464A8;
  if (!qword_27E3464A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3464A8);
  }

  return result;
}

unint64_t sub_23E582C04()
{
  result = qword_27E3464B0;
  if (!qword_27E3464B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3464B8, &qword_23E5CBC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3464B0);
  }

  return result;
}

void sub_23E582DB0()
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
        sub_23E56BB90(319, &qword_27E3464D8);
        if (v3 <= 0x3F)
        {
          sub_23E56BB38();
          if (v4 <= 0x3F)
          {
            sub_23E56BB90(319, &qword_27E346260);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23E582EE4(unint64_t *a1, void (*a2)(uint64_t))
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

void ActivitySharingSettings.init(healthStore:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v5 = sub_23E5C8F30();
  v6 = [v4 initWithCategory:4 domainName:v5 healthStore:a1];

  *a2 = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CCD6A8]) initWithHealthStore_];

  a2[1] = v7;
}

uint64_t sub_23E582FD8(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = *v1;
  return MEMORY[0x2822009F8](sub_23E583000, 0, 0);
}

uint64_t sub_23E583000()
{
  v1 = v0[26];
  v2 = sub_23E5C8B40();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_23E5C8B30();
  v0[18] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3464F0, &qword_23E5CBE80);
  sub_23E586C78(&qword_27E346520);
  v0[29] = sub_23E5C8B20();
  v0[30] = v5;
  v6 = v0[27];

  v7 = sub_23E5C8BA0();
  v0[31] = v7;
  v8 = sub_23E5C8F30();
  v0[32] = v8;
  v0[2] = v0;
  v0[3] = sub_23E583364;
  v9 = swift_continuation_init();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346508, &qword_23E5CBEB8);
  v0[33] = v10;
  v0[25] = v10;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_23E583A58;
  v0[21] = &block_descriptor_29;
  v0[22] = v9;
  [v6 setData:v7 forKey:v8 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E583364()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_23E5838A4;
  }

  else
  {
    v3 = sub_23E583474;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E583474()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_23E58358C;
  v4 = swift_continuation_init();
  *(v0 + 200) = v1;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_23E583A58;
  *(v0 + 168) = &block_descriptor_32;
  *(v0 + 176) = v4;
  [v3 forceNanoSyncWithOptions:0 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_23E58358C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_23E5836FC;
  }

  else
  {
    v3 = sub_23E58369C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E58369C()
{
  sub_23E561230(v0[29], v0[30]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23E5836FC()
{
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[30];
  swift_willThrow();
  sub_23E561230(v2, v3);
  v4 = v0[35];
  if (qword_280C088F8 != -1)
  {
    swift_once();
  }

  v5 = sub_23E5C8EB0();
  __swift_project_value_buffer(v5, qword_280C09108);
  v6 = v4;
  v7 = sub_23E5C8E90();
  v8 = sub_23E5C9160();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23E55E000, v7, v8, "Failed to save identifiers to force migration: %@", v9, 0xCu);
    sub_23E586568(v10);
    MEMORY[0x23EF0DE00](v10, -1, -1);
    MEMORY[0x23EF0DE00](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_23E5838A4()
{
  v1 = v0[34];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  swift_willThrow();
  sub_23E561230(v4, v5);

  v6 = v0[34];
  if (qword_280C088F8 != -1)
  {
    swift_once();
  }

  v7 = sub_23E5C8EB0();
  __swift_project_value_buffer(v7, qword_280C09108);
  v8 = v6;
  v9 = sub_23E5C8E90();
  v10 = sub_23E5C9160();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_23E55E000, v9, v10, "Failed to save identifiers to force migration: %@", v11, 0xCu);
    sub_23E586568(v12);
    MEMORY[0x23EF0DE00](v12, -1, -1);
    MEMORY[0x23EF0DE00](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_23E583A58(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return MEMORY[0x282200950](v5);
  }

  if (!a3)
  {
    __break(1u);
    return MEMORY[0x282200950](v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346510, "HT");
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return MEMORY[0x282200958](v6, v7);
}

uint64_t ActivitySharingSettings.forceMigrationAllowed(friendIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 16) = *v2;
  v4 = swift_task_alloc();
  *(v3 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_23E583BAC;

  return ActivitySharingSettings.forcedMigrationFriendIdentifiers()();
}

uint64_t sub_23E583BAC(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_23E583CAC, 0, 0);
}

uint64_t sub_23E583CAC()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[4] = v0[6];
  v0[5] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 4;
  v4 = sub_23E586400(sub_23E58654C, v3, v1);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_23E583D90()
{
  v1 = v0[20];
  v2 = sub_23E5C8F30();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23E583EDC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3464E8, &unk_23E5CBE70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E584AB4;
  v0[13] = &block_descriptor;
  v0[14] = v3;
  [v1 dataForKey:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E583EDC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_23E584228;
  }

  else
  {
    v3 = sub_23E583FEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E583FEC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  if (v2 >> 60 == 15)
  {
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v3 = sub_23E5C8B10();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_23E5C8B00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3464F0, &qword_23E5CBE80);
    sub_23E586C78(&qword_27E3464F8);
    sub_23E5C8AF0();
    sub_23E56121C(v1, v2);

    v8 = *(v0 + 80);
  }

  v6 = *(v0 + 8);

  return v6(v8);
}

uint64_t sub_23E584228()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[22];
  if (qword_280C088F8 != -1)
  {
    swift_once();
  }

  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09108);
  v5 = v3;
  v6 = sub_23E5C8E90();
  v7 = sub_23E5C9160();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23E55E000, v6, v7, "Failed to retrieve forced migration friend identifiers: %@", v8, 0xCu);
    sub_23E586568(v9);
    MEMORY[0x23EF0DE00](v9, -1, -1);
    MEMORY[0x23EF0DE00](v8, -1, -1);
  }

  v12 = v0[1];
  v13 = MEMORY[0x277D84F90];

  return v12(v13);
}

uint64_t ActivitySharingSettings.updateAllowForcedMigration(_:friendIdentifier:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = a3;
  *(v4 + 176) = a1;
  v5 = *v3;
  v6 = v3[1];
  *(v4 + 128) = *v3;
  *(v4 + 136) = v6;
  *(v4 + 64) = v5;
  *(v4 + 72) = v6;
  v7 = swift_task_alloc();
  *(v4 + 144) = v7;
  *v7 = v4;
  v7[1] = sub_23E584464;

  return ActivitySharingSettings.forcedMigrationFriendIdentifiers()();
}

uint64_t sub_23E584464(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_23E584564, 0, 0);
}

void sub_23E584564()
{
  if (*(v0 + 176) == 1)
  {
    *(v0 + 96) = *(v0 + 112);
    v1 = *(v0 + 152);
    *(v0 + 104) = *(v0 + 120);
    v2 = swift_task_alloc();
    *(v2 + 16) = v0 + 96;
    v3 = sub_23E586400(sub_23E586D10, v2, v1);

    v4 = *(v0 + 152);
    if ((v3 & 1) == 0)
    {
      v6 = *(v0 + 112);
      v5 = *(v0 + 120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466D0, &qword_23E5CA670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E5CA3C0;
      *(inited + 32) = v6;
      *(inited + 40) = v5;

      sub_23E585C94(inited);
    }
  }

  else
  {
    v8 = *(v0 + 152);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = -v9;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v12 = (v8 + 40 + 16 * v10++);
        while (1)
        {
          if ((v10 - 1) >= *(v8 + 16))
          {
            __break(1u);
            return;
          }

          v13 = *(v12 - 1);
          v14 = *v12;
          if (v13 != *(v0 + 112) || v14 != *(v0 + 120))
          {
            v16 = *(v12 - 1);
            v17 = *v12;
            if ((sub_23E5C9430() & 1) == 0)
            {
              break;
            }
          }

          ++v10;
          v12 += 2;
          if (v11 + v10 == 1)
          {
            goto LABEL_21;
          }
        }

        v26 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23E5864AC(0, *(v4 + 16) + 1, 1);
        }

        v18 = *(v4 + 16);
        v19 = *(v4 + 24);
        v20 = v18 + 1;
        if (v18 >= v19 >> 1)
        {
          v25 = v18 + 1;
          v22 = *(v4 + 16);
          sub_23E5864AC((v19 > 1), v18 + 1, 1);
          v18 = v22;
          v20 = v25;
          v4 = v26;
        }

        *(v4 + 16) = v20;
        v21 = v4 + 16 * v18;
        *(v21 + 32) = v13;
        *(v21 + 40) = v14;
      }

      while (v11 + v10);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v23 = *(v0 + 152);
  }

  *(v0 + 160) = v4;
  *(v0 + 80) = *(v0 + 128);
  v24 = swift_task_alloc();
  *(v0 + 168) = v24;
  *v24 = v0;
  v24[1] = sub_23E5847F8;

  sub_23E582FD8(v4);
}

uint64_t sub_23E5847F8()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E5848F4, 0, 0);
}

uint64_t sub_23E5848F4()
{
  v16 = v0;
  if (qword_280C088F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09108);

  v3 = sub_23E5C8E90();
  v4 = sub_23E5C9170();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x23EF0D250](v6, MEMORY[0x277D837D0]);
    v11 = v10;

    v12 = sub_23E560AF0(v9, v11, &v15);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_23E55E000, v3, v4, "Updated list of friends allowed to force a migration: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EF0DE00](v8, -1, -1);
    MEMORY[0x23EF0DE00](v7, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23E584AB4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346510, "HT");
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_23E5C8BB0();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23E584BD0()
{
  v1 = v0[19];
  v2 = sub_23E5C8F30();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23E584D1C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346500, &qword_23E5CBEA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E585060;
  v0[13] = &block_descriptor_7;
  v0[14] = v3;
  [v1 numberForKey:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E584D1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_23E584EBC;
  }

  else
  {
    v3 = sub_23E584E2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E584E2C()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23E584EBC()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  if (qword_280C088F8 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09108);
  v5 = v3;
  v6 = sub_23E5C8E90();
  v7 = sub_23E5C9160();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_23E55E000, v6, v7, "Failed to retrieve ignore legacy devices setting: %@", v10, 0xCu);
    sub_23E586568(v11);
    MEMORY[0x23EF0DE00](v11, -1, -1);
    MEMORY[0x23EF0DE00](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_23E585060(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346510, "HT");
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t ActivitySharingSettings.updateIgnoreLegacyDevices(_:)(char a1)
{
  *(v2 + 264) = a1;
  *(v2 + 208) = *v1;
  return MEMORY[0x2822009F8](sub_23E585158, 0, 0);
}

uint64_t sub_23E585158()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 264);
  v3 = sub_23E5C90C0();
  *(v0 + 224) = v3;
  v4 = sub_23E5C8F30();
  *(v0 + 232) = v4;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23E5852B4;
  v5 = swift_continuation_init();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346508, &qword_23E5CBEB8);
  *(v0 + 240) = v6;
  *(v0 + 200) = v6;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_23E583A58;
  *(v0 + 168) = &block_descriptor_10;
  *(v0 + 176) = v5;
  [v1 setNumber:v3 forKey:v4 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23E5852B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_23E58566C;
  }

  else
  {
    v3 = sub_23E5853C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5853C4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_23E5854D8;
  v4 = swift_continuation_init();
  *(v0 + 200) = v1;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_23E583A58;
  *(v0 + 168) = &block_descriptor_13;
  *(v0 + 176) = v4;
  [v2 forceNanoSyncWithOptions:0 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_23E5854D8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_23E585600;
  }

  else
  {
    v3 = sub_23E5855E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E585600()
{
  v1 = *(v0 + 256);
  swift_willThrow();
  v2 = *(v0 + 256);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23E58566C()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[29];
  swift_willThrow();

  v4 = v0[31];
  v5 = v0[1];

  return v5();
}

uint64_t sub_23E5856E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 16) = *v2;
  v4 = swift_task_alloc();
  *(v3 + 64) = v4;
  *v4 = v3;
  v4[1] = sub_23E585780;

  return ActivitySharingSettings.forcedMigrationFriendIdentifiers()();
}

uint64_t sub_23E585780(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_23E585880, 0, 0);
}

uint64_t sub_23E585880()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[4] = v0[6];
  v0[5] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 4;
  v4 = sub_23E586400(sub_23E586D10, v3, v1);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_23E585940(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E55FD64;

  return ActivitySharingSettings.updateAllowForcedMigration(_:friendIdentifier:)(a1, a2, a3);
}

uint64_t sub_23E5859EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E585A78;

  return ActivitySharingSettings.forcedMigrationFriendIdentifiers()();
}

uint64_t sub_23E585A78(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23E585B74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E585A78;

  return ActivitySharingSettings.ignoreLegacyDevices()();
}

uint64_t sub_23E585C00(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E55FD64;

  return ActivitySharingSettings.updateIgnoreLegacyDevices(_:)(a1);
}

uint64_t sub_23E585C94(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23E5C2AC0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

uint64_t sub_23E585D88(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23E5C2BCC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

uint64_t sub_23E585E7C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_23E585EC8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_23E585F50(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23E560AF0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23E585FAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_23E585FF8(a1, a2);
  sub_23E586128(&unk_2850DED40);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23E585FF8(uint64_t a1, unint64_t a2)
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

  v6 = sub_23E586214(v5, 0);
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

  result = sub_23E5C92F0();
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
        v10 = sub_23E5C8FB0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23E586214(v10, 0);
        result = sub_23E5C92C0();
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

uint64_t sub_23E586128(uint64_t result)
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

  result = sub_23E586288(result, v12, 1, v3);
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

void *sub_23E586214(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346518, "HT");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23E586288(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346518, "HT");
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

_BYTE **sub_23E58637C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_23E58638C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_23E586400(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

char *sub_23E5864AC(char *a1, int64_t a2, char a3)
{
  result = sub_23E5C3BA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E5864CC(char *a1, int64_t a2, char a3)
{
  result = sub_23E5C3CB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E5864EC(char *a1, int64_t a2, char a3)
{
  result = sub_23E5C3DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E58650C(char *a1, int64_t a2, char a3)
{
  result = sub_23E5C3EE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E58652C(char *a1, int64_t a2, char a3)
{
  result = sub_23E5C3FEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_23E586568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346750, &qword_23E5CD2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of ActivitySharingSettingsProtocol.forceMigrationAllowed(friendIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_23E586D0C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ActivitySharingSettingsProtocol.updateAllowForcedMigration(_:friendIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_23E55FD64;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ActivitySharingSettingsProtocol.forcedMigrationFriendIdentifiers()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E585A78;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingSettingsProtocol.ignoreLegacyDevices()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E585A78;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingSettingsProtocol.updateIgnoreLegacyDevices(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23E55FD64;

  return v11(a1, a2, a3);
}

uint64_t sub_23E586B98(uint64_t *a1, int a2)
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

uint64_t sub_23E586BE0(uint64_t result, int a2, int a3)
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

uint64_t sub_23E586C1C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23E5C9430() & 1;
  }
}

uint64_t sub_23E586C78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3464F0, &qword_23E5CBE80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23E586D4C()
{
  v1 = *v0;
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](v1);
  return sub_23E5C94F0();
}

uint64_t sub_23E586DC0()
{
  v1 = *v0;
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](v1);
  return sub_23E5C94F0();
}

uint64_t sub_23E586E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23E586E38(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23E586E38(uint64_t result)
{
  if (result <= 900)
  {
    if (result <= 400)
    {
      if ((result - 301) < 5 || (result - 101) < 4 || (result - 201) < 2)
      {
        return result;
      }
    }

    else if (result > 600)
    {
      if ((result - 601) < 4 || result == 701 || result == 801)
      {
        return result;
      }
    }

    else if ((result - 401) < 5 || result == 501)
    {
      return result;
    }

    return 0;
  }

  if (((result - 1101) > 0x3B || ((1 << (result - 77)) & 0xFFE0000000007FFLL) == 0) && (result - 1001) >= 9 && result != 901)
  {
    return 0;
  }

  return result;
}

unint64_t sub_23E586F00()
{
  result = qword_280C08FA8;
  if (!qword_280C08FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C08FA8);
  }

  return result;
}

uint64_t InvitationDestination.canonicalDestination.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InvitationDestination.destination.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InvitationDestination.serviceIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t InvitationDestination.shortDescription.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x23EF0D190](8250, 0xE200000000000000);
  MEMORY[0x23EF0D190](v1, v2);
  return v4;
}

unint64_t sub_23E587084()
{
  v1 = *v0;
  v2 = 0x74616E6974736564;
  v3 = 0x746E696F70646E65;
  v4 = 0x6962616863616572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E587138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E587F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E587178(uint64_t a1)
{
  v2 = sub_23E587C8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5871B4(uint64_t a1)
{
  v2 = sub_23E587C8C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t InvitationDestination.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v21 = *(v0 + 40);
  v6 = v0[7];
  v22 = v0[6];
  sub_23E5C92D0();

  MEMORY[0x23EF0D190](v1, v2);
  MEMORY[0x23EF0D190](32, 0xE100000000000000);
  MEMORY[0x23EF0D190](0xD000000000000016, 0x800000023E5CFE50);

  sub_23E5C92D0();

  strcpy(v24, "destination: ");
  HIWORD(v24[1]) = -4864;
  MEMORY[0x23EF0D190](v3, v4);
  MEMORY[0x23EF0D190](32, 0xE100000000000000);

  MEMORY[0x23EF0D190](v24[0], v24[1]);

  strcpy(v24, "endpoints: ");
  HIDWORD(v24[1]) = -352321536;
  v7 = *(v5 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v20 = v6;
    v23 = MEMORY[0x277D84F90];
    sub_23E5864AC(0, v7, 0);
    v8 = v23;
    v9 = (v5 + 64);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v13 = *(v23 + 16);
      v12 = *(v23 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_23E5864AC((v12 > 1), v13 + 1, 1);
      }

      *(v23 + 16) = v13 + 1;
      v14 = v23 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 5;
      --v7;
    }

    while (v7);
    v15 = v22;
    v6 = v20;
  }

  else
  {
    v15 = v22;
  }

  v16 = MEMORY[0x23EF0D250](v8, MEMORY[0x277D837D0]);
  v18 = v17;

  MEMORY[0x23EF0D190](v16, v18);

  MEMORY[0x23EF0D190](32, 0xE100000000000000);

  MEMORY[0x23EF0D190](v24[0], v24[1]);

  sub_23E5C92D0();
  MEMORY[0x23EF0D190](0x6962616863616572, 0xEE00203A7974696CLL);
  sub_23E5C9300();
  MEMORY[0x23EF0D190](32, 0xE100000000000000);

  MEMORY[0x23EF0D190](0, 0xE000000000000000);

  sub_23E5C92D0();

  MEMORY[0x23EF0D190](v15, v6);

  MEMORY[0x23EF0D190](0xD000000000000014, 0x800000023E5CFE70);

  return 0xD000000000000017;
}

uint64_t InvitationDestination.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346528, &qword_23E5CC0A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v19 = v1[4];
  v18 = *(v1 + 40);
  v11 = v1[6];
  v17[0] = v1[7];
  v17[1] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E587C8C();
  sub_23E5C9510();
  v29 = 0;
  v13 = v22;
  sub_23E5C93C0();
  if (!v13)
  {
    v15 = v19;
    v16 = v18;
    v28 = 1;
    sub_23E5C93C0();
    v23 = v15;
    v27 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346538, &qword_23E5CC0A8);
    sub_23E587CE0(&qword_27E346540, sub_23E5690AC);
    sub_23E5C93E0();
    v26 = v16;
    v25 = 3;
    sub_23E568EB4();
    sub_23E5C93E0();
    v24 = 4;
    sub_23E5C93C0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t InvitationDestination.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346548, &qword_23E5CC0B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E587C8C();
  sub_23E5C9500();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = sub_23E5C9380();
  v27 = v12;
  LOBYTE(v31[0]) = 1;
  v13 = sub_23E5C9380();
  *(&v26 + 1) = v14;
  *&v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346538, &qword_23E5CC0A8);
  LOBYTE(v28[0]) = 2;
  sub_23E587CE0(&qword_27E346550, sub_23E569058);
  sub_23E5C93A0();
  v25 = v31[0];
  LOBYTE(v28[0]) = 3;
  sub_23E568E60();
  sub_23E5C93A0();
  v35 = LOBYTE(v31[0]);
  v36 = 4;
  v15 = sub_23E5C9380();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  v18 = *(&v26 + 1);
  *&v28[0] = v11;
  *(&v28[0] + 1) = v27;
  v19 = v25;
  v20 = v26;
  v28[1] = v26;
  *&v29 = v25;
  BYTE8(v29) = v35;
  *&v30 = v15;
  *(&v30 + 1) = v17;
  v21 = v26;
  *a2 = v28[0];
  a2[1] = v21;
  v22 = v30;
  a2[2] = v29;
  a2[3] = v22;
  sub_23E57EA28(v28, v31);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v31[0] = v11;
  v31[1] = v27;
  v31[2] = v20;
  v31[3] = v18;
  v31[4] = v19;
  v32 = v35;
  v33 = v15;
  v34 = v17;
  return sub_23E587D58(v31);
}

unint64_t sub_23E587C8C()
{
  result = qword_27E346530;
  if (!qword_27E346530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346530);
  }

  return result;
}

uint64_t sub_23E587CE0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E346538, &qword_23E5CC0A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23E587D9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_23E587DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23E587E58()
{
  result = qword_27E346558;
  if (!qword_27E346558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346558);
  }

  return result;
}

unint64_t sub_23E587EB0()
{
  result = qword_27E346560;
  if (!qword_27E346560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346560);
  }

  return result;
}

unint64_t sub_23E587F08()
{
  result = qword_27E346568;
  if (!qword_27E346568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346568);
  }

  return result;
}

uint64_t sub_23E587F5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000023E5CFE90 == a2;
  if (v4 || (sub_23E5C9430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_23E5C9430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073 || (sub_23E5C9430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6962616863616572 && a2 == 0xEC0000007974696CLL || (sub_23E5C9430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023E5CFEB0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_23E5C9430();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id ActivitySharingClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ActivitySharingClient.init()()
{
  v0 = ASActivitySharingDaemonEnabled();
  v1 = objc_allocWithZone(type metadata accessor for ActivitySharingClient());
  ActivitySharingClient.init(activitySharingDaemonEnabled:)(v0);
  v3 = v2;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

void ActivitySharingClient.init(activitySharingDaemonEnabled:)(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  v5 = sub_23E5C8E90();
  v6 = sub_23E5C9170();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v40[0] = v8;
    *v7 = 136315650;
    v9 = sub_23E5C9540();
    v11 = sub_23E560AF0(v9, v10, v40);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_23E560AF0(0xD000000000000023, 0x800000023E5CFED0, v40);
    *(v7 + 22) = 1024;
    *(v7 + 24) = a1 & 1;
    _os_log_impl(&dword_23E55E000, v5, v6, "%s::%s - activitySharingDaemonEnabled: %{BOOL}d", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23EF0DE00](v8, -1, -1);
    MEMORY[0x23EF0DE00](v7, -1, -1);
  }

  if (a1)
  {
    v12 = type metadata accessor for XPCClient();
    swift_allocObject();
    v13 = XPCClient.init()();
    v14 = &v2[OBJC_IVAR____ASActivitySharingClient_transportClient];
    v14[3] = v12;
    v14[4] = &protocol witness table for XPCClient;
    *v14 = v13;
    v15 = &v2[OBJC_IVAR____ASActivitySharingClient_asListener];
    *(v15 + 1) = 0u;
    *(v15 + 2) = 0u;
    *v15 = 0u;
    swift_allocObject();
    v16 = XPCClient.init()();
    v17 = &v2[OBJC_IVAR____ASActivitySharingClient_secureCloudClient];
    *v17 = v16;
    v17[3] = v12;
    v17[4] = &protocol witness table for XPCClient;
LABEL_9:
    v33.receiver = v2;
    v33.super_class = type metadata accessor for ActivitySharingClient();
    objc_msgSendSuper2(&v33, sel_init);
    return;
  }

  v18 = type metadata accessor for LocalTransport();
  v19 = [objc_allocWithZone(v18) init];
  v20 = [objc_allocWithZone(v18) init];
  v21 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_proxy;
  swift_beginAccess();
  v22 = *&v19[v21];
  *&v19[v21] = v20;
  v23 = v20;
  swift_unknownObjectRelease();
  v24 = &v2[OBJC_IVAR____ASActivitySharingClient_transportClient];
  *(v24 + 3) = v18;
  *(v24 + 4) = &protocol witness table for LocalTransport;
  *v24 = v19;
  v38 = v18;
  v39 = &protocol witness table for LocalTransport;
  *&v37 = v23;
  v25 = objc_allocWithZone(MEMORY[0x277CCD4D8]);
  v26 = v19;
  v27 = [v25 init];
  v28 = [objc_allocWithZone(MEMORY[0x277CE9030]) initWithHealthStore_];

  if (v28)
  {

    *&v34 = v28;
    sub_23E5627D4(&v37, &v34 + 8);
    v29 = v36;
    v30 = v35;
    v40[1] = v35;
    v40[2] = v36;
    v40[0] = v34;
    v31 = &v2[OBJC_IVAR____ASActivitySharingClient_asListener];
    *v31 = v34;
    *(v31 + 1) = v30;
    *(v31 + 2) = v29;
    v32 = &v2[OBJC_IVAR____ASActivitySharingClient_secureCloudClient];
    *v32 = 0u;
    *(v32 + 1) = 0u;
    *(v32 + 4) = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_23E58862C()
{
  v1 = (*(v0 + 104) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_23E58875C;

  return v8(v2, v3);
}

uint64_t sub_23E58875C()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E588858, 0, 0);
}

uint64_t sub_23E588858()
{
  sub_23E5958CC(v0[13] + OBJC_IVAR____ASActivitySharingClient_asListener, (v0 + 2), &qword_27E346588, &qword_23E5CC2F8);
  if (v0[2])
  {
    v1 = swift_task_alloc();
    v0[15] = v1;
    *v1 = v0;
    v1[1] = sub_23E588AB0;

    return ASListener.activate()();
  }

  else
  {
    sub_23E562510((v0 + 2), &qword_27E346588, &qword_23E5CC2F8);
    sub_23E5958CC(v0[13] + OBJC_IVAR____ASActivitySharingClient_secureCloudClient, (v0 + 8), &qword_27E346590, &unk_23E5CC300);
    v3 = v0[11];
    if (v3)
    {
      v4 = v0[12];
      __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
      v5 = *(v4 + 8);
      v9 = (v5 + *v5);
      v6 = v5[1];
      v7 = swift_task_alloc();
      v0[16] = v7;
      *v7 = v0;
      v7[1] = sub_23E588D54;

      return v9(v3, v4);
    }

    else
    {
      sub_23E562510((v0 + 8), &qword_27E346590, &unk_23E5CC300);
      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_23E588AB0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v4 = *v0;

  sub_23E593664(v1 + 16);

  return MEMORY[0x2822009F8](sub_23E588BB4, 0, 0);
}

uint64_t sub_23E588BB4()
{
  sub_23E5958CC(v0[13] + OBJC_IVAR____ASActivitySharingClient_secureCloudClient, (v0 + 8), &qword_27E346590, &unk_23E5CC300);
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    v3 = *(v2 + 8);
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_23E588D54;

    return v8(v1, v2);
  }

  else
  {
    sub_23E562510((v0 + 8), &qword_27E346590, &unk_23E5CC300);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23E588D54()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E588E50, 0, 0);
}

uint64_t sub_23E588E50()
{
  sub_23E593610(v0 + 64);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E589024(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23E5890CC;

  return sub_23E58860C();
}

uint64_t sub_23E5890CC()
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

uint64_t sub_23E589224()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E574BCC;

  return v8(v2, v3);
}

uint64_t sub_23E5894C8(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_23E589540, 0, 0);
}

uint64_t sub_23E589540()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23E589670;

  return v8(v2, v3);
}

uint64_t sub_23E589670()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23E58976C, 0, 0);
}

uint64_t sub_23E58976C()
{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E5897E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[13] = a6;
  v7[14] = v6;
  v7[11] = a4;
  v7[12] = a5;
  v7[9] = a2;
  v7[10] = a3;
  v7[8] = a1;
  return MEMORY[0x2822009F8](sub_23E589810, 0, 0);
}

void sub_23E589810()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = (v0[14] + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v0[2] = v6;
  v0[3] = v4;
  v0[4] = v5;
  v0[5] = v2;
  v0[6] = v3;
  v0[7] = v1;
  v9 = *(v8 + 64);

  v12 = v9 + *v9;
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_23E5899CC;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E5899CC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v12 = *v1;
  v2[16] = v0;

  v4 = v2[2];
  v5 = v2[3];
  v2 += 2;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  sub_23E5936B8(v4, v5);
  if (v0)
  {
    v10 = sub_23E589B0C;
  }

  else
  {
    v10 = sub_23E589AF0;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_23E589CCC(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v7 = sub_23E5C8F40();
  v9 = v8;
  v5[4] = v8;
  v10 = sub_23E5C8F40();
  v12 = v11;
  v5[5] = v11;
  v13 = sub_23E5C8F40();
  v15 = v14;
  v5[6] = v14;
  a5;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_23E589DF0;

  return sub_23E5897E4(v7, v9, v10, v12, v13, v15);
}

uint64_t sub_23E589DF0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 40);
  v10 = *(*v2 + 32);
  v11 = *(*v2 + 16);
  v12 = *v2;

  v13 = *(v5 + 24);
  if (v3)
  {
    v14 = sub_23E5C8B80();

    (*(v13 + 16))(v13, 0, v14);
  }

  else
  {
    (*(v13 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v15 = *(v12 + 8);

  return v15();
}

uint64_t sub_23E589FE4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_23E58A008, 0, 0);
}

uint64_t sub_23E58A008()
{
  if (!ASSecureCloudEnabled())
  {
    v10 = v0[12];
    v11 = v0[11];
    v12 = (v0[13] + OBJC_IVAR____ASActivitySharingClient_transportClient);
    v13 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v0[7] = v11;
    v0[8] = v10;
    v14 = *(v13 + 64);

    v19 = v14 + *v14;
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_23E58A498;

    __asm { BRAA            X8, X16 }
  }

  sub_23E5958CC(v0[13] + OBJC_IVAR____ASActivitySharingClient_secureCloudClient, (v0 + 2), &qword_27E346590, &unk_23E5CC300);
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[9] = v3;
    v0[10] = v2;
    v5 = *(v4 + 32);

    v18 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_23E58A368;
    v8 = MEMORY[0x277D837D0];

    return (v18)(1105, v0 + 9, v8, &protocol witness table for String, v1, v4);
  }

  else
  {
    sub_23E562510((v0 + 2), &qword_27E346590, &unk_23E5CC300);
    v17 = v0[1];

    return v17(1);
  }
}

uint64_t sub_23E58A368()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_23E596BEC;
  }

  else
  {
    v4 = sub_23E596BF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E58A498()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_23E596C10;
  }

  else
  {
    v4 = sub_23E596BFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E58A750(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E596BF4;

  return sub_23E589FE4(v5, v7);
}

uint64_t sub_23E58A824(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_23E58A848, 0, 0);
}

uint64_t sub_23E58A848()
{
  if (!ASSecureCloudEnabled())
  {
    v10 = v0[12];
    v11 = v0[11];
    v12 = (v0[13] + OBJC_IVAR____ASActivitySharingClient_transportClient);
    v13 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v0[7] = v11;
    v0[8] = v10;
    v14 = *(v13 + 64);

    v19 = v14 + *v14;
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_23E58A498;

    __asm { BRAA            X8, X16 }
  }

  sub_23E5958CC(v0[13] + OBJC_IVAR____ASActivitySharingClient_secureCloudClient, (v0 + 2), &qword_27E346590, &unk_23E5CC300);
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[9] = v3;
    v0[10] = v2;
    v5 = *(v4 + 32);

    v18 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_23E58A368;
    v8 = MEMORY[0x277D837D0];

    return (v18)(1106, v0 + 9, v8, &protocol witness table for String, v1, v4);
  }

  else
  {
    sub_23E562510((v0 + 2), &qword_27E346590, &unk_23E5CC300);
    v17 = v0[1];

    return v17(1);
  }
}

uint64_t sub_23E58AD30(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E596BF4;

  return sub_23E58A824(v5, v7);
}

uint64_t sub_23E58AE04(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_23E58AE28, 0, 0);
}

uint64_t sub_23E58AE28()
{
  if (!ASSecureCloudEnabled())
  {
    v10 = v0[12];
    v11 = v0[11];
    v12 = (v0[13] + OBJC_IVAR____ASActivitySharingClient_transportClient);
    v13 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v0[7] = v11;
    v0[8] = v10;
    v14 = *(v13 + 64);

    v19 = v14 + *v14;
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_23E58A498;

    __asm { BRAA            X8, X16 }
  }

  sub_23E5958CC(v0[13] + OBJC_IVAR____ASActivitySharingClient_secureCloudClient, (v0 + 2), &qword_27E346590, &unk_23E5CC300);
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[9] = v3;
    v0[10] = v2;
    v5 = *(v4 + 32);

    v18 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_23E58A368;
    v8 = MEMORY[0x277D837D0];

    return (v18)(1107, v0 + 9, v8, &protocol witness table for String, v1, v4);
  }

  else
  {
    sub_23E562510((v0 + 2), &qword_27E346590, &unk_23E5CC300);
    v17 = v0[1];

    return v17(1);
  }
}

uint64_t sub_23E58B310(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E596BF4;

  return sub_23E58AE04(v5, v7);
}

uint64_t sub_23E58B3E4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  *(v4 + 104) = a2;
  *(v4 + 161) = a1;
  return MEMORY[0x2822009F8](sub_23E58B40C, 0, 0);
}

uint64_t sub_23E58B40C()
{
  v1 = *(v0 + 112);

  if (!ASSecureCloudEnabled())
  {
    v11 = *(v0 + 112);
    v12 = *(v0 + 104);
    v13 = *(v0 + 161);
    v14 = (*(v0 + 120) + OBJC_IVAR____ASActivitySharingClient_transportClient);
    v15 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    *(v0 + 56) = v13;
    *(v0 + 64) = v12;
    *(v0 + 72) = v11;
    v16 = *(v15 + 64);
    v23 = v16 + *v16;
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = sub_23E58B8B0;

    __asm { BRAA            X8, X16 }
  }

  sub_23E5958CC(*(v0 + 120) + OBJC_IVAR____ASActivitySharingClient_secureCloudClient, v0 + 16, &qword_27E346590, &unk_23E5CC300);
  v2 = *(v0 + 40);
  if (v2)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 161);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v5;
    *(v0 + 88) = v4;
    *(v0 + 96) = v3;
    v7 = *(v6 + 32);

    v21 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_23E58B77C;

    return (v21)(1158, v0 + 80, &type metadata for SetMuteEnabledTransportItem, &protocol witness table for SetMuteEnabledTransportItem, v2, v6);
  }

  else
  {
    v19 = *(v0 + 112);

    sub_23E562510(v0 + 16, &qword_27E346590, &unk_23E5CC300);
    v20 = *(v0 + 8);

    return v20(1);
  }
}

uint64_t sub_23E58B77C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = sub_23E596BE0;
  }

  else
  {
    v6 = sub_23E596BD0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23E58B8B0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 72);

  if (v0)
  {
    v6 = sub_23E596C14;
  }

  else
  {
    v6 = sub_23E596C00;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23E58BB74(char a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_23E5C8F40();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_23E596BF4;

  return sub_23E58B3E4(a1, v7, v9);
}

uint64_t sub_23E58BC58(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  *(v4 + 104) = a2;
  *(v4 + 161) = a1;
  return MEMORY[0x2822009F8](sub_23E58BC80, 0, 0);
}

uint64_t sub_23E58BC80()
{
  v1 = *(v0 + 112);

  if (!ASSecureCloudEnabled())
  {
    v11 = *(v0 + 112);
    v12 = *(v0 + 104);
    v13 = *(v0 + 161);
    v14 = (*(v0 + 120) + OBJC_IVAR____ASActivitySharingClient_transportClient);
    v15 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    *(v0 + 56) = v13;
    *(v0 + 64) = v12;
    *(v0 + 72) = v11;
    v16 = *(v15 + 64);
    v23 = v16 + *v16;
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 144) = v18;
    *v18 = v0;
    v18[1] = sub_23E58C204;

    __asm { BRAA            X8, X16 }
  }

  sub_23E5958CC(*(v0 + 120) + OBJC_IVAR____ASActivitySharingClient_secureCloudClient, v0 + 16, &qword_27E346590, &unk_23E5CC300);
  v2 = *(v0 + 40);
  if (v2)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 161);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v5;
    *(v0 + 88) = v4;
    *(v0 + 96) = v3;
    v7 = *(v6 + 32);

    v21 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_23E58BFF0;

    return (v21)(1159, v0 + 80, &type metadata for SetActivityDataVisibleTransportItem, &protocol witness table for SetActivityDataVisibleTransportItem, v2, v6);
  }

  else
  {
    v19 = *(v0 + 112);

    sub_23E562510(v0 + 16, &qword_27E346590, &unk_23E5CC300);
    v20 = *(v0 + 8);

    return v20(1);
  }
}

uint64_t sub_23E58BFF0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 96);

  if (v0)
  {
    v6 = sub_23E58C194;
  }

  else
  {
    v6 = sub_23E58C124;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23E58C124()
{
  v1 = *(v0 + 112);

  sub_23E593610(v0 + 16);
  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_23E58C194()
{
  v1 = v0[14];

  sub_23E593610((v0 + 2));
  v2 = v0[17];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_23E58C204()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 72);

  if (v0)
  {
    v6 = sub_23E58C354;
  }

  else
  {
    v6 = sub_23E58C338;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_23E58C500(char a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_23E5C8F40();
  v9 = v8;
  v4[4] = v8;
  a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_23E58C5E4;

  return sub_23E58BC58(a1, v7, v9);
}

uint64_t sub_23E58C5E4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = sub_23E5C8B80();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 24), a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_23E58C798(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E58C7BC, 0, 0);
}

void sub_23E58C7BC()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = (v0[6] + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v0[2] = v2;
  v0[3] = v1;
  v5 = *(v4 + 64);

  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23E58C950;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E58C950()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_23E596BD4;
  }

  else
  {
    v4 = sub_23E596C04;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E58CC08(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E596BF4;

  return sub_23E58C798(v5, v7);
}

uint64_t sub_23E58CCDC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E58CD00, 0, 0);
}

void sub_23E58CD00()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = (v0[6] + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v0[2] = v2;
  v0[3] = v1;
  v5 = *(v4 + 64);

  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23E58C950;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E58D01C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E596BF4;

  return sub_23E58CCDC(v5, v7);
}

uint64_t sub_23E58D0F0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E58D114, 0, 0);
}

void sub_23E58D114()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = (v0[6] + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v0[2] = v2;
  v0[3] = v1;
  v5 = *(v4 + 64);

  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23E58C950;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E58D430(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E596BF4;

  return sub_23E58D0F0(v5, v7);
}

uint64_t sub_23E58D504(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E58D528, 0, 0);
}

void sub_23E58D528()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = (v0[6] + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v0[2] = v2;
  v0[3] = v1;
  v5 = *(v4 + 64);

  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23E58C950;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E58D844(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E596BF4;

  return sub_23E58D504(v5, v7);
}

uint64_t sub_23E58D918(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23E58D93C, 0, 0);
}

void sub_23E58D93C()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = (v0[6] + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v0[2] = v2;
  v0[3] = v1;
  v5 = *(v4 + 64);

  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23E58DAD0;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E58DAD0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_23E58DC1C;
  }

  else
  {
    v4 = sub_23E58DC00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E58DDC0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E596BF4;

  return sub_23E58D918(v5, v7);
}

uint64_t sub_23E58DEB4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E58E000;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 40, 401, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E58E000()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_23E596BE4;
  }

  else
  {
    v3 = sub_23E596C08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E58E288(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_23E58E300, 0, 0);
}

uint64_t sub_23E58E300()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23E5625B0;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 48, 401, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E58E46C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E58E5B8;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 40, 402, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E58E5B8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_23E58E6E8;
  }

  else
  {
    v3 = sub_23E58E6CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E58E878(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_23E58E8F0, 0, 0);
}

uint64_t sub_23E58E8F0()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23E58EA3C;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 48, 402, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E58EA3C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_23E58EB50;
  }

  else
  {
    v3 = sub_23E5626C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E58EB50()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = sub_23E5C8B80();
  (*(v2 + 16))(v2, 0, v3);

  _Block_release(*(v0 + 24));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23E58EBF4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23E58EC14, 0, 0);
}

void sub_23E58EC14()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 40) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  v4 = *(v3 + 64);
  v8 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_23E58ED90;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E58ED90()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_23E596BD8;
  }

  else
  {
    v3 = sub_23E596C0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E58EEA4()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_23E596BCC;
  }

  else
  {
    v3 = sub_23E596BF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E58EFD8()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E58E000;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 40, 404, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E58F298(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_23E58F310, 0, 0);
}

uint64_t sub_23E58F310()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23E5625B0;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 48, 404, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E58F47C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E58E000;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 40, 405, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E58F73C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_23E58F7B4, 0, 0);
}

uint64_t sub_23E58F7B4()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23E5625B0;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 48, 405, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E58F900(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23E58F920, 0, 0);
}

void sub_23E58F920()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 40) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  v4 = *(v3 + 64);
  v8 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_23E58FA9C;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E58FA9C()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_23E58FBCC;
  }

  else
  {
    v3 = sub_23E58FBB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E58FD6C(uint64_t a1, void *aBlock, void *a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_23E58FDE8, 0, 0);
}

void sub_23E58FDE8()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 40) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  v4 = *(v3 + 64);
  v8 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_23E58FF64;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E58FF64()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_23E5900F8;
  }

  else
  {
    v3 = sub_23E590078;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E590078()
{
  v1 = *(v0 + 48);

  (*(v1 + 16))(v1, *(v0 + 25), 0);
  _Block_release(*(v0 + 48));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E5900F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = sub_23E5C8B80();
  (*(v2 + 16))(v2, 0, v3);

  _Block_release(*(v0 + 48));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23E5901BC()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 40);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  v7 = sub_23E593770(0, &qword_280C08FF0, 0x277CE90A0);
  *v6 = v0;
  v6[1] = sub_23E590324;

  return (v9)(v0 + 16, 601, v7, &protocol witness table for ASCodableFriendList, v2, v3);
}

uint64_t sub_23E590324()
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
    v3 = sub_23E590438;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E590438()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = ASFriendsFromCodableFriendList();
    sub_23E593770(0, &qword_280C08FE8, 0x277CE90F8);
    sub_23E593708();
    v4 = sub_23E5C9140();
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_23E590690(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23E590738;

  return sub_23E59019C();
}

uint64_t sub_23E590738(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  if (v3)
  {
    a1 = sub_23E5C8B80();

    v9 = a1;
LABEL_3:
    v10 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    v9 = 0;
    goto LABEL_3;
  }

  sub_23E593770(0, &qword_280C08FE8, 0x277CE90F8);
  sub_23E593708();
  v11 = sub_23E5C9120();

  v10 = v11;
  v9 = 0;
  a1 = v11;
LABEL_6:
  v12 = *(v5 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_23E5908EC(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_23E590910, 0, 0);
}

void sub_23E590910()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = (v0[7] + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v0[2] = v2;
  v0[3] = v1;
  v5 = *(v4 + 56);

  v8 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  sub_23E593770(0, &qword_280C088E0, 0x277CE9098);
  *v7 = v0;
  v7[1] = sub_23E590AB4;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E590AB4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_23E5760D0;
  }

  else
  {
    v4 = sub_23E590BE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E590BE4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [objc_opt_self() friendWithCodableFriend_];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23E590E0C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E590EE0;

  return sub_23E5908EC(v5, v7);
}

uint64_t sub_23E590EE0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_23E5C8B80();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_23E59109C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_23E5910C0, 0, 0);
}

uint64_t sub_23E5910C0()
{
  if (!ASSecureCloudEnabled())
  {
    v10 = v0[12];
    v11 = v0[11];
    v12 = (v0[13] + OBJC_IVAR____ASActivitySharingClient_transportClient);
    v13 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v0[7] = v11;
    v0[8] = v10;
    v14 = *(v13 + 64);

    v19 = v14 + *v14;
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = sub_23E591620;

    __asm { BRAA            X8, X16 }
  }

  sub_23E5958CC(v0[13] + OBJC_IVAR____ASActivitySharingClient_secureCloudClient, (v0 + 2), &qword_27E346590, &unk_23E5CC300);
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[9] = v3;
    v0[10] = v2;
    v5 = *(v4 + 32);

    v18 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_23E591420;
    v8 = MEMORY[0x277D837D0];

    return (v18)(1157, v0 + 9, v8, &protocol witness table for String, v1, v4);
  }

  else
  {
    sub_23E562510((v0 + 2), &qword_27E346590, &unk_23E5CC300);
    v17 = v0[1];

    return v17(1);
  }
}
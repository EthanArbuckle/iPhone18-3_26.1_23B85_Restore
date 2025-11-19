__n128 __swift_memcpy21_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Interface.NetworkSignature(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Interface.NetworkSignature(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t sub_181F3E618()
{
  v1 = 0x6669636570736E75;
  v2 = 0x6D6165727473;
  if (*v0 != 2)
  {
    v2 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x6D61726761746164;
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

uint64_t sub_181F3E6D0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181E7EB7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_181F3E71C()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F3E7B4()
{
  sub_182AD30E8();
}

uint64_t sub_181F3E900()
{
  sub_182AD30E8();
}

uint64_t sub_181F3EA84()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F3EAD8()
{
  v1 = *v0;
  v2 = 0x64656C6261736964;
  v3 = 0x7461676572676761;
  v4 = 0x6142746567726174;
  if (v1 != 4)
  {
    v4 = 0x646E614865727570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7265766F646E6168;
  if (v1 != 1)
  {
    v5 = 0x7463617265746E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_181F3EBB0()
{
  v1 = 0x746C7561666564;
  v2 = 0x74696269686F7270;
  if (*v0 != 2)
  {
    v2 = 0x6574736973726570;
  }

  if (*v0)
  {
    v1 = 0x776F6C6C61;
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

uint64_t sub_181F3EC2C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181F48244(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_181F3EC58()
{
  v1 = *v0;
  v2 = 0x6666652074736562;
  v3 = 0xD000000000000011;
  v4 = 0x69736E6F70736572;
  if (v1 != 4)
  {
    v4 = 0x6E696C616E676973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x756F72676B636162;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7Network10NWEndpointO11ScreenStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_181F3ED80()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t sub_181F3EDC4()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x70752069662D6977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_181F3EE28()
{
  v1 = 1919251317;
  if (*v0 != 1)
  {
    v1 = 0x65746973626577;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65706F6C65766564;
  }
}

uint64_t sub_181F3EE80()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F3EEC8()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

unint64_t sub_181F3EF0C()
{
  v1 = 0x726566657270;
  if (*v0 != 1)
  {
    v1 = 0x64696F7661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_181F3EF64()
{
  sub_182AD44E8();
  swift_getObjectType();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_181F3F014()
{
  sub_182AD44E8();
  swift_getObjectType();
  sub_182AD2EB8();
  return sub_182AD4558();
}

uint64_t sub_181F3F06C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = a2[1];
  ObjectType = swift_getObjectType();
  v7 = 0;
  return (*(v2 + 24))(v3, v4, &v7, ObjectType, v2) & 1;
}

uint64_t *sub_181F3F0D8(uint64_t *result)
{
  v2 = *result;
  v3 = result[1];
  if (*(v1 + 16))
  {
    *v1 = v2;
    *(v1 + 8) = v3;
    *(v1 + 16) = 0;
  }

  else if (*(v1 + 320))
  {
    v4 = *sub_182AD2388();

    *(v1 + 320) = v4;
    v5 = *(v4 + 24);
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 320);
    if (*(v8 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B8477C(isUniquelyReferenced_nonNull_native, v6);
      v8 = *(v1 + 320);
    }

    result = sub_181B855B4((v8 + 16), v8 + 40, v2, v3);
  }

  v9 = *(v1 + 288);
  if (!v9 || *(v9 + 48) < 2uLL)
  {
    return result;
  }

  if (*(v9 + 64))
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v10 = *sub_182AD2388();
  }

  v11 = *(v10 + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v13 = swift_isUniquelyReferenced_nonNull_native();
  if (*(v10 + 16) < v12 || (v13 & 1) == 0)
  {
    sub_181B8477C(v13, v12);
  }

  sub_181B855B4((v10 + 16), v10 + 40, v2, v3);
  sub_181F48984(v10);
}

uint64_t sub_181F3F258@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_1822C135C();

  *a1 = v2;
  return result;
}

uint64_t Parameters.server.setter(uint64_t result)
{
  v2 = *(v1 + 120);
  if (result)
  {
    if ((v2 & 0x200) == 0)
    {
      *(v1 + 120) = v2 | 0x200;
    }

    *(v1 + 210) = 0;
    if ((*(v1 + 124) & 6) != 4)
    {
      *(v1 + 124) = ~*(v1 + 124) & 4 | *(v1 + 124) & 0xFFFFFFFD;
    }
  }

  else if ((v2 & 0x200) != 0)
  {
    *(v1 + 120) = v2 & 0xFFFFFDFF;
  }

  return result;
}

uint64_t (*Parameters.server.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  v2 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x200) != 0;
  return sub_181F3F328;
}

uint64_t sub_181F3F328(uint64_t result, char a2)
{
  if (a2)
  {
    return Parameters.server.setter(*(result + 12));
  }

  v2 = *(result + 8);
  if (*(result + 12))
  {
    v3 = *result;
    if ((v2 & 0x200) == 0)
    {
      *(v3 + 120) = v2 | 0x200;
    }

    *(v3 + 210) = 0;
    if ((*(v3 + 124) & 6) != 4)
    {
      *(v3 + 124) = ~*(v3 + 124) & 4 | *(v3 + 124) & 0xFFFFFFFD;
    }
  }

  else if ((v2 & 0x200) != 0)
  {
    *(*result + 120) = v2 & 0xFFFFFDFF;
  }

  return result;
}

uint64_t sub_181F3F3B4()
{
  sub_182AD44E8();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t sub_181F3F3FC()
{
  sub_182AD44E8();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t Parameters.defaultStack.setter(uint64_t a1)
{

  *(v1 + 344) = a1;
  return result;
}

uint64_t sub_181F3F49C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  if (!a2)
  {
    sub_182AD4518();
    if (a3)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  sub_182AD4518();
  MEMORY[0x1865DB070](a2[3]);
  v9 = a2[4];
  if (a2[2] >= a2[3] + v9)
  {
    v10 = a2[3] + v9;
  }

  else
  {
    v10 = a2[2];
  }

  v18 = a2[4];
  v20 = v10;

  while (1)
  {
    if (v9 != v10)
    {
      goto LABEL_6;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v9 = v18;
    v10 = v20;
LABEL_6:
    v18 = v9 + 1;
    swift_getObjectType();
    sub_182AD2EB8();
    ++v9;
  }

  if (a3)
  {
LABEL_11:
    sub_182AD4518();
    MEMORY[0x1865DB070](a3[3]);
    v11 = a3[4];
    if (a3[2] >= a3[3] + v11)
    {
      v12 = a3[3] + v11;
    }

    else
    {
      v12 = a3[2];
    }

    v19 = a3[4];
    v21 = v12;

    while (1)
    {
      if (v11 == v12)
      {
        if ((sub_181F47FDC() & 1) == 0)
        {

          if (a4)
          {
            goto LABEL_20;
          }

LABEL_24:
          sub_182AD4518();
          if (!a5)
          {
            return sub_182AD4518();
          }

LABEL_21:
          sub_182AD4518();
          hash = nw_proxy_config_get_hash(a5);
          return MEMORY[0x1865DB070](hash);
        }

        v11 = v19;
        v12 = v21;
      }

      v19 = v11 + 1;
      v13 = swift_unknownObjectRetain();
      v14 = nw_proxy_config_get_hash(v13);
      MEMORY[0x1865DB070](v14);
      swift_unknownObjectRelease();
      ++v11;
    }
  }

LABEL_23:
  sub_182AD4518();
  if (!a4)
  {
    goto LABEL_24;
  }

LABEL_20:
  sub_182AD4518();
  v15 = nw_proxy_config_get_hash(a4);
  MEMORY[0x1865DB070](v15);
  if (a5)
  {
    goto LABEL_21;
  }

  return sub_182AD4518();
}

uint64_t sub_181F3F6A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_182AD44E8();
  sub_181F3F49C(v6, v1, v2, v4, v3);
  return sub_182AD4558();
}

uint64_t sub_181F3F70C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_182AD44E8();
  sub_181F3F49C(v6, v1, v2, v4, v3);
  return sub_182AD4558();
}

uint64_t sub_181F3F784()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_181F3F49C(v7, v2, v3, v4, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return sub_182AD4558();
}

uint64_t sub_181F3F828(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_181F3F49C(a1, v4, v5, v6, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_181F3F8C8()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_181F3F49C(v7, v2, v3, v4, v5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return sub_182AD4558();
}

uint64_t sub_181F3F968(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(*a2 + 16);
  v7 = *(*a2 + 24);
  v8 = *(*a2 + 32);
  v9 = *(*a2 + 40);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v10 = sub_181F3F498(v2, v3, v4, v5, v6, v7, v8, v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v10 & 1;
}

uint64_t sub_181F3FA68()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_182AD4518();
  if (v1)
  {
    v2 = v1[2];
    v3 = v1[3];
    v4 = v1[4];
    v5 = v1[5];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_181F3F49C(v7, v2, v3, v4, v5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return sub_182AD4558();
}

uint64_t sub_181F3FB28(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    return sub_182AD4518();
  }

  sub_182AD4518();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_181F3F49C(a1, v4, v5, v6, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_181F3FBF8()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_182AD4518();
  if (v1)
  {
    v2 = v1[2];
    v3 = v1[3];
    v4 = v1[4];
    v5 = v1[5];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_181F3F49C(v7, v2, v3, v4, v5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return sub_182AD4558();
}

uint64_t sub_181F3FCC0()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = xpc_hash(v1);
  MEMORY[0x1865DB070](v2);
  return sub_182AD4558();
}

uint64_t sub_181F3FD3C()
{
  v1 = *v0;
  sub_182AD44E8();
  v2 = xpc_hash(v1);
  MEMORY[0x1865DB070](v2);
  return sub_182AD4558();
}

uint64_t sub_181F3FDA4(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v17);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v17, v18);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v21 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v19);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  result = ProtocolStack.transport.getter(&v17);
  v12 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v13 = v17;
    if (v18 >> 61 == 1)
    {
      v14 = v17 + *(*v17 + 128);
      result = swift_beginAccess();
      if (*(v14 + 40) == 2)
      {
        __break(1u);
        return result;
      }

      v15 = HIDWORD(*(v14 + 40));
      if (a1)
      {
        if ((v15 & 0x2000) == 0)
        {
          v16 = v15 | 0x2000;
LABEL_14:
          *(v14 + 44) = v16;
        }
      }

      else if ((v15 & 0x2000) != 0)
      {
        v16 = v15 & 0xFFFFDFFF;
        goto LABEL_14;
      }
    }

    return sub_181A53008(v13, v12);
  }

  return result;
}

uint64_t sub_181F3FF68(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v17);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v17, v18);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v21 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v19);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  result = ProtocolStack.transport.getter(&v17);
  v12 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v13 = v17;
    if (v18 >> 61 == 1)
    {
      v14 = v17 + *(*v17 + 128);
      result = swift_beginAccess();
      if (*(v14 + 40) == 2)
      {
        __break(1u);
        return result;
      }

      v15 = HIDWORD(*(v14 + 40));
      if (a1)
      {
        if ((v15 & 0x4000) == 0)
        {
          v16 = v15 | 0x4000;
LABEL_14:
          *(v14 + 44) = v16;
        }
      }

      else if ((v15 & 0x4000) != 0)
      {
        v16 = v15 & 0xFFFFBFFF;
        goto LABEL_14;
      }
    }

    return sub_181A53008(v13, v12);
  }

  return result;
}

uint64_t sub_181F4012C(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v17);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v17, v18);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v21 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v19);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  result = ProtocolStack.transport.getter(&v17);
  v12 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v13 = v17;
    if (v18 >> 61 == 1)
    {
      v14 = v17 + *(*v17 + 128);
      result = swift_beginAccess();
      if (*(v14 + 40) == 2)
      {
        __break(1u);
        return result;
      }

      v15 = HIDWORD(*(v14 + 40));
      if (a1)
      {
        if ((v15 & 1) == 0)
        {
          v16 = v15 | 1;
LABEL_14:
          *(v14 + 44) = v16;
        }
      }

      else if (v15)
      {
        v16 = v15 & 0xFFFFFFFE;
        goto LABEL_14;
      }
    }

    return sub_181A53008(v13, v12);
  }

  return result;
}

uint64_t sub_181F402F0(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v17);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v17, v18);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v21 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v19);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  result = ProtocolStack.transport.getter(&v17);
  v12 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v13 = v17;
    if (v18 >> 61 == 1)
    {
      v14 = v17 + *(*v17 + 128);
      result = swift_beginAccess();
      if (*(v14 + 40) == 2)
      {
        __break(1u);
        return result;
      }

      v15 = HIDWORD(*(v14 + 40));
      if (a1)
      {
        if ((v15 & 2) == 0)
        {
          v16 = v15 | 2;
LABEL_14:
          *(v14 + 44) = v16;
        }
      }

      else if ((v15 & 2) != 0)
      {
        v16 = v15 & 0xFFFFFFFD;
        goto LABEL_14;
      }
    }

    return sub_181A53008(v13, v12);
  }

  return result;
}

uint64_t sub_181F404B4(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v17);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v17, v18);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v21 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v19);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  result = ProtocolStack.transport.getter(&v17);
  v12 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v13 = v17;
    if (v18 >> 61 == 1)
    {
      v14 = v17 + *(*v17 + 128);
      result = swift_beginAccess();
      if (*(v14 + 40) == 2)
      {
        __break(1u);
        return result;
      }

      v15 = HIDWORD(*(v14 + 40));
      if (a1)
      {
        if ((v15 & 0x20) == 0)
        {
          v16 = v15 | 0x20;
LABEL_14:
          *(v14 + 44) = v16;
        }
      }

      else if ((v15 & 0x20) != 0)
      {
        v16 = v15 & 0xFFFFFFDF;
        goto LABEL_14;
      }
    }

    return sub_181A53008(v13, v12);
  }

  return result;
}

uint64_t sub_181F40678(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v17);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v17, v18);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v21 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v19);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  result = ProtocolStack.transport.getter(&v17);
  v12 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v13 = v17;
    if (v18 >> 61 == 1)
    {
      v14 = v17 + *(*v17 + 128);
      result = swift_beginAccess();
      if (*(v14 + 40) == 2)
      {
        __break(1u);
        return result;
      }

      v15 = HIDWORD(*(v14 + 40));
      if (a1)
      {
        if ((v15 & 0x40) == 0)
        {
          v16 = v15 | 0x40;
LABEL_14:
          *(v14 + 44) = v16;
        }
      }

      else if ((v15 & 0x40) != 0)
      {
        v16 = v15 & 0xFFFFFFBF;
        goto LABEL_14;
      }
    }

    return sub_181A53008(v13, v12);
  }

  return result;
}

uint64_t sub_181F4083C(int a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v15);
  if ((~v16 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v15, v16);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v19 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v17);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  result = ProtocolStack.transport.getter(&v15);
  v12 = v16;
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v13 = v15;
    if (v16 >> 61 == 1)
    {
      v14 = v15 + *(*v15 + 128);
      result = swift_beginAccess();
      if (*(v14 + 40) == 2)
      {
        __break(1u);
        return result;
      }

      *(v14 + 16) = a1;
    }

    return sub_181A53008(v13, v12);
  }

  return result;
}

uint64_t sub_181F409E0(int a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v15);
  if ((~v16 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v15, v16);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v17, 0, sizeof(v17));
    v18 = 0;
    v19 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v17);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  result = ProtocolStack.transport.getter(&v15);
  v12 = v16;
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v13 = v15;
    if (v16 >> 61 == 1)
    {
      v14 = v15 + *(*v15 + 128);
      result = swift_beginAccess();
      if (*(v14 + 40) == 2)
      {
        __break(1u);
        return result;
      }

      *(v14 + 20) = a1;
    }

    return sub_181A53008(v13, v12);
  }

  return result;
}

uint64_t sub_181F40B84(char a1)
{
  v3 = *(v1 + 344);
  ProtocolStack.transport.getter(&v17);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v17, v18);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v21 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v19);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    sub_181A5301C(v9, v10);
  }

  result = ProtocolStack.transport.getter(&v17);
  v12 = v18;
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v13 = v17;
    if (v18 >> 61 == 1)
    {
      v14 = v17 + *(*v17 + 128);
      result = swift_beginAccess();
      if (*(v14 + 40) == 2)
      {
        __break(1u);
        return result;
      }

      v15 = HIDWORD(*(v14 + 40));
      if (a1)
      {
        if ((v15 & 0x200) == 0)
        {
          v16 = v15 | 0x200;
LABEL_14:
          *(v14 + 44) = v16;
        }
      }

      else if ((v15 & 0x200) != 0)
      {
        v16 = v15 & 0xFFFFFDFF;
        goto LABEL_14;
      }
    }

    return sub_181A53008(v13, v12);
  }

  return result;
}

uint64_t sub_181F40D48()
{
  v1 = v0;
  v2 = *(v0 + 120);
  if ((v2 & 0x20000) != 0)
  {
    *(v0 + 120) = v2 & 0xFFFDFFFF;
  }

  v3 = *(v0 + 344);
  ProtocolStack.transport.getter(&v12);
  if ((~v13 & 0xF000000000000007) != 0)
  {
    result = sub_181A53008(v12, v13);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_1ED411C48 + 1);
    v5 = unk_1ED411C58;
    v6 = byte_1ED411C60;
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    v16 = 0x100000201;
    v7 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v8 = sub_181AAC92C(v7, v4, v5, v6, v14);
    v9 = *(v3 + 32);
    v10 = *(v3 + 40);
    *(v3 + 32) = v8;
    *(v3 + 40) = 0x2000000000000000;
    sub_181F49A24(v4, v5, v6);
    result = sub_181A5301C(v9, v10);
  }

  *(v1 + 113) = 2;
  if ((*(v1 + 214) & 0x10) == 0)
  {
    *(v1 + 214) |= 0x10u;
  }

  return result;
}

void *sub_181F40E9C@<X0>(void (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  *__dst = 0;
  *&__dst[8] = 0;
  __dst[16] = 1;
  *&__dst[25] = 0;
  *&__dst[17] = 0;
  __dst[33] = 1;
  memset(&__dst[36], 0, 32);
  __dst[68] = 1;
  sub_181A53D78(&__dst[128]);
  *&__dst[328] = 0;
  *&__dst[336] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, __src);
  v4 = v27;
  *&__dst[352] = v28;
  *&__dst[368] = v29;
  *&__dst[384] = v30;
  v32[8] = *&__dst[256];
  v32[9] = *&__dst[272];
  v32[10] = *&__dst[288];
  v32[4] = *&__dst[192];
  v32[5] = *&__dst[208];
  v32[6] = *&__dst[224];
  v32[7] = *&__dst[240];
  v32[0] = *&__dst[128];
  v32[1] = *&__dst[144];
  v32[2] = *&__dst[160];
  v32[3] = *&__dst[176];
  sub_181A41E7C(v32);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__dst, __src, 0x158uLL);
  *&__dst[344] = v4;
  v5 = qword_1ED40FF40;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_1ED411BF0 + 1);
  v7 = unk_1ED411C00;
  v8 = byte_1ED411C08;
  v9 = xmmword_1ED411BF0;
  type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
  swift_allocObject();
  sub_181F49A24(v6, v7, v8);
  v10 = sub_181AACB6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
  swift_allocObject();
  v11 = sub_181AA94EC(v9, v6, v7, v8, v10);
  if (a1)
  {

    a1(v11);
    sub_181A554F4(a1);
  }

  v12 = *(v4 + 32);
  v13 = *(v4 + 40);
  *(v4 + 32) = v11;
  *(v4 + 40) = 0x6000000000000000;

  sub_181A5301C(v12, v13);

  ProtocolStack.transport.getter(&v24);
  v14 = v25;
  if ((~v25 & 0xF000000000000007) != 0)
  {
    v22 = v24;

    sub_181A554F4(a1);
    sub_181A53008(v22, v14);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v15 = *(&xmmword_1ED411C48 + 1);
    v16 = unk_1ED411C58;
    v17 = byte_1ED411C60;
    v18 = xmmword_1ED411C48;

    sub_181A554F4(a1);
    memset(__src, 0, 40);
    *&__src[40] = 0x100000201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v19 = sub_181AAC92C(v18, v15, v16, v17, __src);
    v20 = *(v4 + 32);
    v21 = *(v4 + 40);
    *(v4 + 32) = v19;
    *(v4 + 40) = 0x2000000000000000;
    sub_181F49A24(v15, v16, v17);
    sub_181A5301C(v20, v21);
  }

  __dst[113] = 2;
  return memcpy(a2, __dst, 0x188uLL);
}

void *sub_181F411E4@<X0>(void (*a1)(uint64_t)@<X0>, void (*a2)(void)@<X2>, void *a3@<X8>)
{
  __src[0] = 0uLL;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 9) = 0;
  *(&__src[1] + 1) = 0;
  BYTE1(__src[2]) = 1;
  *(&__src[2] + 4) = 0u;
  *(&__src[3] + 4) = 0u;
  BYTE4(__src[4]) = 1;
  sub_181A53D78(&__src[8]);
  *(&__src[20] + 1) = 0;
  *&__src[21] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, &v35);
  __src[4] = v39;
  __src[5] = v40;
  __src[6] = v41;
  __src[0] = v35;
  __src[1] = v36;
  __src[2] = v37;
  __src[3] = v38;
  v5 = v43;
  __src[22] = v58;
  __src[23] = v59;
  v6 = v57;
  *&__src[7] = v42;
  *&__src[24] = v60;
  v62[8] = __src[16];
  v62[9] = __src[17];
  v62[10] = __src[18];
  v62[4] = __src[12];
  v62[5] = __src[13];
  v62[6] = __src[14];
  v62[7] = __src[15];
  v62[0] = __src[8];
  v62[1] = __src[9];
  v62[2] = __src[10];
  v62[3] = __src[11];
  sub_181A41E7C(v62);
  sub_181D9D680(0, 0xF000000000000000);
  v31 = v5;
  DWORD2(__src[7]) = v5;
  *(&__src[18] + 12) = v55;
  *(&__src[19] + 12) = *v56;
  *(&__src[20] + 8) = *&v56[12];
  *(&__src[16] + 12) = v53;
  *(&__src[17] + 12) = v54;
  *(&__src[13] + 12) = v50;
  *(&__src[14] + 12) = v51;
  *(&__src[15] + 12) = v52;
  *(&__src[9] + 12) = v46;
  *(&__src[10] + 12) = v47;
  *(&__src[11] + 12) = v48;
  *(&__src[12] + 12) = v49;
  *(&__src[7] + 12) = v44;
  *(&__src[8] + 12) = v45;
  *(&__src[21] + 1) = v6;

  options_0 = _nw_quic_create_options_0();
  if (a1)
  {

    a1(options_0);
    sub_181A554F4(a1);
  }

  if (a2)
  {
    v8 = qword_1ED40FF40;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = *(&xmmword_1ED411BF0 + 1);
    v10 = unk_1ED411C00;
    v11 = byte_1ED411C08;
    v12 = xmmword_1ED411BF0;
    type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
    swift_allocObject();
    sub_181F49A24(v9, v10, v11);
    v13 = sub_181AACB6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
    swift_allocObject();
    v14 = sub_181AA94EC(v12, v9, v10, v11, v13);
    a2();
    sub_181A554F4(a2);
    v15 = *(*v14 + 128);
    swift_beginAccess();
    v16 = *(v14 + v15);

    if (v16)
    {
      v17 = *(*options_0 + 128);
      swift_beginAccess();
      v18 = *(options_0 + v17);
      if (v18)
      {
        swift_beginAccess();
        *(v18 + 48) = v16;
      }
    }
  }

  v19 = *(v6 + 32);
  v20 = *(v6 + 40);
  *(v6 + 32) = options_0;
  *(v6 + 40) = 0x4000000000000000;

  sub_181A5301C(v19, v20);

  ProtocolStack.transport.getter(&v33);
  v21 = v34;
  if ((~v34 & 0xF000000000000007) != 0)
  {
    v29 = v33;

    sub_181A554F4(a2);
    sub_181A554F4(a1);
    sub_181A53008(v29, v21);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v22 = *(&xmmword_1ED411C48 + 1);
    v23 = unk_1ED411C58;
    v24 = byte_1ED411C60;
    v25 = xmmword_1ED411C48;

    sub_181A554F4(a2);
    sub_181A554F4(a1);
    v35 = 0u;
    v36 = 0u;
    *&v37 = 0;
    *(&v37 + 1) = 0x100000201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v26 = sub_181AAC92C(v25, v22, v23, v24, &v35);
    v27 = *(v6 + 32);
    v28 = *(v6 + 40);
    *(v6 + 32) = v26;
    *(v6 + 40) = 0x2000000000000000;
    sub_181F49A24(v22, v23, v24);
    sub_181A5301C(v27, v28);
  }

  BYTE1(__src[7]) = 2;
  if ((v31 & 0x2000) == 0)
  {
    DWORD2(__src[7]) = v31 | 0x2000;
  }

  return memcpy(a3, __src, 0x188uLL);
}

void *sub_181F416D0@<X0>(void (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  __src[0] = 0uLL;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 9) = 0;
  *(&__src[1] + 1) = 0;
  BYTE1(__src[2]) = 1;
  *(&__src[2] + 4) = 0u;
  *(&__src[3] + 4) = 0u;
  BYTE4(__src[4]) = 1;
  sub_181A53D78(&__src[8]);
  *(&__src[20] + 1) = 0;
  *&__src[21] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, &v21);
  __src[4] = v25;
  __src[5] = v26;
  __src[6] = v27;
  __src[0] = v21;
  __src[1] = v22;
  __src[2] = v23;
  __src[3] = v24;
  v4 = v29;
  __src[22] = v44;
  __src[23] = v45;
  v5 = v43;
  *&__src[7] = v28;
  *&__src[24] = v46;
  v48[8] = __src[16];
  v48[9] = __src[17];
  v48[10] = __src[18];
  v48[4] = __src[12];
  v48[5] = __src[13];
  v48[6] = __src[14];
  v48[7] = __src[15];
  v48[0] = __src[8];
  v48[1] = __src[9];
  v48[2] = __src[10];
  v48[3] = __src[11];
  sub_181A41E7C(v48);
  sub_181D9D680(0, 0xF000000000000000);
  DWORD2(__src[7]) = v4;
  *(&__src[18] + 12) = v41;
  *(&__src[19] + 12) = *v42;
  *(&__src[20] + 8) = *&v42[12];
  *(&__src[16] + 12) = v39;
  *(&__src[17] + 12) = v40;
  *(&__src[13] + 12) = v36;
  *(&__src[14] + 12) = v37;
  *(&__src[15] + 12) = v38;
  *(&__src[9] + 12) = v32;
  *(&__src[10] + 12) = v33;
  *(&__src[11] + 12) = v34;
  *(&__src[12] + 12) = v35;
  *(&__src[7] + 12) = v30;
  *(&__src[8] + 12) = v31;
  *(&__src[21] + 1) = v5;

  options_0 = _nw_quic_create_options_0();

  a1(options_0);

  v7 = *(v5 + 32);
  v8 = *(v5 + 40);
  *(v5 + 32) = options_0;
  *(v5 + 40) = 0x4000000000000000;

  sub_181A5301C(v7, v8);

  ProtocolStack.transport.getter(&v19);
  v9 = v20;
  if ((~v20 & 0xF000000000000007) != 0)
  {
    v17 = v19;

    sub_181A53008(v17, v9);
  }

  else
  {
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v10 = *(&xmmword_1ED411C48 + 1);
    v11 = unk_1ED411C58;
    v12 = byte_1ED411C60;
    v13 = xmmword_1ED411C48;

    v21 = 0u;
    v22 = 0u;
    *&v23 = 0;
    *(&v23 + 1) = 0x100000201;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v14 = sub_181AAC92C(v13, v10, v11, v12, &v21);
    v15 = *(v5 + 32);
    v16 = *(v5 + 40);
    *(v5 + 32) = v14;
    *(v5 + 40) = 0x2000000000000000;
    sub_181F49A24(v10, v11, v12);
    sub_181A5301C(v15, v16);
  }

  BYTE1(__src[7]) = 2;
  if ((v4 & 0x2000) == 0)
  {
    DWORD2(__src[7]) = v4 | 0x2000;
  }

  return memcpy(a2, __src, 0x188uLL);
}

void *sub_181F419F0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, void (*a3)(void)@<X4>, uint64_t a4@<X6>, void (*a5)(uint64_t)@<X7>, void *a6@<X8>)
{
  *&__dst[8] = 0;
  *__dst = 0;
  __dst[16] = 1;
  *&__dst[25] = 0;
  *&__dst[17] = 0;
  __dst[33] = 1;
  memset(&__dst[36], 0, 32);
  __dst[68] = 1;
  sub_181A53D78(&__dst[128]);
  *&__dst[328] = 0;
  *&__dst[336] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, __src);
  v8 = v87;
  v9 = v88;
  *&__dst[360] = v89;
  *&__dst[376] = v90;
  v102[8] = *&__dst[256];
  v102[9] = *&__dst[272];
  v102[10] = *&__dst[288];
  v102[4] = *&__dst[192];
  v102[5] = *&__dst[208];
  v102[6] = *&__dst[224];
  v102[7] = *&__dst[240];
  v102[0] = *&__dst[128];
  v102[1] = *&__dst[144];
  v102[2] = *&__dst[160];
  v102[3] = *&__dst[176];
  sub_181A41E7C(v102);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__dst, __src, 0x158uLL);
  *&__dst[344] = v8;
  *&__dst[352] = v9;

  if (nw_protocol_copy_tls_definition())
  {
    v10 = swift_unknownObjectRetain();
    v11 = v10;
  }

  else
  {
    v10 = nw_protocol_copy_tls_definition();
    v11 = 0;
  }

  sub_181AA82B4(__src, v10, 0, 0, 0, 255, v11);
  v84[0] = *__src;
  v84[1] = *&__src[16];
  v84[2] = *&__src[32];
  v84[3] = *&__src[48];
  v85 = *&__src[64];
  v12 = *&__src[8];
  v13 = *&__src[16];
  v14 = __src[24];
  v15 = *&__src[32];
  v16 = *__src;
  sub_181F49A24(*&__src[8], *&__src[16], __src[24]);
  v17 = sub_181AA90F0(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A3A0);
  swift_allocObject();
  v18 = sub_181AA94EC(v16, v12, v13, v14, v17);
  sub_181F49A88(v84, &unk_1EA838740);
  if (a1)
  {

    (a1)(v18);
    sub_181A554F4(a1);
  }

  v68 = v18;
  options_0 = _nw_quic_create_options_0();
  if (a2)
  {

    a2(options_0);
    sub_181A554F4(a2);
  }

  v63 = a2;
  if (!a3)
  {
    goto LABEL_14;
  }

  v20 = qword_1ED40FF40;

  if (v20 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v21 = *(&xmmword_1ED411BF0 + 1);
    v22 = unk_1ED411C00;
    v23 = byte_1ED411C08;
    v24 = xmmword_1ED411BF0;
    type metadata accessor for QUICConnectionProtocol.QUICConnectionOptions();
    swift_allocObject();
    sub_181F49A24(v21, v22, v23);
    v25 = sub_181AACB6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838750);
    swift_allocObject();
    v26 = sub_181AA94EC(v24, v21, v22, v23, v25);
    a3();
    sub_181A554F4(a3);
    v27 = *(*v26 + 128);
    swift_beginAccess();
    v28 = *(v26 + v27);

    if (v28)
    {
      v29 = *(*options_0 + 128);
      swift_beginAccess();
      v30 = *(options_0 + v29);
      if (v30)
      {
        swift_beginAccess();
        *(v30 + 48) = v28;
      }
    }

LABEL_14:
    v31 = *(*options_0 + 184);
    swift_beginAccess();
    *(options_0 + v31) = 1;
    v32 = *(*options_0 + 128);
    swift_beginAccess();
    v33 = *(options_0 + v32);
    if (v33)
    {
      swift_beginAccess();
      v34 = *(v33 + 48);
      v35 = sub_181AA8428(&qword_1ED40FD40, &qword_1EA83A3A0);
      *(v34 + 112) = v68;
      *(v34 + 120) = v35;

      swift_unknownObjectRelease();
    }

    v64 = a1;
    if (qword_1ED410038 != -1)
    {
      swift_once();
    }

    v36 = *(&xmmword_1ED411C48 + 1);
    v37 = unk_1ED411C58;
    v38 = byte_1ED411C60;
    memset(v99, 0, sizeof(v99));
    v100 = 0;
    v101 = 0x100000201;
    v39 = xmmword_1ED411C48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
    swift_allocObject();
    v40 = sub_181AAC92C(v39, v36, v37, v38, v99);
    sub_181F49A24(v36, v37, v38);
    if (a5)
    {
      sub_181AA39C0(a5);
      a5(v40);
      sub_181A554F4(a5);
    }

    v41 = *(v8 + 32);
    v42 = *(v8 + 40);
    *(v8 + 32) = options_0;
    *(v8 + 40) = 0x4000000000000000;

    sub_181A5301C(v41, v42);

    *&v80 = 0;
    DWORD2(v80) = 0;
    BYTE12(v80) = 1;
    *(&v80 + 13) = 6;
    *&v81 = 0;
    BYTE8(v81) = 0;
    v43 = MEMORY[0x1E69E7CC0];
    *&v82 = MEMORY[0x1E69E7CC0];
    *(&v82 + 1) = MEMORY[0x1E69E7CC0];
    a1 = 2;
    v83 = 2;

    sub_181F48044(v44, 2, &v80);

    BYTE8(v81) = 2;
    v83 = 18;
    *&v76 = 0;
    DWORD2(v76) = 0;
    BYTE12(v76) = 1;
    *(&v76 + 13) = 6;
    BYTE8(v77) = 0;
    *&v78 = v43;
    *(&v78 + 1) = v43;
    v79 = 0;
    *&v77 = a4;

    sub_181B285A8(v45, 3, &v76);

    sub_181B28748(v46, 2, &v76, &unk_1ED40FF50, &unk_1EA838DE0, &unk_182AE6F00, 0x2000000000000000);

    v79 = 16;
    v47 = *sub_182AD2388();

    *&__dst[352] = v47;
    v97[0] = v80;
    v97[1] = v81;
    v97[2] = v82;
    v98 = v83;
    v48 = *(v47 + 24);
    v49 = v48 + 1;
    if (!__OFADD__(v48, 1))
    {
      break;
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v47 + 16) < v49 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B29AC4(isUniquelyReferenced_nonNull_native, v49);
    v47 = *&__dst[352];
  }

  result = sub_181B29C9C((v47 + 16), v47 + 40, v97);
  v52 = *&__dst[352];
  if (*&__dst[352])
  {
    v95[0] = v76;
    v95[1] = v77;
    v95[2] = v78;
    v96 = v79;
    v53 = *(*&__dst[352] + 24);
    v54 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      return result;
    }

    v55 = swift_isUniquelyReferenced_nonNull_native();
    if (*(v52 + 16) < v54 || (v55 & 1) == 0)
    {
      sub_181B29AC4(v55, v54);
      v52 = *&__dst[352];
    }

    sub_181B29C9C((v52 + 16), v52 + 40, v95);
  }

  ProtocolStack.transport.getter(&v74);
  if ((~v75 & 0xF000000000000007) != 0)
  {
    sub_181A53008(v74, v75);

    sub_181A554F4(a5);

    sub_181A554F4(a3);
    sub_181A554F4(v63);
    sub_181A554F4(v64);
    v70 = v80;
    v71 = v81;
    v72 = v82;
    v73 = v83;
    sub_181B29DA0(&v70);
  }

  else
  {
    v56 = *(&xmmword_1ED411C48 + 1);
    v57 = unk_1ED411C58;
    v58 = byte_1ED411C60;
    v59 = xmmword_1ED411C48;

    sub_181A554F4(a5);

    sub_181A554F4(a3);
    sub_181A554F4(v63);
    sub_181A554F4(v64);
    v70 = v80;
    v71 = v81;
    v72 = v82;
    v73 = v83;
    sub_181B29DA0(&v70);
    memset(v92, 0, sizeof(v92));
    v93 = 0;
    v94 = 0x100000201;
    swift_allocObject();
    v60 = sub_181AAC92C(v59, v56, v57, v58, v92);
    v61 = *(v8 + 32);
    v62 = *(v8 + 40);
    *(v8 + 32) = v60;
    *(v8 + 40) = 0x2000000000000000;
    sub_181F49A24(v56, v57, v58);
    sub_181A5301C(v61, v62);
  }

  __dst[113] = 2;
  v70 = v76;
  v71 = v77;
  v72 = v78;
  v73 = v79;
  sub_181B29DA0(&v70);
  return memcpy(a6, __dst, 0x188uLL);
}

void *sub_181F423F0@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  *__dst = 0;
  *&__dst[8] = 0;
  __dst[16] = 1;
  *&__dst[25] = 0;
  *&__dst[17] = 0;
  __dst[33] = 1;
  memset(&__dst[36], 0, 32);
  __dst[68] = 1;
  sub_181A53D78(&__dst[128]);
  *&__dst[328] = 0;
  *&__dst[336] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, __src);
  *&__dst[352] = v38;
  *&__dst[368] = v39;
  v6 = v37;
  *&__dst[384] = v40;
  v42[8] = *&__dst[256];
  v42[9] = *&__dst[272];
  v42[10] = *&__dst[288];
  v42[4] = *&__dst[192];
  v42[5] = *&__dst[208];
  v42[6] = *&__dst[224];
  v42[7] = *&__dst[240];
  v42[0] = *&__dst[128];
  v42[1] = *&__dst[144];
  v42[2] = *&__dst[160];
  v42[3] = *&__dst[176];
  sub_181A41E7C(v42);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__dst, __src, 0x158uLL);
  *&__dst[344] = v6;
  v7 = qword_1ED40FD30;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *(&xmmword_1ED411A98 + 1);
  v9 = unk_1ED411AA8;
  v10 = byte_1ED411AB0;
  v11 = xmmword_1ED411A98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DD0);
  swift_allocObject();
  v12 = sub_181CFD414(v11, v8, v9, v10, 0);
  v13 = (v12 + *(*v12 + 128));
  result = swift_beginAccess();
  if (v13[1])
  {
    __break(1u);
  }

  else
  {
    *v13 = a1;
    v15 = v6[4];
    v16 = v6[5];
    v6[4] = v12;
    v6[5] = 0x8000000000000000;
    sub_181F49A24(v8, v9, v10);
    sub_181A5301C(v15, v16);

    if (a2)
    {
      v17 = qword_1ED4102F0;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = *(&xmmword_1ED411D60 + 1);
      v19 = unk_1ED411D70;
      v20 = byte_1ED411D78;
      v21 = xmmword_1ED411D60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
      swift_allocObject();
      v22 = sub_181BB68A0(v21, v18, v19, v20, 0);
      sub_181F49A24(v18, v19, v20);
      a2(v22);
      sub_181A554F4(a2);
      swift_beginAccess();
      v23 = v6[6];
      v24 = v6[7];
      v6[6] = v22;
      v6[7] = 0;
      sub_181A52FE0(v23, v24);
    }

    ProtocolStack.transport.getter(&v34);
    v25 = v35;
    if ((~v35 & 0xF000000000000007) != 0)
    {
      v33 = v34;
      sub_181A554F4(a2);
      sub_181A53008(v33, v25);
    }

    else
    {
      if (qword_1ED410028 != -1)
      {
        swift_once();
      }

      v26 = *(&xmmword_1ED40FF68 + 1);
      v27 = unk_1ED40FF78;
      v28 = byte_1ED40FF80;
      v29 = xmmword_1ED40FF68;
      sub_181A554F4(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710);
      swift_allocObject();
      v30 = sub_181CFD414(v29, v26, v27, v28, 0);
      v31 = v6[4];
      v32 = v6[5];
      v6[4] = v30;
      v6[5] = 0;
      sub_181F49A24(v26, v27, v28);
      sub_181A5301C(v31, v32);
    }

    __dst[113] = 1;
    return memcpy(a3, __dst, 0x188uLL);
  }

  return result;
}

void *sub_181F42834@<X0>(void (*a1)(uint64_t)@<X0>, void *a2@<X8>)
{
  __src[0] = 0uLL;
  LOBYTE(__src[1]) = 1;
  *(&__src[1] + 1) = 0uLL;
  BYTE1(__src[2]) = 1;
  *(&__src[2] + 4) = 0u;
  *(&__src[3] + 4) = 0u;
  BYTE4(__src[4]) = 1;
  sub_181A53D78(&__src[8]);
  *(&__src[20] + 1) = 0;
  *&__src[21] = 0xF000000000000000;
  Parameters.init(noInternetProtocol:)(0, &v27);
  v3 = v40;
  v4 = v50;
  __src[22] = v51;
  __src[23] = v52;
  *&__src[24] = v53;
  v58[9] = __src[17];
  v58[10] = __src[18];
  v58[4] = __src[12];
  v58[5] = __src[13];
  v58[7] = __src[15];
  v58[8] = __src[16];
  v58[6] = __src[14];
  v58[0] = __src[8];
  v58[1] = __src[9];
  v58[2] = __src[10];
  v58[3] = __src[11];
  sub_181A41E7C(v58);
  sub_181D9D680(0, 0xF000000000000000);
  __src[10] = v37;
  __src[11] = v38;
  __src[12] = *v39;
  *(&__src[12] + 14) = *&v39[14];
  __src[6] = v33;
  __src[7] = v34;
  __src[8] = v35;
  __src[9] = v36;
  __src[2] = v29;
  __src[3] = v30;
  __src[4] = v31;
  __src[5] = v32;
  __src[0] = v27;
  __src[1] = v28;
  v23 = v3;
  BYTE6(__src[13]) = v3;
  *(&__src[18] + 7) = v46;
  *(&__src[19] + 7) = v47;
  *(&__src[20] + 7) = v48;
  *(&__src[16] + 7) = v44;
  *(&__src[17] + 7) = v45;
  BYTE7(__src[21]) = v49;
  *(&__src[14] + 7) = v42;
  *(&__src[15] + 7) = v43;
  *(&__src[13] + 7) = v41;
  *(&__src[21] + 1) = v4;
  v5 = qword_1ED410038;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_1ED411C48 + 1);
  v7 = unk_1ED411C58;
  v8 = byte_1ED411C60;
  v27 = 0u;
  v28 = 0u;
  *&v29 = 0;
  *(&v29 + 1) = 0x100000201;
  v9 = xmmword_1ED411C48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  swift_allocObject();
  v10 = sub_181AAC92C(v9, v6, v7, v8, &v27);
  sub_181F49A24(v6, v7, v8);
  if (a1)
  {
    sub_181AA39C0(a1);
    a1(v10);
    sub_181A554F4(a1);
  }

  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  *(v4 + 32) = v10;
  *(v4 + 40) = 0x2000000000000000;

  sub_181A5301C(v11, v12);

  ProtocolStack.transport.getter(&v25);
  v13 = v26;
  if ((~v26 & 0xF000000000000007) != 0)
  {
    v21 = v25;

    sub_181A554F4(a1);
    sub_181A53008(v21, v13);
  }

  else
  {
    v14 = *(&xmmword_1ED411C48 + 1);
    v15 = unk_1ED411C58;
    v16 = byte_1ED411C60;
    v17 = xmmword_1ED411C48;

    sub_181A554F4(a1);
    memset(v55, 0, sizeof(v55));
    v56 = 0;
    v57 = 0x100000201;
    swift_allocObject();
    v18 = sub_181AAC92C(v17, v14, v15, v16, v55);
    v19 = *(v4 + 32);
    v20 = *(v4 + 40);
    *(v4 + 32) = v18;
    *(v4 + 40) = 0x2000000000000000;
    sub_181F49A24(v14, v15, v16);
    sub_181A5301C(v19, v20);
  }

  BYTE1(__src[7]) = 2;
  if ((v23 & 4) == 0)
  {
    BYTE6(__src[13]) = v23 | 4;
  }

  return memcpy(a2, __src, 0x188uLL);
}

uint64_t sub_181F42BD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  nw_context_activate(*(*a1 + 16));
  v4 = nw_context_copy_cache_context(*(v3 + 16));
  type metadata accessor for NetworkContext();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  *(a2 + 280) = v5;
  return result;
}

uint64_t Parameters.context.setter(uint64_t a1)
{
  nw_context_activate(*(a1 + 16));
  v3 = nw_context_copy_cache_context(*(a1 + 16));

  type metadata accessor for NetworkContext();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  *(v1 + 280) = v4;
  return result;
}

uint64_t (*Parameters.context.modify(void *a1))(void *a1, char a2)
{
  v3 = *(v1 + 280);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_181F42CFC;
}

uint64_t sub_181F42CFC(void *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 16);
  if (a2)
  {

    nw_context_activate(v4);
    v5 = nw_context_copy_cache_context(*(v2 + 16));

    type metadata accessor for NetworkContext();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;

    *(v3 + 280) = v6;
  }

  else
  {
    nw_context_activate(*(*a1 + 16));
    v8 = nw_context_copy_cache_context(*(v2 + 16));

    type metadata accessor for NetworkContext();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;

    *(v3 + 280) = v9;
  }

  return result;
}

uint64_t Parameters.hash(into:)(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 17);
  v4 = *(v1 + 25);
  v5 = *(v1 + 33);
  v6 = *(v1 + 68);
  v49 = *(v1 + 113);
  v53 = *(v1 + 114);
  v60 = v1[39];
  v48 = v1[13];
  v56 = v1[42];
  v7 = v1[44];
  v55 = v1[40];
  v61 = v1[45];
  v57 = v1[46];
  v58 = v1[47];
  v59 = v1[48];
  v54 = *(v1 + 116);
  v51 = *(v1 + 96);
  v52 = *(v1 + 112);
  v46 = v1[9];
  v47 = v1[11];
  v50 = *(v1 + 80);
  if (v1[2])
  {
    sub_182AD4518();
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_182AD4518();
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v8 = *(v1 + 33);
  v9 = *(v1 + 68);
  v10 = *(v1 + 25);
  v11 = *(v1 + 17);
  v13 = *v1;
  v12 = v1[1];
  sub_182AD4518();
  *&v67 = v13;
  *(&v67 + 1) = v12;
  v3 = v11;
  v4 = v10;
  v6 = v9;
  sub_182AD44F8();
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_182AD4518();
  *&v67 = v3;
  *(&v67 + 1) = v4;
  sub_182AD44F8();
  if ((v6 & 1) == 0)
  {
LABEL_4:
    sub_182AD4518();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    sub_182AD4538();
    goto LABEL_8;
  }

LABEL_7:
  sub_182AD4518();
LABEL_8:
  v14 = v55;
  if (v50)
  {
    sub_182AD4518();
    if (!v51)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_182AD4518();
    if (!v52)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_182AD4518();
    goto LABEL_15;
  }

  sub_182AD4518();
  MEMORY[0x1865DB0B0](v46);
  if (v51)
  {
    goto LABEL_13;
  }

LABEL_10:
  sub_182AD4518();
  MEMORY[0x1865DB070](v47);
  if (v52)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_182AD4518();
  MEMORY[0x1865DB070](v48);
LABEL_15:
  MEMORY[0x1865DB070](v49);
  if (v53 != 2)
  {
    sub_182AD4518();
  }

  sub_182AD4518();
  sub_182AD4518();
  MEMORY[0x1865DB070](v54);
  sub_182AD4538();
  sub_182AD4538();
  v15 = *(v1 + 17);
  v75 = *(v1 + 16);
  v76 = v15;
  v77 = *(v1 + 18);
  v16 = *(v1 + 13);
  v71 = *(v1 + 12);
  v72 = v16;
  v17 = *(v1 + 15);
  v73 = *(v1 + 14);
  v74 = v17;
  v18 = *(v1 + 9);
  v67 = *(v1 + 8);
  v68 = v18;
  v19 = *(v1 + 11);
  v69 = *(v1 + 10);
  v70 = v19;
  sub_18226C71C(a1);
  if (v60)
  {
    sub_182AD4518();
    sub_182AD30E8();
    v20 = v56;
    if (v55)
    {
LABEL_19:
      sub_182AD4518();
      MEMORY[0x1865DB070](v55[3]);
      v21 = v55[4];
      if (v55[2] >= v55[3] + v21)
      {
        v22 = v55[3] + v21;
      }

      else
      {
        v22 = v55[2];
      }

      *&v67 = v55;
      *(&v67 + 1) = v21;
      *&v68 = v22;
      while (1)
      {
        if (v21 == v22)
        {
          if ((sub_181F47FDC() & 1) == 0)
          {

            goto LABEL_30;
          }

          v21 = *(&v67 + 1);
          v14 = v67;
          v22 = v68;
        }

        v23 = v21 + 1;
        *(&v67 + 1) = v21 + 1;
        v65 = *&v14[2 * v21 + 5];
        sub_182AD44F8();
        v21 = v23;
      }
    }
  }

  else
  {
    sub_182AD4518();
    v20 = v56;
    if (v55)
    {
      goto LABEL_19;
    }
  }

  sub_182AD4518();
LABEL_30:
  sub_182AD4518();
  if (v20 >> 60 != 15)
  {
    sub_182AD2168();
  }

  ProtocolStack.hash(into:)();
  if (v7)
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](v7[3]);
    v24 = v7[4];
    if (v7[2] >= v7[3] + v24)
    {
      v25 = v7[3] + v24;
    }

    else
    {
      v25 = v7[2];
    }

    v62 = v7;
    v63 = v7[4];
    v64 = v25;

    while (1)
    {
      if (v24 == v25)
      {
        if ((sub_181F47FDC() & 1) == 0)
        {

          if (v61)
          {
            goto LABEL_42;
          }

LABEL_64:
          sub_182AD4518();
          goto LABEL_70;
        }

        v24 = v63;
        v7 = v62;
        v25 = v64;
      }

      v63 = v24 + 1;
      v26 = &v7[7 * v24];
      v27 = *(v26 + 5);
      v28 = *(v26 + 7);
      v29 = *(v26 + 9);
      LOWORD(v70) = *(v26 + 44);
      v68 = v28;
      v69 = v29;
      v67 = v27;
      sub_181B29D44(&v67, &v65);
      sub_18221C2D8(a1);
      sub_181B29DA0(&v67);
      ++v24;
    }
  }

  sub_182AD4518();
  if (!v61)
  {
    goto LABEL_64;
  }

LABEL_42:
  sub_182AD4518();
  v31 = v61[2];
  v30 = v61[3];
  v32 = v61[4];
  v33 = v61[5];
  if (!v31)
  {
    sub_182AD4518();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    if (v30)
    {
      goto LABEL_52;
    }

    goto LABEL_66;
  }

  sub_182AD4518();
  MEMORY[0x1865DB070](v31[3]);
  v34 = v31[4];
  if (v31[2] >= v31[3] + v34)
  {
    v35 = v31[3] + v34;
  }

  else
  {
    v35 = v31[2];
  }

  *&v65 = v31;
  *(&v65 + 1) = v34;
  v66 = v35;
  swift_unknownObjectRetain();
  swift_retain_n();

  swift_unknownObjectRetain();
  while (1)
  {
    if (v34 != v35)
    {
      goto LABEL_47;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v34 = *(&v65 + 1);
    v35 = v66;
LABEL_47:
    *(&v65 + 1) = v34 + 1;
    swift_getObjectType();
    sub_182AD2EB8();
    ++v34;
  }

  if (v30)
  {
LABEL_52:
    sub_182AD4518();
    MEMORY[0x1865DB070](v30[3]);
    v36 = v30[4];
    if (v30[2] >= v30[3] + v36)
    {
      v37 = v30[3] + v36;
    }

    else
    {
      v37 = v30[2];
    }

    *&v65 = v30;
    *(&v65 + 1) = v36;
    v66 = v37;

    while (1)
    {
      if (v36 == v37)
      {
        if ((sub_181F47FDC() & 1) == 0)
        {

          if (v32)
          {
            goto LABEL_61;
          }

LABEL_67:
          sub_182AD4518();
          if (!v33)
          {
            goto LABEL_68;
          }

LABEL_62:
          sub_182AD4518();
          hash = nw_proxy_config_get_hash(v33);
          MEMORY[0x1865DB070](hash);
          goto LABEL_69;
        }

        v36 = *(&v65 + 1);
        v37 = v66;
      }

      *(&v65 + 1) = v36 + 1;
      v38 = swift_unknownObjectRetain();
      v39 = nw_proxy_config_get_hash(v38);
      MEMORY[0x1865DB070](v39);
      swift_unknownObjectRelease();
      ++v36;
    }
  }

LABEL_66:
  sub_182AD4518();
  if (!v32)
  {
    goto LABEL_67;
  }

LABEL_61:
  sub_182AD4518();
  v40 = nw_proxy_config_get_hash(v32);
  MEMORY[0x1865DB070](v40);
  if (v33)
  {
    goto LABEL_62;
  }

LABEL_68:
  sub_182AD4518();
LABEL_69:

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_70:
  if (v57)
  {
    sub_182AD4518();
    v42 = v57;
    sub_182AD3988();

    if (v58)
    {
      goto LABEL_72;
    }

LABEL_75:
    sub_182AD4518();
    if (!v59)
    {
      return sub_182AD4518();
    }

LABEL_73:
    sub_182AD4518();
    v44 = xpc_hash(v59);
    return MEMORY[0x1865DB070](v44);
  }

  else
  {
    sub_182AD4518();
    if (!v58)
    {
      goto LABEL_75;
    }

LABEL_72:
    sub_182AD4518();
    v43 = v58;
    sub_182AD3988();

    if (v59)
    {
      goto LABEL_73;
    }

    return sub_182AD4518();
  }
}

uint64_t Parameters.hashValue.getter()
{
  sub_182AD44E8();
  Parameters.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F43668()
{
  sub_182AD44E8();
  Parameters.hash(into:)(v1);
  return sub_182AD4558();
}

uint64_t sub_181F436AC()
{
  sub_182AD44E8();
  Parameters.hash(into:)(v1);
  return sub_182AD4558();
}

char *sub_181F436F0(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = sub_181F59624(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v9 = sub_181F59624((v10 > 1), v11 + 1, 1, v9);
    v10 = *(v9 + 3);
    v12 = v10 >> 1;
  }

  *(v9 + 2) = v13;
  *&v9[4 * v11 + 32] = v7;
  v14 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    v9 = sub_181F59624((v10 > 1), v11 + 2, 1, v9);
  }

  v15 = HIDWORD(a2);
  *(v9 + 2) = v14;
  *&v9[4 * v13 + 32] = v8;
  v16 = *(v9 + 3);
  v17 = v11 + 3;
  if ((v11 + 3) > (v16 >> 1))
  {
    v9 = sub_181F59624((v16 > 1), v11 + 3, 1, v9);
  }

  *(v9 + 2) = v17;
  *&v9[4 * v14 + 32] = a2;
  v18 = *(v9 + 3);
  v19 = v11 + 4;
  if ((v11 + 4) > (v18 >> 1))
  {
    v9 = sub_181F59624((v18 > 1), v11 + 4, 1, v9);
  }

  v20 = HIDWORD(a3);
  *(v9 + 2) = v19;
  *&v9[4 * v17 + 32] = v15;
  v21 = *(v9 + 3);
  v22 = v11 + 5;
  if ((v11 + 5) > (v21 >> 1))
  {
    v9 = sub_181F59624((v21 > 1), v11 + 5, 1, v9);
  }

  *(v9 + 2) = v22;
  *&v9[4 * v19 + 32] = a3;
  v23 = *(v9 + 3);
  v24 = v11 + 6;
  if ((v11 + 6) > (v23 >> 1))
  {
    v9 = sub_181F59624((v23 > 1), v11 + 6, 1, v9);
  }

  *(v9 + 2) = v24;
  *&v9[4 * v22 + 32] = v20;
  v25 = *(v9 + 3);
  v26 = v11 + 7;
  if ((v11 + 7) > (v25 >> 1))
  {
    v9 = sub_181F59624((v25 > 1), v11 + 7, 1, v9);
  }

  *(v9 + 2) = v26;
  *&v9[4 * v24 + 32] = a4;
  v27 = *(v9 + 3);
  if ((v11 + 8) > (v27 >> 1))
  {
    v9 = sub_181F59624((v27 > 1), v11 + 8, 1, v9);
  }

  *(v9 + 2) = v11 + 8;
  *&v9[4 * v26 + 32] = HIDWORD(a4);
  return v9;
}

uint64_t sub_181F4392C()
{
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  return sub_182AD4558();
}

uint64_t sub_181F439F4()
{
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  return sub_182AD4538();
}

uint64_t sub_181F43A84()
{
  sub_182AD44E8();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  sub_182AD4538();
  return sub_182AD4558();
}

BOOL sub_181F43B48(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0] && a1[1].i32[1] == a2[1].i32[1] && a1[1].i32[2] == a2[1].i32[2])
  {
    return a1[1].i32[3] == a2[1].i32[3];
  }

  return result;
}

uint64_t sub_181F43BB8()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_181F43C08()
{
  sub_182AD44E8();
  sub_182AD30E8();
  return sub_182AD4558();
}

uint64_t sub_181F43C54@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_182AD3F48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_181F43CA8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_182AD3F48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_181F43D00(uint64_t a1)
{
  v2 = sub_181F49964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F43D3C(uint64_t a1)
{
  v2 = sub_181F49964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181F43D78(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838688);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F49964();
  sub_182AD4638();
  v14[3] = sub_181F436F0(a2, a3, a4, v14[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838698);
  sub_181F499B8(&unk_1EA8367C0);
  sub_182AD4118();

  return (*(v10 + 8))(v12, v9);
}

void *sub_181F43F28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_181F4972C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_181F43F90()
{
  ProtocolStack.transport.getter(&v7);
  if ((~v8 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v2 = v8 >> 61;
  if ((v8 >> 61) <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        sub_181A53008(v7, v8);
        v1 = 0;
        v0 = 6;
        return v0 | (v1 << 8);
      }

      goto LABEL_14;
    }

LABEL_12:
    sub_181A53008(v7, v8);
    v1 = 0;
    v0 = 17;
    return v0 | (v1 << 8);
  }

  if (v2 == 2 || v2 == 3)
  {
    goto LABEL_12;
  }

  if (v2 != 4)
  {
LABEL_14:
    sub_181A53008(v7, v8);
LABEL_2:
    v0 = 0;
    v1 = 1;
    return v0 | (v1 << 8);
  }

  v3 = v8;
  v4 = v7;
  v5 = (v7 + *(*v7 + 128));
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v0 = *v5;
    sub_181A53008(v4, v3);
    v1 = 0;
    return v0 | (v1 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_181F44098(char a1, void *a2)
{
  v2 = a2[4];
  v3 = a2[3] + v2;
  if (a2[2] < v3)
  {
    v3 = a2[2];
  }

  v9 = a2[4];
  v10 = v3;
  v4 = a1;
  v5 = a2;
  while (v2 != v10)
  {
LABEL_4:
    v6 = v5 + v2++;
    v9 = v2;
    if (qword_182AE5178[v6[40]] == qword_182AE5178[v4])
    {

      return 1;
    }
  }

  if (sub_181F47FDC())
  {
    v5 = a2;
    v2 = v9;
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_181F44168(char a1, void *a2)
{
  v2 = a2[4];
  v3 = a2[3] + v2;
  if (a2[2] < v3)
  {
    v3 = a2[2];
  }

  v9 = a2[4];
  v10 = v3;
  v4 = a1;
  v5 = a2;
  while (v2 != v10)
  {
LABEL_4:
    v6 = v5 + v2++;
    v9 = v2;
    if (qword_182AE51A0[v6[40]] == qword_182AE51A0[v4])
    {

      return 1;
    }
  }

  if (sub_181F47FDC())
  {
    v5 = a2;
    v2 = v9;
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_181F44238(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = a2[3] + v3;
  if (a2[2] < v4)
  {
    v4 = a2[2];
  }

  v15 = a2[4];
  v16 = v4;
  v5 = a2;
  while (1)
  {
    if (v3 != v4)
    {
      goto LABEL_8;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v5 = a2;
    v3 = v15;
LABEL_8:
    v6 = &v5[v3++];
    v15 = v3;
    v7 = v6[5];
    v8 = *(v7 + 40) == *(a1 + 40) && *(v7 + 48) == *(a1 + 48);
    if (!v8 && (sub_182AD4268() & 1) == 0 || *(v7 + 16) != *(a1 + 16))
    {
      goto LABEL_4;
    }

    v9 = *(a1 + 184);
    if (v9 > 1)
    {
      if (v9 == 3)
      {
        v10 = 4;
      }

      else
      {
        v10 = 1;
      }

      if (v9 == 2)
      {
        v11 = 3;
      }

      else
      {
        v11 = v10;
      }

LABEL_23:
      if (*(v7 + 184))
      {
        v12 = qword_182AE5178[*(v7 + 184)] == v11;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }

    if (*(a1 + 184))
    {
      v11 = 2;
      goto LABEL_23;
    }

LABEL_28:
    if (qword_182AE51A0[*(v7 + 185)] == qword_182AE51A0[*(a1 + 185)] || !*(v7 + 185) || !*(a1 + 185))
    {

      return 1;
    }

LABEL_4:
    v4 = v16;
  }

  return 0;
}

uint64_t sub_181F443B8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 224);
  v25 = v3;
  if (!v3 || (v4 = *(v3 + 48)) == 0)
  {
    v4 = *sub_182AD2388();
  }

  swift_retain_n();
  v5 = v4[4];
  v6 = v4[3] + v5;
  if (v4[2] < v6)
  {
    v6 = v4[2];
  }

  v26 = v4[4];
  v27 = v6;
  v7 = v4;
  while (1)
  {
    if (v5 != v6)
    {
      goto LABEL_18;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v7 = v4;
    v5 = v26;
LABEL_18:
    v12 = &v7[v5++];
    v26 = v5;
    v13 = v12[5];
    v14 = *(v13 + 40) == *(v2 + 40) && *(v13 + 48) == *(v2 + 48);
    if (!v14 && (sub_182AD4268() & 1) == 0 || *(v13 + 16) != *(v2 + 16))
    {
      goto LABEL_14;
    }

    v15 = *(v2 + 184);
    if (v15 > 1)
    {
      if (v15 == 3)
      {
        v16 = 4;
      }

      else
      {
        v16 = 1;
      }

      if (v15 == 2)
      {
        v17 = 3;
      }

      else
      {
        v17 = v16;
      }

LABEL_33:
      if (*(v13 + 184))
      {
        v18 = qword_182AE5178[*(v13 + 184)] == v17;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    if (*(v2 + 184))
    {
      v17 = 2;
      goto LABEL_33;
    }

LABEL_7:
    v8 = *(v13 + 185);
    v9 = *(v2 + 185);
    if (qword_182AE51A0[v8] == qword_182AE51A0[v9] || v8 == 0 || v9 == 0)
    {

      goto LABEL_46;
    }

LABEL_14:
    v6 = v27;
  }

  v20 = v4[3];
  v21 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v4[2] < v21 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181F4604C(isUniquelyReferenced_nonNull_native, v21);
  }

  sub_181F46ACC(v4 + 2, (v4 + 5), v2);
  v23 = v25;
  if (!v25)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v23 = swift_allocObject();
    sub_18226B448(v23 + 16);
    *(v24 + 224) = v23;
  }

  *(v23 + 48) = v4;
LABEL_46:
}

uint64_t sub_181F445E4(unsigned __int8 *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = *a1;
  v31 = a1[1];
  v30 = a1[2];
  v29 = a1[3];
  v28 = a1[4];
  v27 = a1[5];
  v26 = a1[6];
  v25 = a1[7];
  v24 = a1[8];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = a1[15];
  v9 = *(v1 + 224);
  v22 = v9;
  if (!v9 || (v10 = *(v9 + 64)) == 0)
  {
    v10 = *sub_182AD2388();
  }

  v38 = v10;
  v11 = swift_retain_n();
  v12 = v11[4];
  v13 = v11[3] + v12;
  if (v11[2] < v13)
  {
    v13 = v11[2];
  }

  v35 = v11;
  v36 = v12;
  v37 = v13;

  v14 = v23;
  while (v12 != v37)
  {
LABEL_7:
    v36 = v12 + 1;
    *uu1 = *(v14 + 16 * v12 + 40);
    uu2[0] = v32;
    uu2[1] = v31;
    uu2[2] = v30;
    uu2[3] = v29;
    uu2[4] = v28;
    uu2[5] = v27;
    uu2[6] = v26;
    uu2[7] = v25;
    uu2[8] = v24;
    uu2[9] = v2;
    uu2[10] = v3;
    uu2[11] = v4;
    uu2[12] = v5;
    uu2[13] = v6;
    uu2[14] = v7;
    uu2[15] = v8;
    ++v12;
    if (!uuid_compare(uu1, uu2))
    {
    }
  }

  if (sub_181F47FDC())
  {
    v14 = v35;
    v12 = v36;
    goto LABEL_7;
  }

  v16 = v23;

  v17 = *(v23 + 24);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v23 + 16) < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B8477C(isUniquelyReferenced_nonNull_native, v18);
    v16 = v38;
  }

  sub_181B855B4((v16 + 16), v16 + 40, v32 | (v31 << 8) | (v30 << 16) | (v29 << 24) | (v28 << 32) | (v27 << 40) | (v26 << 48) | (v25 << 56), v24 | (v2 << 8) | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40) | (v7 << 48) | (v8 << 56));
  v20 = v22;
  if (!v22)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v20 = swift_allocObject();
    sub_18226B448(v20 + 16);
    *(v21 + 224) = v20;
  }

  *(v20 + 64) = v16;
}

uint64_t sub_181F448AC(unsigned __int8 *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = *a1;
  v31 = a1[1];
  v30 = a1[2];
  v29 = a1[3];
  v28 = a1[4];
  v27 = a1[5];
  v26 = a1[6];
  v25 = a1[7];
  v24 = a1[8];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = a1[15];
  v9 = *(v1 + 224);
  v22 = v9;
  if (!v9 || (v10 = *(v9 + 80)) == 0)
  {
    v10 = *sub_182AD2388();
  }

  v38 = v10;
  v11 = swift_retain_n();
  v12 = v11[4];
  v13 = v11[3] + v12;
  if (v11[2] < v13)
  {
    v13 = v11[2];
  }

  v35 = v11;
  v36 = v12;
  v37 = v13;

  v14 = v23;
  while (v12 != v37)
  {
LABEL_7:
    v36 = v12 + 1;
    *uu1 = *(v14 + 16 * v12 + 40);
    uu2[0] = v32;
    uu2[1] = v31;
    uu2[2] = v30;
    uu2[3] = v29;
    uu2[4] = v28;
    uu2[5] = v27;
    uu2[6] = v26;
    uu2[7] = v25;
    uu2[8] = v24;
    uu2[9] = v2;
    uu2[10] = v3;
    uu2[11] = v4;
    uu2[12] = v5;
    uu2[13] = v6;
    uu2[14] = v7;
    uu2[15] = v8;
    ++v12;
    if (!uuid_compare(uu1, uu2))
    {
    }
  }

  if (sub_181F47FDC())
  {
    v14 = v35;
    v12 = v36;
    goto LABEL_7;
  }

  v16 = v23;

  v17 = *(v23 + 24);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v23 + 16) < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B8477C(isUniquelyReferenced_nonNull_native, v18);
    v16 = v38;
  }

  sub_181B855B4((v16 + 16), v16 + 40, v32 | (v31 << 8) | (v30 << 16) | (v29 << 24) | (v28 << 32) | (v27 << 40) | (v26 << 48) | (v25 << 56), v24 | (v2 << 8) | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40) | (v7 << 48) | (v8 << 56));
  v20 = v22;
  if (!v22)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v20 = swift_allocObject();
    sub_18226B448(v20 + 16);
    *(v21 + 224) = v20;
  }

  *(v20 + 80) = v16;
}

uint64_t sub_181F44B74(uint64_t *a1)
{
  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = a1[2];
    v6 = a1[3];
    v7 = *(v2 + 88);
    if (!v7)
    {
      goto LABEL_69;
    }

    v8 = v7[4];
    v9 = v7[3] + v8;
    if (v7[2] < v9)
    {
      v9 = v7[2];
    }

    v24 = *(v2 + 88);
    v25 = v7[4];
    v27 = v9;
    v10 = v24;
    while (1)
    {
      if (v8 == v9)
      {
        if ((sub_181F47FDC() & 1) == 0)
        {

LABEL_69:
          v16 = *(v2 + 104);
          if (!v16)
          {
            return 0;
          }

          v17 = v16[4];
          v18 = v16[3] + v17;
          if (v16[2] < v18)
          {
            v18 = v16[2];
          }

          v26 = v16[4];
          v28 = v18;
          v19 = v16;
          while (2)
          {
            if (v17 == v18)
            {
              if ((sub_181F47FDC() & 1) == 0)
              {

                return 0;
              }

              v19 = v16;
              v17 = v26;
            }

            v20 = &v19[4 * v17++];
            v26 = v17;
            v21 = v20[6];
            v22 = v20[7];
            v23 = v20[8];
            if (v21 > 2)
            {
              switch(v21)
              {
                case 3:
                  if (v4 != 3)
                  {
                    goto LABEL_74;
                  }

                  break;
                case 4:
                  if (v4 == 4)
                  {
                    break;
                  }

                  goto LABEL_74;
                case 5:
                  if (v4 != 5)
                  {
                    goto LABEL_74;
                  }

                  break;
                default:
LABEL_93:
                  if (v4 < 6 || (v20[5] != v3 || v21 != v4) && (sub_182AD4268() & 1) == 0)
                  {
                    goto LABEL_74;
                  }

                  break;
              }
            }

            else if (v21)
            {
              if (v21 != 1)
              {
                if (v21 == 2)
                {
                  if (v4 == 2)
                  {
                    break;
                  }

LABEL_74:
                  v18 = v28;
                  continue;
                }

                goto LABEL_93;
              }

              if (v4 != 1)
              {
                goto LABEL_74;
              }
            }

            else if (v4)
            {
              goto LABEL_74;
            }

            break;
          }

          if (v23 > 4)
          {
            if (v23 <= 6)
            {
              if (v23 == 5)
              {
                if (v6 == 5)
                {
                  goto LABEL_134;
                }
              }

              else if (v6 == 6)
              {
                goto LABEL_134;
              }

              goto LABEL_74;
            }

            switch(v23)
            {
              case 7:
                if (v6 == 7)
                {
                  goto LABEL_134;
                }

                goto LABEL_74;
              case 8:
                if (v6 == 8)
                {
                  goto LABEL_134;
                }

                goto LABEL_74;
              case 9:
                if (v6 == 9)
                {
                  goto LABEL_134;
                }

                goto LABEL_74;
            }
          }

          else
          {
            if (v23 > 1)
            {
              if (v23 == 2)
              {
                if (v6 == 2)
                {
                  goto LABEL_134;
                }
              }

              else if (v23 == 3)
              {
                if (v6 == 3)
                {
                  goto LABEL_134;
                }
              }

              else if (v6 == 4)
              {
                goto LABEL_134;
              }

              goto LABEL_74;
            }

            if (!v23)
            {
              if (!v6)
              {
                goto LABEL_134;
              }

              goto LABEL_74;
            }

            if (v23 == 1)
            {
              if (v6 == 1)
              {
                goto LABEL_134;
              }

              goto LABEL_74;
            }
          }

          if (v6 >= 0xA && (v22 == v5 && v23 == v6 || (sub_182AD4268() & 1) != 0))
          {
LABEL_134:

            return 2;
          }

          goto LABEL_74;
        }

        v10 = v24;
        v8 = v25;
      }

      v11 = (v10 + 32 * v8++);
      v25 = v8;
      v12 = v11[6];
      v13 = v11[7];
      v14 = v11[8];
      if (v12 > 2)
      {
        switch(v12)
        {
          case 3:
            if (v4 != 3)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 4:
            if (v4 != 4)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 5:
            if (v4 != 5)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
        }
      }

      else
      {
        switch(v12)
        {
          case 0:
            if (v4)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 1:
            if (v4 != 1)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 2:
            if (v4 != 2)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
        }
      }

      if (v4 < 6 || (v11[5] != v3 || v12 != v4) && (sub_182AD4268() & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_34:
      if (v14 > 4)
      {
        if (v14 <= 6)
        {
          if (v14 == 5)
          {
            if (v6 == 5)
            {
              goto LABEL_67;
            }
          }

          else if (v6 == 6)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
        }

        switch(v14)
        {
          case 7:
            if (v6 == 7)
            {
              goto LABEL_67;
            }

            goto LABEL_7;
          case 8:
            if (v6 == 8)
            {
              goto LABEL_67;
            }

            goto LABEL_7;
          case 9:
            if (v6 == 9)
            {
              goto LABEL_67;
            }

            goto LABEL_7;
        }
      }

      else
      {
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            if (v6 == 2)
            {
              goto LABEL_67;
            }
          }

          else if (v14 == 3)
          {
            if (v6 == 3)
            {
              goto LABEL_67;
            }
          }

          else if (v6 == 4)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
        }

        if (!v14)
        {
          if (!v6)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
        }

        if (v14 == 1)
        {
          if (v6 == 1)
          {
            goto LABEL_67;
          }

          goto LABEL_7;
        }
      }

      if (v6 >= 0xA && (v13 == v5 && v14 == v6 || (sub_182AD4268() & 1) != 0))
      {
LABEL_67:

        return 1;
      }

LABEL_7:
      v9 = v27;
    }
  }

  return 0;
}

uint64_t sub_181F4502C(unsigned __int8 *a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v48 = *a1;
  v47 = a1[1];
  v46 = a1[2];
  v45 = a1[3];
  v44 = a1[4];
  v43 = a1[5];
  v42 = a1[6];
  v41 = a1[7];
  v40 = a1[8];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = a1[15];
  v9 = *(v1 + 224);
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = *(v9 + 96);
  v52 = v10;
  if ((*(v9 + 152) & 1) == 0)
  {
    v13 = *(v9 + 144);
    v38 = *(v9 + 136);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = *sub_182AD2388();
      v52 = v14;
    }

    v15 = v14[3];
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_37;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v14[2] < v16 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B8477C(isUniquelyReferenced_nonNull_native, v16);
      v14 = v52;
    }

    sub_181B855B4(v14 + 2, (v14 + 5), v38, v13);
    v11 = v52;
    if (v52)
    {
      goto LABEL_4;
    }

LABEL_13:
    v12 = *sub_182AD2388();
    v51 = v12;
    swift_retain_n();
    goto LABEL_14;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_4:
  v51 = v11;
  v12 = v11;
LABEL_14:
  v18 = v12[4];
  v19 = v12[3] + v18;
  if (v12[2] < v19)
  {
    v19 = v12[2];
  }

  v52 = v12;
  v53 = v18;
  v54 = v19;

  v39 = v12;
  while (1)
  {
    if (v18 != v54)
    {
      goto LABEL_18;
    }

    if ((sub_181F47FDC() & 1) == 0)
    {
      break;
    }

    v12 = v52;
    v18 = v53;
LABEL_18:
    v53 = v18 + 1;
    *uu1 = *&v12[2 * v18 + 5];
    uu2[0] = v48;
    uu2[1] = v47;
    uu2[2] = v46;
    uu2[3] = v45;
    uu2[4] = v44;
    uu2[5] = v43;
    uu2[6] = v42;
    uu2[7] = v41;
    uu2[8] = v40;
    uu2[9] = v2;
    uu2[10] = v3;
    uu2[11] = v4;
    uu2[12] = v5;
    uu2[13] = v6;
    uu2[14] = v7;
    uu2[15] = v8;
    ++v18;
    if (!uuid_compare(uu1, uu2))
    {
    }
  }

  v20 = v39;

  v21 = v39[3];
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  if (v39[2] < v22 || (v23 & 1) == 0)
  {
    sub_181B8477C(v23, v22);
    v20 = v51;
  }

  sub_181B855B4(v20 + 2, (v20 + 5), v48 | (v47 << 8) | (v46 << 16) | (v45 << 24) | (v44 << 32) | (v43 << 40) | (v42 << 48) | (v41 << 56), v40 | (v2 << 8) | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40) | (v7 << 48) | (v8 << 56));
  v24 = v37;
  if (!v37)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v25 = swift_allocObject();
    sub_18226B448(v25 + 16);
    v24 = v25;
    *(v36 + 224) = v25;
  }

  *uu1 = v20;
  if ((*(v24 + 152) & 1) == 0)
  {
    v26 = v20;
    v28 = *(v24 + 136);
    v27 = *(v24 + 144);
    v29 = v24;
    v30 = v26;

    v31 = sub_18226E164(uu1, v28, v27);
    v32 = *uu1;
    v33 = *(*uu1 + 24);
    if (v33 >= v31)
    {
      v34 = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1820E5F10();
          v32 = *uu1;
        }

        sub_181B64818(v34, v33, (v32 + 16), v32 + 40, &v52);
        sub_18226E660(v34, v33, (v32 + 16), (v32 + 40));

        v24 = v29;
        v20 = v30;
        goto LABEL_33;
      }

LABEL_39:
      __break(1u);
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_33:
  *(v24 + 96) = v20;
}

uint64_t sub_181F45454(unsigned __int8 *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = *a1;
  v31 = a1[1];
  v30 = a1[2];
  v29 = a1[3];
  v28 = a1[4];
  v27 = a1[5];
  v26 = a1[6];
  v25 = a1[7];
  v24 = a1[8];
  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = a1[15];
  v9 = *(v1 + 224);
  v22 = v9;
  if (!v9 || (v10 = *(v9 + 112)) == 0)
  {
    v10 = *sub_182AD2388();
  }

  v38 = v10;
  v11 = swift_retain_n();
  v12 = v11[4];
  v13 = v11[3] + v12;
  if (v11[2] < v13)
  {
    v13 = v11[2];
  }

  v35 = v11;
  v36 = v12;
  v37 = v13;

  v14 = v23;
  while (v12 != v37)
  {
LABEL_7:
    v36 = v12 + 1;
    *uu1 = *(v14 + 16 * v12 + 40);
    uu2[0] = v32;
    uu2[1] = v31;
    uu2[2] = v30;
    uu2[3] = v29;
    uu2[4] = v28;
    uu2[5] = v27;
    uu2[6] = v26;
    uu2[7] = v25;
    uu2[8] = v24;
    uu2[9] = v2;
    uu2[10] = v3;
    uu2[11] = v4;
    uu2[12] = v5;
    uu2[13] = v6;
    uu2[14] = v7;
    uu2[15] = v8;
    ++v12;
    if (!uuid_compare(uu1, uu2))
    {
    }
  }

  if (sub_181F47FDC())
  {
    v14 = v35;
    v12 = v36;
    goto LABEL_7;
  }

  v16 = v23;

  v17 = *(v23 + 24);
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v23 + 16) < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181B8477C(isUniquelyReferenced_nonNull_native, v18);
    v16 = v38;
  }

  sub_181B855B4((v16 + 16), v16 + 40, v32 | (v31 << 8) | (v30 << 16) | (v29 << 24) | (v28 << 32) | (v27 << 40) | (v26 << 48) | (v25 << 56), v24 | (v2 << 8) | (v3 << 16) | (v4 << 24) | (v5 << 32) | (v6 << 40) | (v7 << 48) | (v8 << 56));
  v20 = v22;
  if (!v22)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v20 = swift_allocObject();
    sub_18226B448(v20 + 16);
    *(v21 + 224) = v20;
  }

  *(v20 + 112) = v16;
}

uint64_t sub_181F45728()
{
  sub_182AD44E8();
  sub_181F3E900();
  return sub_182AD4558();
}

uint64_t sub_181F45778()
{
  sub_182AD44E8();
  sub_181F3E900();
  return sub_182AD4558();
}

uint64_t sub_181F457BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_181F49918();
  *a1 = result;
  return result;
}

uint64_t sub_181F457EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_181E75FB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_181F45818@<X0>(_BYTE *a1@<X8>)
{
  result = sub_181F49918();
  *a1 = result;
  return result;
}

uint64_t sub_181F4584C(uint64_t a1)
{
  v2 = sub_181E75F5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MutableParametersStorage.__allocating_init(_:)(const void *a1)
{
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x188uLL);
  return v2;
}

unint64_t MutableParametersStorage.description.getter()
{
  swift_beginAccess();
  memcpy(v2, (v0 + 16), sizeof(v2));
  return Parameters.description.getter();
}

uint64_t MutableParametersStorage.hash(into:)(uint64_t a1)
{
  swift_beginAccess();
  memcpy(v4, (v1 + 16), sizeof(v4));
  return Parameters.hash(into:)(a1);
}

uint64_t MutableParametersStorage.deinit()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_181F48214(__dst);
  return v0;
}

uint64_t MutableParametersStorage.hashValue.getter()
{
  sub_182AD44E8();
  swift_beginAccess();
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  Parameters.hash(into:)(v3);
  return sub_182AD4558();
}

uint64_t sub_181F45A58()
{
  v1 = *v0;
  sub_182AD44E8();
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  Parameters.hash(into:)(v4);
  return sub_182AD4558();
}

uint64_t sub_181F45ACC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  memcpy(v5, (v3 + 16), sizeof(v5));
  return Parameters.hash(into:)(a1);
}

uint64_t sub_181F45B30()
{
  v1 = *v0;
  sub_182AD44E8();
  swift_beginAccess();
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  Parameters.hash(into:)(v4);
  return sub_182AD4558();
}

unint64_t sub_181F45BA0()
{
  v1 = *v0;
  swift_beginAccess();
  memcpy(v3, (v1 + 16), sizeof(v3));
  return Parameters.description.getter();
}

uint64_t static ImmutableParametersStorage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  memcpy(__src, (a1 + 16), sizeof(__src));
  memcpy(v8, (a2 + 16), sizeof(v8));
  memcpy(v5, (a2 + 16), sizeof(v5));
  sub_181F481DC(__dst, v10);
  sub_181F481DC(v8, v10);
  LOBYTE(a2) = _s7Network10ParametersV2eeoiySbAC_ACtFZ_0(__src, v5);
  memcpy(v9, v5, sizeof(v9));
  sub_181F48214(v9);
  memcpy(v10, __src, sizeof(v10));
  sub_181F48214(v10);
  return a2 & 1;
}

uint64_t _s7Network24MutableParametersStorageCfD_0()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  sub_181F48214(__dst);
  return swift_deallocClassInstance();
}

uint64_t ImmutableParametersStorage.hashValue.getter()
{
  sub_182AD44E8();
  memcpy(v2, (v0 + 16), sizeof(v2));
  Parameters.hash(into:)(v3);
  return sub_182AD4558();
}

uint64_t sub_181F45E00()
{
  v1 = *v0;
  sub_182AD44E8();
  memcpy(v3, (v1 + 16), sizeof(v3));
  Parameters.hash(into:)(v4);
  return sub_182AD4558();
}

uint64_t sub_181F45EB0()
{
  v1 = *v0;
  sub_182AD44E8();
  memcpy(v3, (v1 + 16), sizeof(v3));
  Parameters.hash(into:)(v4);
  return sub_182AD4558();
}

uint64_t sub_181F45F4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  memcpy(__dst, (*a1 + 16), sizeof(__dst));
  memcpy(__src, (v2 + 16), sizeof(__src));
  memcpy(v8, (v3 + 16), sizeof(v8));
  memcpy(v5, (v3 + 16), sizeof(v5));
  sub_181F481DC(__dst, v10);
  sub_181F481DC(v8, v10);
  LOBYTE(v2) = static Parameters.== infix(_:_:)(__src, v5);
  memcpy(v9, v5, sizeof(v9));
  sub_181F48214(v9);
  memcpy(v10, __src, sizeof(v10));
  sub_181F48214(v10);
  return v2 & 1;
}

uint64_t sub_181F4604C(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838730);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_1820E5500(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838730);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 33;
      }

      *(v8 + 16) = v10 >> 3;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181AB76EC(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838730);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 33;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 3;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181F4762C(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t sub_181F461F8(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838788);
    v8 = swift_allocObject();
    v12 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v12;
    if (v12 >= 1)
    {
      sub_1820E56A8(v8 + 16, v8 + 40, v4, v3 + 40, v11);
    }
  }

  else
  {
    type metadata accessor for FrameArrayEntry();
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838788);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 33;
      }

      *(v8 + 16) = v10 >> 3;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181AB76EC(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838788);
      v8 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v8);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v3 + 24);
      *(v8 + 16) = v14 >> 3;
      *(v8 + 24) = v15;
      *(v8 + 32) = 0;
      if (v15 >= 1)
      {
        sub_181F47BD4(v8 + 16, v8 + 40, v4, v3 + 40, type metadata accessor for FrameArrayEntry);
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t sub_181F463C8(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838768);
    v8 = swift_allocObject();
    v9 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v9;
    if (v9 >= 1)
    {
      sub_1820E56D4(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838768);
      v8 = swift_allocObject();
      *(v8 + 16) = (_swift_stdlib_malloc_size(v8) - 40) / 40;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181F46F08(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838768);
      v8 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v8);
      v11 = *(v3 + 24);
      *(v8 + 16) = (v10 - 40) / 40;
      *(v8 + 24) = v11;
      *(v8 + 32) = 0;
      if (v11 >= 1)
      {
        sub_181F477F4(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t sub_181F46590(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838778);
    v8 = swift_allocObject();
    v9 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v9;
    if (v9 >= 1)
    {
      sub_1820E589C(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838778);
      v8 = swift_allocObject();
      *(v8 + 16) = (_swift_stdlib_malloc_size(v8) - 40) / 24;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181F47044(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838778);
      v8 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v8);
      v11 = *(v3 + 24);
      *(v8 + 16) = (v10 - 40) / 24;
      *(v8 + 24) = v11;
      *(v8 + 32) = 0;
      if (v11 >= 1)
      {
        sub_181F478E4(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t sub_181F46758(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838780);
    v8 = swift_allocObject();
    v11 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v11;
    if (v11 >= 1)
    {
      sub_1820E57B4(v8 + 16, (v8 + 40), v4, (v3 + 40));
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838780);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 40;
      if (v9 < 40)
      {
        v10 = v9 - 33;
      }

      *(v8 + 16) = v10 >> 3;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181AB76EC(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838780);
      v8 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v8);
      v13 = v12 - 40;
      if (v12 < 40)
      {
        v13 = v12 - 33;
      }

      v14 = *(v3 + 24);
      *(v8 + 16) = v13 >> 3;
      *(v8 + 24) = v14;
      *(v8 + 32) = 0;
      if (v14 >= 1)
      {
        sub_181F47ADC(v8 + 16, (v8 + 40), v4, (v3 + 40));
      }
    }
  }

  *v2 = v8;
  return result;
}

uint64_t sub_181F46904(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C8);
    v8 = swift_allocObject();
    v9 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v9;
    if (v9 >= 1)
    {
      sub_1820E5CF8(v8 + 16, (v8 + 40), v4, (v3 + 40));
    }
  }

  else
  {
    sub_182AD2398();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C8);
      v8 = swift_allocObject();
      *(v8 + 16) = (_swift_stdlib_malloc_size(v8) - 40) / 24;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_181F47044(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8386C8);
      v8 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v8);
      v11 = *(v3 + 24);
      *(v8 + 16) = (v10 - 40) / 24;
      *(v8 + 24) = v11;
      *(v8 + 32) = 0;
      if (v11 >= 1)
      {
        sub_181F47DCC(v8 + 16, (v8 + 40), v4, (v3 + 40));
      }
    }
  }

  *v2 = v8;
  return result;
}

void *sub_181F46ACC(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_181F46B3C(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        v7 = a2 + 40 * v5;
        v8 = *(a3 + 16);
        *v7 = *a3;
        *(v7 + 16) = v8;
        *(v7 + 32) = *(a3 + 32);
        v6 = __OFADD__(v3, 1);
        v9 = v3 + 1;
        if (!v6)
        {
          result[1] = v9;
          return sub_181F49AE8(a3, v10);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_181F46BDC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result[1];
  v5 = result[2];
  v8 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (!v8)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *result);
      if (v7 < *result || (v7 -= *result, !v8))
      {
LABEL_9:
        v9 = (a2 + 24 * v7);
        *v9 = a3;
        v9[1] = a4;
        v9[2] = a5;
        v10 = result[1];
        v8 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v8)
        {
          result[1] = v11;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *result);
      v7 += *result;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_181F46C5C(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v7 = result[1];
        v6 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v6)
        {
          result[1] = v8;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_181F46CB8(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[v4];
  if (v12 != __dst || &v12[v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[v8];
  if (&__dst[v8] != v11 || v16 >= &v11[v7])
  {

    memmove(v16, v11, v7);
  }
}

void sub_181F46DE0(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[32 * v4];
  if (v12 != __dst || &v12[32 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 32 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[32 * v8];
  if (v16 != v11 || v16 >= &v11[32 * v7])
  {

    memmove(v16, v11, 32 * v7);
  }
}

void sub_181F46F08(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[40 * v4];
  if (v12 != __dst || &v12[40 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 40 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[40 * v8];
  v17 = 40 * v7;
  if (v16 != v11 || v16 >= &v11[v17])
  {

    memmove(v16, v11, v17);
  }
}

void sub_181F47044(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[24 * v4];
  if (v12 != __dst || &v12[24 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 24 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[24 * v8];
  if (v16 != v11 || v16 >= &v11[24 * v7])
  {

    memmove(v16, v11, 24 * v7);
  }
}

void sub_181F47184(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[16 * v4], 16 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[16 * v9], v10, 16 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_181F4727C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F47360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F47450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_181F47534(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[v4], v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[v9], v10, v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_181F4762C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F47710(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F477F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F478E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F479D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_181F47ADC(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[8 * v4], 8 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[8 * v9], v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_181F47BD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  if (v6 < v8)
  {
    v9 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v10 = a4;
      if (v6 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = 0;
  v9 = 0;
  if (v8 >= 1)
  {
LABEL_7:
    if (a4)
    {
      a5(0);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v6 < v8 && v9 >= 1)
  {
    if (v10)
    {
      a5(0);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_181F47CDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = 0;
  v7 = 0;
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v8)
    {
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_181F47DCC(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[24 * v4], 24 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[24 * v9], v10, 24 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_181F47ED4(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[20 * v4], 20 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[20 * v9], v10, 20 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_181F47FDC()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

uint64_t sub_181F48044(uint64_t a1, char a2, uint64_t *a3)
{
  result = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
  v7 = result;
  v8 = *a3;
  if (!*a3)
  {
    type metadata accessor for ProtocolStack();
    v8 = swift_allocObject();
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = 0;
    *(v8 + 40) = xmmword_182AE3C80;
    *(v8 + 56) = 0xF000000000000007;
    *(v8 + 64) = 2;
    *(v8 + 72) = 0;
    *(v8 + 80) = 0;
    *(v8 + 88) = xmmword_182AE3C90;
    *(v8 + 104) = 0xF000000000000007;
    swift_beginAccess();
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    *(v8 + 48) = xmmword_182AE3CA0;
    result = sub_181A52FE0(v9, v10);
    *a3 = v8;
  }

  switch(a2)
  {
    case 1:

      sub_181F61FE0(v13, v7, v20);
      v14 = v20[0];
      v15 = v20[1];
      swift_beginAccess();
      v16 = *(v8 + 48);
      v17 = *(v8 + 56);
      *(v8 + 48) = v14;
      *(v8 + 56) = v15;
      sub_181A52FE0(v16, v17);
      break;
    case 2:
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      *(v8 + 32) = a1;
      *(v8 + 40) = 0x4000000000000000;

      sub_181A5301C(v11, v12);
      break;
    case 3:
      v18 = a1;
      v19 = 0;

      sub_181B2A5BC(&v18);
      sub_181AAD084(v18, v19);
      break;
    default:
      return result;
  }
}

uint64_t sub_181F48244(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t _s7Network24MutableParametersStorageC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  memcpy(__src, (a1 + 16), sizeof(__src));
  swift_beginAccess();
  memcpy(v8, (a2 + 16), sizeof(v8));
  memcpy(v5, (a2 + 16), sizeof(v5));
  sub_181F481DC(__dst, v10);
  sub_181F481DC(v8, v10);
  LOBYTE(a2) = _s7Network10ParametersV2eeoiySbAC_ACtFZ_0(__src, v5);
  memcpy(v9, v5, sizeof(v9));
  sub_181F48214(v9);
  memcpy(v10, __src, sizeof(v10));
  sub_181F48214(v10);
  return a2 & 1;
}

uint64_t sub_181F48350(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
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

unint64_t sub_181F483C4()
{
  result = qword_1EA836888;
  if (!qword_1EA836888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836888);
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

uint64_t sub_181F48460(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = a1[2];
      v3 = a1[3];
      v4 = a1[4];
      v5 = a1[5];
      v6 = a2[2];
      v7 = a2[3];
      v8 = a2[4];
      v9 = a2[5];
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v10 = sub_181F48584(v2, v3, v4, v5, v6, v7, v8, v9);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v10)
      {
        return 1;
      }
    }
  }

  else if (!a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_181F48584(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (!a1)
  {
    if (a5)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (!a5)
  {
    return 0;
  }

  v8 = a1[3];
  if (v8 != a5[3])
  {
    return 0;
  }

  if (!v8 || a1 == a5)
  {
LABEL_24:
    if (!a2)
    {
      goto LABEL_50;
    }

    goto LABEL_25;
  }

  v46 = a2;
  v47 = a3;
  v45 = a7;
  v9 = a6;
  v10 = a4;
  v11 = a8;
  v12 = a1[4];
  v13 = v12 + v8;
  if (a1[2] < v12 + v8)
  {
    v13 = a1[2];
  }

  v53 = a1;
  v54 = v12;
  v55 = v13;
  v14 = a5[4];
  v15 = v14 + v8;
  if (a5[2] < v15)
  {
    v15 = a5[2];
  }

  v50 = a5;
  v51 = v14;
  v52 = v15;
  v16 = a5;
  swift_retain_n();

  while (1)
  {
    v17 = v54;
    if (v54 != v55)
    {
      goto LABEL_14;
    }

    if (sub_181F47FDC())
    {
      v17 = v54;
LABEL_14:
      v54 = v17 + 1;
      v18 = &v53[2 * v17];
      v19 = v18[5];
      v20 = v18[6];
      swift_unknownObjectRetain();
      goto LABEL_16;
    }

    v19 = 0;
    v20 = 0;
LABEL_16:
    if (v14 == v52)
    {
      break;
    }

LABEL_19:
    v22 = v14 + 1;
    v51 = v14 + 1;
    v23 = &v16[2 * v14];
    v25 = v23[5];
    v24 = v23[6];
    swift_unknownObjectRetain();
    if (!v19)
    {
      goto LABEL_48;
    }

    if (!v25)
    {
      goto LABEL_56;
    }

    ObjectType = swift_getObjectType();
    v49 = 0;
    v27 = (*(v20 + 24))(v25, v24, &v49, ObjectType, v20);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v14 = v22;
    if ((v27 & 1) == 0)
    {
LABEL_45:

LABEL_57:

      return 0;
    }
  }

  v21 = sub_181F47FDC();
  v16 = v50;
  if (v21)
  {
    v14 = v51;
    goto LABEL_19;
  }

  if (v19)
  {
LABEL_56:

    swift_unknownObjectRelease();
    goto LABEL_57;
  }

  v25 = 0;
LABEL_48:

  if (v25)
  {
    goto LABEL_60;
  }

  a8 = v11;
  a4 = v10;
  a6 = v9;
  a7 = v45;
  a2 = v46;
  a3 = v47;
  if (!v46)
  {
LABEL_50:
    if (a6)
    {
      return 0;
    }

    goto LABEL_51;
  }

LABEL_25:
  if (!a6)
  {
    return 0;
  }

  v28 = a2[3];
  if (v28 != a6[3])
  {
    return 0;
  }

  if (!v28 || a2 == a6)
  {
LABEL_51:
    if (!a3)
    {
      goto LABEL_62;
    }

LABEL_52:
    if (!a7)
    {
      return 0;
    }

    v42 = a8;
    v43 = a4;
    result = nw_proxy_config_is_equal(a3, a7);
    a4 = v43;
    a8 = v42;
    if (result)
    {
LABEL_63:
      if (a4)
      {
        if (!a8 || (nw_proxy_config_is_equal(a4, a8) & 1) == 0)
        {
          return 0;
        }
      }

      else if (a8)
      {
        return 0;
      }

      return 1;
    }

    return result;
  }

  v48 = a3;
  v29 = a7;
  v30 = a4;
  v31 = a8;
  v32 = a2[4];
  v33 = v32 + v28;
  if (a2[2] < v32 + v28)
  {
    v33 = a2[2];
  }

  v53 = a2;
  v54 = v32;
  v55 = v33;
  v34 = a6[4];
  v35 = v34 + v28;
  if (a6[2] < v35)
  {
    v35 = a6[2];
  }

  v50 = a6;
  v51 = v34;
  v52 = v35;
  v36 = a6;
  swift_retain_n();

  while (2)
  {
    v37 = v54;
    if (v54 == v55)
    {
      if (sub_181F47FDC())
      {
        v37 = v54;
        goto LABEL_37;
      }

      v38 = 0;
    }

    else
    {
LABEL_37:
      v54 = v37 + 1;
      v38 = v53[v37 + 5];
      swift_unknownObjectRetain();
    }

    if (v34 != v52)
    {
      goto LABEL_42;
    }

    v39 = sub_181F47FDC();
    v36 = v50;
    if (v39)
    {
      v34 = v51;
LABEL_42:
      v51 = v34 + 1;
      v40 = v36[v34 + 5];
      swift_unknownObjectRetain();
      if (!v38)
      {
        goto LABEL_59;
      }

      if (!v40)
      {
        goto LABEL_56;
      }

      is_equal = nw_proxy_config_is_equal(v38, v40);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      ++v34;
      if ((is_equal & 1) == 0)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  if (v38)
  {
    goto LABEL_56;
  }

  v40 = 0;
LABEL_59:

  if (v40)
  {
LABEL_60:
    swift_unknownObjectRelease();
    return 0;
  }

  a8 = v31;
  a4 = v30;
  a7 = v29;
  a3 = v48;
  if (v48)
  {
    goto LABEL_52;
  }

LABEL_62:
  if (!a7)
  {
    goto LABEL_63;
  }

  return 0;
}

uint64_t sub_181F48984(uint64_t a1)
{
  v2 = *(v1 + 288);
  if (!v2)
  {
    v3 = a1;
    type metadata accessor for PathParameters.ProtocolValues.ProtocolValuesBacking();
    v2 = swift_allocObject();
    a1 = v3;
    *(v2 + 16) = xmmword_182AE3CC0;
    *(v2 + 32) = xmmword_182AE3CC0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 48) = 1;
    *(v1 + 288) = v2;
  }

  *(v2 + 64) = a1;
}

unint64_t sub_181F48A10()
{
  result = qword_1EA8385E8;
  if (!qword_1EA8385E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8385E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F48B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_181F48BD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_181F48CD8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_181F48D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_181F48DB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_181F48E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DNSFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DNSFailureReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_181F4900C(uint64_t a1, int a2)
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

uint64_t sub_181F4902C(uint64_t result, int a2, int a3)
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

unint64_t sub_181F4907C()
{
  result = qword_1EA838600;
  if (!qword_1EA838600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838600);
  }

  return result;
}

unint64_t sub_181F490D4()
{
  result = qword_1EA838608;
  if (!qword_1EA838608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838608);
  }

  return result;
}

unint64_t sub_181F4912C()
{
  result = qword_1EA838610;
  if (!qword_1EA838610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838610);
  }

  return result;
}

unint64_t sub_181F49184()
{
  result = qword_1EA838618;
  if (!qword_1EA838618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838618);
  }

  return result;
}

unint64_t sub_181F491DC()
{
  result = qword_1EA838620;
  if (!qword_1EA838620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838620);
  }

  return result;
}

unint64_t sub_181F49230()
{
  result = qword_1EA838628;
  if (!qword_1EA838628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838628);
  }

  return result;
}

unint64_t sub_181F49288()
{
  result = qword_1EA838630;
  if (!qword_1EA838630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838630);
  }

  return result;
}

unint64_t sub_181F492E0()
{
  result = qword_1EA838638;
  if (!qword_1EA838638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838638);
  }

  return result;
}

unint64_t sub_181F49338()
{
  result = qword_1EA838640;
  if (!qword_1EA838640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838640);
  }

  return result;
}

unint64_t sub_181F4938C()
{
  result = qword_1EA838648;
  if (!qword_1EA838648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838648);
  }

  return result;
}

unint64_t sub_181F493E4()
{
  result = qword_1EA838650;
  if (!qword_1EA838650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838650);
  }

  return result;
}

unint64_t sub_181F4943C()
{
  result = qword_1EA838658;
  if (!qword_1EA838658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838658);
  }

  return result;
}

unint64_t sub_181F49494()
{
  result = qword_1EA838660;
  if (!qword_1EA838660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838660);
  }

  return result;
}

unint64_t sub_181F494EC()
{
  result = qword_1EA838668;
  if (!qword_1EA838668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838668);
  }

  return result;
}

unint64_t sub_181F49544()
{
  result = qword_1EA838670;
  if (!qword_1EA838670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838670);
  }

  return result;
}

unint64_t sub_181F4959C()
{
  result = qword_1EA838678;
  if (!qword_1EA838678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838678);
  }

  return result;
}

uint64_t sub_181F49638(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_181F49680()
{
  result = qword_1EA836F18;
  if (!qword_1EA836F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836F18);
  }

  return result;
}

unint64_t sub_181F496D8()
{
  result = qword_1EA836F20;
  if (!qword_1EA836F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836F20);
  }

  return result;
}

void *sub_181F4972C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8386A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F49964();
  sub_182AD45E8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838698);
  sub_181F499B8(&unk_1EA8367B0);
  sub_182AD3FF8();
  result = v10;
  if (!(v10[2] >> 61))
  {
    v7 = v10[4];

    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_181F49918()
{
  v0 = sub_182AD3F48();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_181F49964()
{
  result = qword_1EA8368A0;
  if (!qword_1EA8368A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8368A0);
  }

  return result;
}

uint64_t sub_181F499B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA838698);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181F49A24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_181F49A34()
{
  result = qword_1EA836D30;
  if (!qword_1EA836D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836D30);
  }

  return result;
}

uint64_t sub_181F49A88(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181F49B44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_181F49B58(a1, a2);
  }

  return a1;
}

uint64_t sub_181F49B58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for IPProtocol(unsigned int *a1, int a2)
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

uint64_t sub_181F49C14(uint64_t *a1, int a2)
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

uint64_t sub_181F49C5C(uint64_t result, int a2, int a3)
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

unint64_t sub_181F49CAC()
{
  result = qword_1EA8387A8;
  if (!qword_1EA8387A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387A8);
  }

  return result;
}

unint64_t sub_181F49D04()
{
  result = qword_1EA8387B0;
  if (!qword_1EA8387B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387B0);
  }

  return result;
}

unint64_t sub_181F49D5C()
{
  result = qword_1EA8387B8;
  if (!qword_1EA8387B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387B8);
  }

  return result;
}

unint64_t sub_181F49DB4()
{
  result = qword_1EA836890;
  if (!qword_1EA836890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836890);
  }

  return result;
}

unint64_t sub_181F49E0C()
{
  result = qword_1EA836898;
  if (!qword_1EA836898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836898);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtocolMapping(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProtocolMapping(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_181F49FD4()
{
  result = qword_1EA8387C0;
  if (!qword_1EA8387C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387C0);
  }

  return result;
}

unint64_t sub_181F4A02C()
{
  result = qword_1EA8387C8;
  if (!qword_1EA8387C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387C8);
  }

  return result;
}

unint64_t sub_181F4A084()
{
  result = qword_1EA8387D0;
  if (!qword_1EA8387D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8387D0);
  }

  return result;
}

uint64_t sub_181F4A1FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_182AD4668();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 1.84467441e19)
  {
    *a4 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_181F4A270()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0x100000001;
  mach_timebase_info(v1);
  result = *v1;
  qword_1EA8387E0 = v1[0];
  return result;
}

uint64_t sub_181F4A300(uint64_t a1, unsigned int *a2, void *a3)
{
  if (qword_1EA837028 != -1)
  {
    v3 = a2;
    v4 = a3;
    result = swift_once();
    a2 = v3;
    a3 = v4;
  }

  *a3 = *a2;
  return result;
}

uint64_t ProtocolMetadata.matches(protocolIdentifier:)(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  *v13 = v2;
  v14 = *(a1 + 4);
  v15 = v3;
  v8 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v16, v13);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  sub_181F49A24(v5, v6, v7);
  sub_181F48350(v9, v10, v11);
  return v8 & 1;
}

uint64_t sub_181F4A410(__int16 *a1, uint64_t a2, _OWORD *a3)
{
  v6 = swift_allocObject();
  sub_181F4A468(a1, a2, a3);
  return v6;
}

uint64_t *sub_181F4A468(__int16 *a1, uint64_t a2, _OWORD *a3)
{
  v6 = *v3;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *(a1 + 24);
  *(v3 + 57) = 0;
  v11 = *(v6 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v3 + v11, 1, 1, AssociatedTypeWitness);
  *(v3 + 8) = v7;
  v3[3] = v8;
  v3[4] = v9;
  *(v3 + 40) = v10;
  *(v3 + 41) = *a3;
  v13 = *(*v3 + 120);
  swift_beginAccess();
  v14 = sub_182AD39B8();
  (*(*(v14 - 8) + 40))(v3 + v13, a2, v14);
  swift_endAccess();
  return v3;
}

uint64_t ProtocolMetadata.isEqual(to:for:)(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(*v2 + 80);
  v62 = *(*v2 + 88);
  v61 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = sub_182AD39B8();
  v71 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v56 - v13;
  v69 = AssociatedTypeWitness;
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v56 - v17;
  v59 = *a2;
  v18 = *(v2 + 24);
  v19 = *(v2 + 32);
  v20 = *(v2 + 40);
  v78 = *(v2 + 16);
  v79 = v18;
  v80 = v19;
  v81 = v20;
  v21 = *(a1 + 16);
  v23 = *(a1 + 24);
  v22 = *(a1 + 32);
  v66 = a1;
  v24 = *(a1 + 40);
  v74 = v21;
  v75 = v23;
  v76 = v22;
  v77 = v24;
  LODWORD(v72) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v78, &v74);
  v25 = v75;
  v26 = v76;
  LOBYTE(a1) = v77;
  sub_181F49A24(v18, v19, v20);
  sub_181F49A24(v23, v22, v24);
  sub_181F48350(v25, v26, a1);
  sub_181F48350(v79, v80, v81);
  if ((v72 & 1) == 0)
  {
    goto LABEL_8;
  }

  v27 = *(*v2 + 120);
  swift_beginAccess();
  v28 = v71;
  v29 = *(v71 + 16);
  v57 = v27;
  v31 = v67;
  v30 = v68;
  v29(v67, v2 + v27, v68);
  v32 = v73[6];
  v33 = v69;
  v34 = v32(v31, 1, v69);
  v72 = v29;
  v58 = v32;
  if (v34 == 1)
  {
    v35 = v33;
  }

  else
  {
    v67 = v73[4];
    (v67)(v70, v31, v33);
    v36 = v30;
    v37 = v66;
    v38 = *(*v66 + 120);
    swift_beginAccess();
    v39 = v37 + v38;
    v30 = v36;
    v31 = v64;
    v29(v64, v39, v36);
    v35 = v33;
    if (v32(v31, 1, v33) != 1)
    {
      v52 = v60;
      (v67)(v60, v31, v33);
      LOBYTE(v74) = v59;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v54 = v70;
      v50 = (*(AssociatedConformanceWitness + 16))(v52, &v74, v33, AssociatedConformanceWitness);
      v55 = v73[1];
      v55(v52, v33);
      v55(v54, v33);
      return v50 & 1;
    }

    (v73[1])(v70, v33);
    v28 = v71;
  }

  v40 = *(v28 + 8);
  v40(v31, v30);
  v41 = v2 + v57;
  v42 = v65;
  v43 = v72;
  v72(v65, v41, v30);
  v44 = v58;
  v45 = v58(v42, 1, v35);
  v40(v42, v30);
  if (v45 == 1)
  {
    v46 = v66;
    v47 = *(*v66 + 120);
    swift_beginAccess();
    v48 = v46 + v47;
    v49 = v63;
    v43(v63, v48, v30);
    v50 = v44(v49, 1, v35) == 1;
    v40(v49, v30);
  }

  else
  {
LABEL_8:
    v50 = 0;
  }

  return v50 & 1;
}

uint64_t ProtocolMetadata.isEqual(to:for:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v8 = *a3;
    swift_unknownObjectRetain();
    v6 = ProtocolMetadata.isEqual(to:for:)(v5, &v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t static ProtocolMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    v6 = 0;
    v4 = ProtocolMetadata.isEqual(to:for:)(a3, &v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_181F4AE14()
{
  v0 = nw_protocol_copy_ws_definition();
  type metadata accessor for NWProtocolDefinition();
  v1 = swift_allocObject();
  *(v1 + 32) = v0;
  v2 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v3 = sub_182AD2F88();
  v5 = v4;

  *(v1 + 16) = v3;
  *(v1 + 24) = v5;
  off_1EA838800 = v1;
}

uint64_t static NWProtocolWebSocket.definition.getter()
{
  if (qword_1EA837040 != -1)
  {
    swift_once();
  }
}

uint64_t NWProtocolWebSocket.Version.hashValue.getter()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

uint64_t sub_181F4AF74()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

uint64_t sub_181F4AFB8()
{
  sub_182AD44E8();
  MEMORY[0x1865DB070](0);
  return sub_182AD4558();
}

Network::NWProtocolWebSocket::Opcode_optional __swiftcall NWProtocolWebSocket.Opcode.init(rawValue:)(Network::NWProtocolWebSocket::Opcode_optional rawValue)
{
  if (rawValue.value > 0xAu)
  {
    *v1 = 6;
  }

  else
  {
    *v1 = byte_182AE56BA[rawValue.value];
  }

  return rawValue;
}

uint64_t sub_181F4B07C()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F4B114()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

Network::NWProtocolWebSocket::CloseCode::Defined_optional __swiftcall NWProtocolWebSocket.CloseCode.Defined.init(rawValue:)(Swift::UInt16 rawValue)
{
  if ((rawValue - 1000) > 0xFu)
  {
    *v1 = 12;
  }

  else
  {
    *v1 = byte_182AE5740[(rawValue - 1000)];
  }

  return rawValue;
}

uint64_t sub_181F4B1FC()
{
  sub_182AD44E8();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t sub_181F4B284()
{
  sub_182AD44E8();
  sub_182AD4528();
  return sub_182AD4558();
}

uint64_t NWProtocolWebSocket.CloseCode.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result - 1000) > 0x7CFu)
  {
    if ((result - 3000) < 0x3E8u)
    {
      v3 = 1;
      goto LABEL_8;
    }

    if ((result - 4000) < 0x3E8u)
    {
      v3 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    NWProtocolWebSocket.CloseCode.Defined.init(rawValue:)(result);
    result = v5;
    if (v5 != 12)
    {
      v3 = 0;
LABEL_8:
      *a2 = result;
      *(a2 + 2) = v3;
      return result;
    }
  }

  sub_181F4B3B8();
  swift_allocError();
  *v4 = 22;
  *(v4 + 4) = 0;
  return swift_willThrow();
}

unint64_t sub_181F4B3B8()
{
  result = qword_1EA836C00;
  if (!qword_1EA836C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836C00);
  }

  return result;
}

void sub_181F4B448(char a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  nw_ws_options_set_auto_reply_ping(*(v1 + 16), a1 & 1);
}

void (*sub_181F4B494(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_181F4B4E8;
}

void sub_181F4B4E8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    nw_ws_options_set_auto_reply_ping(v5, v6);
  }
}

void sub_181F4B570(size_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
  nw_ws_options_set_maximum_message_size(*(v1 + 16), a1);
}

void (*sub_181F4B5BC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_181F4B610;
}

void sub_181F4B610(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 16);
    v6 = *(v4 + 32);

    nw_ws_options_set_maximum_message_size(v5, v6);
  }
}

void sub_181F4B698(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  nw_ws_options_set_skip_handshake(*(v1 + 16), a1 & 1);
}

void (*sub_181F4B6E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_181F4B738;
}

void sub_181F4B738(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 16);
    v6 = *(v4 + 40);

    nw_ws_options_set_skip_handshake(v5, v6);
  }
}

BOOL sub_181F4B78C(NSObject *a1)
{
  v1 = nw_protocol_options_copy_definition(a1);
  v2 = nw_protocol_copy_ws_definition();
  is_equal = nw_protocol_definition_is_equal(v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return is_equal;
}

uint64_t NWProtocolWebSocket.Options.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 16) = nw_ws_create_options(nw_ws_version_13);
  return v0;
}

uint64_t NWProtocolWebSocket.Options.init(_:)()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 16) = nw_ws_create_options(nw_ws_version_13);
  return v0;
}

uint64_t sub_181F4B860(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_181F4B8A0(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = result + 56;
    do
    {
      v5 = sub_182AD3048();
      v6 = sub_182AD3048();
      nw_ws_options_add_additional_header(v3, (v5 + 32), (v6 + 32));

      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_181F4B928(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = result + 40;
    do
    {
      v5 = sub_182AD3048();
      nw_ws_options_add_subprotocol(v3, (v5 + 32));

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_181F4B988(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_181F4C918;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_181F4BF0C;
  v10[3] = &block_descriptor;
  v9 = _Block_copy(v10);

  nw_ws_options_set_client_request_handler(v7, a1, v9);
  _Block_release(v9);
}

uint64_t sub_181F4BA74(NSObject *a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v4 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = &v31;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_181F4D2B4;
  *(v6 + 24) = v5;
  v29 = sub_181B77468;
  v30 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_181B7749C;
  v28 = &block_descriptor_64;
  v7 = _Block_copy(&aBlock);

  nw_ws_request_enumerate_subprotocols(a1, v7);
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = &v24;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_181F4D2BC;
  *(v10 + 24) = v9;
  v29 = sub_181F4D2E8;
  v30 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_181F4BED8;
  v28 = &block_descriptor_74;
  v11 = _Block_copy(&aBlock);

  nw_ws_request_enumerate_additional_headers(a1, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = v31;

  v15 = sub_182184D94(v14);

  a2(&aBlock, v13, v15);

  v16 = v28;
  if (aBlock)
  {
    v17 = nw_ws_response_status_reject;
  }

  else
  {
    v17 = nw_ws_response_status_accept;
  }

  if (v27)
  {
    v18 = (sub_182AD3048() + 32);
  }

  else
  {
    v18 = 0;
  }

  v19 = nw_ws_response_create(v17, v18);
  swift_unknownObjectRelease();
  if (v16)
  {

    v20 = v16[2];
    if (v20)
    {
      v21 = (v16 + 7);
      do
      {
        v22 = sub_182AD3048();
        v23 = sub_182AD3048();
        nw_ws_response_add_additional_header(v19, (v22 + 32), (v23 + 32));

        v21 += 32;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
  }

  return v19;
}

uint64_t sub_181F4BE20(uint64_t a1, char **a2)
{
  v3 = sub_182AD3158();
  v5 = v4;
  v6 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_181E59474(0, *(v6 + 2) + 1, 1, v6);
    *a2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_181E59474((v8 > 1), v9 + 1, 1, v6);
    *a2 = v6;
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[16 * v9];
  *(v10 + 4) = v3;
  *(v10 + 5) = v5;
  return 1;
}

id sub_181F4BF0C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();

  return v3;
}

uint64_t NWProtocolWebSocket.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t NWProtocolWebSocket.Metadata.__allocating_init(opcode:)(char *a1)
{
  v2 = swift_allocObject();
  NWProtocolWebSocket.Metadata.init(opcode:)(a1);
  return v2;
}

uint64_t NWProtocolWebSocket.Metadata.init(opcode:)(char *a1)
{
  v2 = *a1;
  *(v1 + 24) = v2;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(dword_182AE56C8[v2]);
  return v1;
}

uint64_t sub_181F4C060(NSObject *a1)
{
  v2 = swift_allocObject();
  sub_181F4C0A0(a1);
  return v2;
}

uint64_t sub_181F4C0A0(NSObject *a1)
{
  if (nw_ws_metadata_get_opcode(a1) == nw_ws_opcode_invalid)
  {
    v4 = 0;
LABEL_8:
    *(v1 + 24) = v4;
    close_code = nw_ws_metadata_get_close_code(a1);
    if (!WORD1(close_code))
    {
      NWProtocolWebSocket.CloseCode.init(rawValue:)(close_code, &v8);
      v6 = v9;
      *(v1 + 40) = v8;
      *(v1 + 42) = v6;
      *(v1 + 32) = nw_ws_metadata_copy_server_response(a1);
      *(v1 + 16) = a1;
      return v1;
    }

    __break(1u);
    goto LABEL_11;
  }

  opcode = nw_ws_metadata_get_opcode(a1);
  if (opcode < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (opcode <= 0xFF)
  {
    if (opcode > nw_ws_opcode_pong || ((0x707u >> opcode) & 1) == 0)
    {
      goto LABEL_13;
    }

    v4 = byte_182AE56E0[opcode];
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_181F4C190@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 42);
  *a1 = *(v1 + 40);
  *(a1 + 2) = v4;
  return result;
}

void sub_181F4C1DC(unsigned __int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 42) = v3;
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = dword_182AE56EC[v2];
  }

  nw_ws_metadata_set_close_code(*(v1 + 16), v4);
}

void (*sub_181F4C258(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_181F4C2AC;
}

void sub_181F4C2AC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 40);
    if (*(v4 + 42))
    {
      v6 = *(v4 + 16);
    }

    else
    {
      v6 = *(v4 + 16);
      v7 = *(v4 + 40);
      if (v5 == 10)
      {
        v8 = 1011;
      }

      else
      {
        v8 = 1015;
      }

      if (v7 == 9)
      {
        v9 = 1010;
      }

      else
      {
        v9 = v8;
      }

      if (v7 == 7)
      {
        v10 = 1008;
      }

      else
      {
        v10 = 1009;
      }

      if (v7 == 6)
      {
        v11 = 1007;
      }

      else
      {
        v11 = v10;
      }

      if (v5 <= 8u)
      {
        v9 = v11;
      }

      if (v7 == 4)
      {
        v12 = 1005;
      }

      else
      {
        v12 = 1006;
      }

      if (v7 == 3)
      {
        v13 = 1003;
      }

      else
      {
        v13 = v12;
      }

      if (v7 == 1)
      {
        v14 = 1001;
      }

      else
      {
        v14 = 1002;
      }

      if (v7)
      {
        v15 = v14;
      }

      else
      {
        v15 = 1000;
      }

      if (v5 > 2u)
      {
        v15 = v13;
      }

      if (v5 <= 5u)
      {
        v5 = v15;
      }

      else
      {
        v5 = v9;
      }
    }

    nw_ws_metadata_set_close_code(v6, v5);
  }
}

void sub_181F4C3A0(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_181F4C920;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_181AA4EBC;
  v10[3] = &block_descriptor_7;
  v9 = _Block_copy(v10);

  nw_ws_metadata_set_pong_handler(v7, a1, v9);
  _Block_release(v9);
}

uint64_t sub_181F4C48C()
{
  if (*(v0 + 32))
  {
    v1 = swift_unknownObjectRetain();
    if (nw_ws_response_get_selected_subprotocol(v1))
    {
      v2 = sub_182AD3158();
      swift_unknownObjectRelease();
      return v2;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_181F4C4F8()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return v1;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_181F4D2EC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_181F4C928;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181F4BED8;
  aBlock[3] = &block_descriptor_16;
  v4 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  nw_ws_response_enumerate_additional_headers(v1, v4);
  swift_unknownObjectRelease();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v1 = v8;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181F4C66C(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = sub_182AD3158();
  v6 = v5;
  v7 = sub_182AD3158();
  v9 = v8;
  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_181F59728(0, v10[2] + 1, 1, v10);
    *a3 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_181F59728((v12 > 1), v13 + 1, 1, v10);
    *a3 = v10;
  }

  v10[2] = v13 + 1;
  v14 = &v10[4 * v13];
  v14[4] = v4;
  v14[5] = v6;
  v14[6] = v7;
  v14[7] = v9;
  return 1;
}

uint64_t NWProtocolWebSocket.Metadata.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t NWProtocolWebSocket.Metadata.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t NWProtocolWebSocket.Response.Status.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  return sub_182AD4558();
}

uint64_t NWProtocolWebSocket.Response.subprotocol.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void __swiftcall NWProtocolWebSocket.Response.init(status:subprotocol:additionalHeaders:)(Network::NWProtocolWebSocket::Response *__return_ptr retstr, Network::NWProtocolWebSocket::Response::Status status, Swift::String_optional subprotocol, Swift::OpaquePointer_optional additionalHeaders)
{
  retstr->status = *status;
  retstr->subprotocol = subprotocol;
  retstr->additionalHeaders.value._rawValue = additionalHeaders.value._rawValue;
}

BOOL _s7Network19NWProtocolWebSocketC9CloseCodeO2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 2);
  if (*(a1 + 2))
  {
    v6 = v4 == 1 && v2 == v3;
    v8 = v4 == 2 && v2 == v3;
    if (*(a1 + 2) == 1)
    {
      return v6;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    return !*(a2 + 2) && word_182AE571C[v2] == word_182AE571C[v3];
  }
}

unint64_t sub_181F4C958()
{
  result = qword_1EA838810;
  if (!qword_1EA838810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838810);
  }

  return result;
}

unint64_t sub_181F4C9B0()
{
  result = qword_1EA838818;
  if (!qword_1EA838818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838818);
  }

  return result;
}

unint64_t sub_181F4CA08()
{
  result = qword_1EA838820;
  if (!qword_1EA838820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838820);
  }

  return result;
}

unint64_t sub_181F4CA60()
{
  result = qword_1EA838828;
  if (!qword_1EA838828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838828);
  }

  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NWProtocolWebSocket.CloseCode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NWProtocolWebSocket.CloseCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWProtocolWebSocket.CloseCode.Defined(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NWProtocolWebSocket.CloseCode.Defined(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_181F4D0A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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
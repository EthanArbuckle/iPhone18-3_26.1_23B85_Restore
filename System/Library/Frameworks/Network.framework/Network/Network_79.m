uint64_t ProtocolStack.transport.setter(_OWORD *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 32) = *a1;
  return sub_181A5301C(v3, v2);
}

uint64_t ProtocolStack.__allocating_init(noInternet:)(char a1)
{
  v2 = swift_allocObject();
  ProtocolStack.init(noInternet:)(a1);
  return v2;
}

uint64_t sub_181F619E0(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v7 = *v2;
  v6 = *(v2 + 8);
  if (!(v6 >> 62))
  {
    if (!(v3 >> 62))
    {
      sub_181B2C3E0(*a1, v3);
      sub_181B2C3E0(v7, v6);
      v12 = sub_181CC4EF0(v4, v5);
      sub_181AAD084(v7, v6);
      sub_181AAD084(v4, v3);
      return v12 & 1;
    }

    if (v3 >> 62 != 1)
    {

LABEL_14:
      sub_181AAD084(v11, v6);
      sub_181AAD084(v4, v3);
      v10 = 0;
      return v10 & 1;
    }

    goto LABEL_10;
  }

  if (v6 >> 62 != 1)
  {
    if (!(v3 >> 62))
    {

      goto LABEL_13;
    }

    if (v3 >> 62 != 1)
    {
      sub_181AAD084(*v2, *(v2 + 8));
      sub_181AAD084(v4, v3);
      v10 = 1;
      return v10 & 1;
    }

LABEL_10:
    sub_181B2C3E0(*a1, v3);
    sub_181B2C3E0(v7, v6);
LABEL_13:
    v11 = v7;
    goto LABEL_14;
  }

  if (v3 >> 62 != 1)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  v14 = v5;
  v9 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  sub_181B2C3E0(v4, v3);
  sub_181B2C3E0(v7, v6);
  v10 = v9(v4, v3 & 0x3FFFFFFFFFFFFFFFLL, &v14, ObjectType, v6 & 0x3FFFFFFFFFFFFFFFLL);
  sub_181AAD084(v7, v6);
  sub_181AAD084(v4, v3);
  return v10 & 1;
}

uint64_t static ProtocolStack.ApplicationProtocol.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  if (!(v3 >> 62))
  {
    if (!(v4 >> 62))
    {
      sub_181B2C3E0(*a2, *(a2 + 8));
      sub_181B2C3E0(v2, v3);
      v8 = sub_181CC4EF0(v5, 0);
      goto LABEL_12;
    }

    if (v4 >> 62 != 1)
    {

LABEL_15:
      sub_181AAD084(v9, v3);
      sub_181AAD084(v5, v4);
      v10 = 0;
      return v10 & 1;
    }

    goto LABEL_10;
  }

  if (v3 >> 62 != 1)
  {
    if (!(v4 >> 62))
    {

      goto LABEL_14;
    }

    if (v4 >> 62 != 1)
    {
      sub_181AAD084(*a1, v3);
      sub_181AAD084(v5, v4);
      v10 = 1;
      return v10 & 1;
    }

LABEL_10:
    sub_181B2C3E0(*a2, *(a2 + 8));
    sub_181B2C3E0(v2, v3);
LABEL_14:
    v9 = v2;
    goto LABEL_15;
  }

  if (v4 >> 62 != 1)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  v12 = 0;
  v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  sub_181B2C3E0(v5, v4);
  sub_181B2C3E0(v2, v3);
  v8 = v7(v5, v4 & 0x3FFFFFFFFFFFFFFFLL, &v12, ObjectType, v3 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_12:
  v10 = v8;
  sub_181AAD084(v2, v3);
  sub_181AAD084(v5, v4);
  return v10 & 1;
}

uint64_t sub_181F61D2C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 56);
  if ((v3 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  v4 = *(v2 + 48);
  v5 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return 0;
      }

      if (v3 >> 61 != 1 || v4 != a1)
      {
        return 0;
      }
    }

    else
    {
      if (v3 >> 61)
      {
        v10 = 0;
      }

      else
      {
        v10 = v4 == a1;
      }

      if (!v10)
      {
        return 0;
      }
    }
  }

  else if (v5 == 2)
  {
    if (v3 >> 61 != 2 || v4 != a1)
    {
      return 0;
    }
  }

  else if (v5 == 3)
  {
    if (v3 >> 61 != 3 || v4 != a1)
    {
      return 0;
    }
  }

  else if (v5 != 6 || a1 || a2 != 0xC000000000000000 || (v3 & 0xE000000000000000) != 0xC000000000000000 || v4 || v3 != 0xC000000000000000)
  {
    return 0;
  }

  return 1;
}

uint64_t _s7Network13ProtocolStackC011ApplicationB0O4hash4intoys6HasherVz_tF_0()
{
  v2 = *v0;
  v1 = v0[1];
  if (!(v1 >> 62))
  {
    swift_beginAccess();
    v9 = *(v2 + 16);
    v10 = *(v2 + 17);
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    v11 = *(v2 + 40);
    MEMORY[0x1865DB070](v9);
    MEMORY[0x1865DB070](v10);
    if (v11)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v6, v7, 1);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (v1 >> 62 == 1)
  {
    v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    (*(v3 + 96))(v13, ObjectType, v3);
    v5 = BYTE1(v13[0]);
    v6 = v13[1];
    v7 = v13[2];
    v8 = v14;
    MEMORY[0x1865DB070](LOBYTE(v13[0]));
    MEMORY[0x1865DB070](v5);
    if (v8)
    {
      MEMORY[0x1865DB070](1);
LABEL_7:
      sub_182AD30E8();
      return sub_181F48350(v6, v7, 1);
    }

LABEL_8:
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v6);
    sub_182AD30E8();
    sub_181F48350(v6, v7, 0);
  }

  return MEMORY[0x1865DB070](0);
}

uint64_t sub_181F61FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = result;
    v8 = (result + *(*result + 128));
    result = swift_beginAccess();
    if (*v8 == 3 || (v9 = vdupq_n_s64(*v8 | (*(v8 + 4) << 32)), v10 = vshlq_u64(v9, xmmword_182AE69D0), v14 = *v8, *v9.i8 = vmovn_s64(vshlq_u64(v9, xmmword_182AE69E0)), *v10.i8 = vmovn_s64(v10), v10.i16[1] = v10.i16[2], v10.i16[2] = v9.i16[0], v10.i16[3] = v9.i16[2], *v9.i8 = vmovn_s16(v10), v15 = v9.i32[0], v13 = 0, v12 = 0, result = _s7Network10IPProtocolV9IPOptionsV2eeoiySbAE_AEtFZ_0(&v14, &v12, *v9.i8, *v10.i8), (result & 1) == 0))
    {
      v11 = 0;
      a1 = v7;
    }

    else
    {
      result = swift_unknownObjectRelease();
      a1 = 0;
      v11 = 0x8000000000000000;
    }
  }

  else
  {
    v11 = a2 | 0x4000000000000000;
  }

  *a3 = a1;
  a3[1] = v11;
  return result;
}

uint64_t sub_181F62120(void (*a1)(_BYTE *))
{
  v5 = *v1;
  sub_182AD44E8();
  a1(v4);
  return sub_182AD4558();
}

uint64_t sub_181F6218C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v7 = *v3;
  sub_182AD44E8();
  a3(v6);
  return sub_182AD4558();
}

uint64_t sub_181F621F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v8 = *v4;
  sub_182AD44E8();
  a4(v7);
  return sub_182AD4558();
}

uint64_t ProtocolStack.TransportProtocol.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v1 >> 61;
  if ((v1 >> 61) <= 2 || v3 <= 4)
  {
    swift_beginAccess();
    v4 = *(v2 + 16);
    v5 = *(v2 + 17);
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    v8 = *(v2 + 40);
    MEMORY[0x1865DB070](v4);
    MEMORY[0x1865DB070](v5);
    if (v8)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v6, v7, 1);
LABEL_5:
      sub_182AD30E8();
      return sub_181F48350(v6, v7, 1);
    }

LABEL_9:
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v6);
    sub_182AD30E8();
    sub_181F48350(v6, v7, 0);
  }

  if (v3 == 5)
  {
    v10 = v1 & 0x1FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    (*(v10 + 96))(v14, ObjectType, v10);
    v12 = BYTE1(v14[0]);
    v6 = v14[1];
    v7 = v14[2];
    v13 = v15;
    MEMORY[0x1865DB070](LOBYTE(v14[0]));
    MEMORY[0x1865DB070](v12);
    if (v13)
    {
      MEMORY[0x1865DB070](1);
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return MEMORY[0x1865DB070](0);
}

uint64_t sub_181F62414(__int128 *a1, _OWORD *a2, uint64_t (*a3)(_OWORD *, char *))
{
  v3 = *a1;
  v6[0] = *a2;
  v6[1] = v3;
  v5 = 0;
  return a3(v6, &v5) & 1;
}

uint64_t sub_181F62460(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 61;
  if ((v4 >> 61) <= 2 || v6 <= 4)
  {
    v7 = *(v5 + 56);
    if ((v7 & 0x1000000000000000) == 0)
    {
      v8 = *(v5 + 48);
      v9 = v3 >> 61;
      if ((v3 >> 61) <= 1)
      {
        if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_28;
          }

          if (v7 >> 61 != 1 || v2 != v8)
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v7 >> 61)
          {
            v17 = 0;
          }

          else
          {
            v17 = v2 == v8;
          }

          if (!v17)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v9 == 2)
      {
        if (v7 >> 61 != 2 || v2 != v8)
        {
          goto LABEL_28;
        }
      }

      else if (v9 == 3)
      {
        if (v7 >> 61 != 3 || v2 != v8)
        {
          goto LABEL_28;
        }
      }

      else if (v9 != 6 || v2 || v3 != 0xC000000000000000 || (v7 & 0xE000000000000000) != 0xC000000000000000 || v8 || v7 != 0xC000000000000000)
      {
        goto LABEL_28;
      }

      v12 = 1;
      return v12 & 1;
    }

LABEL_28:
    v12 = 0;
    return v12 & 1;
  }

  if (v6 != 5)
  {
    goto LABEL_28;
  }

  v10 = v4 & 0x1FFFFFFFFFFFFFFFLL;
  ObjectType = swift_getObjectType();
  v18[0] = v2;
  v18[1] = v3;
  v12 = (*(v10 + 48))(v18, ObjectType, v10);
  return v12 & 1;
}

uint64_t sub_181F62628(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *, char *))
{
  v5 = *a1;
  v8[0] = *a2;
  v8[1] = v5;
  v7 = 0;
  return a5(v8, &v7) & 1;
}

uint64_t ProtocolStack.LinkProtocol.hash(into:)()
{
  if (!*v0)
  {
    return MEMORY[0x1865DB070](0);
  }

  v1 = v0[1];
  ObjectType = swift_getObjectType();
  (*(v1 + 96))(v8, ObjectType, v1);
  v3 = BYTE1(v8[0]);
  v4 = v8[1];
  v5 = v8[2];
  v6 = v9;
  MEMORY[0x1865DB070](LOBYTE(v8[0]));
  MEMORY[0x1865DB070](v3);
  if (v6)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();

    return sub_181F48350(v4, v5, 1);
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v4);
    sub_182AD30E8();
    sub_181F48350(v4, v5, 0);
  }
}

uint64_t ProtocolStack.LinkProtocol.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_182AD44E8();
  if (v2)
  {
    ObjectType = swift_getObjectType();
    (*(v1 + 96))(v9, ObjectType, v1);
    v4 = BYTE1(v9[0]);
    v5 = v9[1];
    v6 = v9[2];
    v7 = v10;
    MEMORY[0x1865DB070](LOBYTE(v9[0]));
    MEMORY[0x1865DB070](v4);
    if (v7)
    {
      MEMORY[0x1865DB070](1);
      sub_182AD30E8();
      sub_181F48350(v5, v6, 1);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v5);
      sub_182AD30E8();
      sub_181F48350(v5, v6, 0);
    }
  }

  else
  {
    MEMORY[0x1865DB070](0);
  }

  return sub_182AD4558();
}

uint64_t sub_181F628F4()
{
  v2 = *v0;
  v1 = v0[1];
  sub_182AD44E8();
  if (v2)
  {
    ObjectType = swift_getObjectType();
    (*(v1 + 96))(v9, ObjectType, v1);
    v4 = BYTE1(v9[0]);
    v5 = v9[1];
    v6 = v9[2];
    v7 = v10;
    MEMORY[0x1865DB070](LOBYTE(v9[0]));
    MEMORY[0x1865DB070](v4);
    if (v7)
    {
      MEMORY[0x1865DB070](1);
      sub_182AD30E8();
      sub_181F48350(v5, v6, 1);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v5);
      sub_182AD30E8();
      sub_181F48350(v5, v6, 0);
    }
  }

  else
  {
    MEMORY[0x1865DB070](0);
  }

  return sub_182AD4558();
}

uint64_t (*ProtocolStack.transport.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  ProtocolStack.transport.getter(a1);
  return sub_181F62A5C;
}

uint64_t sub_181F62A5C(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = *a1;
  *(v2 + 40) = v3;
  if (a2)
  {
    sub_181AC8268(v4, v3);
    sub_181A5301C(v5, v6);

    return sub_181A53008(v4, v3);
  }

  else
  {

    return sub_181A5301C(v5, v6);
  }
}

uint64_t ProtocolStack.internet.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v3;
  a1[1] = v4;
  return sub_181B687F0(v3, v4);
}

uint64_t ProtocolStack.internet.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return sub_181A52FE0(v4, v5);
}

uint64_t ProtocolStack.link.setter(_OWORD *a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = *a1;
  return sub_181AC3890(v2);
}

uint64_t (*ProtocolStack.link.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  ProtocolStack.link.getter(a1);
  return sub_181F62C34;
}

uint64_t sub_181F62C34(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *(v2 + 64);
  *(v2 + 64) = *a1;
  *(v2 + 72) = v3;
  if (a2)
  {
    sub_181AB78DC(v4);
    sub_181AC3890(v5);

    return sub_181B03DAC(v4);
  }

  else
  {

    return sub_181AC3890(v5);
  }
}

uint64_t ProtocolStack.prepend(applicationProtocol:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838AB0);
  v4 = swift_dynamicCastClass();
  v5 = a2 | 0x4000000000000000;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v9[0] = v6;
  v9[1] = v7;
  swift_unknownObjectRetain();
  sub_181B2DB04(v9);
  return sub_181AAD084(v6, v7);
}

uint64_t sub_181F62D48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(sub_181AC9084() + 24);

  if (v8 < 0)
  {
    goto LABEL_93;
  }

  v64 = v5;
  v65 = v4;
  v10 = (v6 >> 62);
  v68 = v2;
  if (v8)
  {
    v11 = 0;
    v12 = v6 & 0xC000000000000000;
    v66 = v8;
    do
    {
      v13 = *(v3 + 16);
      if (v11 >= v13[3])
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v14 = v13[4];
      if (v11 + v14 >= v13[2])
      {
        v15 = v13[2];
      }

      else
      {
        v15 = 0;
      }

      v16 = &v13[2 * v11 + 2 * (v14 - v15)];
      v17 = v16[5];
      v18 = v16[6];
      if (v18 >> 62)
      {
        if (v18 >> 62 != 1)
        {
          if (v10)
          {
            if (v10 != 1)
            {
              sub_181AAD084(v17, v18);
              result = sub_181AAD084(v7, v6);
LABEL_50:
              v36 = *(v3 + 16);
              v37 = v36[3];
              if (v37 >= v11)
              {
                v38 = v37 + 1;
                if (!__OFADD__(v37, 1))
                {

                  result = swift_isUniquelyReferenced_nonNull_native();
                  if (v36[2] >= v38 && (result & 1) != 0)
                  {
                    v39 = (v36 + 5);
                    if (v11)
                    {
                      goto LABEL_55;
                    }

LABEL_58:
                    v40 = v36[4];
                    if (v40)
                    {
                      v41 = __OFSUB__(v40, 1);
                      v42 = v40 - 1;
                      v44 = v64;
                      v43 = v65;
                      if (!v41)
                      {
                        goto LABEL_80;
                      }

                      __break(1u);
LABEL_62:

                      result = sub_18207F4F8(v39, 1uLL, v11, v36 + 2, v69);
                      v45 = v69[0];
                      if (!v69[0])
                      {
                        goto LABEL_103;
                      }

                      v46 = v64;
                      v47 = v65;
                      *v69[0] = v64;
                      *(v45 + 8) = v65;
                    }

                    else
                    {
                      v56 = v36[2];
                      v41 = __OFSUB__(v56, 1);
                      v42 = v56 - 1;
                      v44 = v64;
                      v43 = v65;
                      if (v41)
                      {
                        goto LABEL_101;
                      }

LABEL_80:
                      v57 = &v39[16 * v42];
                      *v57 = v44;
                      *(v57 + 1) = v43;
                      v36[4] = v42;
                      v58 = v36[3];
                      v41 = __OFADD__(v58, 1);
                      v59 = v58 + 1;
                      if (v41)
                      {
                        goto LABEL_99;
                      }

                      v36[3] = v59;

                      v46 = v44;
                      v47 = v43;
                    }

                    sub_181B2C3E0(v46, v47);
                  }

                  else
                  {
                    result = sub_181B2C3FC(result, v38);
                    v39 = (v36 + 5);
                    if (!v11)
                    {
                      goto LABEL_58;
                    }

LABEL_55:
                    if (v36[3] != v11)
                    {
                      goto LABEL_62;
                    }

                    sub_18207F280(v64, v65, v36 + 2, v39);
                  }

                  *(v3 + 16) = v36;
                }

LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
                goto LABEL_98;
              }

LABEL_95:
              __break(1u);
              goto LABEL_96;
            }

            swift_unknownObjectRetain();
          }

          else
          {
LABEL_17:
          }

          goto LABEL_5;
        }

        if (v12 != 0x4000000000000000)
        {
          goto LABEL_4;
        }

        ObjectType = swift_getObjectType();
        LOBYTE(v69[0]) = 0;
        v10 = *((v18 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        sub_181B2C3E0(v17, v18);
        sub_181B2C3E0(v7, v6);
        sub_181B2C3E0(v17, v18);
        v20 = ObjectType;
        v12 = 0x4000000000000000;
        v8 = v66;
        v3 = v68;
        v21 = v10(v7, v6 & 0x3FFFFFFFFFFFFFFFLL, v69, v20, v18 & 0x3FFFFFFFFFFFFFFFLL);
        LODWORD(v10) = v6 >> 62;
      }

      else
      {
        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_17;
          }

LABEL_4:
          sub_181B2C3E0(v7, v6);
          sub_181B2C3E0(v17, v18);
LABEL_5:
          sub_181AAD084(v17, v18);
          result = sub_181AAD084(v7, v6);
          goto LABEL_6;
        }

        sub_181B2C3E0(v17, v18);
        sub_181B2C3E0(v7, v6);
        sub_181B2C3E0(v17, v18);
        v21 = sub_181CC4EF0(v7, 0);
      }

      v22 = v21;
      sub_181AAD084(v17, v18);
      sub_181AAD084(v17, v18);
      result = sub_181AAD084(v7, v6);
      if (v22)
      {
        goto LABEL_50;
      }

LABEL_6:
      ++v11;
    }

    while (v8 != v11);
  }

  v23 = *(sub_181A54748() + 24);

  if (v23 < 0)
  {
    goto LABEL_94;
  }

  if (!v23)
  {
    return result;
  }

  v24 = 0;
  v25 = v6 & 0xC000000000000000;
  v67 = v23;
  while (1)
  {
    v26 = *(v3 + 24);
    if (v24 >= v26[3])
    {
      goto LABEL_92;
    }

    v27 = v26[4];
    v28 = v24 + v27 >= v26[2] ? v26[2] : 0;
    v29 = &v26[2 * v24 + 2 * (v27 - v28)];
    v30 = v29[5];
    v31 = v29[6];
    if (v31 >> 62)
    {
      break;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_41;
      }

LABEL_28:
      sub_181B2C3E0(v7, v6);
      sub_181B2C3E0(v30, v31);
LABEL_29:
      sub_181AAD084(v30, v31);
      result = sub_181AAD084(v7, v6);
      goto LABEL_30;
    }

    sub_181B2C3E0(v30, v31);
    sub_181B2C3E0(v7, v6);
    sub_181B2C3E0(v30, v31);
    v34 = sub_181CC4EF0(v7, 0);
LABEL_47:
    v35 = v34;
    sub_181AAD084(v30, v31);
    sub_181AAD084(v30, v31);
    result = sub_181AAD084(v7, v6);
    if (v35)
    {
      goto LABEL_65;
    }

LABEL_30:
    if (v23 == ++v24)
    {
      return result;
    }
  }

  if (v31 >> 62 == 1)
  {
    if (v25 != 0x4000000000000000)
    {
      goto LABEL_28;
    }

    v32 = swift_getObjectType();
    LOBYTE(v69[0]) = 0;
    v10 = *((v31 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_181B2C3E0(v30, v31);
    sub_181B2C3E0(v7, v6);
    sub_181B2C3E0(v30, v31);
    v33 = v32;
    v25 = 0x4000000000000000;
    v23 = v67;
    v34 = v10(v7, v6 & 0x3FFFFFFFFFFFFFFFLL, v69, v33, v31 & 0x3FFFFFFFFFFFFFFFLL);
    LODWORD(v10) = v6 >> 62;
    v3 = v68;
    goto LABEL_47;
  }

  if (!v10)
  {
LABEL_41:

    goto LABEL_29;
  }

  if (v10 == 1)
  {
    swift_unknownObjectRetain();
    goto LABEL_29;
  }

  sub_181AAD084(v30, v31);
  result = sub_181AAD084(v7, v6);
LABEL_65:
  v48 = *(v3 + 24);
  v49 = *(v48 + 24);
  if (v49 < v24)
  {
    goto LABEL_97;
  }

  v50 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v48 + 16) < v50 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B2C3FC(isUniquelyReferenced_nonNull_native, v50);
    }

    if (v24)
    {
      if (*(v48 + 24) == v24)
      {
        sub_18207F280(v64, v65, (v48 + 16), v48 + 40);
        goto LABEL_87;
      }

LABEL_77:

      result = sub_18207F4F8((v48 + 40), 1uLL, v24, (v48 + 16), v69);
      v55 = v69[0];
      if (!v69[0])
      {
        goto LABEL_104;
      }

      *v69[0] = v64;
      *(v55 + 8) = v65;
      sub_181B2C3E0(v64, v65);
    }

    else
    {
      v52 = *(v48 + 32);
      if (v52)
      {
        v41 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        result = v64;
        v54 = v65;
        if (v41)
        {
          __break(1u);
          goto LABEL_77;
        }
      }

      else
      {
        v60 = *(v48 + 16);
        v41 = __OFSUB__(v60, 1);
        v53 = v60 - 1;
        result = v64;
        v54 = v65;
        if (v41)
        {
          goto LABEL_102;
        }
      }

      v61 = (v48 + 40 + 16 * v53);
      *v61 = result;
      v61[1] = v54;
      *(v48 + 32) = v53;
      v62 = *(v48 + 24);
      v41 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v41)
      {
        goto LABEL_100;
      }

      *(v48 + 24) = v63;
      sub_181B2C3E0(result, v54);
LABEL_87:
    }

    *(v3 + 24) = v48;
  }

LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_181F633C8(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = a1[24];
  sub_181F49A24(v5, v6, v7);
  v31 = sub_181AC9084();
  v30 = v4;
  v8 = sub_181F671B4(&v31, v3 | (v4 << 8), v5, v6, v7);
  result = sub_181F48350(v5, v6, v7);
  v10 = v31;
  v11 = *(v31 + 24);
  if (v11 < v8)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v8 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1820E5EE8();
    v10 = v31;
  }

  sub_18208064C(v8, v11, v10 + 16, v10 + 40);
  v2[2] = v10;

  sub_181F49A24(v5, v6, v7);
  v31 = sub_181A54748();
  v12 = sub_181F671B4(&v31, v3 | (v4 << 8), v5, v6, v7);
  result = sub_181F48350(v5, v6, v7);
  v13 = v31;
  v14 = *(v31 + 24);
  if (v14 < v12)
  {
    goto LABEL_24;
  }

  if (v12 < 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1820E5EE8();
    v13 = v31;
  }

  sub_18208064C(v12, v14, v13 + 16, v13 + 40);
  v2[3] = v13;

  ProtocolStack.transport.getter(&v31);
  v15 = v32;
  if ((~v32 & 0xF000000000000007) != 0)
  {
    v16 = v31;
    v35 = v31;
    v36 = v32;
    LOBYTE(v31) = v3;
    BYTE1(v31) = v30;
    v32 = v5;
    v33 = v6;
    v34 = v7;
    v17 = sub_181B37BFC(&v31);
    sub_181A53008(v16, v15);
    if (v17)
    {
      v18 = v2[4];
      v19 = v2[5];
      *(v2 + 2) = xmmword_182AE3CC0;
      sub_181A5301C(v18, v19);
    }
  }

  v20 = v2[13];
  if ((~v20 & 0xF000000000000007) != 0)
  {
    v35 = v2[12];
    v36 = v20;
    LOBYTE(v31) = v3;
    BYTE1(v31) = v30;
    v32 = v5;
    v33 = v6;
    v34 = v7;
    if (sub_181B37BFC(&v31))
    {
      v21 = v2[12];
      v22 = v2[13];
      *(v2 + 6) = xmmword_182AE3CC0;
      sub_181A53008(v21, v22);
    }
  }

  swift_beginAccess();
  if ((~v2[7] & 0xF000000000000007) != 0)
  {
    LOBYTE(v31) = v3;
    BYTE1(v31) = v30;
    v32 = v5;
    v33 = v6;
    v34 = v7;
    if (sub_181ACC890(&v31))
    {
      v23 = v2[6];
      v24 = v2[7];
      *(v2 + 3) = xmmword_182AE3CC0;
      sub_181A52FE0(v23, v24);
    }
  }

  result = ProtocolStack.link.getter(&v31);
  v25 = v31;
  if (v31 >= 2)
  {
    v26 = v32;
    ObjectType = swift_getObjectType();
    LOBYTE(v31) = v3;
    BYTE1(v31) = v30;
    v32 = v5;
    v33 = v6;
    v34 = v7;
    v28 = (*(v26 + 40))(&v31, ObjectType, v26);
    result = sub_181B03DAC(v25);
    if (v28)
    {
      v29 = v2[8];
      *(v2 + 4) = xmmword_182AE69F0;
      return sub_181AC3890(v29);
    }
  }

  return result;
}

uint64_t sub_181F636F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_181AC9084();
  v4 = v3;
  v5 = *(v3 + 32);
  v6 = *(v3 + 24) + v5;
  if (*(v3 + 16) < v6)
  {
    v6 = *(v3 + 16);
  }

  v57 = v3;
  v58 = v5;
  v59 = v6;
  while (1)
  {
    if (v5 != v6)
    {
      goto LABEL_9;
    }

    v3 = sub_181AC81FC(v3);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v4 = v57;
    v5 = v58;
LABEL_9:
    v7 = v5 + 1;
    v58 = v5 + 1;
    v8 = v4 + 16 * v5;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);
    if (v10 >> 62)
    {
      if (v10 >> 62 == 1)
      {
        v11 = v10 & 0x3FFFFFFFFFFFFFFFLL;
        ObjectType = swift_getObjectType();
        v13 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        swift_unknownObjectRetain();
        if (v13(a1, ObjectType, v10 & 0x3FFFFFFFFFFFFFFFLL))
        {

LABEL_37:
          v36 = a2;
          *a2 = v9;
          a2[1] = v11;
LABEL_45:
          v41 = 3;
LABEL_46:
          *(v36 + 16) = v41;
          return result;
        }

LABEL_4:
        v3 = sub_181AAD084(v9, v10);
      }
    }

    else
    {
      v14 = *(v9 + 56);
      v15 = ~v14 & 0x1000000000000007;
      v16 = v14 & 0x1000000000000000;
      if (v15)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = *(v9 + 48);

        if (v18 == a1)
        {

          result = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
          v11 = result;
          goto LABEL_37;
        }

        goto LABEL_4;
      }
    }

    v6 = v59;
    v5 = v7;
  }

  v19 = sub_181A54748();
  v20 = v19;
  v21 = *(v19 + 32);
  v22 = *(v19 + 24) + v21;
  if (*(v19 + 16) < v22)
  {
    v22 = *(v19 + 16);
  }

  v57 = v19;
  v58 = v21;
  v59 = v22;
  while (2)
  {
    if (v21 != v22)
    {
LABEL_27:
      v23 = v21 + 1;
      v58 = v21 + 1;
      v24 = v20 + 16 * v21;
      v25 = *(v24 + 40);
      v26 = *(v24 + 48);
      if (v26 >> 62)
      {
        if (v26 >> 62 != 1)
        {
          goto LABEL_23;
        }

        v27 = v26 & 0x3FFFFFFFFFFFFFFFLL;
        v28 = swift_getObjectType();
        v29 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
        swift_unknownObjectRetain();
        if (v29(a1, v28, v26 & 0x3FFFFFFFFFFFFFFFLL))
        {

LABEL_44:
          v36 = a2;
          *a2 = v25;
          a2[1] = v27;
          goto LABEL_45;
        }
      }

      else
      {
        v30 = *(v25 + 56);
        v31 = ~v30 & 0x1000000000000007;
        v32 = v30 & 0x1000000000000000;
        if (v31)
        {
          v33 = v32 == 0;
        }

        else
        {
          v33 = 1;
        }

        if (v33)
        {
          goto LABEL_23;
        }

        v34 = *(v25 + 48);

        if (v34 == a1)
        {

          result = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
          v27 = result;
          goto LABEL_44;
        }
      }

      v19 = sub_181AAD084(v25, v26);
LABEL_23:
      v22 = v59;
      v21 = v23;
      continue;
    }

    break;
  }

  v19 = sub_181AC81FC(v19);
  if (v19)
  {
    v20 = v57;
    v21 = v58;
    goto LABEL_27;
  }

  v37 = v55;
  ProtocolStack.transport.getter(&v57);
  v38 = v58;
  if ((~v58 & 0xF000000000000007) == 0)
  {
    goto LABEL_48;
  }

  v39 = v57;
  if (!sub_181BACEAC(a1))
  {
    sub_181A53008(v39, v38);
    v37 = v55;
    goto LABEL_48;
  }

  v40 = v38 >> 61;
  if ((v38 >> 61) <= 2)
  {
    goto LABEL_60;
  }

  if (v40 <= 4)
  {
    goto LABEL_52;
  }

  v37 = v55;
  if (v40 == 5)
  {
LABEL_77:
    result = v38 & 0x1FFFFFFFFFFFFFFFLL;
LABEL_78:
    v42 = a2;
    goto LABEL_79;
  }

LABEL_48:
  v38 = *(v37 + 104);
  if ((~v38 & 0xF000000000000007) == 0)
  {
    goto LABEL_55;
  }

  v39 = *(v37 + 96);
  v57 = v39;
  v58 = v38;
  sub_181AACFF4(v39, v38);
  if (!sub_181BACEAC(a1))
  {
    sub_181A53008(v39, v38);
    goto LABEL_55;
  }

  v40 = v38 >> 61;
  if ((v38 >> 61) <= 2)
  {
LABEL_60:
    if (!v40)
    {
      result = sub_181AA8428(&qword_1ED40F850, &unk_1EA838710);
      goto LABEL_78;
    }

    v42 = a2;
    if (v40 == 1)
    {
      result = sub_181AA8428(&unk_1ED40FF50, &unk_1EA838DE0);
    }

    else
    {
      result = sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);
    }

LABEL_79:
    *v42 = v39;
    v42[1] = result;
    *(v42 + 16) = 2;
  }

  else
  {
    if (v40 <= 4)
    {
LABEL_52:
      v42 = a2;
      if (v40 == 3)
      {
        result = sub_181AA8428(qword_1ED40FB50, &unk_1EA838750);
      }

      else
      {
        result = sub_181AA8428(&unk_1EA838AE0, &unk_1EA838DD0);
      }

      goto LABEL_79;
    }

    if (v40 == 5)
    {
      goto LABEL_77;
    }

LABEL_55:
    swift_beginAccess();
    v43 = *(v55 + 56);
    if ((~v43 & 0xF000000000000007) != 0)
    {
      v44 = *(v55 + 48);
      if (v43 >> 62)
      {
        if (v43 >> 62 == 1)
        {
          v45 = v43 & 0x3FFFFFFFFFFFFFFFLL;
          v46 = swift_getObjectType();
          v47 = *((v43 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          sub_181B2C3E0(v44, v43);
          result = v47(a1, v46, v43 & 0x3FFFFFFFFFFFFFFFLL);
          if (result)
          {
LABEL_81:
            v36 = a2;
            *a2 = v44;
            a2[1] = v45;
            v41 = 1;
            goto LABEL_46;
          }

LABEL_66:
          sub_181A52FE0(v44, v43);
        }
      }

      else
      {
        v48 = *(v44 + 56);
        if ((~v48 & 0x1000000000000007) != 0 && (v48 & 0x1000000000000000) != 0)
        {
          v49 = *(v44 + 48);
          sub_181B2C3E0(*(v55 + 48), *(v55 + 56));
          if (v49 == a1)
          {
            result = sub_181AA8428(&qword_1ED410260, &qword_1EA838760);
            v45 = result;
            goto LABEL_81;
          }

          goto LABEL_66;
        }
      }
    }

    result = ProtocolStack.link.getter(v56);
    v50 = v56[0];
    if (v56[0] >= 2uLL)
    {
      v51 = v56[1];
      v52 = swift_getObjectType();
      result = (*(v51 + 56))(a1, v52, v51);
      if (result)
      {
        v53 = a2;
        *a2 = v50;
        a2[1] = v51;
        goto LABEL_72;
      }

      result = sub_181B03DAC(v50);
    }

    v53 = a2;
    *a2 = 0;
    a2[1] = 0;
LABEL_72:
    *(v53 + 16) = 0;
  }

  return result;
}

uint64_t sub_181F63C90(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 1);
  v42 = *(a1 + 2);
  v44 = a1[24];
  v4 = sub_181AC9084();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *(v4 + 24) + v6;
  if (*(v4 + 16) < v7)
  {
    v7 = *(v4 + 16);
  }

  v49 = v4;
  v50 = v6;
  v51 = v7;
  v43 = v3;
  v40 = v3;
  v41 = v1;
  if (v6 == v7)
  {
LABEL_27:
    v4 = sub_181AC81FC(v4);
    if (v4)
    {
      v5 = v49;
      v6 = v50;
      goto LABEL_6;
    }

    v16 = sub_181A54748();
    v17 = v16;
    v18 = *(v16 + 32);
    v19 = *(v16 + 24) + v18;
    if (*(v16 + 16) < v19)
    {
      v19 = *(v16 + 16);
    }

    v49 = v16;
    v50 = v18;
    v51 = v19;
    while (v18 != v51)
    {
LABEL_33:
      v20 = v17 + 16 * v18++;
      v50 = v18;
      v9 = *(v20 + 40);
      v21 = *(v20 + 48);
      if (v21 >> 62)
      {
        if (v21 >> 62 == 1)
        {
          ObjectType = swift_getObjectType();
          LOBYTE(v45) = v1;
          BYTE1(v45) = v2;
          v46 = v43;
          v47 = v42;
          v48 = v44;
          v23 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          swift_unknownObjectRetain();
          if (v23(&v45, ObjectType, v21 & 0x3FFFFFFFFFFFFFFFLL))
          {
            goto LABEL_65;
          }

          v16 = sub_181AAD084(v9, v21);
          v1 = v41;
        }
      }

      else
      {
        v16 = swift_beginAccess();
        if (*(v9 + 16) == v1 && *(v9 + 17) == v2)
        {
          v16 = *(v9 + 24);
          if (*(v9 + 40))
          {
            if (v44)
            {
              if (v16 == v43 && *(v9 + 32) == v42)
              {
                goto LABEL_64;
              }

              v16 = sub_182AD4268();
              if (v16)
              {
                goto LABEL_64;
              }
            }
          }

          else
          {
            v26 = v44;
            if (v40 != v16)
            {
              v26 = 1;
            }

            if ((v26 & 1) == 0)
            {
              goto LABEL_64;
            }
          }
        }
      }
    }

    v16 = sub_181AC81FC(v16);
    if (v16)
    {
      v17 = v49;
      v18 = v50;
      goto LABEL_33;
    }

    ProtocolStack.transport.getter(&v45);
    v27 = v46;
    if ((~v46 & 0xF000000000000007) != 0)
    {
      v9 = v45;
      v49 = v45;
      v50 = v46;
      LOBYTE(v45) = v1;
      BYTE1(v45) = v2;
      v46 = v43;
      v47 = v42;
      v48 = v44;
      if (sub_181B37BFC(&v45))
      {
        goto LABEL_60;
      }

      sub_181A53008(v9, v27);
    }

    v27 = v39[13];
    if ((~v27 & 0xF000000000000007) != 0)
    {
      v9 = v39[12];
      v49 = v9;
      v50 = v27;
      LOBYTE(v45) = v1;
      BYTE1(v45) = v2;
      v46 = v43;
      v47 = v42;
      v48 = v44;
      sub_181AACFF4(v9, v27);
      if (sub_181B37BFC(&v45))
      {
LABEL_60:
        v28 = v27 >> 61;
        if ((v27 >> 61) <= 2)
        {
          if (v28)
          {
            if (v28 == 1)
            {
              v29 = &unk_1ED40FF50;
              v30 = &unk_1EA838DE0;
            }

            else
            {
              v29 = &qword_1ED40F830;
              v30 = &qword_1EA838AB0;
            }
          }

          else
          {
            v29 = &qword_1ED40F850;
            v30 = &unk_1EA838710;
          }
        }

        else
        {
          if (v28 > 4)
          {
            if (v28 != 5)
            {
              return 0;
            }

            return v9;
          }

          if (v28 == 3)
          {
            v29 = qword_1ED40FB50;
            v30 = &unk_1EA838750;
          }

          else
          {
            v29 = &unk_1EA838AE0;
            v30 = &unk_1EA838DD0;
          }
        }

        goto LABEL_88;
      }

      sub_181A53008(v9, v27);
    }

    swift_beginAccess();
    v32 = v39[7];
    if ((~v32 & 0xF000000000000007) != 0)
    {
      v9 = v39[6];
      LOBYTE(v45) = v1;
      BYTE1(v45) = v2;
      v46 = v43;
      v47 = v42;
      v48 = v44;
      sub_181B2C3E0(v9, v32);
      if (sub_181ACC890(&v45))
      {
        if (v32 >> 62)
        {
          if (v32 >> 62 != 1)
          {
            if (qword_1ED4102F0 != -1)
            {
              swift_once();
            }

            v35 = *(&xmmword_1ED411D60 + 1);
            v36 = unk_1ED411D70;
            v37 = byte_1ED411D78;
            v38 = xmmword_1ED411D60;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838760);
            swift_allocObject();
            v9 = sub_181BB68A0(v38, v35, v36, v37, 0);
            sub_181AA8428(&qword_1ED410260, &qword_1EA838760);
            sub_181F49A24(v35, v36, v37);
          }

          return v9;
        }

        v29 = &qword_1ED410260;
        v30 = &qword_1EA838760;
LABEL_88:
        sub_181AA8428(v29, v30);
        return v9;
      }

      sub_181A52FE0(v9, v32);
    }

    ProtocolStack.link.getter(&v45);
    v9 = v45;
    if (v45 >= 2)
    {
      v33 = v46;
      v34 = swift_getObjectType();
      LOBYTE(v45) = v1;
      BYTE1(v45) = v2;
      v46 = v43;
      v47 = v42;
      v48 = v44;
      if ((*(v33 + 40))(&v45, v34, v33))
      {
        return v9;
      }

      sub_181B03DAC(v9);
    }

    return 0;
  }

  while (1)
  {
LABEL_6:
    v8 = v5 + 16 * v6++;
    v50 = v6;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);
    if (v10 >> 62)
    {
      if (v10 >> 62 == 1)
      {
        v11 = swift_getObjectType();
        LOBYTE(v45) = v1;
        BYTE1(v45) = v2;
        v46 = v43;
        v47 = v42;
        v48 = v44;
        v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        if (v12(&v45, v11, v10 & 0x3FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_65;
        }

        v4 = sub_181AAD084(v9, v10);
        v1 = v41;
      }

      goto LABEL_26;
    }

    v4 = swift_beginAccess();
    if (*(v9 + 16) != v1 || *(v9 + 17) != v2)
    {
      goto LABEL_26;
    }

    v4 = *(v9 + 24);
    if ((*(v9 + 40) & 1) == 0)
    {
      break;
    }

    if (v44)
    {
      if (v4 == v43 && *(v9 + 32) == v42)
      {
        goto LABEL_64;
      }

      v4 = sub_182AD4268();
      if (v4)
      {
        goto LABEL_64;
      }
    }

LABEL_26:
    if (v6 == v51)
    {
      goto LABEL_27;
    }
  }

  v15 = v44;
  if (v40 != v4)
  {
    v15 = 1;
  }

  if (v15)
  {
    goto LABEL_26;
  }

LABEL_64:
  sub_181AA8428(&qword_1ED40F830, &qword_1EA838AB0);

LABEL_65:

  return v9;
}

uint64_t sub_181F6433C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_181AC9084();
  v4 = v3;
  v5 = *(v3 + 32);
  v6 = *(v3 + 24) + v5;
  if (*(v3 + 16) < v6)
  {
    v6 = *(v3 + 16);
  }

  v48 = v3;
  v49 = v5;
  v50 = v6;
  v7 = v2 >> 61;
  v44 = v2;
  v45 = v1;
  if (v1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v2 == 0xC000000000000000;
  }

  v9 = v8;
  v43 = v9;
  while (1)
  {
    if (v5 != v6)
    {
      goto LABEL_19;
    }

    v3 = sub_181AC81FC(v3);
    if ((v3 & 1) == 0)
    {
      break;
    }

    v4 = v48;
    v5 = v49;
LABEL_19:
    v12 = v4 + 16 * v5++;
    v49 = v5;
    v13 = *(v12 + 40);
    v14 = *(v12 + 48);
    if (v14 >> 62)
    {
      if (v14 >> 62 != 1)
      {
        goto LABEL_15;
      }

      ObjectType = swift_getObjectType();
      v46 = v45;
      v47 = v44;
      v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      swift_unknownObjectRetain();
      if (v16(&v46, ObjectType, v14 & 0x3FFFFFFFFFFFFFFFLL))
      {
LABEL_67:

        return v13;
      }

      goto LABEL_22;
    }

    v17 = *(v13 + 56);
    if ((v17 & 0x1000000000000000) == 0)
    {
      v18 = *(v13 + 48);
      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 != 1)
          {
            goto LABEL_15;
          }

          v10 = v17 >> 61 == 1;
        }

        else
        {
          v10 = v17 >> 61 == 0;
        }

        goto LABEL_11;
      }

      if (v7 == 2)
      {
        v10 = v17 >> 61 == 2;
        goto LABEL_11;
      }

      if (v7 == 3)
      {
        v10 = v17 >> 61 == 3;
LABEL_11:
        if (v10 && v45 == v18)
        {
LABEL_77:

LABEL_78:

LABEL_79:
          v33 = &qword_1ED40F830;
          v34 = &qword_1EA838AB0;
          goto LABEL_80;
        }

        goto LABEL_15;
      }

      if (v7 == 6 && (v43 & 1) != 0)
      {

        if (!v18 && v17 == 0xC000000000000000)
        {
          goto LABEL_78;
        }

LABEL_22:
        v3 = sub_181AAD084(v13, v14);
      }
    }

LABEL_15:
    v6 = v50;
  }

  v19 = sub_181A54748();
  v20 = v19;
  v21 = *(v19 + 32);
  v22 = *(v19 + 24) + v21;
  if (*(v19 + 16) < v22)
  {
    v22 = *(v19 + 16);
  }

  v48 = v19;
  v49 = v21;
  v50 = v22;
  while (2)
  {
    if (v21 != v22)
    {
LABEL_49:
      v25 = v20 + 16 * v21++;
      v49 = v21;
      v13 = *(v25 + 40);
      v26 = *(v25 + 48);
      if (v26 >> 62)
      {
        if (v26 >> 62 != 1)
        {
LABEL_45:
          v22 = v50;
          continue;
        }

        v27 = swift_getObjectType();
        v46 = v45;
        v47 = v44;
        v28 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        swift_unknownObjectRetain();
        if (v28(&v46, v27, v26 & 0x3FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_67;
        }

LABEL_52:
        v19 = sub_181AAD084(v13, v26);
        goto LABEL_45;
      }

      v29 = *(v13 + 56);
      if ((v29 & 0x1000000000000000) != 0)
      {
        goto LABEL_45;
      }

      v30 = *(v13 + 48);
      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 != 1)
          {
            goto LABEL_45;
          }

          v23 = v29 >> 61 == 1;
        }

        else
        {
          v23 = v29 >> 61 == 0;
        }
      }

      else if (v7 == 2)
      {
        v23 = v29 >> 61 == 2;
      }

      else
      {
        if (v7 != 3)
        {
          if (v7 != 6 || (v43 & 1) == 0)
          {
            goto LABEL_45;
          }

          if (!v30 && v29 == 0xC000000000000000)
          {
            goto LABEL_78;
          }

          goto LABEL_52;
        }

        v23 = v29 >> 61 == 3;
      }

      if (v23 && v45 == v30)
      {
        goto LABEL_77;
      }

      goto LABEL_45;
    }

    break;
  }

  v19 = sub_181AC81FC(v19);
  if (v19)
  {
    v20 = v48;
    v21 = v49;
    goto LABEL_49;
  }

  ProtocolStack.transport.getter(&v48);
  v31 = v49;
  if ((~v49 & 0xF000000000000007) == 0)
  {
    goto LABEL_71;
  }

  v13 = v48;
  v46 = v45;
  v47 = v44;
  if (sub_181F62460(&v46))
  {
LABEL_73:
    v32 = v31 >> 61;
    if ((v31 >> 61) <= 2)
    {
      if (v32)
      {
        if (v32 != 1)
        {
          goto LABEL_79;
        }

        v33 = &unk_1ED40FF50;
        v34 = &unk_1EA838DE0;
      }

      else
      {
        v33 = &unk_1ED40F850;
        v34 = &unk_1EA838710;
      }
    }

    else
    {
      if (v32 > 4)
      {
        if (v32 != 5)
        {
          return 0;
        }

        return v13;
      }

      if (v32 == 3)
      {
        v33 = qword_1ED40FB50;
        v34 = &unk_1EA838750;
      }

      else
      {
        v33 = &unk_1EA838AE0;
        v34 = &unk_1EA838DD0;
      }
    }

LABEL_80:
    sub_181AA8428(v33, v34);
    return v13;
  }

  sub_181A53008(v13, v31);
LABEL_71:
  v31 = v42[13];
  if ((~v31 & 0xF000000000000007) != 0)
  {
    v13 = v42[12];
    v48 = v13;
    v49 = v31;
    v46 = v45;
    v47 = v44;
    sub_181AACFF4(v13, v31);
    if (sub_181F62460(&v46))
    {
      goto LABEL_73;
    }

    sub_181A53008(v13, v31);
  }

  swift_beginAccess();
  v35 = v42[7];
  if ((~v35 & 0xF000000000000007) == 0)
  {
LABEL_96:
    ProtocolStack.link.getter(&v46);
    v13 = v46;
    if (v46 >= 2)
    {
      v39 = v47;
      v40 = swift_getObjectType();
      v46 = v45;
      v47 = v44;
      if ((*(v39 + 48))(&v46, v40, v39))
      {
        return v13;
      }

      sub_181B03DAC(v13);
    }

    return 0;
  }

  v13 = v42[6];
  if (!(v35 >> 62))
  {
    v38 = sub_181F61D2C(v45, v44);
    sub_181B687F0(v13, v35);
    if ((v38 & 1) == 0)
    {
      goto LABEL_95;
    }

    v33 = &qword_1ED410260;
    v34 = &qword_1EA838760;
    goto LABEL_80;
  }

  if (v35 >> 62 != 1)
  {
    goto LABEL_96;
  }

  v36 = swift_getObjectType();
  v46 = v45;
  v47 = v44;
  v37 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  sub_181B2C3E0(v13, v35);
  if ((v37(&v46, v36, v35 & 0x3FFFFFFFFFFFFFFFLL) & 1) == 0)
  {
LABEL_95:
    sub_181A52FE0(v13, v35);
    goto LABEL_96;
  }

  return v13;
}

uint64_t ProtocolStack.hash(into:)()
{
  v0 = sub_181AC9084();
  v1 = v0[4];
  v2 = v0[3] + v1;
  if (v0[2] < v2)
  {
    v2 = v0[2];
  }

  v91 = v0;
  v92 = v1;
  v93 = v2;
  if (v1 == v2)
  {
    goto LABEL_16;
  }

LABEL_15:
  v14 = v91;
  do
  {
    v3 = v92;
    v4 = ++v92;
    v5 = v14 + 16 * v3;
    v6 = *(v5 + 40);
    v7 = *(v5 + 48);
    if (v7 >> 62)
    {
      if (v7 >> 62 != 1)
      {
        v0 = sub_182AD4518();
        goto LABEL_14;
      }

      ObjectType = swift_getObjectType();
      v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      swift_unknownObjectRetain();
      v9(&v87, ObjectType, v7 & 0x3FFFFFFFFFFFFFFFLL);
      v10 = v88;
      v11 = v89;
      v12 = v90;
      v13 = v87;
    }

    else
    {
      swift_beginAccess();
      v10 = *(v6 + 24);
      v11 = *(v6 + 32);
      v12 = *(v6 + 40);
      v13 = *(v6 + 16);
      sub_181B2C3E0(v6, v7);
      sub_181F49A24(v10, v11, v12);
    }

    sub_182AD4518();
    MEMORY[0x1865DB070](v13);
    MEMORY[0x1865DB070](v13 >> 8);
    if (v12)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v10, v11, 1);
      sub_182AD30E8();
      sub_181F669F0(v13, v10, v11, v12);
      sub_181AAD084(v6, v7);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v10);
      sub_182AD30E8();
      sub_181F669F0(v13, v10, v11, v12);
      sub_181AAD084(v6, v7);
    }

    v0 = sub_181F669F0(v13, v10, v11, v12);
LABEL_14:
    if (v4 != v93)
    {
      goto LABEL_15;
    }

LABEL_16:
    v15 = sub_181AC81FC(v0);
    v14 = v91;
  }

  while ((v15 & 1) != 0);

  v16 = sub_181A54748();
  v17 = v16[4];
  v18 = v16[3] + v17;
  if (v16[2] < v18)
  {
    v18 = v16[2];
  }

  v91 = v16;
  v92 = v17;
  v93 = v18;
  if (v17 == v18)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v30 = v91;
LABEL_21:
    v19 = v92;
    v20 = ++v92;
    v21 = v30 + 16 * v19;
    v22 = *(v21 + 40);
    v23 = *(v21 + 48);
    if (v23 >> 62)
    {
      if (v23 >> 62 == 1)
      {
        v24 = swift_getObjectType();
        v25 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
        swift_unknownObjectRetain();
        v25(&v87, v24, v23 & 0x3FFFFFFFFFFFFFFFLL);
        v26 = v88;
        v27 = v89;
        v28 = v90;
        v29 = v87;
        goto LABEL_25;
      }

      v16 = sub_182AD4518();
    }

    else
    {
      swift_beginAccess();
      v26 = *(v22 + 24);
      v27 = *(v22 + 32);
      v28 = *(v22 + 40);
      v29 = *(v22 + 16);
      sub_181B2C3E0(v22, v23);
      sub_181F49A24(v26, v27, v28);
LABEL_25:
      sub_182AD4518();
      MEMORY[0x1865DB070](v29);
      MEMORY[0x1865DB070](v29 >> 8);
      if (v28)
      {
        MEMORY[0x1865DB070](1);
        sub_181F49A24(v26, v27, 1);
        sub_182AD30E8();
        sub_181F669F0(v29, v26, v27, v28);
        sub_181AAD084(v22, v23);
      }

      else
      {
        MEMORY[0x1865DB070](0);
        sub_181FB86BC(v26);
        sub_182AD30E8();
        sub_181F669F0(v29, v26, v27, v28);
        sub_181AAD084(v22, v23);
      }

      v16 = sub_181F669F0(v29, v26, v27, v28);
    }

    if (v20 != v93)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v31 = sub_181AC81FC(v16);
  v30 = v91;
  if (v31)
  {
    goto LABEL_21;
  }

  ProtocolStack.transport.getter(&v91);
  v32 = v91;
  v33 = v92;
  if ((~v92 & 0xF000000000000007) == 0)
  {
    sub_181A53008(v91, v92);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_38;
  }

  sub_181AACFF4(v91, v92);
  sub_181A53008(v32, v33);
  sub_181B37B14(&v87);
  sub_181A53008(v32, v33);
  v34 = v87;
  v35 = v88;
  v36 = v89;
  v37 = v90;
  if (v90 == 255)
  {
LABEL_38:
    sub_182AD4518();
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = -1;
  }

  else
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](v34);
    MEMORY[0x1865DB070](BYTE1(v34));
    if (v37)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v35, v36, 1);
      sub_182AD30E8();
      sub_181F669F0(v34, v35, v36, v37);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v35);
      sub_182AD30E8();
      sub_181F669F0(v34, v35, v36, v37);
    }

    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
  }

  sub_181F669F0(v38, v39, v40, v41);
  v42 = v85[13];
  if ((~v42 & 0xF000000000000007) == 0)
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    goto LABEL_46;
  }

  v91 = v85[12];
  v92 = v42;
  sub_181B37B14(&v87);
  v43 = v87;
  v44 = v88;
  v45 = v89;
  v46 = v90;
  if (v90 == 255)
  {
LABEL_46:
    sub_182AD4518();
    v47 = v43;
    v48 = v44;
    v49 = v45;
    v50 = -1;
  }

  else
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](v43);
    MEMORY[0x1865DB070](BYTE1(v43));
    if (v46)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v44, v45, 1);
      sub_182AD30E8();
      sub_181F669F0(v43, v44, v45, v46);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v44);
      sub_182AD30E8();
      sub_181F669F0(v43, v44, v45, v46);
    }

    v47 = v43;
    v48 = v44;
    v49 = v45;
    v50 = v46;
  }

  sub_181F669F0(v47, v48, v49, v50);
  v51 = v85[11];
  if ((~v51 & 0xF000000000000007) == 0)
  {
    v52 = 0;
    v53 = 0;
    v54 = 0;
    goto LABEL_54;
  }

  v91 = v85[10];
  v92 = v51;
  sub_181B37B14(&v87);
  v52 = v87;
  v53 = v88;
  v54 = v89;
  v55 = v90;
  if (v90 == 255)
  {
LABEL_54:
    sub_182AD4518();
    v56 = v52;
    v57 = v53;
    v58 = v54;
    v59 = -1;
  }

  else
  {
    sub_182AD4518();
    MEMORY[0x1865DB070](v52);
    MEMORY[0x1865DB070](BYTE1(v52));
    if (v55)
    {
      MEMORY[0x1865DB070](1);
      sub_181F49A24(v53, v54, 1);
      sub_182AD30E8();
      sub_181F669F0(v52, v53, v54, v55);
    }

    else
    {
      MEMORY[0x1865DB070](0);
      sub_181FB86BC(v53);
      sub_182AD30E8();
      sub_181F669F0(v52, v53, v54, v55);
    }

    v56 = v52;
    v57 = v53;
    v58 = v54;
    v59 = v55;
  }

  sub_181F669F0(v56, v57, v58, v59);
  swift_beginAccess();
  v60 = v85[7];
  if ((~v60 & 0xF000000000000007) == 0)
  {
    sub_182AD4518();
    goto LABEL_71;
  }

  v61 = v85[6];
  if (!(v60 >> 62))
  {
    swift_beginAccess();
    v64 = *(v61 + 16);
    v65 = *(v61 + 17);
    v66 = *(v61 + 24);
    v67 = *(v61 + 32);
    v68 = *(v61 + 40);
LABEL_66:
    sub_181F49A24(v66, v67, v68);
    goto LABEL_67;
  }

  if (v60 >> 62 != 1)
  {
    if (qword_1ED410268 != -1)
    {
      swift_once();
    }

    v64 = word_1ED411D40;
    v65 = HIBYTE(word_1ED411D40);
    v66 = qword_1ED411D48;
    v67 = unk_1ED411D50;
    v68 = byte_1ED411D58;
    goto LABEL_66;
  }

  v62 = swift_getObjectType();
  v63 = *((v60 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
  sub_181B2C3E0(v61, v60);
  v63(&v87, v62, v60 & 0x3FFFFFFFFFFFFFFFLL);
  sub_181A52FE0(v61, v60);
  v64 = v87;
  v65 = BYTE1(v87);
  v66 = v88;
  v67 = v89;
  v68 = v90;
LABEL_67:
  sub_182AD4518();
  MEMORY[0x1865DB070](v64);
  MEMORY[0x1865DB070](v65);
  if (v68)
  {
    MEMORY[0x1865DB070](1);
    sub_181F49A24(v66, v67, 1);
    sub_182AD30E8();
    sub_181F48350(v66, v67, 1);
    v69 = v66;
    v70 = v67;
    v71 = 1;
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v66);
    sub_182AD30E8();
    sub_181F48350(v66, v67, 0);

    v69 = v66;
    v70 = v67;
    v71 = 0;
  }

  sub_181F48350(v69, v70, v71);
LABEL_71:
  ProtocolStack.link.getter(v86);
  v72 = v86[0];
  v73 = v86[1];
  if (v86[0] == 1)
  {
    sub_181B03DAC(1);
    return sub_182AD4518();
  }

  v74 = swift_unknownObjectRetain();
  sub_181B03DAC(v74);
  if (!v72)
  {
    return sub_182AD4518();
  }

  v75 = swift_getObjectType();
  (*(v73 + 96))(&v87, v75, v73);
  sub_181B03DAC(v72);
  v76 = v87;
  v77 = BYTE1(v87);
  v78 = v88;
  v79 = v89;
  v80 = v90;
  sub_182AD4518();
  MEMORY[0x1865DB070](v76);
  MEMORY[0x1865DB070](v77);
  if (v80)
  {
    MEMORY[0x1865DB070](1);
    sub_181F49A24(v78, v79, 1);
    sub_182AD30E8();
    sub_181F48350(v78, v79, 1);
    v81 = v78;
    v82 = v79;
    v83 = 1;
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v78);
    sub_182AD30E8();
    sub_181F48350(v78, v79, 0);

    v81 = v78;
    v82 = v79;
    v83 = 0;
  }

  return sub_181F48350(v81, v82, v83);
}

uint64_t ProtocolStack.hashValue.getter()
{
  sub_182AD44E8();
  ProtocolStack.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181F6546C()
{
  sub_182AD44E8();
  ProtocolStack.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181F654D4()
{
  sub_182AD44E8();
  ProtocolStack.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181F65514(uint64_t a1, void **a2)
{
  v2 = *a2;
  v4 = 0;
  return sub_181C59BE4(v2, &v4) & 1;
}

uint64_t sub_181F65550(uint64_t a1)
{
  v89 = *sub_182AD2388();
  swift_retain_n();
  v76 = v1;
  result = sub_181AC9084();
  v4 = result;
  v5 = 0;
  v6 = *(result + 32);
  v7 = *(result + 24) + v6;
  if (*(result + 16) < v7)
  {
    v7 = *(result + 16);
  }

  v83 = result;
  v85 = *(result + 32);
  v87 = v7;
  v8 = v89;
  v77 = v89;
LABEL_4:
  for (i = v8; ; i[3] = v29)
  {
    while (1)
    {
      if (v6 != v87)
      {
        goto LABEL_10;
      }

      result = sub_181AC81FC(result);
      if ((result & 1) == 0)
      {

        result = sub_181A54748();
        v41 = result;
        v42 = *(result + 32);
        v43 = *(result + 24) + v42;
        if (*(result + 16) < v43)
        {
          v43 = *(result + 16);
        }

        v84 = result;
        v86 = *(result + 32);
        v88 = v43;
        while (1)
        {
          while (1)
          {
LABEL_53:
            if (v42 == v88)
            {
              result = sub_181AC81FC(result);
              if ((result & 1) == 0)
              {

                *(v76 + 16) = i;

                *(v76 + 24) = v77;
              }

              v41 = v84;
              v42 = v86;
            }

            v46 = v41 + 16 * v42++;
            v86 = v42;
            v47 = *(v46 + 40);
            if ((v5 & 1) == 0)
            {
              break;
            }

            v63 = v77[3];
            v64 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_99;
            }

            v82 = v47;
            sub_181B2C3E0(v47, *(&v47 + 1));
            result = swift_isUniquelyReferenced_nonNull_native();
            v77 = v89;
            if (v89[2] < v64 || (result & 1) == 0)
            {
              result = sub_181B2C3FC(result, v64);
              v77 = v89;
            }

            v65 = v77[3];
            v66 = v77[4];
            v25 = __OFADD__(v66, v65);
            v67 = v66 + v65;
            if (v25)
            {
              goto LABEL_100;
            }

            if (v65 < 0)
            {
              v71 = v82;
              if (v67 < 0)
              {
                v72 = v77[2];
                v25 = __OFADD__(v67, v72);
                v67 += v72;
                if (v25)
                {
                  goto LABEL_113;
                }
              }
            }

            else
            {
              v68 = v77[2];
              v69 = __OFSUB__(v67, v68);
              v70 = v67 - v68;
              v71 = v82;
              if (v70 < 0 == v69)
              {
                v67 = v70;
                if (v69)
                {
                  goto LABEL_109;
                }
              }
            }

            *&v77[2 * v67 + 5] = v71;
            v25 = __OFADD__(v65, 1);
            v73 = v65 + 1;
            if (v25)
            {
              goto LABEL_101;
            }

            v77[3] = v73;
          }

          v48 = *(v46 + 48);
          if (*(&v47 + 1) >> 62)
          {
            if (*(&v47 + 1) >> 62 != 1)
            {
              goto LABEL_53;
            }

            v81 = *(v46 + 40);
            ObjectType = swift_getObjectType();
            v45 = *((v48 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
            swift_unknownObjectRetain();
            result = v45(a1, ObjectType, v48 & 0x3FFFFFFFFFFFFFFFLL);
            if ((result & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            result = *(v46 + 40);
            v49 = *(v47 + 56);
            v50 = ~v49 & 0x1000000000000007;
            v51 = v49 & 0x1000000000000000;
            if (v50)
            {
              v52 = v51 == 0;
            }

            else
            {
              v52 = 1;
            }

            if (v52)
            {
              goto LABEL_53;
            }

            v53 = *(v47 + 48);
            v81 = v47;

            if (v53 != a1)
            {
LABEL_52:
              result = sub_181AAD084(v81, v48);
              goto LABEL_53;
            }
          }

          v54 = i[3];
          v55 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_105;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (i[2] < v55 || (result & 1) == 0)
          {
            result = sub_181B2C3FC(result, v55);
            i = v89;
          }

          v56 = i[3];
          v57 = i[4];
          v25 = __OFADD__(v57, v56);
          v58 = v57 + v56;
          if (v25)
          {
            goto LABEL_106;
          }

          if (v56 < 0)
          {
            v62 = v81;
            if (v58 < 0)
            {
              v74 = i[2];
              v25 = __OFADD__(v58, v74);
              v58 += v74;
              if (v25)
              {
                goto LABEL_115;
              }
            }
          }

          else
          {
            v59 = i[2];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v81;
            if (v61 < 0 == v60)
            {
              v58 = v61;
              if (v60)
              {
                goto LABEL_111;
              }
            }
          }

          *&i[2 * v58 + 5] = v62;
          v25 = __OFADD__(v56, 1);
          v75 = v56 + 1;
          if (v25)
          {
            goto LABEL_107;
          }

          i[3] = v75;
          v5 = 1;
        }
      }

      v4 = v83;
      v6 = v85;
LABEL_10:
      v11 = v4 + 16 * v6++;
      v85 = v6;
      v12 = *(v11 + 40);
      if (v5)
      {
        break;
      }

      v13 = *(v11 + 48);
      if (*(&v12 + 1) >> 62)
      {
        if (*(&v12 + 1) >> 62 == 1)
        {
          v79 = *(v11 + 40);
          v9 = swift_getObjectType();
          v10 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          swift_unknownObjectRetain();
          result = v10(a1, v9, v13 & 0x3FFFFFFFFFFFFFFFLL);
          if (result)
          {
            goto LABEL_34;
          }

LABEL_6:
          result = sub_181AAD084(v79, v13);
        }
      }

      else
      {
        result = *(v11 + 40);
        v14 = *(v12 + 56);
        v15 = ~v14 & 0x1000000000000007;
        v16 = v14 & 0x1000000000000000;
        if (v15)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = *(v12 + 48);
          v79 = v12;

          if (v18 != a1)
          {
            goto LABEL_6;
          }

LABEL_34:
          v30 = i[3];
          v31 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_102;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (i[2] < v31 || (result & 1) == 0)
          {
            result = sub_181B2C3FC(result, v31);
            i = v89;
          }

          v8 = i;
          v32 = i[3];
          v33 = i[4];
          v25 = __OFADD__(v33, v32);
          v34 = v33 + v32;
          if (v25)
          {
            goto LABEL_103;
          }

          if (v32 < 0)
          {
            v38 = v79;
            if (v34 < 0)
            {
              v39 = i[2];
              v25 = __OFADD__(v34, v39);
              v34 += v39;
              if (v25)
              {
                goto LABEL_114;
              }
            }
          }

          else
          {
            v35 = i[2];
            v36 = __OFSUB__(v34, v35);
            v37 = v34 - v35;
            v38 = v79;
            if (v37 < 0 == v36)
            {
              v34 = v37;
              if (v36)
              {
                goto LABEL_110;
              }
            }
          }

          *&i[2 * v34 + 5] = v38;
          v25 = __OFADD__(v32, 1);
          v40 = v32 + 1;
          if (v25)
          {
            goto LABEL_104;
          }

          i[3] = v40;
          v5 = 1;
          goto LABEL_4;
        }
      }
    }

    v19 = i[3];
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    v80 = v12;
    sub_181B2C3E0(v12, *(&v12 + 1));
    result = swift_isUniquelyReferenced_nonNull_native();
    i = v89;
    if (v89[2] < v20 || (result & 1) == 0)
    {
      result = sub_181B2C3FC(result, v20);
      i = v89;
    }

    v21 = i[3];
    v22 = i[4];
    v25 = __OFADD__(v22, v21);
    v23 = v22 + v21;
    if (v25)
    {
      goto LABEL_97;
    }

    if (v21 < 0)
    {
      v27 = v80;
      if (v23 < 0)
      {
        v28 = i[2];
        v25 = __OFADD__(v23, v28);
        v23 += v28;
        if (v25)
        {
          goto LABEL_112;
        }
      }
    }

    else
    {
      v24 = i[2];
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      v27 = v80;
      if (v26 < 0 == v25)
      {
        v23 = v26;
        if (v25)
        {
          goto LABEL_108;
        }
      }
    }

    *&i[2 * v23 + 5] = v27;
    v25 = __OFADD__(v21, 1);
    v29 = v21 + 1;
    if (v25)
    {
      goto LABEL_98;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
  return result;
}

uint64_t sub_181F65B18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v2 + 24);
  }

  if (__OFADD__(v3, v6))
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v2 + 16);
  if (v3 + v6 <= result)
  {
LABEL_23:
    *a2 = *v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = v7;
    *(a2 + 24) = v4;
    *(a2 + 32) = v5 & 1;
    return result;
  }

  if (v3 >= result)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v4 = 0;
      v5 = 1;
      v3 = result;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((*(v2 + 32) & 1) == 0)
  {
    v8 = result - v3;
    if (!__OFSUB__(result, v3))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v4 >= v8)
        {
          v9 = result - v3;
        }

        else
        {
          v9 = *(v2 + 24);
        }

        if (v4 >= 0)
        {
          v4 = v9;
        }

        else
        {
          v4 = result - v3;
        }

        if (!v8)
        {
          v4 = 0;
        }

        v5 = v4 == 0;
        if (!v4)
        {
          v7 = 0;
        }

        goto LABEL_23;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_181F65BC0(char *__src, uint64_t a2)
{
  v3 = __src;
  if ((*(v2 + 32) & 1) == 0)
  {
    v5 = *(v2 + 8);
    if (v5 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (__src && v5)
      {
        v7 = *v2;
        v8 = a2;
        __src = memcpy(v7, v3, 16 * v5);
        a2 = v8;
      }

      v9 = a2;
      if (!__OFADD__(v5, a2 - v5))
      {
        if (a2 >= v5)
        {
          if (!v3)
          {
            return __src;
          }

          a2 -= v5;
          if (v9 == v5)
          {
            return __src;
          }

          if (v6 >= a2)
          {
            v3 += 16 * v5;
            goto LABEL_17;
          }

LABEL_24:
          __break(1u);
          return __src;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!__src || !a2)
  {
    return __src;
  }

  if (*(v2 + 8) < a2)
  {
    goto LABEL_23;
  }

  v4 = *v2;
LABEL_17:

  return memcpy(v4, v3, 16 * a2);
}

uint64_t sub_181F65CB8(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v2 + 8) >= a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = *(v2 + 8);
  if (v5 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v2 + 24);
  if (result && v5)
  {
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v5, a2 - v5))
  {
    goto LABEL_20;
  }

  if (a2 < v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v5)
  {
    return result;
  }

  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

uint64_t sub_181F65DC4(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v2 + 8) >= a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = *(v2 + 8);
  if (v5 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v2 + 24);
  if (result && v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v5, a2 - v5))
  {
    goto LABEL_20;
  }

  if (a2 < v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v5)
  {
    return result;
  }

  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);

  return swift_arrayInitWithCopy();
}

uint64_t sub_181F65F10(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v2 + 8) >= a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = *(v2 + 8);
  if (v5 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v2 + 24);
  if (result && v5)
  {
    type metadata accessor for Endpoint(0);
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v5, a2 - v5))
  {
    goto LABEL_20;
  }

  if (a2 < v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v5)
  {
    return result;
  }

  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:
  type metadata accessor for Endpoint(0);

  return swift_arrayInitWithCopy();
}

uint64_t sub_181F66038(uint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(v2 + 32))
  {
    if (!result || !a2)
    {
      return result;
    }

    if (*(v2 + 8) >= a2)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v5 = *(v2 + 8);
  if (v5 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(v2 + 24);
  if (result && v5)
  {
    result = swift_arrayInitWithCopy();
  }

  if (__OFADD__(v5, a2 - v5))
  {
    goto LABEL_20;
  }

  if (a2 < v5)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4 || a2 == v5)
  {
    return result;
  }

  if (v6 < a2 - v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

LABEL_16:

  return swift_arrayInitWithCopy();
}

void *sub_181F66144(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 16 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_181F661CC(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 16 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_181F66260(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 8 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_181F662E8(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, uint64_t, void))
{
  v4 = result[2];
  v5 = result[1] + v4;
  if (*result < v5)
  {
    return 0;
  }

  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v4))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = a3(&v6, a2 + 8 * v4, result[1]);
  if (!v3)
  {
    return v6;
  }

  return result;
}

char *sub_181F6637C(char *__src, uint64_t a2, void *__dst, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = __src;
    memcpy(__dst, __src, 16 * v4);
    return &v5[16 * v4];
  }

  return __src;
}

uint64_t sub_181F663FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    swift_arrayInitWithCopy();
    return v5 + 16 * v4;
  }

  return result;
}

uint64_t sub_181F6647C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
    swift_arrayInitWithCopy();
    return v5 + 8 * v4;
  }

  return result;
}

uint64_t sub_181F66520(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    type metadata accessor for Endpoint(0);
    swift_arrayInitWithCopy();
    return v5 + 8 * v4;
  }

  return result;
}

uint64_t sub_181F665B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a4)
  {
    if (a2 >= a4)
    {
      v4 = a4;
    }

    else
    {
      v4 = a2;
    }

    v5 = result;
    swift_arrayInitWithCopy();
    return v5 + 8 * v4;
  }

  return result;
}

void *sub_181F66630@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[2 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

void *sub_181F666B0@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[2 * v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t sub_181F66728@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a4 = v5;
    return result;
  }

  if (a3 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A410);
    result = swift_arrayInitWithCopy();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_181F667B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a4 = v5;
    return result;
  }

  if (a3 >= a2)
  {
    type metadata accessor for Endpoint(0);
    result = swift_arrayInitWithCopy();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void *sub_181F66834@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(__int128 *__return_ptr, void *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v15, v13, v11);
  if (!v4)
  {
    v14 = v16;
    *a4 = v15;
    *(a4 + 16) = v14;
  }

  return result;
}

void *sub_181F668B4@<X0>(void *result@<X0>, void *a2@<X2>, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t)@<X3>, void *a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = __OFSUB__(v7, *a2);
  v9 = v7 - *a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = __OFADD__(v6, v9);
  v10 = v6 + v9;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 - v6;
  if (v10 < v6)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = &result[v6];
  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  result = a3(&v14, v13, v11);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t _s7Network13ProtocolStackC04LinkB0O2eeoiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    if (!v2)
    {
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_5;
  }

  if (!v2)
  {
LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  v3 = a2[1];
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  v10 = 0;
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v7 = swift_unknownObjectRetain();
  v8 = v6(v7, v3, &v10, ObjectType, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_181F669F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_181F48350(a2, a3, a4 & 1);
  }

  return result;
}

unint64_t sub_181F66A18()
{
  result = qword_1EA838AB8;
  if (!qword_1EA838AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838AB8);
  }

  return result;
}

unint64_t sub_181F66A70()
{
  result = qword_1EA838AC0;
  if (!qword_1EA838AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838AC0);
  }

  return result;
}

unint64_t sub_181F66AC8()
{
  result = qword_1EA838AC8;
  if (!qword_1EA838AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838AC8);
  }

  return result;
}

unint64_t sub_181F66B20()
{
  result = qword_1EA838AD0;
  if (!qword_1EA838AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838AD0);
  }

  return result;
}

uint64_t sub_181F66BE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_181F66C44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_181F66C94(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_7Network13ProtocolStackC09TransportB0O(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >> 62 == 3)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 >> 61;
  }
}

uint64_t sub_181F66CEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 16))
  {
    return (*a1 + 122);
  }

  v3 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_181F66D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    *(result + 8) = 0;
    if (a3 >= 0x7A)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_181F66DA8(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 6);
    result[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_181F66DE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_181F66E30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_181F66F6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 24) >= a2)
  {
    result = swift_arrayInitWithCopy();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void *sub_181F670EC@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!__src)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return __src;
  }

  if (*(v3 + 24) >= a2)
  {
    __src = memcpy(*(v3 + 16), __src, 16 * a2);
    goto LABEL_6;
  }

  __break(1u);
  return __src;
}

uint64_t sub_181F67154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, *(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
    a4[1] = v8;
    a4[2] = v9;
  }

  return result;
}

uint64_t sub_181F67190(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_181F49A24(a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_181F671B4(uint64_t result, __int16 a2, uint64_t a3, uint64_t a4, int a5)
{
  v54 = a5;
  v44 = result;
  v5 = *result;
  v7 = (*result + 24);
  v6 = *v7;
  if (!*v7)
  {
    return 0;
  }

  v8 = a4;
  v9 = 0;
  v55 = a2;
  v45 = HIBYTE(a2);
  v46 = HIBYTE(a2);
  v43 = a3;
  while (1)
  {
    if (v9 >= v6)
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      return result;
    }

    v10 = v5[4];
    if (v9 + v10 >= v5[2])
    {
      v11 = v5[2];
    }

    else
    {
      v11 = 0;
    }

    v12 = &v5[2 * v9 + 5 + 2 * (v10 - v11)];
    v13 = *v12;
    v14 = v12[1];
    if (v14 >> 62)
    {
      if (v14 >> 62 == 1)
      {
        ObjectType = swift_getObjectType();
        v49 = v55;
        v50 = v46;
        v51 = a3;
        v52 = v8;
        v53 = v54 & 1;
        v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        swift_unknownObjectRetain();
        v17 = v16(&v49, ObjectType, v14 & 0x3FFFFFFFFFFFFFFFLL);
        v8 = a4;
        v18 = v17;
        result = sub_181AAD084(v13, v14);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_3;
    }

    result = swift_beginAccess();
    if (*(v13 + 16) != v55 || v45 != *(v13 + 17))
    {
      goto LABEL_3;
    }

    result = *(v13 + 24);
    if (*(v13 + 40))
    {
      break;
    }

    if ((v54 & 1) == 0 && *(v13 + 24) == v43)
    {
      goto LABEL_27;
    }

LABEL_3:
    ++v9;
    v6 = *v7;
    if (v9 == *v7)
    {
      return v9;
    }
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (result != a3 || *(v13 + 32) != v8)
  {
    result = sub_182AD4268();
    if ((result & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_27:
  v21 = *v7;
  if (*v7 - 1 != v9)
  {
    v22 = v9 + 1;
    do
    {
      if (v22 >= v21)
      {
        goto LABEL_69;
      }

      v23 = v5[4];
      if ((v22 + v23) >= v5[2])
      {
        v24 = v5[2];
      }

      else
      {
        v24 = 0;
      }

      v25 = &v5[2 * v22 + 2 * (v23 - v24)];
      v26 = v25[5];
      v27 = v25[6];
      if (v27 >> 62)
      {
        if (v27 >> 62 == 1)
        {
          v28 = swift_getObjectType();
          v49 = v55;
          v50 = v46;
          v51 = a3;
          v52 = v8;
          v53 = v54 & 1;
          v29 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          swift_unknownObjectRetain();
          v30 = v29(&v49, v28, v27 & 0x3FFFFFFFFFFFFFFFLL);
          v8 = a4;
          v31 = v30;
          result = sub_181AAD084(v26, v27);
          if (v31)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        result = swift_beginAccess();
        if (*(v26 + 16) == v55 && v45 == *(v26 + 17))
        {
          result = *(v26 + 24);
          if (*(v26 + 40))
          {
            if (v54)
            {
              if (result == a3 && *(v26 + 32) == v8)
              {
                goto LABEL_30;
              }

              result = sub_182AD4268();
              if (result)
              {
                goto LABEL_30;
              }
            }
          }

          else if ((v54 & 1) == 0 && *(v26 + 24) == v43)
          {
            goto LABEL_30;
          }
        }
      }

      if (v9 < 0)
      {
        goto LABEL_70;
      }

      if (v9 >= *v7)
      {
        goto LABEL_71;
      }

      if (v22 >= *v7)
      {
        goto LABEL_72;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1820E5EE8();
      }

      v5 = *v44;
      v33 = *(*v44 + 32);
      v34 = *(*v44 + 16);
      if (v33 + v9 >= v34)
      {
        v35 = *(*v44 + 16);
      }

      else
      {
        v35 = 0;
      }

      v36 = v33 + v9 - v35;
      if ((v22 + v33) < v34)
      {
        v34 = 0;
      }

      v37 = v22 + v33 - v34;
      if (v37 != v36)
      {
        v38 = v5 + 5;
        v39 = 2 * v36;
        v40 = 2 * v37;
        v41 = *&v5[v39 + 5];
        *&v38[v39] = *&v5[v40 + 5];
        *&v38[v40] = v41;
      }

      ++v9;
LABEL_30:
      ++v22;
      v7 = v5 + 3;
      v21 = v5[3];
    }

    while (v22 != v21);
  }

  return v9;
}

uint64_t sub_181F675A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_181F67798(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v8 = &a1[*a3];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 6;
  v9 = &a1[*a4];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 6;
  v11.receiver = a1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_181F6780C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _nw_protocol_create_swift_udp_instance()
{
  type metadata accessor for UDPProtocol.UDPInstance();
  swift_allocObject();
  return UDPProtocol.UDPInstance.init()();
}

char *_nw_protocol_create_input_linkage_handleTm(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v5 = [objc_allocWithZone(a2()) init];
  v6 = &v5[*a3];
  v7 = *v6;
  v8 = *(v6 + 1);
  *v6 = a1;
  *(v6 + 1) = v5;
  LOBYTE(a1) = v6[16];
  v6[16] = 4;
  v9 = v5;
  sub_181F68E5C(v7, v8, a1);
  return v9;
}

void _nw_protocol_destroy_input_linkage_handleTm(char *a1, void *a2, void *a3)
{
  v4 = &a1[*a2];
  v5 = *v4;
  v6 = *(v4 + 1);
  *v4 = 0;
  *(v4 + 1) = 0;
  v7 = v4[16];
  v4[16] = 6;
  v12 = a1;
  sub_181F68E5C(v5, v6, v7);
  v8 = &v12[*a3];
  v9 = *v8;
  v10 = *(v8 + 1);
  *v8 = 0;
  *(v8 + 1) = 0;
  v11 = v8[16];
  v8[16] = 6;
  sub_181F68E5C(v9, v10, v11);
}

BOOL sub_181F67A7C(uint64_t a1, void *a2, void *a3)
{

  v6 = a2;
  v7 = a3;
  v8 = *(a1 + 16);

  return (v8 & 2) == 0;
}

uint64_t sub_181F67AF8(uint64_t a1, char a2, void *a3)
{

  v5 = a3;
  v6 = *&v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v7 = v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v14 = *&v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v15 = v6;
  v16 = v7;
  sub_181F68EA8(v14, v6, v7);
  if (a2)
  {
    sub_182168EE0(&v14, &v17);
  }

  else
  {
    sub_1822932C0(&v14, &v17);
  }

  sub_181F68E5C(v14, v15, v16);
  v8 = v18;
  if (v18 == 255)
  {

    return 0;
  }

  else
  {
    v9 = &v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
    v10 = *&v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
    v11 = *&v5[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
    *v9 = v17;
    v12 = v9[16];
    v9[16] = v8;
    sub_181F68E5C(v10, v11, v12);

    return 1;
  }
}

uint64_t sub_181F67C0C(_BYTE *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v5 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v6 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v7 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v8 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  *v3 = 0;
  *(v3 + 1) = 0;
  v9 = v3[16];
  v3[16] = 6;
  v10 = a1;
  sub_181F68EA8(v4, v5, v9);
  sub_181F68EA8(v6, v7, v8);
  sub_181F68E5C(v4, v5, v9);
  v11 = &v10[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v12 = *&v10[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v13 = *&v10[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  *v11 = 0;
  *(v11 + 1) = 0;
  v14 = v11[16];
  v11[16] = 6;
  sub_181F68E5C(v12, v13, v14);
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v17[0] = v4;
  v17[1] = v5;
  v18 = v9;
  v15 = OutputHandlerLinkage.invokeRemoveInputHandler(_:destroy:)(v17, a2);

  sub_181F68E5C(v4, v5, v9);
  sub_181F68E5C(v6, v7, v8);
  return v15 & 1;
}

uint64_t _nw_protocol_swift_wrapper_set_output_linkage(uint64_t a1, int a2, _BYTE *a3)
{

  if (a2)
  {
    sub_181F67D8C(v5, a3);
  }

  else
  {
    sub_181F67EA4(v5, a3);
  }
}

void sub_181F67D8C(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = *&v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 8];
  v3 = v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 16];
  v11 = *&v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage];
  v12 = v2;
  v13 = v3;
  sub_181F68EA8(v11, v2, v3);
  sub_182169B90(&v11, &v14);
  sub_181F68E5C(v11, v12, v13);
  v4 = v15;
  if (v15 == 255)
  {
  }

  else
  {
    v5 = v14;
    v6 = &v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
    v7 = *&v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
    v8 = *&v10[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage + 8];
    *v6 = v14;
    v9 = v6[1].n128_u8[0];
    v6[1].n128_u8[0] = v4;
    sub_181F68EA8(v5.n128_i64[0], v5.n128_u64[1], v4);
    sub_181F68E5C(v7, v8, v9);

    sub_181F3D4C0(v5.n128_i64[0], v5.n128_u64[1], v4);
  }
}

void sub_181F67EA4(uint64_t a1, _BYTE *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage];
  v4 = *&a2[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 8];
  v5 = a2[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 16];
  v19 = a2;
  sub_181F68EA8(v3, v4, v5);
  sub_182292A10(&v20);
  v6 = v20;
  v7 = v21;
  v8 = v22;
  sub_181F68E5C(v20, v21, v22);
  if (v8 == 6 && (v7 | v6) == 0)
  {
    sub_181F68E5C(v3, v4, v5);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    *(a1 + 40) = v3;
    *(a1 + 48) = v4;
    v12 = *(a1 + 56);
    *(a1 + 56) = v5;
    sub_181F68EA8(v3, v4, v5);
    sub_181F68E5C(v10, v11, v12);
    sub_182292A10(&v20);
    sub_181F68E5C(v3, v4, v5);
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v16 = &v19[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
    v17 = *&v19[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
    v18 = *&v19[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage + 8];
    *v16 = v20;
    *(v16 + 1) = v14;
    LOBYTE(v11) = v16[16];
    v16[16] = v15;
    sub_181F68EA8(v13, v14, v15);
    sub_181F68E5C(v17, v18, v11);

    sub_181F68E5C(v13, v14, v15);
  }
}

uint64_t sub_181F68044(_BYTE *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v2 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v3 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v5 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v6 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  v7 = a1;
  v12 = v3;
  v13 = v4;
  v14 = v6;
  v10[0] = v1;
  v10[1] = v2;
  v11 = v5;
  sub_181F68EA8(v1, v2, v5);
  sub_181F68EA8(v3, v4, v6);
  v8 = OutputHandlerLinkage.invokeConnect(_:)(v10);

  sub_181F68E5C(v1, v2, v5);
  sub_181F68E5C(v3, v4, v6);
  return v8 & 1;
}

void sub_181F68190(char *a1, void *a2, void *a3, void (*a4)(void *))
{
  v5 = &a1[*a2];
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = &a1[*a3];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v5[16];
  v12 = v8[16];
  v13 = a1;
  v16 = v9;
  v17 = v10;
  v18 = v12;
  v14[0] = v6;
  v14[1] = v7;
  v15 = v11;
  sub_181F68EA8(v6, v7, v11);
  sub_181F68EA8(v9, v10, v12);
  a4(v14);

  sub_181F68E5C(v6, v7, v11);
  sub_181F68E5C(v9, v10, v12);
}

void sub_181F68358(_BYTE *a1, int a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 8];
  v5 = *&a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage];
  v6 = *&a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage + 8];
  v7 = a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_linkage + 16];
  v8 = a1[OBJC_IVAR____TtC7Network22__OutputHandlerLinkage_correspondingInputHandlerLinkage + 16];
  v9 = a1;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  v12[0] = v3;
  v12[1] = v4;
  v13 = v7;
  v10 = a2;
  v11 = 0;
  sub_181F68EA8(v3, v4, v7);
  sub_181F68EA8(v5, v6, v8);
  InputHandlerLinkage.invokeError(_:error:)(v12, &v10);

  sub_181F68E5C(v3, v4, v7);
  sub_181F68E5C(v5, v6, v8);
}

void sub_181F68440(_BYTE *a1, void *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v5 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v6 = a1;
  *&v11 = v3;
  *(&v11 + 1) = v4;
  v12 = v5;
  v7 = *&v6[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v8 = v6[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  *&v9 = *&v6[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  *(&v9 + 1) = v7;
  v10 = v8;
  sub_181F68EA8(v3, v4, v5);
  sub_181F68EA8(v9, v7, v8);
  sub_181F6850C(&v11, &v9, a2);

  sub_181F68E5C(v9, *(&v9 + 1), v10);
  sub_181F68E5C(v11, *(&v11 + 1), v12);
}

void sub_181F6850C(__int128 *a1, __int128 *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v12 = *a2;
  v13 = v5;
  v10 = *a1;
  v11 = v4;
  OutputHandlerLinkage.invokeGetMessageProperties(_:)(&v10, &v7);
  v6 = v7 | ((v8 | (v9 << 16)) << 32);
  if ((v6 & 0xFF00000000) != 0x200000000)
  {
    *&v12 = v7;
    sub_181F68F50(HIDWORD(v6) & 1, &v12);
    sub_181F68F60((v6 >> 40) & 1, &v12);
    sub_181F68F70(HIWORD(v6) & 1, &v12);
    *a3 = v12;
  }
}

uint64_t sub_181F685E8(char *a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5)
{
  LODWORD(v6) = a3;
  v8 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v9 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v10 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v11 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v12 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v31 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  v44 = v11;
  v45 = v12;
  v46 = v31;
  v42[0] = v8;
  v42[1] = v9;
  v43 = v10;
  v30 = a1;
  if (a2 != -1)
  {
    v13 = a2;
    if (v6 != -1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (a4 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6 == -1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = v6;
  if (a4 == -1)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

LABEL_7:
  v14 = a4;
LABEL_8:
  sub_181F68EA8(v8, v9, v10);
  v15 = v31;
  sub_181F68EA8(v11, v12, v31);
  OutputHandlerLinkage.invokeGetInputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(v42, v13, v6, v14, v40);
  if (sub_181F3D1E4(v40) == 1)
  {
    sub_181F68E5C(v11, v12, v31);
    sub_181F68E5C(v8, v9, v10);

    return 0;
  }

  v25 = v12;
  v26 = v11;
  v27 = v10;
  v28 = v9;
  v29 = v8;
  v59 = v40[12];
  v60 = v40[13];
  v61 = v41;
  v55 = v40[8];
  v56 = v40[9];
  v57 = v40[10];
  v58 = v40[11];
  v51 = v40[4];
  v52 = v40[5];
  v53 = v40[6];
  v54 = v40[7];
  v47 = v40[0];
  v48 = v40[1];
  v49 = v40[2];
  v50 = v40[3];
  if (v41)
  {
    v16 = 0;
LABEL_24:
    v6 = *(&v47 + 1);
    v17 = v47;
    v18 = v48;
    LOBYTE(a5) = BYTE8(v48);
    v8 = *(&v49 + 1);
    v14 = v49;
    LODWORD(v9) = v50;
    v21 = v56;
    v22 = v57;

    if (v9 == 2 && __PAIR128__(v8, v14) == 0)
    {
      if (v21)
      {
        v23 = v22;
      }

      else
      {
        v23 = 1;
      }

      if ((v23 & 1) == 0)
      {
        MEMORY[0x1865DF520](v21, -1, -1);
      }

      sub_181F68E5C(v26, v25, v31);
      sub_181F68E5C(v29, v28, v27);

      sub_181F68EF4(v17, v6, v18, a5);

      return v16;
    }
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = &v47;
      FrameArray.popFirst()(v33);
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      v19 = sub_1822860AC(0);
      nw_frame_array_append(a5, 1, v19);
      swift_unknownObjectRelease();
      v18 = v33[0];
      v6 = v33[1];
      v8 = v33[2];
      LOBYTE(v9) = v34;
      v15 = *(&v35 + 1);
      v10 = v35;
      LOBYTE(v11) = v36;
      v14 = v39;
      if (v36 != 2 || v35 != 0)
      {
        goto LABEL_35;
      }

      if ((v38 & 1) == 0 && v37)
      {
        MEMORY[0x1865DF520](v37, -1, -1);
      }

      sub_181F68EF4(v18, v6, v8, v9);

      ++v17;
    }

    while ((v61 & 1) == 0);
    if (!HIDWORD(v16))
    {
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_181F68EF4(v18, v6, v8, v9);

    sub_181F68F3C(v10, v15, v11);
    __break(1u);
  }

  sub_181F68EF4(v17, v6, v18, a5);

  result = sub_181F68F3C(v14, v8, v9);
  __break(1u);
  return result;
}

uint64_t sub_181F68978(char *a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  LODWORD(v7) = a3;
  v9 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v10 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v11 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v12 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v13 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v32 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  v46 = v12;
  v47 = v13;
  v48 = v32;
  v44[0] = v9;
  v44[1] = v10;
  v45 = v11;
  v31 = a1;
  if (a2 != -1)
  {
    v14 = a2;
    if (v7 != -1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    if (a4 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 == -1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = v7;
  if (a4 == -1)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_8;
  }

LABEL_7:
  v15 = a4;
LABEL_8:
  sub_181F68EA8(v9, v10, v11);
  v16 = v32;
  sub_181F68EA8(v12, v13, v32);
  OutputHandlerLinkage.invokeGetOutputFrames(_:minimumBytes:maximumBytes:maximumFrameCount:)(v44, v14, v7, v15, v42);
  if (sub_181F3D1E4(v42) == 1)
  {
    sub_181F68E5C(v12, v13, v32);
    sub_181F68E5C(v9, v10, v11);

    return 0;
  }

  v26 = v13;
  v27 = v12;
  v28 = v11;
  v29 = v10;
  v30 = v9;
  v61 = v42[12];
  v62 = v42[13];
  v63 = v43;
  v57 = v42[8];
  v58 = v42[9];
  v59 = v42[10];
  v60 = v42[11];
  v53 = v42[4];
  v54 = v42[5];
  v55 = v42[6];
  v56 = v42[7];
  v49 = v42[0];
  v50 = v42[1];
  v51 = v42[2];
  v52 = v42[3];
  if (v43)
  {
    v17 = 0;
LABEL_24:
    v18 = *(&v49 + 1);
    v12 = v49;
    v19 = v50;
    LOBYTE(a6) = BYTE8(v50);
    v15 = *(&v51 + 1);
    v7 = v51;
    LODWORD(v9) = v52;
    v22 = v58;
    v23 = v59;

    if (v9 == 2 && __PAIR128__(v15, v7) == 0)
    {
      if (v22)
      {
        v24 = v23;
      }

      else
      {
        v24 = 1;
      }

      if ((v24 & 1) == 0)
      {
        MEMORY[0x1865DF520](v22, -1, -1);
      }

      sub_181F68E5C(v27, v26, v32);
      sub_181F68E5C(v30, v29, v28);

      sub_181F68EF4(v12, v18, v19, a6);

      return v17;
    }
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = &v49;
      FrameArray.popFirst()(v35);
      v17 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      v20 = sub_1822860AC(a6);
      nw_frame_array_append(a5, 1, v20);
      swift_unknownObjectRelease();
      v19 = v35[0];
      v15 = v35[1];
      v9 = v35[2];
      LOBYTE(v10) = v36;
      v16 = *(&v37 + 1);
      v11 = v37;
      v12 = v38;
      v7 = v41;
      if (v38 != 2 || v37 != 0)
      {
        goto LABEL_35;
      }

      if ((v40 & 1) == 0 && v39)
      {
        MEMORY[0x1865DF520](v39, -1, -1);
      }

      sub_181F68EF4(v19, v15, v9, v10);

      ++v18;
    }

    while ((v63 & 1) == 0);
    if (!HIDWORD(v17))
    {
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_181F68EF4(v19, v15, v9, v10);

    sub_181F68F3C(v11, v16, v12);
    __break(1u);
  }

  sub_181F68EF4(v12, v18, v19, a6);

  result = sub_181F68F3C(v7, v15, v9);
  __break(1u);
  return result;
}

uint64_t sub_181F68D20(_BYTE *a1, void *a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage];
  v4 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 8];
  v5 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage];
  v6 = *&a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 8];
  v7 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_linkage + 16];
  v8 = a1[OBJC_IVAR____TtC7Network21__InputHandlerLinkage_correspondingOutputHandlerLinkage + 16];
  v9 = a1;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  v12[0] = v3;
  v12[1] = v4;
  v13 = v7;
  sub_181F68EA8(v3, v4, v7);
  sub_181F68EA8(v5, v6, v8);
  sub_182285C4C(a2, 1, v11);
  LOBYTE(a2) = OutputHandlerLinkage.invokeFinalizeOutputFrames(_:frames:)(v12, v11);

  sub_181F68E5C(v3, v4, v7);
  sub_181F68E5C(v5, v6, v8);
  return a2 & 1;
}

void sub_181F68E5C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    goto LABEL_2;
  }

  switch(a3)
  {
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:

      break;
    case 5u:
LABEL_2:

      break;
  }
}

id sub_181F68EA8(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  switch(a3)
  {
    case 3u:
      return swift_unknownObjectRetain();
    case 4u:
      return a2;
    case 5u:
  }

  return result;
}

uint64_t sub_181F68EF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3 || a4 == 5)
    {
      return swift_unknownObjectRelease();
    }
  }

  else if (a4 == 1 || a4 == 2)
  {
  }

  return result;
}

uint64_t sub_181F68F3C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

BOOL sub_181F68F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_182AD3B78();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

uint64_t TXTRecordDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];

  swift_unknownObjectRetain();
  v4 = MEMORY[0x1E69E7CC0];
  v5 = sub_18225AE0C(MEMORY[0x1E69E7CC0]);
  sub_181F6BEFC();
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v5;
  return sub_182AD3758();
}

uint64_t sub_181F69138()
{

  swift_unknownObjectRetain();
  sub_182AD3418();
  type metadata accessor for TXTRecordDecoder._Decoder._Container();
  swift_getWitnessTable();
  return sub_182AD4088();
}

uint64_t sub_181F691F8()
{
  v0 = sub_182AD4688();
  v2 = NWTXTRecord.subscript.getter(v0, v1);
  v4 = v3;

  if (!v4)
  {
    v2 = sub_182AD4688();
    v6 = v5;
    sub_181F6C2EC();
    swift_allocError();
    *v7 = v2;
    v7[1] = v6;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_181F692CC@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v22 = a2;
  v25 = a1;
  v8 = sub_182AD39B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = v4[1];
  v23 = *v4;
  v24 = v12;
  result = sub_181F691F8();
  if (!v5)
  {
    v20 = v9;
    v21 = 0;
    v25(result);

    v14 = *(a3 - 8);
    if ((*(v14 + 48))(v11, 1, a3) == 1)
    {
      (*(v20 + 8))(v11, v8);
      v15 = sub_182AD4688();
      v17 = v16;
      sub_181F6C298();
      swift_allocError();
      *v18 = v15;
      v18[1] = v17;
      return swift_willThrow();
    }

    else
    {
      return (*(v14 + 32))(a4, v11, a3);
    }
  }

  return result;
}

BOOL sub_181F694BC()
{
  v0 = sub_182AD4688();
  NWTXTRecord.subscript.getter(v0, v1);
  v3 = v2;

  if (v3)
  {
  }

  return v3 != 0;
}

BOOL sub_181F69530()
{
  v0 = sub_182AD4688();
  NWTXTRecord.subscript.getter(v0, v1);
  v3 = v2;

  if (v3)
  {
  }

  return v3 == 0;
}

uint64_t sub_181F695AC()
{
  v1 = sub_181F691F8();
  if (!v0)
  {
    v4 = v2;
    v5 = v1;
    v6 = sub_182AD3028();
    v8 = v7;
    v9 = v6 == 1702195828 && v7 == 0xE400000000000000;
    if (v9 || (v10 = v6, (sub_182AD4268() & 1) != 0) || v10 == 7562617 && v8 == 0xE300000000000000 || (sub_182AD4268() & 1) != 0 || v10 == 49 && v8 == 0xE100000000000000 || (sub_182AD4268() & 1) != 0)
    {

      v3 = 1;
    }

    else
    {
      if (v10 == 0x65736C6166 && v8 == 0xE500000000000000 || (sub_182AD4268() & 1) != 0 || v10 == 28526 && v8 == 0xE200000000000000 || (sub_182AD4268() & 1) != 0 || v10 == 48 && v8 == 0xE100000000000000)
      {
      }

      else
      {
        v12 = sub_182AD4268();

        if ((v12 & 1) == 0)
        {
          v13 = sub_182AD4688();
          v15 = v14;
          sub_181F6C424();
          swift_allocError();
          *v16 = v13;
          v16[1] = v15;
          v16[2] = v5;
          v16[3] = v4;
          swift_willThrow();
          return v3 & 1;
        }
      }

      v3 = 0;
    }
  }

  return v3 & 1;
}

double sub_181F69830()
{
  sub_181F692CC(sub_181F69898, 0, MEMORY[0x1E69E63B0], &v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

BOOL sub_181F69898@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  result = sub_181F68F84(a1, a2, &v6, MEMORY[0x1E69E7CD8]);
  v5 = v6;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 8) = !result;
  return result;
}

float sub_181F6991C()
{
  sub_181F692CC(sub_181F69984, 0, MEMORY[0x1E69E6448], &v2);
  if (!v0)
  {
    return v2;
  }

  return result;
}

BOOL sub_181F69984@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  result = sub_181F68F84(a1, a2, &v6, MEMORY[0x1E69E7CE0]);
  v5 = v6;
  if (!result)
  {
    v5 = 0;
  }

  *a3 = v5;
  *(a3 + 4) = !result;
  return result;
}

uint64_t sub_181F69A20@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    a3[1] = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = result;
    v27 = a3;

    v8 = sub_1820F1D5C(v26, a2, 10);

    a3 = v27;
    LODWORD(v4) = (v8 >> 8) & 1;
LABEL_63:
    if (v4)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      LOBYTE(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a3;
      result = sub_182AD3CF8();
      a3 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LOBYTE(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = (10 * v8);
              if (v17 != 10 * v8)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if ((v17 + v16) != v8)
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = (10 * v8);
            if (v22 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if ((v22 + v21) != v8)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = (10 * v8);
            if (v11 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if ((v11 - v10) != v8)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v30 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOBYTE(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = (10 * v8);
          if (v25 != 10 * v8)
          {
            break;
          }

          v8 = v25 + v24;
          if ((v25 + v24) != v8)
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LOBYTE(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = (10 * v8);
          if (v14 != 10 * v8)
          {
            break;
          }

          v8 = v14 - v13;
          if ((v14 - v13) != v8)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LOBYTE(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = (10 * v8);
        if (v20 != 10 * v8)
        {
          break;
        }

        v8 = v20 + v19;
        if ((v20 + v19) != v8)
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F69D64@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    *(a3 + 2) = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = result;
    v27 = a3;

    v8 = sub_1820F2348(v26, a2, 10);

    a3 = v27;
    LODWORD(v4) = HIWORD(v8) & 1;
LABEL_63:
    if (v4)
    {
      LOWORD(v6) = 0;
    }

    else
    {
      LOWORD(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a3;
      result = sub_182AD3CF8();
      a3 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LOWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = (10 * v8);
              if (v17 != 10 * v8)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if ((v17 + v16) != v8)
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = (10 * v8);
            if (v22 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if ((v22 + v21) != v8)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOWORD(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = (10 * v8);
            if (v11 != 10 * v8)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if ((v11 - v10) != v8)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v30 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = (10 * v8);
          if (v25 != 10 * v8)
          {
            break;
          }

          v8 = v25 + v24;
          if ((v25 + v24) != v8)
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LOWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = (10 * v8);
          if (v14 != 10 * v8)
          {
            break;
          }

          v8 = v14 - v13;
          if ((v14 - v13) != v8)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LOWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = (10 * v8);
        if (v20 != 10 * v8)
        {
          break;
        }

        v8 = v20 + v19;
        if ((v20 + v19) != v8)
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6A0A8@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    *(a3 + 4) = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = result;
    v27 = a3;

    v8 = sub_1820F2934(v26, a2, 10);

    a3 = v27;
    v4 = (v8 >> 32) & 1;
LABEL_63:
    if (v4)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a3;
      result = sub_182AD3CF8();
      a3 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LODWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if (v17 != v17)
              {
                goto LABEL_61;
              }

              LODWORD(v8) = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if (v22 != v22)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if (v11 != v11)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v30 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LODWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if (v25 != v25)
          {
            break;
          }

          LODWORD(v8) = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LODWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if (v14 != v14)
          {
            break;
          }

          LODWORD(v8) = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LODWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if (v20 != v20)
        {
          break;
        }

        LODWORD(v8) = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6A38C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, unint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v28 = 0;
    v27 = 1;
LABEL_66:
    *a4 = v28;
    *(a4 + 8) = v27 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v29 = result;
    v30 = a4;

    v9 = a3(v29, a2, 10);
    v27 = v32;

    a4 = v30;
LABEL_63:
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v9;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v33 = a4;
      result = sub_182AD3CF8();
      a4 = v33;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v35 = v5;
        v27 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v34[0] = result;
  v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v9 = 0;
        v24 = v34;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v9 = 0;
        v13 = v34 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      v9 = 0;
      v19 = v34 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6A6C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = sub_181F692CC(a3, 0, a4, &v6);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_181F6A718@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    a3[1] = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v20 = result;
    v21 = a3;

    v8 = sub_1820F343C(v20, a2, 10);

    a3 = v21;
    LODWORD(v4) = (v8 >> 8) & 1;
LABEL_63:
    if (v4)
    {
      LOBYTE(v6) = 0;
    }

    else
    {
      LOBYTE(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v22 = a3;
      result = sub_182AD3CF8();
      a3 = v22;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LOBYTE(v8) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v8) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v8 = (10 * v8) + v14;
              if ((v8 >> 8))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          while (1)
          {
            v17 = *result - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) + v17;
            if ((v8 >> 8))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOBYTE(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LOBYTE(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) - v10;
            if ((v8 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v24 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = result;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOBYTE(v8) = 0;
        v18 = v23;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF00) != 0)
          {
            break;
          }

          v8 = (10 * v8) + v19;
          if ((v8 >> 8))
          {
            break;
          }

          ++v18;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LOBYTE(v8) = 0;
        v11 = v23 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF00) != 0)
          {
            break;
          }

          v8 = (10 * v8) - v12;
          if ((v8 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v11;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LOBYTE(v8) = 0;
      v15 = v23 + 1;
      while (1)
      {
        v16 = *v15 - 48;
        if (v16 > 9)
        {
          break;
        }

        if (((10 * v8) & 0xF00) != 0)
        {
          break;
        }

        v8 = (10 * v8) + v16;
        if ((v8 >> 8))
        {
          break;
        }

        ++v15;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6AA44(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = sub_181F692CC(a3, 0, a4, &v6);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_181F6AA98@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    *(a3 + 2) = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v20 = result;
    v21 = a3;

    v8 = sub_1820F3A10(v20, a2, 10);

    a3 = v21;
    LODWORD(v4) = HIWORD(v8) & 1;
LABEL_63:
    if (v4)
    {
      LOWORD(v6) = 0;
    }

    else
    {
      LOWORD(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v22 = a3;
      result = sub_182AD3CF8();
      a3 = v22;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LOWORD(v8) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v8) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v8 = (10 * v8) + v14;
              if ((v8 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v17 = *result - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) + v17;
            if ((v8 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LOWORD(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LOWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v8) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v8 = (10 * v8) - v10;
            if ((v8 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v24 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v23[0] = result;
  v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LOWORD(v8) = 0;
        v18 = v23;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF0000) != 0)
          {
            break;
          }

          v8 = (10 * v8) + v19;
          if ((v8 & 0x10000) != 0)
          {
            break;
          }

          ++v18;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LOWORD(v8) = 0;
        v11 = v23 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          if (((10 * v8) & 0xF0000) != 0)
          {
            break;
          }

          v8 = (10 * v8) - v12;
          if ((v8 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v11;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LOWORD(v8) = 0;
      v15 = v23 + 1;
      while (1)
      {
        v16 = *v15 - 48;
        if (v16 > 9)
        {
          break;
        }

        if (((10 * v8) & 0xF0000) != 0)
        {
          break;
        }

        v8 = (10 * v8) + v16;
        if ((v8 & 0x10000) != 0)
        {
          break;
        }

        ++v15;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6ADC4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = sub_181F692CC(a3, 0, a4, &v6);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_181F6AE18@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    LOBYTE(v4) = 1;
LABEL_66:
    *a3 = v6;
    *(a3 + 4) = v4 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v26 = result;
    v27 = a3;

    v8 = sub_1820F3FE4(v26, a2, 10);

    a3 = v27;
    v4 = (v8 >> 32) & 1;
LABEL_63:
    if (v4)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = v8;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a3;
      result = sub_182AD3CF8();
      a3 = v28;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          LODWORD(v8) = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v17 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v8) = v17 + v16;
              if (__CFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v22 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v22 + v21;
            if (__CFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v8) = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        LODWORD(v8) = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v11 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v8) = v11 - v10;
            if (v11 < v10)
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v30 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        LODWORD(v8) = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v25 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v25 + v24;
          if (__CFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        LODWORD(v8) = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v14 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v8) = v14 - v13;
          if (v14 < v13)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      LODWORD(v8) = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v20 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v8) = v20 + v19;
        if (__CFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_181F6B0FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = sub_181F692CC(a3, 0, a4, &v6);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_181F6B150@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t, unint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v23 = 0;
    v22 = 1;
LABEL_68:
    *a4 = v23;
    *(a4 + 8) = v22 & 1;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v24 = result;
    v25 = a4;

    v9 = a3(v24, a2, 10);
    v22 = v27;

    a4 = v25;
LABEL_65:
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = v9;
    }

    goto LABEL_68;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v28 = a4;
      result = sub_182AD3CF8();
      a4 = v28;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v9, 0xAuLL))
              {
                goto LABEL_63;
              }

              v12 = __CFADD__(10 * v9, v16);
              v9 = 10 * v9 + v16;
              if (v12)
              {
                goto LABEL_63;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_74;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v9, 0xAuLL))
            {
              goto LABEL_63;
            }

            v12 = __CFADD__(10 * v9, v19);
            v9 = 10 * v9 + v19;
            if (v12)
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v9 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_64;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = (result + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v9, 0xAuLL))
            {
              goto LABEL_63;
            }

            v12 = 10 * v9 >= v11;
            v9 = 10 * v9 - v11;
            if (!v12)
            {
              goto LABEL_63;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v5) = 0;
LABEL_64:
        v30 = v5;
        v22 = v5;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v9 = 0;
        v20 = v29;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          if (!is_mul_ok(v9, 0xAuLL))
          {
            break;
          }

          v12 = __CFADD__(10 * v9, v21);
          v9 = 10 * v9 + v21;
          if (v12)
          {
            break;
          }

          ++v20;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v5)
    {
      if (--v5)
      {
        v9 = 0;
        v13 = v29 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          if (!is_mul_ok(v9, 0xAuLL))
          {
            break;
          }

          v12 = 10 * v9 >= v14;
          v9 = 10 * v9 - v14;
          if (!v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if (v5)
  {
    if (--v5)
    {
      v9 = 0;
      v17 = v29 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        if (!is_mul_ok(v9, 0xAuLL))
        {
          break;
        }

        v12 = __CFADD__(10 * v9, v18);
        v9 = 10 * v9 + v18;
        if (v12)
        {
          break;
        }

        ++v17;
        if (!--v5)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_181F6B470()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000011;
  v0[1] = 0x8000000182BD5670;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 164;
  return swift_willThrow();
}

uint64_t sub_181F6B4FC()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000020;
  v0[1] = 0x8000000182BD5640;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 168;
  return swift_willThrow();
}

uint64_t sub_181F6B588()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD00000000000001FLL;
  v0[1] = 0x8000000182BD5620;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 172;
  return swift_willThrow();
}

uint64_t sub_181F6B614()
{
  sub_181F6C160();
  swift_allocError();
  strcpy(v0, "superDecoder()");
  v0[15] = -18;
  *(v0 + 2) = 0xD00000000000005ELL;
  *(v0 + 3) = 0x8000000182BD5580;
  *(v0 + 4) = 176;
  return swift_willThrow();
}

uint64_t sub_181F6B6A4()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000015;
  v0[1] = 0x8000000182BD5600;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 180;
  return swift_willThrow();
}

uint64_t sub_181F6BA34()
{
  result = sub_182AD4318();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BA84()
{
  result = sub_182AD4328();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BB2C()
{
  result = sub_182AD4358();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BB7C()
{
  result = sub_182AD4338();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BCBC()
{
  result = sub_182AD4368();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_181F6BD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_181F6BDDC()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000012;
  v0[1] = 0x8000000182BD55E0;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 57;
  return swift_willThrow();
}

uint64_t sub_181F6BE6C()
{
  sub_181F6C160();
  swift_allocError();
  *v0 = 0xD000000000000016;
  v0[1] = 0x8000000182BD5560;
  v0[2] = 0xD00000000000005ELL;
  v0[3] = 0x8000000182BD5580;
  v0[4] = 61;
  return swift_willThrow();
}

unint64_t sub_181F6BEFC()
{
  result = qword_1EA838B18;
  if (!qword_1EA838B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B18);
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

uint64_t sub_181F6BF64(uint64_t a1, int a2)
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

uint64_t sub_181F6BFAC(uint64_t result, int a2, int a3)
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

uint64_t sub_181F6C014(uint64_t a1, int a2)
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

uint64_t sub_181F6C05C(uint64_t result, int a2, int a3)
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

uint64_t sub_181F6C0AC(uint64_t a1, int a2)
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

uint64_t sub_181F6C0F4(uint64_t result, int a2, int a3)
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

unint64_t sub_181F6C160()
{
  result = qword_1EA838B20;
  if (!qword_1EA838B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B20);
  }

  return result;
}

uint64_t sub_181F6C1CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_181F6C208(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_181F6C250(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_181F6C298()
{
  result = qword_1EA838B28;
  if (!qword_1EA838B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B28);
  }

  return result;
}

unint64_t sub_181F6C2EC()
{
  result = qword_1EA838B30;
  if (!qword_1EA838B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B30);
  }

  return result;
}

_BYTE *sub_181F6C398@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t sub_181F6C424()
{
  result = qword_1EA838B38;
  if (!qword_1EA838B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWBrowser.Descriptor.Options.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NWBrowser.Descriptor.Options.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_181F6C630(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  if (!a4 && a3 == 1)
  {
    return 1;
  }

  if (a4 <= 2u)
  {
    if (a4 == 1)
    {
      result = 1;
      if (a3 == 2)
      {
        return result;
      }

      v6 = a2;
      if (a3 == 4)
      {
        return result;
      }

      goto LABEL_20;
    }

    v6 = a2;
    if (a4 == 2 && a3 - 3 < 2)
    {
      return 1;
    }
  }

  else
  {
    v6 = a2;
    if (a4 == 3)
    {
      if ((a3 & 0xFE) == 4)
      {
        return 1;
      }
    }

    else
    {
      if (a4 != 4)
      {
        if (a4 != 5 || a3 != 4)
        {
          goto LABEL_20;
        }

        return 1;
      }

      if (a3 == 6)
      {
        return 1;
      }
    }
  }

LABEL_20:
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD00000000000001FLL, 0x8000000182BD5700);
  MEMORY[0x1865D9CA0](a1, v6);
  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
  sub_182AD3E18();
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843418);

  v8 = sub_182AD2678();
  v9 = sub_182AD38C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315650;
    v12 = sub_182AD3BF8();
    v14 = sub_181C64FFC(v12, v13, v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v16);
    *(v10 + 22) = 2080;
    v15 = sub_181C64FFC(0, 0xE000000000000000, v16);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_181F6C974(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000018, 0x8000000182BD56B0);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
    sub_182AD3E18();
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);

    v9 = sub_182AD2678();
    v10 = sub_182AD38A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v11 = 136315650;
      v12 = sub_182AD3BF8();
      v14 = sub_181C64FFC(v12, v13, v18);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_181C64FFC(a1, a2, v18);
      *(v11 + 22) = 2080;
      v15 = sub_181C64FFC(0, 0xE000000000000000, v18);

      *(v11 + 24) = v15;
      _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v17, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    else
    {
    }
  }

  result = sub_181F6C630(a1, a2, a3, *v4);
  *v4 = a3;
  return result;
}

unint64_t sub_181F6CC78()
{
  result = qword_1EA838B50;
  if (!qword_1EA838B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838B50);
  }

  return result;
}

uint64_t sub_181F6CCFC(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  if (!a4 && a3 == 1)
  {
    return 1;
  }

  v4 = a4;
  if (a4 > 2u)
  {
    if (a4 != 3)
    {
      if (a4 == 4)
      {
        v4 = 1;
        if (a3 == 3 || a3 == 6)
        {
          return v4;
        }
      }

      goto LABEL_18;
    }

    if ((a3 & 0xFE) != 4)
    {
      goto LABEL_18;
    }

    return 1;
  }

  if (a4 == 1)
  {
    if (a3 == 2 || a3 == 4)
    {
      return v4;
    }

    goto LABEL_18;
  }

  if (a4 == 2 && a3 - 3 < 2)
  {
    return 1;
  }

LABEL_18:
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_182AD3BA8();
  MEMORY[0x1865D9CA0](0xD000000000000022, 0x8000000182BD5740);
  MEMORY[0x1865D9CA0](a1, a2);
  MEMORY[0x1865D9CA0](8250, 0xE200000000000000);
  sub_182AD3E18();
  MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
  sub_182AD3E18();
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA843418);

  v8 = sub_182AD2678();
  v9 = sub_182AD38C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[0] = v11;
    *v10 = 136315650;
    v12 = sub_182AD3BF8();
    v14 = sub_181C64FFC(v12, v13, v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v17);
    *(v10 + 22) = 2080;
    v15 = sub_181C64FFC(0, 0xE000000000000000, v17);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_181A37000, v8, v9, "%s %s %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_181F6D028(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (qword_1EA837250 != -1)
  {
    swift_once();
  }

  if (byte_1EA843430 == 1)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD00000000000001BLL, 0x8000000182BD5720);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](540945696, 0xE400000000000000);
    sub_182AD3E18();
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843418);

    v9 = sub_182AD2678();
    v10 = sub_182AD38A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v11 = 136315650;
      v12 = sub_182AD3BF8();
      v14 = sub_181C64FFC(v12, v13, v18);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_181C64FFC(a1, a2, v18);
      *(v11 + 22) = 2080;
      v15 = sub_181C64FFC(0, 0xE000000000000000, v18);

      *(v11 + 24) = v15;
      _os_log_impl(&dword_181A37000, v9, v10, "%s %s %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v17, -1, -1);
      MEMORY[0x1865DF520](v11, -1, -1);
    }

    else
    {
    }
  }

  result = sub_181F6CCFC(a1, a2, a3, *v4);
  *v4 = a3;
  return result;
}
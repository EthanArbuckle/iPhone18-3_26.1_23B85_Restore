BOOL sub_1821F833C()
{
  v21[5] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8394B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if ((v7 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v6 = *(v7 + 352);
    if (v6 >> 60 == 15)
    {
      v8 = sub_182AD2868();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);

LABEL_30:
      swift_endAccess();

      sub_182AD2868();
      v13 = (*(*(v8 - 8) + 48))(v3, 1, v8) != 1;
      v6 = v3;
      goto LABEL_38;
    }

    v9 = *(v7 + 344);
    v11 = v6 >> 62;
    if ((v6 >> 62) <= 1)
    {
      if (!v11)
      {
        v21[0] = *(v7 + 344);
        LOWORD(v21[1]) = v6;
        BYTE2(v21[1]) = BYTE2(v6);
        BYTE3(v21[1]) = BYTE3(v6);
        BYTE4(v21[1]) = BYTE4(v6);
        BYTE5(v21[1]) = BYTE5(v6);

LABEL_29:
        sub_182AD2828();
        sub_181D9D680(v9, v6);
        v8 = sub_182AD2868();
        (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    if (v11 != 2)
    {
      memset(v21, 0, 14);

      goto LABEL_29;
    }

    v14 = *(v9 + 16);
    v15 = *(v9 + 24);

    sub_181F49B44(v9, v6);
    if (sub_182AD1D58())
    {
      v16 = sub_182AD1D88();
      LODWORD(v10) = v14 - v16;
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_40;
      }
    }

    if (!__OFSUB__(v15, v14))
    {
LABEL_27:
      sub_182AD1D78();
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_18;
  }

  v9 = v7 & 0x7FFFFFFFFFFFFFFFLL;
  v3 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x160);
  if (v3 >> 60 != 15)
  {
    v7 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x158);
    v10 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (v10)
      {
        if (v7 >> 32 < v7)
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        sub_181F49B44(v7, v3);
        if (sub_182AD1D58() && __OFSUB__(v7, sub_182AD1D88()))
        {
LABEL_44:
          __break(1u);
        }

LABEL_34:
        sub_182AD1D78();
        sub_182AD2828();

LABEL_37:
        sub_181D9D680(v7, v3);
        v19 = sub_182AD2868();
        v13 = 1;
        (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
        goto LABEL_38;
      }

      v21[2] = v7;
      LOWORD(v21[3]) = v3;
      BYTE2(v21[3]) = BYTE2(v3);
      BYTE3(v21[3]) = BYTE3(v3);
      BYTE4(v21[3]) = BYTE4(v3);
      BYTE5(v21[3]) = BYTE5(v3);
LABEL_36:
      sub_182AD2828();
      goto LABEL_37;
    }

LABEL_18:
    if (v10 == 2)
    {
      v17 = *(v7 + 16);
      v18 = *(v7 + 24);

      sub_181F49B44(v7, v3);
      if (sub_182AD1D58() && __OFSUB__(v17, sub_182AD1D88()))
      {
        goto LABEL_43;
      }

      if (__OFSUB__(v18, v17))
      {
        __break(1u);
LABEL_24:
        if (v9 >> 32 >= v9)
        {

          sub_181F49B44(v9, v6);
          if (!sub_182AD1D58() || !__OFSUB__(v9, sub_182AD1D88()))
          {
            goto LABEL_27;
          }

          goto LABEL_41;
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      goto LABEL_34;
    }

    memset(&v21[2], 0, 14);
    goto LABEL_36;
  }

  v12 = sub_182AD2868();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = 0;
LABEL_38:
  sub_181F49A88(v6, &unk_1EA8394B0);
  return v13;
}

void sub_1821F8940(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URLEndpoint();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  if (!a2)
  {
    goto LABEL_5;
  }

  v13 = OBJC_IVAR____TtC7Network8Endpoint_type;
  v14 = a2;
  swift_beginAccess();
  sub_181ACC828(a2 + v13, v6, type metadata accessor for Endpoint.EndpointType);
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    sub_181AB7264(v6, type metadata accessor for Endpoint.EndpointType);
LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  sub_181B2BEE4(v6, v12);
  sub_181ACC828(v12, v9, type metadata accessor for URLEndpoint);
  v15 = objc_allocWithZone(type metadata accessor for Endpoint(0));
  v16 = Endpoint.init(_:)(v9);

  sub_181AB7264(v12, type metadata accessor for URLEndpoint);
LABEL_6:

  *(a1 + 376) = v16;
}

void sub_1821F8B2C(uint64_t a1, uuid_t dst)
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = *(a1 + 128);
  uuid_copy(dst, v2);
}

__n128 _nw_parameters_get_e_proc_uuid_0(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if (v3 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0xA0);
  }

  else
  {
    swift_beginAccess();
    v4 = *(v3 + 160);
  }

  v6 = v4;

  *src = v6;
  uuid_copy(a2, src);
  return result;
}

unint64_t sub_1821F8C74(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    if (*(v1 + 32))
    {
LABEL_9:

      return 0;
    }

    v3 = *(v1 + 336);
    if (!v3)
    {
      goto LABEL_15;
    }

    v1 = *(v3 + 24);

    result = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_19;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (!HIDWORD(result))
    {
      return result;
    }

    __break(1u);
  }

  if (*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20))
  {
    goto LABEL_9;
  }

  v5 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x150);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *(v5 + 24);

  result = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (!HIDWORD(result))
  {
    return result;
  }

  __break(1u);
LABEL_15:

  return 1;
}

uint64_t sub_1821F8D88(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    v1 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v1 + 16), sizeof(__dst));
  if ((__dst[26] & 0x2000000000000000) != 0)
  {

    sub_181F481DC(__dst, v10);
LABEL_11:

    sub_181F48214(__dst);
    return 1;
  }

  memcpy(v10, (v1 + 16), sizeof(v10));

  sub_181F481DC(__dst, v9);
  v3 = sub_181AD3638();
  if (v3)
  {
    v4 = *(v3 + 24);

    if (v4 >= 1)
    {
      goto LABEL_11;
    }
  }

  if (__dst[28] && (v5 = *(__dst[28] + 80)) != 0)
  {
    v6 = *(v5 + 24);

    v7 = v6 > 0;
  }

  else
  {

    v7 = 0;
  }

  sub_181F48214(__dst);
  return v7;
}

uint64_t sub_1821F8EB8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  LODWORD(v2) = *(result + 210);
  if (v2 == 1)
  {
    goto LABEL_19;
  }

  v2 = *(result + 224);
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = *(v2 + 88);
  if (v3 && *(v3 + 24) > 0)
  {
    LOBYTE(v2) = 1;
LABEL_19:
    *a2 = v2;
    return result;
  }

  v4 = *(v2 + 96);
  v14 = v4;
  if (*(v2 + 152))
  {
    v5 = a2;

    if (v4)
    {
LABEL_8:
      v6 = *(v4 + 24);

      LOBYTE(v2) = v6 > 0;
LABEL_18:
      a2 = v5;
      goto LABEL_19;
    }

LABEL_17:
    LOBYTE(v2) = 0;
    goto LABEL_18;
  }

  v8 = *(v2 + 136);
  v7 = *(v2 + 144);
  if (v4)
  {
    v9 = *(v2 + 96);
  }

  else
  {
    v10 = a2;
    v9 = *sub_182AD2388();
    v14 = v9;

    a2 = v10;
  }

  v5 = a2;
  v11 = *(v9 + 24);
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (*(v9 + 16) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181B8477C(isUniquelyReferenced_nonNull_native, v12);
      v9 = v14;
    }

    result = sub_181B855B4((v9 + 16), v9 + 40, v8, v7);
    v4 = v14;
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1821F9024(uint64_t a1)
{
  v2 = sub_182AD3158();
  v4 = v3;
  v5 = sub_182AD3158();
  v7 = v6;
  v8 = sub_181AC47A8(v2, v4);
  v10 = v9;
  v11 = sub_181AC49BC(v5, v7);
  v13 = v12;
  v28 = a1;
  v14 = *(a1 + 224);
  if (!v14 || (v15 = *(v14 + 56)) == 0)
  {
    v15 = *sub_182AD2388();
  }

  v16 = swift_retain_n();
  v17 = v15[4];
  v18 = v15[3] + v17;
  if (v15[2] < v18)
  {
    v18 = v15[2];
  }

  v29 = v15[4];
  v30 = v18;
  v19 = v15;
  while (1)
  {
    if (v17 != v18)
    {
      goto LABEL_12;
    }

    if ((sub_181AC81FC(v16) & 1) == 0)
    {
      break;
    }

    v19 = v15;
    v17 = v29;
LABEL_12:
    v20 = &v19[4 * v17++];
    v29 = v17;
    v16 = v20[5];
    v21 = v20[6];
    v22 = v20[7];
    v23 = v20[8];
    if (v21 > 2)
    {
      switch(v21)
      {
        case 3:
          if (v10 != 3)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 4:
          if (v10 != 4)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 5:
          if (v10 != 5)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    else
    {
      switch(v21)
      {
        case 0:
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 1:
          if (v10 != 1)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 2:
          if (v10 != 2)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    if (v10 < 6)
    {
      goto LABEL_8;
    }

    if (v16 != v8 || v21 != v10)
    {
      v16 = sub_182AD4268();
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_35:
    if (v23 > 4)
    {
      if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v13 == 5)
          {
            goto LABEL_68;
          }
        }

        else if (v13 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      switch(v23)
      {
        case 7:
          if (v13 == 7)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 8:
          if (v13 == 8)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 9:
          if (v13 == 9)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
      }
    }

    else
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          if (v13 == 2)
          {
            goto LABEL_68;
          }
        }

        else if (v23 == 3)
        {
          if (v13 == 3)
          {
            goto LABEL_68;
          }
        }

        else if (v13 == 4)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (!v23)
      {
        if (!v13)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (v23 == 1)
      {
        if (v13 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }
    }

    if (v13 >= 0xA)
    {
      if (v22 == v11 && v23 == v13 || (v16 = sub_182AD4268(), (v16 & 1) != 0))
      {
LABEL_68:

        goto LABEL_76;
      }
    }

LABEL_8:
    v18 = v30;
  }

  v25 = v15[3];
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v15[2] < v26 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181E74708(isUniquelyReferenced_nonNull_native, v26);
  }

  sub_181E748B4(v15 + 2, (v15 + 5), v8, v10, v11, v13);
  if (!v14)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v14 = swift_allocObject();
    sub_18226B448(v14 + 16);
    *(v28 + 224) = v14;
  }

  *(v14 + 56) = v15;
LABEL_76:

  sub_181E4926C(v8, v10);

  return sub_181E49280(v11, v13);
}

uint64_t sub_1821F93B4(uint64_t a1)
{
  v2 = sub_182AD3158();
  v4 = v3;
  v5 = sub_182AD3158();
  v7 = v6;
  v8 = sub_181AC47A8(v2, v4);
  v10 = v9;
  v11 = sub_181AC49BC(v5, v7);
  v13 = v12;
  v28 = a1;
  v14 = *(a1 + 224);
  if (!v14 || (v15 = *(v14 + 72)) == 0)
  {
    v15 = *sub_182AD2388();
  }

  v16 = swift_retain_n();
  v17 = v15[4];
  v18 = v15[3] + v17;
  if (v15[2] < v18)
  {
    v18 = v15[2];
  }

  v29 = v15[4];
  v30 = v18;
  v19 = v15;
  while (1)
  {
    if (v17 != v18)
    {
      goto LABEL_12;
    }

    if ((sub_181AC81FC(v16) & 1) == 0)
    {
      break;
    }

    v19 = v15;
    v17 = v29;
LABEL_12:
    v20 = &v19[4 * v17++];
    v29 = v17;
    v16 = v20[5];
    v21 = v20[6];
    v22 = v20[7];
    v23 = v20[8];
    if (v21 > 2)
    {
      switch(v21)
      {
        case 3:
          if (v10 != 3)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 4:
          if (v10 != 4)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 5:
          if (v10 != 5)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    else
    {
      switch(v21)
      {
        case 0:
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 1:
          if (v10 != 1)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 2:
          if (v10 != 2)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    if (v10 < 6)
    {
      goto LABEL_8;
    }

    if (v16 != v8 || v21 != v10)
    {
      v16 = sub_182AD4268();
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_35:
    if (v23 > 4)
    {
      if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v13 == 5)
          {
            goto LABEL_68;
          }
        }

        else if (v13 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      switch(v23)
      {
        case 7:
          if (v13 == 7)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 8:
          if (v13 == 8)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 9:
          if (v13 == 9)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
      }
    }

    else
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          if (v13 == 2)
          {
            goto LABEL_68;
          }
        }

        else if (v23 == 3)
        {
          if (v13 == 3)
          {
            goto LABEL_68;
          }
        }

        else if (v13 == 4)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (!v23)
      {
        if (!v13)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (v23 == 1)
      {
        if (v13 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }
    }

    if (v13 >= 0xA)
    {
      if (v22 == v11 && v23 == v13 || (v16 = sub_182AD4268(), (v16 & 1) != 0))
      {
LABEL_68:

        goto LABEL_76;
      }
    }

LABEL_8:
    v18 = v30;
  }

  v25 = v15[3];
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v15[2] < v26 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181E74708(isUniquelyReferenced_nonNull_native, v26);
  }

  sub_181E748B4(v15 + 2, (v15 + 5), v8, v10, v11, v13);
  if (!v14)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v14 = swift_allocObject();
    sub_18226B448(v14 + 16);
    *(v28 + 224) = v14;
  }

  *(v14 + 72) = v15;
LABEL_76:

  sub_181E4926C(v8, v10);

  return sub_181E49280(v11, v13);
}

uint64_t sub_1821F9770(uint64_t a1)
{
  v2 = sub_182AD3158();
  v4 = v3;
  v5 = sub_182AD3158();
  v7 = v6;
  v8 = sub_181AC47A8(v2, v4);
  v10 = v9;
  v11 = sub_181AC49BC(v5, v7);
  v13 = v12;
  v28 = a1;
  v14 = *(a1 + 224);
  if (!v14 || (v15 = *(v14 + 88)) == 0)
  {
    v15 = *sub_182AD2388();
  }

  v16 = swift_retain_n();
  v17 = v15[4];
  v18 = v15[3] + v17;
  if (v15[2] < v18)
  {
    v18 = v15[2];
  }

  v29 = v15[4];
  v30 = v18;
  v19 = v15;
  while (1)
  {
    if (v17 != v18)
    {
      goto LABEL_12;
    }

    if ((sub_181AC81FC(v16) & 1) == 0)
    {
      break;
    }

    v19 = v15;
    v17 = v29;
LABEL_12:
    v20 = &v19[4 * v17++];
    v29 = v17;
    v16 = v20[5];
    v21 = v20[6];
    v22 = v20[7];
    v23 = v20[8];
    if (v21 > 2)
    {
      switch(v21)
      {
        case 3:
          if (v10 != 3)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 4:
          if (v10 != 4)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 5:
          if (v10 != 5)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    else
    {
      switch(v21)
      {
        case 0:
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 1:
          if (v10 != 1)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 2:
          if (v10 != 2)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    if (v10 < 6)
    {
      goto LABEL_8;
    }

    if (v16 != v8 || v21 != v10)
    {
      v16 = sub_182AD4268();
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_35:
    if (v23 > 4)
    {
      if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v13 == 5)
          {
            goto LABEL_68;
          }
        }

        else if (v13 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      switch(v23)
      {
        case 7:
          if (v13 == 7)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 8:
          if (v13 == 8)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 9:
          if (v13 == 9)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
      }
    }

    else
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          if (v13 == 2)
          {
            goto LABEL_68;
          }
        }

        else if (v23 == 3)
        {
          if (v13 == 3)
          {
            goto LABEL_68;
          }
        }

        else if (v13 == 4)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (!v23)
      {
        if (!v13)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (v23 == 1)
      {
        if (v13 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }
    }

    if (v13 >= 0xA)
    {
      if (v22 == v11 && v23 == v13 || (v16 = sub_182AD4268(), (v16 & 1) != 0))
      {
LABEL_68:

        goto LABEL_76;
      }
    }

LABEL_8:
    v18 = v30;
  }

  v25 = v15[3];
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v15[2] < v26 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181E74708(isUniquelyReferenced_nonNull_native, v26);
  }

  sub_181E748B4(v15 + 2, (v15 + 5), v8, v10, v11, v13);
  if (!v14)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v14 = swift_allocObject();
    sub_18226B448(v14 + 16);
    *(v28 + 224) = v14;
  }

  *(v14 + 88) = v15;
LABEL_76:

  sub_181E4926C(v8, v10);

  return sub_181E49280(v11, v13);
}

uint64_t sub_1821F9B30(uint64_t a1)
{
  v2 = sub_182AD3158();
  v4 = v3;
  v5 = sub_182AD3158();
  v7 = v6;
  v8 = sub_181AC47A8(v2, v4);
  v10 = v9;
  v11 = sub_181AC49BC(v5, v7);
  v13 = v12;
  v28 = a1;
  v14 = *(a1 + 224);
  if (!v14 || (v15 = *(v14 + 104)) == 0)
  {
    v15 = *sub_182AD2388();
  }

  v16 = swift_retain_n();
  v17 = v15[4];
  v18 = v15[3] + v17;
  if (v15[2] < v18)
  {
    v18 = v15[2];
  }

  v29 = v15[4];
  v30 = v18;
  v19 = v15;
  while (1)
  {
    if (v17 != v18)
    {
      goto LABEL_12;
    }

    if ((sub_181AC81FC(v16) & 1) == 0)
    {
      break;
    }

    v19 = v15;
    v17 = v29;
LABEL_12:
    v20 = &v19[4 * v17++];
    v29 = v17;
    v16 = v20[5];
    v21 = v20[6];
    v22 = v20[7];
    v23 = v20[8];
    if (v21 > 2)
    {
      switch(v21)
      {
        case 3:
          if (v10 != 3)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 4:
          if (v10 != 4)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 5:
          if (v10 != 5)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    else
    {
      switch(v21)
      {
        case 0:
          if (v10)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 1:
          if (v10 != 1)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        case 2:
          if (v10 != 2)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
      }
    }

    if (v10 < 6)
    {
      goto LABEL_8;
    }

    if (v16 != v8 || v21 != v10)
    {
      v16 = sub_182AD4268();
      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_35:
    if (v23 > 4)
    {
      if (v23 <= 6)
      {
        if (v23 == 5)
        {
          if (v13 == 5)
          {
            goto LABEL_68;
          }
        }

        else if (v13 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      switch(v23)
      {
        case 7:
          if (v13 == 7)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 8:
          if (v13 == 8)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
        case 9:
          if (v13 == 9)
          {
            goto LABEL_68;
          }

          goto LABEL_8;
      }
    }

    else
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          if (v13 == 2)
          {
            goto LABEL_68;
          }
        }

        else if (v23 == 3)
        {
          if (v13 == 3)
          {
            goto LABEL_68;
          }
        }

        else if (v13 == 4)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (!v23)
      {
        if (!v13)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }

      if (v23 == 1)
      {
        if (v13 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_8;
      }
    }

    if (v13 >= 0xA)
    {
      if (v22 == v11 && v23 == v13 || (v16 = sub_182AD4268(), (v16 & 1) != 0))
      {
LABEL_68:

        goto LABEL_76;
      }
    }

LABEL_8:
    v18 = v30;
  }

  v25 = v15[3];
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v15[2] < v26 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_181E74708(isUniquelyReferenced_nonNull_native, v26);
  }

  sub_181E748B4(v15 + 2, (v15 + 5), v8, v10, v11, v13);
  if (!v14)
  {
    type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
    v14 = swift_allocObject();
    sub_18226B448(v14 + 16);
    *(v28 + 224) = v14;
  }

  *(v14 + 104) = v15;
LABEL_76:

  sub_181E4926C(v8, v10);

  return sub_181E49280(v11, v13);
}

void sub_1821F9F50()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);
  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v2 = *(v1 + 240);
    if (!v2)
    {

      goto LABEL_16;
    }

    v3 = *(v2 + 96);
    v17 = v3;
    if (*(v2 + 152))
    {

LABEL_16:

      return;
    }

    v6 = *(v2 + 136);
    v5 = *(v2 + 144);

    v7 = v3;
    if (!v3)
    {
      v7 = *sub_182AD2388();
      v17 = v7;
    }

    v8 = *(v7 + 24);
    v9 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (*(v7 + 16) < v9 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B8477C(isUniquelyReferenced_nonNull_native, v9);
        v7 = v17;
      }

      sub_181B855B4((v7 + 16), v7 + 40, v6, v5);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_27;
  }

  v4 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0xF0);
  if (v4)
  {
    v18 = *(v4 + 96);
    if (*(v4 + 152))
    {

      return;
    }

    v12 = *(v4 + 136);
    v11 = *(v4 + 144);
    if (*(v4 + 96))
    {
      v13 = *(v4 + 96);
    }

    else
    {
      v13 = *sub_182AD2388();
      v18 = v13;
    }

    v14 = *(v13 + 24);
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_27:
      __break(1u);
      return;
    }

    v16 = swift_isUniquelyReferenced_nonNull_native();
    if (*(v13 + 16) < v15 || (v16 & 1) == 0)
    {
      sub_181B8477C(v16, v15);
      v13 = v18;
    }

    sub_181B855B4((v13 + 16), v13 + 40, v12, v11);
  }
}

void _nw_parameters_iterate_custom_proxy_configsTm(uint64_t a1, void *aBlock, uint64_t a3, void (*a4)(uint64_t, uint64_t, void *))
{
  v7 = _Block_copy(aBlock);
  v8[2] = v7;
  a4(a1, a3, v8);
  _Block_release(v7);
}

uint64_t sub_1821FA1DC(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if ((v3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    memcpy(__dst, (v3 + 16), 0x188uLL);
    if (__dst[45])
    {
      v5 = *(__dst[45] + 16);
      if (v5)
      {
        v6 = v5[4];
        if (v5[2] >= v5[3] + v6)
        {
          v7 = v5[3] + v6;
        }

        else
        {
          v7 = v5[2];
        }

        v24 = v5[4];
        v25 = v7;

        sub_181F481DC(__dst, &v32);

        v9 = v5;
        if (v6 == v7)
        {
LABEL_8:
          if (sub_181AC81FC(v8))
          {
            v9 = v5;
            v6 = v24;
            goto LABEL_10;
          }

LABEL_27:

          goto LABEL_25;
        }

LABEL_10:
        while (1)
        {
          v10 = v6 + 1;
          v24 = v6 + 1;
          v11 = v9[2 * v6 + 6];
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain_n();
          sub_181AAC800(a2, &v32);
          v26 = v32;
          v27 = v33;
          v28 = v34;
          v13 = (*(v11 + 40))(&v26, ObjectType, v11);
          swift_unknownObjectRelease();
          sub_181F48350(v27, *(&v27 + 1), v28);
          if (v13)
          {
            goto LABEL_26;
          }

          v8 = swift_unknownObjectRelease();
          ++v6;
          if (v10 == v25)
          {
            goto LABEL_8;
          }
        }
      }
    }

LABEL_24:
    sub_181F481DC(__dst, &v32);

LABEL_25:
    sub_181F48214(__dst);
    return 0;
  }

  memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x188uLL);
  if (!__dst[45])
  {
    goto LABEL_24;
  }

  v14 = *(__dst[45] + 16);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14[4];
  if (v14[2] >= v14[3] + v15)
  {
    v16 = v14[3] + v15;
  }

  else
  {
    v16 = v14[2];
  }

  v29 = *(__dst[45] + 16);
  v30 = v15;
  v31 = v16;

  sub_181F481DC(__dst, &v32);

  v18 = v14;
  if (v15 == v16)
  {
LABEL_19:
    if (sub_181AC81FC(v17))
    {
      v18 = v29;
      v15 = v30;
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_21:
  while (1)
  {
    v19 = v15 + 1;
    v30 = v15 + 1;
    v11 = v18[2 * v15 + 6];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain_n();
    sub_181AAC800(a2, &v32);
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v20 = (*(v11 + 40))(&v26, ObjectType, v11);
    swift_unknownObjectRelease();
    sub_181F48350(v27, *(&v27 + 1), v28);
    if (v20)
    {
      break;
    }

    v17 = swift_unknownObjectRelease();
    ++v15;
    if (v19 == v31)
    {
      goto LABEL_19;
    }
  }

LABEL_26:
  v22 = *(v11 + 336);
  swift_unknownObjectRetain();
  v23 = v22(ObjectType, v11);

  swift_unknownObjectRelease_n();

  sub_181F48214(__dst);
  return v23;
}

id _nw_parameters_shallow_copy_0(char *a1, char a2)
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    memcpy(__dst, ((v3 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    *__src = 0;
    *&__src[8] = 0;
    __src[16] = 1;
    *&__src[25] = 0;
    *&__src[17] = 0;
    __src[33] = 1;
    memset(&__src[36], 0, 32);
    __src[68] = 1;
    sub_181F481DC(__dst, v10);

    sub_181F481DC(__dst, v10);
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v3 + 16), sizeof(__dst));
    *__src = 0;
    *&__src[8] = 0;
    __src[16] = 1;
    *&__src[25] = 0;
    *&__src[17] = 0;
    __src[33] = 1;
    memset(&__src[36], 0, 32);
    __src[68] = 1;
    sub_181F481DC(__dst, v10);
    sub_181F481DC(__dst, v10);
  }

  sub_181A53D78(&__src[128]);
  *&__src[328] = 0;
  *&__src[336] = 0xF000000000000000;
  v13[8] = *&__src[256];
  v13[9] = *&__src[272];
  v13[10] = *&__src[288];
  v13[4] = *&__src[192];
  v13[5] = *&__src[208];
  v13[7] = *&__src[240];
  v13[6] = *&__src[224];
  v13[0] = *&__src[128];
  v13[1] = *&__src[144];
  v13[3] = *&__src[176];
  v13[2] = *&__src[160];
  sub_181F481DC(__dst, v10);
  sub_181A41E7C(v13);
  sub_181D9D680(0, 0xF000000000000000);
  memcpy(__src, __dst, sizeof(__src));
  type metadata accessor for ProtocolStack();
  swift_allocObject();

  v6 = sub_181D384EC(v5);
  sub_181F48214(__dst);

  *&__src[344] = v6;
  memcpy(v14, __src, sizeof(v14));
  memcpy(__src, v14, sizeof(__src));
  if (a2)
  {
    v7 = sub_1821F2E98();
  }

  else
  {
    v7 = sub_1821F2D80();
  }

  v8 = v7;

  sub_181F48214(__dst);
  sub_181F48214(v14);
  return v8;
}

void _nw_parameters_set_persona(char *a1, unsigned __int8 *uu)
{
  if (uuid_is_null(uu) != 1)
  {
    v4 = *uu;
    v5 = *(uu + 1);

    sub_18220A4B8(a1, v4, v5);
  }
}

BOOL sub_1821FA908(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v2 = a1;
  if (v1 < 0)
  {
    memcpy(__dst, ((v1 & 0x7FFFFFFFFFFFFFFFLL) + 16), sizeof(__dst));
    if ((__dst[176] & 1) == 0)
    {
LABEL_6:

      sub_181F481DC(__dst, v6);
      v4 = SystemUUID.isUUIDNULL.getter();

      sub_181F48214(__dst);
      return !v4;
    }
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (v1 + 16), sizeof(__dst));
    if ((__dst[176] & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t sub_1821FAA10@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + 120);
  v4 = *(result + 209);
  v5 = *(result + 220);
  v6 = *(result + 224);
  if ((v5 & 0x2000) == 0)
  {
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = *(v6 + 32);
  if (!v7)
  {
LABEL_14:
    if (*(v6 + 16))
    {
      v12 = *(v6 + 16);
      if (v12)
      {
        if (*(v12 + 185) == 2)
        {
          goto LABEL_27;
        }

        v13 = sub_182AD31E8();

        v14 = 0;
        if (v5 & 2) != 0 || (v13)
        {
          goto LABEL_28;
        }

LABEL_21:
        v14 = (v3 & 0x200) == 0;
        if (v4 == 2)
        {
          v14 = 0;
        }

        if ((v5 & 4) != 0)
        {
          v14 = 0;
        }

        goto LABEL_28;
      }
    }

LABEL_20:
    if ((v5 & 2) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v8 = v7[4];
  v9 = v7[3] + v8;
  if (v7[2] < v9)
  {
    v9 = v7[2];
  }

  v15 = *(v6 + 32);
  v16 = v7[4];
  v17 = v9;
  v10 = v15;
  while (v8 != v17)
  {
LABEL_9:
    v11 = v10 + v8++;
    v16 = v8;
    if (*(v11 + 40) == 2)
    {

      goto LABEL_14;
    }
  }

  if (sub_181AC81FC())
  {
    v10 = v15;
    v8 = v16;
    goto LABEL_9;
  }

LABEL_27:
  v14 = 0;
LABEL_28:
  *a2 = v14;
  return result;
}

void _nw_parameters_set_endpoint_resolution_preference_handler(char *a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(v3);
  _Block_copy(v4);
  sub_18220C2E8(a1, v4);
  _Block_release(v4);
  _Block_release(v3);

  _Block_release(v4);
}

uint64_t _nw_parameters_execute_endpoint_resolution_preference_handler(char *a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v4 = sub_18220CA98(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1821FACFC(char *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v3 &= ~0x8000000000000000;
  }

  else
  {
    swift_beginAccess();
  }

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  memcpy(v17, (v3 + 16), sizeof(v17));

  v5 = sub_181F481DC(__dst, &v16);
  v6 = a2(v5);
  v8 = v7;

  sub_181F48214(__dst);
  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    result = swift_slowAlloc();
    v11 = result;
    v12 = __OFADD__(v9, 1);
    v13 = v9 + 1;
    if (!v12)
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_182AD3168();
  v12 = __OFADD__(v15, 1);
  result = v15 + 1;
  if (!v12)
  {
    v11 = swift_slowAlloc();
    result = sub_182AD3168();
    v13 = result + 1;
    if (!__OFADD__(result, 1))
    {
LABEL_9:
      v14 = sub_182AD3048();

      memcpy(v11, (v14 + 32), v13);

      return v11;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t _nw_parameters_copy_upper_transport_protocol_options_0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if ((v1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
  }

  ProtocolStack.transport.getter(&v96);
  v2 = v97;
  if ((~v97 & 0xF000000000000007) == 0)
  {

    return 0;
  }

  v4 = v96;
  if (v97 >> 61)
  {
    goto LABEL_8;
  }

  v5 = v96 + *(*v96 + 128);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    if ((*v5 & 8) == 0)
    {
LABEL_8:

      goto LABEL_9;
    }

    v9 = sub_181AC9084();
    result = sub_181A54748();
    v10 = v9;
    v11 = (result + 16);
    v81 = v9;
    v12 = result + 40;
    v13 = *(result + 24);
    v14 = *(result + 32);
    v78 = result;
    v15 = v13 + v14;
    v76 = v4;
    v77 = v2;
    if (*(result + 16) >= v13 + v14)
    {
      v35 = *(result + 24);
      if (v15 >= v14)
      {
        if (!__OFSUB__(v15, v14))
        {
          v36 = v10[3];
          v37 = v36 + v35;
          if (!__OFADD__(v36, v35))
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (v10[2] < v37 || (v20 = v10, (isUniquelyReferenced_nonNull_native & 1) == 0))
            {
              sub_181B2C3FC(isUniquelyReferenced_nonNull_native, v37);
              v20 = v81;
            }

            sub_181B64710((v20 + 2), (v20 + 5), v12 + 16 * v14, v35);

LABEL_119:

            v4 = 0;
            v71 = v20[4];
            v72 = v20[3] + v71;
            if (v20[2] < v72)
            {
              v72 = v20[2];
            }

            v84 = v20;
            v87 = v20[4];
            v90 = v72;
            v2 = 0xF000000000000007;
            v73 = 1;
            while (1)
            {
              if (v71 == v90)
              {
                v70 = sub_181AC81FC(v70);
                if ((v70 & 1) == 0)
                {

                  sub_181A53008(v76, v77);

                  if (v73)
                  {
                    return 0;
                  }

LABEL_9:
                  v6 = v2 >> 61;
                  if ((v2 >> 61) <= 2)
                  {
                    if (v6)
                    {
                      if (v6 == 1)
                      {
                        v7 = &unk_1ED40FF50;
                        v8 = &unk_1EA838DE0;
                      }

                      else
                      {
                        v7 = &qword_1ED40F830;
                        v8 = &qword_1EA838AB0;
                      }
                    }

                    else
                    {
                      v7 = &qword_1ED40F850;
                      v8 = &unk_1EA838710;
                    }

LABEL_55:
                    v34 = sub_181AA8428(v7, v8);
                  }

                  else
                  {
                    if (v6 <= 4)
                    {
                      if (v6 == 3)
                      {
                        v7 = qword_1ED40FB50;
                        v8 = &unk_1EA838750;
                      }

                      else
                      {
                        v7 = &unk_1EA838AE0;
                        v8 = &unk_1EA838DD0;
                      }

                      goto LABEL_55;
                    }

                    if (v6 != 5)
                    {
                      return 0;
                    }

                    v34 = v2 & 0x1FFFFFFFFFFFFFFFLL;
                  }

                  ObjectType = swift_getObjectType();
                  v40 = (*(v34 + 336))(ObjectType, v34);
                  sub_181AAD03C(v4, v2);
                  return v40;
                }

                v20 = v84;
                v71 = v87;
              }

              v74 = &v20[2 * v71++];
              v87 = v71;
              if (!(v74[6] >> 62))
              {
                v75 = v74[5];

                v70 = sub_181A53008(v4, v2);
                v73 = 0;
                v2 = 0x4000000000000000;
                v4 = v75;
              }
            }
          }

          goto LABEL_144;
        }

LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }
    }

    else
    {
      v16 = v10[3];
      v17 = v16 + v13;
      v18 = __OFADD__(v16, v13);

      if (!v18)
      {
        v19 = swift_isUniquelyReferenced_nonNull_native();
        if (v10[2] < v17 || (v20 = v10, (v19 & 1) == 0))
        {
          sub_181B2C3FC(v19, v17);
          v20 = v81;
        }

        result = sub_18207F3A0(v20 + 2, (v20 + 5), &v91);
        v21 = v93;
        v22 = v94;
        v23 = v95;
        v24 = v92;
        if ((v95 & 1) != 0 || (v25 = v78[3], v92 >= v25))
        {
          result = sub_1820807B8(v11, v12, v91, v92, v78);
          v44 = result;
          v82 = result;
          v85 = v41;
          v88 = v42;
          if (v43 == v24)
          {
            v45 = v23;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            v31 = v43;
          }

          else
          {
            if (v22 < 1)
            {
              v22 = 0;
            }

            else
            {
              v46 = 0;
              if (v41 != v42)
              {
                goto LABEL_68;
              }

LABEL_66:
              result = sub_181AC81FC(result);
              if (result)
              {
                v44 = v82;
                v41 = v85;
                while (1)
                {
LABEL_68:
                  v47 = v41 + 1;
                  v85 = v41 + 1;
                  if (!v21)
                  {
                    goto LABEL_149;
                  }

                  v48 = *(v44 + 16 * v41 + 40);
                  *(v21 + 16 * v46) = v48;
                  if (v22 - 1 == v46)
                  {
                    break;
                  }

                  ++v46;
                  result = sub_181B2C3E0(v48, *(&v48 + 1));
                  v41 = v47;
                  if (v47 == v88)
                  {
                    goto LABEL_66;
                  }
                }

                result = sub_181B2C3E0(v48, *(&v48 + 1));
              }

              else
              {
                v22 = v46;
              }
            }

            v31 = v24 + v22;
            if (__OFADD__(v24, v22))
            {
              goto LABEL_146;
            }

            v44 = v82;
            v41 = v85;
            v42 = v88;
          }

          v96 = v44;
          v97 = v41;
          v98 = v42;
          goto LABEL_79;
        }

        v26 = 0;
        v27 = 0;
        v28 = v91;
        v29 = v78[4];
        v30 = v29 + v25;
        if (v78[2] < v30)
        {
          v30 = v78[2];
        }

        v96 = v78;
        v97 = v29;
        v98 = v30;
        v31 = v92;
        if (!v92)
        {
          goto LABEL_32;
        }

LABEL_29:
        if (v29 == v98)
        {
          result = sub_181AC81FC(result);
          if ((result & 1) == 0)
          {
            goto LABEL_130;
          }
        }

        while (1)
        {
          v32 = v97;
          v29 = ++v97;
          if (!v28)
          {
            goto LABEL_148;
          }

          v33 = *&v96[2 * v32 + 5];
          *(v28 + 16 * v27) = v33;
          v59 = __OFADD__(v27++, 1);
          if (v59)
          {
            break;
          }

          result = sub_181B2C3E0(v33, *(&v33 + 1));
          if (v27 != v31)
          {
            goto LABEL_29;
          }

LABEL_32:
          if (v26)
          {
            v27 = v31;
            goto LABEL_73;
          }

          if (v22 <= 0)
          {
            goto LABEL_74;
          }

          if (v29 == v98)
          {
            result = sub_181AC81FC(result);
            v27 = 0;
            if ((result & 1) == 0)
            {
LABEL_73:
              v31 = v24 + v27;
              if (__OFADD__(v24, v27))
              {
                goto LABEL_147;
              }

LABEL_74:

LABEL_79:
              v49 = v20[3];
              v59 = __OFADD__(v49, v31);
              v50 = v49 + v31;
              if (v59)
              {
                goto LABEL_145;
              }

              v20[3] = v50;
              v51 = v97;
              v83 = v96;
              v86 = v97;
              v89 = v98;
              if (v97 != v98)
              {
                goto LABEL_83;
              }

LABEL_81:
              result = sub_181AC81FC(result);
              if ((result & 1) == 0)
              {

                goto LABEL_119;
              }

              v51 = v86;
              v50 = v20[3];
LABEL_83:
              v52 = v51 + 1;
              v86 = v51 + 1;
              v53 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
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
                break;
              }

              v54 = v83 + 16 * v51;
              v79 = *(v54 + 40);
              sub_181B2C3E0(*(v54 + 40), *(v54 + 48));
              v20 = v81;
              result = swift_isUniquelyReferenced_nonNull_native();
              if (v81[2] < v53 || (result & 1) == 0)
              {
                result = sub_181B2C3FC(result, v53);
                v20 = v81;
              }

              v55 = v20[3];
              v56 = v20[4];
              v59 = __OFADD__(v56, v55);
              v57 = v56 + v55;
              if (v59)
              {
                goto LABEL_133;
              }

              if (v55 < 0)
              {
                if (v57 < 0)
                {
                  v61 = v20[2];
                  v59 = __OFADD__(v57, v61);
                  v57 += v61;
                  if (v59)
                  {
                    goto LABEL_139;
                  }
                }
              }

              else
              {
                v58 = v20[2];
                v59 = __OFSUB__(v57, v58);
                v60 = v57 - v58;
                if (v60 < 0 == v59)
                {
                  v57 = v60;
                  if (v59)
                  {
                    goto LABEL_137;
                  }
                }
              }

              *&v20[2 * v57 + 5] = v79;
              v59 = __OFADD__(v55, 1);
              v62 = v55 + 1;
              if (v59)
              {
                goto LABEL_134;
              }

              v20[3] = v62;
              result = sub_18207F3A0(v20 + 2, (v20 + 5), &v96);
              v26 = 0;
              v63 = 0;
              v27 = v96;
              v24 = v97;
              v65 = v98;
              v64 = v99;
              v66 = v100 | (v99 < 1);
              v80 = v97;
              if (!v97)
              {
                goto LABEL_100;
              }

LABEL_97:
              if (v52 != v89 || (result = sub_181AC81FC(result), (result & 1) != 0))
              {
                while (1)
                {
                  v67 = v86;
                  v52 = ++v86;
                  if (!v27)
                  {
                    goto LABEL_140;
                  }

                  v68 = *(v83 + 16 * v67 + 40);
                  *(v27 + 16 * v63) = v68;
                  v59 = __OFADD__(v63++, 1);
                  if (v59)
                  {
                    __break(1u);
LABEL_130:
                    if ((v26 & 1) == 0)
                    {

                      v31 = v27;
                      goto LABEL_79;
                    }

                    goto LABEL_73;
                  }

                  result = sub_181B2C3E0(v68, *(&v68 + 1));
                  if (v63 != v24)
                  {
                    goto LABEL_97;
                  }

LABEL_100:
                  if (v26)
                  {
                    break;
                  }

                  if (v66)
                  {
                    goto LABEL_113;
                  }

                  if (v52 == v89)
                  {
                    result = sub_181AC81FC(result);
                    v63 = 0;
                    if ((result & 1) == 0)
                    {
                      goto LABEL_112;
                    }
                  }

                  else
                  {
                    v63 = 0;
                  }

                  v26 = 1;
                  v27 = v65;
                  v24 = v64;
                }

                v63 = v24;
              }

              else
              {
                v24 = v63;
                if ((v26 & 1) == 0)
                {
                  goto LABEL_113;
                }
              }

LABEL_112:
              v24 = v80 + v63;
              if (__OFADD__(v80, v63))
              {
                goto LABEL_136;
              }

LABEL_113:
              v69 = v20[3];
              v59 = __OFADD__(v69, v24);
              v50 = v69 + v24;
              if (v59)
              {
                goto LABEL_135;
              }

              v20[3] = v50;
              v51 = v86;
              if (v86 == v89)
              {
                goto LABEL_81;
              }

              goto LABEL_83;
            }
          }

          else
          {
            v27 = 0;
          }

          v26 = 1;
          v28 = v21;
          v31 = v22;
        }

        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_143;
  }

LABEL_150:
  __break(1u);
  return result;
}

uint64_t _nw_parameters_copy_protocol_options_with_level_0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if ((v5 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
  }

  sub_181F636F0(a2, v10);

  if (!v10[0])
  {
    return 0;
  }

  v6 = v10[1];
  if (a3)
  {
    *a3 = v11 + 1;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 336))(ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t _nw_parameters_copy_protocol_options_for_identifier_object_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if ((v3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *v13 = *(a2 + 16);
  v14 = v4;
  v15 = v5;
  v16 = v6;
  sub_181F49A24(v4, v5, v6);
  v7 = sub_181F63C90(v13);
  v9 = v8;

  sub_181F48350(v14, v15, v16);
  if (v7)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 336))(ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t sub_1821FB89C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage);

  if ((v3 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
  }

  sub_181AAC800(a2, &v13);
  *v10 = v13;
  v11 = v14;
  v12 = v15;
  v4 = sub_181F63C90(v10);
  v6 = v5;

  sub_181F48350(v11, *(&v11 + 1), v12);
  if (!v4)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 336))(ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t objectdestroy_33Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

void sub_1821FB9E8(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v11), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843148);
    v8 = sub_182AD2678();
    v9 = sub_182AD38B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_181A37000, v8, v9, "Cannot mutate parameters", v10, 2u);
      MEMORY[0x1865DF520](v10, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    sub_181B63E5C(v3 + 16);
    swift_endAccess();
  }
}

void _nw_parameters_prohibit_interface_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, v14), , (*&a1[v4] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v11 = sub_182AD2678();
    v12 = sub_182AD38B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_181A37000, v11, v12, "Cannot mutate parameters", v13, 2u);
      MEMORY[0x1865DF520](v13, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(a2 + OBJC_IVAR____TtC7Network13__NWInterface_interface);

    v14[0] = v9;
    sub_181F443B8(v14);

    swift_endAccess();
  }
}

void _nw_parameters_clear_prohibited_interfaces_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 48) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_prohibit_interface_type_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0)
  {
    v7 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v7 + 16), sizeof(__dst));
    type metadata accessor for MutableParametersStorage();
    v8 = swift_allocObject();
    memmove((v8 + 16), (v7 + 16), 0x188uLL);
    *&a1[v4] = v8;
    sub_181F481DC(__dst, &v25);

    v5 = *&a1[v4];
    if (v5 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  swift_beginAccess();
  if (a2 >= 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v5 + 240);
  if (v10 && (v11 = *(v10 + 24)) != 0)
  {
    v24 = *(v10 + 24);
    swift_retain_n();
  }

  else
  {

    v11 = *sub_182AD2388();
    v24 = v11;
    v12 = swift_retain_n();
  }

  v13 = v11[4];
  v14 = v11[3] + v13;
  if (v11[2] < v14)
  {
    v14 = v11[2];
  }

  v25 = v11;
  v26 = v13;
  v27 = v14;
  v15 = v11;
  while (v13 != v27)
  {
LABEL_13:
    v16 = v15 + v13++;
    v26 = v13;
    if (qword_182AFE9F0[v16[40]] == qword_182AFE9F0[v9])
    {

LABEL_25:

      swift_endAccess();

      return;
    }
  }

  v12 = sub_181AC81FC(v12);
  if (v12)
  {
    v15 = v25;
    v13 = v26;
    goto LABEL_13;
  }

  v17 = v11[3];
  v18 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v11[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181EBDCF0(isUniquelyReferenced_nonNull_native, v18, 0);
      v11 = v24;
    }

    sub_181EBDEA0(v11 + 2, (v11 + 5), v9);
    if (!v10)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v10 = swift_allocObject();
      sub_18226B448(v10 + 16);
      *(v5 + 240) = v10;
    }

    *(v10 + 24) = v11;
    goto LABEL_25;
  }

  __break(1u);
LABEL_31:
  swift_once();
LABEL_27:
  v20 = sub_182AD2698();
  __swift_project_value_buffer(v20, qword_1EA843148);
  v21 = sub_182AD2678();
  v22 = sub_182AD38B8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_181A37000, v21, v22, "Cannot mutate parameters", v23, 2u);
    MEMORY[0x1865DF520](v23, -1, -1);
  }
}

void _nw_parameters_clear_prohibited_interface_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 24) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_allowed_interface_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v5 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v5 + 16), 0x188uLL);
    type metadata accessor for MutableParametersStorage();
    v6 = swift_allocObject();
    memmove((v6 + 16), (v5 + 16), 0x188uLL);
    *&a1[v2] = v6;
    sub_181F481DC(__dst, &v33);

    v3 = *&a1[v2];
    if (v3 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
LABEL_44:
        swift_once();
      }

      v28 = sub_182AD2698();
      __swift_project_value_buffer(v28, qword_1EA843148);
      v29 = sub_182AD2678();
      v30 = sub_182AD38B8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_181A37000, v29, v30, "Cannot mutate parameters", v31, 2u);
        MEMORY[0x1865DF520](v31, -1, -1);
      }

      return;
    }
  }

  v32 = v4;
  swift_beginAccess();
  if ((*(v3 + 236) & 0x1000) == 0)
  {
    *(v3 + 236) |= 0x1000u;
  }

  v7 = 0;
  while (2)
  {
    v8 = byte_1EEF96D60[v7 + 32];
    v9 = *(v3 + 240);
    if (!v9 || (v10 = *(v9 + 24)) == 0)
    {
      v10 = *sub_182AD2388();
    }

    v11 = v8;
    ++v7;
    v12 = swift_retain_n();
    v13 = v10[4];
    v14 = v10[3] + v13;
    if (v10[2] < v14)
    {
      v14 = v10[2];
    }

    v33 = v10;
    v34 = v13;
    v35 = v14;
    v15 = v10;
    while (1)
    {
      if (v13 != v35)
      {
        goto LABEL_15;
      }

      v12 = sub_181AC81FC(v12);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v15 = v33;
      v13 = v34;
LABEL_15:
      v16 = v15 + v13++;
      v34 = v13;
      if (qword_182AFE9F0[v16[40]] == qword_182AFE9F0[v8])
      {

        goto LABEL_7;
      }
    }

    v17 = v10[3];
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v10[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181EBDCF0(isUniquelyReferenced_nonNull_native, v18, 0);
    }

    v20 = v10[3];
    v21 = v10[4];
    v24 = __OFADD__(v21, v20);
    v22 = v21 + v20;
    if (v24)
    {
      goto LABEL_40;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v23 = v10[2];
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v25 < 0 != v24)
      {
        goto LABEL_30;
      }

      v22 = v25;
      if (!v24)
      {
        goto LABEL_30;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v22 < 0)
    {
      v26 = v10[2];
      v24 = __OFADD__(v22, v26);
      v22 += v26;
      if (v24)
      {
        goto LABEL_43;
      }
    }

LABEL_30:
    *(v10 + v22 + 40) = v11;
    v24 = __OFADD__(v20, 1);
    v27 = v20 + 1;
    if (v24)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v10[3] = v27;
    if (!v9)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v9 = swift_allocObject();
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 128) = 0u;
      *(v9 + 144) = 0;
      *(v9 + 152) = 1;
      *(v9 + 160) = 0;
      *(v3 + 240) = v9;
    }

    *(v9 + 24) = v10;
LABEL_7:

    if (v7 != 5)
    {
      continue;
    }

    break;
  }

  swift_endAccess();
}

void sub_1821FC804(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v17), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843148);
    v14 = sub_182AD2678();
    v15 = sub_182AD38B8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_181A37000, v14, v15, "Cannot mutate parameters", v16, 2u);
      MEMORY[0x1865DF520](v16, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v11 = *(v7 + 240);
    if (!v11)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v11 = swift_allocObject();
      sub_18226B448(v11 + 16);
      *(v7 + 240) = v11;
    }

    v12 = *(v11 + 120);
    *(v11 + 120) = a2;
    *(v11 + 128) = a3;
    swift_retain_n();

    swift_endAccess();
    sub_181A554F4(v12);
  }
}

void _nw_parameters_prohibit_interface_subtype_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0)
  {
    v7 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v7 + 16), sizeof(__dst));
    type metadata accessor for MutableParametersStorage();
    v8 = swift_allocObject();
    memmove((v8 + 16), (v7 + 16), 0x188uLL);
    *&a1[v4] = v8;
    sub_181F481DC(__dst, &v25);

    v5 = *&a1[v4];
    if (v5 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }
  }

  swift_beginAccess();
  if (a2 <= 4000)
  {
    if (a2 == 1001)
    {
      v9 = 1;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (a2 == 1002)
    {
      v9 = 2;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_12:
    v9 = 0;
    v10 = *(v5 + 240);
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a2 != 4001)
  {
    if (a2 == 5001)
    {
      v9 = 4;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v9 = 3;
  v10 = *(v5 + 240);
  if (!v10)
  {
LABEL_19:

    v11 = *sub_182AD2388();
    v24 = v11;
    v12 = swift_retain_n();
    goto LABEL_20;
  }

LABEL_17:
  v11 = *(v10 + 32);
  if (!v11)
  {
    goto LABEL_19;
  }

  v24 = *(v10 + 32);
  swift_retain_n();

LABEL_20:
  v13 = v11[4];
  v14 = v11[3] + v13;
  if (v11[2] < v14)
  {
    v14 = v11[2];
  }

  v25 = v11;
  v26 = v13;
  v27 = v14;
  v15 = v11;
  while (v13 != v27)
  {
LABEL_23:
    v16 = v15 + v13++;
    v26 = v13;
    if (qword_182AFEA18[v16[40]] == qword_182AFEA18[v9])
    {

LABEL_35:

      swift_endAccess();

      return;
    }
  }

  v12 = sub_181AC81FC(v12);
  if (v12)
  {
    v15 = v25;
    v13 = v26;
    goto LABEL_23;
  }

  v17 = v11[3];
  v18 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v11[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181F4601C(isUniquelyReferenced_nonNull_native, v18, 0);
      v11 = v24;
    }

    sub_181EBDEA0(v11 + 2, (v11 + 5), v9);
    if (!v10)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v10 = swift_allocObject();
      sub_18226B448(v10 + 16);
      *(v5 + 240) = v10;
    }

    *(v10 + 32) = v11;
    goto LABEL_35;
  }

  __break(1u);
LABEL_41:
  swift_once();
LABEL_37:
  v20 = sub_182AD2698();
  __swift_project_value_buffer(v20, qword_1EA843148);
  v21 = sub_182AD2678();
  v22 = sub_182AD38B8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_181A37000, v21, v22, "Cannot mutate parameters", v23, 2u);
    MEMORY[0x1865DF520](v23, -1, -1);
  }
}

void _nw_parameters_clear_prohibited_interface_subtypes_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 32) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_allowed_interface_subtypes_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0)
  {
    v5 = v3 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v5 + 16), 0x188uLL);
    type metadata accessor for MutableParametersStorage();
    v6 = swift_allocObject();
    memmove((v6 + 16), (v5 + 16), 0x188uLL);
    *&a1[v2] = v6;
    sub_181F481DC(__dst, &v33);

    v3 = *&a1[v2];
    if (v3 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
LABEL_44:
        swift_once();
      }

      v28 = sub_182AD2698();
      __swift_project_value_buffer(v28, qword_1EA843148);
      v29 = sub_182AD2678();
      v30 = sub_182AD38B8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_181A37000, v29, v30, "Cannot mutate parameters", v31, 2u);
        MEMORY[0x1865DF520](v31, -1, -1);
      }

      return;
    }
  }

  v32 = v4;
  swift_beginAccess();
  if ((*(v3 + 236) & 0x2000) == 0)
  {
    *(v3 + 236) |= 0x2000u;
  }

  v7 = 0;
  while (2)
  {
    v8 = byte_1EEF96DB0[v7 + 32];
    v9 = *(v3 + 240);
    if (!v9 || (v10 = *(v9 + 32)) == 0)
    {
      v10 = *sub_182AD2388();
    }

    v11 = v8;
    ++v7;
    v12 = swift_retain_n();
    v13 = v10[4];
    v14 = v10[3] + v13;
    if (v10[2] < v14)
    {
      v14 = v10[2];
    }

    v33 = v10;
    v34 = v13;
    v35 = v14;
    v15 = v10;
    while (1)
    {
      if (v13 != v35)
      {
        goto LABEL_15;
      }

      v12 = sub_181AC81FC(v12);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v15 = v33;
      v13 = v34;
LABEL_15:
      v16 = v15 + v13++;
      v34 = v13;
      if (qword_182AFEA18[v16[40]] == qword_182AFEA18[v8])
      {

        goto LABEL_7;
      }
    }

    v17 = v10[3];
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v10[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181F4601C(isUniquelyReferenced_nonNull_native, v18, 0);
    }

    v20 = v10[3];
    v21 = v10[4];
    v24 = __OFADD__(v21, v20);
    v22 = v21 + v20;
    if (v24)
    {
      goto LABEL_40;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v23 = v10[2];
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v25 < 0 != v24)
      {
        goto LABEL_30;
      }

      v22 = v25;
      if (!v24)
      {
        goto LABEL_30;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v22 < 0)
    {
      v26 = v10[2];
      v24 = __OFADD__(v22, v26);
      v22 += v26;
      if (v24)
      {
        goto LABEL_43;
      }
    }

LABEL_30:
    *(v10 + v22 + 40) = v11;
    v24 = __OFADD__(v20, 1);
    v27 = v20 + 1;
    if (v24)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v10[3] = v27;
    if (!v9)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v9 = swift_allocObject();
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 128) = 0u;
      *(v9 + 144) = 0;
      *(v9 + 152) = 1;
      *(v9 + 160) = 0;
      *(v3 + 240) = v9;
    }

    *(v9 + 32) = v10;
LABEL_7:

    if (v7 != 5)
    {
      continue;
    }

    break;
  }

  swift_endAccess();
}

void sub_1821FD2FC(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v15), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a3(v7 + 16, a2);
    swift_endAccess();
  }
}

void _nw_parameters_prefer_interface_subtype_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0)
  {
    v7 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    memcpy(__dst, (v7 + 16), sizeof(__dst));
    type metadata accessor for MutableParametersStorage();
    v8 = swift_allocObject();
    memmove((v8 + 16), (v7 + 16), 0x188uLL);
    *&a1[v4] = v8;
    sub_181F481DC(__dst, &v25);

    v5 = *&a1[v4];
    if (v5 < 0)
    {
      sub_18220E960();
      swift_willThrowTypedImpl();

      if (qword_1EA836648 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }
  }

  swift_beginAccess();
  if (a2 <= 4000)
  {
    if (a2 == 1001)
    {
      v9 = 1;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (a2 == 1002)
    {
      v9 = 2;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_12:
    v9 = 0;
    v10 = *(v5 + 240);
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (a2 != 4001)
  {
    if (a2 == 5001)
    {
      v9 = 4;
      v10 = *(v5 + 240);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v9 = 3;
  v10 = *(v5 + 240);
  if (!v10)
  {
LABEL_19:

    v11 = *sub_182AD2388();
    v24 = v11;
    v12 = swift_retain_n();
    goto LABEL_20;
  }

LABEL_17:
  v11 = *(v10 + 40);
  if (!v11)
  {
    goto LABEL_19;
  }

  v24 = *(v10 + 40);
  swift_retain_n();

LABEL_20:
  v13 = v11[4];
  v14 = v11[3] + v13;
  if (v11[2] < v14)
  {
    v14 = v11[2];
  }

  v25 = v11;
  v26 = v13;
  v27 = v14;
  v15 = v11;
  while (v13 != v27)
  {
LABEL_23:
    v16 = v15 + v13++;
    v26 = v13;
    if (qword_182AFEA18[v16[40]] == qword_182AFEA18[v9])
    {

LABEL_35:

      swift_endAccess();

      return;
    }
  }

  v12 = sub_181AC81FC(v12);
  if (v12)
  {
    v15 = v25;
    v13 = v26;
    goto LABEL_23;
  }

  v17 = v11[3];
  v18 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v11[2] < v18 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181F4601C(isUniquelyReferenced_nonNull_native, v18, 0);
      v11 = v24;
    }

    sub_181EBDEA0(v11 + 2, (v11 + 5), v9);
    if (!v10)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v10 = swift_allocObject();
      sub_18226B448(v10 + 16);
      *(v5 + 240) = v10;
    }

    *(v10 + 40) = v11;
    goto LABEL_35;
  }

  __break(1u);
LABEL_41:
  swift_once();
LABEL_37:
  v20 = sub_182AD2698();
  __swift_project_value_buffer(v20, qword_1EA843148);
  v21 = sub_182AD2678();
  v22 = sub_182AD38B8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_181A37000, v21, v22, "Cannot mutate parameters", v23, 2u);
    MEMORY[0x1865DF520](v23, -1, -1);
  }
}

void _nw_parameters_clear_preferred_interface_subtypes_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 40) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_set_prohibit_expensive_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 230);
    if (a2)
    {
      if ((*(v5 + 230) & 1) == 0)
      {
        *(v5 + 230) = v9 | 1;
      }
    }

    else if (*(v5 + 230))
    {
      *(v5 + 230) = v9 & 0xFE;
    }
  }
}

void _nw_parameters_set_prohibit_constrained_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 230);
    if (a2)
    {
      if ((*(v5 + 230) & 2) == 0)
      {
        *(v5 + 230) = v9 | 2;
      }
    }

    else if ((*(v5 + 230) & 2) != 0)
    {
      *(v5 + 230) = v9 & 0xFD;
    }
  }
}

void _nw_parameters_set_reuse_local_address_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x20) == 0)
      {
        *(v5 + 136) = v9 | 0x20;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFDF;
    }
  }
}

void _nw_parameters_set_use_long_outstanding_queries_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 4) == 0)
      {
        *(v5 + 136) = v9 | 4;
      }
    }

    else if ((v9 & 4) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFFB;
    }
  }
}

void _nw_parameters_set_ignore_resolver_stats_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 8) == 0)
      {
        *(v5 + 136) = v9 | 8;
      }
    }

    else if ((v9 & 8) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFF7;
    }
  }
}

void _nw_parameters_set_local_endpoint_0(char *a1, void *a2)
{
  v4 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v8 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v9 = a1;
  if ((v8 & 0x8000000000000000) == 0 || (v10 = v8 & 0x7FFFFFFFFFFFFFFFLL, memcpy(v21, (v10 + 16), sizeof(v21)), type metadata accessor for MutableParametersStorage(), v11 = swift_allocObject(), memmove((v11 + 16), (v10 + 16), 0x188uLL), *&a1[v7] = v11, sub_181F481DC(v21, v20), , v8 = *&a1[v7], (v8 & 0x8000000000000000) == 0))
  {
    swift_beginAccess();
    if (a2)
    {
      v12 = OBJC_IVAR____TtC7Network8Endpoint_type;
      v13 = a2;
      swift_beginAccess();
      sub_181ACC828(a2 + v12, v6, type metadata accessor for Endpoint.EndpointType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

      if (!EnumCaseMultiPayload)
      {
        sub_181AB7264(v6, type metadata accessor for Endpoint.EndpointType);

        *(v8 + 312) = a2;
        goto LABEL_9;
      }

      sub_181AB7264(v6, type metadata accessor for Endpoint.EndpointType);
    }

    else
    {
      v15 = *(v8 + 312);
    }

    *(v8 + 312) = 0;
LABEL_9:
    swift_endAccess();

    return;
  }

  sub_18220E960();
  swift_willThrowTypedImpl();

  if (qword_1EA836648 != -1)
  {
    swift_once();
  }

  v16 = sub_182AD2698();
  __swift_project_value_buffer(v16, qword_1EA843148);
  v17 = sub_182AD2678();
  v18 = sub_182AD38B8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_181A37000, v17, v18, "Cannot mutate parameters", v19, 2u);
    MEMORY[0x1865DF520](v19, -1, -1);
  }
}

void _nw_parameters_set_fast_open_enabled_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 2) == 0)
      {
        *(v5 + 136) = v9 | 2;
      }
    }

    else if ((v9 & 2) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFFD;
    }
  }
}

void _nw_parameters_set_service_class_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 >= 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    *(v5 + 131) = v9;
  }
}

void _nw_parameters_set_multipath_service_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v17), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v14 = sub_182AD2698();
    __swift_project_value_buffer(v14, qword_1EA843148);
    v6 = sub_182AD2678();
    v15 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_181A37000, v6, v15, "Cannot mutate parameters", v16, 2u);
      MEMORY[0x1865DF520](v16, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 == 101)
    {
      v9 = 5;
    }

    else
    {
      v9 = 0;
    }

    if (a2 == 100)
    {
      v10 = 4;
    }

    else
    {
      v10 = v9;
    }

    if (a2 == 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = v10;
    }

    if (a2 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    if (a2 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (a2 <= 2)
    {
      v11 = v13;
    }

    *(v5 + 234) = v11;
  }
}

void _nw_parameters_set_local_only_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x100) == 0)
      {
        *(v5 + 136) = v9 | 0x100;
      }
    }

    else if ((v9 & 0x100) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFEFF;
    }
  }
}

void _nw_parameters_set_prefer_no_proxy_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 4) == 0)
      {
        *(v5 + 235) = v9 | 4;
      }
    }

    else if ((*(v5 + 235) & 4) != 0)
    {
      *(v5 + 235) = v9 & 0xFB;
    }
  }
}

void _nw_parameters_set_expired_dns_behavior_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 >= 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    *(v5 + 132) = v9;
  }
}

void _nw_parameters_set_requires_dnssec_validation_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x100000) == 0)
      {
        *(v5 + 136) = v9 | 0x100000;
      }
    }

    else if ((v9 & 0x100000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFEFFFFF;
    }
  }
}

void sub_1821FF1F4(char *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v16), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v12 = sub_182AD2698();
    __swift_project_value_buffer(v12, qword_1EA843148);
    v13 = sub_182AD2678();
    v14 = sub_182AD38B8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_181A37000, v13, v14, "Cannot mutate parameters", v15, 2u);
      MEMORY[0x1865DF520](v15, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    v9 = swift_unknownObjectRetain();
    nw_context_activate(v9);
    v10 = nw_context_copy_cache_context(a2);
    type metadata accessor for NetworkContext();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v5 + 296) = v11;
    swift_endAccess();

    swift_unknownObjectRelease();
  }
}

void _nw_parameters_set_data_mode_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v14), , (*&a1[v4] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v11 = sub_182AD2678();
    v12 = sub_182AD38B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_181A37000, v11, v12, "Cannot mutate parameters", v13, 2u);
      MEMORY[0x1865DF520](v13, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 >= 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2;
    }

    sub_181C2D380(v9);
    swift_endAccess();
  }
}

void _nw_parameters_set_account_id_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      v9 = sub_182AD3158();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v5 + 248) = v9;
    *(v5 + 256) = v10;
    swift_endAccess();
  }
}

void _nw_parameters_set_effective_bundle_id_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      v9 = sub_182AD3158();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v5 + 320) = v9;
    *(v5 + 328) = v10;
    swift_endAccess();
  }
}

void _nw_parameters_set_attributed_bundle_identifier_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      v9 = sub_182AD3158();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v5 + 280) = v9;
    *(v5 + 288) = v10;
    swift_endAccess();
  }
}

void _nw_parameters_set_attribution_context_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      v9 = sub_182AD3158();
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v5 + 264) = v9;
    *(v5 + 272) = v10;
    swift_endAccess();
  }
}

void sub_1821FFD50(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v14), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v8 = sub_182AD2678();
    v12 = sub_182AD38B8();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_181A37000, v8, v12, "Cannot mutate parameters", v13, 2u);
      MEMORY[0x1865DF520](v13, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    a3(v7 + 16, a2);
  }
}

void _nw_parameters_set_allow_ultra_constrained_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 1) == 0)
      {
        *(v5 + 231) = v9 | 1;
      }
    }

    else if (*(v5 + 231))
    {
      *(v5 + 231) = v9 & 0xFE;
    }
  }
}

void _nw_parameters_set_prohibit_roaming_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 2) == 0)
      {
        *(v5 + 231) = v9 | 2;
      }
    }

    else if ((*(v5 + 231) & 2) != 0)
    {
      *(v5 + 231) = v9 & 0xFD;
    }
  }
}

void sub_182200280(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 2) == 0)
      {
        *(v5 + 236) = v9 | 2;
      }
    }

    else if ((v9 & 2) != 0)
    {
      *(v5 + 236) = v9 & 0xFFFD;
    }
  }
}

void _nw_parameters_set_use_p2p_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 4) == 0)
      {
        *(v5 + 236) = v9 | 4;
      }
    }

    else if ((v9 & 4) != 0)
    {
      *(v5 + 236) = v9 & 0xFFFB;
    }
  }
}

void _nw_parameters_set_resolve_ptr_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x10) == 0)
      {
        *(v5 + 136) = v9 | 0x10;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFFEF;
    }
  }
}

void _nw_parameters_set_indefinite_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if ((v5 & 0x8000000000000000) == 0 || (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], (v5 & 0x8000000000000000) == 0))
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 2) != 0)
      {
        goto LABEL_9;
      }

      v9 |= 2u;
    }

    else
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_9;
      }

      v9 &= ~2u;
    }

    *(v5 + 140) = v9;
LABEL_9:
    if ((v9 & 4) == 0)
    {
      *(v5 + 140) = v9 | 4;
    }

    goto LABEL_11;
  }

  sub_18220E960();
  swift_willThrowTypedImpl();

  if (qword_1EA836648 != -1)
  {
    swift_once();
  }

  v10 = sub_182AD2698();
  __swift_project_value_buffer(v10, qword_1EA843148);
  v6 = sub_182AD2678();
  v11 = sub_182AD38B8();
  if (os_log_type_enabled(v6, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
    MEMORY[0x1865DF520](v12, -1, -1);
  }

LABEL_11:
}

void _nw_parameters_set_no_proxy_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 1) == 0)
      {
        *(v5 + 235) = v9 | 1;
      }
    }

    else if (*(v5 + 235))
    {
      *(v5 + 235) = v9 & 0xFE;
    }
  }
}

void _nw_parameters_set_no_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 8) == 0)
      {
        *(v5 + 236) = v9 | 8;
      }
    }

    else if ((v9 & 8) != 0)
    {
      *(v5 + 236) = v9 & 0xFFF7;
    }
  }
}

void _nw_parameters_set_no_wake_from_sleep_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 2) == 0)
      {
        *(v5 + 235) = v9 | 2;
      }
    }

    else if ((*(v5 + 235) & 2) != 0)
    {
      *(v5 + 235) = v9 & 0xFD;
    }
  }
}

void _nw_parameters_set_sleep_keepalive_interval_0(char *a1, unsigned int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 120) = a2;
    *(v5 + 128) = 0;
  }
}

void _nw_parameters_set_traffic_class_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 220) = a2;
  }
}

void _nw_parameters_set_multipath_force_enable_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x10000) == 0)
      {
        *(v5 + 136) = v9 | 0x10000;
      }
    }

    else if ((v9 & 0x10000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFEFFFF;
    }
  }
}

void _nw_parameters_set_is_known_tracker_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 0x40) == 0)
      {
        *(v5 + 236) = v9 | 0x40;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      *(v5 + 236) = v9 & 0xFFBF;
    }
  }
}

void _nw_parameters_set_block_trackers_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x1000) == 0)
      {
        *(v5 + 140) = v9 | 0x1000;
      }
    }

    else if ((v9 & 0x1000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFEFFF;
    }
  }
}

void _nw_parameters_set_server_mode_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x200) == 0)
      {
        *(v5 + 136) = v9 | 0x200;
      }

      *(v5 + 226) = 0;
      if ((*(v5 + 140) & 6) != 4)
      {
        *(v5 + 140) = ~*(v5 + 140) & 4 | *(v5 + 140) & 0xFFFFFFFD;
      }
    }

    else if ((v9 & 0x200) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFFDFF;
    }
  }
}

void sub_182201938(char *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v15), , (*&a1[v6] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a3(a2);
    swift_endAccess();
  }
}

void sub_182201B04(char *a1, char a2, void (*a3)(void))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v15), , (*&a1[v6] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a3(a2 & 1);
    swift_endAccess();
  }
}

void _nw_parameters_set_fail_if_svcb_received_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x200000) == 0)
      {
        *(v5 + 136) = v9 | 0x200000;
      }
    }

    else if ((v9 & 0x200000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFDFFFFF;
    }
  }
}

void _nw_parameters_set_include_ble_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x2000) == 0)
      {
        *(v5 + 140) = v9 | 0x2000;
      }
    }

    else if ((v9 & 0x2000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFDFFF;
    }
  }
}

void _nw_parameters_set_include_screen_off_devices_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x4000) == 0)
      {
        *(v5 + 140) = v9 | 0x4000;
      }
    }

    else if ((v9 & 0x4000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFBFFF;
    }
  }
}

void _nw_parameters_set_allow_internet_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x8000) == 0)
      {
        *(v5 + 140) = v9 | 0x8000;
      }
    }

    else if ((v9 & 0x8000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFF7FFF;
    }
  }
}

void _nw_parameters_set_is_probe_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 8) == 0)
      {
        *(v5 + 140) = v9 | 8;
      }
    }

    else if ((v9 & 8) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFFF7;
    }
  }
}

void _nw_parameters_set_allow_unusable_addresses_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x800) == 0)
      {
        *(v5 + 136) = v9 | 0x800;
      }
    }

    else if ((v9 & 0x800) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFF7FF;
    }
  }
}

void _nw_parameters_set_no_proxy_path_selection_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 8) == 0)
      {
        *(v5 + 235) = v9 | 8;
      }
    }

    else if ((*(v5 + 235) & 8) != 0)
    {
      *(v5 + 235) = v9 & 0xF7;
    }
  }
}

void _nw_parameters_set_privacy_proxy_fail_closed_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 230);
    if (a2)
    {
      if ((*(v5 + 230) & 8) == 0)
      {
        *(v5 + 230) = v9 | 8;
      }
    }

    else if ((*(v5 + 230) & 8) != 0)
    {
      *(v5 + 230) = v9 & 0xF7;
    }
  }
}

void _nw_parameters_set_privacy_proxy_strict_fail_closed_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 230);
    if (a2)
    {
      if ((*(v5 + 230) & 0x20) == 0)
      {
        *(v5 + 230) = v9 | 0x20;
      }
    }

    else if ((*(v5 + 230) & 0x20) != 0)
    {
      *(v5 + 230) = v9 & 0xDF;
    }
  }
}

void _nw_parameters_set_privacy_proxy_fail_closed_for_unreachable_hosts_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 0x10) == 0)
      {
        *(v5 + 235) = v9 | 0x10;
      }
    }

    else if ((*(v5 + 235) & 0x10) != 0)
    {
      *(v5 + 235) = v9 & 0xEF;
    }
  }
}

void _nw_parameters_set_prohibit_privacy_proxy_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 8) == 0)
      {
        *(v5 + 231) = v9 | 8;
      }
    }

    else if ((*(v5 + 231) & 8) != 0)
    {
      *(v5 + 231) = v9 & 0xF7;
    }
  }
}

void _nw_parameters_set_use_aop2_offload_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 0x10) == 0)
      {
        *(v5 + 231) = v9 | 0x10;
      }
    }

    else if ((*(v5 + 231) & 0x10) != 0)
    {
      *(v5 + 231) = v9 & 0xEF;
    }
  }
}

void _nw_parameters_set_require_companion_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 0x20) == 0)
      {
        *(v5 + 231) = v9 | 0x20;
      }
    }

    else if ((*(v5 + 231) & 0x20) != 0)
    {
      *(v5 + 231) = v9 & 0xDF;
    }
  }
}

void _nw_parameters_set_is_third_party_web_content_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 0x80) == 0)
      {
        *(v5 + 236) = v9 | 0x80;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      *(v5 + 236) = v9 & 0xFF7F;
    }
  }
}

void _nw_parameters_set_is_approved_app_domain_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((*(v5 + 236) & 0x100) == 0)
      {
        *(v5 + 236) = v9 | 0x100;
      }
    }

    else if ((*(v5 + 236) & 0x100) != 0)
    {
      *(v5 + 236) = v9 & 0xFEFF;
    }
  }
}

void _nw_parameters_set_should_trust_invalid_certificates_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x2000000) == 0)
      {
        *(v5 + 136) = v9 | 0x2000000;
      }
    }

    else if ((v9 & 0x2000000) != 0)
    {
      *(v5 + 136) = v9 & 0xFDFFFFFF;
    }
  }
}

void _nw_parameters_set_delegated_unique_pid_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 200) = a2;
    *(v5 + 208) = 0;
  }
}

void _nw_parameters_set_pid_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 212) = a2;
  }
}

void _nw_parameters_set_uid_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 216) = a2;
  }
}

void _nw_parameters_clear_custom_proxy_configs_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 376);
    if (!v7)
    {
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v7 = swift_allocObject();
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v3 + 376) = v7;
    }

    *(v7 + 24) = 0;

    swift_endAccess();
  }
}

void sub_182203F9C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v11 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v12 = a1;
  if (v11 < 0 && (v13 = v11 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v13 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v14 = swift_allocObject(), memmove((v14 + 16), (v13 + 16), 0x188uLL), *&a1[v10] = v14, sub_181F481DC(__dst, &v18), , v11 = *&a1[v10], v11 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843148);
    v12 = sub_182AD2678();
    v16 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_181A37000, v12, v16, "Cannot mutate parameters", v17, 2u);
      MEMORY[0x1865DF520](v17, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v11 + 52) = a2;
    *(v11 + 60) = a3;
    *(v11 + 68) = a4;
    *(v11 + 76) = a5;
    *(v11 + 84) = 0;
  }
}

void _nw_parameters_set_web_search_content_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((*(v5 + 236) & 0x400) == 0)
      {
        *(v5 + 236) = v9 | 0x400;
      }
    }

    else if ((*(v5 + 236) & 0x400) != 0)
    {
      *(v5 + 236) = v9 & 0xFBFF;
    }
  }
}

void _nw_parameters_set_https_proxy_is_opaque_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x100) == 0)
      {
        *(v5 + 140) = v9 | 0x100;
      }
    }

    else if ((v9 & 0x100) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFEFF;
    }
  }
}

void _nw_parameters_set_https_proxy_over_tls_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x1000) == 0)
      {
        *(v5 + 136) = v9 | 0x1000;
      }
    }

    else if ((v9 & 0x1000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFEFFF;
    }
  }
}

void _nw_parameters_set_attach_protocol_listener_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x2000) == 0)
      {
        *(v5 + 136) = v9 | 0x2000;
      }
    }

    else if ((v9 & 0x2000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFDFFF;
    }
  }
}

void _nw_parameters_set_prohibit_joining_protocols_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x4000) == 0)
      {
        *(v5 + 136) = v9 | 0x4000;
      }
    }

    else if ((v9 & 0x4000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFFBFFF;
    }
  }
}

void _nw_parameters_set_allow_joining_connected_fd_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x8000) == 0)
      {
        *(v5 + 136) = v9 | 0x8000;
      }
    }

    else if ((v9 & 0x8000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFF7FFF;
    }
  }
}

void _nw_parameters_set_allow_duplicate_state_updates_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x200) == 0)
      {
        *(v5 + 140) = v9 | 0x200;
      }
    }

    else if ((v9 & 0x200) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFDFF;
    }
  }
}

void _nw_parameters_set_always_open_listener_socket_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x20000) == 0)
      {
        *(v5 + 136) = v9 | 0x20000;
      }
    }

    else if ((v9 & 0x20000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFFDFFFF;
    }
  }
}

void _nw_parameters_set_disable_listener_datapath_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x80000) == 0)
      {
        *(v5 + 136) = v9 | 0x80000;
      }
    }

    else if ((v9 & 0x80000) != 0)
    {
      *(v5 + 136) = v9 & 0xFFF7FFFF;
    }
  }
}

void _nw_parameters_set_skip_stack_trace_capture_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x10000) == 0)
      {
        *(v5 + 140) = v9 | 0x10000;
      }
    }

    else if ((v9 & 0x10000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFEFFFF;
    }
  }
}

void _nw_parameters_set_should_skip_probe_sampling_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x400000) == 0)
      {
        *(v5 + 140) = v9 | 0x400000;
      }
    }

    else if ((v9 & 0x400000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFBFFFFF;
    }
  }
}

void _nw_parameters_set_use_enhanced_privacy_mode_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((*(v5 + 236) & 0x200) == 0)
      {
        *(v5 + 236) = v9 | 0x200;
      }
    }

    else if ((*(v5 + 236) & 0x200) != 0)
    {
      *(v5 + 236) = v9 & 0xFDFF;
    }
  }
}

void _nw_parameters_set_inherited_from_silent_context_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 0x1000000) == 0)
      {
        *(v5 + 136) = v9 | 0x1000000;
      }
    }

    else if ((v9 & 0x1000000) != 0)
    {
      *(v5 + 136) = v9 & 0xFEFFFFFF;
    }
  }
}

void sub_182205820(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (a2)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v5 + 400) = a2;
    }

    else
    {
      swift_unknownObjectRelease();
      *(v5 + 400) = 0;
    }

    swift_endAccess();
  }
}

void _nw_parameters_set_encode_custom_options_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x100000) == 0)
      {
        *(v5 + 140) = v9 | 0x100000;
      }
    }

    else if ((v9 & 0x100000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFEFFFFF;
    }
  }
}

void sub_182205BD0(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v15), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a3(v7 + 16, a2);
    swift_endAccess();
  }
}

void _nw_parameters_set_expected_workload_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 88) = a2;
    *(v5 + 96) = 0;
  }
}

void _nw_parameters_set_proc_uuid_0(char *a1, const unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) != 1)
    {
      *(v5 + 144) = *a2;
    }

    swift_endAccess();
  }
}

void _nw_parameters_set_e_proc_uuid_0(char *a1, const unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) != 1)
    {
      *(v5 + 160) = *a2;
    }

    swift_endAccess();
  }
}

void _nw_parameters_set_parent_id_inner_0(char *a1, uint64_t a2, char a3)
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, v22), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v15 = sub_182AD2698();
    __swift_project_value_buffer(v15, qword_1EA843148);
    v16 = sub_182AD2678();
    v17 = sub_182AD38B8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_181A37000, v16, v17, "Cannot mutate parameters", v18, 2u);
      MEMORY[0x1865DF520](v18, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) == 1 || (v12 = *a2, v11 = *(a2 + 8), *(v7 + 16) = v12, *(v7 + 24) = v11, *(v7 + 32) = 0, (a3 & 1) == 0) || (v13 = *(v7 + 304)) == 0 || *(v13 + 48) < 2uLL)
    {
LABEL_20:
      swift_endAccess();

      return;
    }

    if (*(v13 + 64))
    {
      v14 = *(v13 + 64);
    }

    else
    {
      v14 = *sub_182AD2388();
    }

    v22[0] = v14;
    v19 = *(v14 + 24);
    v20 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (*(v14 + 16) < v20 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B8477C(isUniquelyReferenced_nonNull_native, v20);
        v14 = v22[0];
      }

      sub_181B855B4((v14 + 16), v14 + 40, v12, v11);
      sub_181F48984(v14);

      goto LABEL_20;
    }

    __break(1u);
  }
}

void _nw_parameters_set_listener_uuid_0(char *a1, const unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) != 1)
    {
      *(v5 + 33) = *a2;
      *(v5 + 49) = 0;
    }

    swift_endAccess();
  }
}

void _nw_parameters_clear_prohibited_netagent_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 56) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_required_netagent_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 72) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_preferred_netagent_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 88) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_avoided_netagent_types_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 104) = 0;

    swift_endAccess();
  }
}

void sub_182206ED8(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v9 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v10 = a1;
  if (v9 < 0 && (v11 = v9 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v11 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v12 = swift_allocObject(), memmove((v12 + 16), (v11 + 16), 0x188uLL), *&a1[v8] = v12, sub_181F481DC(__dst, &v17), , v9 = *&a1[v8], v9 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v13 = sub_182AD2698();
    __swift_project_value_buffer(v13, qword_1EA843148);
    v14 = sub_182AD2678();
    v15 = sub_182AD38B8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_181A37000, v14, v15, "Cannot mutate parameters", v16, 2u);
      MEMORY[0x1865DF520](v16, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    a4(v9 + 16, a2, a3);
    swift_endAccess();
  }
}

void _nw_parameters_clear_prohibited_netagent_uuids_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 64) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_required_netagent_uuids_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 80) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_preferred_netagent_uuids_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 96) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_clear_avoided_netagent_uuids_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 240);
    if (!v7)
    {
      type metadata accessor for PathParameters.InterfacePreferenceValues.InterfacePreferenceValuesBacking();
      v7 = swift_allocObject();
      sub_18226B448(v7 + 16);
      *(v3 + 240) = v7;
    }

    *(v7 + 112) = 0;

    swift_endAccess();
  }
}

void sub_182207854(char *a1, const unsigned __int8 *a2, void (*a3)(_OWORD *))
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, v15), , (*&a1[v6] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    if (uuid_is_null(a2) != 1)
    {
      v15[0] = *a2;
      a3(v15);
    }

    swift_endAccess();
  }
}

void _nw_parameters_clear_transforms_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v11), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843148);
    v8 = sub_182AD2678();
    v9 = sub_182AD38B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_181A37000, v8, v9, "Cannot mutate parameters", v10, 2u);
      MEMORY[0x1865DF520](v10, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v3 + 368) = 0;
  }
}

void _nw_parameters_add_transform_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if ((v5 & 0x8000000000000000) == 0 || (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), 0x188uLL), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, v19), , v5 = *&a1[v4], (v5 & 0x8000000000000000) == 0))
  {
    swift_beginAccess();

    swift_beginAccess();
    v9 = *(a2 + 32);
    __dst[0] = *(a2 + 16);
    __dst[1] = v9;
    __dst[2] = *(a2 + 48);
    LOWORD(__dst[3]) = *(a2 + 64);

    sub_181B29D44(__dst, v19);

    v10 = *(v5 + 368);
    if (!v10)
    {
      *(v5 + 368) = *sub_182AD2388();
    }

    v11 = *(v10 + 24);
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v5 + 368);
      if (*(v14 + 16) < v12 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_181B29AC4(isUniquelyReferenced_nonNull_native, v12);
        v14 = *(v5 + 368);
      }

      sub_181B29C9C((v14 + 16), v14 + 40, __dst);
      sub_181B29DA0(__dst);
      swift_endAccess();

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  sub_18220E960();
  swift_willThrowTypedImpl();

  if (qword_1EA836648 != -1)
  {
LABEL_15:
    swift_once();
  }

  v15 = sub_182AD2698();
  __swift_project_value_buffer(v15, qword_1EA843148);
  v16 = sub_182AD2678();
  v17 = sub_182AD38B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_181A37000, v16, v17, "Cannot mutate parameters", v18, 2u);
    MEMORY[0x1865DF520](v18, -1, -1);
  }
}

void _nw_parameters_clear_proxy_options_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v8 = sub_182AD2698();
    __swift_project_value_buffer(v8, qword_1EA843148);
    v9 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v9, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 376);
    if (!v7)
    {
      type metadata accessor for Parameters.ProxyValues.ProxyValuesBacking();
      v7 = swift_allocObject();
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v3 + 376) = v7;
    }

    *(v7 + 16) = 0;

    swift_endAccess();
  }
}

void _nw_parameters_add_proxy_options_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v15), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v12 = sub_182AD2678();
    v13 = sub_182AD38B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_181A37000, v12, v13, "Cannot mutate parameters", v14, 2u);
      MEMORY[0x1865DF520](v14, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    v9 = sub_181AA847C(a2);
    sub_181B424E8(v9, v10, v5 + 16);
    swift_unknownObjectRelease();
    swift_endAccess();
  }
}

void _nw_parameters_set_companion_preference_0(char *a1, int a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = 2 * (a2 == 2);
    if (a2 == 1)
    {
      v9 = 1;
    }

    *(v5 + 226) = v9;
  }
}

void _nw_parameters_set_internal_attribution_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    if (a2 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * (a2 == 2);
    }

    *(v5 + 232) = v9;
  }
}

void _nw_parameters_set_dry_run_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 136);
    if (a2)
    {
      if ((v9 & 1) == 0)
      {
        *(v5 + 136) = v9 | 1;
      }
    }

    else if (v9)
    {
      *(v5 + 136) = v9 & 0xFFFFFFFE;
    }
  }
}

void _nw_parameters_set_no_opaque_proxy_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 1) == 0)
      {
        *(v5 + 140) = v9 | 1;
      }
    }

    else if (v9)
    {
      *(v5 + 140) = v9 & 0xFFFFFFFE;
    }
  }
}

void _nw_parameters_set_no_cellular_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 0x10) == 0)
      {
        *(v5 + 236) = v9 | 0x10;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      *(v5 + 236) = v9 & 0xFFEF;
    }
  }
}

void _nw_parameters_set_is_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x40) == 0)
      {
        *(v5 + 140) = v9 | 0x40;
      }
    }

    else if ((v9 & 0x40) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFFBF;
    }
  }
}

void _nw_parameters_set_no_fullstack_fallback_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x80) == 0)
      {
        *(v5 + 140) = v9 | 0x80;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFF7F;
    }
  }
}

void _nw_parameters_set_fallback_applied_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((v9 & 0x20) == 0)
      {
        *(v5 + 236) = v9 | 0x20;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      *(v5 + 236) = v9 & 0xFFDF;
    }
  }
}

void _nw_parameters_set_fallback_mode_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v6 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v5 + 233) = a2;
  }
}

void _nw_parameters_set_proxy_applied_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 0x20) == 0)
      {
        *(v5 + 235) = v9 | 0x20;
      }
    }

    else if ((*(v5 + 235) & 0x20) != 0)
    {
      *(v5 + 235) = v9 & 0xDF;
    }
  }
}

void _nw_parameters_set_is_system_proxy_connection_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 235);
    if (a2)
    {
      if ((*(v5 + 235) & 0x40) == 0)
      {
        *(v5 + 235) = v9 | 0x40;
      }
    }

    else if ((*(v5 + 235) & 0x40) != 0)
    {
      *(v5 + 235) = v9 & 0xBF;
    }
  }
}

void _nw_parameters_set_parent_is_known_tracker_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x400) == 0)
      {
        *(v5 + 140) = v9 | 0x400;
      }
    }

    else if ((v9 & 0x400) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFBFF;
    }
  }
}

void _nw_parameters_set_prohibit_encrypted_dns_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x800) == 0)
      {
        *(v5 + 140) = v9 | 0x800;
      }
    }

    else if ((v9 & 0x800) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFF7FF;
    }
  }
}

void _nw_parameters_set_is_encrypted_dns_resolver_connection_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x200000) == 0)
      {
        *(v5 + 140) = v9 | 0x200000;
      }
    }

    else if ((v9 & 0x200000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFDFFFFF;
    }
  }
}

void _nw_parameters_set_channel_teardown_delay_0(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v12), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    swift_beginAccess();
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(v5 + 104) = a2;
      *(v5 + 112) = 0;
      goto LABEL_5;
    }

    __break(1u);
  }

  swift_once();
LABEL_7:
  v9 = sub_182AD2698();
  __swift_project_value_buffer(v9, qword_1EA843148);
  v6 = sub_182AD2678();
  v10 = sub_182AD38B8();
  if (os_log_type_enabled(v6, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_181A37000, v6, v10, "Cannot mutate parameters", v11, 2u);
    MEMORY[0x1865DF520](v11, -1, -1);
  }

LABEL_5:
}

void _nw_parameters_configure_application_service_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v11), , (*&a1[v2] & 0x8000000000000000) != 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v7 = sub_182AD2698();
    __swift_project_value_buffer(v7, qword_1EA843148);
    v8 = sub_182AD2678();
    v9 = sub_182AD38B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_181A37000, v8, v9, "Cannot mutate parameters", v10, 2u);
      MEMORY[0x1865DF520](v10, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    sub_181F40D48();
    swift_endAccess();
  }
}

void _nw_parameters_set_migrating_peer_to_peer_0(char *a1)
{
  v2 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v3 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v4 = a1;
  if (v3 < 0 && (v5 = v3 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v5 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v6 = swift_allocObject(), memmove((v6 + 16), (v5 + 16), 0x188uLL), *&a1[v2] = v6, sub_181F481DC(__dst, &v12), , v3 = *&a1[v2], v3 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843148);
    v4 = sub_182AD2678();
    v10 = sub_182AD38B8();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_181A37000, v4, v10, "Cannot mutate parameters", v11, 2u);
      MEMORY[0x1865DF520](v11, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v3 + 234) = 2;
    v7 = *(v3 + 236);
    if ((v7 & 8) == 0)
    {
      *(v3 + 236) = v7 | 8;
    }

    v8 = *(v3 + 136);
    if ((~v8 & 0x800100) != 0)
    {
      *(v3 + 136) = v8 | 0x800100;
    }
  }
}

void _nw_parameters_set_only_primary_requires_type_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 231);
    if (a2)
    {
      if ((*(v5 + 231) & 4) == 0)
      {
        *(v5 + 231) = v9 | 4;
      }
    }

    else if ((*(v5 + 231) & 4) != 0)
    {
      *(v5 + 231) = v9 & 0xFB;
    }
  }
}

void _nw_parameters_set_bundle_id_to_uuid_mapping_failed_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x10) == 0)
      {
        *(v5 + 140) = v9 | 0x10;
      }
    }

    else if ((v9 & 0x10) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFFEF;
    }
  }
}

void _nw_parameters_set_pid_to_uuid_mapping_failed_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x20) == 0)
      {
        *(v5 + 140) = v9 | 0x20;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFFFFDF;
    }
  }
}

void sub_18220A4B8(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v7 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v8 = a1;
  if (v7 < 0 && (v9 = v7 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v9 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v10 = swift_allocObject(), memmove((v10 + 16), (v9 + 16), 0x188uLL), *&a1[v6] = v10, sub_181F481DC(__dst, &v14), , v7 = *&a1[v6], v7 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v11 = sub_182AD2698();
    __swift_project_value_buffer(v11, qword_1EA843148);
    v8 = sub_182AD2678();
    v12 = sub_182AD38B8();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_181A37000, v8, v12, "Cannot mutate parameters", v13, 2u);
      MEMORY[0x1865DF520](v13, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(v7 + 176) = a2;
    *(v7 + 184) = a3;
    *(v7 + 192) = 0;
  }
}

void _nw_parameters_set_use_persona_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 236);
    if (a2)
    {
      if ((*(v5 + 236) & 0x800) == 0)
      {
        *(v5 + 236) = v9 | 0x800;
      }
    }

    else if ((*(v5 + 236) & 0x800) != 0)
    {
      *(v5 + 236) = v9 & 0xF7FF;
    }
  }
}

void _nw_parameters_set_allow_private_access_tokens_for_third_party_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x20000) == 0)
      {
        *(v5 + 140) = v9 | 0x20000;
      }
    }

    else if ((v9 & 0x20000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFDFFFF;
    }
  }
}

void _nw_parameters_set_using_ephemeral_configuration_0(char *a1, char a2)
{
  v4 = OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage;
  v5 = *&a1[OBJC_IVAR____TtC7Network17ParametersStorage_internalStorage];
  v6 = a1;
  if (v5 < 0 && (v7 = v5 & 0x7FFFFFFFFFFFFFFFLL, memcpy(__dst, (v7 + 16), sizeof(__dst)), type metadata accessor for MutableParametersStorage(), v8 = swift_allocObject(), memmove((v8 + 16), (v7 + 16), 0x188uLL), *&a1[v4] = v8, sub_181F481DC(__dst, &v13), , v5 = *&a1[v4], v5 < 0))
  {
    sub_18220E960();
    swift_willThrowTypedImpl();

    if (qword_1EA836648 != -1)
    {
      swift_once();
    }

    v10 = sub_182AD2698();
    __swift_project_value_buffer(v10, qword_1EA843148);
    v6 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v6, v11, "Cannot mutate parameters", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + 140);
    if (a2)
    {
      if ((v9 & 0x40000) == 0)
      {
        *(v5 + 140) = v9 | 0x40000;
      }
    }

    else if ((v9 & 0x40000) != 0)
    {
      *(v5 + 140) = v9 & 0xFFFBFFFF;
    }
  }
}
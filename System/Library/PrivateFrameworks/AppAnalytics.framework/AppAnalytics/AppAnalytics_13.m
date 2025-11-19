id BridgedUserIDResetFlag.init(suiteName:userDataIDsResetKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedUserIDResetFlag.__allocating_init(suiteName:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag];
  *v6 = a1;
  *(v6 + 1) = a2;
  *(v6 + 2) = 0xD00000000000001CLL;
  *(v6 + 3) = 0x80000001B6ACCC40;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedUserIDResetFlag.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag];
  *v6 = a1;
  *(v6 + 1) = a2;
  *(v6 + 2) = 0xD00000000000001CLL;
  *(v6 + 3) = 0x80000001B6ACCC40;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedUserIDResetFlag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUserIDResetFlag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Action.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 1)
  {
    v4 = v3 != 0;
LABEL_5:
    MEMORY[0x1B8C98A40](v4);

    return sub_1B6AB9380();
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v6 = 3;
  }

  return MEMORY[0x1B8C98A40](v6);
}

uint64_t Action.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1B6ABA1F0();
  if (v3 <= 1)
  {
    v4 = v3 != 0;
LABEL_5:
    MEMORY[0x1B8C98A40](v4);
    sub_1B6AB9380();
    return sub_1B6ABA230();
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 5;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = 3;
  }

  MEMORY[0x1B8C98A40](v5);
  return sub_1B6ABA230();
}

uint64_t sub_1B6AAB378()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 1)
  {
    v4 = v3 != 0;
LABEL_5:
    MEMORY[0x1B8C98A40](v4);

    return sub_1B6AB9380();
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    v6 = 3;
  }

  return MEMORY[0x1B8C98A40](v6);
}

uint64_t sub_1B6AAB434()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1B6ABA1F0();
  if (v3 <= 1)
  {
    v4 = v3 != 0;
LABEL_5:
    MEMORY[0x1B8C98A40](v4);
    sub_1B6AB9380();
    return sub_1B6ABA230();
  }

  if (v3 == 2)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 5;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    v5 = 3;
  }

  MEMORY[0x1B8C98A40](v5);
  return sub_1B6ABA230();
}

Swift::Bool __swiftcall ActionSequence.match(lastActions:)(Swift::OpaquePointer lastActions)
{
  v3 = *(lastActions._rawValue + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *v1;
  if (*(v4 + 16) < v3)
  {
    return 0;
  }

  rawValue = lastActions._rawValue;
  result = sub_1B6A54BFC(v3, v4);
  v9 = v8 >> 1;
  v10 = (v8 >> 1) - v7;
  if (__OFSUB__(v8 >> 1, v7))
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v11 = v6;
    v12 = v7;
    v25 = MEMORY[0x1E69E7CC0];

    result = sub_1B69E4DAC(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v13 = v25;
    if (v12 <= v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v12;
    }

    v15 = v14 - v12;
    v16 = (v11 + 40 * v12 + 16);
    while (v15)
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      result = sub_1B6A110A8(v17, v18, *v16);
      v21 = *(v25 + 16);
      v20 = *(v25 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1B69E4DAC((v20 > 1), v21 + 1, 1);
      }

      *(v25 + 16) = v21 + 1;
      v22 = v25 + 24 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
      *(v22 + 48) = v19;
      --v15;
      v16 += 40;
      if (!--v10)
      {
        swift_unknownObjectRelease();
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  swift_unknownObjectRelease();
  v13 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v23 = sub_1B6AAB6B4(v13, rawValue);

  return v23 & 1;
}

uint64_t sub_1B6AAB6B4(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  v28 = a2 + 32;
  for (i = (result + 48); ; i += 24)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return 1;
      }

      v11 = 0;
      v12 = 0;
      v13 = 255;
      v2 = v3;
      goto LABEL_14;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_91;
    }

    v14 = v28 + 24 * v2;
    v13 = *(v14 + 16);
    v12 = *v14;
    v11 = *(v14 + 8);
    sub_1B6A110A8(*v14, v11, *(v14 + 16));
    if (!v4)
    {
      if (v13 != 255)
      {
LABEL_83:
        v25 = v12;
        v26 = v11;
        v27 = v13;
        goto LABEL_84;
      }

      return 1;
    }

    ++v2;
LABEL_14:
    v15 = *i;
    v17 = *(i - 2);
    v16 = *(i - 1);
    result = sub_1B6A110A8(v17, v16, *i);
    if (v13 == 255)
    {
      if (v15 != 255)
      {
LABEL_81:
        v25 = v17;
        v26 = v16;
        v27 = v15;
LABEL_84:
        sub_1B6AABF7C(v25, v26, v27);
        return 0;
      }

      return 1;
    }

    if (v15 == 255)
    {
      goto LABEL_83;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        if (v15 != 2)
        {
          sub_1B6AABF7C(v17, v16, v15);
          v25 = v12;
          v26 = v11;
          v27 = 2;
          goto LABEL_84;
        }

        if (v12 == v17 && v11 == v16)
        {
          v6 = v12;
          v7 = v11;
          goto LABEL_3;
        }

        if (sub_1B6ABA0F0())
        {
          goto LABEL_2;
        }

        if (v12 == 42 && v11 == 0xE100000000000000)
        {
          sub_1B6AABF7C(v17, v16, 2u);
          v8 = 42;
          v9 = 0xE100000000000000;
          goto LABEL_4;
        }

        if (sub_1B6ABA0F0())
        {
LABEL_2:
          v6 = v17;
          v7 = v16;
LABEL_3:
          sub_1B6AABF7C(v6, v7, 2u);
          v8 = v12;
          v9 = v11;
LABEL_4:
          v10 = 2;
          goto LABEL_5;
        }

        if (v17 == 42 && v16 == 0xE100000000000000)
        {
          v6 = 42;
          v7 = 0xE100000000000000;
          goto LABEL_3;
        }

        v22 = sub_1B6ABA0F0();
        sub_1B6AABF7C(v17, v16, 2u);
        result = sub_1B6AABF7C(v12, v11, 2u);
        if ((v22 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v12 | v11)
      {
        if (v12 ^ 1 | v11)
        {
          if (v15 != 3 || v16 || v17 != 2)
          {
            goto LABEL_81;
          }
        }

        else if (v15 != 3 || v16 || v17 != 1)
        {
          goto LABEL_81;
        }
      }

      else if (v15 != 3 || v17 | v16)
      {
        goto LABEL_81;
      }
    }

    else if (v13)
    {
      if (v15 != 1)
      {
        sub_1B6AABF7C(v17, v16, v15);
        v25 = v12;
        v26 = v11;
        v27 = 1;
        goto LABEL_84;
      }

      if (v12 == v17 && v11 == v16)
      {
        v20 = v12;
        v21 = v11;
LABEL_47:
        sub_1B6AABF7C(v20, v21, 1u);
        v8 = v12;
        v9 = v11;
        goto LABEL_48;
      }

      if (sub_1B6ABA0F0())
      {
        goto LABEL_46;
      }

      if (v12 == 42 && v11 == 0xE100000000000000)
      {
        sub_1B6AABF7C(v17, v16, 1u);
        v8 = 42;
        v9 = 0xE100000000000000;
LABEL_48:
        v10 = 1;
LABEL_5:
        result = sub_1B6AABF7C(v8, v9, v10);
        goto LABEL_6;
      }

      if (sub_1B6ABA0F0())
      {
LABEL_46:
        v20 = v17;
        v21 = v16;
        goto LABEL_47;
      }

      if (v17 == 42 && v16 == 0xE100000000000000)
      {
        v20 = 42;
        v21 = 0xE100000000000000;
        goto LABEL_47;
      }

      v24 = sub_1B6ABA0F0();
      sub_1B6AABF7C(v17, v16, 1u);
      result = sub_1B6AABF7C(v12, v11, 1u);
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v15)
      {
        sub_1B6AABF7C(v17, v16, v15);
        v25 = v12;
        v26 = v11;
        v27 = 0;
        goto LABEL_84;
      }

      if (v12 == v17 && v11 == v16)
      {
        v18 = v12;
        v19 = v11;
LABEL_39:
        sub_1B6AABF7C(v18, v19, 0);
        v8 = v12;
        v9 = v11;
LABEL_40:
        v10 = 0;
        goto LABEL_5;
      }

      if (sub_1B6ABA0F0())
      {
        goto LABEL_38;
      }

      if (v12 == 42 && v11 == 0xE100000000000000)
      {
        sub_1B6AABF7C(v17, v16, 0);
        v8 = 42;
        v9 = 0xE100000000000000;
        goto LABEL_40;
      }

      if (sub_1B6ABA0F0())
      {
LABEL_38:
        v18 = v17;
        v19 = v16;
        goto LABEL_39;
      }

      if (v17 == 42 && v16 == 0xE100000000000000)
      {
        v18 = 42;
        v19 = 0xE100000000000000;
        goto LABEL_39;
      }

      v23 = sub_1B6ABA0F0();
      sub_1B6AABF7C(v17, v16, 0);
      result = sub_1B6AABF7C(v12, v11, 0);
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_6:
    --v4;
  }

  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

uint64_t _s12AppAnalytics6ActionO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) == 2)
    {
      if (v6 == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (v3 | v2)
      {
        if (v3 ^ 1 | v2)
        {
          if (v6 != 3 || v5 != 2 || v4)
          {
            return 0;
          }
        }

        else if (v6 != 3 || v5 != 1 || v4)
        {
          return 0;
        }

        return 1;
      }

      if (v6 == 3 && (v4 | v5) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a1 + 16))
  {
    if (v6 == 1)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

LABEL_9:
  if (v3 == v5 && v2 == v4)
  {
    return 1;
  }

  v8 = *a1;
  if ((sub_1B6ABA0F0() & 1) != 0 || v3 == 42 && v2 == 0xE100000000000000)
  {
    return 1;
  }

  if ((sub_1B6ABA0F0() & 1) != 0 || v5 == 42 && v4 == 0xE100000000000000)
  {
    return 1;
  }

  return sub_1B6ABA0F0();
}

unint64_t sub_1B6AABD40()
{
  result = qword_1EB95C7C8;
  if (!qword_1EB95C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7C8);
  }

  return result;
}

uint64_t sub_1B6AABD94(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B6AABDDC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B6AABE20(uint64_t *a1, int a2)
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

uint64_t sub_1B6AABE68(uint64_t result, int a2, int a3)
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

uint64_t sub_1B6AABEB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1B6AABF10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B6AABF7C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B69F8F30(a1, a2, a3);
  }

  return a1;
}

void sub_1B6AABFA0(uint64_t a1, uint64_t *a2, char a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for StoredUserIDComponents();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v12 = a2[1];
  sub_1B69F4778(a1, v11);
  v14 = type metadata accessor for BridgedStoredUserIDComponents();
  v15 = objc_allocWithZone(v14);
  sub_1B69F4778(v11, v15 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents);
  v36.receiver = v15;
  v36.super_class = v14;
  v16 = objc_msgSendSuper2(&v36, sel_init);
  sub_1B69E9E60(v11);
  switch(v12)
  {
    case 0:
      if (qword_1EB95A9A8 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB95BAE0;
      goto LABEL_13;
    case 1:
      if (qword_1EB95A9B0 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB95BAE8;
      goto LABEL_13;
    case 2:
      if (qword_1EB95A9B8 != -1)
      {
        swift_once();
      }

      v17 = qword_1EB95BAF0;
LABEL_13:
      v18 = v17;
      goto LABEL_15;
  }

  v19 = type metadata accessor for BridgedIDSessionKind();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR___AAIDSessionKind_kind] = 3;
  v21 = &v20[OBJC_IVAR___AAIDSessionKind_name];
  *v21 = v13;
  *(v21 + 1) = v12;
  v35.receiver = v20;
  v35.super_class = v19;

  v18 = objc_msgSendSuper2(&v35, sel_init);
LABEL_15:
  v22 = v18;
  v34 = 0;
  v23 = [a4 storeUserIDComponents:v16 kind:v18 isDiagnosticSubmissionAllowed:a3 & 1 error:&v34];

  if (v23)
  {
    v24 = v34;
  }

  else
  {
    v25 = v34;
    v26 = sub_1B6AB8A70();

    swift_willThrow();
    v27 = sub_1B6AB8A60();
    if ([v27 code])
    {
      v28 = [v27 domain];
      v29 = sub_1B6AB92E0();
      v31 = v30;

      if (v29 == 0xD00000000000001CLL && 0x80000001B6AC9360 == v31)
      {
      }

      else
      {
        v32 = sub_1B6ABA0F0();

        if ((v32 & 1) == 0)
        {
          swift_willThrow();

          goto LABEL_23;
        }
      }
    }
  }

LABEL_23:
  v33 = *MEMORY[0x1E69E9840];
}

double TimestampJitter.lowerBound.getter()
{
  result = *v0;
  if (*(v0 + 16))
  {
    return 0.0;
  }

  return result;
}

double TimestampJitter.upperBound.getter()
{
  result = *(v0 + 8);
  if (*(v0 + 16))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1B6AAC370(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

id sub_1B6AAC3AC()
{
  result = [objc_allocWithZone(type metadata accessor for BridgedTimeDurationGranularityFactory()) init];
  qword_1EB95C7D0 = result;
  return result;
}

id BridgedTimeDurationGranularityFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static BridgedTimeDurationGranularityFactory.sharedInstance.getter()
{
  if (qword_1EB95AA00 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB95C7D0;

  return v1;
}

id BridgedTimeDurationGranularityFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BridgedTimeDurationGranularityFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12AppAnalytics37BridgedTimeDurationGranularityFactoryC04makedeF0yAA0cdeF0OSSF_0()
{
  v1 = sub_1B6AB9340();
  v2 = v0;
  if (v1 == 0x6473646E6F636573 && v0 == 0xEB000000006E776FLL || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (v1 == 0x7573646E6F636573 && v2 == 0xE900000000000070 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 2;
  }

  else if (v1 == 0x73646E6F636573 && v2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v4 = sub_1B6ABA0F0();

    if (v4)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_1B6AAC720()
{
  result = qword_1EB95C7D8;
  if (!qword_1EB95C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7D8);
  }

  return result;
}

uint64_t DiagnosticsConsentRequired.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1B6AB9B30();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

BOOL static DiagnosticsConsentRequired<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB9B30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v27 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v15 = *(v30 + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v27 - v17;
  v19 = *(v16 + 48);
  v31 = v11;
  v20 = *(v11 + 16);
  v20(&v27 - v17, a1, v10);
  v20(&v18[v19], a2, v10);
  v21 = *(v7 + 48);
  if (v21(v18, 1, a3) != 1)
  {
    v20(v32, v18, v10);
    if (v21(&v18[v19], 1, a3) != 1)
    {
      v23 = v28;
      (*(v7 + 32))(v28, &v18[v19], a3);
      v24 = v32;
      v25 = sub_1B6AB92A0();
      v26 = *(v7 + 8);
      v26(v23, a3);
      v26(v24, a3);
      (*(v31 + 8))(v18, v10);
      return (v25 & 1) != 0;
    }

    (*(v7 + 8))(v32, a3);
LABEL_6:
    (*(v30 + 8))(v18, TupleTypeMetadata2);
    return 0;
  }

  if (v21(&v18[v19], 1, a3) != 1)
  {
    goto LABEL_6;
  }

  (*(v31 + 8))(v18, v10);
  return 1;
}

uint64_t DiagnosticsConsentRequired<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  sub_1B6AB9B30();

  return sub_1B6AB9B50();
}

uint64_t DiagnosticsConsentRequired<A>.hashValue.getter(uint64_t a1)
{
  sub_1B6ABA1F0();
  v2 = *(a1 + 16);
  sub_1B6AB9B30();
  sub_1B6AB9B50();
  return sub_1B6ABA230();
}

uint64_t sub_1B6AACC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1B6ABA1F0();
  DiagnosticsConsentRequired<A>.hash(into:)(v6, a2);
  return sub_1B6ABA230();
}

uint64_t DiagnosticsConsentRequired<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B6AB9B30();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-v10 - 8];
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  sub_1B6982544(a1, v15);
  sub_1B6AB9B60();
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v3)
  {
    return (*(v8 + 40))(a3, v11, v7);
  }

  v12 = type metadata accessor for DiagnosticsConsentRequired();
  return (*(*(v12 - 8) + 8))(a3, v12);
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1B6AB9B30();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - v9;
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v22;
  result = sub_1B6AB9F40();
  if (!v15)
  {
    v18 = v20;
    v17 = v21;
    if ((*(v11 + 48))(v10, 1, a1) == 1)
    {
      (*(v18 + 8))(v10, v3);
      (*(v11 + 56))(v7, 1, 1, a1);
      return DiagnosticsConsentRequired.init(wrappedValue:)(v7, a1, v17);
    }

    else
    {
      (*(v11 + 32))(v14, v10, a1);
      (*(v11 + 16))(v7, v14, a1);
      (*(v11 + 56))(v7, 0, 1, a1);
      DiagnosticsConsentRequired.init(wrappedValue:)(v7, a1, v17);
      return (*(v11 + 8))(v14, a1);
    }
  }

  return result;
}

uint64_t DiagnosticsConsentRequired<A>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_1B6AB9B30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1B69A67E0(a2, &v10 - v7);
  sub_1B6AB9B40();
  return (*(v5 + 8))(v8, v4);
}

id BridgedDiagnosticsConsentRequired.__allocating_init(data:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AADiagnosticsConsentRequired_data] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BridgedDiagnosticsConsentRequired.init(data:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___AADiagnosticsConsentRequired_data] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1B6AAD340(_OWORD *a1@<X8>)
{
  v19[3] = *MEMORY[0x1E69E9840];
  sub_1B69A31EC(v19);
  if (LOBYTE(v19[0]) == 2 || (v19[0] & 1) != 0)
  {
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR___AADiagnosticsConsentRequired_data);
    v19[2] = &unk_1F2E86290;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v6 toDict];
      v19[0] = 0;
      v9 = [v8 toJsonValueAndReturnError_];
      v10 = v19[0];
      if (v9)
      {
        sub_1B6AB9BC0();

        swift_unknownObjectRelease();
      }

      else
      {
        v16 = v10;
        sub_1B6AB8A70();

        swift_willThrow();
      }
    }

    else
    {
      v19[1] = &unk_1F2E88D68;
      v11 = swift_dynamicCastObjCProtocolConditional();
      if (v11)
      {
        v12 = v11;
        v19[0] = 0;
        v13 = v4;
        v14 = [v12 toJsonValueAndReturnError_];
        v15 = v19[0];
        if (v14)
        {
          sub_1B6AB9BC0();

          swift_unknownObjectRelease();
        }

        else
        {
          v18 = v15;
          sub_1B6AB8A70();

          swift_willThrow();
        }
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v17 = 2;
        swift_willThrow();
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

id BridgedDiagnosticsConsentRequired.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedDiagnosticsConsentRequired.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void BridgedDiagnosticsConsentRequired.toJsonValue()(uint64_t a1@<X8>)
{
  sub_1B6AAD340(&v4);
  if (!v1)
  {
    if (v5)
    {
      sub_1B69979CC(&v4, a1);
    }

    else
    {
      v3 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      *(a1 + 24) = sub_1B69E0520();
      *a1 = v3;
    }
  }
}

uint64_t sub_1B6AAD818(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_1B6AAD998(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

char *sub_1B6AADC14()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t sub_1B6AADC94()
{
  sub_1B6AADC14();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1B6AADCEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1B6AAE0B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B6AADD84(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1B6AADECC(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1B6AAE0B4()
{
  if (!qword_1EB95C868)
  {
    type metadata accessor for Tracker.Timer(255);
    v0 = sub_1B6AB9240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C868);
    }
  }
}

uint64_t sub_1B6AAE11C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, void *), uint64_t a6)
{
  v74 = a3;
  v76 = a6;
  v77 = a4;
  v73 = a5;
  v78 = a2;
  v70 = a1;
  v6 = sub_1B6AB90F0();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v67 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DiagnosticsConsentProvider(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB8E40();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v18 = v17;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6987C8C(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v62 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v62 - v30;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v75 = v21;
  v65 = v26;
  v71 = v12;
  v66 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v72 = v79;
  if (v79)
  {
    v32 = *(v14 + 16);
    v32(v31, v79 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v13);
    v33 = *(v14 + 56);
    v33(v31, 0, 1, v13);
  }

  else
  {
    v33 = *(v14 + 56);
    v33(v31, 1, 1, v13);
    v32 = *(v14 + 16);
  }

  v32(v29, v78, v13);
  v33(v29, 0, 1, v13);
  v34 = *(v18 + 48);
  v35 = v75;
  sub_1B699A394(v31, v75, sub_1B6987C8C);
  sub_1B699A394(v29, v35 + v34, sub_1B6987C8C);
  v36 = *(v14 + 48);
  if (v36(v35, 1, v13) == 1)
  {
    sub_1B6984DF8(v29, sub_1B6987C8C);
    sub_1B6984DF8(v31, sub_1B6987C8C);
    if (v36(v35 + v34, 1, v13) == 1)
    {
      sub_1B6984DF8(v35, sub_1B6987C8C);
LABEL_15:
      type metadata accessor for AccessTracker();
      v60 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v60[3] = 0;
      v60[4] = 0;
      v60[5] = sub_1B6A55214;
      v60[6] = 0;
      v61 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v61[3] = 0;
      v61[4] = 0;
      v61[5] = sub_1B6A55214;
      v61[6] = 0;
      v73(v60, v61);

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v63 = v31;
  v37 = v35;
  v38 = v35;
  v39 = v65;
  sub_1B699A394(v37, v65, sub_1B6987C8C);
  if (v36(v38 + v34, 1, v13) == 1)
  {
    sub_1B6984DF8(v29, sub_1B6987C8C);
    sub_1B6984DF8(v63, sub_1B6987C8C);
    (*(v14 + 8))(v39, v13);
    v35 = v38;
LABEL_11:
    sub_1B6984DF8(v35, sub_1B6992BDC);
    v40 = v71;
    goto LABEL_12;
  }

  v57 = v64;
  (*(v14 + 32))(v64, v38 + v34, v13);
  sub_1B6AAFDD0();
  v58 = sub_1B6AB92A0();
  v59 = *(v14 + 8);
  v59(v57, v13);
  sub_1B6984DF8(v29, sub_1B6987C8C);
  sub_1B6984DF8(v63, sub_1B6987C8C);
  v59(v39, v13);
  sub_1B6984DF8(v38, sub_1B6987C8C);
  v40 = v71;
  if (v58)
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_1B699A394(v78, v40, type metadata accessor for DiagnosticsConsentProvider);
  v41 = type metadata accessor for LazyDiagnosticStatus(0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  v44 = swift_allocObject();
  *(v44 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v46 = v69;
  v45 = v70;
  v47 = v40;
  v48 = *&v70[OBJC_IVAR___AAAccessQueue_queue];
  v50 = v67;
  v49 = v68;
  *v67 = v48;
  (*(v49 + 104))(v50, *MEMORY[0x1E69E8020], v46);
  v51 = v48;
  v52 = sub_1B6AB9110();
  result = (*(v49 + 8))(v50, v46);
  if (v52)
  {
    sub_1B6980F64(v47, v44 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v44 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v45;
    v79 = v44;
    sub_1B69930AC(0);
    v54 = v45;

    swift_task_localValuePush();
    type metadata accessor for AccessTracker();
    v55 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = sub_1B6A55214;
    v55[6] = 0;
    v56 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v56[3] = 0;
    v56[4] = 0;
    v56[5] = sub_1B6A55214;
    v56[6] = 0;
    v73(v55, v56);

    swift_task_localValuePop();

LABEL_16:
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6AAE978(char *a1, uint64_t a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  v73 = a4;
  v75 = a5;
  v76 = a2;
  v72 = a3;
  v70 = a1;
  v5 = sub_1B6AB90F0();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v67 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB8E40();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6987C8C(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v62 - v28;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v74 = v19;
  v64 = v24;
  v65 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v71 = v77;
  if (v77)
  {
    v30 = *(v12 + 16);
    v30(v29, v77 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v11);
    v31 = *(v12 + 56);
    v31(v29, 0, 1, v11);
  }

  else
  {
    v31 = *(v12 + 56);
    v31(v29, 1, 1, v11);
    v30 = *(v12 + 16);
  }

  v30(v27, v76, v11);
  v31(v27, 0, 1, v11);
  v32 = *(v16 + 48);
  v33 = v74;
  sub_1B699A394(v29, v74, sub_1B6987C8C);
  sub_1B699A394(v27, v33 + v32, sub_1B6987C8C);
  v34 = *(v12 + 48);
  if (v34(v33, 1, v11) == 1)
  {
    sub_1B6984DF8(v27, sub_1B6987C8C);
    sub_1B6984DF8(v29, sub_1B6987C8C);
    if (v34(v33 + v32, 1, v11) == 1)
    {
      sub_1B6984DF8(v33, sub_1B6987C8C);
LABEL_15:
      type metadata accessor for AccessSessionManager();
      v58 = swift_allocObject();
      v59 = v75;
      *(v58 + 16) = v75;
      v60 = *(v59 + 16);
      type metadata accessor for AccessTracker();
      v61 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v61[3] = 0;
      v61[4] = 0;
      v61[5] = sub_1B6A55214;
      v61[6] = 0;

      v72(v58, v61);

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v62 = v29;
  v35 = v33;
  v36 = v33;
  v37 = v64;
  sub_1B699A394(v35, v64, sub_1B6987C8C);
  if (v34(v36 + v32, 1, v11) == 1)
  {
    sub_1B6984DF8(v27, sub_1B6987C8C);
    sub_1B6984DF8(v62, sub_1B6987C8C);
    (*(v12 + 8))(v37, v11);
    v33 = v36;
LABEL_11:
    sub_1B6984DF8(v33, sub_1B6992BDC);
    goto LABEL_12;
  }

  v55 = v63;
  (*(v12 + 32))(v63, v36 + v32, v11);
  sub_1B6AAFDD0();
  v56 = sub_1B6AB92A0();
  v57 = *(v12 + 8);
  v57(v55, v11);
  sub_1B6984DF8(v27, sub_1B6987C8C);
  sub_1B6984DF8(v62, sub_1B6987C8C);
  v57(v37, v11);
  sub_1B6984DF8(v36, sub_1B6987C8C);
  if (v56)
  {
    goto LABEL_15;
  }

LABEL_12:
  v38 = v66;
  sub_1B699A394(v76, v66, type metadata accessor for DiagnosticsConsentProvider);
  v39 = type metadata accessor for LazyDiagnosticStatus(0);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  *(v42 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v44 = v69;
  v43 = v70;
  v45 = *&v70[OBJC_IVAR___AAAccessQueue_queue];
  v47 = v67;
  v46 = v68;
  *v67 = v45;
  (*(v46 + 104))(v47, *MEMORY[0x1E69E8020], v44);
  v48 = v45;
  LOBYTE(v45) = sub_1B6AB9110();
  result = (*(v46 + 8))(v47, v44);
  v50 = v75;
  if (v45)
  {
    sub_1B6980F64(v38, v42 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v42 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v43;
    v77 = v42;
    sub_1B69930AC(0);
    v51 = v43;

    swift_task_localValuePush();
    type metadata accessor for AccessSessionManager();
    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    v53 = *(v50 + 16);
    type metadata accessor for AccessTracker();
    v54 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = sub_1B6A55214;
    v54[6] = 0;

    v72(v52, v54);

    swift_task_localValuePop();

LABEL_16:
  }

  __break(1u);
  return result;
}

uint64_t DiagnosticsConsentStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

id sub_1B6AAF2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = type metadata accessor for DiagnosticsConsentProvider(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E30();
  v10 = &v9[*(v6 + 28)];
  *v10 = a3;
  *(v10 + 1) = 0;
  v11 = objc_allocWithZone(ObjCClassMetadata);
  sub_1B699A394(v9, v11 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, type metadata accessor for DiagnosticsConsentProvider);
  v14.receiver = v11;
  v14.super_class = ObjCClassMetadata;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  sub_1B6984DF8(v9, type metadata accessor for DiagnosticsConsentProvider);

  return v12;
}

id sub_1B6AAF410(uint64_t a1)
{
  v3 = type metadata accessor for DiagnosticsConsentProvider(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E30();
  v8 = &v7[*(v4 + 28)];
  *v8 = a1;
  *(v8 + 1) = 0;
  v9 = objc_allocWithZone(v1);
  sub_1B699A394(v7, v9 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, type metadata accessor for DiagnosticsConsentProvider);
  v12.receiver = v9;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1B6984DF8(v7, type metadata accessor for DiagnosticsConsentProvider);
  return v10;
}

id static BridgedDiagnosticsConsentProvider.custom(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DiagnosticsConsentProvider(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  sub_1B6AB8E30();
  v11 = &v9[*(v6 + 28)];
  *v11 = sub_1B6AAF8F0;
  v11[1] = v10;
  v12 = objc_allocWithZone(v2);
  sub_1B699A394(v9, v12 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, type metadata accessor for DiagnosticsConsentProvider);
  v15.receiver = v12;
  v15.super_class = v2;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_1B6984DF8(v9, type metadata accessor for DiagnosticsConsentProvider);
  return v13;
}

id BridgedDiagnosticsConsentProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedDiagnosticsConsentProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6AAF8F0@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_1B6AAF928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000001B6ACF4C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1B6AAF9BC(uint64_t a1)
{
  v2 = sub_1B69A3D44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AAF9F8(uint64_t a1)
{
  v2 = sub_1B69A3D44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6AAFA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6AAFAB8(uint64_t a1)
{
  v2 = sub_1B69A3FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AAFAF4(uint64_t a1)
{
  v2 = sub_1B69A3FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6AAFB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7463697274736572 && a2 == 0xEE006C6F6F426465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6AAFBC0(uint64_t a1)
{
  v2 = sub_1B69A39F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AAFBFC(uint64_t a1)
{
  v2 = sub_1B69A39F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B6AAFC70()
{
  result = qword_1EB95C870;
  if (!qword_1EB95C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C870);
  }

  return result;
}

uint64_t sub_1B6AAFD04()
{
  result = type metadata accessor for DiagnosticsConsentProvider(319);
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

unint64_t sub_1B6AAFDD0()
{
  result = qword_1EDBCA470;
  if (!qword_1EDBCA470)
  {
    sub_1B6AB8E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCA470);
  }

  return result;
}

unint64_t sub_1B6AAFE5C()
{
  result = qword_1EB95C888;
  if (!qword_1EB95C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C888);
  }

  return result;
}

uint64_t sub_1B6AAFEC0(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1B6AAFF74()
{
  result = qword_1EB95C890;
  if (!qword_1EB95C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C890);
  }

  return result;
}

unint64_t sub_1B6AAFFDC()
{
  result = qword_1EB95C898;
  if (!qword_1EB95C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C898);
  }

  return result;
}

void *sub_1B6AB0048(int a1, id a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = [a2 toDict];
  v3 = sub_1B6AB9210();

  v4 = 0;
  v5 = v3 + 64;
  v45 = v3;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC8];
  for (i = v9; ; v9 = i)
  {
    if (!v8)
    {
      if (v9 <= v4 + 1)
      {
        v14 = v4 + 1;
      }

      else
      {
        v14 = v9;
      }

      v15 = v14 - 1;
      while (1)
      {
        v13 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v13 >= v9)
        {
          v8 = 0;
          v49 = 0u;
          v50 = 0u;
          v48 = 0u;
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v13);
        ++v4;
        if (v8)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    v13 = v4;
LABEL_15:
    v16 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v17 = v16 | (v13 << 6);
    v18 = (*(v45 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_1B698FE74(*(v45 + 56) + 32 * v17, v47);
    *&v48 = v20;
    *(&v48 + 1) = v19;
    sub_1B69979CC(v47, &v49);

    v15 = v13;
LABEL_16:
    v51 = v48;
    v52[0] = v49;
    v52[1] = v50;
    v21 = *(&v48 + 1);
    if (!*(&v48 + 1))
    {
      break;
    }

    v22 = v51;
    sub_1B69979CC(v52, &v48);
    sub_1B6AB0618();
    if (!swift_dynamicCast())
    {

      sub_1B69E69F4();
      swift_allocError();
      *v41 = 2;
      swift_willThrow();
      break;
    }

    v23 = v47[0];
    v47[0] = 0;
    v24 = [v23 toJsonValueAndReturnError_];
    v25 = v47[0];
    if (!v24)
    {
      v42 = v25;

      sub_1B6AB8A70();

      swift_willThrow();
      swift_unknownObjectRelease();
      break;
    }

    v26 = v5;
    v27 = v15;
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
    sub_1B69979CC(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = sub_1B6993940(v22, v21);
    v31 = v10[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      goto LABEL_35;
    }

    v35 = v30;
    if (v10[3] < v34)
    {
      sub_1B69976F8(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_1B6993940(v22, v21);
      if ((v35 & 1) != (v36 & 1))
      {
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }

LABEL_24:
      if (v35)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v40 = v29;
    sub_1B69DDC84();
    v29 = v40;
    if (v35)
    {
LABEL_4:
      v11 = v29;

      v12 = (v10[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_1B69979CC(v47, v12);
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

LABEL_25:
    v10[(v29 >> 6) + 8] |= 1 << v29;
    v37 = (v10[6] + 16 * v29);
    *v37 = v22;
    v37[1] = v21;
    sub_1B69979CC(v47, (v10[7] + 32 * v29));
    swift_unknownObjectRelease();
    v38 = v10[2];
    v33 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v33)
    {
      goto LABEL_36;
    }

    v10[2] = v39;
LABEL_5:
    v4 = v27;
    v5 = v26;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1B6AB0494(uint64_t *a1)
{
  sub_1B69E69F4();
  swift_allocError();
  *v2 = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B6AB04F0()
{
  sub_1B69E69F4();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

unint64_t sub_1B6AB0540(uint64_t a1)
{
  *(a1 + 8) = sub_1B6AB0570();
  result = sub_1B6AB05C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6AB0570()
{
  result = qword_1EDBC98C0;
  if (!qword_1EDBC98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC98C0);
  }

  return result;
}

unint64_t sub_1B6AB05C4()
{
  result = qword_1EDBC98C8;
  if (!qword_1EDBC98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC98C8);
  }

  return result;
}

unint64_t sub_1B6AB0618()
{
  result = qword_1EDBCA298[0];
  if (!qword_1EDBCA298[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBCA298);
  }

  return result;
}

id sub_1B6AB067C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  v6 = v5;
  v7 = (*(a2 + 24))(a1, a2);
  v9 = v8;
  v10 = (*(a2 + 32))(a1, a2);
  v11 = (*(a2 + 48))(a1, a2);
  v13 = v12;
  v14 = type metadata accessor for BridgedProcessEvent();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR___AAProcessEvent_name];
  *v16 = v4;
  v16[1] = v6;
  v17 = &v15[OBJC_IVAR___AAProcessEvent_version];
  *v17 = v7;
  v17[1] = v9;
  *&v15[OBJC_IVAR___AAProcessEvent_json] = v10;
  v18 = &v15[OBJC_IVAR___AAProcessEvent_groupName];
  *v18 = v11;
  v18[1] = v13;
  v20.receiver = v15;
  v20.super_class = v14;
  return objc_msgSendSuper2(&v20, sel_init);
}

double ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, _OWORD *a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 3) = 0x302E312E30;
  *(a9 + 4) = 0xE500000000000000;
  *(a9 + 2) = a3;
  v16 = type metadata accessor for ProcessEvent();
  v17 = v16[11];
  v18 = sub_1B6AB8DB0();
  (*(*(v18 - 8) + 32))(&a9[v17], a4, v18);
  v19 = &a9[v16[12]];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &a9[v16[13]];
  *v20 = a7;
  v20[8] = a8 & 1;
  v21 = &a9[v16[14]];
  v22 = a10[1];
  *v21 = *a10;
  *(v21 + 1) = v22;
  *&result = 5;
  *&a9[v16[15]] = xmmword_1B6AC0320;
  return result;
}

uint64_t ProcessEventType.payload()(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB8DB0();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB0D54(0, &qword_1EDBCB610, &qword_1EDBCAFF8);
  inited = swift_initStackObject();
  *(inited + 32) = 1635017060;
  *(inited + 16) = xmmword_1B6ABD530;
  *(inited + 40) = 0xE400000000000000;
  v9 = *(a2 + 32);
  v32 = a1;
  v10 = v9(a1, a2);
  v11 = JSON.payload()();
  if (v2)
  {
    v12 = v2;

    v13 = *(inited + 40);

    swift_setDeallocating();
    sub_1B69B49CC(0, &qword_1EDBCAFF8);
    swift_arrayDestroy();
    return v12;
  }

  v14 = v11;
  v30[0] = inited + 32;
  v30[1] = 0;

  sub_1B6988294(0, &qword_1EDBCCC60);
  *(inited + 48) = v14;
  *(inited + 72) = v15;
  *(inited + 80) = 0x617461646174656DLL;
  *(inited + 88) = 0xE800000000000000;
  sub_1B6AB0D54(0, &qword_1EDBCAFB8, &qword_1EDBCB000);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1B6ABF500;
  *(v16 + 32) = 1701667182;
  *(v16 + 40) = 0xE400000000000000;
  v17 = v32;
  *(v16 + 48) = (*(a2 + 16))(v32, a2);
  *(v16 + 56) = v18;
  *(v16 + 64) = 0x6E6F6973726576;
  *(v16 + 72) = 0xE700000000000000;
  *(v16 + 80) = (*(a2 + 24))(v17, a2);
  *(v16 + 88) = v19;
  v20 = sub_1B69A7EF8(v16);
  swift_setDeallocating();
  sub_1B69B49CC(0, &qword_1EDBCB000);
  swift_arrayDestroy();
  sub_1B6988294(0, &qword_1EDBCB668);
  *(inited + 96) = v20;
  *(inited + 120) = v21;
  *(inited + 128) = 0x4D65746176697270;
  *(inited + 136) = 0xEF61746164617465;
  sub_1B6AB0D54(0, &qword_1EDBC9B68, &qword_1EDBC9BE0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1B6ABD890;
  *(v22 + 32) = 0xD000000000000019;
  *(v22 + 40) = 0x80000001B6ACAC30;
  v23 = v31;
  (*(a2 + 40))(v17, a2);
  sub_1B6AB8D60();
  v25 = v24;
  result = (*(v33 + 8))(v23, v34);
  v27 = v25 * 1000.0;
  if (COERCE__INT64(fabs(v25 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v27 < 9.22337204e18)
  {
    *(v22 + 48) = v27;
    v28 = sub_1B69F7164(v22);
    swift_setDeallocating();
    sub_1B6AB1298(v22 + 32);
    sub_1B6988294(0, &qword_1EDBC9BE8);
    *(inited + 168) = v29;
    *(inited + 144) = v28;
    v12 = sub_1B69B4888(inited);
    swift_setDeallocating();
    sub_1B69B49CC(0, &qword_1EDBCAFF8);
    swift_arrayDestroy();
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1B6AB0D54(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B69B49CC(255, a3);
    v4 = sub_1B6ABA090();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ProcessEvent.name.getter()
{
  v0 = sub_1B6AB1270();

  return v0;
}

id ProcessEvent.json.getter()
{
  v0 = sub_1B6AB1280();

  return v0;
}

uint64_t ProcessEvent.version.getter()
{
  v0 = sub_1B6AB1278();

  return v0;
}

uint64_t ProcessEvent.nonJitteredEventTimestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1B6AB8DB0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ProcessEvent.groupName.getter(uint64_t a1)
{
  v1 = sub_1B6AB1288(a1);

  return v1;
}

uint64_t ProcessEvent.groupContentType.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

__n128 ProcessEvent.timestampConfiguration.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(v2 + *(a1 + 60));
  *a2 = result;
  return result;
}

double ProcessEvent.init(name:json:groupName:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[3] = 0x302E312E30;
  a6[4] = 0xE500000000000000;
  a6[2] = a3;
  v9 = type metadata accessor for ProcessEvent();
  v10 = a6 + v9[11];
  sub_1B6AB8DA0();
  v11 = (a6 + v9[12]);
  *v11 = a4;
  v11[1] = a5;
  v12 = a6 + v9[13];
  *v12 = 0;
  v12[8] = 1;
  v13 = (a6 + v9[14]);
  *v13 = 0u;
  v13[1] = 0u;
  *&result = 5;
  *(a6 + v9[15]) = xmmword_1B6AC0320;
  return result;
}

double ProcessEvent.init(name:json:groupName:groupContentType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[3] = 0x302E312E30;
  a8[4] = 0xE500000000000000;
  a8[2] = a3;
  v13 = type metadata accessor for ProcessEvent();
  v14 = a8 + v13[11];
  sub_1B6AB8DA0();
  v15 = (a8 + v13[12]);
  *v15 = a4;
  v15[1] = a5;
  v16 = a8 + v13[13];
  *v16 = a6;
  v16[8] = a7 & 1;
  v17 = (a8 + v13[14]);
  *v17 = 0u;
  v17[1] = 0u;
  *&result = 5;
  *(a8 + v13[15]) = xmmword_1B6AC0320;
  return result;
}

double ProcessEvent.init(name:json:groupName:groupContentType:userInfo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, _OWORD *a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[3] = 0x302E312E30;
  a9[4] = 0xE500000000000000;
  a9[2] = a3;
  v15 = type metadata accessor for ProcessEvent();
  v16 = a9 + v15[11];
  sub_1B6AB8DA0();
  v17 = (a9 + v15[12]);
  *v17 = a4;
  v17[1] = a5;
  v18 = a9 + v15[13];
  *v18 = a6;
  v18[8] = a7 & 1;
  v19 = (a9 + v15[14]);
  v20 = a8[1];
  *v19 = *a8;
  v19[1] = v20;
  *&result = 5;
  *(a9 + v15[15]) = xmmword_1B6AC0320;
  return result;
}

uint64_t sub_1B6AB115C()
{
  v0 = sub_1B6AB1270();

  return v0;
}

uint64_t sub_1B6AB1194()
{
  v0 = sub_1B6AB1278();

  return v0;
}

id sub_1B6AB11CC()
{
  v0 = sub_1B6AB1280();

  return v0;
}

uint64_t sub_1B6AB11F8(uint64_t a1)
{
  v1 = sub_1B6AB1288(a1);

  return v1;
}

uint64_t sub_1B6AB1270()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_1B6AB1278()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_1B6AB1288(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1B6AB1298(uint64_t a1)
{
  sub_1B69B49CC(0, &qword_1EDBC9BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6AB13D8(uint64_t a1, uint64_t a2)
{
  if (a1 >= 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithInteger_];
    v4 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    [v4 setNumberStyle_];
    [v4 setUsesSignificantDigits_];
    [v4 setMaximumSignificantDigits_];
    v5 = [v4 stringFromNumber_];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1B6AB92E0();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      v11 = v7 & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(v9) & 0xF;
      }

      else
      {
        v12 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v39 = 0;
          sub_1B6AB1B98(v7, v9, 10);
          goto LABEL_65;
        }

        if ((v9 & 0x2000000000000000) != 0)
        {
          v38[0] = v7;
          v38[1] = v9 & 0xFFFFFFFFFFFFFFLL;
          if (v7 == 43)
          {
            if (v10)
            {
              if (--v10)
              {
                v27 = 0;
                v28 = v38 + 1;
                while (1)
                {
                  v29 = *v28 - 48;
                  if (v29 > 9)
                  {
                    break;
                  }

                  v30 = 10 * v27;
                  if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                  {
                    break;
                  }

                  v27 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    break;
                  }

                  ++v28;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

            goto LABEL_74;
          }

          if (v7 != 45)
          {
            if (v10)
            {
              v34 = 0;
              v35 = v38;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = 10 * v34;
                if ((v34 * 10) >> 64 != (10 * v34) >> 63)
                {
                  break;
                }

                v34 = v37 + v36;
                if (__OFADD__(v37, v36))
                {
                  break;
                }

                ++v35;
                if (!--v10)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v10)
          {
            if (--v10)
            {
              v19 = 0;
              v20 = v38 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v19;
                if ((v19 * 10) >> 64 != (10 * v19) >> 63)
                {
                  break;
                }

                v19 = v22 - v21;
                if (__OFSUB__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v10)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v7 & 0x1000000000000000) != 0)
          {
            v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v13 = sub_1B6AB9D40();
          }

          v14 = *v13;
          if (v14 == 43)
          {
            if (v11 >= 1)
            {
              v10 = v11 - 1;
              if (v11 != 1)
              {
                v23 = 0;
                if (v13)
                {
                  v24 = v13 + 1;
                  while (1)
                  {
                    v25 = *v24 - 48;
                    if (v25 > 9)
                    {
                      goto LABEL_63;
                    }

                    v26 = 10 * v23;
                    if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v23 = v26 + v25;
                    if (__OFADD__(v26, v25))
                    {
                      goto LABEL_63;
                    }

                    ++v24;
                    if (!--v10)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_73;
          }

          if (v14 != 45)
          {
            if (v11)
            {
              v31 = 0;
              if (v13)
              {
                while (1)
                {
                  v32 = *v13 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_63;
                  }

                  v33 = 10 * v31;
                  if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v31 = v33 + v32;
                  if (__OFADD__(v33, v32))
                  {
                    goto LABEL_63;
                  }

                  ++v13;
                  if (!--v11)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            LOBYTE(v10) = 1;
            goto LABEL_64;
          }

          if (v11 >= 1)
          {
            v10 = v11 - 1;
            if (v11 != 1)
            {
              v15 = 0;
              if (v13)
              {
                v16 = v13 + 1;
                while (1)
                {
                  v17 = *v16 - 48;
                  if (v17 > 9)
                  {
                    goto LABEL_63;
                  }

                  v18 = 10 * v15;
                  if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v15 = v18 - v17;
                  if (__OFSUB__(v18, v17))
                  {
                    goto LABEL_63;
                  }

                  ++v16;
                  if (!--v10)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v10) = 0;
LABEL_64:
              v39 = v10;
LABEL_65:

              return;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_1B6AB17A0()
{
  v0 = sub_1B6AB9460();
  v4 = sub_1B6AB1820(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1B6AB1820(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B6AB9370();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1B6AB9B70();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1B699004C(v9, 0);
  v12 = sub_1B6AB1978(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1B6AB9370();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1B6AB9D40();
LABEL_4:

  return sub_1B6AB9370();
}

unint64_t sub_1B6AB1978(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1B69D5E18(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B6AB9400();
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
          result = sub_1B6AB9D40();
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

    result = sub_1B69D5E18(v12, a6, a7);
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

    result = sub_1B6AB93D0();
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

unsigned __int8 *sub_1B6AB1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B6AB9450();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B6AB17A0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      result = sub_1B6AB9D40();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_1B6AB2124()
{
  if (!qword_1EDBCAFB0)
  {
    v0 = sub_1B6ABA090();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCAFB0);
    }
  }
}

id sub_1B6AB2174()
{
  v0 = type metadata accessor for BridgedPrivacyValidation();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR___AAPrivacyValidation_enabled] = 0;
  *&v1[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = MEMORY[0x1E69E7CD0];
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_1EDBC8A20 = result;
  return result;
}

id BridgedPrivacyValidation.__allocating_init(enabled:denylistDescriptors:)(char a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___AAPrivacyValidation_enabled] = a1;
  *&v5[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id static BridgedPrivacyValidation.default.getter()
{
  if (qword_1EDBC8A18 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC8A20;

  return v1;
}

id BridgedPrivacyValidation.init(enabled:denylistDescriptors:)(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR___AAPrivacyValidation_enabled] = a1;
  *&v2[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id BridgedPrivacyValidation.with(enabled:)(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AAPrivacyValidation_denylistDescriptors);
  v5 = objc_allocWithZone(ObjectType);
  v5[OBJC_IVAR___AAPrivacyValidation_enabled] = a1;
  *&v5[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = v4;
  v7.receiver = v5;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, sel_init);
}

id BridgedPrivacyValidation.with(denylistDescriptors:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AAPrivacyValidation_enabled);
  v5 = objc_allocWithZone(ObjectType);
  v5[OBJC_IVAR___AAPrivacyValidation_enabled] = v4;
  *&v5[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors] = a1;
  v7.receiver = v5;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, sel_init);
}

id BridgedPrivacyValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedPrivacyValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SummaryEventMetaData()
{
  result = qword_1EDBC90B0;
  if (!qword_1EDBC90B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6AB2844()
{
  result = sub_1B6AB8DB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B6AB28B0(void *a1)
{
  sub_1B6AB3180(0, &qword_1EB95C8C0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6AB306C();
  sub_1B6ABA2D0();
  v12[15] = 0;
  sub_1B6AB8DB0();
  sub_1B6AB31E4(&qword_1EDBCB5B0, MEMORY[0x1E6969530]);
  sub_1B6ABA040();
  if (!v1)
  {
    v10 = *(type metadata accessor for SummaryEventMetaData() + 20);
    v12[14] = 1;
    sub_1B6ABA040();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B6AB2A84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_1B6AB8DB0();
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  v5 = MEMORY[0x1EEE9AC00](v34);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v25 - v8;
  sub_1B6AB3180(0, &qword_1EB95C8B0, MEMORY[0x1E69E6F48]);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for SummaryEventMetaData();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6AB306C();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v27 = v7;
  v28 = v17;
  v19 = v30;
  v36 = 0;
  sub_1B6AB31E4(&qword_1EDBC8C70, MEMORY[0x1E6969530]);
  v20 = v31;
  v21 = v32;
  sub_1B6AB9F90();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  sub_1B6AB9F90();
  (*(v33 + 8))(v13, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  sub_1B6AB30C0(v23, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6AB3124(v23);
}

uint64_t sub_1B6AB2E30()
{
  if (*v0)
  {
    result = 0x6465646E65;
  }

  else
  {
    result = 0x64657472617473;
  }

  *v0;
  return result;
}

uint64_t sub_1B6AB2E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657472617473 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465646E65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6AB2F40(uint64_t a1)
{
  v2 = sub_1B6AB306C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AB2F7C(uint64_t a1)
{
  v2 = sub_1B6AB306C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6AB2FE8(uint64_t a1)
{
  *(a1 + 8) = sub_1B6AB31E4(&qword_1EB95C5E0, type metadata accessor for SummaryEventMetaData);
  result = sub_1B6AB31E4(&qword_1EB95BA10, type metadata accessor for SummaryEventMetaData);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6AB306C()
{
  result = qword_1EB95C8B8;
  if (!qword_1EB95C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C8B8);
  }

  return result;
}

uint64_t sub_1B6AB30C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryEventMetaData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6AB3124(uint64_t a1)
{
  v2 = type metadata accessor for SummaryEventMetaData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6AB3180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6AB306C();
    v7 = a3(a1, &type metadata for SummaryEventMetaData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6AB31E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B6AB3240()
{
  result = qword_1EB95C8C8;
  if (!qword_1EB95C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C8C8);
  }

  return result;
}

unint64_t sub_1B6AB3298()
{
  result = qword_1EB95C8D0;
  if (!qword_1EB95C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C8D0);
  }

  return result;
}

unint64_t sub_1B6AB32F0()
{
  result = qword_1EB95C8D8;
  if (!qword_1EB95C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C8D8);
  }

  return result;
}

uint64_t dispatch thunk of StorefrontProviderType.storefrontID()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B6AB345C;

  return v9(a1, a2);
}

uint64_t sub_1B6AB345C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DataEventFormatter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DataEventFormatter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B6AB360C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;
      swift_unknownObjectRetain();
      v5(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B6AB3740(void (*a1)(char *), uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v22 = a1;
  sub_1B69ABFCC(0, a4, a5, MEMORY[0x1E69E8660]);
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v21 = v8 + 16;
  v23 = (v8 + 8);
  v25 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
      v20 = v24;
LABEL_9:
      (*(v8 + 16))(v11, *(v25 + 56) + *(v8 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v20);
      v22(v11);
      if (v5)
      {
        break;
      }

      v15 &= v15 - 1;
      result = (*v23)(v11, v20);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    (*v23)(v11, v20);
  }

  else
  {
LABEL_5:
    v20 = v24;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B6AB3954(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8C98510](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1B6AB9E60();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1B6AB3A74()
{
  if ([objc_opt_self() isMainThread])
  {
    sub_1B6AB9660();
    return sub_1B6AB3BA0(sub_1B6AB4938, v0, "AppAnalytics/LazyEventProcessor.swift", 37);
  }

  else
  {
    v2 = *(v0 + 32);
    os_unfair_lock_lock((v2 + 24));
    sub_1B6AB491C((v2 + 16), &v3);
    os_unfair_lock_unlock((v2 + 24));
    return v3;
  }
}

uint64_t sub_1B6AB3B2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = *(a1 + 24);
    v5 = (*(a1 + 16))();
    v7 = *(a1 + 40);
    *(a1 + 40) = v5;
  }

  *a2 = v5;
}

uint64_t sub_1B6AB3BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B6AB9650();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1B6AB4954(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1B6AB9CA0();
  MEMORY[0x1B8C97BE0](0xD00000000000003FLL, 0x80000001B6ACF680);
  v12 = sub_1B6ABA330();
  MEMORY[0x1B8C97BE0](v12);

  MEMORY[0x1B8C97BE0](46, 0xE100000000000000);
  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

uint64_t sub_1B6AB3D58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1)
  {
    v4 = *a1;
  }

  else
  {
    if ([objc_opt_self() isMainThread])
    {
      sub_1B6AB9660();
      v7 = sub_1B6AB3BA0(sub_1B6AB4998, a2, "AppAnalytics/LazyEventProcessor.swift", 37);
    }

    else
    {
      sub_1B698C854();
      v8 = sub_1B6AB9990();
      sub_1B69AB940();
      sub_1B6AB99A0();

      v7 = v10;
    }

    *a1 = v7;
  }

  *a3 = v4;
}

uint64_t sub_1B6AB3E70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = a1;
    v5 = (*(a1 + 16))();
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;
  }

  *a2 = v5;
}

void *LazyEventProcessor.__allocating_init(underlyingProcessorProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  sub_1B69AB9AC();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  v4[4] = v5;
  return v4;
}

Swift::Void __swiftcall LazyEventProcessor.resolve()()
{
  sub_1B6AB3A74();
}

void *LazyEventProcessor.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t LazyEventProcessor.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t LazyEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB3A74();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a1;
  sub_1B6AB360C(sub_1B6AB406C, v8, v6);
}

uint64_t sub_1B6AB406C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  v6 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v6 + 8))(v4, v2, v3, ObjectType, v6);
}

uint64_t LazyEventProcessor.didEnterGroup(_:)(uint64_t a1)
{
  result = sub_1B6AB3A74();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (result + 40);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      result = swift_unknownObjectRelease();
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t LazyEventProcessor.didLeaveGroup(_:)(uint64_t a1)
{
  result = sub_1B6AB3A74();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (result + 40);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 24);
      swift_unknownObjectRetain();
      v10(a1, ObjectType, v8);
      result = swift_unknownObjectRelease();
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }

  return result;
}

uint64_t sub_1B6AB42C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB3A74();
  v6[2] = a1;
  sub_1B6AB360C(a2, v6, v4);
}

uint64_t LazyEventProcessor.didEndSession(_:endDate:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB3A74();
  v6[2] = a1;
  v6[3] = a2;
  sub_1B6AB360C(sub_1B6AB43A0, v6, v4);
}

uint64_t sub_1B6AB43F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1B6AB3A74();
  v8[2] = a1;
  sub_1B6AB360C(a4, v8, v6);
}

uint64_t sub_1B6AB4450(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB3A74();
  v6[2] = a1;
  v6[3] = a2;
  sub_1B6AB360C(sub_1B6AB49A0, v6, v4);
}

void LazyEventProcessor.flush(callbackQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = dispatch_group_create();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1B6AB3A74();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v4 + 32);
    while (v7 < *(v5 + 16))
    {
      v12 = *v8;
      aBlock[6] = &unk_1F2E868A0;
      v13 = swift_dynamicCastObjCProtocolConditional();
      if (v13)
      {
        v14 = v13;
        swift_unknownObjectRetain();
        if (v3)
        {
          dispatch_group_enter(v3);
        }

        v9 = swift_allocObject();
        *(v9 + 16) = v3;
        aBlock[4] = sub_1B6AB46C8;
        aBlock[5] = v9;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B698E534;
        aBlock[3] = &block_descriptor_17;
        v10 = _Block_copy(aBlock);
        v11 = v3;

        [v14 flushWithCallbackQueue:a1 completion:v10];
        _Block_release(v10);
        swift_unknownObjectRelease();
      }

      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    if (v3)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = a3;
      v16 = v3;
      sub_1B69A18C0(a2);
      sub_1B69877A4(a1, sub_1B6A0A80C, v15);
    }
  }
}

void sub_1B6AB46C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

uint64_t sub_1B6AB47F0(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v5 + 48))(v3, v2, ObjectType, v5);
}

uint64_t sub_1B6AB485C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 40))(v2, ObjectType, v4);
}

uint64_t sub_1B6AB48BC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  return (*(v4 + 32))(v2, ObjectType, v4);
}

void *sub_1B6AB4954@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

double CrashDetectorType.lastSessionCrashDetails.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1B6AC3610;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t static CrashDetector.shared.setter(uint64_t a1)
{
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDBCADE8 = a1;
}

uint64_t (*static CrashDetector.shared.modify())()
{
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B6AB4B20@<X0>(void *a1@<X8>)
{
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EDBCADE8;
}

uint64_t sub_1B6AB4BA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EDBCADE0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EDBCADE8 = v1;
}

uint64_t CrashDetector.crashDetected.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void CrashDetector.lastSessionCrashDetails.getter(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_1B69EC458(v4, v5, v6, v7, v8, v9);

  os_unfair_lock_unlock((v3 + 72));
}

uint64_t sub_1B6AB4CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1B6AB92B0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
    sub_1B6981634(v7);
    v4 = sub_1B6AB92B0();
    v5 = [v1 BOOLForKey_];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_1B6981634(v7);
    return 1;
  }

  return v5;
}

uint64_t sub_1B6AB4D9C(char a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v10 = *(Strong + 24);

    os_unfair_lock_lock((v10 + 72));
    *(v10 + 17) = a1 & 1;
    v27 = a1;
    v12 = *(v10 + 24);
    v11 = *(v10 + 32);
    v13 = *(v10 + 40);
    v25 = *(v10 + 56);
    v26 = *(v10 + 48);
    v24 = *(v10 + 64);
    *(v10 + 24) = v3;
    *(v10 + 32) = v4;
    *(v10 + 40) = v5;
    *(v10 + 48) = v6;
    *(v10 + 56) = v7;
    *(v10 + 64) = v8;
    sub_1B69EC458(v3, v4, v5, v6, v7, v8);
    sub_1B6AB6730(v12, v11, v13, v26, v25, v24);
    os_unfair_lock_unlock((v10 + 72));

    v14 = *(v28 + 24);
    os_unfair_lock_lock((v14 + 72));
    v15 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 72));
    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    sub_1B6AB9900();
    sub_1B69868C0(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B6ABF500;
    v17 = sub_1B698CEC0();
    v18 = MEMORY[0x1E69E6158];
    v19 = 1702195828;
    if (v15)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = v17;
    if (v15)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    *(v16 + 32) = v20;
    *(v16 + 40) = v21;
    if (v27)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v19 = 0x65736C6166;
      v22 = 0xE500000000000000;
    }

    *(v16 + 96) = v18;
    *(v16 + 104) = v17;
    *(v16 + 72) = v19;
    *(v16 + 80) = v22;
    sub_1B6AB8F70();

    sub_1B6AB9900();
    sub_1B6AB8F70();
  }

  else
  {
    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    return sub_1B6AB8F70();
  }
}

void sub_1B6AB509C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B69868C0(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = v27 - v7;
  v9 = [BiomeLibrary() OSAnalytics];
  swift_unknownObjectRelease();
  v10 = [v9 Stability];
  swift_unknownObjectRelease();
  v11 = [v10 Crash];
  swift_unknownObjectRelease();
  v12 = sub_1B6AB8DB0();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v8, 1, 1, v12);
  v14 = sub_1B6AB8D20();
  v15 = 0;
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    v15 = sub_1B6AB8D20();
    (*(v13 + 8))(v8, v12);
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E698F2D0]) initWithStartDate:v14 endDate:v15 maxEvents:1 lastN:1 reversed:0];

  v17 = sub_1B6AB92B0();
  v18 = [v11 publisherWithUseCase:v17 options:v16];

  sub_1B6AB66D0();
  v19 = sub_1B6AB9500();
  v32 = sub_1B6AB5520;
  v33 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1B6AB568C;
  v31 = &block_descriptor_18;
  v20 = _Block_copy(&aBlock);
  v21 = [v18 reduceWithInitial:v19 nextPartialResult:v20];
  _Block_release(v20);

  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v32 = sub_1B6AB671C;
  v33 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1B6AB5A9C;
  v31 = &block_descriptor_8_0;
  v23 = _Block_copy(&aBlock);

  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v27[1];
  v32 = sub_1B6AB6724;
  v33 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1B6AB6250;
  v31 = &block_descriptor_14_0;
  v25 = _Block_copy(&aBlock);

  v26 = [v21 sinkWithCompletion:v23 receiveInput:v25];
  _Block_release(v25);
  _Block_release(v23);
}

void sub_1B6AB5520(id a1@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    sub_1B698FE74(a2, v13);
    sub_1B69868C0(0, &qword_1EB95C8F0, sub_1B6AB66D0, MEMORY[0x1E69E62F8]);
    v8 = v7;
    if (swift_dynamicCast())
    {
      v14 = v12;
      v9 = v6;
      MEMORY[0x1B8C97D30]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B6AB9540();
      }

      sub_1B6AB9580();
      v10 = v14;
      a3[3] = v8;

      *a3 = v10;
    }

    else
    {

      sub_1B698FE74(a2, a3);
    }
  }

  else
  {

    sub_1B698FE74(a2, a3);
  }
}

id sub_1B6AB568C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[3] = swift_getObjectType();
  v11[0] = a2;

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v10, v11, v7);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v8 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);

  return v8;
}

uint64_t sub_1B6AB5750(void *a1, uint64_t (*a2)(void, _OWORD *))
{
  v4 = [a1 state];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [a1 error];
      if (v5)
      {
        v6 = v5;
        if (qword_1EB95A9D8 != -1)
        {
          swift_once();
        }

        sub_1B6AB98E0();
        sub_1B69868C0(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1B6ABD890;
        swift_getErrorValue();
        v8 = sub_1B6ABA1A0();
        v10 = v9;
        *(v7 + 56) = MEMORY[0x1E69E6158];
        *(v7 + 64) = sub_1B698CEC0();
        *(v7 + 32) = v8;
        *(v7 + 40) = v10;
        sub_1B6AB8F70();
      }

      v15[0] = xmmword_1B6AC3610;
      memset(&v15[1], 0, 32);
      return a2(0, v15);
    }

    else
    {
      if (qword_1EB95A9D8 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B69868C0(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B6ABD890;
      v13 = [a1 state];
      v14 = MEMORY[0x1E69E65A8];
      *(v12 + 56) = MEMORY[0x1E69E6530];
      *(v12 + 64) = v14;
      *(v12 + 32) = v13;
      sub_1B6AB8F70();
    }
  }

  else
  {
    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    sub_1B6AB9900();

    return sub_1B6AB8F70();
  }
}

void sub_1B6AB5A9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1B6AB5B04(uint64_t a1, void (*a2)(BOOL, __int128 *))
{
  *&v43 = a1;
  sub_1B69868C0(0, &qword_1EB95C8F0, sub_1B6AB66D0, MEMORY[0x1E69E62F8]);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v42 = a2;
    *&v43 = MEMORY[0x1E69E7CC0];
    if (v46 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B6AB9E60())
    {
      v4 = 0;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8C98510](v4, v46);
        }

        else
        {
          if (v4 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v6 = *(v46 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v9 = [v6 bundleID];
        if (v9)
        {
          v10 = v9;
          v11 = sub_1B6AB92E0();
          v13 = v12;
        }

        else
        {
          v11 = 0;
          v13 = 0;
        }

        v14 = [objc_opt_self() mainBundle];
        v15 = [v14 bundleIdentifier];

        if (v15)
        {
          v16 = sub_1B6AB92E0();
          v18 = v17;

          if (v13)
          {
            if (!v18)
            {
              goto LABEL_23;
            }

            if (v11 == v16 && v13 == v18)
            {
            }

            else
            {
              v19 = sub_1B6ABA0F0();

              if ((v19 & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          else if (v18)
          {

LABEL_26:

            goto LABEL_7;
          }
        }

        else if (v13)
        {
LABEL_23:

          goto LABEL_7;
        }

        sub_1B6AB9D50();
        v5 = *(v43 + 16);
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        sub_1B6AB9D60();
LABEL_7:
        ++v4;
        if (v8 == i)
        {
          v21 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_36:

    v22 = v21 < 0 || (v21 & 0x4000000000000000) != 0;
    if (v22)
    {
      v23 = sub_1B6AB9E60();
    }

    else
    {
      v23 = *(v21 + 16);
    }

    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    sub_1B6AB9900();
    sub_1B69868C0(0, &qword_1EDBCCC50, sub_1B6994A40, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B6ABF500;
    if (v22)
    {
      v25 = sub_1B6AB9E60();
    }

    else
    {
      v25 = *(v21 + 16);
    }

    v26 = MEMORY[0x1E69E65A8];
    *(v24 + 56) = MEMORY[0x1E69E6530];
    *(v24 + 64) = v26;
    *(v24 + 32) = v25;
    v27 = [objc_opt_self() mainBundle];
    v28 = [v27 bundleIdentifier];

    if (v28)
    {
      v29 = sub_1B6AB92E0();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    *(v24 + 96) = MEMORY[0x1E69E6158];
    *(v24 + 104) = sub_1B698CEC0();
    v32 = 0x6E776F6E6B6E75;
    if (v31)
    {
      v32 = v29;
    }

    v33 = 0xE700000000000000;
    if (v31)
    {
      v33 = v31;
    }

    *(v24 + 72) = v32;
    *(v24 + 80) = v33;
    sub_1B6AB8F70();

    if (!v23)
    {

      v36 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v37 = 2;
      goto LABEL_59;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1B8C98510](0, v21);
      goto LABEL_57;
    }

    if (*(v21 + 16))
    {
      v34 = *(v21 + 32);
LABEL_57:
      v35 = v34;

      sub_1B6AB60DC(v35, &v43);

      v37 = *(&v43 + 1);
      v36 = v43;
      v39 = *(&v44 + 1);
      v38 = v44;
      v41 = *(&v45 + 1);
      v40 = v45;
LABEL_59:
      *&v43 = v36;
      *(&v43 + 1) = v37;
      *&v44 = v38;
      *(&v44 + 1) = v39;
      *&v45 = v40;
      *(&v45 + 1) = v41;
      v42(v23 != 0, &v43);
      return sub_1B6AB6730(v36, v37, v38, v39, v40, v41);
    }

    __break(1u);
  }

  else
  {
    if (qword_1EB95A9D8 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B6AB8F70();
    v43 = xmmword_1B6AC3610;
    v44 = 0u;
    v45 = 0u;
    return (a2)(0, &v43);
  }

  return result;
}

void sub_1B6AB60DC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 exception];
  if (v4)
  {
    v5 = v4;
    v6 = [v5 type];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1B6AB92E0();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v13 = [v5 signal];
    if (v13)
    {
      v14 = v13;
      v12 = sub_1B6AB92E0();
      v11 = v15;
    }

    else
    {

      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v8 = 0;
    v10 = 1;
  }

  v16 = [a1 terminationReason];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 namespaceName];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1B6AB92E0();
      v22 = v21;
    }

    else
    {

      v20 = 0;
      v22 = 0;
    }
  }

  else
  {
    v20 = 0;
    v22 = 1;
  }

  *a2 = v8;
  a2[1] = v10;
  a2[2] = v12;
  a2[3] = v11;
  a2[4] = v20;
  a2[5] = v22;
}

uint64_t sub_1B6AB6250(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t CrashDetector.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 24);

  return v0;
}

uint64_t CrashDetector.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6AB6484()
{
  v1 = *(*v0 + 24);
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

void sub_1B6AB64C0(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 24);
  os_unfair_lock_lock((v3 + 72));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  v9 = *(v3 + 64);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_1B69EC458(v4, v5, v6, v7, v8, v9);

  os_unfair_lock_unlock((v3 + 72));
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics12CrashDetailsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B6AB6584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 56))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1B6AB65F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void sub_1B6AB6668()
{
  if (!qword_1EB95C8E0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1B6AB9D30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C8E0);
    }
  }
}

unint64_t sub_1B6AB66D0()
{
  result = qword_1EB95C8E8;
  if (!qword_1EB95C8E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB95C8E8);
  }

  return result;
}

uint64_t sub_1B6AB6724(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1B6AB5B04(a1, *(v1 + 16));
}

uint64_t sub_1B6AB6730(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 2)
  {
    sub_1B6AB677C(result, a2);

    return sub_1B6AB67C4(a5, a6);
  }

  return result;
}

uint64_t sub_1B6AB677C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B6AB67C4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B6AB67E0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1B8C98510](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1B6AB9E60();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t ViewingSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAViewingSession_identifier);
  v2 = *(v0 + OBJC_IVAR___AAViewingSession_identifier + 8);

  return v1;
}

id ViewingSession.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ViewingSessionManagerType.viewingSession(for:object:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B6AB92B0();
  v6 = [v3 viewingSessionForContentIdentifier:v5 object:a3 onEnd:0];

  return v6;
}

void *sub_1B6AB6AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B6AB8E40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8E30();
  v11 = sub_1B6AB8DD0();
  v13 = v12;
  v14 = *(v7 + 8);
  v14(v10, v6);
  v3[2] = v11;
  v3[3] = v13;
  v15 = [objc_opt_self() hashTableWithOptions_];
  v16 = MEMORY[0x1E69E7CC0];
  v3[6] = v15;
  v3[7] = v16;
  sub_1B6AB8E30();
  v17 = sub_1B6AB8DD0();
  v19 = v18;
  v14(v10, v6);
  v20 = type metadata accessor for ViewingSession();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR___AAViewingSession_identifier];
  *v22 = v17;
  v22[1] = v19;
  v24.receiver = v21;
  v24.super_class = v20;
  v3[8] = objc_msgSendSuper2(&v24, sel_init);
  v3[4] = a1;
  v3[5] = a2;
  return v3;
}

void sub_1B6AB6C50()
{
  v1 = v0;
  v24 = sub_1B6AB8E40();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 56);
  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 40);
    while (v8 < *(v6 + 16))
    {
      ++v8;
      v11 = *(v9 - 1);
      v10 = *v9;
      v26 = *(v1 + 64);
      v12 = v26;

      v13 = v12;
      v11(&v26);

      v9 += 2;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v14 = *(v1 + 56);
    *(v1 + 56) = MEMORY[0x1E69E7CC0];

    sub_1B6AB8E30();
    v15 = sub_1B6AB8DD0();
    v17 = v16;
    (*(v2 + 8))(v5, v24);
    v18 = type metadata accessor for ViewingSession();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR___AAViewingSession_identifier];
    *v20 = v15;
    v20[1] = v17;
    v25.receiver = v19;
    v25.super_class = v18;
    v21 = objc_msgSendSuper2(&v25, sel_init);
    v22 = *(v1 + 64);
    *(v1 + 64) = v21;
  }
}

uint64_t sub_1B6AB6E1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6AB6E74(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0();
  }
}

id ViewingSessionManager.viewingSession(for:object:onEnd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B6AB7000();
  v11 = sub_1B6AB7274(v5, a3, a1, a2);
  if (a4)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a5;
    swift_beginAccess();
    v13 = v11[7];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11[7] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1B69E4C2C(0, v13[2] + 1, 1, v13);
      v11[7] = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1B69E4C2C((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1B6AB8138;
    v17[5] = v12;
    v11[7] = v13;
    swift_endAccess();
  }

  v18 = sub_1B6AB8098(v11);

  v19 = *(v18 + 64);

  return v19;
}

uint64_t sub_1B6AB7000()
{
  v1 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v18 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_26;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v16 = v1;
    v17 = v0;
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8C98510](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          v3 = sub_1B6AB9E60();
          goto LABEL_3;
        }
      }

      v7 = [*(v5 + 48) allObjects];
      v1 = sub_1B6AB9510();

      if (v1 >> 62)
      {
        v0 = sub_1B6AB9E60();
      }

      else
      {
        v0 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v0)
      {
        v0 = &v18;
        sub_1B6AB9D50();
        v1 = *(v18 + 16);
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        sub_1B6AB9D60();
      }

      else
      {
      }

      ++v4;
      if (v6 == v3)
      {
        v8 = v18;
        v1 = v16;
        v0 = v17;
        goto LABEL_20;
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v9 = *(v0 + v1);
  *(v0 + v1) = v8;

  v11 = OBJC_IVAR___AAViewingSessionManager_activeSession;
  if (*(v0 + OBJC_IVAR___AAViewingSessionManager_activeSession))
  {
    v12 = *(v0 + v1);
    v18 = *(v0 + OBJC_IVAR___AAViewingSessionManager_activeSession);
    MEMORY[0x1EEE9AC00](result);
    v15[2] = &v18;

    v13 = sub_1B6AB67E0(sub_1B6AB8768, v15, v12);

    if ((v13 & 1) == 0)
    {
      v14 = *(v0 + v11);
      *(v0 + v11) = 0;
    }
  }

  return result;
}

void *sub_1B6AB7274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v26 = a3;
  v27 = a4;
  if (v9 >> 62)
  {
LABEL_42:
    v10 = sub_1B6AB9E60();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
LABEL_14:

    v12 = *(a1 + OBJC_IVAR___AAViewingSessionManager_activeSession);
    v14 = v26;
    v15 = v27;
    if (v12)
    {
      if (*(v12 + 32) == v26 && *(v12 + 40) == v27)
      {
        goto LABEL_21;
      }

      v17 = *(v12 + 32);
      v18 = *(v12 + 40);
      if (sub_1B6ABA0F0())
      {
        if ((sub_1B6ABA0F0() & 1) == 0)
        {

LABEL_40:
          v25 = sub_1B6AB7550(v14, v15, a2);

          return v25;
        }

LABEL_21:
        v19 = *(v12 + 48);

        [v19 addObject_];
        return v12;
      }
    }

    return sub_1B6AB7550(v14, v15, a2);
  }

  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B8C98510](v11, v9);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_42;
      }

      v12 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_13;
      }
    }

    if ([*(v12 + 48) containsObject_])
    {
      break;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_14;
    }
  }

  v20 = *(a1 + OBJC_IVAR___AAViewingSessionManager_activeSession);
  v14 = v26;
  v15 = v27;
  if (v20)
  {
    v21 = *(v12 + 16) == *(v20 + 16) && *(v12 + 24) == *(v20 + 24);
    if (v21 || (sub_1B6ABA0F0()) && (*(v12 + 32) == v26 && *(v12 + 40) == v27 || (sub_1B6ABA0F0()))
    {

      return v20;
    }
  }

  if (*(v12 + 32) != v26 || *(v12 + 40) != v27)
  {
    v22 = *(v12 + 32);
    v23 = *(v12 + 40);
    if ((sub_1B6ABA0F0() & 1) == 0)
    {
      if ((sub_1B6ABA0F0() & 1) == 0)
      {
        goto LABEL_40;
      }

      return sub_1B6AB7550(v14, v15, a2);
    }
  }

  return v12;
}

void *sub_1B6AB7550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for ViewingSessionManager.Session();
  swift_allocObject();

  v8 = sub_1B6AB6AC4(a1, a2);
  [v8[6] addObject_];
  v9 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();

  MEMORY[0x1B8C97D30](v10);
  if (*((*(v4 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v12 = *((*(v4 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B6AB9540();
  }

  sub_1B6AB9580();
  swift_endAccess();
  return v8;
}

uint64_t ViewingSessionManager.remove(object:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7 >> 62)
  {
LABEL_21:
    v8 = sub_1B6AB9E60();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1B8C98510](v9, v7);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_18:
          __break(1u);
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v11 = *(v7 + 8 * v9 + 32);

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_18;
        }
      }

      v13 = *(v11 + 32) == a2 && *(v11 + 40) == a3;
      if (v13 || (sub_1B6ABA0F0() & 1) != 0)
      {
        v10 = *(v11 + 48);
        [v10 removeObject_];
      }

      ++v9;
    }

    while (v12 != v8);
  }
}

Swift::Void __swiftcall ViewingSessionManager.endSession(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();

  v5 = sub_1B6AB8280((v1 + v4), countAndFlagsBits, object);

  v6 = *(v1 + v4);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v8 = *(v1 + v4);
    }

    v7 = sub_1B6AB9E60();
    if (v7 >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
LABEL_3:
      sub_1B6AB860C(v5, v7);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
  swift_endAccess();
  __break(1u);
}

Swift::Void __swiftcall ViewingSessionManager.endActiveViewingSession()()
{
  v1 = OBJC_IVAR___AAViewingSessionManager_activeSession;
  if (*(v0 + OBJC_IVAR___AAViewingSessionManager_activeSession))
  {

    sub_1B6AB6C50();

    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

Swift::Void __swiftcall ViewingSessionManager.endAllViewingSessions()()
{
  v1 = v0;
  v2 = OBJC_IVAR___AAViewingSessionManager_activeSession;
  if (*(v0 + OBJC_IVAR___AAViewingSessionManager_activeSession))
  {

    sub_1B6AB6C50();

    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;

  v4 = OBJC_IVAR___AAViewingSessionManager_sessions;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = sub_1B6AB9E60();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C98510](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      sub_1B6AB6C50();

      ++v7;
    }

    while (v9 != v6);
  }
}

id ViewingSessionManager.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___AAViewingSessionManager_sessions] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___AAViewingSessionManager_activeSession] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1B6AB7D5C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1B6AB9E60();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1B6AB9CE0();
  *v1 = result;
  return result;
}

uint64_t sub_1B6AB7E3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B6AB9E60();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1B6AB9CE0();
}

uint64_t sub_1B6AB7EA0(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0() & 1;
  }
}

unint64_t sub_1B6AB7EF4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = *v3 + 32;
  v9 = v8 + 8 * result;
  sub_1B69E865C(0);
  result = swift_arrayDestroy();
  v10 = __OFSUB__(a3, v4);
  v11 = a3 - v4;
  if (v10)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v7 + 16);
  if (__OFSUB__(v12, a2))
  {
    goto LABEL_19;
  }

  result = v9 + 8 * a3;
  v13 = v8 + 8 * a2;
  if (result < v13 || result >= v13 + 8 * (v12 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v13)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v15 = *(v7 + 16);
  v10 = __OFADD__(v15, v11);
  v16 = v15 + v11;
  if (v10)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v16;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B6AB7FD8(unint64_t result, uint64_t a2)
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

    v4 = sub_1B69E3D38(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1B6AB7EF4(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B6AB8098(uint64_t a1)
{
  v3 = OBJC_IVAR___AAViewingSessionManager_activeSession;
  v4 = *(v1 + OBJC_IVAR___AAViewingSessionManager_activeSession);
  if (v4)
  {
    v5 = *(a1 + 16) == *(v4 + 16) && *(a1 + 24) == *(v4 + 24);
    if (!v5 && (sub_1B6ABA0F0() & 1) == 0)
    {

      sub_1B6AB6C50();
    }
  }

  v6 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B6AB8138(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1B6AB8164(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v7 = sub_1B6AB9E60();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8C98510](v8, a1);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    if (*(v9 + 32) == a2 && *(v9 + 40) == a3)
    {
      break;
    }

    v11 = sub_1B6ABA0F0();

    if (v11)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_21;
    }
  }

  return v8;
}

uint64_t sub_1B6AB8280(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *a1;
  v8 = sub_1B6AB8164(*a1, a2, a3);
  v10 = v8;
  if (v3)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1B6AB9E60();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1B6AB9E60())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1B8C98510](v11, v7);
      goto LABEL_16;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v13 = *(v7 + 8 * v11 + 32);

LABEL_16:
    if (*(v13 + 32) == a2 && *(v13 + 40) == a3)
    {
LABEL_8:
    }

    else
    {
      v14 = sub_1B6ABA0F0();

      if ((v14 & 1) == 0)
      {
        if (v10 != v11)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x1B8C98510](v10, v7);
            v15 = MEMORY[0x1B8C98510](v11, v7);
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v10 >= v16)
            {
              goto LABEL_51;
            }

            if (v11 >= v16)
            {
              goto LABEL_52;
            }

            v15 = *(v7 + 32 + 8 * v11);
            v24 = *(v7 + 32 + 8 * v10);
          }

          v17 = v6;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = sub_1B6AB7E3C(v7);
            v18 = (v7 >> 62) & 1;
          }

          else
          {
            LODWORD(v18) = 0;
          }

          v19 = v7 & 0xFFFFFFFFFFFFFF8;
          v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v15;

          if ((v7 & 0x8000000000000000) != 0 || v18)
          {
            v7 = sub_1B6AB7E3C(v7);
            v19 = v7 & 0xFFFFFFFFFFFFFF8;
            if ((v11 & 0x8000000000000000) != 0)
            {
LABEL_43:
              __break(1u);
              return v10;
            }
          }

          else if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v11 >= *(v19 + 16))
          {
            goto LABEL_49;
          }

          v6 = v17;
          v21 = v19 + 8 * v11;
          v22 = *(v21 + 32);
          *(v21 + 32) = v24;

          *v17 = v7;
        }

        v12 = __OFADD__(v10++, 1);
        if (v12)
        {
          goto LABEL_48;
        }
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return sub_1B6AB9E60();
}

uint64_t sub_1B6AB850C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ViewingSessionManager.Session();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B6AB9E60();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B6AB9E60();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6AB860C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B6AB9E60();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1B6AB9E60();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1B6AB7D5C(result);

  return sub_1B6AB850C(v4, v2, 0);
}
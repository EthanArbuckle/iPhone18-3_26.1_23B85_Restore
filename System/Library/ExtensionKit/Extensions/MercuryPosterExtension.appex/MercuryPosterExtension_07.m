unint64_t sub_1000A12F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_100132078);
    v3 = sub_1000E9EA4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000299EC(v4, &v13, &qword_100132080);
      v5 = v13;
      v6 = v14;
      result = sub_10009F208(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100032864(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A1420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_100132068);
    v3 = sub_1000E9EA4();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_10009F4AC(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A1508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_100132070);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_10009F514(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A15FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&unk_100132100);
    v3 = sub_1000E9EA4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000299EC(v4, v13, &qword_10012FA58);
      result = sub_10009F174(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100032864(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A1738(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_100132120);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 4);

      result = sub_10009F1B8(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = v3[7] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A1858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_100132060);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_10009F284(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A1950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&unk_1001320E0);
    v3 = sub_1000E9EA4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000299EC(v4, &v11, &unk_100131D50);
      v5 = v11;
      result = sub_10009F630(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100032864(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A1A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_100130E90);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_100002324(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A1B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000125FC(&qword_100133180);
    v3 = sub_1000E9EA4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v5;
      v10 = v6;
      v11 = v8;
      result = sub_100002324(v9);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v14 = (v3[7] + 24 * result);
      *v14 = v10;
      v14[1] = v11;
      v14[2] = v7;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000A1CA4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000125FC(a2);
    v4 = sub_1000E9EA4();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v15 = *i;
      sub_1000A1DD4(v6, v7, v8);

      result = sub_10009F2C8(v6, v7, v8);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v4[6] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      *(v4[7] + 16 * result) = v15;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000A1DD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 8)
  {
  }

  if (a3 == 7)
  {
  }

  return result;
}

uint64_t sub_1000A1DF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 8)
  {
  }

  if (a3 == 7)
  {
  }

  return result;
}

uint64_t sub_1000A1E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PackedHalf2(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PackedHalf2(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PackedHalf3(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PackedHalf3(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PackedHalf3(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_1000A1F5C(void *a1)
{
  v23 = 0;
  [a1 setConstantValue:&v23 type:33 atIndex:1];
  v2 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v3 = sub_1000E98E4();
  [v2 setLabel:v3];

  v4 = qword_10012F7B8;
  if (!qword_10012F7B8)
  {
    __break(1u);
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  v5 = sub_1000E98E4();
  v22 = 0;
  v6 = [v4 newFunctionWithName:v5 constantValues:a1 error:&v22];
  swift_unknownObjectRelease();

  if (!v6)
  {
    v18 = v22;
    v19 = sub_1000E92E4();

    v10 = v19;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_14;
  }

  v7 = v22;
  [v2 setVertexFunction:v6];
  swift_unknownObjectRelease();
  v8 = qword_10012F7B8;
  if (!qword_10012F7B8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v6 = sub_1000E98E4();
  v22 = 0;
  v9 = [v8 newFunctionWithName:v6 constantValues:a1 error:&v22];
  swift_unknownObjectRelease();

  v10 = v22;
  if (!v9)
  {
LABEL_14:
    v20 = v10;
    sub_1000E92E4();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_15;
  }

  v11 = v22;
  [v2 setFragmentFunction:v9];
  swift_unknownObjectRelease();
  v12 = [v2 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];

  if (!v13)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  [v13 setPixelFormat:81];
  [v13 setBlendingEnabled:0];
  if (!qword_10012F7B0)
  {
    goto LABEL_12;
  }

  v22 = 0;
  v14 = [qword_10012F7B0 newRenderPipelineStateWithDescriptor:v2 error:&v22];
  v6 = v22;
  if (v14)
  {
    v15 = v14;
    v16 = v22;

    return v15;
  }

LABEL_15:
  v21 = v6;
  sub_1000E92E4();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1000A22C8(void *a1)
{
  v23 = 1;
  [a1 setConstantValue:&v23 type:33 atIndex:1];
  v2 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v3 = sub_1000E98E4();
  [v2 setLabel:v3];

  v4 = qword_10012F7B8;
  if (!qword_10012F7B8)
  {
    __break(1u);
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  v5 = sub_1000E98E4();
  v22 = 0;
  v6 = [v4 newFunctionWithName:v5 constantValues:a1 error:&v22];
  swift_unknownObjectRelease();

  if (!v6)
  {
    v18 = v22;
    v19 = sub_1000E92E4();

    v10 = v19;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_14;
  }

  v7 = v22;
  [v2 setVertexFunction:v6];
  swift_unknownObjectRelease();
  v8 = qword_10012F7B8;
  if (!qword_10012F7B8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v6 = sub_1000E98E4();
  v22 = 0;
  v9 = [v8 newFunctionWithName:v6 constantValues:a1 error:&v22];
  swift_unknownObjectRelease();

  v10 = v22;
  if (!v9)
  {
LABEL_14:
    v20 = v10;
    sub_1000E92E4();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_15;
  }

  v11 = v22;
  [v2 setFragmentFunction:v9];
  swift_unknownObjectRelease();
  v12 = [v2 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];

  if (!v13)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  [v13 setPixelFormat:81];
  [v13 setBlendingEnabled:1];
  [v13 setRgbBlendOperation:0];
  [v13 setAlphaBlendOperation:0];
  [v13 setSourceRGBBlendFactor:4];
  [v13 setDestinationRGBBlendFactor:5];
  [v13 setSourceAlphaBlendFactor:1];
  [v13 setDestinationAlphaBlendFactor:5];
  if (!qword_10012F7B0)
  {
    goto LABEL_12;
  }

  v22 = 0;
  v14 = [qword_10012F7B0 newRenderPipelineStateWithDescriptor:v2 error:&v22];
  v6 = v22;
  if (v14)
  {
    v15 = v14;
    v16 = v22;

    return v15;
  }

LABEL_15:
  v21 = v6;
  sub_1000E92E4();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1000A26B0(void *a1)
{
  v23 = 2;
  [a1 setConstantValue:&v23 type:33 atIndex:1];
  v2 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  v3 = sub_1000E98E4();
  [v2 setLabel:v3];

  v4 = qword_10012F7B8;
  if (!qword_10012F7B8)
  {
    __break(1u);
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  v5 = sub_1000E98E4();
  v22 = 0;
  v6 = [v4 newFunctionWithName:v5 constantValues:a1 error:&v22];
  swift_unknownObjectRelease();

  if (!v6)
  {
    v18 = v22;
    v19 = sub_1000E92E4();

    v10 = v19;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_14;
  }

  v7 = v22;
  [v2 setVertexFunction:v6];
  swift_unknownObjectRelease();
  v8 = qword_10012F7B8;
  if (!qword_10012F7B8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v6 = sub_1000E98E4();
  v22 = 0;
  v9 = [v8 newFunctionWithName:v6 constantValues:a1 error:&v22];
  swift_unknownObjectRelease();

  v10 = v22;
  if (!v9)
  {
LABEL_14:
    v20 = v10;
    sub_1000E92E4();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_15;
  }

  v11 = v22;
  [v2 setFragmentFunction:v9];
  swift_unknownObjectRelease();
  v12 = [v2 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];

  if (!v13)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  [v13 setPixelFormat:81];
  [v13 setBlendingEnabled:1];
  [v13 setRgbBlendOperation:0];
  [v13 setAlphaBlendOperation:0];
  [v13 setSourceRGBBlendFactor:4];
  [v13 setDestinationRGBBlendFactor:5];
  [v13 setSourceAlphaBlendFactor:1];
  [v13 setDestinationAlphaBlendFactor:5];
  if (!qword_10012F7B0)
  {
    goto LABEL_12;
  }

  v22 = 0;
  v14 = [qword_10012F7B0 newRenderPipelineStateWithDescriptor:v2 error:&v22];
  v6 = v22;
  if (v14)
  {
    v15 = v14;
    v16 = v22;

    return v15;
  }

LABEL_15:
  v21 = v6;
  sub_1000E92E4();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1000A2A98(unsigned __int8 a1)
{
  v2 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  v5 = a1 + 1;
  [v2 setConstantValue:&v5 type:33 atIndex:0];
  sub_1000125FC(&qword_1001303F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000F3510;
  *(v3 + 32) = sub_1000A1F5C(v2);
  *(v3 + 40) = sub_1000A22C8(v2);
  *(v3 + 48) = sub_1000A26B0(v2);

  return v3;
}

unint64_t sub_1000A2B88()
{
  sub_1000125FC(&qword_100132130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EDAA0;
  *(inited + 32) = 0;
  *(inited + 40) = sub_1000A2A98(0);
  *(inited + 48) = 1;
  *(inited + 56) = sub_1000A2A98(1u);
  *(inited + 64) = 2;
  *(inited + 72) = sub_1000A2A98(2u);
  *(inited + 80) = 3;
  *(inited + 88) = sub_1000A2A98(3u);
  v1 = sub_1000A1508(inited);
  swift_setDeallocating();
  sub_1000125FC(&qword_100132138);
  swift_arrayDestroy();
  return v1;
}

__n128 _s15VertexAttributeVwCP(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t _s15VertexAttributeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 22))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15VertexAttributeVwst(uint64_t result, int a2, int a3)
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

  *(result + 22) = v3;
  return result;
}

__n128 sub_1000A2CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000A2CFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A2D1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

id static ComputePipelineHelper.dispatch1D(encoder:pipeline:count:)(void *a1, id a2, uint64_t a3)
{
  result = sub_100013B98([a2 threadExecutionWidth], 1, v14);
  v6 = v14[0];
  v7 = a3 + v14[0];
  if (__OFADD__(a3, v14[0]))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v14[0])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 != 0x8000000000000000 || v14[0] != -1)
  {
    v11 = v14[1];
    v12 = v14[2];
    sub_100013B98(v9 / v14[0], 1, v14);
    v13[0] = v6;
    v13[1] = v11;
    v13[2] = v12;
    return [a1 dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  }

LABEL_12:
  __break(1u);
  return result;
}

id static ComputePipelineHelper.dispatch2D(encoder:pipeline:width:height:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 threadExecutionWidth];
  result = [a2 maxTotalThreadsPerThreadgroup];
  if (v8 >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v8;
  }

  if (v8 >= a4)
  {
    v8 = a4;
  }

  v11 = v10 * v8;
  if ((v10 * v8) >> 64 != (v10 * v8) >> 63)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  while (result < v11)
  {
    v8 /= 2;
    v11 = v10 * v8;
    if ((v10 * v8) >> 64 != (v10 * v8) >> 63)
    {
      __break(1u);
      break;
    }
  }

  v12 = a3 + v10;
  if (__OFADD__(a3, v10))
  {
    goto LABEL_22;
  }

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v10)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v14 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_28;
  }

  v15 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  v13 = __OFSUB__(v15, 1);
  v16 = v15 - 1;
  if (v13)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v8)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v16 != 0x8000000000000000 || v8 != -1)
  {
    sub_100013B98(v14 / v10, v16 / v8, &v18);
    v17[0] = v10;
    v17[1] = v8;
    v17[2] = 1;
    return [a1 dispatchThreadgroups:&v18 threadsPerThreadgroup:v17];
  }

LABEL_29:
  __break(1u);
  return result;
}

void *sub_1000A2FC4(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1000E9DC4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E9E64())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1000E9D74();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1000E9DA4();
      sub_1000E9DD4();
      sub_1000E9DE4();
      sub_1000E9DB4();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1000E9E64();
    sub_1000E9DC4();
  }

  return _swiftEmptyArrayStorage;
}

void sub_1000A312C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v3 = [v2 colorAttachments];
  v4 = [v3 objectAtIndexedSubscript:0];

  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v4 setTexture:a1];

  v5 = [v2 colorAttachments];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v6 setLoadAction:0];

  v7 = [v2 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript:0];

  if (v8)
  {
    [v8 setStoreAction:1];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1000A327C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000A3310()
{
  sub_1000A327C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A3368(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1000A337C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1000A33C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000A345C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000125FC(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000125FC(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1000A35A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_100132330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1000A36B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_1001322D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000A37D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_1001322D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000A38C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_100132318);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000A39E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_100132338);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000A3B08(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000125FC(&qword_1001322F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 1056);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[132 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 1056 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000125FC(&qword_100132300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000A3C54(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000125FC(&qword_1001322E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000125FC(&qword_1001322F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000A3D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_100132340);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1000A3EAC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000125FC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 2);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[4 * v9])
    {
      memmove(v14, v15, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 4 * v9);
  }

  return v11;
}

char *sub_1000A3FA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000125FC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1000A40B4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000125FC(&unk_1001322C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000125FC(&unk_100132920);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000A41FC(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v4 = *(v3 + 104);
  if (!*(v4 + 16))
  {
    return;
  }

  v8 = sub_10009F514(a3);
  if ((v9 & 1) == 0)
  {

    return;
  }

  v36 = *(*(v4 + 56) + 8 * v8);

  sub_1000A312C(a1);
  v11 = v10;
  v12 = [a2 renderCommandEncoderWithDescriptor:v10];

  if (!v12)
  {
    goto LABEL_35;
  }

  [v12 setFragmentTexture:v38[2] atIndex:0];
  [v12 setFragmentTexture:v38[3] atIndex:1];
  [v12 setFragmentTexture:v38[4] atIndex:2];
  [v12 setFragmentTexture:v38[5] atIndex:3];
  [v12 setFragmentTexture:v38[6] atIndex:4];
  [v12 setFragmentTexture:v38[7] atIndex:7];
  [v12 setFragmentTexture:v38[8] atIndex:8];
  [v12 setFragmentTexture:v38[9] atIndex:9];
  [v12 setFragmentTexture:v38[11] atIndex:10];
  [v12 setFragmentTexture:v38[10] atIndex:13];
  swift_beginAccess();
  v13 = v38[14];
  swift_beginAccess();
  v14 = *(v13 + 40);
  swift_beginAccess();
  [v12 setVertexBuffer:v14 offset:*(v13 + 24) atIndex:1];
  v15 = v38[14];
  swift_beginAccess();
  v16 = *(v15 + 40);
  swift_beginAccess();
  [v12 setFragmentBuffer:v16 offset:*(v15 + 24) atIndex:0];
  [v12 setCullMode:1];
  swift_beginAccess();
  v37 = *(v38[12] + 16);
  if (!v37)
  {
LABEL_29:

    [v12 endEncoding];
    swift_unknownObjectRelease();
    return;
  }

  v17 = 0;
  while (1)
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v18 = sub_1000E9D74();
    }

    else
    {
      if (v17 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v18 = *(v36 + 32 + 8 * v17);
      swift_unknownObjectRetain();
    }

    [v12 setRenderPipelineState:v18];
    swift_unknownObjectRelease();
    v19 = v38[12];
    if (v17 >= *(v19 + 16))
    {
      break;
    }

    v20 = *(v19 + 16 * v17 + 32);
    v21 = [v20 vertexBuffers];
    sub_100012904(0, &qword_100132290);
    v22 = sub_1000E9A94();

    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = sub_1000E9D74();
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v23 = *(v22 + 32);
    }

    v24 = v23;
    v40 = v17;

    v25 = [v24 buffer];

    [v12 setVertexBuffer:v25 offset:0 atIndex:0];
    swift_unknownObjectRelease();
    v26 = [v20 submeshes];
    sub_100012904(0, &qword_100132298);
    v27 = sub_1000E9A94();

    v39 = v20;
    if (v27 >> 62)
    {
      v28 = sub_1000E9E64();
      if (!v28)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_6;
      }
    }

    if (v28 < 1)
    {
      goto LABEL_33;
    }

    v29 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v30 = sub_1000E9D74();
      }

      else
      {
        v30 = *(v27 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      v32 = [v30 indexCount];
      v33 = [v31 indexType] == 1;
      v34 = [v31 indexBuffer];
      v35 = [v34 buffer];

      [v12 drawIndexedPrimitives:3 indexCount:v32 indexType:v33 indexBuffer:v35 indexBufferOffset:0];
      swift_unknownObjectRelease();
    }

    while (v28 != v29);
LABEL_6:
    v17 = v40 + 1;

    if (v40 + 1 == v37)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1000A47AC(float a1)
{
  *(v1 + 96) = _swiftEmptyArrayStorage;
  v63 = (v1 + 96);
  if (!qword_10012F7B0)
  {
LABEL_46:
    __break(1u);
  }

  v5 = swift_unknownObjectRetain();
  sub_1000A7C7C(v5, 0x32442D6E6972756ALL, 0xE900000000000033, 0x63647375, 0xE400000000000000);
  if (v2)
  {
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v7 = v6;
  swift_unknownObjectRelease();
  sub_100012904(0, &unk_100132C30);
  v59 = v7;
  v8 = [v7 childObjectsOfClass:swift_getObjCClassFromMetadata()];
  sub_100012904(0, &qword_1001322B0);
  v9 = sub_1000E9A94();

  v10 = sub_1000A2FC4(v9);

  if (!v10)
  {
    __break(1u);
    goto LABEL_48;
  }

  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_33;
  }

  v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_34:

    sub_1000125FC(&qword_1001322B8);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1000ED250;
    v42 = swift_beginAccess();
    v43 = *v63;
    v44 = *(*v63 + 16);
    if (v44)
    {
      v45 = *(v43 + 32);
      v46 = *(v43 + 40);
      *(v41 + 32) = v45;
      *(v41 + 40) = v46;
      if (v44 != 1)
      {
        v3 = *(v43 + 48);
        v47 = *(v43 + 56);
        *(v41 + 48) = v3;
        *(v41 + 56) = v47;
        if (v44 >= 3)
        {
          v48 = *(v43 + 64);
          v49 = *(v43 + 72);
          *(v41 + 64) = v48;
          *(v41 + 72) = v49;
          *v63 = v41;
          v50 = v45;
          v51 = v3;
          v52 = v48;

          if (qword_10012F7B0)
          {
            v43 = 7894123;
            v13 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:qword_10012F7B0];
            strcpy(v82, "jurin_01_a-D23");
            HIBYTE(v82[1]) = -18;
            v82[2] = 7894123;
            v82[3] = 0xE300000000000000;
            v83 = 1;
            *(v60 + 16) = TextureLoader.loadTexture(property:)(v82, v13);
            strcpy(v80, "jurin_02_a-D23");
            HIBYTE(v80[1]) = -18;
            v80[2] = 7894123;
            v80[3] = 0xE300000000000000;
            v81 = 1;
            *(v60 + 24) = TextureLoader.loadTexture(property:)(v80, v13);
            strcpy(v78, "jurin_03_a-D23");
            HIBYTE(v78[1]) = -18;
            v78[2] = 7894123;
            v78[3] = 0xE300000000000000;
            v79 = 1;
            *(v60 + 32) = TextureLoader.loadTexture(property:)(v78, v13);
            strcpy(v76, "jurin_04_a-D23");
            HIBYTE(v76[1]) = -18;
            v76[2] = 7894123;
            v76[3] = 0xE300000000000000;
            v77 = 1;
            v41 = 0xD000000000000015;
            *(v60 + 40) = TextureLoader.loadTexture(property:)(v76, v13);
            v74[0] = 0xD000000000000022;
            v74[1] = 0x80000001000F8A00;
            v12 = 0xE300000000000000;
            v74[2] = 7894123;
            v74[3] = 0xE300000000000000;
            v75 = 1;
            *(v60 + 48) = TextureLoader.loadTexture(property:)(v74, v13);
            v72[0] = 0xD000000000000012;
            v72[1] = 0x80000001000F8A30;
            v3 = 7501925;
            v72[2] = 7501925;
            v72[3] = 0xE300000000000000;
            v73 = 1;
            *(v60 + 56) = TextureLoader.loadTexture(property:)(v72, v13);
            v70[0] = 0xD000000000000015;
            v70[1] = 0x80000001000F8A50;
            v70[2] = 7501925;
            v70[3] = 0xE300000000000000;
            v71 = 0;
            *(v60 + 64) = TextureLoader.loadTexture(property:)(v70, v13);
            v68[0] = 0xD000000000000015;
            v68[1] = 0x80000001000F8A70;
            v68[2] = 7501925;
            v68[3] = 0xE300000000000000;
            v69 = 0;
            v42 = TextureLoader.loadTexture(property:)(v68, v13);
LABEL_44:
            *(v60 + 72) = v42;
            v66[0] = v41 + 12;
            v66[1] = 0x80000001000F8A90;
            v66[2] = v3;
            v66[3] = v12;
            v67 = 0;
            *(v60 + 80) = TextureLoader.loadTexture(property:)(v66, v13);
            v64[0] = v41;
            v64[1] = 0x80000001000F8AC0;
            v64[2] = v43;
            v64[3] = v12;
            v65 = 0;
            v54 = TextureLoader.loadTexture(property:)(v64, v13);

            *(v60 + 88) = v54;
            v53 = v60;
            *(v60 + 104) = sub_1000A2B88();
            sub_1000A5988(v85, a1);
            v55 = v85[7];
            *(v60 + 208) = v85[6];
            *(v60 + 224) = v55;
            *(v60 + 240) = v85[8];
            v56 = v85[3];
            *(v60 + 144) = v85[2];
            *(v60 + 160) = v56;
            v57 = v85[5];
            *(v60 + 176) = v85[4];
            *(v60 + 192) = v57;
            v58 = v85[1];
            *(v60 + 112) = v85[0];
            *(v60 + 128) = v58;
            return v53;
          }

LABEL_48:
          __break(1u);
          return result;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_7:
  v14 = 0;
  v61 = v10;
  v62 = v10 & 0xC000000000000001;
  while (1)
  {
    if (v62)
    {
      v15 = sub_1000E9D74();
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_32;
      }

      v15 = *(v10 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v13 = sub_1000E9E64();
      if (!v13)
      {
        goto LABEL_34;
      }

      goto LABEL_7;
    }

    v18 = sub_1000A87E0();
    [v16 setVertexDescriptor:v18];

    v19 = qword_10012F7B0;
    if (!qword_10012F7B0)
    {
      __break(1u);
      goto LABEL_46;
    }

    v20 = objc_allocWithZone(MTKMesh);
    v84[0] = 0;
    v3 = v16;
    swift_unknownObjectRetain();
    v21 = [v20 initWithMesh:v3 device:v19 error:v84];
    if (!v21)
    {
      break;
    }

    v22 = v84[0];

    swift_unknownObjectRelease();
    v23 = [v3 name];
    v24 = sub_1000E9914();
    v26 = v25;

    if (v24 == 0x656E616C50 && v26 == 0xE500000000000000)
    {

      v27 = 1.0;
    }

    else
    {
      v28 = sub_1000E9F74();

      v27 = 1.0;
      if ((v28 & 1) == 0)
      {
        v29 = [v3 name];
        v30 = sub_1000E9914();
        v32 = v31;

        if (v30 == 0x30305F656E616C50 && v32 == 0xE900000000000032)
        {

LABEL_22:
          v27 = 2.0;
          goto LABEL_23;
        }

        v33 = sub_1000E9F74();

        v27 = 0.0;
        if (v33)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_23:
    swift_beginAccess();
    v34 = *v63;
    v35 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v63 = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1000A3FA8(0, *(v34 + 2) + 1, 1, v34, &qword_1001322B8);
      *v63 = v34;
    }

    v38 = *(v34 + 2);
    v37 = *(v34 + 3);
    if (v38 >= v37 >> 1)
    {
      v34 = sub_1000A3FA8((v37 > 1), v38 + 1, 1, v34, &qword_1001322B8);
    }

    *(v34 + 2) = v38 + 1;
    v39 = &v34[16 * v38];
    *(v39 + 4) = v35;
    *(v39 + 10) = v27;
    *v63 = v34;
    swift_endAccess();

    ++v14;
    v10 = v61;
    if (v17 == v13)
    {
      goto LABEL_34;
    }
  }

  v40 = v84[0];
  sub_1000E92E4();

  swift_willThrow();

  swift_unknownObjectRelease();
LABEL_39:
  sub_1000A5318();
  swift_allocError();
  swift_willThrow();

  v53 = v60;

  _s5SceneCMa();
  swift_deallocPartialClassInstance();
  return v53;
}

unint64_t sub_1000A5318()
{
  result = qword_1001322A0;
  if (!qword_1001322A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001322A0);
  }

  return result;
}

unint64_t sub_1000A5380()
{
  result = qword_100132350;
  if (!qword_100132350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132350);
  }

  return result;
}

__n128 sub_1000A53D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000A5400(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1000A5448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

float sub_1000A54BC(uint64_t a1, char a2, __n128 _Q0, double a4, double a5, int32x2_t a6, int32x2_t a7)
{
  v10 = *(a1 + 144);
  v11 = *(a1 + 152);
  if (v10 <= 0.5236)
  {
    v15 = -0.5236;
    if (v10 > -0.5236)
    {
      v15 = *(a1 + 144);
    }

    a6.i32[0] = 1063216883;
    v12 = COERCE_DOUBLE(vdup_lane_s32(a6, 0));
    *&v12 = v15;
    if (v11 <= 0.87266)
    {
      if (v11 <= -0.87266)
      {
        v11 = -0.87266;
      }

      *(&v12 + 1) = v11;
    }
  }

  else
  {
    v12 = 0.00191663508;
    v13 = -0.87266;
    if (v11 > -0.87266)
    {
      v13 = *(a1 + 152);
    }

    a7.i32[0] = 1057360530;
    LODWORD(v14) = vdup_lane_s32(a7, 0).u32[0];
    *(&v14 + 1) = v13;
    if (v11 <= 0.87266)
    {
      v12 = v14;
    }
  }

  if (a2)
  {
    v16 = *a1;
    goto LABEL_29;
  }

  _Q0.n128_u64[0] = vmul_f32(*&v12, 0x3F860A923F060A92);
  v17 = *(v7 + 7);
  v18 = *(v7 + 8);
  _Q0.n128_u64[0] = vdiv_f32(_Q0.n128_u64[0], 0x3F5F66F33F060A92);
  *v17.f32 = vadd_f32(vsub_f32(_Q0.n128_u64[0], *v17.f32), *v18.f32);
  v17.f32[2] = (0.0 - COERCE_FLOAT(v7[15])) + COERCE_FLOAT(v7[17]);
  v19 = vmlaq_f32(v18, vdupq_n_s32(0x3F4CCCCDu), vsubq_f32(v17, v18));
  *v17.f32 = vmul_f32(*v19.f32, vdup_n_s32(0x3F7851ECu));
  v17.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(0.97, v19, 2));
  *(v7 + 7) = _Q0;
  *(v7 + 8) = v17;
  _Q0.n128_u32[0] = *(a1 + 4);
  __asm { FCVT            H1, S0 }

  v25 = *(v7 + 49);
  if (v7[12])
  {
    v26 = _Q0.n128_f32[0] > 0.0;
    if (v25 < _H1)
    {
      v26 = 0;
    }

    *(v7 + 96) = v26;
    *(v7 + 49) = _H1;
    if (!v26)
    {
      goto LABEL_19;
    }

LABEL_23:
    _Q0.n128_f32[0] = (1.0 - _Q0.n128_f32[0]) * 2.2;
    if (_Q0.n128_f32[0] > 1.0)
    {
      _Q0.n128_f32[0] = 1.0;
    }

    goto LABEL_25;
  }

  *(v7 + 96) = v25 > _H1;
  *(v7 + 49) = _H1;
  if (v25 > _H1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v27 = _Q0.n128_f32[0] * 2.2;
  if (v27 > 1.0)
  {
    v27 = 1.0;
  }

  _Q0.n128_f32[0] = 1.0 - v27;
LABEL_25:
  if ((*a1 * 1.2) <= 1.0)
  {
    v28 = *a1 * 1.2;
  }

  else
  {
    v28 = 1.0;
  }

  v29 = v7[10];
  [v29 _solveForInput:_Q0.n128_f64[0]];
  v31 = v30;
  *&v32 = v28;
  [v29 _solveForInput:v32];
  v16 = *(v7 + 23) + ((v33 - *(v7 + 23)) * 0.25);
  *(v7 + 22) = *(v7 + 22) + ((v31 - *(v7 + 22)) * 0.25);
  *(v7 + 23) = v16;
LABEL_29:
  v34 = *v7;
  **(*v7 + 16) = v16;
  if (a2)
  {
    v35 = 1.0 - *(a1 + 4);
  }

  else
  {
    v35 = *(v7 + 22);
  }

  *(*(v34 + 16) + 4) = v35;
  v36 = *(v7 + 2);
  v37 = *(v7 + 3);
  v38 = *(v7 + 4);
  v39 = *(v34 + 16);
  v39[2] = *(v7 + 1);
  v39[3] = v36;
  v39[4] = v37;
  v39[5] = v38;
  v40 = 0uLL;
  if ((a2 & 1) == 0)
  {
    v41 = *(v7 + 8);
    v42 = *(v7 + 22);
    v43 = vmuls_lane_f32(v42, v41, 2);
    v44 = 1.0 - *(v7 + 23);
    *&v40 = vmulq_n_f32(vmulq_n_f32(v41, v42), v44).u64[0];
    *(&v40 + 2) = v43 * v44;
    HIDWORD(v40) = 0;
  }

  *(*(v34 + 16) + 16) = v40;
  v45 = *(a1 + 208);
  v46 = v45 + -0.3;
  if (v46 <= 0.0)
  {
    v46 = 0.0;
  }

  result = v46 / 0.7;
  *(*(v34 + 16) + 8) = result;
  return result;
}

double sub_1000A57C8(double a1, int32x4_t a2, float a3)
{
  sub_1000AB384(&off_100121C10);
  v4 = vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL);
  v6 = vmlaq_f32(vmulq_f32(v4, vnegq_f32(v5)), a2, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmulq_f32(v6, v6);
  *&v9 = v8.f32[1] + (v8.f32[2] + v8.f32[0]);
  *v8.f32 = vrsqrte_f32(v9);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32)));
  v10 = vmulq_n_f32(v7, vmul_f32(*v8.f32, vrsqrts_f32(v9, vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  v11 = (a3 * 0.077092) - (a3 * -0.076804);
  v12.f32[0] = -((a3 * 0.077092) + (a3 * -0.076804)) / v11;
  v12.i32[1] = 0x80000000;
  v12.i32[2] = -1146943916;
  v12.i32[3] = 1.0;
  *&result = vmlaq_f32(vmlsq_lane_f32(vmlaq_laneq_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(2.0 / v11), -v10.f32[0]), xmmword_1000F37D0, vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(a2)), v10, v4), 2), xmmword_1000F37E0, *a2.i8, 0), 0, v12).u64[0];
  return result;
}

void sub_1000A5988(uint64_t a1@<X8>, float a2@<S0>)
{
  v4 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v5) = 0.5;
  LODWORD(v6) = 0.5;
  LODWORD(v7) = 1.0;
  v8 = [v4 initWithControlPoints:v5 :0.0 :v6 :v7];
  sub_1000125FC(&unk_100132360);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  if (qword_10012F7B0)
  {
    v10 = v9;
    v11 = [swift_unknownObjectRetain() newBufferWithLength:2048 options:0];
    if (v11)
    {
      v12 = v11;
      swift_unknownObjectRelease();
      *(v10 + 40) = v12;
      swift_unknownObjectRetain_n();
      v13 = sub_1000E98E4();
      [v12 setLabel:v13];
      swift_unknownObjectRelease();

      v14 = [v12 contents];
      v15 = v12;
      *(v10 + 16) = v14;
      sub_1000AB384(&off_100121C40);
      v22 = v16;
      sub_1000AB384(&off_100121C70);
      *&v18 = sub_1000A57C8(v22, v17, a2);
      *a1 = v10;
      *(a1 + 16) = v18;
      *(a1 + 32) = v19;
      *(a1 + 48) = v20;
      *(a1 + 64) = v21;
      *(a1 + 80) = v8;
      *(a1 + 88) = 1065353216;
      *(a1 + 96) = 0;
      *(a1 + 98) = COERCE_UNSIGNED_INT(1.0);
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000A5B2C()
{
  v0 = kCGColorSpaceSRGB;
  v1 = CGColorSpaceCreateWithName(v0);

  qword_10013DC18 = v1;
}

uint64_t sub_1000A5B70()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A5BD4()
{
  if (qword_10012F690 != -1)
  {
    swift_once();
  }

  v0 = qword_10013DC18;
  v1 = qword_10013DC18;
  return v0;
}

id sub_1000A5C6C()
{
  result = swift_beginAccess();
  v2 = v0[4];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = -v4 < 0;
    v6 = -v4 & 7;
    v7 = v4 & 7;
    if (!v5)
    {
      v7 = -v6;
    }

    v0[4] = v7;
    v8 = v7 << 8;
    swift_beginAccess();
    v0[3] = v8;
    swift_beginAccess();
    v9 = v0[5];
    v10 = [swift_unknownObjectRetain() contents];
    result = v9;
    v0[2] = &v10[v0[3]];
  }

  return result;
}

void sub_1000A5D30(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 52))
  {
    if (qword_10012F790 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E96A4();
    sub_100007488(v4, qword_10013DE78);
    v5 = sub_1000E9684();
    v6 = sub_1000E9B94();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "No lookIdentifier provided", v7, 2u);
    }
  }

  else
  {
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);

    v13 = sub_10009D460(v11, v10);
    if (v13 == 4)
    {
      v13 = sub_10009D300();
    }

    v14 = *(v3 + 24);
    v15 = *(v3 + 17);
    swift_beginAccess();
    sub_1000A54BC(a1, v15, v16, v17, v18, v19, v20);
    swift_endAccess();
    sub_1000A41FC(a2, a3, v13);
    v21 = v14[7];
    v22 = v14[12];
    v23 = v14[14];
    v24 = v14[15];
    v30[6] = v14[13];
    v30[7] = v23;
    v30[8] = v24;
    v25 = v14[8];
    v26 = v14[9];
    v30[0] = v21;
    v30[1] = v25;
    v27 = v14[10];
    v28 = v14[11];
    v30[2] = v26;
    v30[3] = v27;
    v30[4] = v28;
    v30[5] = v22;
    sub_1000A5F04(v30, &v29);
    sub_1000A5C6C();
    sub_1000A5F60(v30);
  }
}

uint64_t sub_1000A5FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  type metadata accessor for Jurin();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 56) = a4 / a5;
  v10 = swift_unknownObjectRetain();
  _s22MercuryPosterExtension12MetalContextC5setup6deviceySo9MTLDevice_pSg_tFZ_0(v10);
  _s5SceneCMa();
  swift_allocObject();
  v11 = sub_1000A47AC(a4 / a5);
  if (v5)
  {
    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v11;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v9 + 24) = v12;
  }

  return v9;
}

uint64_t UniformBuffer.__allocating_init(label:)()
{
  v0 = swift_allocObject();
  UniformBuffer.init(label:)();
  return v0;
}

void (*UniformBuffer.uniforms.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*v1 + 80);
  v3[1] = v5;
  v6 = *(v5 - 8);
  v3[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v3[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v4[4] = v8;
  (*(*(*(*v1 + 80) - 8) + 16))();
  return sub_1000A62E8;
}

void sub_1000A62E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    (*(*(*(*v7 + 80) - 8) + 40))(v7[2], v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    (*(*(*(**v2 + 80) - 8) + 40))(*(*v2 + 16), v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UniformBuffer.offset.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t UniformBuffer.index.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t UniformBuffer.buffer.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_unknownObjectRelease();
}

void *UniformBuffer.init(label:)()
{
  v0[3] = 0;
  v0[4] = 0;
  result = type metadata accessor for UniformBuffer();
  v2 = *(*(result[10] - 8) + 64);
  v3 = __OFADD__(v2, 255);
  v4 = v2 + 255;
  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!qword_10012F7B0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = [swift_unknownObjectRetain() newBufferWithLength:(8 * v4) & 0xFFFFFFFFFFFFF800 options:0];
  if (result)
  {
    v5 = result;
    swift_unknownObjectRelease();
    v0[5] = v5;
    swift_unknownObjectRetain();
    v6 = sub_1000E98E4();

    [v5 setLabel:v6];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v7 = v0[5];
    v8 = [swift_unknownObjectRetain() contents];
    v9 = v7;
    v0[2] = v8;
    return v0;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t static UniformBuffer.alignedUniformsSize.getter()
{
  v1 = *(*(*(v0 + 80) - 8) + 64);
  v2 = __OFADD__(v1, 255);
  v3 = v1 + 255;
  if (!v2)
  {
    return v3 & 0xFFFFFFFFFFFFFF00;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UniformBuffer.updateOffset()()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[4];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = -v4 < 0;
  v6 = -v4 & 7;
  v7 = v4 & 7;
  if (!v5)
  {
    v7 = -v6;
  }

  v0[4] = v7;
  v8 = *(*(*(v1 + 80) - 8) + 64);
  v3 = __OFADD__(v8, 255);
  v9 = v8 + 255;
  if (v3)
  {
    goto LABEL_8;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFF00;
  v11 = v10 * v7;
  if ((v10 * v7) >> 64 == (v10 * v7) >> 63)
  {
    swift_beginAccess();
    v0[3] = v11;
    swift_beginAccess();
    v12 = v0[5];
    v13 = [swift_unknownObjectRetain() contents];
    v14 = v12;
    v0[2] = &v13[v0[3]];
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t UniformBuffer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A6A44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 properties];
  sub_100012904(0, &qword_100132518);
  v7 = sub_1000E98A4();

  if (!*(v7 + 16) || (v8 = sub_10009F208(a1, a2), (v9 & 1) == 0))
  {

    return 0;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  v11 = [v10 data];
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  v13 = [v10 typeName];
  v14 = [v13 stringValue];

  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = sub_1000E9914();
  v17 = v16;

  if (v15 == 0x5D5B3374616F6C66 && v17 == 0xE800000000000000)
  {
  }

  else
  {
    v19 = sub_1000E9F74();

    if ((v19 & 1) == 0)
    {
LABEL_10:
      sub_1000E9D64(48);

      v20 = [v10 typeName];
      v21 = [v20 stringValue];

      if (v21)
      {
        v22 = sub_1000E9914();
        v24 = v23;

LABEL_24:
        v31._countAndFlagsBits = v22;
        v31._object = v24;
        sub_1000E99A4(v31);

        v32._object = 0x80000001000F8D40;
        v32._countAndFlagsBits = 0xD000000000000014;
        sub_1000E99A4(v32);
        result = sub_1000E9E44();
        __break(1u);
        return result;
      }

LABEL_23:
      v24 = 0xE400000000000000;
      v22 = 1701736302;
      goto LABEL_24;
    }
  }

  v26 = [v12 arraySize];
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26;
  if (v26)
  {
    sub_1000125FC(&qword_100132520);
    v28 = sub_1000E9AC4();
    *(v28 + 16) = v27;
    v29 = v28;
    bzero((v28 + 32), 16 * v27);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  v30 = [v12 arraySize];

  [v12 float3Array:v29 + 4 maxCount:v30];

  return v29;
}

uint64_t sub_1000A6D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 properties];
  sub_100012904(0, &qword_100132518);
  v7 = sub_1000E98A4();

  if (!*(v7 + 16) || (v8 = sub_10009F208(a1, a2), (v9 & 1) == 0))
  {

    return 0;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  v11 = [v10 data];
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  v13 = [v10 typeName];
  v14 = [v13 stringValue];

  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = sub_1000E9914();
  v17 = v16;

  if (v15 == 0x5D5B746E69 && v17 == 0xE500000000000000)
  {
  }

  else
  {
    v19 = sub_1000E9F74();

    if ((v19 & 1) == 0)
    {
LABEL_10:
      sub_1000E9D64(45);

      v20 = [v10 typeName];
      v21 = [v20 stringValue];

      if (v21)
      {
        v22 = sub_1000E9914();
        v24 = v23;

LABEL_24:
        v31._countAndFlagsBits = v22;
        v31._object = v24;
        sub_1000E99A4(v31);

        v32._object = 0x80000001000F8D20;
        v32._countAndFlagsBits = 0xD000000000000011;
        sub_1000E99A4(v32);
        result = sub_1000E9E44();
        __break(1u);
        return result;
      }

LABEL_23:
      v24 = 0xE400000000000000;
      v22 = 1701736302;
      goto LABEL_24;
    }
  }

  v26 = [v12 arraySize];
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v26)
  {
    v27 = v26;
    v28 = sub_1000E9AC4();
    *(v28 + 16) = v27;
    v29 = v28;
    bzero((v28 + 32), 4 * v27);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  v30 = [v12 arraySize];

  [v12 intArray:v29 + 4 maxCount:v30];

  return v29;
}

uint64_t sub_1000A70D4(uint64_t *a1, int a2, unint64_t a3)
{
  if (a2 == 3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    if (HIDWORD(a3))
    {
      goto LABEL_37;
    }

    v3 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        result = sub_1000A3E98((v7 > 1), v8 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 16) = v9;
      *(v3 + 4 * v8 + 32) = a3;
      if (a3 != 0xFFFFFFFF)
      {
        break;
      }

      __break(1u);
LABEL_41:
      result = sub_1000A3E98(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
LABEL_18:
      v13 = a3 - 4294967294u;
      v14 = 1;
      while (1)
      {
        v16 = *(v3 + 16);
        v15 = *(v3 + 24);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          result = sub_1000A3E98((v15 > 1), v16 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 16) = v17;
        *(v3 + 4 * v16 + 32) = a3;
        v18 = a3 + v14;
        if (__OFADD__(a3, v14))
        {
          break;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (HIDWORD(v18))
        {
          goto LABEL_33;
        }

        v19 = *(v3 + 24);
        v20 = v16 + 2;
        if ((v16 + 2) > (v19 >> 1))
        {
          result = sub_1000A3E98((v19 > 1), v16 + 2, 1, v3);
          v3 = result;
        }

        *(v3 + 16) = v20;
        *(v3 + 4 * v17 + 32) = v18;
        if (!v13)
        {
          goto LABEL_34;
        }

        v21 = *(v3 + 24);
        if ((v16 + 3) > (v21 >> 1))
        {
          result = sub_1000A3E98((v21 > 1), v16 + 3, 1, v3);
          v3 = result;
        }

        ++v14;
        *(v3 + 16) = v16 + 3;
        *(v3 + 4 * v20 + 32) = v18 + 1;
        ++v13;
        if (v8 == v14)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_1000A3E98(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
    }

    v10 = *(v3 + 24);
    v11 = v8 + 2;
    if ((v8 + 2) > (v10 >> 1))
    {
      result = sub_1000A3E98((v10 > 1), v8 + 2, 1, v3);
      v3 = result;
    }

    *(v3 + 16) = v11;
    *(v3 + 4 * v9 + 32) = a3 + 1;
    v12 = 4294967293;
    if (a3 > 0xFFFFFFFD)
    {
      __break(1u);
    }

    else
    {
      v12 = *(v3 + 24);
      v9 = v8 + 3;
      if ((v8 + 3) <= (v12 >> 1))
      {
        goto LABEL_12;
      }
    }

    result = sub_1000A3E98((v12 > 1), v9, 1, v3);
    v3 = result;
LABEL_12:
    *(v3 + 16) = v9;
    *(v3 + 4 * v11 + 32) = a3 + 2;
LABEL_13:
    *a1 = v3;
    return result;
  }

  if (a2 > 3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(a3))
      {
        v8 = (a2 - 1);
        v3 = *a1;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_18;
        }

        goto LABEL_41;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  result = sub_1000E9E44();
  __break(1u);
  return result;
}

void sub_1000A73E8(uint64_t a1, id a2)
{
  v81 = _swiftEmptyArrayStorage;
  v4 = [a2 path];
  v5 = [v4 stringValue];

  if (!v5)
  {
    sub_1000E9D64(25);

    v36 = [a2 description];
    v37 = sub_1000E9914();
    v39 = v38;

    v82._countAndFlagsBits = v37;
    v82._object = v39;
    sub_1000E99A4(v82);

    v40 = 0xD000000000000017;
    v41 = 0x80000001000F8BD0;
    v42 = 2;
LABEL_32:
    sub_1000A823C();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v41;
    *(v43 + 16) = v42;
    swift_willThrow();
    return;
  }

  v6 = sub_1000E9914();
  v8 = v7;

  v9 = sub_1000A6A44(0x73746E696F70, 0xE600000000000000);
  if (!v9)
  {
LABEL_31:
    sub_1000E9D64(22);

    v83._countAndFlagsBits = v6;
    v83._object = v8;
    sub_1000E99A4(v83);

    v40 = 0xD000000000000014;
    v41 = 0x80000001000F8BF0;
    v42 = 3;
    goto LABEL_32;
  }

  v10 = v9;
  v77 = sub_1000A6D98(0xD000000000000011, 0x80000001000F8C10);
  if (!v77)
  {
LABEL_30:

    goto LABEL_31;
  }

  v76 = sub_1000A6D98(0xD000000000000010, 0x80000001000F8C30);
  if (!v76)
  {
LABEL_29:

    goto LABEL_30;
  }

  v75 = sub_1000A6A44(0x736C616D726F6ELL, 0xE700000000000000);
  if (!v75)
  {

    goto LABEL_29;
  }

  v11 = sub_1000A6D98(0xD00000000000001CLL, 0x80000001000F8C50);
  v12 = sub_1000A6D98(0xD000000000000010, 0x80000001000F8C70);
  v13 = *(v76 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (v76 + 32);
    while (1)
    {
      v16 = *v15++;
      sub_1000A70D4(&v81, v16, v14);
      _VF = __OFADD__(v14, v16);
      v14 += v16;
      if (_VF)
      {
        break;
      }

      if (!--v13)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_10:
  v74 = a1;
  v18 = *(v77 + 16);
  if (!v18)
  {

    v21 = _swiftEmptyArrayStorage;
LABEL_34:

    v44 = [objc_allocWithZone(MDLVertexDescriptor) init];
    v45 = [v44 attributes];
    v46 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributePosition format:786435 offset:0 bufferIndex:0];
    [v45 setObject:v46 atIndexedSubscript:0];

    v47 = [v44 attributes];
    v48 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributeNormal format:720899 offset:12 bufferIndex:0];
    [v47 setObject:v48 atIndexedSubscript:1];

    v49 = [v44 attributes];
    v50 = objc_allocWithZone(MDLVertexAttribute);
    v51 = sub_1000E98E4();
    v52 = [v50 initWithName:v51 format:720898 offset:18 bufferIndex:0];

    [v49 setObject:v52 atIndexedSubscript:2];
    v53 = [v44 layouts];
    v54 = [objc_allocWithZone(MDLVertexBufferLayout) initWithStride:24];
    [v53 setObject:v54 atIndexedSubscript:0];

    v55 = [objc_allocWithZone(MTKMeshBufferAllocator) initWithDevice:v74];
    v56 = *(v21 + 2);
    if ((v56 * 24) >> 64 == (24 * v56) >> 63)
    {
      v57 = v55;
      v80 = v44;
      v58 = sub_100098984(v21 + 32, 24 * v56);
      v60 = v59;

      isa = sub_1000E93F4().super.isa;
      sub_1000190E4(v58, v60);
      v62 = [v57 newBufferWithData:isa type:1];

      v63 = v81[2];
      if (!(v63 >> 61))
      {
        v64 = sub_100098984(v81 + 32, 4 * v63);
        v66 = v65;

        v67 = sub_1000E93F4().super.isa;
        sub_1000190E4(v64, v66);
        v68 = [v57 newBufferWithData:v67 type:2];

        v69 = [objc_allocWithZone(MDLSubmesh) initWithIndexBuffer:v68 indexCount:v63 indexType:32 geometryType:2 material:0];
        sub_1000125FC(&qword_1001303F0);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1000EC860;
        *(v70 + 32) = v69;
        v71 = objc_allocWithZone(MDLMesh);
        sub_100012904(0, &qword_100132510);
        v72 = v69;
        v73 = sub_1000E9A74().super.isa;

        [v71 initWithVertexBuffer:v62 vertexCount:v56 descriptor:v80 submeshes:v73];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_43;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v18 <= *(v75 + 16))
  {
    v19 = (v77 + 32);
    v20 = (v75 + 32);
    v21 = _swiftEmptyArrayStorage;
    while (1)
    {
      v23 = *v19++;
      v22 = v23;
      if ((v23 & 0x80000000) != 0)
      {
        break;
      }

      if (*(v10 + 16) <= v22)
      {
        goto LABEL_39;
      }

      v78 = *(v10 + 32 + 16 * v22);
      v79 = *v20;
      LOWORD(v24) = COERCE_UNSIGNED_INT(-1.0);
      LOWORD(v25) = COERCE_UNSIGNED_INT(-1.0);
      if (v11)
      {
        if (*(v11 + 16) <= v22)
        {
          goto LABEL_40;
        }

        v25 = *(v11 + 32 + 4 * v22);
      }

      if (v12)
      {
        if (*(v12 + 16) <= v22)
        {
          goto LABEL_41;
        }

        v24 = *(v12 + 32 + 4 * v22);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1000A3D88(0, *(v21 + 2) + 1, 1, v21);
      }

      v27 = *(v21 + 2);
      v26 = *(v21 + 3);
      if (v27 >= v26 >> 1)
      {
        v21 = sub_1000A3D88((v26 > 1), v27 + 1, 1, v21);
      }

      _S2 = v79;
      __asm { FCVT            H0, S2 }

      _S1 = DWORD1(v79);
      __asm { FCVT            H1, S1 }

      _S2 = DWORD2(v79);
      __asm { FCVT            H2, S2 }

      *(v21 + 2) = v27 + 1;
      v35 = &v21[24 * v27];
      *(v35 + 10) = DWORD2(v78);
      *(v35 + 4) = v78 | (DWORD1(v78) << 32);
      *(v35 + 22) = _H0;
      *(v35 + 23) = _S1;
      *(v35 + 24) = _S2;
      *(v35 + 25) = v25;
      *(v35 + 26) = v24;
      ++v20;
      if (!--v18)
      {

        goto LABEL_34;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_44:
  __break(1u);
}

void sub_1000A7C7C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v58 = a1;
  v10 = sub_1000E93B4();
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = [objc_opt_self() mainBundle];
  v55 = a2;
  v17 = sub_1000E98E4();
  v57 = a4;
  v61 = a5;
  v18 = sub_1000E98E4();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (!v19)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1000E9D64(28);

    v59 = v55;
    v60 = a3;
    v62._countAndFlagsBits = 46;
    v62._object = 0xE100000000000000;
    sub_1000E99A4(v62);
    v63._countAndFlagsBits = v57;
    v63._object = v61;
    sub_1000E99A4(v63);
    v64._object = 0x80000001000F8B90;
    v64._countAndFlagsBits = 0xD000000000000017;
    sub_1000E99A4(v64);
    v44 = v59;
    v45 = v60;
    sub_1000A823C();
    swift_allocError();
    *v46 = v44;
    *(v46 + 8) = v45;
    *(v46 + 16) = 0;
    swift_willThrow();
    return;
  }

  sub_1000E9364();

  v20 = v56;
  (*(v56 + 32))(v15, v12, v10);
  v21 = objc_allocWithZone(USKScene);
  sub_1000E9344(v22);
  v24 = v23;
  v25 = [v21 initSceneFromURL:v23];

  if (!v25)
  {
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1000E9D64(27);
    sub_1000A8290();
    v47 = sub_1000E9F54();
    v49 = v48;

    v59 = v47;
    v60 = v49;
    v65._countAndFlagsBits = 0xD000000000000019;
    v65._object = 0x80000001000F8BB0;
    sub_1000E99A4(v65);
    v50 = v59;
    v51 = v60;
    sub_1000A823C();
    swift_allocError();
    *v52 = v50;
    *(v52 + 8) = v51;
    *(v52 + 16) = 1;
    swift_willThrow();
    (*(v20 + 8))(v15, v10);
    return;
  }

  v54 = v15;
  v55 = v10;
  v53 = v25;
  v26 = [v25 rootNode];
  v27 = [v26 subtreeIterator];

  v57 = [objc_allocWithZone(MDLAsset) init];
  v28 = [v27 nextObject];
  if (!v28)
  {
LABEL_19:
    (*(v56 + 8))(v54, v55);

    swift_unknownObjectRelease();
    return;
  }

  v29 = v28;
  v61 = USKNodeTypeMesh;
  while (1)
  {
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (!v30)
    {
      goto LABEL_6;
    }

    v31 = v30;
    v32 = v29;
    v33 = [v31 type];
    v34 = sub_1000E9914();
    v36 = v35;
    if (v34 == sub_1000E9914() && v36 == v37)
    {
      break;
    }

    v39 = sub_1000E9F74();

    if (v39)
    {
      goto LABEL_15;
    }

LABEL_5:

LABEL_6:
    v29 = [v27 nextObject];
    if (!v29)
    {
      goto LABEL_19;
    }
  }

LABEL_15:
  sub_1000A73E8(v58, v31);
  if (v5)
  {
    (*(v56 + 8))(v54, v55);

    swift_unknownObjectRelease();
    return;
  }

  v41 = v40;

  v32 = v41;
  v42 = [v31 name];
  v43 = [v42 stringValue];

  if (v43)
  {
    [v32 setName:v43];

    [v57 addObject:v32];
    goto LABEL_5;
  }

  __break(1u);
}

unint64_t sub_1000A823C()
{
  result = qword_100132500;
  if (!qword_100132500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132500);
  }

  return result;
}

unint64_t sub_1000A8290()
{
  result = qword_100132508;
  if (!qword_100132508)
  {
    sub_1000E93B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132508);
  }

  return result;
}

__n128 sub_1000A82F4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000A8308(uint64_t a1, unsigned int a2)
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

uint64_t sub_1000A8350(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1000A83AC()
{
  v0 = [objc_allocWithZone(MTLVertexDescriptor) init];
  v1 = [v0 attributes];
  v2 = [v1 objectAtIndexedSubscript:0];

  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v2 setFormat:30];

  v3 = [v0 attributes];
  v4 = [v3 objectAtIndexedSubscript:0];

  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v4 setOffset:0];

  v5 = [v0 attributes];
  v6 = [v5 objectAtIndexedSubscript:0];

  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v6 setBufferIndex:0];

  v7 = [v0 attributes];
  v8 = [v7 objectAtIndexedSubscript:1];

  if (!v8)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v8 setFormat:26];

  v9 = [v0 attributes];
  v10 = [v9 objectAtIndexedSubscript:1];

  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v10 setOffset:12];

  v11 = [v0 attributes];
  v12 = [v11 objectAtIndexedSubscript:1];

  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v12 setBufferIndex:0];

  v13 = [v0 attributes];
  v14 = [v13 objectAtIndexedSubscript:2];

  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v14 setFormat:25];

  v15 = [v0 attributes];
  v16 = [v15 objectAtIndexedSubscript:2];

  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v16 setOffset:18];

  v17 = [v0 attributes];
  v18 = [v17 objectAtIndexedSubscript:2];

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v18 setBufferIndex:0];

  v19 = [v0 layouts];
  v20 = [v19 objectAtIndexedSubscript:0];

  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v20 setStride:24];

  v21 = [v0 layouts];
  v22 = [v21 objectAtIndexedSubscript:0];

  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v22 setStepRate:1];

  v23 = [v0 layouts];
  v24 = [v23 objectAtIndexedSubscript:0];

  if (v24)
  {
    [v24 setStepFunction:1];

    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1000A87E0()
{
  sub_1000A83AC();
  v1 = v0;
  v2 = MTKModelIOVertexDescriptorFromMetal(v0);

  v3 = [(MDLVertexDescriptor *)v2 attributes];
  sub_1000A89CC();
  sub_1000E9A84();

  result = sub_1000E9E44();
  __break(1u);
  return result;
}

unint64_t sub_1000A89CC()
{
  result = qword_100132528;
  if (!qword_100132528)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100132528);
  }

  return result;
}

uint64_t ShippouScene.lensBuffer.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000A8B34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

__n128 ShippouScene.cameraHolder.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  swift_beginAccess();
  v4[4] = a1;
  v4[5] = a2;
  result = a4;
  v4[6] = a3;
  v4[7] = a4;
  return result;
}

uint64_t ShippouScene.__allocating_init(device:)(void *a1)
{
  v2 = swift_allocObject();
  ShippouScene.init(device:)(a1);
  return v2;
}

uint64_t ShippouScene.init(device:)(void *a1)
{
  *(v1 + 48) = _swiftEmptyArrayStorage;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  if (qword_10012F4E0 != -1)
  {
    swift_once();
  }

  v3 = *algn_10013A970;
  v64 = *algn_10013A970;
  v70 = xmmword_10013A960;
  v4 = xmmword_10013A980;
  v5 = unk_10013A990;
  v52 = unk_10013A990;
  v58 = xmmword_10013A980;
  *(v1 + 64) = xmmword_10013A960;
  *(v1 + 80) = v3;
  *(v1 + 96) = v4;
  *(v1 + 112) = v5;
  type metadata accessor for ShippouCamera();
  v6 = swift_allocObject();
  *(v6 + 16) = 1109288550;
  *(v6 + 32) = v70;
  *(v6 + 48) = v64;
  *(v6 + 64) = v58;
  *(v6 + 80) = v52;
  *(v1 + 128) = v6;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  sub_1000AB384(&off_100121600);
  __asm { FMOV            V1.2D, #1.0 }

  *(v1 + 240) = v12;
  *(v1 + 256) = _Q1;
  v13 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v14) = 0.5;
  LODWORD(v15) = 1.0;
  *(v1 + 272) = [v13 initWithControlPoints:v14 :0.0 :0.0 :v15];
  v16 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v17) = 1059481190;
  LODWORD(v18) = 1051931443;
  LODWORD(v19) = 1.0;
  *(v1 + 280) = [v16 initWithControlPoints:v17 :0.0 :v18 :v19];
  *(v1 + 288) = 0;
  v20 = [a1 newBufferWithLength:768 options:0];
  if (!v20)
  {
    sub_1000AB3D0();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();

    type metadata accessor for ShippouScene();
    swift_deallocPartialClassInstance();
    return v1;
  }

  *(v1 + 24) = v20;
  sub_1000125FC(&qword_1001303F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000F3A40;
  sub_1000AB384(&off_100121630);
  v71 = v22;
  sub_1000AB384(&off_100121660);
  v65 = v23;
  sub_1000AB384(&off_100121690);
  v59 = v24;
  sub_1000AB384(&off_1001216C0);
  v53 = v25;
  type metadata accessor for Lens();
  v26 = swift_allocObject();
  *(v26 + 16) = v71;
  *(v26 + 32) = v59;
  *(v26 + 48) = v53;
  *(v26 + 64) = v65;
  *(v26 + 80) = 1069128090;
  *(v26 + 84) = 0;
  *(v21 + 32) = v26;
  sub_1000AB384(&off_1001216F0);
  v72 = v27;
  sub_1000AB384(&off_100121720);
  v66 = v28;
  sub_1000AB384(&off_100121750);
  v60 = v29;
  sub_1000AB384(&off_100121780);
  v54 = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v72;
  *(v31 + 32) = v60;
  *(v31 + 48) = v54;
  *(v31 + 64) = v66;
  *(v31 + 80) = 1069128090;
  *(v31 + 84) = 1;
  *(v21 + 40) = v31;
  sub_1000AB384(&off_1001217B0);
  v73 = v32;
  sub_1000AB384(&off_1001217E0);
  v67 = v33;
  sub_1000AB384(&off_100121810);
  v61 = v34;
  sub_1000AB384(&off_100121840);
  v55 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v73;
  *(v36 + 32) = v61;
  *(v36 + 48) = v55;
  *(v36 + 64) = v67;
  *(v36 + 80) = 1069128090;
  *(v36 + 84) = 2;
  *(v21 + 48) = v36;
  sub_1000AB384(&off_100121870);
  v74 = v37;
  sub_1000AB384(&off_1001218A0);
  v68 = v38;
  sub_1000AB384(&off_1001218D0);
  v62 = v39;
  sub_1000AB384(&off_100121900);
  v56 = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v74;
  *(v41 + 32) = v62;
  *(v41 + 48) = v56;
  *(v41 + 64) = v68;
  *(v41 + 80) = 1069128090;
  *(v41 + 84) = 3;
  *(v21 + 56) = v41;
  sub_1000AB384(&off_100121930);
  v75 = v42;
  sub_1000AB384(&off_100121960);
  v69 = v43;
  sub_1000AB384(&off_100121990);
  v63 = v44;
  sub_1000AB384(&off_1001219C0);
  v57 = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = v75;
  *(v46 + 32) = v63;
  *(v46 + 48) = v57;
  *(v46 + 64) = v69;
  *(v46 + 80) = 1069128090;
  *(v46 + 84) = 4;
  *(v21 + 64) = v46;
  swift_beginAccess();
  *(v1 + 48) = v21;
  swift_unknownObjectRetain();

  v47 = *(v1 + 48);
  if (v47 >> 62)
  {
    result = sub_1000E9E64();
  }

  else
  {
    result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((result * 48) >> 64 == (48 * result) >> 63)
  {
    result = [a1 newBufferWithLength:? options:?];
    if (result)
    {
      *(v1 + 16) = result;
      v49 = *(v1 + 128);
      *(v49 + 16) = 1108559790;
      sub_1000AB384(&off_1001219F0);
      v76 = v50;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v51 = v76;
      HIDWORD(v51) = 1.0;
      *(v49 + 32) = xmmword_1000EC8E0;
      *(v49 + 48) = xmmword_1000EC910;
      *(v49 + 64) = xmmword_1000EC920;
      *(v49 + 80) = v51;

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ShippouScene.update(state:size:isSnapshotting:)(float *a1, int a2, double a3, double a4)
{
  v5 = v4;
  v10 = a1[1];
  v11 = sub_100084B6C();
  if (v11 != 2 && (v11 & 1) == 0)
  {
    *(*(v5 + 128) + 16) = 1108410368;
  }

  v13 = 1.0 - v10;
  v92 = a1;
  if (a2)
  {
    v14 = *a1;
    v15 = 1.0;
    if (v13 != 1.0)
    {
      v15 = 0.0;
    }

    if (v14 == 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    goto LABEL_20;
  }

  if (*(v5 + 288) != 1)
  {
    *&v12 = 1.0 - v10;
    [*(v5 + 272) _solveForInput:v12];
    v16 = *&v17;
    v14 = *a1;
    if (*a1 > 0.0)
    {
      *&v17 = 1.0 - v14;
      [*(v5 + 280) _solveForInput:v17];
      v16 = v16 * v18;
    }

LABEL_17:
    if (v14 >= 1.0)
    {
      goto LABEL_13;
    }

LABEL_18:
    if (v14 <= 0.0)
    {
      *(v5 + 288) = 0;
    }

    goto LABEL_20;
  }

  if (v13 >= 1.0)
  {
    v14 = *a1;
    *&v12 = 1.0 - *a1;
    [*(v5 + 280) _solveForInput:v12];
    v16 = v19;
    goto LABEL_17;
  }

  v14 = *a1;
  v16 = 0.0;
  if (*a1 < 1.0)
  {
    goto LABEL_18;
  }

LABEL_13:
  *(v5 + 288) = 1;
LABEL_20:
  if ((sub_1000A9BA0() & 1) == 0)
  {
    if (qword_10012F4E0 != -1)
    {
      swift_once();
    }

    v95 = *algn_10013A970;
    v101 = xmmword_10013A960;
    v84 = unk_10013A990;
    v89 = xmmword_10013A980;
    swift_beginAccess();
    *(v5 + 64) = v101;
    *(v5 + 80) = v95;
    *(v5 + 96) = v89;
    *(v5 + 112) = v84;
    swift_beginAccess();
    v36 = *(v5 + 48);
    if (v36 >> 62)
    {
      v37 = sub_1000E9E64();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v37)
    {
      goto LABEL_49;
    }

    result = sub_1000AA448(0, v37 & ~(v37 >> 63), 0);
    if ((v37 & 0x8000000000000000) == 0)
    {
      v88 = a2;
      v38 = 0;
      do
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          sub_1000E9D74();
        }

        else
        {
        }

        v39 = Lens.getEllipsoid(progress:scaleBy:)(v16);
        v96 = v40;
        v102 = v39;
        v42 = v41;

        v44 = _swiftEmptyArrayStorage[2];
        v43 = _swiftEmptyArrayStorage[3];
        if (v44 >= v43 >> 1)
        {
          sub_1000AA448((v43 > 1), v44 + 1, 1);
        }

        ++v38;
        _swiftEmptyArrayStorage[2] = v44 + 1;
        v45 = &_swiftEmptyArrayStorage[6 * v44];
        v45[2] = v102;
        v45[3] = v96;
        v45[4].n128_u8[0] = v42;
      }

      while (v37 != v38);
      goto LABEL_48;
    }

    goto LABEL_69;
  }

  if ((1.0 - v14) < v13)
  {
    v13 = 1.0 - v14;
  }

  v80 = *(v5 + 176);
  v79 = *(v5 + 240);
  v93 = matrix_identity_float4x4.columns[0];
  v98 = matrix_identity_float4x4.columns[2];
  v83 = matrix_identity_float4x4.columns[1];
  v87 = matrix_identity_float4x4.columns[3];
  v20 = __sincosf_stret(-(*&v80 * v13) * *&v79);
  v21 = v93;
  v21.i32[0] = LODWORD(v20.__cosval);
  v21.f32[2] = -v20.__sinval;
  v22 = v98;
  v22.i32[2] = LODWORD(v20.__cosval);
  v22.i32[0] = LODWORD(v20.__sinval);
  v77 = v22;
  v78 = v21;
  v24 = __sincosf_stret(vmuls_lane_f32(-(*(&v80 + 1) * v13), *&v79, 1));
  v23.f32[0] = v24.__sinval;
  v99 = vmlaq_laneq_f32(vmlaq_n_f32(vmlsq_lane_f32(vmulq_n_f32(v78, v98.f32[0]), v83, v23, 0), v77, v24.__cosval), v87, v98, 3);
  swift_beginAccess();
  *(v5 + 64) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v93.f32[0]), v83, *v93.f32, 1), v77, v93, 2), v87, v93, 3);
  *(v5 + 80) = vmlaq_laneq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v78, v83.f32[0]), v83, v24.__cosval), v77, v24.__sinval), v87, v83, 3);
  *(v5 + 96) = v99;
  *(v5 + 112) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, v87.f32[0]), v83, *v87.f32, 1), v77, v87, 2), v87, v87, 3);
  swift_beginAccess();
  v25 = *(v5 + 48);
  if (v25 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000E9E64())
  {
    if (!i)
    {
      goto LABEL_49;
    }

    result = sub_1000AA448(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v88 = a2;
    v28 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        sub_1000E9D74();
      }

      else
      {
      }

      v29 = Lens.getEllipsoid(progress:scaleBy:)(v16);
      v94 = v30;
      v100 = v29;
      v32 = v31;

      v34 = _swiftEmptyArrayStorage[2];
      v33 = _swiftEmptyArrayStorage[3];
      if (v34 >= v33 >> 1)
      {
        sub_1000AA448((v33 > 1), v34 + 1, 1);
      }

      ++v28;
      _swiftEmptyArrayStorage[2] = v34 + 1;
      v35 = &_swiftEmptyArrayStorage[6 * v34];
      v35[2] = v100;
      v35[3] = v94;
      v35[4].n128_u8[0] = v32;
    }

    while (i != v28);
LABEL_48:

    a2 = v88;
LABEL_49:
    swift_beginAccess();
    v46 = *(v5 + 16);
    v25 = [swift_unknownObjectRetain() contents];
    v47 = v46;
    memcpy(v25, &_swiftEmptyArrayStorage[4], [*(v5 + 16) length]);

    swift_beginAccess();
    v48 = *(v5 + 40);
    if ((v48 - 0x80000000000000) >> 56 != 255)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v49 = v48 << 8;
    swift_beginAccess();
    *(v5 + 32) = v49;
    v50 = *(v5 + 24);
    v51 = [swift_unknownObjectRetain() contents];
    v52 = v50;
    v53 = *(v5 + 32);
    swift_beginAccess();
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }

    if (a3 <= -1.0)
    {
      goto LABEL_60;
    }

    if (a3 >= 4294967300.0)
    {
      goto LABEL_61;
    }

    v55 = *(v5 + 64);
    v54 = *(v5 + 80);
    v57 = *(v5 + 96);
    v56 = *(v5 + 112);
    v58 = *(v5 + 128);
    v60 = v58[2];
    v59 = v58[3];
    v62 = v58[4];
    v61 = v58[5];
    v25 = &v51[v53];
    *&v51[v53] = a3;
    if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_62;
    }

    if (a4 <= -1.0)
    {
      goto LABEL_63;
    }

    if (a4 >= 4294967300.0)
    {
      goto LABEL_64;
    }

    v97 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, v59.f32[0]), v54, *v59.f32, 1), v57, v59, 2), v56, v59, 3);
    v85 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, v62.f32[0]), v54, *v62.f32, 1), v57, v62, 2), v56, v62, 3);
    v90 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, v60.f32[0]), v54, *v60.f32, 1), v57, v60, 2), v56, v60, 3);
    v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, v61.f32[0]), v54, *v61.f32, 1), v57, v61, 2), v56, v61, 3);
    *(v25 + 4) = a4;
    sub_1000125FC(&qword_100132540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000ED250;
    *(inited + 32) = v81.i64[0];
    *(inited + 40) = v81.i32[2];
    sub_1000AB384(inited);
    v82 = v64;
    swift_setDeallocating();
    *(v25 + 16) = v82;
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1000ED250;
    *(v65 + 32) = v85.i64[0];
    *(v65 + 40) = v85.i32[2];
    sub_1000AB384(v65);
    v86 = v66;
    swift_setDeallocating();
    HIDWORD(v67) = 0;
    *&v67 = vsubq_f32(0, v86).u64[0];
    *(&v67 + 2) = 0.0 - v86.f32[2];
    *(v25 + 32) = v67;
    *&a4 = a3 / a4;
    v86.i32[0] = tanf(((v58[1].f32[0] / 180.0) * 3.1416) * 0.5);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_1000ED250;
    *(v68 + 32) = v90.i64[0];
    *(v68 + 40) = v90.i32[2];
    sub_1000AB384(v68);
    v91 = v69;
    swift_setDeallocating();
    *&v70 = vmulq_n_f32(v91, v86.f32[0] * *&a4).u64[0];
    *(&v70 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v86.f32[0] * *&a4, v91, 2));
    *(v25 + 48) = v70;
    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_1000ED250;
    *(v71 + 32) = v97.i64[0];
    *(v71 + 40) = v97.i32[2];
    sub_1000AB384(v71);
    v103 = v72;
    result = swift_setDeallocating();
    *&v73 = vmulq_n_f32(v103, v86.f32[0]).u64[0];
    *(&v73 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v86.f32[0], v103, 2));
    *(v25 + 64) = v73;
    *(v25 + 80) = a2 & 1;
    *(v25 + 84) = *v92;
    *(v25 + 88) = v16;
    v74 = *(v5 + 40);
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (!v75)
    {
      *(v5 + 40) = v76 % 3;
      return result;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1000A9BA0()
{
  v1 = v0;
  v2 = sub_1000E9784();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s22MercuryPosterExtension9ToriSceneC9startTimeSdvpfi_0();
  v7 = *(v1 + 136);
  if (v7 <= 0.0 || (v8 = v6 - v7, v9 = *(v1 + 256) * 0.17 * 2.8, v10 = v9 + 2.8 - v9, v6 - v7 >= v10))
  {
    result = 0;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 224) = v6;
  }

  else
  {
    v27 = *(v1 + 176);
    sub_1000E9774();
    if (v8 <= v9)
    {
      v15 = *(v1 + 144);
      v16 = *(v1 + 160);
      v29 = 1065353216;
      v28 = *(v1 + 208);
      sub_1000E9764();
      *(v1 + 176) = v15 + (v16 * v30);
      v17 = *(v1 + 148);
      v18 = *(v1 + 164);
      v29 = 1065353216;
      v28 = *(v1 + 212);
      sub_1000E9764();
      v12 = *(v3 + 8);
      v12(v5, v2);
      v13 = v17 + (v18 * v30);
    }

    else
    {
      v26 = vaddq_f32(*(v1 + 144), *(v1 + 160));
      v11 = v26.f32[1];
      v29 = 1065353216;
      v28 = *(v1 + 192);
      sub_1000E9764();
      *(v1 + 176) = v26.f32[0] - (v30 * v26.f32[0]);
      v29 = 1065353216;
      v28 = *(v1 + 196);
      sub_1000E9764();
      v12 = *(v3 + 8);
      v12(v5, v2);
      v13 = v11 - vmuls_lane_f32(v30, *v26.f32, 1);
    }

    *(v1 + 180) = v13;
    v19 = *(v1 + 264);
    if (v8 >= v9 * 0.5 * v19)
    {
      sub_1000E9754();
      v23 = *(v1 + 152) + *(v1 + 168);
      v29 = 1065353216;
      v28 = *(v1 + 200);
      sub_1000E9764();
      v12(v5, v2);
      v22 = v23 - (v23 * v30);
    }

    else
    {
      sub_1000E9774();
      v20 = *(v1 + 152);
      v21 = *(v1 + 168);
      v29 = 1065353216;
      v28 = *(v1 + 216);
      sub_1000E9764();
      v12(v5, v2);
      v22 = v20 + (v21 * v30);
    }

    v24 = *(v1 + 176);
    *(v1 + 184) = v22;
    v25 = 1.0 / v8;
    v24.i64[0] = vmulq_n_f32(vsubq_f32(v24, v27), v25).u64[0];
    v24.i64[1] = COERCE_UNSIGNED_INT((v22 - v27.f32[2]) * v25);
    *(v1 + 192) = v24;
    return 1;
  }

  return result;
}

uint64_t ShippouScene.tap(at:)(float32x2_t a1)
{
  v3 = *(v1 + 176);
  *(v1 + 208) = *(v1 + 192);
  *(v1 + 144) = v3;
  sub_1000AB4A4(&off_100121F28);
  v5 = v4;
  sub_1000125FC(&qword_100132540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000ED250;
  *(inited + 32) = vmul_f32(v5, a1);
  *(inited + 40) = 0;
  sub_1000AB384(inited);
  v32 = v7;
  swift_setDeallocating();
  v8 = *(v1 + 144);
  v9 = vadd_f32(*v32.f32, *v8.f32);
  v10 = vmul_f32(v9, v9);
  v11 = vdup_lane_s32(v10, 0);
  v12 = vmulq_f32(v8, v8).u64[0];
  v10.i32[0] = HIDWORD(v12);
  v11.i32[0] = v12;
  v13 = vsqrt_f32(vadd_f32(v11, v10));
  v14 = vsubq_f32(v32, v8);
  v14.i32[3] = 0;
  if (v13.f32[0] >= v13.f32[1])
  {
    *(v1 + 256) = fmin((v13.f32[0] / v13.f32[1]), 3.0);
LABEL_5:
    v15 = 0.35;
    goto LABEL_6;
  }

  if (v13.f32[0] <= 0.5)
  {
    v24 = sqrtf(vaddv_f32(vmul_f32(a1, a1)));
    *(v1 + 256) = 0x3FF0000000000000;
    if (v24 < 0.41)
    {
      v25 = (v24 / -0.41) + 1.0;
      v26 = ((v25 * -0.5) + 1.0);
      *(v1 + 264) = v26;
      v27 = (v8.f32[2] * -20.0) + 1.0;
      if (v27 >= 0.1)
      {
        v28 = v27 * 0.01;
      }

      else
      {
        v28 = 0.001;
      }

      if (v8.f32[2] > 0.012)
      {
        v29 = v26 - (v8.f32[2] + -0.012);
        if (v29 <= 0.1)
        {
          v29 = 0.1;
        }

        *(v1 + 264) = v29;
        v30 = ((v8.f32[2] + -0.012) * -20.0) + 1.0;
        if (v30 < 0.0)
        {
          v30 = 0.0;
        }

        v28 = v30 * v28;
      }

      v14.f32[2] = v25 * v28;
    }

    goto LABEL_5;
  }

  *(v1 + 256) = 1.0 - fmin((v13.f32[0] + -0.5), 0.9);
  v15 = 0.6;
LABEL_6:
  v16.i64[0] = vaddq_f32(vmulq_n_f32(v8, v15), v14).u64[0];
  v16.i64[1] = v14.i64[1];
  v33 = v16;
  *(v1 + 160) = v16;
  sub_1000AB384(&off_100121F50);
  v31 = v17;
  sub_1000AB384(&off_100121F80);
  v19 = v31;
  v18 = v33;
  v18.i32[3] = 0;
  v19.i32[3] = 0;
  v20 = vmaxnmq_f32(v18, v19);
  v20.i32[3] = 0;
  v21.i32[3] = 0;
  *(v1 + 160) = vminnmq_f32(v20, v21);
  result = _s22MercuryPosterExtension9ToriSceneC9startTimeSdvpfi_0();
  *(v1 + 136) = v23;
  return result;
}

uint64_t ShippouScene.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ShippouScene.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_1000AA308(void *a1, int64_t a2, char a3)
{
  result = sub_1000AA508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000AA328(void *a1, int64_t a2, char a3)
{
  result = sub_1000AA63C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000AA348(void *a1, int64_t a2, char a3)
{
  result = sub_1000AA784(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000AA368(void *a1, int64_t a2, char a3)
{
  result = sub_1000AA8D0(a1, a2, a3, *v3, &qword_100132918, &unk_1000F3C30, &qword_100131DE0);
  *v3 = result;
  return result;
}

void *sub_1000AA3A8(void *a1, int64_t a2, char a3)
{
  result = sub_1000AA8D0(a1, a2, a3, *v3, &unk_1001322C0, &unk_1000F3C40, &unk_100132920);
  *v3 = result;
  return result;
}

char *sub_1000AA3E8(char *a1, int64_t a2, char a3)
{
  result = sub_1000AAA18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000AA408(char *a1, int64_t a2, char a3)
{
  result = sub_1000AAB0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000AA428(char *a1, int64_t a2, char a3)
{
  result = sub_1000AAC18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000AA448(char *a1, int64_t a2, char a3)
{
  result = sub_1000AAD1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000AA468(char *a1, int64_t a2, char a3)
{
  result = sub_1000AAE2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000AA488(char *a1, int64_t a2, char a3)
{
  result = sub_1000AAF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000AA4A8(char *a1, int64_t a2, char a3)
{
  result = sub_1000AB040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000AA4C8(void *a1, int64_t a2, char a3)
{
  result = sub_1000AB144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000AA4E8(char *a1, int64_t a2, char a3)
{
  result = sub_1000AB278(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000AA508(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000125FC(&qword_100132938);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000125FC(&qword_100132940);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000AA63C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000125FC(&unk_100130D10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000125FC(&unk_1001311F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000AA784(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000125FC(&qword_100132948);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000125FC(&qword_100132950);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000AA8D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000125FC(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000125FC(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1000AAA18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_100132910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000AAB0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&unk_100131DB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000AAC18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_100132958);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 7);
  }

  return v10;
}

char *sub_1000AAD1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&unk_100132960);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1000AAE2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_100132930);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000AAF3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_1001328E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000AB040(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_1001328F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000AB144(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000125FC(&qword_100132900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000125FC(&qword_100132908);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000AB278(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000125FC(&qword_1001328F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_1000AB384(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000AB3D0()
{
  result = qword_100132530;
  if (!qword_100132530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132530);
  }

  return result;
}

uint64_t sub_1000AB448(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AB4A4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000AB4F0()
{
  result = qword_1001328E0;
  if (!qword_1001328E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001328E0);
  }

  return result;
}

void sub_1000AB544()
{
  v0 = kCGColorSpaceDisplayP3;
  v1 = CGColorSpaceCreateWithName(v0);

  qword_10013DC20 = v1;
}

uint64_t ShippouRenderer.scene.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void sub_1000AB670(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *(v1 + 184);
  if (v4 != 5)
  {
    if (a1 == 5 || (sub_10009DEC8(v4, a1) & 1) == 0 && (v4 = *(v1 + 184), v4 != 5))
    {
      v11 = v4;
      v12 = off_100125DB0[v4];
      if (v12[2])
      {
        v13 = *(v1 + 80);
        v15 = v12[4];
        v14 = v12[5];
        swift_unknownObjectRetain();

        v16 = sub_1000E7994(v13, v15, v14, 6711668, 0xE300000000000000, 4);

        swift_unknownObjectRelease();
        *(v2 + 128) = v16;
        swift_unknownObjectRelease();
        v17 = off_100125DB0[v11];
        if (v17[2] >= 2)
        {
          v18 = *(v2 + 80);
          v20 = v17[6];
          v19 = v17[7];
          swift_unknownObjectRetain();

          v21 = sub_1000E7994(v18, v20, v19, 6711668, 0xE300000000000000, 4);

          swift_unknownObjectRelease();
          *(v2 + 136) = v21;
          swift_unknownObjectRelease();
          v22 = off_100125DB0[v11];
          if (v22[2] >= 3)
          {
            v23 = *(v2 + 80);
            v25 = v22[8];
            v24 = v22[9];
            swift_unknownObjectRetain();

            v26 = sub_1000E7994(v23, v25, v24, 6711668, 0xE300000000000000, 4);

            swift_unknownObjectRelease();
            *(v2 + 144) = v26;
            swift_unknownObjectRelease();
            v27 = off_100125DB0[v11];
            if (v27[2] >= 4)
            {
              v28 = *(v2 + 80);
              v30 = v27[10];
              v29 = v27[11];
              swift_unknownObjectRetain();

              v31 = sub_1000E7994(v28, v30, v29, 6711668, 0xE300000000000000, 4);

              swift_unknownObjectRelease();
              *(v2 + 152) = v31;
              swift_unknownObjectRelease();
              swift_beginAccess();
              v33 = *(v2 + 80);
              v32 = *(v2 + 88);

              v34 = swift_unknownObjectRetain();
              sub_1000C8E80(v34, v11);
              sub_1000AD7A4(v33, v11, v32);

              swift_unknownObjectRelease();
              return;
            }

LABEL_24:
            __break(1u);

            while (1)
            {
              swift_unknownObjectRelease();
              sub_1000E9D64(34);

              v38[3] = 0xD000000000000020;
              v38[4] = 0x80000001000F90B0;
              v40._countAndFlagsBits = sub_100099F24();
              sub_1000E99A4(v40);

              sub_1000E9E44();
              __break(1u);
            }
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  if (qword_10012F778 != -1)
  {
    swift_once();
  }

  v5 = sub_1000E96A4();
  sub_100007488(v5, qword_10013DE30);

  oslog = sub_1000E9684();
  v6 = sub_1000E9B94();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38[0] = v8;
    *v7 = 136315138;
    if (*(v2 + 184) == 5)
    {
      v9 = 0xE400000000000000;
      v10 = 1701736302;
    }

    else
    {
      v10 = sub_100099F24();
      v9 = v35;
    }

    v36 = sub_100093A3C(v10, v9, v38);

    *(v7 + 4) = v36;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Warning: Look is either nil or identical %s", v7, 0xCu);
    sub_100012710(v8);
  }

  else
  {
  }
}

uint64_t ToriRenderer.__allocating_init(device:identifier:pixelWidth:pixelHeight:commandBuffer:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  ToriRenderer.init(device:identifier:pixelWidth:pixelHeight:commandBuffer:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ToriRenderer.init(device:identifier:pixelWidth:pixelHeight:commandBuffer:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 184) = 5;
  *(v5 + 160) = 0;
  *(v5 + 168) = a2;
  *(v5 + 176) = a3;
  *(v5 + 80) = a1;

  v11 = [swift_unknownObjectRetain() newDefaultLibrary];
  v12 = v11;
  if (!v11)
  {

    sub_1000AC378();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  *(v5 + 88) = v11;
  type metadata accessor for ToriScene();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = ToriScene.init(device:)(a1);
  if (v6)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_5:
    swift_unknownObjectRelease();
    v15 = 0;
    v16 = 0;
    goto LABEL_6;
  }

  *(v5 + 56) = v13;
  v18 = sub_1000ACF08(a1, a4 / 2, a5);
  *(v5 + 104) = v20;
  *(v5 + 112) = v19;
  *(v5 + 96) = v18;
  v21 = objc_allocWithZone(MTLRenderPipelineDescriptor);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = [v21 init];
  v23 = sub_1000E98E4();
  v24 = [v12 newFunctionWithName:v23];

  [v22 setVertexFunction:v24];
  swift_unknownObjectRelease();
  v25 = sub_1000E98E4();
  v26 = [v12 newFunctionWithName:v25];

  [v22 setFragmentFunction:v26];
  swift_unknownObjectRelease();
  v27 = [v22 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript:0];

  if (v28)
  {

    [v28 setPixelFormat:81];

    v38 = 0;
    v29 = [a1 newRenderPipelineStateWithDescriptor:v22 error:&v38];
    v28 = v38;
    if (v29)
    {
      *(v5 + 72) = v29;
      v30 = objc_allocWithZone(MTLDepthStencilDescriptor);
      v31 = v28;
      v32 = [v30 init];
      [v32 setDepthWriteEnabled:1];
      [v32 setDepthCompareFunction:1];
      v33 = [a1 newDepthStencilStateWithDescriptor:v32];
      if (v33)
      {
        *(v5 + 64) = v33;
        swift_unknownObjectRetain();
        *(v5 + 120) = sub_1000E7994(a1, 0xD000000000000011, 0x80000001000F8FC0, 6778480, 0xE300000000000000, 4);
        sub_1000E809C(a1, 0x6C5F63696D6C6966, 0xEA00000000007475, 6711668, 0xE300000000000000, 64, 0x4163696D6C6946, 0xE700000000000000);
        v36 = v35;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        *(v5 + 160) = v36;
        swift_unknownObjectRelease();
        return v5;
      }

      sub_1000AC378();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v15 = 1;
      v16 = 1;
LABEL_6:
      sub_1000056DC(*(v5 + 16));
      sub_1000056DC(*(v5 + 32));
      if (v15)
      {
      }

      if (v16)
      {
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      if (v12)
      {
        swift_unknownObjectRelease();
      }

      if (v16)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_deallocPartialClassInstance();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  v37 = v28;
  sub_1000E92E4();

  swift_willThrow();
  swift_unexpectedError();
  sub_1000056DC(*(v7 + 16));
  sub_1000056DC(*(v7 + 32));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

unint64_t sub_1000AC378()
{
  result = qword_100132970;
  if (!qword_100132970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132970);
  }

  return result;
}

uint64_t sub_1000AC3CC(float64_t a1, float64_t a2)
{
  sub_1000125FC(&qword_100132540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EC880;
  v3 = objc_opt_self();
  v4 = [v3 mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v40.origin.x = v6;
  v40.origin.y = v8;
  v40.size.width = v10;
  v40.size.height = v12;
  v13 = CGRectGetWidth(v40) * 0.5;
  *(inited + 32) = v13;
  v14 = [v3 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v41.origin.x = v16;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  v23 = CGRectGetHeight(v41) * 0.5;
  *(inited + 36) = v23;
  sub_1000AB4A4(inited);
  v25 = v24;
  swift_setDeallocating();
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1000EC880;
  v27.f64[0] = a1;
  v27.f64[1] = a2;
  *(v26 + 32) = vsub_f32(vcvt_f32_f64(v27), v25);
  sub_1000AB4A4(v26);
  v29 = v28;
  swift_setDeallocating();
  swift_beginAccess();
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1000EC880;
  *(v30 + 32) = v25;
  sub_1000AB4A4(v30);
  v32 = v31;
  swift_setDeallocating();

  ToriScene.tap(at:)(COERCE_DOUBLE(vdiv_f32(v29, v32)), v33, v34, v35, v36);
}

uint64_t ToriRenderer.deinit()
{
  sub_1000056DC(*(v0 + 16));
  sub_1000056DC(*(v0 + 32));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ToriRenderer.__deallocating_deinit()
{
  ToriRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000AC69C()
{
  if (qword_10012F698 != -1)
  {
    swift_once();
  }

  v0 = qword_10013DC20;
  v1 = qword_10013DC20;
  return v0;
}

uint64_t sub_1000AC70C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000056DC(v3);
}

void sub_1000AC73C(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 52) & 1) == 0)
  {
    v5 = v3;
    v8 = v4;
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);

    v12 = sub_10009A748(v9, v10);
    if (v12 == 5)
    {
      if (*(v5 + 184) != 5)
      {
        goto LABEL_9;
      }

      v13 = sub_10009A500();
      v14 = *(v5 + 184);
      *(v5 + 184) = v13;
      v15 = v14;
      goto LABEL_8;
    }

    v16 = v12;
    v17 = sub_100099F24();
    v19 = v18;
    if (*(v5 + 184) == 5)
    {

LABEL_7:
      v15 = *(v5 + 184);
      *(v5 + 184) = v16;
LABEL_8:
      sub_1000AB670(v15);
      goto LABEL_9;
    }

    if (v17 == sub_100099F24() && v19 == v48)
    {
    }

    else
    {
      v50 = sub_1000E9F74();

      if ((v50 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    swift_beginAccess();

    ToriScene.update(state:size:isSnapshotting:)(a1, *(v5 + 49), [a2 width], objc_msgSend(a2, "height"));

    if (v8)
    {
      return;
    }

    v57 = a3;
    v20 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
    v21 = [v20 colorAttachments];
    v22 = [v21 objectAtIndexedSubscript:0];

    if (v22)
    {
      v23 = *(v5 + 104);
      v24 = v22;
      [v24 setTexture:v23];
      v25 = *(v5 + 96);
      [v24 setResolveTexture:v25];
      [v24 setLoadAction:2];
      [v24 setStoreAction:2];

      v56 = v24;
      [v24 setClearColor:{0.0, 0.0, 0.0, 1.0}];
      v26 = [v20 depthAttachment];
      if (v26)
      {
        v27 = *(v5 + 112);
        v28 = v26;
        [v28 setTexture:v27];
        [v28 setLoadAction:2];
        [v28 setStoreAction:0];

        [v28 setClearDepth:1.0];
        v29 = [a3 renderCommandEncoderWithDescriptor:v20];
        v30 = v20;
        if (!v29)
        {
          sub_1000AC378();
          swift_allocError();
          *v51 = 2;
          swift_willThrow();

          v37 = v56;
LABEL_28:

          return;
        }

        v31 = v29;
        v53 = v28;
        v55 = v25;
        [v29 setDepthClipMode:1];
        [v31 setDepthStencilState:*(v5 + 64)];
        [v31 setCullMode:2];
        v32 = *(v5 + 56);
        v33 = *(v32 + 32);
        swift_beginAccess();
        [v31 setVertexBuffer:v33 offset:*(v32 + 40) atIndex:2];
        v34 = *(v5 + 56);
        v35 = *(v34 + 32);
        swift_beginAccess();
        [v31 setFragmentBuffer:v35 offset:*(v34 + 40) atIndex:2];
        v36 = *(v5 + 56);
        swift_beginAccess();
        [v31 setFragmentBuffer:*(v36 + 24) offset:0 atIndex:8];
        [v31 setFragmentTexture:*(v5 + 128) atIndex:0];
        [v31 setFragmentTexture:*(v5 + 136) atIndex:1];
        [v31 setFragmentTexture:*(v5 + 144) atIndex:2];
        [v31 setFragmentTexture:*(v5 + 152) atIndex:3];
        [v31 setFragmentTexture:*(v5 + 120) atIndex:4];

        ToriMesh.draw(renderEncoder:)(v31);

        [v31 endEncoding];
        v37 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
        v54 = v30;
        v38 = [v30 colorAttachments];
        v39 = [v38 objectAtIndexedSubscript:0];

        if (v39)
        {
          v28 = v39;
          [v28 setResolveTexture:a2];
          [v28 setStoreAction:2];

          [v28 setClearColor:{0.0, 0.0, 0.0, 0.0}];
          v40 = [v37 colorAttachments];
          v41 = [v40 objectAtIndexedSubscript:0];

          if (v41)
          {
            [v41 setTexture:a2];

            v42 = [v37 colorAttachments];
            v43 = [v42 objectAtIndexedSubscript:0];

            if (v43)
            {
              [v43 setLoadAction:2];

              v44 = [v37 colorAttachments];
              v45 = [v44 objectAtIndexedSubscript:0];

              if (v45)
              {
                [v45 setClearColor:{0.0, 0.0, 0.0, 1.0}];

                v46 = [v57 renderCommandEncoderWithDescriptor:v37];
                if (v46)
                {
                  v47 = v46;
                  [v46 setRenderPipelineState:*(v5 + 72)];
                  [v47 setFragmentTexture:v55 atIndex:0];
                  [v47 setFragmentTexture:*(v5 + 160) atIndex:1];
                  [v47 drawPrimitives:3 vertexStart:0 vertexCount:6];
                  [v47 endEncoding];

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  return;
                }

                sub_1000AC378();
                swift_allocError();
                *v52 = 2;
                swift_willThrow();

                swift_unknownObjectRelease();
                goto LABEL_28;
              }

LABEL_35:
              __break(1u);
              return;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }
}

void *sub_1000ACF08(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v6 setWidth:a2];
  [v6 setHeight:a3];
  [v6 setPixelFormat:81];
  [v6 setStorageMode:2];
  [v6 setUsage:4];
  [v6 setTextureType:4];
  [v6 setSampleCount:2];
  if (![a1 newTextureWithDescriptor:v6])
  {
    sub_1000AC378();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    return a1;
  }

  [v6 setPixelFormat:250];
  if (![a1 newTextureWithDescriptor:v6])
  {
    sub_1000AC378();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();

LABEL_8:
    swift_unknownObjectRelease();
    return a1;
  }

  [v6 setTextureType:2];
  [v6 setPixelFormat:81];
  [v6 setSampleCount:1];
  [v6 setUsage:1];
  v7 = [a1 newTextureWithDescriptor:v6];
  if (!v7)
  {
    sub_1000AC378();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  a1 = v7;

  return a1;
}

unint64_t sub_1000AD194()
{
  result = qword_100132B10;
  if (!qword_100132B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132B10);
  }

  return result;
}

__n128 ToriMesh.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;
  result = a4;
  v4[4] = a3;
  v4[5] = a4;
  return result;
}

uint64_t sub_1000AD2B8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1000E93B4();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (qword_10012F4E0 != -1)
  {
    swift_once();
  }

  v38 = a1;
  v7 = *algn_10013A970;
  v8 = xmmword_10013A980;
  v9 = unk_10013A990;
  *(v2 + 32) = xmmword_10013A960;
  *(v2 + 48) = v7;
  *(v2 + 64) = v8;
  *(v2 + 80) = v9;
  if (qword_10012F6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static ToriMesh.defaultVertexDescriptor;
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 mainBundle];
  v14 = sub_1000E98E4();
  v15 = sub_1000E98E4();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    sub_1000AE530();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    return v2;
  }

  sub_1000E9364();

  v17 = objc_allocWithZone(MTKMeshBufferAllocator);
  v18 = [v17 initWithDevice:v38];
  v19 = objc_allocWithZone(MDLAsset);
  sub_1000E9344(v20);
  v22 = v21;
  v23 = [v19 initWithURL:v21 vertexDescriptor:v12 bufferAllocator:v18];

  [v23 loadTextures];
  sub_100012904(0, &unk_100132C30);
  v24 = [v23 childObjectsOfClass:swift_getObjCClassFromMetadata()];
  sub_100012904(0, &qword_1001322B0);
  v25 = sub_1000E9A94();

  if (!(v25 >> 62))
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!sub_1000E9E64())
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = sub_1000E9D74();
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v26 = *(v25 + 32);
  }

  v27 = v26;

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {

LABEL_19:
    sub_1000AE530();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();

    (*(v4 + 8))(v6, v37);
    return v2;
  }

  v29 = v28;

  (*(v4 + 8))(v6, v37);
  v30 = objc_allocWithZone(MTKMesh);
  v39 = 0;
  v31 = [v30 initWithMesh:v29 device:v38 error:&v39];
  v32 = v39;
  if (v31)
  {

    swift_unknownObjectRelease();
    v33 = *(v2 + 24);
    *(v2 + 24) = v31;
  }

  else
  {
    v34 = v32;
    sub_1000E92E4();

    swift_willThrow();

    swift_unknownObjectRelease();
  }

  return v2;
}

void sub_1000AD7A4(void *a1, unsigned __int8 a2, void *a3)
{
  v5 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  sub_1000E9D64(21);

  v6 = a2;
  v7 = 0xE300000000000000;
  v34 = 0x3A3A69726F74;
  v35 = 0xE600000000000000;
  v8 = 1920298854;
  v9 = 0x6565726874;
  if (a2 == 3)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v9 = 7305076;
  }

  if (a2 == 2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v8 = v9;
  }

  v10 = 0xE300000000000000;
  v11 = 6647407;
  if (a2)
  {
    v11 = 1702259046;
    v10 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v12._countAndFlagsBits = v11;
  }

  else
  {
    v12._countAndFlagsBits = v8;
  }

  if (a2 <= 1u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  v12._object = v13;
  sub_1000E99A4(v12);

  v36._countAndFlagsBits = 0x567375726F743A3ALL;
  v36._object = 0xED00007865747265;
  sub_1000E99A4(v36);
  v14 = sub_1000E98E4();

  v15 = [a3 newFunctionWithName:v14];

  [v5 setVertexFunction:v15];
  swift_unknownObjectRelease();
  sub_1000E9D64(23);

  v16 = 0xE300000000000000;
  v34 = 0x3A3A69726F74;
  v35 = 0xE600000000000000;
  v17 = 1920298854;
  v18 = 0x6565726874;
  if (v6 == 3)
  {
    v16 = 0xE500000000000000;
  }

  else
  {
    v18 = 7305076;
  }

  if (v6 == 2)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v17 = v18;
  }

  v19 = 0xE300000000000000;
  v20 = 6647407;
  if (v6)
  {
    v20 = 1702259046;
    v19 = 0xE400000000000000;
  }

  if (v6 <= 1)
  {
    v21._countAndFlagsBits = v20;
  }

  else
  {
    v21._countAndFlagsBits = v17;
  }

  if (v6 <= 1)
  {
    v22 = v19;
  }

  else
  {
    v22 = v16;
  }

  v21._object = v22;
  sub_1000E99A4(v21);

  v37._countAndFlagsBits = 0x467375726F743A3ALL;
  v37._object = 0xEF746E656D676172;
  sub_1000E99A4(v37);
  v23 = sub_1000E98E4();

  v24 = [a3 newFunctionWithName:v23];

  [v5 setFragmentFunction:v24];
  swift_unknownObjectRelease();
  if (qword_10012F6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = MTKMetalVertexDescriptorFromModelIO(static ToriMesh.defaultVertexDescriptor);
  [v5 setVertexDescriptor:v25];

  v26 = [v5 colorAttachments];
  v27 = [v26 objectAtIndexedSubscript:0];

  if (!v27)
  {
    __break(1u);
  }

  [v27 setPixelFormat:81];

  [v5 setDepthAttachmentPixelFormat:250];
  [v5 setRasterSampleCount:2];
  v33 = 0;
  v28 = [a1 newRenderPipelineStateWithDescriptor:v5 error:&v33];
  v29 = v33;
  if (v28)
  {

    *(v31 + 16) = v28;
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = v29;
    sub_1000E92E4();

    swift_willThrow();
  }
}

uint64_t *ToriMesh.defaultVertexDescriptor.unsafeMutableAddressor()
{
  if (qword_10012F6A0 != -1)
  {
    swift_once();
  }

  return &static ToriMesh.defaultVertexDescriptor;
}

uint64_t ToriMesh.draw(renderEncoder:)(uint64_t result)
{
  v35 = result;
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      swift_beginAccess();
      *v31 = *(v1 + 48);
      v33 = *(v1 + 32);
      v29 = *(v1 + 80);
      v30 = *(v1 + 64);
      sub_100012DAC(&v37, v33, *v31, v30);
      v38 = __invert_f3(v37);
      v4 = vzip1q_s32(v38.columns[0], v38.columns[2]);
      v5 = vzip1q_s32(v38.columns[1], 0);
      v6 = vzip1q_s32(v4, v5);
      v7 = vzip2q_s32(v4, v5);
      v6.i32[2] = vdupq_lane_s32(*(&v38 + 32), 0).i32[2];
      v38.columns[0] = vzip2q_s32(v38.columns[0], v38.columns[1]);
      v7.i32[2] = vdupq_lane_s32(*(&v38 + 32), 1).i32[2];
      v38.columns[0].i32[2] = v38.columns[2].i32[2];
      v36[0] = v33;
      v36[1] = *v31;
      v36[2] = v30;
      v36[3] = v29;
      v36[4] = v6;
      v36[5] = v7;
      v36[6] = v38.columns[0];
      v8 = v2;
      swift_unknownObjectRetain();
      [v35 setRenderPipelineState:v3];
      [v35 setVertexBytes:v36 length:112 atIndex:3];
      [v35 setFragmentBytes:v36 length:112 atIndex:3];
      v32 = v8;
      v9 = [v8 vertexBuffers];
      sub_100012904(0, &qword_100132290);
      v10 = sub_1000E9A94();

      if (v10 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E9E64())
      {
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = sub_1000E9D74();
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          [v35 setVertexBuffer:objc_msgSend(v13 offset:"buffer") atIndex:{objc_msgSend(v13, "offset"), v12}];

          swift_unknownObjectRelease();
          ++v12;
          if (v15 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }

LABEL_16:

      v16 = [v32 submeshes];
      sub_100012904(0, &qword_100132298);
      v17 = sub_1000E9A94();

      if (v17 >> 62)
      {
        v18 = sub_1000E9E64();
        if (v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
LABEL_18:
          if (v18 < 1)
          {
            __break(1u);
          }

          v19 = 0;
          v34 = v17 & 0xC000000000000001;
          v20 = v17;
          do
          {
            if (v34)
            {
              v21 = sub_1000E9D74();
            }

            else
            {
              v21 = *(v17 + 8 * v19 + 32);
            }

            v22 = v21;
            ++v19;
            v23 = [v21 indexCount];
            v24 = [v22 indexType];
            v25 = [v22 indexBuffer];
            v26 = [v25 buffer];

            v27 = [v22 indexBuffer];
            v28 = [v27 offset];

            [v35 drawIndexedPrimitives:3 indexCount:v23 indexType:v24 indexBuffer:v26 indexBufferOffset:v28];
            swift_unknownObjectRelease();
            v17 = v20;
          }

          while (v18 != v19);
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t ToriMesh.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ToriMesh.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1000AE0D0()
{
  result = sub_1000AE0F0();
  static ToriMesh.defaultVertexDescriptor = result;
  return result;
}

id sub_1000AE0F0()
{
  v0 = [objc_allocWithZone(MDLVertexDescriptor) init];
  v1 = [v0 attributes];
  v2 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributePosition format:786435 offset:0 bufferIndex:0];
  [v1 setObject:v2 atIndexedSubscript:0];

  v3 = [v0 attributes];
  v4 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributeNormal format:786435 offset:12 bufferIndex:0];
  [v3 setObject:v4 atIndexedSubscript:1];

  v5 = [v0 attributes];
  v6 = [objc_allocWithZone(MDLVertexAttribute) initWithName:MDLVertexAttributeTextureCoordinate format:786434 offset:24 bufferIndex:0];
  [v5 setObject:v6 atIndexedSubscript:2];

  v7 = [v0 layouts];
  v8 = [objc_allocWithZone(MDLVertexBufferLayout) initWithStride:32];
  [v7 setObject:v8 atIndexedSubscript:0];

  return v0;
}

id static ToriMesh.defaultVertexDescriptor.getter()
{
  if (qword_10012F6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static ToriMesh.defaultVertexDescriptor;

  return v0;
}

void static ToriMesh.defaultVertexDescriptor.setter(uint64_t a1)
{
  if (qword_10012F6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static ToriMesh.defaultVertexDescriptor;
  static ToriMesh.defaultVertexDescriptor = a1;
}

uint64_t (*static ToriMesh.defaultVertexDescriptor.modify())()
{
  if (qword_10012F6A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

__n128 sub_1000AE470(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1000AE494(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000AE4B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

unint64_t sub_1000AE530()
{
  result = qword_100132C28;
  if (!qword_100132C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C28);
  }

  return result;
}

unint64_t sub_1000AE598()
{
  result = qword_100132C40;
  if (!qword_100132C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C40);
  }

  return result;
}

void sub_1000AE5EC(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = sub_1000E9734();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= *(a2 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = *(a2 + 8 * v9 + 32);
  v11 = *(v10 + 16);
  if (v11)
  {
    v23 = a3;
    v26 = _swiftEmptyArrayStorage;

    sub_1000AA4E8(0, v11, 0);
    v12 = v26;
    v13 = enum case for Color.RGBColorSpace.sRGB(_:);
    v14 = *(v6 + 104);
    v15 = 32;
    do
    {
      v25 = *(v10 + v15);
      v14(v8, v13, v24);
      sub_1000E9744();
      v16 = sub_1000E97A4();
      v26 = v12;
      v19 = v12[2];
      v18 = v12[3];
      if (v19 >= v18 >> 1)
      {
        *&v25 = v16;
        v21 = v17;
        sub_1000AA4E8((v18 > 1), v19 + 1, 1);
        v17 = v21;
        v16 = v25;
        v12 = v26;
      }

      v12[2] = v19 + 1;
      v20 = &v12[2 * v19];
      v20[4] = v16;
      v20[5] = v17;
      v15 += 16;
      --v11;
    }

    while (v11);

    a3 = v23;
  }

  sub_1000E97D4();
  sub_1000E97E4();
  sub_1000E97B4();
  sub_1000E96F4();
  *a3 = v26;
  v22 = v28;
  *(a3 + 8) = v27;
  *(a3 + 24) = v22;
  *(a3 + 40) = 256;
}

CGColorSpace *sub_1000AE858(uint64_t *a1, size_t a2, size_t a3, uint64_t a4, void *a5)
{
  v109 = a2;
  v10 = sub_1000125FC(&qword_100132C50);
  __chkstk_darwin(v10);
  v12 = (&v95 - v11);
  v14 = *a1;
  v13 = a1[1];
  v15 = v13 >> 62;
  v110 = a5;
  v108 = v16;
  if ((v13 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v104 = v12;
      v37 = a3;

      swift_unknownObjectRetain();

      sub_1000190E4(v14, v13);
      *&v113[0] = v14;
      *(&v113[0] + 1) = v13 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1000F2520;
      sub_1000190E4(0, 0xC000000000000000);
      sub_1000E93C4();
      v38 = *(&v113[0] + 1);
      v105 = *&v113[0];
      v39 = *(*&v113[0] + 16);
      v40 = sub_1000E9214();
      if (!v40)
      {
        swift_unknownObjectRelease();

        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v41 = v40;
      v42 = sub_1000E9244();
      v43 = __OFSUB__(v39, v42);
      v44 = v39 - v42;
      v45 = v109;
      if (v43)
      {
        goto LABEL_40;
      }

      v102 = v38;
      sub_1000E9234();
      if ((v45 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      result = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
      if (!result)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v46 = result;
      v47 = (v41 + v44);
      KeyPath = v44;
      v101 = 4 * v45;
      v48 = v37;
      v49 = sub_1000AFADC(v47, v45, v37, 4 * v45, v46);

      if (v49)
      {
        v106 = v5;
        v50 = sub_1000E9704();
        v98 = v49;
        v99 = v41;
        v51 = v104;
        *v104 = v50;
        v51[1] = 0;
        *(v51 + 16) = 0;
        v97 = *(sub_1000125FC(&qword_100132C58) + 44);
        v52 = *(a4 + 16);
        v111 = 0;
        v112 = v52;
        swift_getKeyPath();
        v53 = swift_allocObject();
        v103 = a1;
        v107 = a4;
        *(v53 + 16) = a4;

        sub_1000125FC(&qword_100132C60);
        sub_1000125FC(&qword_100132C68);
        sub_1000AFAF8();
        sub_1000AFBD8();
        sub_1000E9794();
        sub_1000E97C4();
        sub_1000E96C4();
        v54 = (v51 + *(v108 + 36));
        v55 = v113[11];
        *v54 = v113[10];
        v54[1] = v55;
        v54[2] = v113[12];
        sub_1000125FC(&qword_100132C88);
        swift_allocObject();
        v56 = sub_1000E96E4();
        __chkstk_darwin(v56);
        v57 = v98;
        sub_1000E96D4();

        sub_100098A34(v45, v48, &v111);
        [v110 replaceRegion:&v111 mipmapLevel:0 withBytes:v99 + KeyPath bytesPerRow:v101];
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();

        v58 = v103;
        v59 = v102 | 0x8000000000000000;
        *v103 = v105;
        v58[1] = v59;
      }

      else
      {
        sub_10001B6F8();
        swift_allocError();
        *v74 = 3;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        v75 = v102 | 0x8000000000000000;
        *a1 = v105;
        a1[1] = v75;
      }
    }

    else
    {
      v62 = v109;
      *(v113 + 7) = 0;
      *&v113[0] = 0;
      if ((v109 - 0x2000000000000000) >> 62 != 3)
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      swift_unknownObjectRetain();
      result = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
      if (!result)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v63 = result;
      v64 = sub_1000AFADC(v113, v62, a3, 4 * v62, result);

      if (v64)
      {
        v106 = v5;
        *v12 = sub_1000E9704();
        v12[1] = 0;
        *(v12 + 16) = 0;
        sub_1000125FC(&qword_100132C58);
        v105 = a3;
        v65 = *(a4 + 16);
        v111 = 0;
        v112 = v65;
        swift_getKeyPath();
        v66 = swift_allocObject();
        v107 = a4;
        *(v66 + 16) = a4;

        sub_1000125FC(&qword_100132C60);
        sub_1000125FC(&qword_100132C68);
        v104 = (4 * v62);
        sub_1000AFAF8();
        v103 = v64;
        sub_1000AFBD8();
        sub_1000E9794();
        v67 = v105;
        sub_1000E97C4();
        sub_1000E96C4();
        v68 = v12 + *(v108 + 36);
        v69 = v113[2];
        *v68 = v113[1];
        *(v68 + 1) = v69;
        *(v68 + 2) = v113[3];
        sub_1000125FC(&qword_100132C88);
        swift_allocObject();
        v70 = sub_1000E96E4();
        __chkstk_darwin(v70);
        v71 = v103;
        sub_1000E96D4();

        sub_100098A34(v62, v67, &v111);
        [v110 replaceRegion:&v111 mipmapLevel:0 withBytes:v113 bytesPerRow:v104];
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        sub_10001B6F8();
        swift_allocError();
        *v73 = 3;
        swift_willThrow();
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
      }
    }

    return swift_unknownObjectRelease();
  }

  v104 = v12;
  v105 = a3;
  v106 = v5;
  if (!v15)
  {
    v103 = a1;
    v96 = HIBYTE(v14);
    v97 = v13 >> 8;
    v98 = v13 >> 16;
    v99 = v13 >> 24;
    KeyPath = HIDWORD(v13);
    v101 = v13 >> 40;
    v102 = HIWORD(v13);
    v107 = a4;

    swift_unknownObjectRetain();
    sub_1000190E4(v14, v13);
    LOWORD(v113[0]) = v14;
    BYTE2(v113[0]) = BYTE2(v14);
    BYTE3(v113[0]) = BYTE3(v14);
    BYTE4(v113[0]) = BYTE4(v14);
    BYTE5(v113[0]) = BYTE5(v14);
    BYTE6(v113[0]) = BYTE6(v14);
    BYTE7(v113[0]) = v96;
    BYTE8(v113[0]) = v13;
    BYTE9(v113[0]) = v97;
    BYTE10(v113[0]) = v98;
    BYTE11(v113[0]) = v99;
    BYTE12(v113[0]) = KeyPath;
    BYTE13(v113[0]) = v101;
    v17 = v109;
    BYTE14(v113[0]) = v102;
    if ((v109 - 0x2000000000000000) >> 62 == 3)
    {
      result = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
      if (result)
      {
        v19 = result;
        v20 = v105;
        v21 = sub_1000AFADC(v113, v17, v105, 4 * v17, result);

        v22 = v107;
        if (v21)
        {
          v23 = sub_1000E9704();
          v101 = v21;
          v24 = v104;
          *v104 = v23;
          v24[1] = 0;
          *(v24 + 16) = 0;
          sub_1000125FC(&qword_100132C58);
          v25 = *(v22 + 16);
          v111 = 0;
          v112 = v25;
          KeyPath = swift_getKeyPath();
          v26 = swift_allocObject();
          v102 = 4 * v17;
          *(v26 + 16) = v22;

          sub_1000125FC(&qword_100132C60);
          sub_1000125FC(&qword_100132C68);
          sub_1000AFAF8();
          sub_1000AFBD8();
          v27 = v110;
          sub_1000E9794();
          v28 = v17;
          sub_1000E97C4();
          sub_1000E96C4();
          v29 = (v24 + *(v108 + 36));
          v30 = v113[5];
          v31 = v113[6];
          *v29 = v113[4];
          v29[1] = v30;
          v29[2] = v31;
          sub_1000125FC(&qword_100132C88);
          swift_allocObject();
          v32 = sub_1000E96E4();
          __chkstk_darwin(v32);
          v33 = v101;
          sub_1000E96D4();

          sub_100098A34(v28, v20, &v111);
          [v27 replaceRegion:&v111 mipmapLevel:0 withBytes:v113 bytesPerRow:v102];
        }

        else
        {
          sub_10001B6F8();
          swift_allocError();
          *v72 = 3;
          swift_willThrow();
        }

        v34 = *&v113[0];
        v35 = DWORD2(v113[0]) | ((WORD6(v113[0]) | (BYTE14(v113[0]) << 16)) << 32);
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        v36 = v103;
        *v103 = v34;
        v36[1] = v35;
        return swift_unknownObjectRelease();
      }

      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_39;
  }

  v60 = v13 & 0x3FFFFFFFFFFFFFFFLL;

  swift_unknownObjectRetain();
  sub_100031E2C(v14, v13);
  sub_1000190E4(v14, v13);
  *a1 = xmmword_1000F2520;
  sub_1000190E4(0, 0xC000000000000000);

  swift_unknownObjectRetain();
  v61 = v14 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v102 = v61 - v14;
    v103 = a1;
    if (v61 < v14)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (sub_1000E9214() && __OFSUB__(v14, sub_1000E9244()))
    {
LABEL_46:
      __break(1u);
    }

    sub_1000E9254();
    swift_allocObject();
    v76 = sub_1000E91F4();

    v60 = v76;
    a1 = v103;
  }

  if (v61 < v14)
  {
    goto LABEL_41;
  }

  result = sub_1000E9214();
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v77 = result;
  v78 = sub_1000E9244();
  v79 = v14 - v78;
  if (__OFSUB__(v14, v78))
  {
    goto LABEL_43;
  }

  sub_1000E9234();
  if ((v109 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v103 = v60;
  result = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  if (result)
  {
    v80 = result;
    v81 = v77 + v79;
    KeyPath = v79;
    v101 = 4 * v109;
    v82 = v105;
    v83 = sub_1000AFADC(v81, v109, v105, 4 * v109, v80);

    v102 = v83;
    if (v83)
    {
      v84 = sub_1000E9704();
      v85 = v104;
      *v104 = v84;
      v85[1] = 0;
      *(v85 + 16) = 0;
      v98 = *(sub_1000125FC(&qword_100132C58) + 44);
      v86 = *(a4 + 16);
      v111 = 0;
      v112 = v86;
      v97 = swift_getKeyPath();
      *(swift_allocObject() + 16) = a4;

      sub_1000125FC(&qword_100132C60);
      v107 = a4;
      sub_1000125FC(&qword_100132C68);
      sub_1000AFAF8();
      v99 = v77;
      sub_1000AFBD8();
      sub_1000E9794();
      v87 = v109;
      sub_1000E97C4();
      sub_1000E96C4();
      v88 = (v85 + *(v108 + 36));
      v89 = v113[8];
      *v88 = v113[7];
      v88[1] = v89;
      v88[2] = v113[9];
      sub_1000125FC(&qword_100132C88);
      swift_allocObject();
      v90 = v110;
      v91 = sub_1000E96E4();
      __chkstk_darwin(v91);
      v92 = v102;
      sub_1000E96D4();

      sub_100098A34(v87, v82, &v111);
      [v90 replaceRegion:&v111 mipmapLevel:0 withBytes:v99 + KeyPath bytesPerRow:v101];
      swift_unknownObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v93 = v103;
    }

    else
    {
      sub_10001B6F8();
      swift_allocError();
      *v94 = 3;
      swift_willThrow();
      swift_unknownObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v93 = v103;
    }

    *a1 = v14;
    a1[1] = v93 | 0x4000000000000000;
    return swift_unknownObjectRelease();
  }

LABEL_52:
  __break(1u);
  return result;
}

unint64_t sub_1000AF860(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AF880(uint64_t result)
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
      sub_1000E9254();
      swift_allocObject();
      sub_1000E9224();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1000E93E4();
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

void sub_1000AF920(uint64_t a1, size_t a2, void *a3)
{
  v7 = *(a1 + 16);
  v8 = [objc_opt_self() texture2DDescriptorWithPixelFormat:70 width:a2 height:v7 mipmapped:0];
  [v8 setStorageMode:0];
  [v8 setUsage:1];
  v9 = [a3 newTextureWithDescriptor:v8];
  if (!v9)
  {
    sub_10001B6F8();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();

    return;
  }

  v10 = sub_1000E98E4();
  [v9 setLabel:v10];

  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = 4 * a2 * v7;
  if (((4 * a2) * v7) >> 64 != v11 >> 63)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = sub_1000AF880(v11);
  v15 = v12;

  swift_unknownObjectRetain();
  sub_1000AE858(&v14, a2, v7, a1, v9);
  if (v3)
  {
    swift_unknownObjectRelease();
  }

  sub_1000190E4(v14, v15);
}

unint64_t sub_1000AFAF8()
{
  result = qword_100132C70;
  if (!qword_100132C70)
  {
    sub_100019048(&qword_100132C60);
    sub_1000AFB84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C70);
  }

  return result;
}

unint64_t sub_1000AFB84()
{
  result = qword_100132C78;
  if (!qword_100132C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C78);
  }

  return result;
}

unint64_t sub_1000AFBD8()
{
  result = qword_100132C80;
  if (!qword_100132C80)
  {
    sub_100019048(&qword_100132C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C80);
  }

  return result;
}

uint64_t sub_1000AFC98()
{
  v0 = sub_1000E9514();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1000E98D4();
  __chkstk_darwin(v1 - 8);
  sub_1000E98C4();
  sub_1000E9504();
  return sub_1000E9934();
}

uint64_t sub_1000AFE40(char *a1, char *a2)
{
  if (*&aColor03color01_0[8 * *a1] == *&aColor03color01_0[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000E9F74();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_1000AFEA8()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_1000AFF04()
{
  sub_1000E9974();
}

Swift::Int sub_1000AFF44()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_1000AFF9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s22MercuryPosterExtension10FloconLookO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000AFFF8()
{
  v0 = MobileGestalt_get_current_device();
  v1 = MobileGestalt_copy_deviceEnclosureColor();

  if (!v1)
  {
    return 1;
  }

  v3 = sub_1000E99B4();
  v4 = v2;
  if (v3 == 57 && v2 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 0;
  }

  if (v3 == 50 && v4 == 0xE100000000000000 || (sub_1000E9F74() & 1) != 0)
  {

    return 1;
  }

  if (v3 == 56 && v4 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000E9F74();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t _s22MercuryPosterExtension10FloconLookO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10011F660;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B0168()
{
  result = qword_100132C90;
  if (!qword_100132C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C90);
  }

  return result;
}

unint64_t sub_1000B01C0()
{
  result = qword_100132C98;
  if (!qword_100132C98)
  {
    sub_100019048(&unk_100132CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132C98);
  }

  return result;
}

uint64_t sub_1000B0234()
{
  sub_1000125FC(&unk_100130390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EDAA0;
  v1 = MTKTextureLoaderOptionGenerateMipmaps;
  *(inited + 32) = MTKTextureLoaderOptionGenerateMipmaps;
  *(inited + 40) = 0;
  v2 = MTKTextureLoaderOptionSRGB;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = v2;
  *(inited + 80) = 0;
  v3 = MTKTextureLoaderOptionTextureUsage;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = v3;
  *(inited + 120) = 1;
  v4 = MTKTextureLoaderOptionTextureStorageMode;
  *(inited + 144) = &type metadata for UInt;
  *(inited + 152) = v4;
  *(inited + 184) = &type metadata for UInt;
  *(inited + 160) = 2;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = sub_1000A0EDC(inited);
  swift_setDeallocating();
  sub_1000125FC(&unk_100130CE0);
  result = swift_arrayDestroy();
  qword_100132CB0 = v9;
  return result;
}

id sub_1000B0354(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v40 = a6;
  v41 = a5;
  v10 = sub_1000E93B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = [objc_opt_self() mainBundle];
  v38 = a2;
  v18 = sub_1000E98E4();
  v39._countAndFlagsBits = a3;
  v39._object = a4;
  v19 = sub_1000E98E4();
  v20 = [v17 URLForResource:v18 withExtension:v19];

  if (v20)
  {
    sub_1000E9364();

    (*(v11 + 32))(v16, v13, v10);
    sub_1000E9344(v21);
    v23 = v22;
    type metadata accessor for Option(0);
    sub_1000A1E1C(&qword_10012F9E0, type metadata accessor for Option);
    isa = sub_1000E9894().super.isa;
    v42 = 0;
    v25 = [v41 newTextureWithContentsOfURL:v23 options:isa error:&v42];

    if (v25)
    {
      v26 = *(v11 + 8);
      v27 = v42;
      v26(v16, v10);
    }

    else
    {
      v35 = v42;
      sub_1000E92E4();

      swift_willThrow();
      (*(v11 + 8))(v16, v10);
    }
  }

  else
  {
    sub_1000125FC(&unk_100131D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000EC870;
    *(inited + 32) = sub_1000E9914();
    *(inited + 40) = v29;
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1000E9D64(24);

    v42 = 0xD000000000000013;
    v43 = 0x80000001000F94D0;
    v44._countAndFlagsBits = a1;
    v44._object = v38;
    sub_1000E99A4(v44);
    v45._countAndFlagsBits = 46;
    v45._object = 0xE100000000000000;
    sub_1000E99A4(v45);
    sub_1000E99A4(v39);
    v30 = v42;
    v31 = v43;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v30;
    *(inited + 56) = v31;
    v25 = sub_1000A12F0(inited);
    swift_setDeallocating();
    sub_1000B8900(inited + 32);
    v32 = objc_allocWithZone(NSError);
    v33 = sub_1000E98E4();
    v34 = sub_1000E9894().super.isa;

    [v32 initWithDomain:v33 code:404 userInfo:v34];

    swift_willThrow();
  }

  return v25;
}

Swift::Int sub_1000B07B0()
{
  v1 = *v0;
  sub_1000EA024();
  sub_1000EA054(dword_1000F40F0[v1]);
  return sub_1000EA064();
}

Swift::Int sub_1000B0838()
{
  v1 = *v0;
  sub_1000EA024();
  sub_1000EA054(dword_1000F40F0[v1]);
  return sub_1000EA064();
}

uint64_t sub_1000B0884@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B8A74(*a1);
  *a2 = result;
  return result;
}

float32x2_t sub_1000B08C8(double a1, double a2, double a3, int32x2_t a4, int32x2_t a5)
{
  if (*&a1 <= 0.7854)
  {
    if (*&a1 > -0.7854)
    {
      v10 = *&a1;
    }

    else
    {
      v10 = -0.7854;
    }

    v11 = *(&a1 + 1);
    a4.i32[0] = 1061752795;
    v9 = COERCE_DOUBLE(vdup_lane_s32(a4, 0));
    *&v9 = v10;
    if (v11 <= 0.7854)
    {
      if (v11 <= -0.7854)
      {
        v11 = -0.7854;
      }

      *(&v9 + 1) = v11;
    }
  }

  else
  {
    v6 = COERCE_DOUBLE(vdup_n_s32(0x3F490FDBu));
    v7 = -0.7854;
    if (*(&a1 + 1) > -0.7854)
    {
      v7 = *(&a1 + 1);
    }

    a5.i32[0] = 1061752795;
    LODWORD(v8) = vdup_lane_s32(a5, 0).u32[0];
    *(&v8 + 1) = v7;
    if (*(&a1 + 1) <= 0.7854)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }
  }

  v12 = vmla_f32(*v5, vdup_n_s32(0x3EB33333u), vsub_f32(vdiv_f32(vmul_f32(*&v9, vdup_n_s32(0x40278D36u)), vdup_n_s32(0x3F490FDBu)), *v5));
  v13 = vmla_f32(v5[1], vdup_n_s32(0x3D23D70Au), vsub_f32(v12, v5[1]));
  v5[1] = v13;
  result = vsub_f32(v12, v13);
  *v5 = result;
  return result;
}

uint64_t sub_1000B09C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  *(v5 + 16) = 1065353216;
  *(v5 + 24) = 0;
  v11 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v12) = 1050253722;
  LODWORD(v13) = 1.0;
  LODWORD(v14) = 1050253722;
  *(v5 + 32) = [v11 initWithControlPoints:v12 :v14 :0.0 :v13];
  v15 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v16) = 1058642330;
  LODWORD(v17) = 1036831949;
  LODWORD(v18) = 1.0;
  *(v5 + 40) = [v15 initWithControlPoints:v16 :0.0 :v17 :v18];
  v19 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v20) = 1060320051;
  LODWORD(v21) = 1.0;
  LODWORD(v22) = 1045220557;
  *(v5 + 48) = [v19 initWithControlPoints:v22 :0.0 :v20 :v21];
  v23 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v24) = 0.5;
  LODWORD(v25) = 1.0;
  LODWORD(v26) = 1045220557;
  *(v5 + 56) = [v23 initWithControlPoints:v26 :0.0 :v24 :v25];
  *(v5 + 64) = *"";
  __asm { FMOV            V0.2S, #1.0 }

  *(v5 + 80) = _D0;
  *(v5 + 88) = _D0;
  *(v5 + 96) = _D0;
  *(v5 + 104) = &_swiftEmptyDictionarySingleton;
  v75 = (v5 + 104);
  *(v5 + 272) = 0;
  *(v5 + 280) = 0;
  *(v5 + 304) = 0;
  *(v5 + 312) = 0;
  *(v5 + 296) = 8;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0u;
  *(v5 + 368) = 0u;
  *(v5 + 384) = 1;
  *(v5 + 120) = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = objc_opt_self();
  swift_unknownObjectRetain();
  v34 = [v33 bundleForClass:ObjCClassFromMetadata];
  v78[0] = 0;
  v35 = [a1 newDefaultLibraryWithBundle:v34 error:v78];

  v36 = v78[0];
  if (!v35)
  {
    v57 = 1982857215;
    v58 = v78[0];

    sub_1000E92E4();

    swift_willThrow();
LABEL_21:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if ((v57 & 0x400000) != 0)
    {
      swift_unknownObjectRelease();
    }

    type metadata accessor for FloconRenderer();
    swift_deallocPartialClassInstance();
    return v8;
  }

  v69 = a5;
  *(v8 + 128) = v35;
  v37 = v36;
  v38 = 0;
  v39 = v7;
  v74 = a1;
  do
  {
    v40 = *(&off_1001215D8 + v38 + 32);
    v41 = *(v8 + 128);
    swift_unknownObjectRetain();
    v42 = sub_1000B7EA4(a1, v41);
    if (v39)
    {
      swift_unknownObjectRelease();

      v57 = 1987051519;
      goto LABEL_21;
    }

    v43 = v42;
    v44 = v8;
    swift_unknownObjectRelease();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *v75;
    *v75 = 0x8000000000000000;
    v48 = sub_10009F428(v40);
    v49 = v46[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      __break(1u);
LABEL_26:
      __break(1u);
    }

    v52 = v47;
    if (v46[3] >= v51)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v47)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1000B640C(&qword_100133138);
        if (v52)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1000B34C8(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_10009F428(v40);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_28;
      }

      v48 = v53;
      if (v52)
      {
LABEL_3:
        *(v46[7] + 8 * v48) = v43;
        swift_unknownObjectRelease();
        goto LABEL_4;
      }
    }

    v46[(v48 >> 6) + 8] |= 1 << v48;
    *(v46[6] + v48) = v40;
    *(v46[7] + 8 * v48) = v43;
    v55 = v46[2];
    _VF = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (_VF)
    {
      goto LABEL_26;
    }

    v46[2] = v56;
LABEL_4:
    ++v38;
    *v75 = v46;
    swift_endAccess();
    v8 = v44;
    v39 = 0;
    a1 = v74;
  }

  while (v38 != 3);
  sub_1000125FC(&qword_100132540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EC880;
  *(inited + 32) = a4;
  *(inited + 36) = v69;
  sub_1000AB4A4(inited);
  v61 = v60;
  swift_setDeallocating();
  *(v44 + 112) = v61;
  *(v44 + 288) = 256;
  v62 = [v74 newBufferWithLength:2048 options:0];
  if (v62)
  {
    v63 = v62;

    *(v44 + 264) = v63;
    v64 = swift_unknownObjectRetain();
    sub_1000B8174(v64, v77);
    v66 = v77[3];
    *(v44 + 424) = v77[2];
    *(v44 + 440) = v66;
    v67 = v77[5];
    *(v44 + 456) = v77[4];
    *(v44 + 472) = v67;
    v68 = v77[1];
    *(v44 + 392) = v77[0];
    *(v44 + 408) = v68;
    v76 = matrix_identity_float4x4.columns[0];
    v73 = matrix_identity_float4x4.columns[1];
    v70 = matrix_identity_float4x4.columns[3];
    v71 = matrix_identity_float4x4.columns[2];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    *(v44 + 144) = 0;
    *(v44 + 148) = xmmword_1000F40C0;
    *(v44 + 164) = 0x3F80000000000000;
    *(v44 + 176) = 0;
    *(v44 + 172) = 0;
    *(v44 + 192) = v76;
    *(v44 + 208) = v73;
    *(v44 + 224) = v71;
    *(v44 + 240) = v70;
    *(v44 + 256) = 0;
    return v8;
  }

  __break(1u);
LABEL_28:
  result = sub_1000E9FA4();
  __break(1u);
  return result;
}

int32x2_t sub_1000B0FEC(uint64_t a1, int32x2_t a2, double a3)
{
  a2.i32[0] = *a1;
  *&a3 = 1.0 - *(a1 + 4);
  v3[8].i32[0] = *a1;
  v3[8].i32[1] = LODWORD(a3);
  v3[9].i32[0] = LODWORD(a3);
  v3[9].i32[1] = a2.i32[0];
  v3[10].i32[0] = LODWORD(a3);
  v3[10].i32[1] = LODWORD(a3);
  result = vdup_lane_s32(a2, 0);
  v3[11] = vdup_lane_s32(*&a3, 0);
  v3[12] = result;
  return result;
}

id *sub_1000B1014()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000B110C()
{
  sub_1000B1014();

  return swift_deallocClassInstance();
}

__n128 sub_1000B1164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000B1180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1000B11C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B1254()
{
  result = qword_100133118;
  if (!qword_100133118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133118);
  }

  return result;
}

uint64_t sub_1000B12A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FloconRenderer();
  v9 = swift_allocObject();
  sub_1000B09C4(a1, v10, a3, a4, a5);
  return v9;
}

uint64_t sub_1000B1348(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_1001320F0);
  v34 = a2;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_1000EA024();
      sub_1000E9974();
      result = sub_1000EA064();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B1618(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000125FC(a3);
  v35 = a2;
  result = sub_1000E9E84();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1000EA024();
      sub_1000E9974();
      result = sub_1000EA064();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1000B18B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_100131E48);
  v51 = a2;
  v6 = sub_1000E9E84();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v47 = v2;
    v48 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v49 = v5;
    v50 = v6;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v52 = (v11 - 1) & v11;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v55 = *v24;
      v26 = *(v5 + 56) + 56 * v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      v32 = *(v26 + 32);
      v31 = *(v26 + 40);
      v53 = *(v26 + 48);
      if ((v51 & 1) == 0)
      {
        v33 = v31;

        v34 = v27;
        v35 = v28;
        v36 = v30;

        v37 = v32;
      }

      v54 = v32;
      v7 = v50;
      sub_1000EA024();
      sub_1000E9974();
      v38 = sub_1000EA064();
      v39 = -1 << *(v50 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v13 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v16 = v28;
        v15 = v54;
        result = v30;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v13 + 8 * v41);
          if (v45 != -1)
          {
            v14 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v40) & ~*(v13 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v16 = v28;
      v15 = v54;
      result = v30;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v18 = (*(v50 + 48) + 16 * v14);
      *v18 = v55;
      v18[1] = v25;
      v19 = *(v50 + 56) + 56 * v14;
      *v19 = v27;
      *(v19 + 8) = v16;
      *(v19 + 16) = result;
      *(v19 + 24) = v29;
      *(v19 + 32) = v15;
      *(v19 + 40) = v31;
      *(v19 + 48) = v53;
      ++*(v50 + 16);
      v5 = v49;
      v11 = v52;
    }

    v21 = v8;
    result = v48;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v12)
      {
        break;
      }

      v22 = v48[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v52 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_33;
    }

    v46 = 1 << *(v5 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v48, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v48 = -1 << v46;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}
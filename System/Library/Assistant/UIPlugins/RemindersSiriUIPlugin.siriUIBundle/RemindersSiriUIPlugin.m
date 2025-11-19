id TTRBundleGet()
{
  if (qword_2E548[0] != -1)
  {
    sub_1FDF8();
  }

  v1 = qword_2E540;

  return v1;
}

void sub_1EA4(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = qword_2E540;
  qword_2E540 = v1;
}

void *sub_1F0C()
{
  v1 = [v0 modifiedTask];
  v5 = v1;
  if (v1)
  {
    v2 = v1;
    sub_2048C();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v4 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      sub_204BC();
    }

    sub_204DC();
  }

  sub_2A94(&v5);
  return &_swiftEmptyArrayStorage;
}

void *sub_1FF4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = &_swiftEmptyArrayStorage;
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_207AC();
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject tasks];
      sub_2958(0, &qword_2DBB0, INTask_ptr);
      v7 = sub_204AC();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_2087C();
      }

      else
      {
        v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2087C();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v30 = v3;
          goto LABEL_23;
        }
      }

      else
      {
        if (v10)
        {
LABEL_21:
          sub_2087C();
          goto LABEL_22;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_207BC();
      v30 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2087C();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v32)
          {
            goto LABEL_44;
          }

          v17 = v12 + 8 * v14 + 32;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_29E8();
            for (i = 0; i != v16; ++i)
            {
              sub_29A0(&qword_2DBC0, &qword_223E8);
              v19 = sub_18BA8(v31, i, v7);
              v21 = *v20;
              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v22 = *(v12 + 16);
            v5 = __OFADD__(v22, v32);
            v23 = v22 + v32;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v12 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
        if (v16)
        {
          goto LABEL_27;
        }
      }

      v3 = v30;
      if (v32 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_2087C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_2364()
{
  v1 = *v0;
  v2 = [v1 tasks];
  if (v2)
  {
    v3 = v2;
    sub_2958(0, &qword_2DBB0, INTask_ptr);
    v4 = sub_204AC();

    return v4;
  }

  else
  {
    v6 = [v1 taskLists];
    if (!v6)
    {
      return &_swiftEmptyArrayStorage;
    }

    v7 = v6;
    sub_2958(0, &qword_2DBB8, INTaskList_ptr);
    v8 = sub_204AC();

    v9 = sub_1FF4(v8);

    return v9;
  }
}

void *sub_2468(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = v4;
  sub_2958(0, &qword_2DBB0, INTask_ptr);
  v6 = sub_204AC();

  return v6;
}

void *sub_24E8()
{
  v1 = [*v0 createdTaskList];
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = [v1 tasks];

  sub_2958(0, &qword_2DBB0, INTask_ptr);
  v4 = sub_204AC();

  return v4;
}

uint64_t sub_2584(uint64_t a1, id *a2)
{
  result = sub_203FC();
  *a2 = 0;
  return result;
}

uint64_t sub_25FC(uint64_t a1, id *a2)
{
  v3 = sub_2040C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_267C@<X0>(void *a1@<X8>)
{
  sub_2041C();
  v2 = sub_203EC();

  *a1 = v2;
  return result;
}

uint64_t sub_26C0()
{
  v1 = *v0;
  sub_2041C();
  v2 = sub_2047C();

  return v2;
}

uint64_t sub_26FC()
{
  v1 = *v0;
  sub_2041C();
  sub_2044C();
}

Swift::Int sub_2750()
{
  v1 = *v0;
  sub_2041C();
  sub_2094C();
  sub_2044C();
  v2 = sub_2096C();

  return v2;
}

uint64_t sub_27C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2041C();
  v6 = v5;
  if (v4 == sub_2041C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2090C();
  }

  return v9 & 1;
}

uint64_t sub_284C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_203EC();

  *a2 = v5;
  return result;
}

uint64_t sub_2894@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2041C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_28C0(uint64_t a1)
{
  v2 = sub_2C30(&qword_2DC00);
  v3 = sub_2C30(&qword_2DC08);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_2958(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29A0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_29E8()
{
  result = qword_2DBC8;
  if (!qword_2DBC8)
  {
    sub_2A4C(&qword_2DBC0, &qword_223E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2DBC8);
  }

  return result;
}

uint64_t sub_2A4C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2A94(uint64_t a1)
{
  v2 = sub_29A0(&qword_2DBD0, &qword_223F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 initializeWithTake for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2B20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2B40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_2B7C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2C30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TTRIIntentsSnippetReminderCellViewModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

id sub_2CD8(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t destroy for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1)
{
  v2 = *(a1 + 32);

  v3 = *(a1 + 48);

  v4 = *(a1 + 64);

  v5 = *(a1 + 88);
  if (v5 != 255)
  {
    sub_2D70(*(a1 + 72), *(a1 + 80), v5);
  }

  v6 = *(a1 + 120);
}

void sub_2D70(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t initializeWithCopy for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;
  v9 = *(a2 + 88);
  v10 = v4;
  v11 = v5;

  if (v9 == 255)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v12 = *(a2 + 72);
    v13 = *(a2 + 80);
    sub_2CD8(v12, v13, v9);
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
    *(a1 + 88) = v9;
  }

  v14 = *(a2 + 96);
  *(a1 + 96) = v14;
  *(a1 + 104) = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  v17 = v14;

  return a1;
}

uint64_t assignWithCopy for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 24) = *(a2 + 24);
  v10 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  v11 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v12 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  v13 = *(a2 + 88);
  if (*(a1 + 88) == 255)
  {
    if (v13 == 255)
    {
      v22 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v22;
    }

    else
    {
      v19 = *(a2 + 72);
      v20 = *(a2 + 80);
      sub_2CD8(v19, v20, *(a2 + 88));
      *(a1 + 72) = v19;
      *(a1 + 80) = v20;
      *(a1 + 88) = v13;
    }
  }

  else if (v13 == 255)
  {
    sub_302C(a1 + 72);
    v21 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v21;
  }

  else
  {
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    sub_2CD8(v14, v15, *(a2 + 88));
    v16 = *(a1 + 72);
    v17 = *(a1 + 80);
    *(a1 + 72) = v14;
    *(a1 + 80) = v15;
    v18 = *(a1 + 88);
    *(a1 + 88) = v13;
    sub_2D70(v16, v17, v18);
  }

  v23 = *(a1 + 96);
  v24 = *(a2 + 96);
  *(a1 + 96) = v24;
  v25 = v24;

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v26 = *(a2 + 120);
  v27 = *(a1 + 120);
  *(a1 + 120) = v26;

  return a1;
}

__n128 initializeWithTake for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t assignWithTake for TTRIIntentsSnippetReminderCellViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v6 = *(a2 + 32);
  v7 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v8 = *(a2 + 48);
  v9 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;

  v10 = *(a2 + 64);
  v11 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v10;

  v12 = *(a1 + 88);
  if (v12 == 255)
  {
    goto LABEL_5;
  }

  v13 = *(a2 + 88);
  if (v13 == 255)
  {
    sub_302C(a1 + 72);
LABEL_5:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_6;
  }

  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v13;
  sub_2D70(v14, v15, v12);
LABEL_6:
  v16 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v17 = *(a2 + 120);
  v18 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v17;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_3258(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_2CD8(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_2CD8(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_2D70(v6, v7, v8);
  return a1;
}

__n128 initializeWithTake for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_2D70(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIIntentsSnippetReminderCellViewModel.ContactTriggerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_33E4(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_3400(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

char *sub_3428()
{
  v1 = sub_2020C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2007C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v57 - v11;
  v13 = sub_2024C();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_2026C();
  v60 = *(v15 - 8);
  v61 = v15;
  v16 = *(v60 + 64);
  __chkstk_darwin(v15);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2958(0, &qword_2E0E0, REMReminder_ptr);
  v70 = &protocol witness table for REMReminder;
  v67 = v0;
  v19 = v0;
  sub_2023C();
  sub_2025C();
  v20 = sub_2022C();
  v62 = v18;
  if (v20 || (v20 = [v19 title]) != 0)
  {
    v58 = v20;
    v59 = v10;
    v63 = v6;
    v64 = v5;
    sub_29A0(&qword_2DC48, &qword_22618);
    inited = swift_initStackObject();
    v65 = xmmword_22590;
    *(inited + 16) = xmmword_22590;
    *(inited + 32) = NSFontAttributeName;
    v22 = NSFontAttributeName;
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
    sub_2958(0, &qword_2DC50, UIFont_ptr);
    if (IsBoldTextEnabled)
    {
      v24 = sub_2063C();
    }

    else
    {
      v24 = sub_2064C();
    }

    *(inited + 40) = v24;
    v57[4] = sub_3DBC(inited);
    swift_setDeallocating();
    sub_469C(inited + 32, &qword_2DC58, &qword_22620);
    v25 = swift_initStackObject();
    *(v25 + 16) = v65;
    *(v25 + 32) = v22;
    *(v25 + 40) = sub_2065C();
    v57[3] = sub_3DBC(v25);
    swift_setDeallocating();
    sub_469C(v25 + 32, &qword_2DC58, &qword_22620);
    v18 = v62;
    sub_2021C();
    v57[2] = v4;
    sub_2005C();
    v63[1](v12, v64);
    v26 = swift_initStackObject();
    *(v26 + 16) = v65;
    *(v26 + 32) = NSForegroundColorAttributeName;
    sub_2958(0, &qword_2DC60, UIColor_ptr);
    v27 = NSForegroundColorAttributeName;
    *(v26 + 40) = sub_2067C();
    v57[1] = sub_3DBC(v26);
    swift_setDeallocating();
    sub_469C(v26 + 32, &qword_2DC58, &qword_22620);
    v28 = swift_initStackObject();
    *(v28 + 16) = v65;
    *(v28 + 32) = v27;
    v29 = v27;
    *(v28 + 40) = sub_2067C();
    v57[0] = sub_3DBC(v28);
    swift_setDeallocating();
    sub_469C(v28 + 32, &qword_2DC58, &qword_22620);
    v30 = swift_initStackObject();
    *(v30 + 16) = v65;
    *(v30 + 32) = v29;
    *(v30 + 40) = sub_2066C();
    sub_3DBC(v30);
    swift_setDeallocating();
    v6 = v63;
    sub_469C(v30 + 32, &qword_2DC58, &qword_22620);
    v31 = swift_initStackObject();
    *(v31 + 16) = v65;
    *(v31 + 32) = v29;
    *(v31 + 40) = [objc_opt_self() magentaColor];
    sub_3DBC(v31);
    swift_setDeallocating();
    sub_469C(v31 + 32, &qword_2DC58, &qword_22620);
    v32 = sub_200AC();
    sub_2009C();
    v33 = objc_allocWithZone(v32);
    v5 = v64;
    v34 = sub_2008C();
    v35 = v58;
    [v34 insertAttributedString:v58 atIndex:0];
    v36 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v34];

    v10 = v59;
  }

  else
  {
    v36 = 0;
  }

  sub_2021C();
  v37 = sub_2006C();
  v6[1](v10, v5);
  if (!(v37 >> 62))
  {
    v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    if (v38)
    {
      goto LABEL_9;
    }

LABEL_20:

    v41 = &_swiftEmptyArrayStorage;
LABEL_21:
    v67 = v41;
    sub_29A0(&qword_2DC38, &qword_22610);
    sub_4638();
    sub_203CC();

    (*(v60 + 8))(v18, v61);
    return v36;
  }

  v38 = sub_2087C();
  if (!v38)
  {
    goto LABEL_20;
  }

LABEL_9:
  v66 = &_swiftEmptyArrayStorage;
  result = sub_12AF0(0, v38 & ~(v38 >> 63), 0);
  if ((v38 & 0x8000000000000000) == 0)
  {
    v40 = 0;
    v41 = v66;
    v42 = v37;
    v63 = v36;
    v64 = v37 & 0xC000000000000001;
    *&v65 = v37;
    do
    {
      if (v64)
      {
        v43 = sub_207AC();
      }

      else
      {
        v43 = *(v42 + 8 * v40 + 32);
      }

      v44 = v43;
      v45 = sub_2043C();
      v47 = v46;
      v48 = [v44 name];
      v49 = sub_2041C();
      v51 = v50;

      v67 = v45;
      v68 = v47;

      v71._countAndFlagsBits = v49;
      v71._object = v51;
      sub_2045C(v71);

      v52 = v67;
      v53 = v68;
      v66 = v41;
      v55 = v41[2];
      v54 = v41[3];
      if (v55 >= v54 >> 1)
      {
        sub_12AF0((v54 > 1), v55 + 1, 1);
        v41 = v66;
      }

      ++v40;
      v41[2] = v55 + 1;
      v56 = &v41[2 * v55];
      v56[4] = v52;
      v56[5] = v53;
      v42 = v65;
    }

    while (v38 != v40);

    v18 = v62;
    v36 = v63;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t sub_3C24(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2041C();
  sub_2094C();
  sub_2044C();
  v4 = sub_2096C();

  return sub_3CB8(a1, v4);
}

unint64_t sub_3CB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2041C();
      v9 = v8;
      if (v7 == sub_2041C() && v9 == v10)
      {
        break;
      }

      v12 = sub_2090C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_3DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29A0(&qword_2DC68, qword_22628);
    v3 = sub_208BC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_3C24(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_3EB4@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v83 = a2;
  v6 = sub_29A0(&qword_2DC10, &qword_225E8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v84 = &v69 - v8;
  v9 = sub_29A0(&qword_2DC18, &qword_225F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v81 = &v69 - v11;
  v12 = sub_29A0(&qword_2DC20, &qword_225F8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v69 - v14;
  v78 = sub_201DC();
  v16 = *(v78 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v78);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29A0(&qword_2DC28, &qword_22600);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v69 - v22;
  v24 = sub_201FC();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = sub_29A0(&qword_2DC30, &qword_22608);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v69 - v28;
  v30 = sub_201CC();
  v79 = *(v30 - 8);
  v80 = v30;
  v31 = *(v79 + 64);
  __chkstk_darwin(v30);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2010C();
  (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
  v86 = sub_2958(0, &qword_2E0E0, REMReminder_ptr);
  v87 = &protocol witness table for REMReminder;
  v85 = a1;
  v35 = a1;
  sub_201EC();
  v36 = sub_2026C();
  (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  sub_2018C();
  sub_2015C();
  v37 = v78;
  v38 = (*(v16 + 88))(v19, v78);
  if (v38 == enum case for TTRReminderDetailViewModel.FlaggedState.supported(_:))
  {
    (*(v16 + 96))(v19, v37);
    LODWORD(v78) = *v19;
  }

  else
  {
    if (v38 != enum case for TTRReminderDetailViewModel.FlaggedState.unsupported(_:))
    {
      result = sub_208FC();
      __break(1u);
      return result;
    }

    LODWORD(v78) = 0;
  }

  v39 = v81;
  v40 = v35;
  v76 = sub_3428();
  v77 = v41;
  v81 = v42;
  v75 = sub_201BC();
  v73 = sub_2014C();
  v74 = sub_2016C();
  sub_2013C();
  v43 = sub_200DC();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v15, 1, v43) == 1)
  {
    sub_469C(v15, &qword_2DC20, &qword_225F8);
    v71 = 0;
    v72 = 0;
  }

  else
  {
    v45 = sub_200CC();
    v71 = v46;
    v72 = v45;
    (*(v44 + 8))(v15, v43);
  }

  v47 = sub_2017C();
  v69 = v48;
  v70 = v47;
  sub_201AC();
  v49 = sub_200FC();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v39, 1, v49) == 1)
  {
    sub_469C(v39, &qword_2DC18, &qword_225F0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = sub_200EC();
    v52 = v53;
    (*(v50 + 8))(v39, v49);
  }

  v54 = [v40 contactHandles];
  sub_2019C();
  v55 = v84;
  v56 = sub_2012C();
  v57 = v40;
  v58 = *(v56 - 8);
  if ((*(v58 + 48))(v55, 1, v56) == 1)
  {
    (*(v79 + 8))(v33, v80);

    result = sub_469C(v55, &qword_2DC10, &qword_225E8);
    v60 = 0;
  }

  else
  {
    v60 = sub_2011C();

    (*(v79 + 8))(v33, v80);
    result = (*(v58 + 8))(v55, v56);
  }

  if (v54)
  {
    v61 = 0;
  }

  else
  {
    v61 = -1;
  }

  v62 = v74;
  v63 = v73 & 1;
  *a4 = v75;
  *(a4 + 8) = v76;
  v64 = v82 & 1;
  *(a4 + 16) = v63;
  v65 = v83 & 1;
  *(a4 + 17) = v78;
  *(a4 + 18) = v64;
  *(a4 + 19) = v62 & 1;
  v66 = v71;
  *(a4 + 24) = v72;
  *(a4 + 32) = v66;
  v67 = v69;
  *(a4 + 40) = v70;
  *(a4 + 48) = v67;
  *(a4 + 56) = v51;
  *(a4 + 64) = v52;
  *(a4 + 72) = v54;
  *(a4 + 80) = 0;
  *(a4 + 88) = v61;
  *(a4 + 96) = v60;
  *(a4 + 104) = v65;
  v68 = v77;
  *(a4 + 112) = v81;
  *(a4 + 120) = v68;
  return result;
}

unint64_t sub_4638()
{
  result = qword_2DC40;
  if (!qword_2DC40)
  {
    sub_2A4C(&qword_2DC38, &qword_22610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2DC40);
  }

  return result;
}

uint64_t sub_469C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_29A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_4700()
{
  v1 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel];
  if (!v1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (*&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel + 8])
  {
    v2 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel];
    v3 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel + 8];
  }

  v4 = v1;

  v5 = sub_203EC();

  [v4 setText:v5];

  v6 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = 16.0;
  if (v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_isFirst])
  {
    v7 = 6.0;
  }

  [v6 setConstant:v7];

  [v0 layoutIfNeeded];
}

id sub_4924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_isFirst] = 0;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint] = 0;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel] = 0;
  if (a3)
  {
    v8 = sub_203EC();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v8);

  return v9;
}

id sub_4A3C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_isFirst] = 0;
  *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_topConstraint] = 0;
  *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_4B00()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel + 8);

  v2 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_headingLabel);
}

id sub_4B54()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4C10()
{
  result = sub_1FFBC();
  qword_2E850 = result;
  return result;
}

uint64_t sub_4C30()
{
  result = sub_1FFCC();
  qword_2E858 = result;
  return result;
}

uint64_t sub_4C50()
{
  result = sub_1FFDC();
  qword_2E860 = result;
  return result;
}

void sub_4C70()
{
  v1 = v0;
  sub_5824();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v3 = Strong;
  v4 = &v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v43[4] = *(v4 + 4);
  v43[5] = v5;
  v6 = *(v4 + 7);
  v43[6] = *(v4 + 6);
  v43[7] = v6;
  v7 = *(v4 + 1);
  v43[0] = *v4;
  v43[1] = v7;
  v8 = *(v4 + 3);
  v43[2] = *(v4 + 2);
  v43[3] = v8;
  v9 = 0;
  if (sub_7820(v43) != 1)
  {
    v9 = *(v4 + 1);
  }

  [v3 setAttributedText:v9];

  sub_5A6C();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = *(v4 + 5);
  v42[4] = *(v4 + 4);
  v42[5] = v12;
  v13 = *(v4 + 7);
  v42[6] = *(v4 + 6);
  v42[7] = v13;
  v14 = *(v4 + 1);
  v42[0] = *v4;
  v42[1] = v14;
  v15 = *(v4 + 3);
  v42[2] = *(v4 + 2);
  v42[3] = v15;
  if (sub_7820(v42) == 1 || !*(v4 + 8))
  {
    v18 = 0;
  }

  else
  {
    v16 = *(v4 + 7);
    v17 = *(v4 + 8);

    v18 = sub_203EC();
  }

  [v11 setText:v18];

  v44._countAndFlagsBits = 0x6E6967617373654DLL;
  v44._object = 0xED00004025203A67;
  v45._object = 0x8000000000021BC0;
  v45._countAndFlagsBits = 0xD00000000000002FLL;
  sub_2001C(v44, v45);
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  sub_6B24(v1);
  v22 = v21;

  if (v22)
  {
    v23 = sub_203EC();
  }

  else
  {
    v23 = 0;
  }

  [v20 setText:v23];

  sub_63B8();
  [v1 layoutIfNeeded];
  v24 = *(v4 + 5);
  v41[4] = *(v4 + 4);
  v41[5] = v24;
  v25 = *(v4 + 7);
  v41[6] = *(v4 + 6);
  v41[7] = v25;
  v26 = *(v4 + 1);
  v41[0] = *v4;
  v41[1] = v26;
  v27 = *(v4 + 3);
  v41[2] = *(v4 + 2);
  v41[3] = v27;
  if (sub_7820(v41) != 1 && !v4[88])
  {
    v29 = *(v4 + 9);
    v28 = *(v4 + 10);
    sub_2CD8(v29, v28, 0);
    v30 = sub_503C(v39);
    v32 = v31;
    memmove(__dst, v31, 0x80uLL);
    if (sub_7820(__dst) != 1)
    {
      v33 = *(v32 + 9);
      v34 = *(v32 + 10);
      *(v32 + 9) = 0;
      *(v32 + 10) = 0;
      v35 = *(v32 + 88);
      *(v32 + 88) = 2;
      sub_7838(v33, v34, v35);
    }

    v30(v39, 0);
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v37 = *(v36 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_contactsProvider);
      sub_202AC();
      swift_unknownObjectRelease();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = sub_2031C();
      sub_2032C();

      sub_7838(v29, v28, 0);
    }

    else
    {
      sub_7838(v29, v28, 0);
    }
  }
}

uint64_t (*sub_503C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_50A0;
}

uint64_t sub_50A0(uint64_t a1, char a2)
{
  if (a2)
  {

    return swift_endAccess();
  }

  else
  {
    v4 = *(a1 + 24);
    v5 = swift_endAccess();
    return sub_4C70(v5);
  }
}

uint64_t sub_50DC()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "prepareForReuse");
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_51F8();

    sub_79F4(v15);
    v4 = &v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
    swift_beginAccess();
    v5 = *(v4 + 5);
    v16[4] = *(v4 + 4);
    v16[5] = v5;
    v6 = *(v4 + 7);
    v16[6] = *(v4 + 6);
    v16[7] = v6;
    v7 = *(v4 + 1);
    v16[0] = *v4;
    v16[1] = v7;
    v8 = *(v4 + 3);
    v16[2] = *(v4 + 2);
    v16[3] = v8;
    v9 = v15[0];
    v10 = v15[1];
    v11 = v15[3];
    *(v4 + 2) = v15[2];
    *(v4 + 3) = v11;
    *v4 = v9;
    *(v4 + 1) = v10;
    v12 = v15[4];
    v13 = v15[5];
    v14 = v15[7];
    *(v4 + 6) = v15[6];
    *(v4 + 7) = v14;
    *(v4 + 4) = v12;
    *(v4 + 5) = v13;
    sub_469C(v16, &qword_2E120, &qword_228F0);
    sub_4C70();
    *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate + 8] = 0;
    return swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_51F8()
{
  v1 = v0;
  v2 = [v0 arrangedSubviews];
  sub_2958(0, &qword_2DD68, UIView_ptr);
  v3 = sub_204AC();

  if (v3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2087C())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v14 = v3;
    while (1)
    {
      if (v6)
      {
        v9 = sub_207AC();
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_13;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v1 removeArrangedSubview:v9];
      isa = [v10 constraints];
      if (!isa)
      {
        sub_2958(0, &qword_2DD58, NSLayoutConstraint_ptr);
        sub_204AC();
        isa = sub_2049C().super.isa;
        v3 = v14;
      }

      [objc_opt_self() deactivateConstraints:isa];

      [v10 removeFromSuperview];
      sub_29A0(&qword_2DD50, &unk_22710);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22660;
      *(inited + 32) = v10;
      sub_10308(inited);
      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  return &_swiftEmptyArrayStorage;
}

id sub_55EC()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = &v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  swift_beginAccess();
  v2 = *(v1 + 5);
  v18[4] = *(v1 + 4);
  v18[5] = v2;
  v3 = *(v1 + 7);
  v18[6] = *(v1 + 6);
  v18[7] = v3;
  v4 = *(v1 + 1);
  v18[0] = *v1;
  v18[1] = v4;
  v5 = *(v1 + 3);
  v18[2] = *(v1 + 2);
  v18[3] = v5;
  v6 = sub_7820(v18) == 1 || (v1[104] & 1) == 0;
  [v0 setSeparatorStyle:v6];
  v7 = *(v1 + 5);
  v16[4] = *(v1 + 4);
  v16[5] = v7;
  v8 = *(v1 + 7);
  v16[6] = *(v1 + 6);
  v16[7] = v8;
  v9 = *(v1 + 1);
  v16[0] = *v1;
  v16[1] = v9;
  v10 = *(v1 + 3);
  v16[2] = *(v1 + 2);
  v16[3] = v10;
  v11 = 16.0;
  if (sub_7820(v16) != 1)
  {
    if (v1[18])
    {
      v11 = 52.0;
    }

    else
    {
      v11 = 16.0;
    }
  }

  v12 = sub_5794();
  v14 = v13;

  [v14 setConstant:v11];
  [v0 separatorInset];
  return [v0 setSeparatorInset:?];
}

id sub_5794()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  v3 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  v4 = *&v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton + 8];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = sub_6880(v1);
    v8 = v7;
    v9 = *v2;
    v10 = *(v2 + 1);
    *v2 = v6;
    *(v2 + 1) = v7;
    v5 = v6;
    v8;
    sub_794C(v9, v10);
  }

  sub_798C(v3, v4);
  return v5;
}

void sub_5824()
{
  v1 = v0;
  v2 = sub_5794();

  v4 = (v1 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
  swift_beginAccess();
  v5 = v4[5];
  v23[4] = v4[4];
  v23[5] = v5;
  v6 = v4[7];
  v23[6] = v4[6];
  v23[7] = v6;
  v7 = v4[1];
  v23[0] = *v4;
  v23[1] = v7;
  v8 = v4[3];
  v23[2] = v4[2];
  v23[3] = v8;
  if (sub_7820(v23) == 1 || (v4[1] & 1) == 0)
  {
    if (qword_2DB78 != -1)
    {
      swift_once();
    }

    v9 = &qword_2E858;
  }

  else
  {
    if (qword_2DB70 != -1)
    {
      swift_once();
    }

    v9 = &qword_2E850;
  }

  v10 = *v9;
  v11 = *v9;
  sub_8314(v10);

  v12 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton;
  v13 = *(v1 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton);
  v14 = v4[5];
  v22[4] = v4[4];
  v22[5] = v14;
  v15 = v4[7];
  v22[6] = v4[6];
  v22[7] = v15;
  v16 = v4[1];
  v22[0] = *v4;
  v22[1] = v16;
  v17 = v4[3];
  v22[2] = v4[2];
  v22[3] = v17;
  if (sub_7820(v22) != 1)
  {
    *(v4 + 16);
    *(v4 + 16);
  }

  v18 = v13;
  v19 = sub_203EC();

  [v18 setAccessibilityIdentifier:v19];

  v20 = *(v1 + v12);
  v21 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
  [v20 setPreferredSymbolConfiguration:v21 forImageInState:0];
}

void sub_5A6C()
{
  v2 = (v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
  swift_beginAccess();
  v3 = v2[5];
  v94[4] = v2[4];
  v94[5] = v3;
  v4 = v2[7];
  v94[6] = v2[6];
  v94[7] = v4;
  v5 = v2[1];
  v94[0] = *v2;
  v94[1] = v5;
  v6 = v2[3];
  v94[2] = v2[2];
  v94[3] = v6;
  if (sub_7820(v94) == 1 || (v7 = *(v2 + 4)) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      [Strong setText:0];

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_35;
  }

  v92 = *(v2 + 3);
  v93 = v7;
  v8 = v2[5];
  v88 = v2[4];
  v89 = v8;
  v9 = v2[7];
  v90 = v2[6];
  v91 = v9;
  v10 = v2[1];
  v84 = *v2;
  v85 = v10;
  v11 = v2[3];
  v86 = v2[2];
  v87 = v11;
  if (sub_7820(&v84) == 1 || (*(v2 + 19) & 1) == 0)
  {
    v12 = &selRef_secondaryLabelColor;
  }

  else
  {
    v12 = &selRef_redColor;
  }

  v15 = objc_opt_self();

  v16 = [v15 *v12];
  v17 = v2[5];
  v83[4] = v2[4];
  v83[5] = v17;
  v18 = v2[7];
  v83[6] = v2[6];
  v83[7] = v18;
  v19 = v2[1];
  v83[0] = *v2;
  v83[1] = v19;
  v20 = v2[3];
  v83[2] = v2[2];
  v83[3] = v20;
  if (sub_7820(v83) != 1)
  {
    v21._object = *(v2 + 6);
    if (v21._object)
    {
      v21._countAndFlagsBits = *(v2 + 5);
      sub_2045C(v21);
      v95._countAndFlagsBits = 8236;
      v95._object = 0xE200000000000000;
      sub_2045C(v95);
    }
  }

  v1 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_timeTriggerLabel;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v23 = v22;
  v24 = sub_203EC();
  [v23 setText:v24];

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v26 = v25;

  [v26 setTextColor:v16];

LABEL_15:
  v27 = v2[5];
  v88 = v2[4];
  v89 = v27;
  v28 = v2[7];
  v90 = v2[6];
  v91 = v28;
  v29 = v2[1];
  v84 = *v2;
  v85 = v29;
  v30 = v2[3];
  v86 = v2[2];
  v87 = v30;
  if (sub_7820(&v84) != 1)
  {
    v31 = *(v2 + 15);
    if (v31)
    {
      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v2[7] & 0xFFFFFFFFFFFFLL;
      }

      if (v32)
      {
        v33 = sub_2958(0, &qword_2DC50, UIFont_ptr);

        v82 = sub_2062C();
        isa = sub_2061C().super.isa;
        v72 = objc_opt_self();
        v35 = [v72 secondaryLabelColor];
        sub_29A0(&qword_2DD40, &unk_22700);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_22670;
        *(v36 + 32) = NSFontAttributeName;
        *(v36 + 40) = isa;
        v80 = v33;
        *(v36 + 64) = v33;
        *(v36 + 72) = NSForegroundColorAttributeName;
        v79 = sub_2958(0, &qword_2DC60, UIColor_ptr);
        *(v36 + 104) = v79;
        *(v36 + 80) = v35;
        v75 = NSFontAttributeName;
        v81 = isa;
        v73 = NSForegroundColorAttributeName;
        v37 = v35;
        sub_E244(v36);
        swift_setDeallocating();
        sub_29A0(&unk_2E130, &unk_22900);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v38 = objc_allocWithZone(NSAttributedString);
        v1 = sub_203EC();
        type metadata accessor for Key(0);
        sub_78F4();
        v39 = sub_2038C().super.isa;

        v40 = [v38 initWithString:v1 attributes:v39];

        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          v42 = v41;
          v1 = [v41 text];

          if (v1)
          {
            v43 = sub_2041C();
            v45 = HIBYTE(v44) & 0xF;
            if ((v44 & 0x2000000000000000) == 0)
            {
              v45 = v43 & 0xFFFFFFFFFFFFLL;
            }

            if (v45)
            {
              v96._countAndFlagsBits = 0x4025204025204025;
              v97._object = 0x8000000000021BF0;
              v96._object = 0xE800000000000000;
              v97._countAndFlagsBits = 0xD00000000000004FLL;
              sub_2001C(v96, v97);
              v46 = swift_unknownObjectWeakLoadStrong();
              if (!v46)
              {
LABEL_39:

                __break(1u);
                return;
              }

              v47 = v46;
              v70 = v40;
              v71 = v37;

              v48 = [v47 textColor];

              if (!v48)
              {
                v48 = [v72 secondaryLabelColor];
              }

              v49 = swift_allocObject();
              *(v49 + 32) = v75;
              *(v49 + 16) = xmmword_22670;
              *(v49 + 40) = v82;
              *(v49 + 64) = v80;
              *(v49 + 72) = v73;
              *(v49 + 104) = v79;
              *(v49 + 80) = v48;
              v50 = v75;
              v51 = v73;
              v76 = v50;
              v52 = v51;
              v74 = v82;
              v78 = v48;
              sub_E244(v49);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v53 = objc_allocWithZone(NSAttributedString);
              v54 = sub_2038C().super.isa;

              v77 = [v53 initWithString:v1 attributes:v54];

              v55 = swift_allocObject();
              *(v55 + 16) = xmmword_22590;
              *(v55 + 32) = v52;
              *(v55 + 64) = v79;
              *(v55 + 40) = v71;
              v56 = v71;
              sub_E244(v55);
              swift_setDeallocating();
              sub_469C(v55 + 32, &unk_2E130, &unk_22900);
              swift_deallocClassInstance();
              v57 = objc_allocWithZone(NSAttributedString);
              v58 = sub_203EC();
              v59 = sub_2038C().super.isa;

              v60 = [v57 initWithString:v58 attributes:v59];

              sub_2958(0, &qword_2DD48, NSAttributedString_ptr);
              v61 = swift_allocObject();
              *(v61 + 16) = xmmword_22590;
              *(v61 + 32) = v76;
              *(v61 + 64) = v80;
              *(v61 + 40) = v74;
              v62 = v74;
              sub_E244(v61);
              swift_setDeallocating();
              sub_469C(v61 + 32, &unk_2E130, &unk_22900);
              swift_deallocClassInstance();
              sub_29A0(&qword_2DD50, &unk_22710);
              v63 = swift_allocObject();
              *(v63 + 16) = xmmword_22680;
              *(v63 + 32) = v77;
              *(v63 + 40) = v60;
              v40 = v70;
              *(v63 + 48) = v70;
              v64 = v77;
              v1 = v60;
              v65 = v70;
              v37 = v71;
              v66 = sub_205AC();

              goto LABEL_31;
            }
          }

          v66 = v40;
LABEL_31:
          v67 = swift_unknownObjectWeakLoadStrong();
          if (v67)
          {
            v68 = v67;
            v69 = v66;

            [v68 setAttributedText:v69];

            return;
          }

          goto LABEL_38;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }
  }
}

void sub_63B8()
{
  v1 = v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v21[4] = *(v1 + 64);
  v21[5] = v2;
  v3 = *(v1 + 112);
  v21[6] = *(v1 + 96);
  v21[7] = v3;
  v4 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v4;
  v5 = *(v1 + 48);
  v21[2] = *(v1 + 32);
  v21[3] = v5;
  if (sub_7820(v21) != 1 && *(v1 + 17) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v7 = Strong;
    v8 = sub_6C98();
    [v7 addArrangedSubview:v8];
  }

  v9 = *(v1 + 80);
  v20[4] = *(v1 + 64);
  v20[5] = v9;
  v10 = *(v1 + 112);
  v20[6] = *(v1 + 96);
  v20[7] = v10;
  v11 = *(v1 + 16);
  v20[0] = *v1;
  v20[1] = v11;
  v12 = *(v1 + 48);
  v20[2] = *(v1 + 32);
  v20[3] = v12;
  if (sub_7820(v20) != 1)
  {
    v13 = *(v1 + 96);
    if (v13)
    {
      v14 = v13;
      v15 = sub_6F04();
      [v15 setImage:v14 forState:0];

      v16 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView;
      v17 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView);
      [v14 size];
      [v17 frame];
      [v17 setFrame:?];

      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        [v18 addArrangedSubview:*(v0 + v16)];

        return;
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }
  }
}

void sub_6574(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_503C(v18);
    v7 = v6;
    memmove(__dst, v6, 0x80uLL);
    if (sub_7820(__dst) != 1)
    {
      v8 = *(v7 + 9);
      v9 = *(v7 + 10);
      *(v7 + 9) = v2;
      *(v7 + 10) = v1;
      v10 = *(v7 + 88);
      *(v7 + 88) = 1;

      sub_7838(v8, v9, v10);
    }

    v5(v18, 0);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v20._countAndFlagsBits = 0x6E6967617373654DLL;
    v20._object = 0xED00004025203A67;
    v21._object = 0x8000000000021BC0;
    v21._countAndFlagsBits = 0xD00000000000002FLL;
    sub_2001C(v20, v21);
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_6B24(v12);
      v16 = v15;

      if (v16)
      {
        v17 = sub_203EC();
      }

      else
      {
        v17 = 0;
      }

      [v14 setText:v17];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_6748()
{
  v1 = &v0[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  swift_beginAccess();
  v2 = *(v1 + 5);
  v14 = *(v1 + 4);
  v15 = v2;
  v3 = *(v1 + 7);
  v16 = *(v1 + 6);
  v17 = v3;
  v4 = *(v1 + 1);
  v10 = *v1;
  v11 = v4;
  v5 = *(v1 + 3);
  v12 = *(v1 + 2);
  v13 = v5;
  v18 = v10;
  v19 = v4;
  v20 = v12;
  v21 = v5;
  v22 = v14;
  v23 = v2;
  v24 = v16;
  v25 = v3;
  result = sub_7820(&v18);
  if (result != 1)
  {
    v9[4] = v22;
    v9[5] = v23;
    v9[6] = v24;
    v9[7] = v25;
    v9[0] = v18;
    v9[1] = v19;
    v9[2] = v20;
    v9[3] = v21;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8[4] = v14;
      v8[5] = v15;
      v8[6] = v16;
      v8[7] = v17;
      v8[0] = v10;
      v8[1] = v11;
      v8[2] = v12;
      v8[3] = v13;
      sub_7A7C(v8, &v7);
      sub_CD6C(v0, v9);
      swift_unknownObjectRelease();
      return sub_469C(&v10, &qword_2E120, &qword_228F0);
    }
  }

  return result;
}

uint64_t sub_6880(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TTRIVibrantCompletedButton()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v2 leadingAnchor];
  v4 = [a1 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:16.0];

  v6 = [a1 contentView];
  [v6 addSubview:v2];

  sub_29A0(&qword_2DD50, &unk_22710);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22680;
  *(v7 + 32) = v5;
  v5;
  v8 = [v2 centerYAnchor];
  v9 = [a1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v7 + 40) = v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = objc_opt_self();
    v14 = [v12 leadingAnchor];

    v15 = [v2 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 constant:12.0];

    *(v7 + 48) = v16;
    sub_2958(0, &qword_2DD58, NSLayoutConstraint_ptr);
    isa = sub_2049C().super.isa;

    [v13 activateConstraints:isa];

    [v2 addTarget:a1 action:"didTapCompleteButton:" forControlEvents:0x2000];
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6B24(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel;
  swift_beginAccess();
  v2 = *(v1 + 80);
  v11[4] = *(v1 + 64);
  v11[5] = v2;
  v3 = *(v1 + 112);
  v11[6] = *(v1 + 96);
  v11[7] = v3;
  v4 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v4;
  v5 = *(v1 + 48);
  v11[2] = *(v1 + 32);
  v11[3] = v5;
  if (sub_7820(v11) == 1)
  {
    return 0;
  }

  if (*(v1 + 88) > 1u)
  {
    if (*(v1 + 88) != 2)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (!*(v1 + 88))
  {
LABEL_7:
    sub_29A0(&qword_2DD30, &qword_226F8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22590;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_78A0();
    *(v10 + 32) = 3026478;
    *(v10 + 40) = 0xE300000000000000;
    return sub_2042C();
  }

  v8 = *(v1 + 72);
  v7 = *(v1 + 80);
  sub_29A0(&qword_2DD30, &qword_226F8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22590;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_78A0();
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  sub_2CD8(v8, v7, 1);
  return sub_2042C();
}

char *sub_6C98()
{
  v1 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView;
  v2 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView);
  }

  else
  {
    v4 = v0;
    if (qword_2DB80 != -1)
    {
      swift_once();
    }

    v5 = qword_2E860;
    v6 = type metadata accessor for TTRIVibrantTemplateImageView();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = 0;
    v8 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
    v9 = objc_allocWithZone(UIImageView);
    v10 = v5;
    *&v7[v8] = [v9 init];
    v11 = [objc_opt_self() effectWithStyle:4];
    v12 = [objc_opt_self() effectForBlurEffect:v11 style:1];

    v25.receiver = v7;
    v25.super_class = v6;
    v13 = objc_msgSendSuper2(&v25, "initWithEffect:", v12);

    v14 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
    v15 = *&v13[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
    v16 = v13;
    [v15 setAutoresizingMask:18];
    [*&v13[v14] setUserInteractionEnabled:0];
    v17 = [v16 contentView];
    [v17 addSubview:*&v13[v14]];

    v18 = v10;
    sub_8B28(v5);

    v19 = *&v13[v14];
    v20 = *&v16[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
    if (v20)
    {
      v21 = [v20 imageWithRenderingMode:2];
    }

    else
    {
      v21 = 0;
    }

    [v19 setImage:v21];

    [v16 invalidateIntrinsicContentSize];
    v22 = *(v4 + v1);
    *(v4 + v1) = v16;
    v3 = v16;

    v2 = 0;
  }

  v23 = v2;
  return v3;
}

id sub_6F04()
{
  v1 = OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView;
  v2 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView);
  }

  else
  {
    sub_200BC();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 addTarget:v0 action:"didTapAppLinkButton:" forControlEvents:0x2000];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_6F9C()
{
  v1 = (v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
  swift_beginAccess();
  v2 = v1[5];
  v12 = v1[4];
  v13 = v2;
  v3 = v1[7];
  v14 = v1[6];
  v15 = v3;
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v10 = v1[2];
  v11 = v5;
  v16 = v9[0];
  v17 = v4;
  v18 = v10;
  v19 = v5;
  v20 = v12;
  v21 = v2;
  v22 = v14;
  v23 = v3;
  result = sub_7820(&v16);
  if (result != 1)
  {
    v8[4] = v20;
    v8[5] = v21;
    v8[6] = v22;
    v8[7] = v23;
    v8[0] = v16;
    v8[1] = v17;
    v8[2] = v18;
    v8[3] = v19;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_7A0C(v9, v7);
      sub_E568(v8);
      swift_unknownObjectRelease();
      return sub_469C(v9, &qword_2E120, &qword_228F0);
    }
  }

  return result;
}

uint64_t sub_70B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_206DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_469C(v9, &qword_2DD60, &unk_22720);
}

id sub_7140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  sub_79F4(v17);
  v8 = v17[5];
  *(v7 + 4) = v17[4];
  *(v7 + 5) = v8;
  v9 = v17[7];
  *(v7 + 6) = v17[6];
  *(v7 + 7) = v9;
  v10 = v17[1];
  *v7 = v17[0];
  *(v7 + 1) = v10;
  v11 = v17[3];
  *(v7 + 2) = v17[2];
  *(v7 + 3) = v11;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView] = 0;
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView] = 0;
  if (a3)
  {
    v13 = sub_203EC();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v13);

  return v14;
}

id sub_72FC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
  sub_79F4(v13);
  v5 = v13[5];
  *(v4 + 4) = v13[4];
  *(v4 + 5) = v5;
  v6 = v13[7];
  *(v4 + 6) = v13[6];
  *(v4 + 7) = v6;
  v7 = v13[1];
  *v4 = v13[0];
  *(v4 + 1) = v7;
  v8 = v13[3];
  *(v4 + 2) = v13[2];
  *(v4 + 3) = v8;
  *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = &v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___flaggedView] = 0;
  *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___appLinkIconView] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

void sub_746C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 80);
  v5[4] = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 64);
  v5[5] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 112);
  v5[6] = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 96);
  v5[7] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 16);
  v5[0] = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
  v5[1] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 48);
  v5[2] = *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel + 32);
  v5[3] = v4;
  sub_469C(v5, &qword_2E120, &qword_228F0);
  sub_79CC(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate);
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_794C(*(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton), *(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell____lazy_storage___completedButton + 8));
}

void *_s21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCellC21CompletedButtonHolderVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void destroy for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIIntentsSnippetReminderViewCell.CompletedButtonHolder(uint64_t result, int a2, int a3)
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

uint64_t sub_7820(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_7838(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_2D70(a1, a2, a3);
  }
}

uint64_t sub_784C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_78A0()
{
  result = qword_2DD38;
  if (!qword_2DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2DD38);
  }

  return result;
}

unint64_t sub_78F4()
{
  result = qword_2DC00;
  if (!qword_2DC00)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2DC00);
  }

  return result;
}

void sub_794C(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_798C(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

double sub_79F4(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_7A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A0(&qword_2E120, &qword_228F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_7ADC()
{
  v1 = [objc_opt_self() effectWithStyle:4];
  v2 = [objc_opt_self() effectForBlurEffect:v1 style:6];

  v3 = [v0 initWithEffect:v2];
  v4 = v3;
  [v4 setAutoresizingMask:18];
  v5 = [objc_allocWithZone(UIView) init];
  v6 = [objc_opt_self() whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.5];

  [v5 setBackgroundColor:v7];
  [v5 setAutoresizingMask:18];
  v8 = [v4 contentView];

  [v8 addSubview:v5];
  return v4;
}

void sub_7D04()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TTRIVibrantTableCell();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = [v0 selectedBackgroundView];
  if (!v1 || (v2 = v1, type metadata accessor for TTRIVibrantTableCell.VibrantSelectedBackgroundView(), v3 = swift_dynamicCastClass(), v2, !v3))
  {
    v4 = [objc_allocWithZone(type metadata accessor for TTRIVibrantTableCell.VibrantSelectedBackgroundView()) init];
    [v0 setSelectedBackgroundView:v4];

    v5 = [objc_opt_self() ttr_systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.00390625];

    [v0 setBackgroundColor:v6];
  }

  v7 = [v0 selectedBackgroundView];
  if (v7)
  {
    v8 = v7;
    [v0 bounds];
    [v8 setFrame:?];
  }
}

id sub_7F44(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

char *sub_803C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = 0;
  v4 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
    v8 = *&v5[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
    v9 = v5;
    [v8 setAutoresizingMask:18];
    [*&v6[v7] setUserInteractionEnabled:0];
    v10 = [v9 contentView];
    [v10 addSubview:*&v6[v7]];

    sub_8B28(0);
    v11 = *&v6[v7];
    v12 = *&v9[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
    if (v12)
    {
      v13 = [v12 imageWithRenderingMode:2];
    }

    else
    {
      v13 = 0;
    }

    [v11 setImage:v13];

    [v9 invalidateIntrinsicContentSize];
  }

  return v6;
}

uint64_t type metadata accessor for TTRIVibrantCompletedButton()
{
  result = qword_2DE08;
  if (!qword_2DE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_8314(void *a1)
{
  v2 = v1;
  v3 = qword_2DE00;
  v4 = *&v1[qword_2DE00];
  *&v2[qword_2DE00] = a1;
  v5 = a1;

  v6 = [v2 traitCollection];
  v7 = [v6 isAmbientPresented];

  if (v7)
  {
    v8 = *&v2[v3];
    v9 = type metadata accessor for TTRIVibrantCompletedButton();
    v15.receiver = v2;
    v15.super_class = v9;
    objc_msgSendSuper2(&v15, "setImage:forState:", v8, 0);
    v10 = [objc_opt_self() secondaryLabelColor];
    v14.receiver = v2;
    v14.super_class = v9;
    objc_msgSendSuper2(&v14, "setTintColor:", v10);
  }

  else
  {
    v11 = *&v2[qword_2DDF8];
    v12 = *&v2[v3];
    v13 = v12;
    sub_8B28(v12);
  }
}

char *sub_845C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIVibrantTemplateImageView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = 0;
  v4 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  *&v3[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = [objc_opt_self() effectWithStyle:4];
  v6 = [objc_opt_self() effectForBlurEffect:v5 style:1];

  v22.receiver = v3;
  v22.super_class = v2;
  v7 = objc_msgSendSuper2(&v22, "initWithEffect:", v6);

  v8 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  v9 = *&v7[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
  v10 = v7;
  [v9 setAutoresizingMask:18];
  [*&v7[v8] setUserInteractionEnabled:0];
  v11 = [v10 contentView];
  [v11 addSubview:*&v7[v8]];

  sub_8B28(0);
  v12 = *&v7[v8];
  v13 = *&v10[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
  if (v13)
  {
    v14 = [v13 imageWithRenderingMode:2];
  }

  else
  {
    v14 = 0;
  }

  v15 = qword_2DDF8;
  [v12 setImage:v14];

  [v10 invalidateIntrinsicContentSize];
  *&v1[v15] = v10;
  *&v1[qword_2DE00] = 0;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for TTRIVibrantCompletedButton();
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = qword_2DDF8;
  v18 = *&v16[qword_2DDF8];
  v19 = v16;
  [v18 setUserInteractionEnabled:0];
  [*&v16[v17] setAutoresizingMask:2];
  [v19 addSubview:*&v16[v17]];

  return v19;
}

char *sub_86E0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIVibrantTemplateImageView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = 0;
  v6 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  *&v5[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = [objc_opt_self() effectWithStyle:4];
  v8 = [objc_opt_self() effectForBlurEffect:v7 style:1];

  v25.receiver = v5;
  v25.super_class = v4;
  v9 = objc_msgSendSuper2(&v25, "initWithEffect:", v8);

  v10 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView;
  v11 = *&v9[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
  v12 = v9;
  [v11 setAutoresizingMask:18];
  [*&v9[v10] setUserInteractionEnabled:0];
  v13 = [v12 contentView];
  [v13 addSubview:*&v9[v10]];

  sub_8B28(0);
  v14 = *&v9[v10];
  v15 = *&v12[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
  if (v15)
  {
    v16 = [v15 imageWithRenderingMode:2];
  }

  else
  {
    v16 = 0;
  }

  v17 = qword_2DDF8;
  [v14 setImage:v16];

  [v12 invalidateIntrinsicContentSize];
  *&v2[v17] = v12;
  *&v2[qword_2DE00] = 0;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for TTRIVibrantCompletedButton();
  v18 = objc_msgSendSuper2(&v24, "initWithCoder:", a1);
  v19 = v18;
  if (v18)
  {
    v20 = qword_2DDF8;
    v21 = *&v18[qword_2DDF8];
    v22 = v18;
    [v21 setUserInteractionEnabled:0];
    [*&v19[v20] setAutoresizingMask:2];
    [v22 addSubview:*&v19[v20]];
  }

  return v19;
}

void sub_8968(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for TTRIVibrantCompletedButton();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v2 = *&v1[qword_2DDF8];
  [v1 intrinsicContentSize];
  [v2 frame];
  [v2 setFrame:?];
}

void sub_8A40()
{
  v1 = *(v0 + qword_2DE00);
}

id sub_8A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_8AD4(uint64_t a1)
{
  v2 = *(a1 + qword_2DE00);
}

id sub_8B28(void *a1)
{
  v2 = OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image;
  v3 = *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image];
  *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_image] = a1;
  v4 = a1;

  v5 = *&v1[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIVibrantTemplateImageView_imageView];
  v6 = *&v1[v2];
  if (v6)
  {
    v7 = [v6 imageWithRenderingMode:2];
  }

  else
  {
    v7 = 0;
  }

  [v5 setImage:v7];

  return [v1 invalidateIntrinsicContentSize];
}

uint64_t sub_8BD0()
{
  v0 = sub_2036C();
  sub_F9EC(v0, qword_2DE60);
  v1 = sub_F954(v0, qword_2DE60);
  if (qword_2DB98 != -1)
  {
    swift_once();
  }

  v2 = sub_F954(v0, qword_2E890);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_8C98()
{
  v0 = objc_allocWithZone(CNContactStore);

  return [v0 init];
}

size_t sub_8CD0(uint64_t a1)
{
  v2 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v58 - v8);
  v10 = type metadata accessor for TTRIIntentsSnippetSection();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = &_swiftEmptyArrayStorage;
  v78 = &_swiftEmptyArrayStorage;
  v63 = *(a1 + 16);
  if (!v63)
  {
    return v15;
  }

  v16 = 0;
  v62 = *(v10 + 24);
  v61 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v68 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  v60 = *(v12 + 72);
  v17 = 1;
  v67 = v2;
  v59 = v9;
  v58 = v10;
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v65 = v16;
    sub_FC8C(v61 + v60 * v16, v14, type metadata accessor for TTRIIntentsSnippetSection);
    v77 = &_swiftEmptyArrayStorage;
    v19 = v14[1];
    if (v19)
    {
      v20 = *v14;
      v21 = sub_29A0(&qword_2DFF8, &qword_22848);
      v22 = *(v21 + 48);
      v23 = v14;
      v24 = *(v21 + 64);
      *v9 = v20;
      v9[1] = v19;
      sub_FBB0(v23 + *(v10 + 20), v9 + v22, &qword_2E000, &qword_22850);
      *(v9 + v24) = v17 & 1;
      swift_storeEnumTagMultiPayload();

      v25 = sub_1199C(0, 1, 1, &_swiftEmptyArrayStorage);
      v27 = v25[2];
      v26 = v25[3];
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1199C(v26 > 1, v27 + 1, 1, v25);
      }

      v25[2] = v27 + 1;
      sub_FC28(v9, v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v27);
      v77 = v25;
      v14 = v64;
    }

    v28 = *(v14 + v62);
    v29 = v28 >> 62;
    if (v28 >> 62)
    {
      break;
    }

    v30 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
    v73 = v30 - 1;
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_4:
    v16 = v65 + 1;
    sub_10320(v15);
    v18 = v77;
    sub_FA50(v14, type metadata accessor for TTRIIntentsSnippetSection);
    sub_10320(v18);
    v17 = 0;
    v15 = &_swiftEmptyArrayStorage;
    if (v16 == v63)
    {
      return v78;
    }
  }

  if (v28 < 0)
  {
    v57 = *(v14 + v62);
  }

  result = sub_2087C();
  v73 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_51;
  }

  v30 = sub_2087C();
  if (!v30)
  {
    goto LABEL_4;
  }

LABEL_11:
  v72 = v28;
  v76 = &_swiftEmptyArrayStorage;
  result = sub_12B10(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v15 = v76;
    v32 = v72;
    if (v29)
    {
      v33 = sub_2087C();
    }

    else
    {
      v33 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
    }

    result = swift_beginAccess();
    if (v33 >= 1)
    {
      v34 = v32;
      v35 = 0;
      v71 = v32 & 0xC000000000000001;
      v66 = v32 & 0xFFFFFFFFFFFFFF8;
      v36 = v30 - 1;
      v70 = v33;
      do
      {
        if (v71)
        {
          v37 = sub_207AC();
        }

        else
        {
          if (v35 >= *(v66 + 16))
          {
            goto LABEL_49;
          }

          v37 = *(v34 + 8 * v35 + 32);
        }

        v38 = v37;
        v39 = [v37 parentReminder];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 objectID];
          v42 = *(v69 + v68);
          if ((v42 & 0xC000000000000001) != 0)
          {
            if (v42 < 0)
            {
              v43 = *(v69 + v68);
            }

            v44 = v41;

            v45 = sub_2085C();
            if (v45)
            {
              v74 = v45;
              sub_2958(0, &qword_2E0E0, REMReminder_ptr);
              swift_dynamicCast();
              v46 = *&v75[0];
LABEL_30:

              if (v46)
              {

                LODWORD(v40) = 1;
                goto LABEL_34;
              }
            }

            else
            {
            }

            LODWORD(v40) = 0;
            goto LABEL_34;
          }

          if (*(v42 + 16))
          {
            v44 = v41;

            v47 = sub_11F58(v44);
            if (v48)
            {
              v46 = *(*(v42 + 56) + 8 * v47);
              goto LABEL_30;
            }

            LODWORD(v40) = 0;
          }

          else
          {

            LODWORD(v40) = 0;
          }
        }

LABEL_34:
        v49 = v73 == v35;
        v50 = v38;
        sub_3EB4(v50, v49, v40, v75);
        v51 = v75[5];
        *(v7 + 72) = v75[4];
        *(v7 + 88) = v51;
        v52 = v75[7];
        *(v7 + 104) = v75[6];
        *(v7 + 120) = v52;
        v53 = v75[1];
        *(v7 + 8) = v75[0];
        *(v7 + 24) = v53;
        v54 = v75[3];
        *(v7 + 40) = v75[2];
        *v7 = v50;
        *(v7 + 56) = v54;
        swift_storeEnumTagMultiPayload();
        v76 = v15;
        v56 = v15[2];
        v55 = v15[3];
        if (v56 >= v55 >> 1)
        {
          sub_12B10(v55 > 1, v56 + 1, 1);
          v15 = v76;
        }

        v15[2] = v56 + 1;
        result = sub_FC28(v7, v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v56);
        if (v36 == v35)
        {
          v9 = v59;
          v10 = v58;
          v14 = v64;
          goto LABEL_4;
        }

        ++v35;
        v34 = v72;
      }

      while (v70 != v35);
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_9598(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v48 = a2[4];
  v49 = v3;
  v4 = a2[7];
  v50 = a2[6];
  v51 = v4;
  v5 = a2[1];
  v44 = *a2;
  v45 = v5;
  v6 = a2[3];
  v46 = a2[2];
  v47 = v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_203EC();
    isa = sub_1FF5C().super.isa;
    v11 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:isa];

    type metadata accessor for TTRIIntentsSnippetReminderViewCell();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      *(v12 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_delegate + 8) = &off_291B0;
      swift_unknownObjectWeakAssign();
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v42 = v51;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      nullsub_2(&v35);
      v14 = &v13[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
      swift_beginAccess();
      v15 = *v14;
      v16 = *(v14 + 1);
      v17 = *(v14 + 3);
      v43[2] = *(v14 + 2);
      v43[3] = v17;
      v43[0] = v15;
      v43[1] = v16;
      v18 = *(v14 + 4);
      v19 = *(v14 + 5);
      v20 = *(v14 + 7);
      v43[6] = *(v14 + 6);
      v43[7] = v20;
      v43[4] = v18;
      v43[5] = v19;
      v21 = v42;
      v23 = v39;
      v22 = v40;
      *(v14 + 6) = v41;
      *(v14 + 7) = v21;
      *(v14 + 4) = v23;
      *(v14 + 5) = v22;
      v24 = v35;
      v25 = v36;
      v26 = v38;
      *(v14 + 2) = v37;
      *(v14 + 3) = v26;
      *v14 = v24;
      *(v14 + 1) = v25;
      sub_7A7C(a2, v34);
      sub_469C(v43, &qword_2E120, &qword_228F0);
      sub_4C70();
    }

    else
    {
      if (qword_2DB88 != -1)
      {
        swift_once();
      }

      v27 = sub_2036C();
      sub_F954(v27, qword_2DE60);
      v28 = v11;
      v29 = sub_2035C();
      v30 = sub_2056C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&dword_0, v29, v30, "Expected to dequeue reminder cell, but got %@", v31, 0xCu);
        sub_469C(v32, &qword_2E0D8, &qword_228D0);
      }

      v13 = [objc_allocWithZone(UITableViewCell) init];
    }

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_989C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_203EC();
    isa = sub_1FF5C().super.isa;
    v11 = [v8 dequeueReusableCellWithIdentifier:v9 forIndexPath:isa];

    type metadata accessor for TTRIIntentsSnippetHeaderCell();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = (v12 + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel);
      v14 = *(v12 + OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_viewModel + 8);
      *v13 = a2;
      v13[1] = a3;
      v15 = v12;

      sub_4700();
      v15[OBJC_IVAR____TtC21RemindersSiriUIPlugin28TTRIIntentsSnippetHeaderCell_isFirst] = a4 & 1;
      sub_4700();
    }

    else
    {
      if (qword_2DB88 != -1)
      {
        swift_once();
      }

      v16 = sub_2036C();
      sub_F954(v16, qword_2DE60);
      v17 = v11;
      v18 = sub_2035C();
      v19 = sub_2056C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v17;
        v22 = v17;
        _os_log_impl(&dword_0, v18, v19, "Expected to dequeue header cell, but got %@", v20, 0xCu);
        sub_469C(v21, &qword_2E0D8, &qword_228D0);
      }

      v15 = [objc_allocWithZone(UITableViewCell) init];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_9AE8()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = Strong;
  [Strong setEstimatedRowHeight:UITableViewAutomaticDimension];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [objc_opt_self() effectWithStyle:4];
  v6 = [objc_opt_self() effectForBlurEffect:v5 style:5];

  [v4 setSeparatorEffect:v6];
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTableFooterView:v9];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v11 setTableHeaderView:v12];

  v13 = swift_unknownObjectWeakLoadStrong();
  [v13 reloadData];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v14 invalidateIntrinsicContentSize];
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    [v16 layoutIfNeeded];
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    [v18 setInsetsLayoutMarginsFromSafeArea:1];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_9E68(unint64_t a1)
{
  v2 = sub_E470(&_swiftEmptyArrayStorage);
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2087C())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_207AC();
      }

      else
      {
        if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }

        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 remObjectID];
      if ((v2 & 0xC000000000000001) != 0)
      {
        if (v2 >= 0)
        {
          v2 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v11 = v8;
        v12 = sub_2084C();
        if (__OFADD__(v12, 1))
        {
          goto LABEL_30;
        }

        v2 = sub_DC5C(v2, v12 + 1);
      }

      else
      {
        v13 = v8;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_11F58(v10);
      v17 = *(v2 + 16);
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_29;
      }

      v21 = v16;
      if (*(v2 + 24) < v20)
      {
        sub_131A4(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_11F58(v10);
        if ((v21 & 1) != (v22 & 1))
        {
          sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
          result = sub_2092C();
          __break(1u);
          return result;
        }

LABEL_21:
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v25 = v15;
      sub_E034();
      v15 = v25;
      if (v21)
      {
LABEL_4:
        v5 = *(v2 + 56);
        v6 = *(v5 + 8 * v15);
        *(v5 + 8 * v15) = v8;

        goto LABEL_5;
      }

LABEL_22:
      *(v2 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      *(*(v2 + 48) + 8 * v15) = v10;
      *(*(v2 + 56) + 8 * v15) = v8;

      v23 = *(v2 + 16);
      v19 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v19)
      {
        goto LABEL_31;
      }

      *(v2 + 16) = v24;
LABEL_5:
      ++v4;
      if (v9 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
  v26 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  swift_beginAccess();
  v27 = *(v29 + v26);
  *(v29 + v26) = v2;
}

void *sub_A0F4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2085C();

    if (v4)
    {
      sub_2958(0, &qword_2E0E0, REMReminder_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_11F58(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_A1B8(void *a1)
{
  if (!a1)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_469C(&v18, &qword_2E0F8, &qword_228D8);
    goto LABEL_20;
  }

  if (![a1 intentResponse] || (sub_2958(0, &qword_2E110, INIntentResponse_ptr), sub_29A0(&qword_2E108, &unk_228E0), (swift_dynamicCast() & 1) == 0))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_11;
  }

  if (!*(&v19 + 1))
  {
LABEL_11:
    sub_469C(&v18, &qword_2E0F8, &qword_228D8);
    if ([a1 intent])
    {
      sub_2958(0, &qword_2E100, INIntent_ptr);
      sub_29A0(&qword_2E108, &unk_228E0);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_FB54(&v18, v21);
          if (qword_2DB88 != -1)
          {
            swift_once();
          }

          v9 = sub_2036C();
          sub_F954(v9, qword_2DE60);
          v10 = a1;
          v4 = sub_2035C();
          v11 = sub_2054C();

          if (!os_log_type_enabled(v4, v11))
          {
            goto LABEL_23;
          }

          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          v14 = [v10 intent];
          *(v12 + 4) = v14;
          *v13 = v14;
          _os_log_impl(&dword_0, v4, v11, "getting tasks from {intent: %@}", v12, 0xCu);
          sub_469C(v13, &qword_2E0D8, &qword_228D0);

          goto LABEL_18;
        }

LABEL_21:
        sub_469C(&v18, &qword_2E0F8, &qword_228D8);
        return;
      }
    }

LABEL_20:
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_21;
  }

  sub_FB54(&v18, v21);
  if (qword_2DB88 != -1)
  {
    swift_once();
  }

  v2 = sub_2036C();
  sub_F954(v2, qword_2DE60);
  v3 = a1;
  v4 = sub_2035C();
  v5 = sub_2054C();
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_23;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  *v6 = 138412290;
  v8 = [v3 intentResponse];

  if (v8)
  {
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "getting tasks from {response: %@}", v6, 0xCu);
    sub_469C(v7, &qword_2E0D8, &qword_228D0);

LABEL_18:

LABEL_23:

    v15 = v22;
    v16 = v23;
    sub_FB6C(v21, v22);
    v17 = (*(v16 + 8))(v15, v16);
    sub_A60C(v17);

    sub_FAB0(v21);
    return;
  }

  __break(1u);
}

uint64_t *sub_A60C(unint64_t a1)
{
  v2 = v1;
  v29 = &_swiftEmptyArrayStorage;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_24:
    v5 = sub_2087C();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = sub_207AC();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v10 = sub_2060C();

    ++v6;
    if (v10)
    {
      sub_2048C();
      if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v29 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v11 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
        sub_204BC();
      }

      sub_204DC();
      v6 = v9;
    }
  }

  v12 = *(v2 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_store);
  sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
  isa = sub_2049C().super.isa;

  v29 = 0;
  v14 = [v12 fetchRemindersWithObjectIDs:isa error:{&v29, 0}];

  v15 = v29;
  if (v14)
  {
    sub_2958(0, &qword_2E0E0, REMReminder_ptr);
    sub_FAFC(&qword_2E0F0, &qword_2E0E8, REMObjectID_ptr);
    v16 = sub_2039C();
    v17 = v15;

    v18 = sub_E194(v16);
  }

  else
  {
    v19 = v29;
    sub_1FE1C();

    swift_willThrow();
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v20 = sub_2036C();
    sub_F954(v20, qword_2DE60);
    swift_errorRetain();
    v21 = sub_2035C();
    v22 = sub_2055C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      swift_getErrorValue();
      v25 = sub_2093C();
      v27 = sub_D568(v25, v26, &v29);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_0, v21, v22, "Failed to fetch reminders from INTasks {error: %s}", v23, 0xCu);
      sub_FAB0(v24);
    }

    return &_swiftEmptyArrayStorage;
  }

  return v18;
}

id sub_A9C8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  swift_beginAccess();
  v5 = *(v2 + v4);

  v6 = sub_A0F4(a1, v5);

  if (!v6)
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v7 = sub_2036C();
    sub_F954(v7, qword_2DE60);
    v8 = a1;
    v9 = sub_2035C();
    v10 = sub_2054C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&dword_0, v9, v10, "Dont have id in cache, fetching %@", v11, 0xCu);
      sub_469C(v12, &qword_2E0D8, &qword_228D0);
    }

    v14 = *(v2 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_store);
    v25 = 0;
    v6 = [v14 fetchReminderWithObjectID:v8 error:&v25];
    v15 = v25;
    if (!v6)
    {
      v16 = v15;
      sub_1FE1C();

      swift_willThrow();
      swift_errorRetain();
      v17 = sub_2035C();
      v18 = sub_2055C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25 = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = sub_2093C();
        v23 = sub_D568(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_0, v17, v18, "Failed to fetch reminder by id {error: %s}", v19, 0xCu);
        sub_FAB0(v20);
      }

      else
      {
      }

      return 0;
    }
  }

  return v6;
}

id sub_ACE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_store;
  *&v4[v7] = [objc_allocWithZone(REMStore) initUserInteractive:1];
  v8 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_contactsProvider;
  sub_2958(0, &qword_2E140, OS_dispatch_queue_ptr);
  sub_2059C();
  sub_2028C();
  sub_2027C();
  v9 = sub_202BC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v4[v8] = sub_2029C();
  v12 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_timeProvider;
  v13 = sub_2004C();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v4[v12] = sub_2003C();
  *&v4[OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight] = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  *&v4[v16] = sub_E470(&_swiftEmptyArrayStorage);
  if (a2)
  {
    v17 = sub_203EC();
  }

  else
  {
    v17 = 0;
  }

  v20.receiver = v4;
  v20.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  v18 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v17, a3);

  return v18;
}

id sub_AF00(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_store;
  *&v2[v4] = [objc_allocWithZone(REMStore) initUserInteractive:1];
  v5 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_contactsProvider;
  sub_2958(0, &qword_2E140, OS_dispatch_queue_ptr);
  sub_2059C();
  sub_2028C();
  sub_2027C();
  v6 = sub_202BC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v2[v5] = sub_2029C();
  v9 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_timeProvider;
  v10 = sub_2004C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v2[v9] = sub_2003C();
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight] = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_cachedReminders;
  *&v2[v13] = sub_E470(&_swiftEmptyArrayStorage);
  v16.receiver = v2;
  v16.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

id sub_B0B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIIntentsSnippetViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_B19C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = [objc_allocWithZone(INInteraction) initWithIntent:a1 response:a2];
  if (qword_2DB88 != -1)
  {
    swift_once();
  }

  v5 = sub_2036C();
  sub_F954(v5, qword_2DE60);
  v6 = sub_2035C();
  v7 = sub_2054C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Configuring TTRIIntentsSnippetViewController as plugin", v8, 2u);
  }

  v11 = v4;
  sub_A1B8(v4);
  v10 = v9;

  if (v10)
  {
    sub_9E68(v10);
    sub_B350(v10, v11);
  }

  [v3 setTitle:0];
  objc_opt_self();
  [v3 setWantsConfirmationInsets:swift_dynamicCastObjCClass() != 0];
}

void sub_B350(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29A0(&qword_2E000, &qword_22850);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v42 - v8;
  v43 = [a2 intent];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v10 = sub_CB1C(a1);
    v11 = sub_8CD0(v10);

    v12 = *(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel);
    *(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) = v11;

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong reloadData];

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      [v14 invalidateIntrinsicContentSize];
    }

    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v42 = v16;
      [v16 layoutIfNeeded];

      v17 = v42;
LABEL_17:

      return;
    }

LABEL_16:
    v17 = v43;
    goto LABEL_17;
  }

  v18 = sub_F24C(a2);
  if (v18 && (v19 = v18, v20 = sub_2052C(), v19, (v20 & 1) == 0))
  {
    v35 = sub_1E5A8();
    v36 = sub_8CD0(v35);

    v37 = *(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel);
    *(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) = v36;

    v38 = swift_unknownObjectWeakLoadStrong();
    [v38 reloadData];

    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      [v39 invalidateIntrinsicContentSize];
    }

    v41 = swift_unknownObjectWeakLoadStrong();
    if (v41)
    {
      v43 = v41;
      [v41 layoutIfNeeded];
      goto LABEL_16;
    }
  }

  else
  {
    sub_29A0(&qword_2E0D0, &unk_22960);
    v21 = (type metadata accessor for TTRIIntentsSnippetSection() - 8);
    v22 = *(*v21 + 72);
    v23 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22590;
    v25 = (v24 + v23);
    v26 = sub_2030C();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    *v25 = 0;
    v25[1] = 0;
    sub_FBB0(v9, v25 + v21[7], &qword_2E000, &qword_22850);
    v27 = sub_1A63C(a1, 0, 0);
    sub_469C(v9, &qword_2E000, &qword_22850);
    *(v25 + v21[8]) = v27;
    v28 = sub_8CD0(v24);
    swift_setDeallocating();
    sub_FA50(v25, type metadata accessor for TTRIIntentsSnippetSection);
    swift_deallocClassInstance();
    v29 = *(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel);
    *(v3 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) = v28;

    v30 = swift_unknownObjectWeakLoadStrong();
    [v30 reloadData];

    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v32 = v31;
      [v31 invalidateIntrinsicContentSize];
    }

    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      [v33 layoutIfNeeded];
    }
  }
}

double sub_B79C(char a1, double a2, double a3, double a4, CGFloat a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v11 = Strong;
  [Strong contentSize];
  [v11 setFrame:{0.0, 0.0, a4, a5}];
  sub_F334(v11, a1 & 1, a5);
  if (*(v5 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight) > v12)
  {
    v13 = *(v5 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight);
  }

  else
  {
    v13 = v12;
  }

  *(v5 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_maxContentHeight) = v13;
  if (qword_2DB88 != -1)
  {
    swift_once();
  }

  v14 = sub_2036C();
  sub_F954(v14, qword_2DE60);
  v15 = sub_2035C();
  v16 = sub_2054C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136446722;
    v25 = v18;
    type metadata accessor for CGSize(0);
    sub_2082C();
    v19 = sub_D568(0, 0xE000000000000000, &v25);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2082;
    v20 = sub_204EC();
    v22 = sub_D568(v20, v21, &v25);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    sub_2082C();
    v23 = sub_D568(0, 0xE000000000000000, &v25);

    *(v17 + 24) = v23;
    _os_log_impl(&dword_0, v15, v16, "preferred content size {originalContentSize: %{public}s, tableContentHeight: %{public}s, preferredContentSize: %{public}s}", v17, 0x20u);
    swift_arrayDestroy();
  }

  return a2;
}

char *sub_BC5C(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = &v18[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      v8 = a2[2];
      *(a1 + 2) = v8;
      *(a1 + 6) = *(a2 + 6);
      v9 = a2[5];
      *(a1 + 4) = a2[4];
      *(a1 + 5) = v9;
      v10 = a2[7];
      *(a1 + 6) = a2[6];
      *(a1 + 7) = v10;
      v11 = a2[9];
      *(a1 + 8) = a2[8];
      *(a1 + 9) = v11;
      v12 = *(a2 + 96);
      v13 = v6;
      v14 = v7;
      v15 = v8;

      if (v12 == 255)
      {
        *(a1 + 5) = *(a2 + 5);
        a1[96] = *(a2 + 96);
      }

      else
      {
        v16 = a2[10];
        v17 = a2[11];
        sub_2CD8(v16, v17, v12);
        *(a1 + 10) = v16;
        *(a1 + 11) = v17;
        a1[96] = v12;
      }

      v25 = a2[13];
      *(a1 + 13) = v25;
      a1[112] = *(a2 + 112);
      v26 = a2[15];
      v27 = a2[16];
      *(a1 + 15) = v26;
      *(a1 + 16) = v27;
      v28 = v25;
    }

    else
    {
      v19 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v19;

      v20 = sub_29A0(&qword_2DFF8, &qword_22848);
      v21 = *(v20 + 48);
      v22 = sub_2030C();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(a2 + v21, 1, v22))
      {
        v24 = sub_29A0(&qword_2E000, &qword_22850);
        memcpy(&a1[v21], a2 + v21, *(*(v24 - 8) + 64));
      }

      else
      {
        (*(v23 + 16))(&a1[v21], a2 + v21, v22);
        (*(v23 + 56))(&a1[v21], 0, 1, v22);
      }

      a1[*(v20 + 64)] = *(a2 + *(v20 + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_BEE0(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v2 = *(a1 + 40);

    v3 = *(a1 + 56);

    v4 = *(a1 + 72);

    v5 = *(a1 + 96);
    if (v5 != 255)
    {
      sub_2D70(*(a1 + 80), *(a1 + 88), v5);
    }

    v6 = *(a1 + 128);
  }

  else
  {
    v8 = *(a1 + 8);

    v9 = *(sub_29A0(&qword_2DFF8, &qword_22848) + 48);
    v10 = sub_2030C();
    v12 = *(v10 - 8);
    result = (*(v12 + 48))(a1 + v9, 1, v10);
    if (!result)
    {
      v11 = *(v12 + 8);

      return v11(a1 + v9, v10);
    }
  }

  return result;
}

uint64_t sub_C044(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    v5 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v5;
    v6 = *(a2 + 16);
    *(a1 + 16) = v6;
    *(a1 + 24) = *(a2 + 24);
    v7 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v7;
    v8 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v8;
    v9 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v9;
    v10 = *(a2 + 96);
    v11 = v4;
    v12 = v5;
    v13 = v6;

    if (v10 == 255)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      v14 = *(a2 + 80);
      v15 = *(a2 + 88);
      sub_2CD8(v14, v15, v10);
      *(a1 + 80) = v14;
      *(a1 + 88) = v15;
      *(a1 + 96) = v10;
    }

    v22 = *(a2 + 104);
    *(a1 + 104) = v22;
    *(a1 + 112) = *(a2 + 112);
    v23 = *(a2 + 120);
    v24 = *(a2 + 128);
    *(a1 + 120) = v23;
    *(a1 + 128) = v24;
    v25 = v22;
  }

  else
  {
    v16 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v16;

    v17 = sub_29A0(&qword_2DFF8, &qword_22848);
    v18 = *(v17 + 48);
    v19 = sub_2030C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(a2 + v18, 1, v19))
    {
      v21 = sub_29A0(&qword_2E000, &qword_22850);
      memcpy((a1 + v18), (a2 + v18), *(*(v21 - 8) + 64));
    }

    else
    {
      (*(v20 + 16))(a1 + v18, a2 + v18, v19);
      (*(v20 + 56))(a1 + v18, 0, 1, v19);
    }

    *(a1 + *(v17 + 64)) = *(a2 + *(v17 + 64));
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_C274(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_FA50(a1, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = *(a2 + 8);
      *(a1 + 8) = v5;
      v6 = *(a2 + 16);
      *(a1 + 16) = v6;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 25) = *(a2 + 25);
      *(a1 + 26) = *(a2 + 26);
      *(a1 + 27) = *(a2 + 27);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      v7 = *(a2 + 96);
      v8 = v4;
      v9 = v5;
      v10 = v6;

      if (v7 == 255)
      {
        v18 = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 80) = v18;
      }

      else
      {
        v11 = *(a2 + 80);
        v12 = *(a2 + 88);
        sub_2CD8(v11, v12, v7);
        *(a1 + 80) = v11;
        *(a1 + 88) = v12;
        *(a1 + 96) = v7;
      }

      v19 = *(a2 + 104);
      *(a1 + 104) = v19;
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      v20 = v19;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);

      v13 = sub_29A0(&qword_2DFF8, &qword_22848);
      v14 = *(v13 + 48);
      v15 = sub_2030C();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(a2 + v14, 1, v15))
      {
        v17 = sub_29A0(&qword_2E000, &qword_22850);
        memcpy((a1 + v14), (a2 + v14), *(*(v17 - 8) + 64));
      }

      else
      {
        (*(v16 + 16))(a1 + v14, a2 + v14, v15);
        (*(v16 + 56))(a1 + v14, 0, 1, v15);
      }

      *(a1 + *(v13 + 64)) = *(a2 + *(v13 + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t type metadata accessor for TTRIIntentsSnippetViewController.ViewModel()
{
  result = qword_2E078;
  if (!qword_2E078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_C55C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    v8 = sub_29A0(&qword_2DFF8, &qword_22848);
    v9 = *(v8 + 48);
    v10 = sub_2030C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a2 + v9, 1, v10))
    {
      v12 = sub_29A0(&qword_2E000, &qword_22850);
      memcpy(a1 + v9, a2 + v9, *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(a1 + v9, a2 + v9, v10);
      (*(v11 + 56))(a1 + v9, 0, 1, v10);
    }

    *(a1 + *(v8 + 64)) = *(a2 + *(v8 + 64));
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *sub_C704(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_FA50(a1, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = sub_29A0(&qword_2DFF8, &qword_22848);
    v9 = *(v8 + 48);
    v10 = sub_2030C();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(&a2[v9], 1, v10))
    {
      v12 = sub_29A0(&qword_2E000, &qword_22850);
      memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v11 + 32))(&a1[v9], &a2[v9], v10);
      (*(v11 + 56))(&a1[v9], 0, 1, v10);
    }

    a1[*(v8 + 64)] = a2[*(v8 + 64)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void sub_C934()
{
  sub_C9E0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8);
    swift_getTupleTypeLayout3();
    v3[4] = v3;
    v3[5] = &unk_22898;
    swift_initEnumMetadataMultiPayload();
  }
}

void sub_C9E0()
{
  if (!qword_2E088)
  {
    sub_2030C();
    v0 = sub_206CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2E088);
    }
  }
}

void sub_CA38(char a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  if (a2)
  {
    v7 = a5.n128_u64[0];
    v8 = a4.n128_u64[0];
    sub_2958(0, &qword_2E0B8, INParameter_ptr);
    sub_FAFC(&qword_2E0C0, &qword_2E0B8, INParameter_ptr);
    v9.super.isa = sub_204FC().super.isa;
    a4.n128_u64[0] = v8;
    a5.n128_u64[0] = v7;
    isa = v9.super.isa;
  }

  else
  {
    isa = 0;
  }

  v11 = isa;
  (*(a3 + 16))(a3, a1 & 1, a4, a5);
}

void *sub_CB1C(unint64_t a1)
{
  v3 = sub_29A0(&qword_2E000, &qword_22850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17[-1] - v5;
  v7 = *(v1 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_timeProvider);
  v17[3] = sub_2004C();
  v17[4] = &protocol witness table for TTRCurrentTimeProvider;
  v17[0] = v7;

  LOBYTE(v7) = sub_205CC();
  sub_FAB0(v17);
  if (v7)
  {
    return sub_10568();
  }

  if (sub_205FC())
  {
    return sub_10F3C();
  }

  if (sub_205DC())
  {
    return sub_1E070(a1);
  }

  if (sub_205EC())
  {
    return sub_1E5A8();
  }

  sub_29A0(&qword_2E0D0, &unk_22960);
  v9 = (type metadata accessor for TTRIIntentsSnippetSection() - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22590;
  v13 = (v12 + v11);
  v14 = sub_2030C();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  *v13 = 0;
  v13[1] = 0;
  sub_FBB0(v6, v12 + v11 + v9[7], &qword_2E000, &qword_22850);
  v15 = sub_1A63C(a1, 0, 0);
  sub_469C(v6, &qword_2E000, &qword_22850);
  result = v12;
  *(v13 + v9[8]) = v15;
  return result;
}

void sub_CD6C(char *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_A9C8(*a2);
  if (v5)
  {
    v44 = v5;
    swift_beginAccess();
    v6 = sub_DB10(v4);
    swift_endAccess();

    v7 = *(a2 + 16);
    v8 = *(a2 + 8);
    v9 = *(a2 + 17);
    v10 = *(a2 + 18);
    v11 = *(a2 + 19);
    v12 = *(a2 + 24);
    v14 = *(a2 + 64);
    v13 = *(a2 + 72);
    v43 = *(a2 + 96);
    v15 = *(a2 + 104);
    v16 = *(a2 + 112);
    v41 = *(a2 + 80);
    v42 = *(a2 + 120);
    *&v47 = v4;
    *(&v47 + 1) = v8;
    LOBYTE(v48) = (v7 & 1) == 0;
    BYTE1(v48) = v9;
    BYTE2(v48) = v10;
    BYTE3(v48) = v11;
    *(&v48 + 1) = v12;
    v17 = *(a2 + 88);
    v40 = *(a2 + 48);
    v49 = *(a2 + 32);
    v50 = v40;
    *&v51 = v14;
    *(&v51 + 1) = v13;
    *&v52 = v41;
    BYTE8(v52) = v17;
    *&v53 = v43;
    BYTE8(v53) = v15;
    *&v54 = v16;
    *(&v54 + 1) = v42;
    v61 = v53;
    v62 = v54;
    v59 = v51;
    v60 = v52;
    v57 = v49;
    v58 = v40;
    v55 = v47;
    v56 = v48;
    nullsub_2(&v55);
    v18 = &a1[OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel];
    swift_beginAccess();
    v19 = *(v18 + 5);
    v63[4] = *(v18 + 4);
    v63[5] = v19;
    v20 = *(v18 + 7);
    v63[6] = *(v18 + 6);
    v63[7] = v20;
    v21 = *(v18 + 1);
    v63[0] = *v18;
    v63[1] = v21;
    v22 = *(v18 + 2);
    v23 = *(v18 + 3);
    v24 = v58;
    *(v18 + 2) = v57;
    *(v18 + 3) = v24;
    v25 = v56;
    *v18 = v55;
    *(v18 + 1) = v25;
    v26 = v62;
    *(v18 + 6) = v61;
    *(v18 + 7) = v26;
    v27 = v60;
    *(v18 + 4) = v59;
    *(v18 + 5) = v27;
    v63[2] = v22;
    v63[3] = v23;

    v28 = v4;
    v29 = v8;

    sub_FD48(v13, v41, v17);

    v30 = v43;
    sub_7A7C(&v47, v46);
    sub_469C(v63, &qword_2E120, &qword_228F0);
    sub_4C70();
    sub_FCF4(&v47);
    sub_2000C();
    __chkstk_darwin();
    v31 = swift_allocObject();
    v32 = *(a2 + 80);
    *(v31 + 88) = *(a2 + 64);
    *(v31 + 104) = v32;
    v33 = *(a2 + 112);
    *(v31 + 120) = *(a2 + 96);
    *(v31 + 136) = v33;
    v34 = *(a2 + 16);
    *(v31 + 24) = *a2;
    *(v31 + 40) = v34;
    v35 = *(a2 + 48);
    *(v31 + 56) = *(a2 + 32);
    *(v31 + 16) = a1;
    *(v31 + 72) = v35;
    v36 = a1;
    sub_7A7C(a2, v46);
    sub_1FFEC();
  }

  else
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v37 = sub_2036C();
    sub_F954(v37, qword_2DE60);
    v45 = sub_2035C();
    v38 = sub_2055C();
    if (os_log_type_enabled(v45, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v45, v38, "didn't get reminder object on toggle request", v39, 2u);
    }
  }
}

void sub_D168(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a3[5];
  v54 = a3[4];
  v55 = v4;
  v5 = a3[7];
  v56 = a3[6];
  v57 = v5;
  v6 = a3[1];
  v50 = *a3;
  v51 = v6;
  v7 = a3[3];
  v52 = a3[2];
  v53 = v7;
  if (a1)
  {
    swift_errorRetain();
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v9 = sub_2036C();
    sub_F954(v9, qword_2DE60);
    swift_errorRetain();
    v10 = sub_2035C();
    v11 = sub_2055C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v49[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_2093C();
      v16 = sub_D568(v14, v15, v49);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "Failed toggling reminder complete: %s", v12, 0xCu);
      sub_FAB0(v13);
    }

    v45 = v54;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    nullsub_2(&v41);
    v17 = (a2 + OBJC_IVAR____TtC21RemindersSiriUIPlugin34TTRIIntentsSnippetReminderViewCell_viewModel);
    swift_beginAccess();
    v18 = v17[5];
    v49[4] = v17[4];
    v49[5] = v18;
    v19 = v17[7];
    v49[6] = v17[6];
    v49[7] = v19;
    v20 = v17[1];
    v49[0] = *v17;
    v49[1] = v20;
    v21 = v17[3];
    v49[2] = v17[2];
    v49[3] = v21;
    v22 = v41;
    v23 = v42;
    v24 = v44;
    v17[2] = v43;
    v17[3] = v24;
    *v17 = v22;
    v17[1] = v23;
    v25 = v45;
    v26 = v46;
    v27 = v48;
    v17[6] = v47;
    v17[7] = v27;
    v17[4] = v25;
    v17[5] = v26;
    sub_7A7C(a3, v40);
    sub_469C(v49, &qword_2E120, &qword_228F0);
    sub_4C70();
  }

  else
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v28 = sub_2036C();
    sub_F954(v28, qword_2DE60);
    sub_7A7C(a3, v49);
    v29 = sub_2035C();
    v30 = sub_2054C();
    sub_FCF4(a3);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v49[0] = v33;
      *v31 = 138412546;
      v34 = *a3;
      *(v31 + 4) = *a3;
      *v32 = v34;
      *(v31 + 12) = 2080;
      v35 = (a3[1] & 1) == 0;
      if (a3[1])
      {
        v36 = 20302;
      }

      else
      {
        v36 = 5457241;
      }

      if (v35)
      {
        v37 = 0xE300000000000000;
      }

      else
      {
        v37 = 0xE200000000000000;
      }

      v38 = v34;
      v39 = sub_D568(v36, v37, v49);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_0, v29, v30, "toggle complete for reminder {reminderID: %@}, {expected completed: %s}", v31, 0x16u);
      sub_469C(v32, &qword_2E0D8, &qword_228D0);

      sub_FAB0(v33);
    }
  }
}

uint64_t sub_D568(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_D634(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_F98C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_FAB0(v11);
  return v7;
}

unint64_t sub_D634(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_D740(a5, a6);
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
    result = sub_207CC();
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

char *sub_D740(uint64_t a1, unint64_t a2)
{
  v4 = sub_D78C(a1, a2);
  sub_D8BC(&off_28E98);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_D78C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_D9A8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_207CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2046C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_D9A8(v10, 0);
        result = sub_2079C();
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

uint64_t sub_D8BC(uint64_t result)
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

  result = sub_DA1C(result, v12, 1, v3);
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

void *sub_D9A8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_29A0(&qword_2E0C8, &unk_228C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_DA1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29A0(&qword_2E0C8, &unk_228C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_DB10(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_11F58(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_DEA8(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_E034();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_2085C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_2084C();
  v8 = sub_DC5C(v4, v7);

  v9 = sub_11F58(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_DEA8(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_DC5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29A0(&qword_2E118, &qword_229F0);
    v2 = sub_208AC();
    v19 = v2;
    sub_2083C();
    v3 = sub_2086C();
    if (v3)
    {
      v4 = v3;
      sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_2958(0, &qword_2E0E0, REMReminder_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_131A4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_2068C(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_2086C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_DEA8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_206EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_2068C(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

id sub_E034()
{
  v1 = v0;
  sub_29A0(&qword_2E118, &qword_229F0);
  v2 = *v0;
  v3 = sub_2088C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

uint64_t *sub_E194(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2084C();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_11CA4(v2, 0);

    v1 = sub_18CB0(&v5, v3 + 4, v2, v1);
    sub_FB4C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

unint64_t sub_E244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29A0(&qword_2E128, &qword_228F8);
    v3 = sub_208BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBB0(v4, &v11, &unk_2E130, &unk_22900);
      v5 = v11;
      result = sub_3C24(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_FC18(&v12, (v3[7] + 32 * result));
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

unint64_t sub_E36C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29A0(&unk_2E150, &qword_22918);
    v3 = sub_208BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_11FA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_E470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29A0(&qword_2E118, &qword_229F0);
    v3 = sub_208BC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_11F58(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_E568(void **a1)
{
  v2 = *a1;
  v3 = sub_A9C8(*a1);
  if (v3)
  {
    v12 = v3;
    v4 = [v3 userActivity];
    if (v4)
    {
      v5 = v4;
      sub_2058C();
    }
  }

  else
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v6 = sub_2036C();
    sub_F954(v6, qword_2DE60);
    sub_7A7C(a1, v13);
    v7 = sub_2035C();
    v8 = sub_2055C();
    sub_FCF4(a1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v2;
      *v10 = v2;
      v11 = v2;
      _os_log_impl(&dword_0, v7, v8, "Didn't get reminder object on app link launch request {id: %@}", v9, 0xCu);
      sub_469C(v10, &qword_2E0D8, &qword_228D0);
    }
  }
}

unint64_t sub_E718(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1FFAC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = (__chkstk_darwin)();
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v40 - v10;
  v12 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1FF8C();
  v18 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel;
  if (v17 < *(*(v2 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) + 16))
  {
    result = sub_1FF8C();
    if ((result & 0x8000000000000000) == 0)
    {
      v20 = *(v2 + v18);
      if (result >= *(v20 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_FC8C(v20 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * result, v16, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v21 = *v16;
          v22 = *(v16 + 88);
          v40[4] = *(v16 + 72);
          v40[5] = v22;
          v23 = *(v16 + 120);
          v40[6] = *(v16 + 104);
          v40[7] = v23;
          v24 = *(v16 + 24);
          v40[0] = *(v16 + 8);
          v40[1] = v24;
          v25 = *(v16 + 56);
          v40[2] = *(v16 + 40);
          v40[3] = v25;

          v26 = sub_9598(a1, v40);
          sub_FCF4(v40);
        }

        else
        {
          v36 = *v16;
          v37 = *(v16 + 1);
          v38 = sub_29A0(&qword_2DFF8, &qword_22848);
          v39 = *(v38 + 48);
          v26 = sub_989C(a1, v36, v37, v16[*(v38 + 64)]);

          sub_469C(&v16[v39], &qword_2E000, &qword_22850);
        }

        return v26;
      }

      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (qword_2DB88 != -1)
  {
LABEL_14:
    swift_once();
  }

  v27 = sub_2036C();
  sub_F954(v27, qword_2DE60);
  v28 = v5[2];
  v28(v11, a1, v4);
  v28(v9, a1, v4);
  v29 = sub_2035C();
  v30 = sub_2055C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134218240;
    v32 = sub_1FF9C();
    v33 = v5[1];
    v33(v11, v4);
    *(v31 + 4) = v32;
    *(v31 + 12) = 2048;
    v34 = sub_1FF8C();
    v33(v9, v4);
    *(v31 + 14) = v34;
    _os_log_impl(&dword_0, v29, v30, "Got asked for path {section: %ld, row: %ld} with no coresponding item", v31, 0x16u);
  }

  else
  {
    v35 = v5[1];
    v35(v9, v4);
    v35(v11, v4);
  }

  return [objc_allocWithZone(UITableViewCell) init];
}

id sub_EB48()
{
  v1 = v0;
  v49 = sub_1FE3C();
  v48 = *(v49 - 8);
  v2 = *(v48 + 64);
  __chkstk_darwin(v49);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2030C();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v48 - v10);
  v12 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v48 - v19;
  v21 = __chkstk_darwin(v18);
  v52 = &v48 - v22;
  __chkstk_darwin(v21);
  v53 = &v48 - v23;
  result = sub_1FF8C();
  v25 = OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel;
  if (result < *(*(v0 + OBJC_IVAR____TtC21RemindersSiriUIPlugin32TTRIIntentsSnippetViewController_viewModel) + 16))
  {
    v26 = sub_1FF8C();
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v27 = *(v0 + v25);
      if (v26 < *(v27 + 16))
      {
        v28 = v53;
        sub_FC8C(v27 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v26, v53, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        v29 = v28;
        v30 = v52;
        sub_FC8C(v29, v52, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_FC8C(v30, v17, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
          v40 = *(v17 + 1);

          v41 = *(sub_29A0(&qword_2DFF8, &qword_22848) + 48);
          v43 = v50;
          v42 = v51;
          if ((*(v50 + 48))(&v17[v41], 1, v51) == 1)
          {
            sub_FA50(v53, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
            sub_469C(&v17[v41], &qword_2E000, &qword_22850);
            return sub_FA50(v30, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
          }

          (*(v43 + 32))(v9, &v17[v41], v42);
          if (qword_2DB88 != -1)
          {
            swift_once();
          }

          v44 = sub_2036C();
          sub_F954(v44, qword_2DE60);
          sub_202FC();
          sub_FE2C(0x696E532069726953, 0xEC00000074657070, 0x7265646E696D6552, 0xED00007473694C20, v4);
          v45 = *(v48 + 8);
          v46 = v49;
          v45(v4, v49);
          result = [objc_opt_self() defaultWorkspace];
          if (result)
          {
            v47 = result;
            sub_202FC();
            sub_205BC();

            v45(v4, v46);
            (*(v43 + 8))(v9, v42);
            goto LABEL_14;
          }

LABEL_21:
          __break(1u);
          return result;
        }

        sub_FC8C(v30, v20, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
        v9 = *v20;
        v31 = *(v20 + 88);
        v54[4] = *(v20 + 72);
        v54[5] = v31;
        v32 = *(v20 + 120);
        v54[6] = *(v20 + 104);
        v54[7] = v32;
        v33 = *(v20 + 24);
        v54[0] = *(v20 + 8);
        v54[1] = v33;
        v34 = *(v20 + 56);
        v54[2] = *(v20 + 40);
        v54[3] = v34;
        sub_FCF4(v54);
        v35 = *(sub_29A0(&qword_2E148, &qword_22910) + 48);
        *v11 = [v9 remObjectID];
        sub_202EC();
        v1 = v50;
        v17 = v51;
        (*(v50 + 104))(v11, enum case for REMNavigationSpecifier.reminder(_:), v51);
        if (qword_2DB88 == -1)
        {
LABEL_6:
          v36 = sub_2036C();
          sub_F954(v36, qword_2DE60);
          sub_202FC();
          sub_FE2C(0x696E532069726953, 0xEC00000074657070, 0x7265646E696D6552, 0xE800000000000000, v4);
          v37 = *(v48 + 8);
          v38 = v49;
          v37(v4, v49);
          result = [objc_opt_self() defaultWorkspace];
          if (result)
          {
            v39 = result;
            sub_202FC();
            sub_205BC();

            v37(v4, v38);
            (*(v1 + 8))(v11, v17);
LABEL_14:
            sub_FA50(v53, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
            v30 = v52;
            return sub_FA50(v30, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
          }

          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        swift_once();
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

id sub_F24C(void *a1)
{
  v2 = [a1 intentResponse];
  if (!v2)
  {
LABEL_5:
    v6 = [a1 intentResponse];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v5 = [v8 createdTaskList];

        return v5;
      }
    }

    return 0;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    goto LABEL_5;
  }

  v5 = [v4 modifiedTaskList];

  return v5;
}

void sub_F334(void *a1, char a2, CGFloat a3)
{
  v6 = sub_1FFAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 numberOfSections];
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v13 = v11;
  if (v11)
  {
    v14 = 0;
    v15 = (v7 + 8);
    MaxY = 0.0;
    *&v12 = 134219520;
    v33 = v12;
    v34 = v11;
    while (1)
    {
      v17 = [a1 numberOfRowsInSection:{v14, v33}];
      if ((v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      v18 = v17;
      if (v17)
      {
        v19 = 0;
        while (1)
        {
          sub_1FF7C();
          isa = sub_1FF5C().super.isa;
          (*v15)(v10, v6);
          [a1 rectForRowAtIndexPath:isa];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;

          if (a2)
          {
            v36.origin.x = v22;
            v36.origin.y = v24;
            v36.size.width = v26;
            v36.size.height = v28;
            if (CGRectGetMaxY(v36) > a3)
            {
              break;
            }
          }

          ++v19;
          v35.origin.x = v22;
          v35.origin.y = v24;
          v35.size.width = v26;
          v35.size.height = v28;
          MaxY = CGRectGetMaxY(v35);
          if (v18 == v19)
          {
            goto LABEL_5;
          }
        }

        if (qword_2DB88 != -1)
        {
          swift_once();
        }

        v29 = sub_2036C();
        sub_F954(v29, qword_2DE60);
        sub_CB14();
        sub_CB14();
        sub_CB14();
        sub_CB14();
        sub_CB14();
        sub_CB14();
        v30 = sub_2035C();
        v31 = sub_2054C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = v33;
          *(v32 + 4) = v19;
          *(v32 + 12) = 1040;
          *(v32 + 14) = 1;
          *(v32 + 18) = 2048;
          v37.origin.x = v22;
          v37.origin.y = v24;
          v37.size.width = v26;
          v37.size.height = v28;
          *(v32 + 20) = CGRectGetMaxY(v37);
          *(v32 + 28) = 1040;
          *(v32 + 30) = 1;
          *(v32 + 34) = 2048;
          *(v32 + 36) = MaxY;
          *(v32 + 44) = 1040;
          *(v32 + 46) = 1;
          *(v32 + 50) = 2048;
          *(v32 + 52) = a3;
          _os_log_impl(&dword_0, v30, v31, "Adding row %ld would be too large to fit, stopping at previous height. { currentRowMaxY:  %.*f, previousMaxY: %.*f, maxHeight: %.*f}", v32, 0x3Cu);
          v13 = v34;
        }
      }

LABEL_5:
      if (++v14 == v13)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_F668(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, __n128, __n128), __n128 a4, __n128 a5)
{
  if (!a1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_2071C())
    {
      goto LABEL_4;
    }
  }

  else if (*(a1 + 16))
  {
LABEL_4:
    if (a3)
    {
LABEL_5:
      a4.n128_u64[0] = 0;
      a5.n128_u64[0] = 0;
      v10 = a1;
LABEL_24:
      a3(1, v10, a4, a5);
      return;
    }

    goto LABEL_26;
  }

  sub_A1B8(a2);
  if (!v11)
  {
    if (a3)
    {
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  sub_9E68(v11);
  if (!a2)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_B350(v12, a2);
  v13 = [v5 extensionContext];
  if (!v13 || (v14 = v13, [v13 hostedViewMinimumAllowedSize], v16 = v15, v18 = v17, v14, (v19 = objc_msgSend(v6, "extensionContext")) == 0))
  {
    if (qword_2DB88 != -1)
    {
      swift_once();
    }

    v29 = sub_2036C();
    sub_F954(v29, qword_2DE60);
    v30 = sub_2035C();
    v31 = sub_2056C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "Unable to determine hostedViewMinimumAllowedSize", v32, 2u);
    }

    if (!a3)
    {
      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      [Strong contentSize];
      v27 = v35;
      v28 = v36;

      goto LABEL_23;
    }

LABEL_22:
    v27 = 0;
    v28 = 0;
    goto LABEL_23;
  }

  v20 = v19;
  [v19 hostedViewMaximumAllowedSize];
  v22 = v21;
  v24 = v23;

  v25 = sub_B79C(1, v16, v18, v22, v24);
  if (a3)
  {
    v27 = *&v25;
    v28 = v26;

LABEL_23:
    v10 = a1;
    a4.n128_u64[0] = v27;
    a5.n128_u64[0] = v28;
    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_F904(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F914()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F954(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_F98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_F9EC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_FA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_FAB0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_FAFC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2958(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_FB54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_FB6C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_FBB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_29A0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_FC18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_FC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_FC8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_FD48(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2CD8(result, a2, a3);
  }

  return result;
}

uint64_t sub_FD5C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  [v2 isCompleted];
  return sub_1FFFC();
}

uint64_t sub_FD9C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_2D70(*(v0 + 96), *(v0 + 104), v4);
  }

  v5 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

void sub_FE2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v27 = a5;
  v9 = sub_1FE3C();
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2034C();
  sub_29A0(&qword_2E280, &qword_22938);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22920;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_102BC();
  *(inited + 48) = sub_206BC();
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x8000000000022070;
  v24 = a1;
  *(inited + 72) = sub_203EC();
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x8000000000022090;
  v25 = a3;
  *(inited + 96) = sub_203EC();
  sub_E36C(inited);
  swift_setDeallocating();
  sub_29A0(&qword_2E290, &qword_22940);
  swift_arrayDestroy();
  sub_2033C();

  if (qword_2DB90 != -1)
  {
    swift_once();
  }

  v14 = sub_2036C();
  sub_F954(v14, qword_2E878);
  v15 = v28;
  (*(v28 + 16))(v12, v27, v9);

  v16 = sub_2035C();
  v17 = sub_2057C();

  v18 = v9;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v19 = 136315650;
    *(v19 + 4) = sub_D568(v24, a2, &v29);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_D568(v25, a4, &v29);
    *(v19 + 22) = 2080;
    v20 = sub_1FE2C();
    v22 = v21;
    (*(v15 + 8))(v12, v18);
    v23 = sub_D568(v20, v22, &v29);

    *(v19 + 24) = v23;
    _os_log_impl(&dword_0, v16, v17, "Navigating (%s) -> (%s) {url:%s}", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v15 + 8))(v12, v9);
  }
}

uint64_t sub_10248(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_2036C();
  sub_F9EC(v5, a2);
  sub_F954(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_2037C();
}

unint64_t sub_102BC()
{
  result = qword_2E288;
  if (!qword_2E288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2E288);
  }

  return result;
}

uint64_t sub_10320(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_119C4(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_2E368, &qword_229F8, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TTRIIntentsSnippetViewController.ViewModel();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10470(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_2087C();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_2087C();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_11EB8(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(&dword_10 + v11) + 32, (*(&dword_18 + v11) >> 1) - *(&dword_10 + v11), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_10568()
{
  v0 = type metadata accessor for TTRIIntentsSnippetSection();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v79 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29A0(&qword_2E000, &qword_22850);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v72 - v9;
  v11 = sub_29A0(&qword_2E2A0, &qword_22948);
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v78 = &v72 - v17;
  v18 = __chkstk_darwin(v16);
  v80 = (&v72 - v19);
  __chkstk_darwin(v18);
  v21 = (&v72 - v20);

  v23 = sub_19388(v22);

  v24 = v23[2];
  v77 = v1;
  if (v24 && (v25 = sub_12020(1), (v26 & 1) != 0))
  {
    v27 = *(v23[7] + 8 * v25);
    v28 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v29 = sub_202CC();
    (*(*(v29 - 8) + 104))(v10, v28, v29);
    v30 = enum case for REMNavigationSpecifier.today(_:);
    v31 = sub_2030C();
    v73 = v0;
    v32 = v8;
    v33 = v31;
    v34 = *(v31 - 8);
    (*(v34 + 104))(v10, v30, v31);
    (*(v34 + 56))(v10, 0, 1, v33);

    v81._countAndFlagsBits = 0x7961646F54;
    v82._object = 0x80000000000220B0;
    v81._object = 0xE500000000000000;
    v82._countAndFlagsBits = 0xD000000000000010;
    v35 = sub_2001C(v81, v82);
    v37 = v36;
    sub_FBB0(v10, v32, &qword_2E000, &qword_22850);
    *v21 = v35;
    v21[1] = v37;
    v8 = v32;
    v0 = v73;
    sub_FBB0(v8, v21 + *(v73 + 20), &qword_2E000, &qword_22850);
    v38 = sub_1A63C(v27, sub_1AED4, 0);

    sub_469C(v8, &qword_2E000, &qword_22850);
    v1 = v77;
    sub_469C(v10, &qword_2E000, &qword_22850);
    *(v21 + *(v0 + 24)) = v38;
    v39 = v1[7];
    v39(v21, 0, 1, v0);
  }

  else
  {
    v39 = v1[7];
    v39(v21, 1, 1, v0);
  }

  v40 = v23[2];
  v76 = v21;
  if (v40 && (v41 = sub_12020(0), (v42 & 1) != 0))
  {
    v73 = *(v23[7] + 8 * v41);

    v43 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v44 = sub_202CC();
    (*(*(v44 - 8) + 104))(v10, v43, v44);
    v45 = enum case for REMNavigationSpecifier.today(_:);
    v46 = sub_2030C();
    v47 = v8;
    v48 = *(v46 - 8);
    (*(v48 + 104))(v10, v45, v46);
    (*(v48 + 56))(v10, 0, 1, v46);
    v49 = sub_2002C();
    v51 = v50;
    sub_FBB0(v10, v47, &qword_2E000, &qword_22850);
    v52 = v80;
    *v80 = v49;
    v52[1] = v51;
    sub_FBB0(v47, v52 + *(v0 + 20), &qword_2E000, &qword_22850);
    v53 = sub_1A63C(v73, 0, 0);

    sub_469C(v47, &qword_2E000, &qword_22850);
    v1 = v77;
    sub_469C(v10, &qword_2E000, &qword_22850);
    v54 = 0;
    *(v52 + *(v0 + 24)) = v53;
    v21 = v76;
  }

  else
  {

    v54 = 1;
  }

  v55 = v80;
  v39(v80, v54, 1, v0);
  sub_29A0(&qword_2E2A8, &qword_22950);
  v56 = *(v74 + 72);
  v57 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v58 = swift_allocObject() + v57;
  sub_FBB0(v21, v58, &qword_2E2A0, &qword_22948);
  sub_FBB0(v55, v58 + v56, &qword_2E2A0, &qword_22948);
  v59 = v78;
  sub_FBB0(v58, v78, &qword_2E2A0, &qword_22948);
  sub_1DFC0(v59, v15, &qword_2E2A0, &qword_22948);
  v60 = v1[6];
  if (v60(v15, 1, v0) == 1)
  {
    sub_469C(v15, &qword_2E2A0, &qword_22948);
    v61 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_19818(v15, v79);
    v61 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_119C4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
    }

    v63 = v61[2];
    v62 = v61[3];
    if (v63 >= v62 >> 1)
    {
      v61 = sub_119C4(v62 > 1, v63 + 1, 1, v61, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
    }

    v61[2] = v63 + 1;
    sub_19818(v79, v61 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + v77[9] * v63);
  }

  v64 = v58 + v56;
  v65 = v78;
  sub_FBB0(v64, v78, &qword_2E2A0, &qword_22948);
  sub_1DFC0(v65, v15, &qword_2E2A0, &qword_22948);
  if (v60(v15, 1, v0) == 1)
  {
    sub_469C(v15, &qword_2E2A0, &qword_22948);
    v66 = v76;
  }

  else
  {
    sub_19818(v15, v79);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v76;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_119C4(0, v61[2] + 1, 1, v61, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
    }

    v68 = v77;
    v70 = v61[2];
    v69 = v61[3];
    if (v70 >= v69 >> 1)
    {
      v61 = sub_119C4(v69 > 1, v70 + 1, 1, v61, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
    }

    v61[2] = v70 + 1;
    sub_19818(v79, v61 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + v68[9] * v70);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_469C(v80, &qword_2E2A0, &qword_22948);
  sub_469C(v66, &qword_2E2A0, &qword_22948);
  return v61;
}

uint64_t type metadata accessor for TTRIIntentsSnippetSection()
{
  result = qword_2E3E0;
  if (!qword_2E3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10F3C()
{
  v0 = sub_29A0(&qword_2E000, &qword_22850);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v60 - v2;
  v64 = sub_1FEAC();
  v79 = *(v64 - 8);
  v4 = *(v79 + 64);
  __chkstk_darwin(v64);
  v78 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29A0(&qword_2E2B0, &qword_22958);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v60 - v8;
  v75 = sub_29A0(&qword_2E2C0, &qword_22978);
  v10 = *(v75 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v75);
  v80 = &v60 - v12;
  v13 = type metadata accessor for TTRIIntentsSnippetSection();
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = *(v73 + 64);
  __chkstk_darwin(v13);
  v72 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));

  v17 = sub_1B1F8(v16);

  v18 = v17[2];
  v76 = v10;
  v77 = v9;
  if (v18)
  {
    v19 = sub_11D2C(v18, 0);
    v71 = sub_18EB4(&v82, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v18, v17);

    sub_FB4C();
    if (v71 != v18)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:

      __break(1u);

      __break(1u);
      return result;
    }

    v10 = v76;
    v9 = v77;
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  v82 = v19;
  sub_14128(&v82);
  v20 = v64;
  v21 = v82;
  v22 = v82[2];
  if (v22)
  {
    v82 = _swiftEmptyArrayStorage;
    sub_12B54(0, v22, 0);
    v23 = 0;
    v24 = v82;
    v71 = v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v70 = (v79 + 48);
    v62 = (v79 + 32);
    v61 = (v79 + 8);
    v60 = "Today View Title";
    v69 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v68 = enum case for REMNavigationSpecifier.scheduled(_:);
    v63 = v3;
    v66 = v22;
    v67 = v21;
    while (1)
    {
      if (v23 >= v21[2])
      {
        __break(1u);
        goto LABEL_32;
      }

      v79 = 0;
      v25 = v80;
      sub_FBB0(v71 + *(v10 + 72) * v23, v80, &qword_2E2C0, &qword_22978);
      v26 = *(v25 + *(v75 + 48));
      sub_FBB0(v25, v9, &qword_2E2B0, &qword_22958);
      if ((*v70)(v9, 1, v20) != 1)
      {
        break;
      }

      v84._object = (v60 | 0x8000000000000000);
      v83._countAndFlagsBits = 0x7564656863736E55;
      v83._object = 0xEB0000000064656CLL;
      v84._countAndFlagsBits = 0xD000000000000032;
      v27 = sub_2001C(v83, v84);
      v29 = v28;
LABEL_18:
      v44 = sub_202CC();
      (*(*(v44 - 8) + 104))(v3, v69, v44);
      v45 = sub_2030C();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v3, v68, v45);
      (*(v46 + 56))(v3, 0, 1, v45);
      if (v26 >> 62)
      {
        v54 = sub_2087C();
        if (v54)
        {
          v55 = v54;
          v47 = sub_11CA4(v54, 0);

          sub_18A08((v47 + 4), v55, v26);
          v57 = v56;

          v58 = v57 == v55;
          v20 = v64;
          if (!v58)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v47 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v47 = (v26 & 0xFFFFFFFFFFFFFF8);
      }

      v81 = v47;
      v48 = v79;
      sub_141DC(&v81);
      v49 = v72;
      if (v48)
      {
        goto LABEL_34;
      }

      v50 = v81;
      *v72 = v27;
      *(v49 + 8) = v29;
      v51 = v74;
      sub_1DFC0(v3, v49 + *(v74 + 20), &qword_2E000, &qword_22850);
      *(v49 + *(v51 + 24)) = v50;
      sub_469C(v80, &qword_2E2C0, &qword_22978);
      v82 = v24;
      v53 = v24[2];
      v52 = v24[3];
      if (v53 >= v52 >> 1)
      {
        sub_12B54(v52 > 1, v53 + 1, 1);
        v24 = v82;
      }

      ++v23;
      v24[2] = v53 + 1;
      sub_19818(v49, v24 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v53);
      v21 = v67;
      v10 = v76;
      v9 = v77;
      if (v66 == v23)
      {

        return v24;
      }
    }

    v65 = v24;
    (*v62)(v78, v9, v20);
    v30 = [objc_allocWithZone(NSDateFormatter) init];
    [v30 setDateStyle:4];
    [v30 setDoesRelativeDateFormatting:1];
    isa = sub_1FE6C().super.isa;
    v32 = [v30 stringFromDate:isa];

    v27 = sub_2041C();
    v29 = v33;

    [v30 setDoesRelativeDateFormatting:0];
    v34 = sub_1FE6C().super.isa;
    v35 = [v30 stringFromDate:v34];

    v36 = sub_2041C();
    v38 = v37;

    if (v27 == v36 && v29 == v38)
    {

      v3 = v63;
      v24 = v65;
    }

    else
    {
      v39 = sub_2090C();

      v3 = v63;
      v24 = v65;
      if ((v39 & 1) == 0)
      {
LABEL_17:
        v20 = v64;
        (*v61)(v78, v64);
        goto LABEL_18;
      }
    }

    if (qword_2DBA0 != -1)
    {
      swift_once();
    }

    v40 = qword_2E298;
    v41 = sub_1FE6C().super.isa;
    v42 = [v40 stringFromDate:v41];

    v27 = sub_2041C();
    v29 = v43;

    goto LABEL_17;
  }

  return _swiftEmptyArrayStorage;
}

void sub_11858()
{
  v0 = sub_1FEDC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1FECC();
  isa = sub_1FEBC().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setLocale:isa];

  v7 = sub_203EC();
  [v5 setLocalizedDateFormatFromTemplate:v7];

  qword_2E298 = v5;
}

size_t sub_119C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_29A0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_11BA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29A0(&qword_2E2D8, &qword_22988);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_11CA4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_29A0(&qword_2DD50, &unk_22710);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_11D2C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_29A0(&qword_2E2E0, &qword_22990);
  v4 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_11E34(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_29A0(&qword_2E338, &qword_229C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

uint64_t sub_11EB8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_2087C();
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
  result = sub_207BC();
  *v1 = result;
  return result;
}

unint64_t sub_11F58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2068C(*(v2 + 40));
  return sub_12A24(a1, v4, &qword_2E0E8, REMObjectID_ptr);
}

unint64_t sub_11FA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2094C();
  sub_2044C();
  v6 = sub_2096C();

  return sub_1237C(a1, a2, v6);
}

unint64_t sub_12020(int a1)
{
  v3 = *(v1 + 40);
  sub_2094C();
  sub_2095C(a1 & 1);
  v4 = sub_2096C();

  return sub_12434(a1, v4);
}

unint64_t sub_1208C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1FEAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29A0(&qword_2E2B0, &qword_22958);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  v13 = *(v2 + 40);
  sub_2094C();
  sub_FBB0(a1, v12, &qword_2E2B0, &qword_22958);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_2095C(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_2095C(1u);
    sub_1E028(&qword_2E310, &type metadata accessor for Date);
    sub_203BC();
    (*(v5 + 8))(v8, v4);
  }

  v14 = sub_2096C();
  return sub_124A4(a1, v14);
}

unint64_t sub_1229C(void *a1)
{
  v3 = *(v1 + 40);
  sub_2094C();
  if (a1)
  {
    sub_2095C(1u);
    v4 = a1;
    sub_206AC();
  }

  else
  {
    sub_2095C(0);
  }

  v5 = sub_2096C();

  return sub_12920(a1, v5);
}

unint64_t sub_1232C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2068C(*(v2 + 40));
  return sub_12A24(a1, v4, &qword_2E340, REMList_ptr);
}

unint64_t sub_1237C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2090C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_12434(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_124A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = sub_1FEAC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_29A0(&qword_2E318, &qword_229B0);
  v9 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v11 = &v31 - v10;
  v12 = sub_29A0(&qword_2E2B0, &qword_22958);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v42 = v3;
  v19 = -1 << *(v3 + 32);
  v20 = a2 & ~v19;
  v39 = v3 + 64;
  if ((*(v3 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = (v6 + 48);
    v23 = *(v15 + 72);
    v37 = v16;
    v38 = v23;
    v31 = (v6 + 48);
    v32 = (v6 + 32);
    v35 = (v6 + 8);
    v36 = ~v19;
    while (1)
    {
      sub_FBB0(*(v42 + 48) + v38 * v20, v18, &qword_2E2B0, &qword_22958);
      v24 = *(v40 + 48);
      sub_FBB0(v18, v11, &qword_2E2B0, &qword_22958);
      sub_FBB0(v41, &v11[v24], &qword_2E2B0, &qword_22958);
      v25 = *v22;
      if ((*v22)(v11, 1, v5) == 1)
      {
        break;
      }

      v26 = v37;
      sub_FBB0(v11, v37, &qword_2E2B0, &qword_22958);
      if (v25(&v11[v24], 1, v5) == 1)
      {
        sub_469C(v18, &qword_2E2B0, &qword_22958);
        (*v35)(v26, v5);
        v21 = v36;
LABEL_4:
        sub_469C(v11, &qword_2E318, &qword_229B0);
        goto LABEL_5;
      }

      v27 = &v11[v24];
      v28 = v33;
      (*v32)(v33, v27, v5);
      sub_1E028(&qword_2E320, &type metadata accessor for Date);
      v34 = sub_203DC();
      v29 = *v35;
      (*v35)(v28, v5);
      sub_469C(v18, &qword_2E2B0, &qword_22958);
      v29(v26, v5);
      v22 = v31;
      sub_469C(v11, &qword_2E2B0, &qword_22958);
      v21 = v36;
      if (v34)
      {
        return v20;
      }

LABEL_5:
      v20 = (v20 + 1) & v21;
      if (((*(v39 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return v20;
      }
    }

    sub_469C(v18, &qword_2E2B0, &qword_22958);
    if (v25(&v11[v24], 1, v5) == 1)
    {
      sub_469C(v11, &qword_2E2B0, &qword_22958);
      return v20;
    }

    goto LABEL_4;
  }

  return v20;
}

unint64_t sub_12920(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_2958(0, &qword_2E0E8, REMObjectID_ptr);
          v10 = v9;
          v11 = a1;
          v12 = sub_2069C();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_12A24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_2958(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_2069C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

char *sub_12AF0(char *a1, int64_t a2, char a3)
{
  result = sub_12B98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_12B10(size_t a1, int64_t a2, char a3)
{
  result = sub_12CA4(a1, a2, a3, *v3, &qword_2E368, &qword_229F8, type metadata accessor for TTRIIntentsSnippetViewController.ViewModel);
  *v3 = result;
  return result;
}

size_t sub_12B54(size_t a1, int64_t a2, char a3)
{
  result = sub_12CA4(a1, a2, a3, *v3, &qword_2E0D0, &unk_22960, type metadata accessor for TTRIIntentsSnippetSection);
  *v3 = result;
  return result;
}

char *sub_12B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_29A0(&qword_2E370, &qword_22A00);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_12CA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_29A0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_12E80(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_29A0(&qword_2E2E0, &qword_22990);
  v10 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
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

void *sub_13070(void *result, int64_t a2, char a3, void *a4)
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
    sub_29A0(&qword_2E338, &qword_229C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29A0(&qword_2E330, &qword_229C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_131A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29A0(&qword_2E118, &qword_229F0);
  result = sub_2089C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_2068C(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1340C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29A0(&qword_2E2B8, &qword_22970);
  v33 = a2;
  result = sub_2089C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2094C();
      sub_2095C(v21);
      result = sub_2096C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1369C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1FEAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v53 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29A0(&qword_2E2B0, &qword_22958);
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v17 = *(*v3 + 24);
  }

  sub_29A0(&qword_2E308, &qword_229A8);
  v58 = a2;
  result = sub_2089C();
  v19 = result;
  if (*(v16 + 16))
  {
    v55 = v6;
    v49 = v3;
    v20 = 0;
    v21 = (v16 + 64);
    v22 = 1 << *(v16 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v16 + 64);
    v25 = (v22 + 63) >> 6;
    v54 = (v7 + 48);
    v51 = (v7 + 32);
    v50 = (v7 + 8);
    v26 = result + 64;
    v52 = v16;
    v62 = result;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v29 = (v24 - 1) & v24;
LABEL_17:
      v32 = v28 | (v20 << 6);
      v33 = *(v16 + 48);
      v60 = *(v57 + 72);
      v61 = v29;
      v34 = v33 + v60 * v32;
      if (v58)
      {
        sub_1DFC0(v34, v15, &qword_2E2B0, &qword_22958);
        v59 = *(*(v16 + 56) + 8 * v32);
      }

      else
      {
        sub_FBB0(v34, v15, &qword_2E2B0, &qword_22958);
        v59 = *(*(v16 + 56) + 8 * v32);
      }

      v35 = v19[5];
      sub_2094C();
      v36 = v15;
      v37 = v56;
      sub_FBB0(v15, v56, &qword_2E2B0, &qword_22958);
      v38 = v55;
      if ((*v54)(v37, 1, v55) == 1)
      {
        sub_2095C(0);
      }

      else
      {
        v39 = v53;
        (*v51)(v53, v37, v38);
        sub_2095C(1u);
        sub_1E028(&qword_2E310, &type metadata accessor for Date);
        sub_203BC();
        v40 = v39;
        v16 = v52;
        (*v50)(v40, v38);
      }

      result = sub_2096C();
      v41 = -1 << *(v62 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      v15 = v36;
      if (((-1 << v42) & ~*(v26 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v19 = v62;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v26 + 8 * v43);
          if (v47 != -1)
          {
            v27 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v42) & ~*(v26 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v19 = v62;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      result = sub_1DFC0(v15, v19[6] + v60 * v27, &qword_2E2B0, &qword_22958);
      *(v19[7] + 8 * v27) = v59;
      ++v19[2];
      v24 = v61;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v28 = __clz(__rbit64(v31));
        v29 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v58 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_39;
    }

    v48 = 1 << *(v16 + 32);
    v3 = v49;
    if (v48 >= 64)
    {
      bzero(v21, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v48;
    }

    *(v16 + 16) = 0;
  }

LABEL_39:
  *v3 = v19;
  return result;
}

uint64_t sub_13C00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29A0(&qword_2E358, &qword_229E0);
  v35 = a2;
  result = sub_2089C();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_2094C();
      if (v21)
      {
        sub_2095C(1u);
        v25 = v21;
        sub_206AC();
      }

      else
      {
        sub_2095C(0);
      }

      result = sub_2096C();
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
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_38;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_13EB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_29A0(&qword_2E348, &qword_229D0);
  result = sub_2089C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_2068C(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

Swift::Int sub_14128(void **a1)
{
  v2 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_19300(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_142C4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_141DC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_19314(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DEAC(v6);
  return sub_207EC();
}

Swift::Int sub_14258(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19328(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_14408(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_142C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_208EC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_29A0(&qword_2E2C0, &qword_22978);
        v6 = sub_204CC();
        v6[2] = v5;
      }

      v7 = *(sub_29A0(&qword_2E2C0, &qword_22978) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_14D84(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_14510(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_14408(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_208EC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_29A0(&qword_2E330, &qword_229C0);
        v5 = sub_204CC();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1602C(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_14BBC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_14510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_29A0(&qword_2E2B0, &qword_22958);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v57 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = sub_1FEAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v49 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v59 = &v42 - v19;
  v53 = sub_29A0(&qword_2E2C0, &qword_22978);
  v20 = *(*(v53 - 8) + 64);
  v21 = __chkstk_darwin(v53);
  v52 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v62 = &v42 - v24;
  result = __chkstk_darwin(v23);
  v61 = &v42 - v27;
  v44 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v29 = *(v26 + 72);
    v58 = (v15 + 48);
    v54 = (v15 + 8);
    v55 = (v15 + 32);
    v30 = v28 + v29 * (a3 - 1);
    v50 = -v29;
    v51 = v28;
    v31 = a1 - a3;
    v43 = v29;
    v32 = v28 + v29 * a3;
    v56 = v13;
    v33 = v59;
LABEL_6:
    v47 = v30;
    v48 = a3;
    v45 = v32;
    v46 = v31;
    while (1)
    {
      v60 = v31;
      v34 = v61;
      sub_FBB0(v32, v61, &qword_2E2C0, &qword_22978);
      sub_FBB0(v30, v62, &qword_2E2C0, &qword_22978);
      sub_FBB0(v34, v13, &qword_2E2B0, &qword_22958);
      v35 = *v58;
      if ((*v58)(v13, 1, v14) == 1)
      {
        sub_469C(v13, &qword_2E2B0, &qword_22958);
        sub_469C(v62, &qword_2E2C0, &qword_22978);
        result = sub_469C(v61, &qword_2E2C0, &qword_22978);
LABEL_5:
        a3 = v48 + 1;
        v30 = v47 + v43;
        v31 = v46 - 1;
        v32 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return result;
        }

        goto LABEL_6;
      }

      v36 = *v55;
      (*v55)(v33, v13, v14);
      v37 = v57;
      sub_FBB0(v62, v57, &qword_2E2B0, &qword_22958);
      if (v35(v37, 1, v14) == 1)
      {
        (*v54)(v33, v14);
        sub_469C(v37, &qword_2E2B0, &qword_22958);
        sub_469C(v62, &qword_2E2C0, &qword_22978);
        result = sub_469C(v61, &qword_2E2C0, &qword_22978);
        v13 = v56;
      }

      else
      {
        v38 = v49;
        v36(v49, v37, v14);
        v39 = sub_1FE7C();
        v40 = *v54;
        (*v54)(v38, v14);
        v40(v59, v14);
        sub_469C(v62, &qword_2E2C0, &qword_22978);
        result = sub_469C(v61, &qword_2E2C0, &qword_22978);
        v13 = v56;
        if ((v39 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v51)
      {
        break;
      }

      v41 = v52;
      sub_1DFC0(v32, v52, &qword_2E2C0, &qword_22978);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DFC0(v41, v30, &qword_2E2C0, &qword_22978);
      v30 += v50;
      v32 += v50;
      v31 = v60 + 1;
      if (v60 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}
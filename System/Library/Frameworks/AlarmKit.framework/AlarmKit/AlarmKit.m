uint64_t sub_1BBBB8AA0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBBB8AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BBBB8B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BBBF5214();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBBB8C78@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1BBBB8CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlarmPresentation.Alert(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A600, &qword_1BBBF66D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A608, &qword_1BBBF66D8);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1BBBB8E1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AlarmPresentation.Alert(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A600, &qword_1BBBF66D0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A608, &qword_1BBBF66D8);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1BBBB8F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 2;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBBB90A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5214();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BBBB91C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BBBB92C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5214();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BBBB93CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AlarmButton();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BBBB94BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5214();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AlarmButton();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BBBB95F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AlarmPresentationState.Mode(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1BBBB9710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5284();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AlarmPresentationState.Mode(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BBBB981C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5254();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_1BBBB9898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BBBF5254();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

uint64_t getEnumTagSinglePayload for Alarm.Schedule.Relative.Time(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Alarm.Schedule.Relative.Time(uint64_t result, int a2, int a3)
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

uint64_t sub_1BBBB9968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 4)
      {
        return v14 - 3;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1BBBB9A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BBBF5284();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 3;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1BBBB9CDC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBBB9D40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBBB9D80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBBB9DB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBB9E00()
{
  MEMORY[0x1BFB183F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBB9E38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AE30, &qword_1BBBF9EF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBB9ECC()
{
  v1 = sub_1BBBF5284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBB9F54()
{
  v1 = sub_1BBBF5284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBBA018()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBBBA058()
{
  v1 = type metadata accessor for AlarmRequest();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_1BBBF5284();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[6];
  v8 = type metadata accessor for Alarm.Schedule(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *(v5 + v7);
    }

    else
    {
      v10 = sub_1BBBF5254();
      (*(*(v10 - 8) + 8))(v5 + v7, v10);
    }
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  v13 = v1[9];
  v14 = sub_1BBBF52F4();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[10];
  v16 = sub_1BBBF52C4();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  sub_1BBBBBE78(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  v17 = *(v0 + v12 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v12 + 16, v2 | 7);
}

uint64_t sub_1BBBBA2A8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBBBA2E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC9AE50, &unk_1BBBFB0A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for AlarmXPCServiceResponse.ScheduleAlarm(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_1BBBF5284();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(type metadata accessor for Alarm(0) + 20);
    v9 = type metadata accessor for Alarm.Schedule(0);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = *(v5 + v8);
      }

      else
      {
        v11 = sub_1BBBF5254();
        (*(*(v11 - 8) + 8))(v5 + v8, v11);
      }
    }
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + v12 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v13 + 8, v2 | 7);
}

uint64_t sub_1BBBBA4F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BBBF5284();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 2147483646)
  {
    v15 = *(a1 + a3[7]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v16 = v15 - 1;
    if (v16 < 0)
    {
      v16 = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_1BBBF52F4();
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v18 = sub_1BBBF52C4();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1BBBBA6C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BBBF5284();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7]) = a2;
    return result;
  }

  v16 = sub_1BBBF52F4();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = sub_1BBBF52C4();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1BBBBA93C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BBBBA974()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BBBBA9AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBBA9F4()
{
  MEMORY[0x1BFB183F0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBBAA2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9B300, &qword_1BBBFB188);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBBAAC0()
{
  v1 = sub_1BBBF5284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBBAB48()
{
  v1 = sub_1BBBF5284();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BBBBAC0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1BBBBAC44()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BBBBAC84()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BBBBACD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BBBBAF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBBAF84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AlarmAttributes.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = sub_1BBBF5574();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t AlarmAttributes.metadata.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(a2 + 16);
  v6 = sub_1BBBF5574();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*AlarmAttributes.metadata.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_2;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t AlarmAttributes.tintColor.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*AlarmAttributes.tintColor.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_2;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t AlarmAttributes.init(presentation:metadata:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AlarmAttributes();
  v11 = *(v10 + 36);
  (*(*(a4 - 8) + 56))(a5 + v11, 1, 1, a4);
  sub_1BBBBB28C(a1, a5);
  v12 = sub_1BBBF5574();
  result = (*(*(v12 - 8) + 40))(a5 + v11, a2, v12);
  *(a5 + *(v10 + 40)) = a3;
  return result;
}

uint64_t sub_1BBBBB28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBBB2F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6C6F43746E6974 && a2 == 0xE900000000000072 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBBB498(unsigned __int8 a1)
{
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](a1);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBBB4E0(unsigned __int8 a1)
{
  v1 = 0x746E65746E6F63;
  v2 = 0x6F6C6F43746E6974;
  if (a1 != 2)
  {
    v2 = 0x61746E6573657270;
  }

  if (a1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1BBBBB568(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1BBBBB460(*a1, *a2);
}

uint64_t sub_1BBBBB57C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1BBBBB498(*v1);
}

uint64_t sub_1BBBBB588(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1BBBBB470(a1, *v2);
}

uint64_t sub_1BBBBB594(uint64_t a1, uint64_t a2)
{
  sub_1BBBF5844();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1BBBBB470(v7, *v2);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBBB5DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1BBBBB4E0(*v1);
}

uint64_t sub_1BBBBB5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1BBBBB2F0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1BBBBB624@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1BBBBCE30();
  *a2 = result;
  return result;
}

uint64_t sub_1BBBBB650(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BBBBB6A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t AlarmAttributes.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v7 = sub_1BBBF5574();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v44 = &v41 - v9;
  v45 = type metadata accessor for AlarmPresentation(0);
  v10 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v46 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AlarmAttributes.CodingKeys();
  swift_getWitnessTable();
  v12 = sub_1BBBF56E4();
  v48 = *(v12 - 8);
  v13 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v41 - v14;
  v47 = a3;
  v16 = type metadata accessor for AlarmAttributes();
  v42 = *(v16 - 8);
  v17 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = MEMORY[0x1EEE9AC00]();
  v20 = &v41 - v19;
  v21 = *(v18 + 36);
  v22 = *(*(a2 - 8) + 56);
  v50 = v20;
  v54 = v21;
  v22(&v20[v21], 1, 1, a2);
  v24 = a1[3];
  v23 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v25 = v49;
  sub_1BBBF5894();
  if (v25)
  {
    v34 = v52;
    v30 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
    v32 = v50;
    v35 = v51;
    return (*(v35 + 8))(v32 + v30, v34);
  }

  v26 = v44;
  v27 = v47;
  v49 = v16;
  LOBYTE(v55) = 3;
  sub_1BBBBC2F0(&qword_1EDD45A58, type metadata accessor for AlarmPresentation);
  v28 = v46;
  sub_1BBBF56C4();
  v29 = v12;
  v32 = v50;
  sub_1BBBBB28C(v28, v50);
  LOBYTE(v55) = 1;
  v33 = *(v27 + 1);
  sub_1BBBF5674();
  v34 = v52;
  v35 = v51;
  (*(v51 + 40))(v32 + v54, v26, v52);
  v57 = 2;
  sub_1BBBBBDDC();
  sub_1BBBF56C4();
  v47 = v15;
  v37 = v55;
  v36 = v56;
  sub_1BBBBBE30(0, &qword_1EDD456F8, 0x1E696ACD0);
  sub_1BBBBBE30(0, &qword_1EDD456D8, 0x1E69DC888);
  if (!sub_1BBBF5504())
  {
    sub_1BBBBBECC();
    swift_allocError();
    swift_willThrow();
    sub_1BBBBBE78(v37, v36);
    (*(v48 + 8))(v47, v29);
    v30 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
    sub_1BBBBBD80(v32);
    return (*(v35 + 8))(v32 + v30, v34);
  }

  v38 = sub_1BBBF5334();
  sub_1BBBBBE78(v37, v36);
  (*(v48 + 8))(v47, v29);
  v39 = v49;
  *(v32 + *(v49 + 40)) = v38;
  v40 = v42;
  (*(v42 + 16))(v43, v32, v39);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return (*(v40 + 8))(v32, v39);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1BBBBBD80(uint64_t a1)
{
  v2 = type metadata accessor for AlarmPresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BBBBBDDC()
{
  result = qword_1EDD45BD0;
  if (!qword_1EDD45BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45BD0);
  }

  return result;
}

uint64_t sub_1BBBBBE30(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BBBBBE78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1BBBBBECC()
{
  result = qword_1EBC9A568;
  if (!qword_1EBC9A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A568);
  }

  return result;
}

uint64_t AlarmAttributes.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v20[0] = *(a2 + 24);
  v20[1] = v4;
  type metadata accessor for AlarmAttributes.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1BBBF5784();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v20[2];
  sub_1BBBF58A4();
  LOBYTE(v21) = 3;
  type metadata accessor for AlarmPresentation(0);
  sub_1BBBBC2F0(&qword_1EDD45628, type metadata accessor for AlarmPresentation);
  v12 = v20[3];
  sub_1BBBF5774();
  if (v12)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = *(a2 + 36);
  LOBYTE(v21) = 1;
  v14 = *(v20[0] + 16);
  sub_1BBBF5724();
  v15 = *(v11 + *(a2 + 40));
  v16 = Color.encoded()();
  v21 = v16;
  v22 = v17;
  v18 = v17;
  v23 = 2;
  sub_1BBBBC18C();
  sub_1BBBF5774();
  (*(v6 + 8))(v9, v5);
  return sub_1BBBBBE78(v16, v18);
}

unint64_t sub_1BBBBC18C()
{
  result = qword_1EDD45668;
  if (!qword_1EDD45668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45668);
  }

  return result;
}

uint64_t sub_1BBBBC2F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBBBC378(uint64_t a1)
{
  result = type metadata accessor for AlarmPresentation(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_1BBBF5574();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BBBBC408(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BBBF5214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = v9 - 1;
  if (v9 - 1 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = v9 - 1;
  }

  if (v11 - 1 < v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 - 1;
  }

  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(*(v6 - 8) + 64);
  v17 = *(v14 + 80);
  if (v15)
  {
    v18 = v15 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  if (v15)
  {
    v20 = *(v14 + 64);
  }

  else
  {
    v20 = *(v14 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v7 + 80) & 0xF8 | 7;
  v22 = v16 + v21;
  v23 = (v16 + v21) & ~v21;
  v24 = v16 + 7;
  v25 = (((v24 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v23 + 16;
  v26 = v25 + v21;
  v27 = v25 + v21 + 1;
  v28 = ((v25 + v21 + (v27 & ~v21)) & ~v21) + v25 + v17;
  v29 = v20 + 7;
  if (v19 < a2)
  {
    v30 = ((v29 + (v28 & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v31 = a2 - v19;
    v32 = v30 & 0xFFFFFFF8;
    if ((v30 & 0xFFFFFFF8) != 0)
    {
      v33 = 2;
    }

    else
    {
      v33 = v31 + 1;
    }

    if (v33 >= 0x10000)
    {
      v34 = 4;
    }

    else
    {
      v34 = 2;
    }

    if (v33 < 0x100)
    {
      v34 = 1;
    }

    if (v33 >= 2)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v36 = *(a1 + v30);
        if (v36)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v36 = *(a1 + v30);
        if (v36)
        {
          goto LABEL_40;
        }
      }
    }

    else if (v35)
    {
      v36 = *(a1 + v30);
      if (v36)
      {
LABEL_40:
        v37 = v36 - 1;
        if (v32)
        {
          v37 = 0;
          v38 = *a1;
        }

        else
        {
          v38 = 0;
        }

        return v19 + (v38 | v37) + 1;
      }
    }
  }

  if (v13 != v19)
  {
    v41 = (a1 + v28) & ~v17;
    if (v18 != v19)
    {
      v45 = *((v29 + v41) & 0xFFFFFFFFFFFFFFF8);
      if (v45 >= 0xFFFFFFFF)
      {
        LODWORD(v45) = -1;
      }

      return (v45 + 1);
    }

    if (v15 >= 2)
    {
      v47 = (*(v14 + 48))(v41, v15);
      goto LABEL_79;
    }

    return 0;
  }

  v39 = ~v21;
  if (v11 != v13)
  {
    v40 = (a1 + v27) & v39;
    if (v11 - 1 == v13)
    {
      if (v8 < v10)
      {
        v43 = (v22 + v40) & v39;
        if (v8 < 0x7FFFFFFF)
        {
          v49 = *((v24 + v43) & 0xFFFFFFFFFFFFFFF8);
          if (v49 >= 0xFFFFFFFF)
          {
            LODWORD(v49) = -1;
          }

          v44 = v49 + 1;
        }

        else
        {
          v44 = (*(v7 + 48))(v43);
        }

        if (v44 >= 2)
        {
          v47 = v44 - 1;
        }

        else
        {
          v47 = 0;
        }

        goto LABEL_79;
      }
    }

    else
    {
      v40 = (v26 + v40) & v39;
      if (v8 < 0x7FFFFFFF)
      {
        v40 = (v22 + v40) & v39;
LABEL_70:
        v48 = *((v24 + v40) & 0xFFFFFFFFFFFFFFF8);
        if (v48 >= 0xFFFFFFFF)
        {
          LODWORD(v48) = -1;
        }

        v47 = v48 + 1;
        goto LABEL_79;
      }
    }

    goto LABEL_66;
  }

  if (v8 < v10)
  {
    v40 = (a1 + v22) & v39;
    if (v8 < 0x7FFFFFFF)
    {
      goto LABEL_70;
    }

LABEL_66:
    v47 = (*(v7 + 48))(v40);
LABEL_79:
    if (v47 >= 2)
    {
      return v47 - 1;
    }

    else
    {
      return 0;
    }
  }

  v46 = *(v7 + 48);

  return v46(a1);
}

void sub_1BBBBC7C4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1BBBF5214() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  if (v11 - 1 <= v10)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = v11 - 1;
  }

  if (v13 - 1 < v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 - 1;
  }

  if (v12 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11 - 1;
  }

  v16 = *(*(a4 + 16) - 8);
  v17 = *(v16 + 84);
  v18 = *(v8 + 64);
  v19 = *(v16 + 80);
  v20 = *(v16 + 64);
  if (v17)
  {
    v21 = v17 - 1;
  }

  else
  {
    v21 = 0;
  }

  if (v21 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = v21;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v9 + 80) & 0xF8 | 7;
  v25 = v18 + v24;
  v26 = v18 + 7;
  v27 = ((((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v28 = ((v18 + v24) & ~v24) + v27;
  v29 = v28 + v24 + 1;
  v30 = ((v28 + v24 + (v29 & ~v24)) & ~v24) + v28 + v19;
  if (!v17)
  {
    ++v20;
  }

  v31 = v20 + 7;
  v32 = ((v31 + (v30 & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v31 + (v30 & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v33 = a3 - v23 + 1;
  }

  else
  {
    v33 = 2;
  }

  if (v33 >= 0x10000)
  {
    v34 = 4;
  }

  else
  {
    v34 = 2;
  }

  if (v33 < 0x100)
  {
    v34 = 1;
  }

  if (v33 < 2)
  {
    v34 = 0;
  }

  if (v23 < a3)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (a2 > v23)
  {
    if (((v31 + (v30 & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v36 = a2 - v23;
    }

    else
    {
      v36 = 1;
    }

    if (((v31 + (v30 & ~v19)) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v37 = ~v23 + a2;
      bzero(a1, ((v31 + (v30 & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v37;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        *(a1 + v32) = v36;
      }

      else
      {
        *(a1 + v32) = v36;
      }
    }

    else if (v35)
    {
      *(a1 + v32) = v36;
    }

    return;
  }

  if (v35 > 1)
  {
    if (v35 != 2)
    {
      *(a1 + v32) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_55;
    }

    *(a1 + v32) = 0;
  }

  else if (v35)
  {
    *(a1 + v32) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_55;
  }

  if (!a2)
  {
    return;
  }

LABEL_55:
  if (v15 != v23)
  {
    v42 = (a1 + v30) & ~v19;
    if (v21 == v23)
    {
      v43 = *(v16 + 56);

      v43(v42, (a2 + 1), v17);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v46 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v46 = (a2 - 1);
      }

      *((v31 + v42) & 0xFFFFFFFFFFFFFFF8) = v46;
    }

    return;
  }

  v38 = ~v24;
  if (v13 == v15)
  {
    if (v10 >= v12)
    {
      v47 = *(v9 + 56);
      v48 = a1;
      v49 = a2;
LABEL_80:

      v47(v48, v49);
      return;
    }

    v39 = ((a1 + v25) & v38);
    if (a2 > v12)
    {
      if (!v27)
      {
        return;
      }

      v40 = a2 - v11;
LABEL_61:
      v41 = v39;
      goto LABEL_86;
    }

    v44 = a2 - v11;
    if (a2 < v11)
    {
      v49 = (a2 + 1);
      if (v10 < 0x7FFFFFFF)
      {
        v50 = v39 + v26;
        goto LABEL_102;
      }

LABEL_93:
      v47 = *(v9 + 56);
      v48 = v39;
      goto LABEL_80;
    }

    goto LABEL_96;
  }

  v39 = ((a1 + v29) & v38);
  if (v13 - 1 != v15)
  {
    v39 = ((v39 + v28 + v24) & v38);
    if (a2 > v12)
    {
      if (!v28)
      {
        return;
      }

      v40 = a2 - v11;
      v41 = v39;
      v27 = v28;
LABEL_86:
      bzero(v41, v27);
      *v39 = v40;
      return;
    }

    v44 = a2 - v11;
    if (a2 < v11)
    {
      v49 = (a2 + 1);
      if (v10 < 0x7FFFFFFF)
      {
        v50 = v26 + ((v39 + v25) & v38);
LABEL_102:
        v52 = (v50 & 0xFFFFFFFFFFFFFFF8);
        if ((v49 & 0x80000000) != 0)
        {
          *v52 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          *v52 = a2;
        }

        return;
      }

      goto LABEL_93;
    }

    goto LABEL_94;
  }

  v44 = a2 - v13;
  if (a2 >= v13)
  {
LABEL_94:
    if (!v28)
    {
      return;
    }

    v51 = v39;
    v27 = v28;
LABEL_98:
    bzero(v51, v27);
    *v39 = v44;
    return;
  }

  v45 = (a2 + 1);
  if (v10 >= v12)
  {
    v47 = *(v9 + 56);
    v48 = v39;
    v49 = (a2 + 1);
    goto LABEL_80;
  }

  v39 = ((v39 + v25) & v38);
  v44 = a2 - v12;
  if (a2 >= v12)
  {
LABEL_96:
    if (!v27)
    {
      return;
    }

    v51 = v39;
    goto LABEL_98;
  }

  if (a2 + 2 > v11)
  {
    if (!v27)
    {
      return;
    }

    v40 = v45 - v11;
    goto LABEL_61;
  }

  if (v10 >= 0x7FFFFFFF)
  {
    v47 = *(v9 + 56);
    v48 = v39;
    v49 = (a2 + 2);
    goto LABEL_80;
  }

  v53 = ((v39 + v26) & 0xFFFFFFFFFFFFFFF8);
  if (a2 + 2 < 0)
  {
    v45 = (a2 - 2147483646);
  }

  *v53 = v45;
}

uint64_t getEnumTagSinglePayload for AlarmPresentationState.Mode.Countdown.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmPresentationState.Mode.Countdown.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AlarmButton.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5214();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlarmButton.text.setter(uint64_t a1)
{
  v3 = sub_1BBBF5214();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlarmButton.textColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for AlarmButton() + 20));
}

uint64_t type metadata accessor for AlarmButton()
{
  result = qword_1EDD45DC8;
  if (!qword_1EDD45DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlarmButton.textColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmButton() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AlarmButton.systemImageName.getter()
{
  v1 = (v0 + *(type metadata accessor for AlarmButton() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AlarmButton.systemImageName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmButton() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmButton.init(text:textColor:systemImageName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1BBBF5214();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for AlarmButton();
  *(a5 + *(result + 20)) = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t AlarmButton.init(text:textColor:systemImageName:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  sub_1BBBF5204();
  result = type metadata accessor for AlarmButton();
  *(a4 + *(result + 20)) = a1;
  v9 = (a4 + *(result + 24));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_1BBBBD21C()
{
  v1 = *v0;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBBD264()
{
  v1 = *v0;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBBD2A8()
{
  v1 = 0x6F6C6F4374786574;
  if (*v0 != 1)
  {
    v1 = 0x6D496D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_1BBBBD30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBBBDF54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBBBD334(uint64_t a1)
{
  v2 = sub_1BBBBD898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBD370(uint64_t a1)
{
  v2 = sub_1BBBBD898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmButton.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1BBBF5214();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00]();
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A570, &qword_1BBBF64A8);
  v36 = *(v6 - 8);
  v7 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v33 - v8;
  v10 = type metadata accessor for AlarmButton();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBD898();
  v15 = v38;
  sub_1BBBF5894();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v35;
  LOBYTE(v39) = 0;
  sub_1BBBBDBDC(qword_1EDD45BD8);
  v17 = v9;
  sub_1BBBF56C4();
  v19 = v13;
  (*(v16 + 32))(v13, v37, v3);
  LOBYTE(v39) = 2;
  v20 = sub_1BBBF5684();
  v21 = v10;
  v22 = (v19 + *(v10 + 24));
  *v22 = v20;
  v22[1] = v23;
  v41 = 1;
  sub_1BBBBBDDC();
  v38 = 0;
  sub_1BBBF56C4();
  v33 = v17;
  v37 = v6;
  v24 = v39;
  v25 = v40;
  sub_1BBBBBE30(0, &qword_1EDD456F8, 0x1E696ACD0);
  sub_1BBBBBE30(0, &qword_1EDD456D8, 0x1E69DC888);
  v26 = sub_1BBBF5504();
  v27 = a1;
  v31 = v36;
  if (v26)
  {
    v32 = sub_1BBBF5334();
    sub_1BBBBBE78(v24, v25);
    (*(v31 + 8))(v33, v37);
    *(v19 + *(v21 + 20)) = v32;
    sub_1BBBBD8EC(v19, v34);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return sub_1BBBBD950(v19);
  }

  else
  {
    sub_1BBBBBECC();
    swift_allocError();
    swift_willThrow();
    sub_1BBBBBE78(v24, v25);
    (*(v31 + 8))(v33, v37);
    v28 = v27;
    v29 = v38;
    __swift_destroy_boxed_opaque_existential_1(v28);
    result = (*(v16 + 8))(v19, v3);
    if (!v29)
    {
      v30 = *(v19 + *(v21 + 24) + 8);
    }
  }

  return result;
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

unint64_t sub_1BBBBD898()
{
  result = qword_1EDD45998;
  if (!qword_1EDD45998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45998);
  }

  return result;
}

uint64_t sub_1BBBBD8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBBD950(uint64_t a1)
{
  v2 = type metadata accessor for AlarmButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AlarmButton.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A578, &qword_1BBBF64B0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBD898();
  sub_1BBBF58A4();
  LOBYTE(v21) = 0;
  sub_1BBBF5214();
  sub_1BBBBDBDC(&unk_1EDD45670);
  sub_1BBBF5774();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = type metadata accessor for AlarmButton();
  v12 = (v3 + *(v11 + 24));
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v21) = 2;
  sub_1BBBF5734();
  v15 = *(v3 + *(v11 + 20));
  v21 = Color.encoded()();
  v22 = v16;
  v20[15] = 1;
  v17 = v21;
  v18 = v16;
  sub_1BBBBC18C();
  sub_1BBBF5774();
  (*(v6 + 8))(v9, v5);
  return sub_1BBBBBE78(v17, v18);
}

uint64_t sub_1BBBBDBDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BBBF5214();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBBBDC78()
{
  result = sub_1BBBF5214();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmButton.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmButton.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BBBBDE50()
{
  result = qword_1EBC9A580;
  if (!qword_1EBC9A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A580);
  }

  return result;
}

unint64_t sub_1BBBBDEA8()
{
  result = qword_1EDD45988;
  if (!qword_1EDD45988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45988);
  }

  return result;
}

unint64_t sub_1BBBBDF00()
{
  result = qword_1EDD45990;
  if (!qword_1EDD45990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45990);
  }

  return result;
}

uint64_t sub_1BBBBDF54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBBE094()
{
  if (*v0)
  {
    result = 0x6D6F74737563;
  }

  else
  {
    result = 0x776F64746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBBE0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBBE1B0(uint64_t a1)
{
  v2 = sub_1BBBBE5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBE1EC(uint64_t a1)
{
  v2 = sub_1BBBBE5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBBE234(uint64_t a1)
{
  v2 = sub_1BBBBE67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBE270(uint64_t a1)
{
  v2 = sub_1BBBBE67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBBE2AC(uint64_t a1)
{
  v2 = sub_1BBBBE628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBE2E8(uint64_t a1)
{
  v2 = sub_1BBBBE628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.Alert.SecondaryButtonBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A588, &qword_1BBBF6660);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A590, &qword_1BBBF6668);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A598, &qword_1BBBF6670);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBE5D4();
  sub_1BBBF58A4();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1BBBBE628();
    v18 = v22;
    sub_1BBBF56F4();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1BBBBE67C();
    sub_1BBBF56F4();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1BBBBE5D4()
{
  result = qword_1EDD45AE8;
  if (!qword_1EDD45AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AE8);
  }

  return result;
}

unint64_t sub_1BBBBE628()
{
  result = qword_1EBC9A5A0;
  if (!qword_1EBC9A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A5A0);
  }

  return result;
}

unint64_t sub_1BBBBE67C()
{
  result = qword_1EDD45AC0;
  if (!qword_1EDD45AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AC0);
  }

  return result;
}

uint64_t AlarmPresentation.Alert.SecondaryButtonBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  return sub_1BBBF5884();
}

uint64_t AlarmPresentation.Alert.SecondaryButtonBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5A8, &qword_1BBBF6678);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5B0, &qword_1BBBF6680);
  v32 = *(v8 - 8);
  v9 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5B8, &qword_1BBBF6688);
  v35 = *(v12 - 8);
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBE5D4();
  v17 = v37;
  sub_1BBBF5894();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1BBBF56D4();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1BBBF55D4();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690) + 48);
    *v25 = &type metadata for AlarmPresentation.Alert.SecondaryButtonBehavior;
    sub_1BBBF5644();
    sub_1BBBF55C4();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1BBBBE628();
    sub_1BBBF5634();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1BBBBE67C();
    sub_1BBBF5634();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1BBBBEB98()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBBBEBCC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBBBEC00()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AlarmPresentation.Alert.stopButton.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BBBF5204();
  v2 = sub_1BBBF5344();
  result = type metadata accessor for AlarmButton();
  *(a1 + *(result + 20)) = v2;
  v4 = (a1 + *(result + 24));
  *v4 = 0x6B72616D78;
  v4[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1BBBBECF0@<X0>(uint64_t a1@<X8>)
{
  sub_1BBBF5204();
  v2 = sub_1BBBF5344();
  result = type metadata accessor for AlarmButton();
  *(a1 + *(result + 20)) = v2;
  v4 = (a1 + *(result + 24));
  *v4 = 0x6B72616D78;
  v4[1] = 0xE500000000000000;
  return result;
}

void (*AlarmPresentation.Alert.stopButton.modify(uint64_t *a1))(uint64_t *a1)
{
  v2 = type metadata accessor for AlarmButton();
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(*(*(v2 - 8) + 64));
  }

  v4 = v3;
  *a1 = v3;
  sub_1BBBF5204();
  *(v4 + *(v2 + 20)) = sub_1BBBF5344();
  v5 = (v4 + *(v2 + 24));
  *v5 = 0x6B72616D78;
  v5[1] = 0xE500000000000000;
  return sub_1BBBBEE48;
}

void sub_1BBBBEE48(uint64_t *a1)
{
  v1 = *a1;
  sub_1BBBBFD38(*a1, type metadata accessor for AlarmButton);

  free(v1);
}

uint64_t AlarmPresentation.Alert.secondaryButtonBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AlarmPresentation.Alert(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t AlarmPresentation.Alert.secondaryButtonBehavior.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AlarmPresentation.Alert(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t AlarmPresentation.Alert.init(title:secondaryButton:secondaryButtonBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AlarmButton();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  sub_1BBBF5204();
  *&v12[*(v8 + 20)] = sub_1BBBF5344();
  v14 = &v12[*(v8 + 24)];
  *v14 = 0x6B72616D78;
  *(v14 + 1) = 0xE500000000000000;
  sub_1BBBBFD38(v12, type metadata accessor for AlarmButton);
  v15 = type metadata accessor for AlarmPresentation.Alert(0);
  v16 = *(v15 + 20);
  (*(v9 + 56))(a4 + v16, 1, 1, v8);
  v17 = *(v15 + 24);
  *(a4 + v17) = 2;
  v18 = sub_1BBBF5214();
  (*(*(v18 - 8) + 32))(a4, a1, v18);
  result = sub_1BBBC1754(a2, a4 + v16, &qword_1EBC9A5C8, &qword_1BBBF6698);
  *(a4 + v17) = v13;
  return result;
}

uint64_t AlarmPresentation.Alert.init(title:stopButton:secondaryButton:secondaryButtonBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for AlarmPresentation.Alert(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for AlarmButton();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  *(a5 + v13) = 2;
  v14 = sub_1BBBF5214();
  (*(*(v14 - 8) + 32))(a5, a1, v14);
  sub_1BBBBFD38(a2, type metadata accessor for AlarmButton);
  result = sub_1BBBC1754(a3, a5 + v11, &qword_1EBC9A5C8, &qword_1BBBF6698);
  *(a5 + v13) = v9;
  return result;
}

uint64_t AlarmPresentation.Alert.init(title:stopButton:secondaryButton:secondaryButtonBehavior:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char *a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for AlarmPresentation.Alert(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for AlarmButton();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  *(a4 + v11) = 2;
  sub_1BBBF5204();
  sub_1BBBBFD38(a1, type metadata accessor for AlarmButton);
  result = sub_1BBBC1754(a2, a4 + v9, &qword_1EBC9A5C8, &qword_1BBBF6698);
  *(a4 + v11) = v7;
  return result;
}

uint64_t sub_1BBBBF3C0()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1BBBBF428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBBC3004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBBBF450(uint64_t a1)
{
  v2 = sub_1BBBBF710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBBF48C(uint64_t a1)
{
  v2 = sub_1BBBBF710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.Alert.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5D0, &qword_1BBBF66A0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBF710();
  sub_1BBBF58A4();
  v14[15] = 0;
  sub_1BBBF5214();
  sub_1BBBBF764(&unk_1EDD45670, MEMORY[0x1E6968E10]);
  sub_1BBBF5774();
  if (!v2)
  {
    v11 = type metadata accessor for AlarmPresentation.Alert(0);
    v12 = *(v11 + 20);
    v14[14] = 1;
    type metadata accessor for AlarmButton();
    sub_1BBBBF764(&qword_1EDD455B8, type metadata accessor for AlarmButton);
    sub_1BBBF5724();
    v14[13] = *(v3 + *(v11 + 24));
    v14[12] = 2;
    sub_1BBBBF7AC();
    sub_1BBBF5724();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1BBBBF710()
{
  result = qword_1EDD45B00;
  if (!qword_1EDD45B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45B00);
  }

  return result;
}

uint64_t sub_1BBBBF764(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BBBBF7AC()
{
  result = qword_1EDD45648;
  if (!qword_1EDD45648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45648);
  }

  return result;
}

uint64_t AlarmPresentation.Alert.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v30 = &v27 - v4;
  v32 = sub_1BBBF5214();
  v29 = *(v32 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00]();
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5D8, &qword_1BBBF66A8);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v27 - v9;
  v11 = (type metadata accessor for AlarmPresentation.Alert(0) - 8);
  v12 = *(*v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v11[7];
  v16 = type metadata accessor for AlarmButton();
  v17 = *(*(v16 - 8) + 56);
  v36 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = v11[8];
  v14[v18] = 2;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBBF710();
  v20 = v35;
  sub_1BBBF5894();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBC22E0(&v14[v36], &qword_1EBC9A5C8, &qword_1BBBF6698);
  }

  else
  {
    v27 = v18;
    v21 = v29;
    v22 = v30;
    v35 = a1;
    v40 = 0;
    sub_1BBBBF764(qword_1EDD45BD8, MEMORY[0x1E6968E10]);
    v24 = v31;
    v23 = v32;
    sub_1BBBF56C4();
    (*(v21 + 32))(v14, v24, v23);
    v39 = 1;
    sub_1BBBBF764(&qword_1EDD45980, type metadata accessor for AlarmButton);
    sub_1BBBF5674();
    sub_1BBBC1754(v22, &v14[v36], &qword_1EBC9A5C8, &qword_1BBBF6698);
    v37 = 2;
    sub_1BBBBFCE4();
    sub_1BBBF5674();
    (*(v33 + 8))(v10, v34);
    v25 = v28;
    v14[v27] = v38;
    sub_1BBBC0918(v14, v25, type metadata accessor for AlarmPresentation.Alert);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return sub_1BBBBFD38(v14, type metadata accessor for AlarmPresentation.Alert);
  }
}

unint64_t sub_1BBBBFCE4()
{
  result = qword_1EDD45AA8;
  if (!qword_1EDD45AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AA8);
  }

  return result;
}

uint64_t sub_1BBBBFD38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AlarmPresentation.Countdown.init(title:pauseButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for AlarmPresentation.Countdown(0) + 20);
  v7 = type metadata accessor for AlarmButton();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = sub_1BBBF5214();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  return sub_1BBBC1754(a2, a3 + v6, &qword_1EBC9A5C8, &qword_1BBBF6698);
}

uint64_t AlarmPresentation.Countdown.init(title:pauseButton:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AlarmPresentation.Countdown(0) + 20);
  v5 = type metadata accessor for AlarmButton();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  sub_1BBBF5204();
  return sub_1BBBC1754(a1, a2 + v4, &qword_1EBC9A5C8, &qword_1BBBF6698);
}

uint64_t sub_1BBBC00D4()
{
  if (*v0)
  {
    result = 0x7475426573756170;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBC0114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475426573756170 && a2 == 0xEB000000006E6F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBC01F0(uint64_t a1)
{
  v2 = sub_1BBBC0468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC022C(uint64_t a1)
{
  v2 = sub_1BBBC0468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.Countdown.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5E0, &qword_1BBBF66B0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC0468();
  sub_1BBBF58A4();
  v11[15] = 0;
  sub_1BBBF5214();
  sub_1BBBBF764(&unk_1EDD45670, MEMORY[0x1E6968E10]);
  sub_1BBBF5774();
  if (!v1)
  {
    v9 = *(type metadata accessor for AlarmPresentation.Countdown(0) + 20);
    v11[14] = 1;
    type metadata accessor for AlarmButton();
    sub_1BBBBF764(&qword_1EDD455B8, type metadata accessor for AlarmButton);
    sub_1BBBF5724();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BBBC0468()
{
  result = qword_1EDD45A78;
  if (!qword_1EDD45A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A78);
  }

  return result;
}

uint64_t AlarmPresentation.Countdown.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C8, &qword_1BBBF6698) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v5 = &v23 - v4;
  v27 = sub_1BBBF5214();
  v25 = *(v27 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5E8, &qword_1BBBF66B8);
  v26 = *(v28 - 8);
  v9 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v23 - v10;
  v12 = *(*(type metadata accessor for AlarmPresentation.Countdown(0) - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 28);
  v17 = type metadata accessor for AlarmButton();
  v18 = *(*(v17 - 8) + 56);
  v30 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC0468();
  v20 = v29;
  sub_1BBBF5894();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBC22E0(&v15[v30], &qword_1EBC9A5C8, &qword_1BBBF6698);
  }

  else
  {
    v21 = v25;
    v32 = 0;
    sub_1BBBBF764(qword_1EDD45BD8, MEMORY[0x1E6968E10]);
    sub_1BBBF56C4();
    (*(v21 + 32))(v15, v8, v27);
    v31 = 1;
    sub_1BBBBF764(&qword_1EDD45980, type metadata accessor for AlarmButton);
    sub_1BBBF5674();
    (*(v26 + 8))(v11, v28);
    sub_1BBBC1754(v5, &v15[v30], &qword_1EBC9A5C8, &qword_1BBBF6698);
    sub_1BBBC0918(v15, v24, type metadata accessor for AlarmPresentation.Countdown);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBBFD38(v15, type metadata accessor for AlarmPresentation.Countdown);
  }
}

uint64_t sub_1BBBC0918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8AlarmKit0A12PresentationV5AlertV5title10Foundation23LocalizedStringResourceVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5214();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s8AlarmKit0A12PresentationV5AlertV5title10Foundation23LocalizedStringResourceVvs_0(uint64_t a1)
{
  v3 = sub_1BBBF5214();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlarmPresentation.Paused.init(title:resumeButton:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BBBF5214();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for AlarmPresentation.Paused(0);
  return sub_1BBBC192C(a2, a3 + *(v7 + 20), type metadata accessor for AlarmButton);
}

uint64_t AlarmPresentation.Paused.init(title:resumeButton:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1BBBF5204();
  v4 = type metadata accessor for AlarmPresentation.Paused(0);
  return sub_1BBBC192C(a1, a2 + *(v4 + 20), type metadata accessor for AlarmButton);
}

uint64_t sub_1BBBC0C8C()
{
  if (*v0)
  {
    result = 0x7542656D75736572;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBC0CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7542656D75736572 && a2 == 0xEC0000006E6F7474)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBC0DA8(uint64_t a1)
{
  v2 = sub_1BBBC1020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC0DE4(uint64_t a1)
{
  v2 = sub_1BBBC1020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.Paused.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5F0, &qword_1BBBF66C0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC1020();
  sub_1BBBF58A4();
  v11[15] = 0;
  sub_1BBBF5214();
  sub_1BBBBF764(&unk_1EDD45670, MEMORY[0x1E6968E10]);
  sub_1BBBF5774();
  if (!v1)
  {
    v9 = *(type metadata accessor for AlarmPresentation.Paused(0) + 20);
    v11[14] = 1;
    type metadata accessor for AlarmButton();
    sub_1BBBBF764(&qword_1EDD455B8, type metadata accessor for AlarmButton);
    sub_1BBBF5774();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BBBC1020()
{
  result = qword_1EDD45A98;
  if (!qword_1EDD45A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A98);
  }

  return result;
}

uint64_t AlarmPresentation.Paused.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = type metadata accessor for AlarmButton();
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BBBF5214();
  v26 = *(v30 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00]();
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5F8, &qword_1BBBF66C8);
  v29 = *(v31 - 8);
  v9 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v22 - v10;
  v12 = type metadata accessor for AlarmPresentation.Paused(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC1020();
  sub_1BBBF5894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v15;
  v17 = v26;
  v33 = 0;
  sub_1BBBBF764(qword_1EDD45BD8, MEMORY[0x1E6968E10]);
  v18 = v28;
  v19 = v30;
  sub_1BBBF56C4();
  (*(v17 + 32))(v24, v18, v19);
  v32 = 1;
  sub_1BBBBF764(&qword_1EDD45980, type metadata accessor for AlarmButton);
  sub_1BBBF56C4();
  (*(v29 + 8))(v11, v31);
  v20 = v24;
  sub_1BBBC192C(v6, &v24[*(v23 + 20)], type metadata accessor for AlarmButton);
  sub_1BBBC0918(v20, v25, type metadata accessor for AlarmPresentation.Paused);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BBBBFD38(v20, type metadata accessor for AlarmPresentation.Paused);
}

uint64_t sub_1BBBC151C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBBC16A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BBBC1754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t AlarmPresentation.init(alert:countdown:paused:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AlarmPresentation(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for AlarmPresentation.Countdown(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for AlarmPresentation.Paused(0);
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  sub_1BBBC192C(a1, a4, type metadata accessor for AlarmPresentation.Alert);
  sub_1BBBC1754(a2, a4 + v9, &qword_1EBC9A600, &qword_1BBBF66D0);
  return sub_1BBBC1754(a3, a4 + v11, &qword_1EBC9A608, &qword_1BBBF66D8);
}

uint64_t sub_1BBBC192C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBBC1994()
{
  v1 = 0x776F64746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x646573756170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472656C61;
  }
}

uint64_t sub_1BBBC19EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBBC3128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBBC1A14(uint64_t a1)
{
  v2 = sub_1BBBC1D04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC1A50(uint64_t a1)
{
  v2 = sub_1BBBC1D04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A610, &qword_1BBBF66E0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v13[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC1D04();
  sub_1BBBF58A4();
  v13[15] = 0;
  type metadata accessor for AlarmPresentation.Alert(0);
  sub_1BBBBF764(&qword_1EDD45640, type metadata accessor for AlarmPresentation.Alert);
  sub_1BBBF5774();
  if (!v1)
  {
    v9 = type metadata accessor for AlarmPresentation(0);
    v10 = *(v9 + 20);
    v13[14] = 1;
    type metadata accessor for AlarmPresentation.Countdown(0);
    sub_1BBBBF764(&qword_1EDD45630, type metadata accessor for AlarmPresentation.Countdown);
    sub_1BBBF5724();
    v11 = *(v9 + 24);
    v13[13] = 2;
    type metadata accessor for AlarmPresentation.Paused(0);
    sub_1BBBBF764(&qword_1EDD45638, type metadata accessor for AlarmPresentation.Paused);
    sub_1BBBF5724();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BBBC1D04()
{
  result = qword_1EDD45B18[0];
  if (!qword_1EDD45B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD45B18);
  }

  return result;
}

uint64_t AlarmPresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A608, &qword_1BBBF66D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v31 = &v29 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A600, &qword_1BBBF66D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v32 = &v29 - v6;
  v7 = *(*(type metadata accessor for AlarmPresentation.Alert(0) - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A618, &qword_1BBBF66E8);
  v33 = *(v35 - 8);
  v9 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v29 - v10;
  v12 = (type metadata accessor for AlarmPresentation(0) - 8);
  v13 = *(*v12 + 64);
  MEMORY[0x1EEE9AC00]();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v12[7];
  v17 = type metadata accessor for AlarmPresentation.Countdown(0);
  v18 = *(*(v17 - 8) + 56);
  v38 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = v12[8];
  v20 = type metadata accessor for AlarmPresentation.Paused(0);
  v21 = *(*(v20 - 8) + 56);
  v37 = v19;
  v21(&v15[v19], 1, 1, v20);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC1D04();
  v23 = v36;
  sub_1BBBF5894();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1BBBC22E0(&v15[v38], &qword_1EBC9A600, &qword_1BBBF66D0);
    return sub_1BBBC22E0(&v15[v37], &qword_1EBC9A608, &qword_1BBBF66D8);
  }

  else
  {
    v24 = v33;
    v41 = 0;
    sub_1BBBBF764(&qword_1EDD45AA0, type metadata accessor for AlarmPresentation.Alert);
    sub_1BBBF56C4();
    sub_1BBBC192C(v34, v15, type metadata accessor for AlarmPresentation.Alert);
    v40 = 1;
    sub_1BBBBF764(&qword_1EDD45A60, type metadata accessor for AlarmPresentation.Countdown);
    v25 = v32;
    sub_1BBBF5674();
    v26 = v24;
    sub_1BBBC1754(v25, &v15[v38], &qword_1EBC9A600, &qword_1BBBF66D0);
    v39 = 2;
    sub_1BBBBF764(&qword_1EDD45A80, type metadata accessor for AlarmPresentation.Paused);
    v27 = v35;
    sub_1BBBF5674();
    (*(v26 + 8))(v11, v27);
    sub_1BBBC1754(v31, &v15[v37], &qword_1EBC9A608, &qword_1BBBF66D8);
    sub_1BBBC0918(v15, v30, type metadata accessor for AlarmPresentation);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBBFD38(v15, type metadata accessor for AlarmPresentation);
  }
}

uint64_t sub_1BBBC22E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BBBC2344()
{
  result = qword_1EBC9A620;
  if (!qword_1EBC9A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A620);
  }

  return result;
}

void sub_1BBBC23F0()
{
  type metadata accessor for AlarmPresentation.Alert(319);
  if (v0 <= 0x3F)
  {
    sub_1BBBC24C4(319, qword_1EDD460A8, type metadata accessor for AlarmPresentation.Countdown);
    if (v1 <= 0x3F)
    {
      sub_1BBBC24C4(319, qword_1EDD46140, type metadata accessor for AlarmPresentation.Paused);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBBC24C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BBBF5574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BBBC2540()
{
  sub_1BBBF5214();
  if (v0 <= 0x3F)
  {
    sub_1BBBC24C4(319, qword_1EDD45D90, type metadata accessor for AlarmButton);
    if (v1 <= 0x3F)
    {
      sub_1BBBC25F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBBC25F8()
{
  if (!qword_1EDD46218[0])
  {
    v0 = sub_1BBBF5574();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD46218);
    }
  }
}

void sub_1BBBC2680()
{
  sub_1BBBF5214();
  if (v0 <= 0x3F)
  {
    sub_1BBBC24C4(319, qword_1EDD45D90, type metadata accessor for AlarmButton);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BBBC2748()
{
  result = sub_1BBBF5214();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AlarmButton();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmPresentationState.Mode.Paused.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AlarmPresentationState.Mode.Paused.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BBBC2980()
{
  result = qword_1EBC9A628;
  if (!qword_1EBC9A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A628);
  }

  return result;
}

unint64_t sub_1BBBC29D8()
{
  result = qword_1EBC9A630;
  if (!qword_1EBC9A630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A630);
  }

  return result;
}

unint64_t sub_1BBBC2A30()
{
  result = qword_1EBC9A638;
  if (!qword_1EBC9A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A638);
  }

  return result;
}

unint64_t sub_1BBBC2A88()
{
  result = qword_1EBC9A640;
  if (!qword_1EBC9A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A640);
  }

  return result;
}

unint64_t sub_1BBBC2AE0()
{
  result = qword_1EBC9A648;
  if (!qword_1EBC9A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A648);
  }

  return result;
}

unint64_t sub_1BBBC2B38()
{
  result = qword_1EDD45B08;
  if (!qword_1EDD45B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45B08);
  }

  return result;
}

unint64_t sub_1BBBC2B90()
{
  result = qword_1EDD45B10;
  if (!qword_1EDD45B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45B10);
  }

  return result;
}

unint64_t sub_1BBBC2BE8()
{
  result = qword_1EDD45A88;
  if (!qword_1EDD45A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A88);
  }

  return result;
}

unint64_t sub_1BBBC2C40()
{
  result = qword_1EDD45A90;
  if (!qword_1EDD45A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A90);
  }

  return result;
}

unint64_t sub_1BBBC2C98()
{
  result = qword_1EDD45A68;
  if (!qword_1EDD45A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A68);
  }

  return result;
}

unint64_t sub_1BBBC2CF0()
{
  result = qword_1EDD45A70;
  if (!qword_1EDD45A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A70);
  }

  return result;
}

unint64_t sub_1BBBC2D48()
{
  result = qword_1EDD45AF0;
  if (!qword_1EDD45AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AF0);
  }

  return result;
}

unint64_t sub_1BBBC2DA0()
{
  result = qword_1EDD45AF8;
  if (!qword_1EDD45AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AF8);
  }

  return result;
}

unint64_t sub_1BBBC2DF8()
{
  result = qword_1EDD45AB0;
  if (!qword_1EDD45AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AB0);
  }

  return result;
}

unint64_t sub_1BBBC2E50()
{
  result = qword_1EDD45AB8;
  if (!qword_1EDD45AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AB8);
  }

  return result;
}

unint64_t sub_1BBBC2EA8()
{
  result = qword_1EDD45AC8;
  if (!qword_1EDD45AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AC8);
  }

  return result;
}

unint64_t sub_1BBBC2F00()
{
  result = qword_1EDD45AD0;
  if (!qword_1EDD45AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AD0);
  }

  return result;
}

unint64_t sub_1BBBC2F58()
{
  result = qword_1EDD45AD8;
  if (!qword_1EDD45AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AD8);
  }

  return result;
}

unint64_t sub_1BBBC2FB0()
{
  result = qword_1EDD45AE0;
  if (!qword_1EDD45AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45AE0);
  }

  return result;
}

uint64_t sub_1BBBC3004(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F7474754279 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BBC00D60 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBC3128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t AlarmPresentationState.Mode.Countdown.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmPresentationState.Mode.Countdown(0) + 24);
  v4 = sub_1BBBF5254();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlarmPresentationState.Mode.Countdown.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmPresentationState.Mode.Countdown(0) + 24);
  v4 = sub_1BBBF5254();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AlarmPresentationState.Mode.Countdown.fireDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmPresentationState.Mode.Countdown(0) + 28);
  v4 = sub_1BBBF5254();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AlarmPresentationState.Mode.Countdown.fireDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AlarmPresentationState.Mode.Countdown(0) + 28);
  v4 = sub_1BBBF5254();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AlarmPresentationState.Mode.Countdown.init(totalCountdownDuration:previouslyElapsedDuration:startDate:fireDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  a3[1] = a5;
  v8 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  v9 = *(v8 + 24);
  v10 = sub_1BBBF5254();
  v13 = *(*(v10 - 8) + 32);
  (v13)((v10 - 8), a3 + v9, a1, v10);
  v11 = a3 + *(v8 + 28);

  return v13(v11, a2, v10);
}

uint64_t static AlarmPresentationState.Mode.Countdown.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v2 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  v3 = *(v2 + 24);
  if ((sub_1BBBF5244() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 28);

  return sub_1BBBF5244();
}

unint64_t sub_1BBBC36FC()
{
  v1 = 0x7461447472617473;
  if (*v0 != 2)
  {
    v1 = 0x6574614465726966;
  }

  v2 = 0xD000000000000016;
  if (*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BBBC3780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBBC8E44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBBC37A8(uint64_t a1)
{
  v2 = sub_1BBBC3A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC37E4(uint64_t a1)
{
  v2 = sub_1BBBC3A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.Mode.Countdown.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A650, &qword_1BBBF7050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC3A74();
  sub_1BBBF58A4();
  v11 = *v3;
  v21 = 0;
  sub_1BBBF5754();
  if (!v2)
  {
    v13 = v3[1];
    v20 = 1;
    sub_1BBBF5754();
    v14 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
    v15 = *(v14 + 24);
    v19 = 2;
    sub_1BBBF5254();
    sub_1BBBC3BB4(&qword_1EDD45660, MEMORY[0x1E6969530]);
    sub_1BBBF5774();
    v16 = *(v14 + 28);
    v18 = 3;
    sub_1BBBF5774();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1BBBC3A74()
{
  result = qword_1EDD459C0;
  if (!qword_1EDD459C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459C0);
  }

  return result;
}

uint64_t AlarmPresentationState.Mode.Countdown.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  if (*v0 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1BFB17D80](*&v2);
  v3 = v0[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB17D80](*&v3);
  v4 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  v5 = *(v4 + 24);
  sub_1BBBF5254();
  sub_1BBBC3BB4(&qword_1EBC9A658, MEMORY[0x1E6969530]);
  sub_1BBBF53C4();
  v6 = v1 + *(v4 + 28);
  return sub_1BBBF53C4();
}

uint64_t sub_1BBBC3BB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AlarmPresentationState.Mode.Countdown.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v36 = sub_1BBBF5254();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A660, &qword_1BBBF7058);
  v35 = *(v37 - 8);
  v9 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v28 - v10;
  v12 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC3A74();
  v38 = v11;
  v17 = v39;
  sub_1BBBF5894();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v12;
  v18 = a1;
  v32 = v6;
  v19 = v35;
  v20 = v36;
  v43 = 0;
  v21 = v37;
  sub_1BBBF56A4();
  *v15 = v22;
  v42 = 1;
  sub_1BBBF56A4();
  v31 = v15;
  *(v15 + 1) = v23;
  v41 = 2;
  sub_1BBBC3BB4(&qword_1EDD45BC8, MEMORY[0x1E6969530]);
  sub_1BBBF56C4();
  v24 = *(v39 + 24);
  v29 = *(v34 + 32);
  v30 = v24;
  v29(&v31[v24], v8, v20);
  v40 = 3;
  v25 = v32;
  sub_1BBBF56C4();
  (*(v19 + 8))(v38, v21);
  v26 = v31;
  v29(&v31[*(v39 + 28)], v25, v20);
  sub_1BBBC79D4(v26, v33, type metadata accessor for AlarmPresentationState.Mode.Countdown);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_1BBBC7ED4(v26, type metadata accessor for AlarmPresentationState.Mode.Countdown);
}

uint64_t sub_1BBBC4080(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(a3 + 24);
  if ((sub_1BBBF5244() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 28);

  return sub_1BBBF5244();
}

AlarmKit::AlarmPresentationState::Mode::Paused __swiftcall AlarmPresentationState.Mode.Paused.init(totalCountdownDuration:previouslyElapsedDuration:)(Swift::Double totalCountdownDuration, Swift::Double previouslyElapsedDuration)
{
  *v2 = totalCountdownDuration;
  v2[1] = previouslyElapsedDuration;
  result.previouslyElapsedDuration = previouslyElapsedDuration;
  result.totalCountdownDuration = totalCountdownDuration;
  return result;
}

unint64_t sub_1BBBC41DC()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBC4218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001BBC00D80 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BBC00DA0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1BBBF57A4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1BBBC42FC(uint64_t a1)
{
  v2 = sub_1BBBC44FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC4338(uint64_t a1)
{
  v2 = sub_1BBBC44FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.Mode.Paused.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A668, &qword_1BBBF7060);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC44FC();
  sub_1BBBF58A4();
  v13[15] = 0;
  sub_1BBBF5754();
  if (!v2)
  {
    v13[14] = 1;
    sub_1BBBF5754();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BBBC44FC()
{
  result = qword_1EBC9A670;
  if (!qword_1EBC9A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A670);
  }

  return result;
}

uint64_t AlarmPresentationState.Mode.Paused.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1BFB17D80](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x1BFB17D80](*&v3);
}

uint64_t AlarmPresentationState.Mode.Paused.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1BFB17D80](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1BFB17D80](*&v4);
  return sub_1BBBF5884();
}

uint64_t AlarmPresentationState.Mode.Paused.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A678, &qword_1BBBF7068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC44FC();
  sub_1BBBF5894();
  if (!v2)
  {
    v18 = 0;
    sub_1BBBF56A4();
    v12 = v11;
    v17 = 1;
    sub_1BBBF56A4();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBC4828()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x1BFB17D80](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1BFB17D80](*&v4);
  return sub_1BBBF5884();
}

__n128 AlarmPresentationState.Mode.Alert.time.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 AlarmPresentationState.Mode.Alert.time.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t sub_1BBBC4910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBC4998(uint64_t a1)
{
  v2 = sub_1BBBC4B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC49D4(uint64_t a1)
{
  v2 = sub_1BBBC4B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.Mode.Alert.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A680, &qword_1BBBF7070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC4B60();
  sub_1BBBF58A4();
  v12[0] = v9;
  v12[1] = v8;
  sub_1BBBC4BB4();
  sub_1BBBF5774();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BBBC4B60()
{
  result = qword_1EDD459E0;
  if (!qword_1EDD459E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459E0);
  }

  return result;
}

unint64_t sub_1BBBC4BB4()
{
  result = qword_1EDD45650;
  if (!qword_1EDD45650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45650);
  }

  return result;
}

uint64_t AlarmPresentationState.Mode.Alert.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFB17D60](*v0);
  return MEMORY[0x1BFB17D60](v1);
}

uint64_t AlarmPresentationState.Mode.Alert.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  MEMORY[0x1BFB17D60](v2);
  return sub_1BBBF5884();
}

uint64_t AlarmPresentationState.Mode.Alert.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A688, &qword_1BBBF7078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC4B60();
  sub_1BBBF5894();
  if (!v2)
  {
    sub_1BBBC752C();
    sub_1BBBF56C4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBC4E58()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  MEMORY[0x1BFB17D60](v2);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC4EB4()
{
  v1 = v0[1];
  MEMORY[0x1BFB17D60](*v0);
  return MEMORY[0x1BFB17D60](v1);
}

uint64_t sub_1BBBC4EF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  MEMORY[0x1BFB17D60](v2);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC4F58(uint64_t a1)
{
  v2 = sub_1BBBC7B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC4F94(uint64_t a1)
{
  v2 = sub_1BBBC7B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC4FD0(uint64_t a1)
{
  v2 = sub_1BBBC7980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC500C(uint64_t a1)
{
  v2 = sub_1BBBC7980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC5048(uint64_t a1)
{
  v2 = sub_1BBBC7AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC5084(uint64_t a1)
{
  v2 = sub_1BBBC7AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC50C0()
{
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](0);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC5104()
{
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](0);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC5144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBBC51C4(uint64_t a1)
{
  v2 = sub_1BBBC7A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC5200(uint64_t a1)
{
  v2 = sub_1BBBC7A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.Mode.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A690, &qword_1BBBF7080);
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A698, &qword_1BBBF7088);
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v36 - v7;
  v38 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  v8 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6A0, &qword_1BBBF7090);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for AlarmPresentationState.Mode(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6A8, &qword_1BBBF7098);
  v18 = *(v47 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v21 = &v36 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC7980();
  sub_1BBBF58A4();
  sub_1BBBC79D4(v46, v17, type metadata accessor for AlarmPresentationState.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v39;
      sub_1BBBC7C34(v17, v39, type metadata accessor for AlarmPresentationState.Mode.Countdown);
      LOBYTE(v48) = 1;
      sub_1BBBC7AE4();
      v25 = v40;
      v26 = v47;
      sub_1BBBF56F4();
      sub_1BBBC3BB4(&qword_1EDD45618, type metadata accessor for AlarmPresentationState.Mode.Countdown);
      v27 = v43;
      sub_1BBBF5774();
      (*(v42 + 8))(v25, v27);
      sub_1BBBC7ED4(v24, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    }

    else
    {
      v32 = *v17;
      v33 = v17[1];
      LOBYTE(v48) = 2;
      sub_1BBBC7A3C();
      v34 = v41;
      v26 = v47;
      sub_1BBBF56F4();
      v48 = v32;
      v49 = v33;
      sub_1BBBC7A90();
      v35 = v45;
      sub_1BBBF5774();
      (*(v44 + 8))(v34, v35);
    }

    return (*(v18 + 8))(v21, v26);
  }

  else
  {
    v29 = *v17;
    v28 = v17[1];
    LOBYTE(v48) = 0;
    sub_1BBBC7B38();
    v30 = v47;
    sub_1BBBF56F4();
    v48 = v29;
    v49 = v28;
    sub_1BBBC7B8C();
    sub_1BBBF5774();
    (*(v37 + 8))(v13, v10);
    return (*(v18 + 8))(v21, v30);
  }
}

uint64_t AlarmPresentationState.Mode.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AlarmPresentationState.Mode(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBBC79D4(v1, v9, type metadata accessor for AlarmPresentationState.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BBBC7C34(v9, v5, type metadata accessor for AlarmPresentationState.Mode.Countdown);
      MEMORY[0x1BFB17D60](1);
      v11 = *v5;
      if (*v5 == 0.0)
      {
        v11 = 0.0;
      }

      MEMORY[0x1BFB17D80](*&v11);
      v12 = v5[1];
      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      MEMORY[0x1BFB17D80](*&v12);
      v13 = *(v2 + 24);
      sub_1BBBF5254();
      sub_1BBBC3BB4(&qword_1EBC9A658, MEMORY[0x1E6969530]);
      sub_1BBBF53C4();
      v14 = v5 + *(v2 + 28);
      sub_1BBBF53C4();
      return sub_1BBBC7ED4(v5, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    }

    else
    {
      v18 = *v9;
      v19 = v9[1];
      MEMORY[0x1BFB17D60](2);
      if (v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }

      MEMORY[0x1BFB17D80](*&v20);
      if (v19 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v19;
      }

      return MEMORY[0x1BFB17D80](*&v21);
    }
  }

  else
  {
    v16 = *v9;
    v17 = *(v9 + 1);
    MEMORY[0x1BFB17D60](0);
    MEMORY[0x1BFB17D60](*&v16);
    return MEMORY[0x1BFB17D60](v17);
  }
}

uint64_t AlarmPresentationState.Mode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6C0, &qword_1BBBF70A0);
  v69 = *(v66 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v74 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6C8, &qword_1BBBF70A8);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v60 - v7;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6D0, &qword_1BBBF70B0);
  v65 = *(v71 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v60 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6D8, &unk_1BBBF70B8);
  v76 = *(v72 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v60 - v11;
  v13 = type metadata accessor for AlarmPresentationState.Mode(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v60 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v60 - v24;
  v27 = a1[3];
  v26 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1BBBC7980();
  v28 = v77;
  sub_1BBBF5894();
  if (!v28)
  {
    v60 = v23;
    v61 = v17;
    v62 = v20;
    v30 = v70;
    v29 = v71;
    v32 = v73;
    v31 = v74;
    v64 = 0;
    v63 = v25;
    v77 = v13;
    v33 = v75;
    v34 = v72;
    v35 = sub_1BBBF56D4();
    v36 = (2 * *(v35 + 16)) | 1;
    v79 = v35;
    v80 = v35 + 32;
    v81 = 0;
    v82 = v36;
    v37 = sub_1BBBC3250();
    v38 = v34;
    if (v37 == 3 || v81 != v82 >> 1)
    {
      v44 = sub_1BBBF55D4();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690) + 48);
      *v46 = v77;
      v39 = v38;
      sub_1BBBF5644();
      sub_1BBBF55C4();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
    }

    else if (v37)
    {
      if (v37 != 1)
      {
        LOBYTE(v78) = 2;
        sub_1BBBC7A3C();
        v54 = v31;
        v55 = v64;
        sub_1BBBF5634();
        if (!v55)
        {
          v41 = v33;
          sub_1BBBC7BE0();
          v56 = v66;
          sub_1BBBF56C4();
          v57 = v76;
          (*(v69 + 8))(v54, v56);
          (*(v57 + 8))(v12, v34);
          swift_unknownObjectRelease();
          v59 = v61;
          *v61 = v78;
          swift_storeEnumTagMultiPayload();
          v58 = v59;
          goto LABEL_17;
        }

        (*(v76 + 8))(v12, v34);
        goto LABEL_10;
      }

      LOBYTE(v78) = 1;
      sub_1BBBC7AE4();
      v39 = v34;
      v40 = v64;
      sub_1BBBF5634();
      if (!v40)
      {
        v41 = v33;
        type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
        sub_1BBBC3BB4(&qword_1EDD459A8, type metadata accessor for AlarmPresentationState.Mode.Countdown);
        v42 = v62;
        v43 = v68;
        sub_1BBBF56C4();
        (*(v67 + 8))(v32, v43);
        (*(v76 + 8))(v12, v34);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v58 = v42;
LABEL_17:
        v53 = v63;
        sub_1BBBC7C34(v58, v63, type metadata accessor for AlarmPresentationState.Mode);
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v78) = 0;
      sub_1BBBC7B38();
      v49 = v30;
      v39 = v34;
      v50 = v64;
      sub_1BBBF5634();
      if (!v50)
      {
        sub_1BBBC7C9C();
        sub_1BBBF56C4();
        (*(v65 + 8))(v49, v29);
        (*(v76 + 8))(v12, v34);
        swift_unknownObjectRelease();
        v51 = v60;
        *v60 = v78;
        swift_storeEnumTagMultiPayload();
        v52 = v51;
        v53 = v63;
        sub_1BBBC7C34(v52, v63, type metadata accessor for AlarmPresentationState.Mode);
        v41 = v33;
LABEL_18:
        sub_1BBBC7C34(v53, v41, type metadata accessor for AlarmPresentationState.Mode);
        return __swift_destroy_boxed_opaque_existential_1(v83);
      }
    }

    (*(v76 + 8))(v12, v39);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t AlarmPresentationState.alarmID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AlarmPresentationState.alarmID.setter(uint64_t a1)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AlarmPresentationState.mode.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AlarmPresentationState(0) + 20);

  return sub_1BBBC7CF0(a1, v3);
}

uint64_t AlarmPresentationState.bundleID.getter()
{
  v1 = (v0 + *(type metadata accessor for AlarmPresentationState(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AlarmPresentationState.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmPresentationState(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmPresentationState.localizedAppName.getter()
{
  v1 = (v0 + *(type metadata accessor for AlarmPresentationState(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AlarmPresentationState.localizedAppName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmPresentationState(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmPresentationState.alarmLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for AlarmPresentationState(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AlarmPresentationState.alarmLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AlarmPresentationState(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AlarmPresentationState.init(alarmID:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AlarmPresentationState(0);
  v7 = (a3 + v6[6]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a3 + v6[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a3 + v6[8]);
  v10 = sub_1BBBF5284();
  *v9 = 0;
  v9[1] = 0;
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  return sub_1BBBC7C34(a2, a3 + v6[5], type metadata accessor for AlarmPresentationState.Mode);
}

uint64_t AlarmPresentationState.init(alarmID:mode:bundleID:localizedAppName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for AlarmPresentationState(0);
  v14 = (a7 + v13[6]);
  v15 = (a7 + v13[7]);
  v16 = (a7 + v13[8]);
  v17 = sub_1BBBF5284();
  *v16 = 0;
  v16[1] = 0;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  result = sub_1BBBC7C34(a2, a7 + v13[5], type metadata accessor for AlarmPresentationState.Mode);
  *v14 = a3;
  v14[1] = a4;
  *v15 = a5;
  v15[1] = a6;
  return result;
}

uint64_t sub_1BBBC690C()
{
  v1 = *v0;
  v2 = 0x44496D72616C61;
  v3 = 0x4449656C646E7562;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x62614C6D72616C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701080941;
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

uint64_t sub_1BBBC69A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBBC8FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBBC69DC(uint64_t a1)
{
  v2 = sub_1BBBC7E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC6A18(uint64_t a1)
{
  v2 = sub_1BBBC7E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AlarmPresentationState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6E8, &qword_1BBBF70C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC7E80();
  sub_1BBBF58A4();
  v23[15] = 0;
  sub_1BBBF5284();
  sub_1BBBC3BB4(&qword_1EDD45658, MEMORY[0x1E69695A8]);
  sub_1BBBF5774();
  if (!v2)
  {
    v11 = type metadata accessor for AlarmPresentationState(0);
    v12 = v11[5];
    v23[14] = 1;
    type metadata accessor for AlarmPresentationState.Mode(0);
    sub_1BBBC3BB4(&qword_1EDD45610, type metadata accessor for AlarmPresentationState.Mode);
    sub_1BBBF5774();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v23[13] = 2;
    sub_1BBBF5704();
    v16 = (v3 + v11[7]);
    v17 = *v16;
    v18 = v16[1];
    v23[12] = 3;
    sub_1BBBF5704();
    v19 = (v3 + v11[8]);
    v20 = *v19;
    v21 = v19[1];
    v23[11] = 4;
    sub_1BBBF5704();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AlarmPresentationState.hash(into:)()
{
  v1 = v0;
  sub_1BBBF5284();
  sub_1BBBC3BB4(&qword_1EBC9B310, MEMORY[0x1E69695A8]);
  sub_1BBBF53C4();
  v2 = type metadata accessor for AlarmPresentationState(0);
  v3 = v0 + v2[5];
  AlarmPresentationState.Mode.hash(into:)();
  v4 = (v1 + v2[6]);
  if (v4[1])
  {
    v5 = *v4;
    sub_1BBBF5864();
    sub_1BBBF5414();
  }

  else
  {
    sub_1BBBF5864();
  }

  v6 = (v1 + v2[7]);
  if (v6[1])
  {
    v7 = *v6;
    sub_1BBBF5864();
    sub_1BBBF5414();
  }

  else
  {
    sub_1BBBF5864();
  }

  v8 = (v1 + v2[8]);
  if (!v8[1])
  {
    return sub_1BBBF5864();
  }

  v9 = *v8;
  sub_1BBBF5864();

  return sub_1BBBF5414();
}

uint64_t sub_1BBBC6E7C(void (*a1)(_BYTE *))
{
  sub_1BBBF5844();
  a1(v3);
  return sub_1BBBF5884();
}

uint64_t AlarmPresentationState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v38 = type metadata accessor for AlarmPresentationState.Mode(0);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BBBF5284();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A6F0, &qword_1BBBF70D0);
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for AlarmPresentationState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC7E80();
  v42 = v12;
  v18 = v43;
  sub_1BBBF5894();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v13;
  v43 = v16;
  v19 = v37;
  v48 = 0;
  sub_1BBBC3BB4(&qword_1EDD45BC0, MEMORY[0x1E69695A8]);
  sub_1BBBF56C4();
  v20 = *(v19 + 32);
  v21 = v43;
  v39 = v6;
  v20();
  v47 = 1;
  sub_1BBBC3BB4(&qword_1EDD459A0, type metadata accessor for AlarmPresentationState.Mode);
  sub_1BBBF56C4();
  v22 = v35;
  sub_1BBBC7C34(v5, v21 + v35[5], type metadata accessor for AlarmPresentationState.Mode);
  v46 = 2;
  v23 = sub_1BBBF5654();
  v24 = (v21 + v22[6]);
  *v24 = v23;
  v24[1] = v25;
  v45 = 3;
  v26 = sub_1BBBF5654();
  v27 = (v21 + v22[7]);
  *v27 = v26;
  v27[1] = v28;
  v44 = 4;
  v29 = sub_1BBBF5654();
  v30 = (v21 + v22[8]);
  v32 = v31;
  (*(v40 + 8))(v42, v41);
  *v30 = v29;
  v30[1] = v32;
  sub_1BBBC79D4(v21, v36, type metadata accessor for AlarmPresentationState);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BBBC7ED4(v21, type metadata accessor for AlarmPresentationState);
}

uint64_t sub_1BBBC7480(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1BBBF5844();
  a3(v5);
  return sub_1BBBF5884();
}

uint64_t sub_1BBBC74E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1BBBF5844();
  a4(v6);
  return sub_1BBBF5884();
}

unint64_t sub_1BBBC752C()
{
  result = qword_1EDD45BA0;
  if (!qword_1EDD45BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45BA0);
  }

  return result;
}

uint64_t _s8AlarmKit0A17PresentationStateV4ModeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for AlarmPresentationState.Mode.Countdown(0);
  v4 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for AlarmPresentationState.Mode(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v30 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v30 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A760, &qword_1BBBF7DD8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v30 - v20;
  v22 = (&v30 + *(v19 + 56) - v20);
  sub_1BBBC79D4(a1, &v30 - v20, type metadata accessor for AlarmPresentationState.Mode);
  sub_1BBBC79D4(a2, v22, type metadata accessor for AlarmPresentationState.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1BBBC79D4(v21, v16, type metadata accessor for AlarmPresentationState.Mode);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_22;
    }

    v29 = *v16 == *v22 && v16[1] == *(v22 + 1);
LABEL_20:
    sub_1BBBC7ED4(v21, type metadata accessor for AlarmPresentationState.Mode);
    return v29;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BBBC79D4(v21, v11, type metadata accessor for AlarmPresentationState.Mode);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_22;
    }

    v29 = v11[1] == v22[1] && *v11 == *v22;
    goto LABEL_20;
  }

  sub_1BBBC79D4(v21, v14, type metadata accessor for AlarmPresentationState.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BBBC7C34(v22, v6, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    if (*v14 == *v6 && v14[1] == v6[1] && (v24 = *(v31 + 24), (sub_1BBBF5244() & 1) != 0))
    {
      v25 = *(v31 + 28);
      v26 = sub_1BBBF5244();
      sub_1BBBC7ED4(v6, type metadata accessor for AlarmPresentationState.Mode.Countdown);
      if (v26)
      {
        sub_1BBBC7ED4(v14, type metadata accessor for AlarmPresentationState.Mode.Countdown);
        sub_1BBBC7ED4(v21, type metadata accessor for AlarmPresentationState.Mode);
        return 1;
      }
    }

    else
    {
      sub_1BBBC7ED4(v6, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    }

    sub_1BBBC7ED4(v14, type metadata accessor for AlarmPresentationState.Mode.Countdown);
    sub_1BBBC7ED4(v21, type metadata accessor for AlarmPresentationState.Mode);
    return 0;
  }

  sub_1BBBC7ED4(v14, type metadata accessor for AlarmPresentationState.Mode.Countdown);
LABEL_22:
  sub_1BBBC9180(v21);
  return 0;
}

unint64_t sub_1BBBC7980()
{
  result = qword_1EDD45A38;
  if (!qword_1EDD45A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A38);
  }

  return result;
}

uint64_t sub_1BBBC79D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBC7A3C()
{
  result = qword_1EBC9A6B0;
  if (!qword_1EBC9A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A6B0);
  }

  return result;
}

unint64_t sub_1BBBC7A90()
{
  result = qword_1EBC9A6B8;
  if (!qword_1EBC9A6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A6B8);
  }

  return result;
}

unint64_t sub_1BBBC7AE4()
{
  result = qword_1EDD459F8;
  if (!qword_1EDD459F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459F8);
  }

  return result;
}

unint64_t sub_1BBBC7B38()
{
  result = qword_1EDD45A20;
  if (!qword_1EDD45A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A20);
  }

  return result;
}

unint64_t sub_1BBBC7B8C()
{
  result = qword_1EDD45620;
  if (!qword_1EDD45620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45620);
  }

  return result;
}

unint64_t sub_1BBBC7BE0()
{
  result = qword_1EBC9A6E0;
  if (!qword_1EBC9A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A6E0);
  }

  return result;
}

uint64_t sub_1BBBC7C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBC7C9C()
{
  result = qword_1EDD459C8;
  if (!qword_1EDD459C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459C8);
  }

  return result;
}

uint64_t sub_1BBBC7CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmPresentationState.Mode(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s8AlarmKit0A17PresentationStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BBBF5264() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AlarmPresentationState(0);
  if ((_s8AlarmKit0A17PresentationStateV4ModeO2eeoiySbAE_AEtFZ_0(a1 + v4[5], a2 + v4[5]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
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

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1BBBF57A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_1BBBF57A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v4[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (v21 && (*v18 == *v20 && v19 == v21 || (sub_1BBBF57A4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v21)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1BBBC7E80()
{
  result = qword_1EDD45A50;
  if (!qword_1EDD45A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A50);
  }

  return result;
}

uint64_t sub_1BBBC7ED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BBBC7F80()
{
  result = qword_1EBC9A700;
  if (!qword_1EBC9A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A700);
  }

  return result;
}

unint64_t sub_1BBBC7FD8()
{
  result = qword_1EBC9A708;
  if (!qword_1EBC9A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A708);
  }

  return result;
}

void sub_1BBBC80E4()
{
  sub_1BBBF5284();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState.Mode(319);
    if (v1 <= 0x3F)
    {
      sub_1BBBC8188();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBBC8188()
{
  if (!qword_1EDD45D30[0])
  {
    v0 = sub_1BBBF5574();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD45D30);
    }
  }
}

uint64_t sub_1BBBC8228()
{
  result = type metadata accessor for AlarmPresentationState.Mode.Countdown(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BBBC82C4()
{
  result = sub_1BBBF5254();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AlarmPresentationState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmPresentationState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmManager.AlarmError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AlarmManager.AlarmError(_WORD *result, int a2, int a3)
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

unint64_t sub_1BBBC8608()
{
  result = qword_1EBC9A710;
  if (!qword_1EBC9A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A710);
  }

  return result;
}

unint64_t sub_1BBBC8660()
{
  result = qword_1EBC9A718;
  if (!qword_1EBC9A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A718);
  }

  return result;
}

unint64_t sub_1BBBC86B8()
{
  result = qword_1EBC9A720;
  if (!qword_1EBC9A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A720);
  }

  return result;
}

unint64_t sub_1BBBC8710()
{
  result = qword_1EBC9A728;
  if (!qword_1EBC9A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A728);
  }

  return result;
}

unint64_t sub_1BBBC8768()
{
  result = qword_1EBC9A730;
  if (!qword_1EBC9A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A730);
  }

  return result;
}

unint64_t sub_1BBBC87C0()
{
  result = qword_1EBC9A738;
  if (!qword_1EBC9A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A738);
  }

  return result;
}

unint64_t sub_1BBBC8818()
{
  result = qword_1EBC9A740;
  if (!qword_1EBC9A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A740);
  }

  return result;
}

unint64_t sub_1BBBC8870()
{
  result = qword_1EBC9A748;
  if (!qword_1EBC9A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A748);
  }

  return result;
}

unint64_t sub_1BBBC88C8()
{
  result = qword_1EDD45A40;
  if (!qword_1EDD45A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A40);
  }

  return result;
}

unint64_t sub_1BBBC8920()
{
  result = qword_1EDD45A48;
  if (!qword_1EDD45A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A48);
  }

  return result;
}

unint64_t sub_1BBBC8978()
{
  result = qword_1EDD45A10;
  if (!qword_1EDD45A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A10);
  }

  return result;
}

unint64_t sub_1BBBC89D0()
{
  result = qword_1EDD45A18;
  if (!qword_1EDD45A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A18);
  }

  return result;
}

unint64_t sub_1BBBC8A28()
{
  result = qword_1EDD459E8;
  if (!qword_1EDD459E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459E8);
  }

  return result;
}

unint64_t sub_1BBBC8A80()
{
  result = qword_1EDD459F0;
  if (!qword_1EDD459F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459F0);
  }

  return result;
}

unint64_t sub_1BBBC8AD8()
{
  result = qword_1EDD45A00;
  if (!qword_1EDD45A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A00);
  }

  return result;
}

unint64_t sub_1BBBC8B30()
{
  result = qword_1EDD45A08;
  if (!qword_1EDD45A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A08);
  }

  return result;
}

unint64_t sub_1BBBC8B88()
{
  result = qword_1EDD45A28;
  if (!qword_1EDD45A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A28);
  }

  return result;
}

unint64_t sub_1BBBC8BE0()
{
  result = qword_1EDD45A30;
  if (!qword_1EDD45A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45A30);
  }

  return result;
}

unint64_t sub_1BBBC8C38()
{
  result = qword_1EDD459D0;
  if (!qword_1EDD459D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459D0);
  }

  return result;
}

unint64_t sub_1BBBC8C90()
{
  result = qword_1EDD459D8;
  if (!qword_1EDD459D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459D8);
  }

  return result;
}

unint64_t sub_1BBBC8CE8()
{
  result = qword_1EBC9A750;
  if (!qword_1EBC9A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A750);
  }

  return result;
}

unint64_t sub_1BBBC8D40()
{
  result = qword_1EBC9A758;
  if (!qword_1EBC9A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A758);
  }

  return result;
}

unint64_t sub_1BBBC8D98()
{
  result = qword_1EDD459B0;
  if (!qword_1EDD459B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459B0);
  }

  return result;
}

unint64_t sub_1BBBC8DF0()
{
  result = qword_1EDD459B8;
  if (!qword_1EDD459B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD459B8);
  }

  return result;
}

uint64_t sub_1BBBC8E44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001BBC00D80 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BBC00DA0 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574614465726966 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1BBBF57A4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BBBC8FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D72616C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BBC00DC0 == a2 || (sub_1BBBF57A4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x62614C6D72616C61 && a2 == 0xEA00000000006C65)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BBBF57A4();

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

uint64_t sub_1BBBC9180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A760, &qword_1BBBF7DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

AlarmKit::Alarm::Schedule::Relative::Time __swiftcall Alarm.Schedule.Relative.Time.init(hour:minute:)(Swift::Int hour, Swift::Int minute)
{
  *v2 = hour;
  v2[1] = minute;
  result.minute = minute;
  result.hour = hour;
  return result;
}

uint64_t sub_1BBBC929C()
{
  if (*v0)
  {
    result = 0x6574756E696DLL;
  }

  else
  {
    result = 1920298856;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBC92CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBC93A4(uint64_t a1)
{
  v2 = sub_1BBBC95A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC93E0(uint64_t a1)
{
  v2 = sub_1BBBC95A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.Schedule.Relative.Time.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A768, &qword_1BBBF7DF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC95A8();
  sub_1BBBF58A4();
  v14 = 0;
  sub_1BBBF5764();
  if (!v2)
  {
    v13 = 1;
    sub_1BBBF5764();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1BBBC95A8()
{
  result = qword_1EDD45BB8;
  if (!qword_1EDD45BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD45BB8);
  }

  return result;
}

uint64_t Alarm.Schedule.Relative.Time.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1BFB17D60](*v0);
  return MEMORY[0x1BFB17D60](v1);
}

uint64_t Alarm.Schedule.Relative.Time.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  MEMORY[0x1BFB17D60](v2);
  return sub_1BBBF5884();
}

uint64_t Alarm.Schedule.Relative.Time.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A770, &qword_1BBBF7DF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBC95A8();
  sub_1BBBF5894();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1BBBF56B4();
    v15 = 1;
    v12 = sub_1BBBF56B4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static Alarm.Schedule.Relative.Recurrence.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      v5 = sub_1BBBC9914(v4, v2);

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1BBBC9914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBBF5294();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1BBBCA3BC(&qword_1EBC9AAB0, MEMORY[0x1E69696F0]);
    v22 = sub_1BBBF53D4();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBBC9B28()
{
  if (*v0)
  {
    result = 0x726576656ELL;
  }

  else
  {
    result = 0x796C6B656577;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBC9B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796C6B656577 && a2 == 0xE600000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726576656ELL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBC9C30(uint64_t a1)
{
  v2 = sub_1BBBCA0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC9C6C(uint64_t a1)
{
  v2 = sub_1BBBCA0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC9CA8(uint64_t a1)
{
  v2 = sub_1BBBCA13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC9CE4(uint64_t a1)
{
  v2 = sub_1BBBCA13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBC9D20(uint64_t a1)
{
  v2 = sub_1BBBCA190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBC9D5C(uint64_t a1)
{
  v2 = sub_1BBBCA190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.Schedule.Relative.Recurrence.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A778, &qword_1BBBF7E00);
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A780, &qword_1BBBF7E08);
  v24 = *(v6 - 8);
  v25 = v6;
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A788, &qword_1BBBF7E10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCA0E8();
  sub_1BBBF58A4();
  if (v15)
  {
    v27 = 0;
    sub_1BBBCA190();
    sub_1BBBF56F4();
    v26 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7A8, &qword_1BBBF7E18);
    sub_1BBBCAAA0(&qword_1EBC9A7B0, &qword_1EBC9A7B8);
    v17 = v25;
    sub_1BBBF5774();
    (*(v24 + 8))(v9, v17);
  }

  else
  {
    v28 = 1;
    sub_1BBBCA13C();
    v19 = v21;
    sub_1BBBF56F4();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1BBBCA0E8()
{
  result = qword_1EBC9A790;
  if (!qword_1EBC9A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A790);
  }

  return result;
}

unint64_t sub_1BBBCA13C()
{
  result = qword_1EBC9A798;
  if (!qword_1EBC9A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A798);
  }

  return result;
}

unint64_t sub_1BBBCA190()
{
  result = qword_1EBC9A7A0;
  if (!qword_1EBC9A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A7A0);
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

uint64_t Alarm.Schedule.Relative.Recurrence.hash(into:)()
{
  v1 = sub_1BBBF5294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (!*v0)
  {
    return MEMORY[0x1BFB17D60](1);
  }

  MEMORY[0x1BFB17D60](0);
  result = MEMORY[0x1BFB17D60](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v11 = *(v2 + 16);
    v9 = v2 + 16;
    v10 = v11;
    v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v1);
      sub_1BBBCA3BC(&qword_1EBC9A7C0, MEMORY[0x1E69696F0]);
      sub_1BBBF53C4();
      result = (*(v9 - 8))(v5, v1);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1BBBCA3BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Alarm.Schedule.Relative.Recurrence.hashValue.getter()
{
  v2 = *v0;
  sub_1BBBF5844();
  Alarm.Schedule.Relative.Recurrence.hash(into:)();
  return sub_1BBBF5884();
}

uint64_t Alarm.Schedule.Relative.Recurrence.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7C8, &qword_1BBBF7E20);
  v38 = *(v36 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7D0, &qword_1BBBF7E28);
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7D8, &unk_1BBBF7E30);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1BBBCA0E8();
  v17 = v40;
  sub_1BBBF5894();
  if (!v17)
  {
    v35 = v6;
    v40 = v11;
    v19 = v38;
    v18 = v39;
    v20 = sub_1BBBF56D4();
    v21 = (2 * *(v20 + 16)) | 1;
    v42 = v20;
    v43 = v20 + 32;
    v44 = 0;
    v45 = v21;
    v22 = sub_1BBBC324C();
    v23 = v10;
    if (v22 == 2 || v44 != v45 >> 1)
    {
      v25 = v14;
      v26 = sub_1BBBF55D4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690) + 48);
      *v28 = &type metadata for Alarm.Schedule.Relative.Recurrence;
      sub_1BBBF5644();
      sub_1BBBF55C4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v40 + 8))(v25, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = v40;
      if (v22)
      {
        LOBYTE(v46) = 1;
        sub_1BBBCA13C();
        sub_1BBBF5634();
        (*(v19 + 8))(v5, v36);
        (*(v24 + 8))(v14, v23);
        swift_unknownObjectRelease();
        *v18 = 0;
      }

      else
      {
        LOBYTE(v46) = 0;
        sub_1BBBCA190();
        v31 = v9;
        sub_1BBBF5634();
        v32 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7A8, &qword_1BBBF7E18);
        sub_1BBBCAAA0(&qword_1EBC9A7E0, &qword_1EBC9A7E8);
        v33 = v35;
        sub_1BBBF56C4();
        (*(v37 + 8))(v31, v33);
        (*(v24 + 8))(v14, v23);
        swift_unknownObjectRelease();
        *v32 = v46;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1BBBCA984(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      v5 = sub_1BBBC9914(v4, v2);

      return v5 & 1;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_1BBBCAA08()
{
  v2 = *v0;
  sub_1BBBF5844();
  Alarm.Schedule.Relative.Recurrence.hash(into:)();
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCAA58()
{
  v2 = *v0;
  sub_1BBBF5844();
  Alarm.Schedule.Relative.Recurrence.hash(into:)();
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCAAA0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC9A7A8, &qword_1BBBF7E18);
    sub_1BBBCA3BC(a2, MEMORY[0x1E69696F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Alarm.Schedule.Relative.repeats.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

__n128 Alarm.Schedule.Relative.time.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 Alarm.Schedule.Relative.time.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

__n128 Alarm.Schedule.Relative.init(time:repeats:)@<Q0>(__n128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a2;
  result = *a1;
  *(a3 + 8) = *a1;
  return result;
}

uint64_t sub_1BBBCABE4()
{
  if (*v0)
  {
    result = 1701669236;
  }

  else
  {
    result = 0x73746165706572;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBCAC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746165706572 && a2 == 0xE700000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBCACF4(uint64_t a1)
{
  v2 = sub_1BBBCEC20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCAD30(uint64_t a1)
{
  v2 = sub_1BBBCEC20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.Schedule.Relative.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A7F0, &qword_1BBBF7E40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEC20();

  sub_1BBBF58A4();
  v15 = v10;
  v17 = 0;
  sub_1BBBCEC74();
  sub_1BBBF5774();

  if (!v2)
  {
    v15 = v14;
    v16 = v13;
    v17 = 1;
    sub_1BBBC4BB4();
    sub_1BBBF5774();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Alarm.Schedule.Relative.hash(into:)()
{
  v1 = sub_1BBBF5294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[2];
  v15 = v0[1];
  v16 = v7;
  if (v6)
  {
    MEMORY[0x1BFB17D60](0);
    MEMORY[0x1BFB17D60](*(v6 + 16));
    v8 = *(v6 + 16);
    if (v8)
    {
      v11 = *(v2 + 16);
      v10 = v2 + 16;
      v9 = v11;
      v12 = v6 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v13 = *(v10 + 56);
      do
      {
        v9(v5, v12, v1);
        sub_1BBBCA3BC(&qword_1EBC9A7C0, MEMORY[0x1E69696F0]);
        sub_1BBBF53C4();
        (*(v10 - 8))(v5, v1);
        v12 += v13;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    MEMORY[0x1BFB17D60](1);
  }

  MEMORY[0x1BFB17D60](v15);
  return MEMORY[0x1BFB17D60](v16);
}

uint64_t Alarm.Schedule.Relative.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1BBBF5844();
  Alarm.Schedule.Relative.hash(into:)();
  return sub_1BBBF5884();
}

uint64_t Alarm.Schedule.Relative.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A808, &qword_1BBBF7E48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEC20();
  sub_1BBBF5894();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_1BBBCECC8();
  sub_1BBBF56C4();
  v11 = v14;
  v15 = 1;
  sub_1BBBC752C();
  sub_1BBBF56C4();
  (*(v6 + 8))(v9, v5);
  v12 = v14;
  *a2 = v11;
  *(a2 + 8) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBCB348()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1BBBF5844();
  Alarm.Schedule.Relative.hash(into:)();
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCB3A0()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_1BBBF5844();
  Alarm.Schedule.Relative.hash(into:)();
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCB3F4()
{
  if (*v0)
  {
    result = 0x65766974616C6572;
  }

  else
  {
    result = 0x6465786966;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBCB42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465786966 && a2 == 0xE500000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBCB504(uint64_t a1)
{
  v2 = sub_1BBBCED3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCB540(uint64_t a1)
{
  v2 = sub_1BBBCED3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCB57C(uint64_t a1)
{
  v2 = sub_1BBBCEE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCB5B8(uint64_t a1)
{
  v2 = sub_1BBBCEE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCB5F4(uint64_t a1)
{
  v2 = sub_1BBBCED90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCB630(uint64_t a1)
{
  v2 = sub_1BBBCED90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.Schedule.encode(to:)(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A818, &qword_1BBBF7E50);
  v34 = *(v36 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v31 = &v30 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A820, &qword_1BBBF7E58);
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v30 - v5;
  v32 = sub_1BBBF5254();
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Alarm.Schedule(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A828, &qword_1BBBF7E60);
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v30 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCED3C();
  sub_1BBBF58A4();
  sub_1BBBCF3E0(v37, v13, type metadata accessor for Alarm.Schedule);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v13;
    v20 = v13[1];
    v21 = v13[2];
    LOBYTE(v39) = 1;
    sub_1BBBCED90();
    v22 = v31;
    v23 = v38;
    sub_1BBBF56F4();
    v39 = v19;
    v40 = v20;
    v41 = v21;
    sub_1BBBCEDE4();
    v24 = v36;
    sub_1BBBF5774();
    (*(v34 + 8))(v22, v24);
    (*(v14 + 8))(v17, v23);
  }

  else
  {
    v26 = v30;
    v27 = v32;
    (*(v30 + 32))(v9, v13, v32);
    LOBYTE(v39) = 0;
    sub_1BBBCEE38();
    v28 = v38;
    sub_1BBBF56F4();
    sub_1BBBCA3BC(&qword_1EDD45660, MEMORY[0x1E6969530]);
    v29 = v35;
    sub_1BBBF5774();
    (*(v33 + 8))(v6, v29);
    (*(v26 + 8))(v9, v27);
    return (*(v14 + 8))(v17, v28);
  }
}

uint64_t Alarm.Schedule.hash(into:)()
{
  v1 = sub_1BBBF5294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BBBF5254();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Alarm.Schedule(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BBBCF3E0(v0, v14, type metadata accessor for Alarm.Schedule);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    MEMORY[0x1BFB17D60](1);
    if (v15)
    {
      MEMORY[0x1BFB17D60](0);
      MEMORY[0x1BFB17D60](*(v15 + 16));
      v18 = *(v15 + 16);
      if (v18)
      {
        v26 = v16;
        v27 = v15;
        v28 = v17;
        v21 = *(v2 + 16);
        v20 = v2 + 16;
        v19 = v21;
        v22 = v15 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
        v23 = *(v20 + 56);
        do
        {
          v19(v5, v22, v1);
          sub_1BBBCA3BC(&qword_1EBC9A7C0, MEMORY[0x1E69696F0]);
          sub_1BBBF53C4();
          (*(v20 - 8))(v5, v1);
          v22 += v23;
          --v18;
        }

        while (v18);
        v17 = v28;
        v16 = v26;
      }
    }

    else
    {
      MEMORY[0x1BFB17D60](1);
    }

    MEMORY[0x1BFB17D60](v16);
    MEMORY[0x1BFB17D60](v17);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    MEMORY[0x1BFB17D60](0);
    sub_1BBBCA3BC(&qword_1EBC9A658, MEMORY[0x1E6969530]);
    sub_1BBBF53C4();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t Alarm.Schedule.hashValue.getter()
{
  sub_1BBBF5844();
  Alarm.Schedule.hash(into:)();
  return sub_1BBBF5884();
}

uint64_t Alarm.Schedule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A850, &qword_1BBBF7E68);
  v50 = *(v48 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v53 = &v45 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A858, &qword_1BBBF7E70);
  v49 = *(v51 - 8);
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v45 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A860, &qword_1BBBF7E78);
  v55 = *(v52 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v45 - v9;
  v11 = type metadata accessor for Alarm.Schedule(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1BBBCED3C();
  v23 = v56;
  sub_1BBBF5894();
  if (!v23)
  {
    v46 = v15;
    v47 = v20;
    v56 = v18;
    v25 = v53;
    v24 = v54;
    v26 = v52;
    v27 = sub_1BBBF56D4();
    v28 = (2 * *(v27 + 16)) | 1;
    v59 = v27;
    v60 = v27 + 32;
    v61 = 0;
    v62 = v28;
    v29 = sub_1BBBC324C();
    if (v29 == 2 || v61 != v62 >> 1)
    {
      v35 = sub_1BBBF55D4();
      swift_allocError();
      v37 = v36;
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690) + 48);
      *v37 = v11;
      sub_1BBBF5644();
      sub_1BBBF55C4();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v55 + 8))(v10, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        LOBYTE(v57) = 1;
        sub_1BBBCED90();
        sub_1BBBF5634();
        v30 = v24;
        sub_1BBBCEE8C();
        v31 = v48;
        sub_1BBBF56C4();
        (*(v50 + 8))(v25, v31);
        (*(v55 + 8))(v10, v26);
        swift_unknownObjectRelease();
        v32 = v58;
        v33 = v46;
        *v46 = v57;
        *(v33 + 2) = v32;
        swift_storeEnumTagMultiPayload();
        v34 = v33;
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_1BBBCEE38();
        v40 = v7;
        sub_1BBBF5634();
        v30 = v24;
        sub_1BBBF5254();
        sub_1BBBCA3BC(&qword_1EDD45BC8, MEMORY[0x1E6969530]);
        v41 = v56;
        v42 = v51;
        sub_1BBBF56C4();
        v43 = v55;
        (*(v49 + 8))(v40, v42);
        (*(v43 + 8))(v10, v26);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v34 = v41;
      }

      v44 = v47;
      sub_1BBBCEEE0(v34, v47);
      sub_1BBBCEEE0(v44, v30);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1BBBCC510()
{
  sub_1BBBF5844();
  Alarm.Schedule.hash(into:)();
  return sub_1BBBF5884();
}

uint64_t sub_1BBBCC554()
{
  sub_1BBBF5844();
  Alarm.Schedule.hash(into:)();
  return sub_1BBBF5884();
}

uint64_t Alarm.CountdownDuration.preAlert.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Alarm.CountdownDuration.preAlert.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t Alarm.CountdownDuration.postAlert.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Alarm.CountdownDuration.postAlert.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_1BBBCC628()
{
  if (*v0)
  {
    result = 0x72656C4174736F70;
  }

  else
  {
    result = 0x7472656C41657270;
  }

  *v0;
  return result;
}

uint64_t sub_1BBBCC668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472656C41657270 && a2 == 0xE800000000000000;
  if (v6 || (sub_1BBBF57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656C4174736F70 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBBF57A4();

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

uint64_t sub_1BBBCC74C(uint64_t a1)
{
  v2 = sub_1BBBCEF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCC788(uint64_t a1)
{
  v2 = sub_1BBBCEF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.CountdownDuration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A870, &qword_1BBBF7E80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13[0] = v1[2];
  v14 = *(v1 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEF44();
  sub_1BBBF58A4();
  v16 = 0;
  v11 = v13[1];
  sub_1BBBF5714();
  if (!v11)
  {
    v15 = 1;
    sub_1BBBF5714();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Alarm.CountdownDuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A880, &qword_1BBBF7E88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEF44();
  sub_1BBBF5894();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_1BBBF5664();
    v19 = v12;
    v13 = v11;
    v20 = 1;
    v15 = sub_1BBBF5664();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
    *(a2 + 8) = v19 & 1;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBBCCB70(uint64_t a1)
{
  v2 = sub_1BBBCEFEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCBAC(uint64_t a1)
{
  v2 = sub_1BBBCEFEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCCBE8()
{
  v1 = 0x656C756465686373;
  v2 = 0x646573756170;
  if (*v0 != 2)
  {
    v2 = 0x676E697472656C61;
  }

  if (*v0)
  {
    v1 = 0x776F64746E756F63;
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

uint64_t sub_1BBBCCC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBBD0924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBBCCC8C(uint64_t a1)
{
  v2 = sub_1BBBCEF98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCCC8(uint64_t a1)
{
  v2 = sub_1BBBCEF98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCCD04(uint64_t a1)
{
  v2 = sub_1BBBCF094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCD40(uint64_t a1)
{
  v2 = sub_1BBBCF094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCCD7C(uint64_t a1)
{
  v2 = sub_1BBBCF040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCDB8(uint64_t a1)
{
  v2 = sub_1BBBCF040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBBCCDF4(uint64_t a1)
{
  v2 = sub_1BBBCF0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCCE30(uint64_t a1)
{
  v2 = sub_1BBBCF0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A888, &qword_1BBBF7E90);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A890, &qword_1BBBF7E98);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A898, &qword_1BBBF7EA0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8A0, &qword_1BBBF7EA8);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8A8, &qword_1BBBF7EB0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCEF98();
  sub_1BBBF58A4();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1BBBCF040();
      v24 = v33;
      sub_1BBBF56F4();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1BBBCEFEC();
      v24 = v36;
      sub_1BBBF56F4();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1BBBCF094();
    v24 = v30;
    sub_1BBBF56F4();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1BBBCF0E8();
  sub_1BBBF56F4();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t Alarm.State.hashValue.getter()
{
  v1 = *v0;
  sub_1BBBF5844();
  MEMORY[0x1BFB17D60](v1);
  return sub_1BBBF5884();
}

uint64_t Alarm.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8D8, &qword_1BBBF7EB8);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8E0, &qword_1BBBF7EC0);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8E8, &qword_1BBBF7EC8);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8F0, &qword_1BBBF7ED0);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A8F8, &qword_1BBBF7ED8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1BBBCEF98();
  v21 = v53;
  sub_1BBBF5894();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1BBBF56D4();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1BBBBEB98();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1BBBF55D4();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A5C0, &qword_1BBBF6690) + 48);
      *v34 = &type metadata for Alarm.State;
      sub_1BBBF5644();
      sub_1BBBF55C4();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1BBBCF094();
        v39 = v42;
        sub_1BBBF5634();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1BBBCF0E8();
        v31 = v42;
        sub_1BBBF5634();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1BBBCF040();
      v38 = v42;
      sub_1BBBF5634();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1BBBCEFEC();
      v40 = v42;
      sub_1BBBF5634();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t Alarm.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Alarm.id.setter(uint64_t a1)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Alarm.schedule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Alarm(0) + 20);

  return sub_1BBBCF15C(v3, a1);
}

uint64_t Alarm.schedule.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Alarm(0) + 20);

  return sub_1BBBCF1CC(a1, v3);
}

__n128 Alarm.countdownDuration.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Alarm(0) + 24));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  v6 = v3[1].n128_u8[9];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  a1[1].n128_u8[9] = v6;
  return result;
}

__n128 Alarm.countdownDuration.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  v5 = (v1 + *(type metadata accessor for Alarm(0) + 24));
  result = v7;
  *v5 = v7;
  v5[1].n128_u64[0] = v2;
  v5[1].n128_u8[8] = v3;
  v5[1].n128_u8[9] = v4;
  return result;
}

uint64_t Alarm.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Alarm(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Alarm.state.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Alarm(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

__n128 Alarm.init(id:schedule:countdownDuration:state:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *a3;
  v8 = a3[1].n128_u64[0];
  v9 = a3[1].n128_u8[8];
  v10 = a3[1].n128_u8[9];
  v11 = *a4;
  v12 = type metadata accessor for Alarm(0);
  v13 = v12[5];
  v14 = type metadata accessor for Alarm.Schedule(0);
  (*(*(v14 - 8) + 56))(a5 + v13, 1, 1, v14);
  v15 = a5 + v12[6];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 256;
  v16 = sub_1BBBF5284();
  (*(*(v16 - 8) + 32))(a5, a1, v16);
  sub_1BBBCF1CC(a2, a5 + v13);
  result = v18;
  *v15 = v18;
  *(v15 + 16) = v8;
  *(v15 + 24) = v9;
  *(v15 + 25) = v10;
  *(a5 + v12[7]) = v11;
  return result;
}

unint64_t sub_1BBBCDE40()
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x656C756465686373;
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

uint64_t sub_1BBBCDEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBBD0A90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBBCDED8(uint64_t a1)
{
  v2 = sub_1BBBCF23C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBBCDF14(uint64_t a1)
{
  v2 = sub_1BBBCF23C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Alarm.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A908, &qword_1BBBF7EE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCF23C();
  sub_1BBBF58A4();
  LOBYTE(v20) = 0;
  sub_1BBBF5284();
  sub_1BBBCA3BC(&qword_1EDD45658, MEMORY[0x1E69695A8]);
  sub_1BBBF5774();
  if (!v2)
  {
    v11 = type metadata accessor for Alarm(0);
    v12 = v11[5];
    LOBYTE(v20) = 1;
    type metadata accessor for Alarm.Schedule(0);
    sub_1BBBCA3BC(&qword_1EBC9A918, type metadata accessor for Alarm.Schedule);
    sub_1BBBF5724();
    v13 = (v3 + v11[6]);
    v14 = *(v13 + 2);
    v15 = *(v13 + 24);
    v16 = *(v13 + 25);
    v20 = *v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    v19 = 2;
    sub_1BBBCF290();
    sub_1BBBF5724();
    LOBYTE(v20) = *(v3 + v11[7]);
    v19 = 3;
    sub_1BBBCF2E4();
    sub_1BBBF5774();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Alarm.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v32 - v5;
  v6 = sub_1BBBF5284();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A930, &qword_1BBBF7EF0);
  v35 = *(v38 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Alarm(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 20);
  v18 = type metadata accessor for Alarm.Schedule(0);
  v19 = *(*(v18 - 8) + 56);
  v41 = v17;
  v19(&v16[v17], 1, 1, v18);
  v20 = *(v12 + 24);
  v40 = v16;
  v21 = &v16[v20];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  *(v21 + 12) = 256;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBBCF23C();
  v37 = v11;
  v23 = v39;
  sub_1BBBF5894();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBBC22E0(&v40[v41], &qword_1EBC9A900, &qword_1BBBF7EE0);
  }

  else
  {
    v24 = v34;
    v39 = a1;
    LOBYTE(v42) = 0;
    sub_1BBBCA3BC(&qword_1EDD45BC0, MEMORY[0x1E69695A8]);
    sub_1BBBF56C4();
    v25 = v40;
    (*(v24 + 32))(v40, v36, v6);
    LOBYTE(v42) = 1;
    sub_1BBBCA3BC(&qword_1EBC9A938, type metadata accessor for Alarm.Schedule);
    v26 = v33;
    sub_1BBBF5674();
    sub_1BBBCF1CC(v26, v25 + v41);
    v46 = 2;
    sub_1BBBCF338();
    sub_1BBBF5674();
    v27 = v35;
    v28 = v43;
    v29 = v44;
    v30 = v45;
    *v21 = v42;
    *(v21 + 2) = v28;
    v21[24] = v29;
    v21[25] = v30;
    v46 = 3;
    sub_1BBBCF38C();
    sub_1BBBF56C4();
    (*(v27 + 8))(v37, v38);
    *(v25 + *(v12 + 28)) = v42;
    sub_1BBBCF3E0(v25, v32, type metadata accessor for Alarm);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_1BBBD0BF0(v25, type metadata accessor for Alarm);
  }
}

uint64_t _s8AlarmKit0A20XPCServiceParametersO0A19IDOwnerIDActionTypeV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BBBF5284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL _s8AlarmKit0A0V17CountdownDurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

uint64_t _s8AlarmKit0A0V8ScheduleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  *&v26 = sub_1BBBF5254();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Alarm.Schedule(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9AAA8, &qword_1BBBF9318);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v26 - v18;
  v20 = &v26 + *(v17 + 56) - v18;
  sub_1BBBCF3E0(a1, &v26 - v18, type metadata accessor for Alarm.Schedule);
  sub_1BBBCF3E0(a2, v20, type metadata accessor for Alarm.Schedule);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BBBCF3E0(v19, v12, type metadata accessor for Alarm.Schedule);
    v21 = *v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *(v20 + 2);
      v29 = v21;
      v30 = *(v12 + 8);
      v26 = *v20;
      v27 = v26;
      v22 = _s8AlarmKit0A0V8ScheduleO8RelativeV2eeoiySbAG_AGtFZ_0(&v29, &v27);

LABEL_9:
      sub_1BBBD0BF0(v19, type metadata accessor for Alarm.Schedule);
      return v22 & 1;
    }
  }

  else
  {
    sub_1BBBCF3E0(v19, v14, type metadata accessor for Alarm.Schedule);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = v26;
      (*(v4 + 32))(v7, v20, v26);
      v22 = sub_1BBBF5244();
      v24 = *(v4 + 8);
      v24(v7, v23);
      v24(v14, v23);
      goto LABEL_9;
    }

    (*(v4 + 8))(v14, v26);
  }

  sub_1BBBC22E0(v19, &qword_1EBC9AAA8, &qword_1BBBF9318);
  v22 = 0;
  return v22 & 1;
}

BOOL _s8AlarmKit0A0V8ScheduleO8RelativeV2eeoiySbAG_AGtFZ_0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if (*a1)
  {
    if (!v4)
    {

      return 0;
    }

    v7 = *a2;

    v9 = sub_1BBBC9914(v8, v4);

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v4)
    {
      return 0;
    }
  }

  return v2 == v5 && v3 == v6;
}

unint64_t sub_1BBBCEC20()
{
  result = qword_1EBC9A7F8;
  if (!qword_1EBC9A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A7F8);
  }

  return result;
}

unint64_t sub_1BBBCEC74()
{
  result = qword_1EBC9A800;
  if (!qword_1EBC9A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A800);
  }

  return result;
}

unint64_t sub_1BBBCECC8()
{
  result = qword_1EBC9A810;
  if (!qword_1EBC9A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A810);
  }

  return result;
}

unint64_t sub_1BBBCED3C()
{
  result = qword_1EBC9A830;
  if (!qword_1EBC9A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A830);
  }

  return result;
}

unint64_t sub_1BBBCED90()
{
  result = qword_1EBC9A838;
  if (!qword_1EBC9A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A838);
  }

  return result;
}

unint64_t sub_1BBBCEDE4()
{
  result = qword_1EBC9A840;
  if (!qword_1EBC9A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A840);
  }

  return result;
}

unint64_t sub_1BBBCEE38()
{
  result = qword_1EBC9A848;
  if (!qword_1EBC9A848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A848);
  }

  return result;
}

unint64_t sub_1BBBCEE8C()
{
  result = qword_1EBC9A868;
  if (!qword_1EBC9A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A868);
  }

  return result;
}

uint64_t sub_1BBBCEEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm.Schedule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBBCEF44()
{
  result = qword_1EBC9A878;
  if (!qword_1EBC9A878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A878);
  }

  return result;
}

unint64_t sub_1BBBCEF98()
{
  result = qword_1EBC9A8B0;
  if (!qword_1EBC9A8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8B0);
  }

  return result;
}

unint64_t sub_1BBBCEFEC()
{
  result = qword_1EBC9A8B8;
  if (!qword_1EBC9A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8B8);
  }

  return result;
}

unint64_t sub_1BBBCF040()
{
  result = qword_1EBC9A8C0;
  if (!qword_1EBC9A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8C0);
  }

  return result;
}

unint64_t sub_1BBBCF094()
{
  result = qword_1EBC9A8C8;
  if (!qword_1EBC9A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8C8);
  }

  return result;
}

unint64_t sub_1BBBCF0E8()
{
  result = qword_1EBC9A8D0;
  if (!qword_1EBC9A8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A8D0);
  }

  return result;
}

uint64_t sub_1BBBCF15C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBBCF1CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC9A900, &qword_1BBBF7EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBBCF23C()
{
  result = qword_1EBC9A910;
  if (!qword_1EBC9A910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A910);
  }

  return result;
}

unint64_t sub_1BBBCF290()
{
  result = qword_1EBC9A920;
  if (!qword_1EBC9A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A920);
  }

  return result;
}

unint64_t sub_1BBBCF2E4()
{
  result = qword_1EBC9A928;
  if (!qword_1EBC9A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A928);
  }

  return result;
}

unint64_t sub_1BBBCF338()
{
  result = qword_1EBC9A940;
  if (!qword_1EBC9A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A940);
  }

  return result;
}

unint64_t sub_1BBBCF38C()
{
  result = qword_1EBC9A948;
  if (!qword_1EBC9A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A948);
  }

  return result;
}

uint64_t sub_1BBBCF3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBBCF44C()
{
  result = qword_1EBC9A950;
  if (!qword_1EBC9A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A950);
  }

  return result;
}

unint64_t sub_1BBBCF4A4()
{
  result = qword_1EBC9A958;
  if (!qword_1EBC9A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A958);
  }

  return result;
}

unint64_t sub_1BBBCF4FC()
{
  result = qword_1EBC9A960;
  if (!qword_1EBC9A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A960);
  }

  return result;
}

unint64_t sub_1BBBCF59C()
{
  result = qword_1EBC9A970;
  if (!qword_1EBC9A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A970);
  }

  return result;
}

void sub_1BBBCF660()
{
  sub_1BBBF5284();
  if (v0 <= 0x3F)
  {
    sub_1BBBCF704();
    if (v1 <= 0x3F)
    {
      sub_1BBBCF75C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBBCF704()
{
  if (!qword_1EDD45CE8[0])
  {
    type metadata accessor for Alarm.Schedule(255);
    v0 = sub_1BBBF5574();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD45CE8);
    }
  }
}

void sub_1BBBCF75C()
{
  if (!qword_1EDD45D28)
  {
    v0 = sub_1BBBF5574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD45D28);
    }
  }
}

uint64_t sub_1BBBCF7AC()
{
  result = sub_1BBBF5254();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BBBCF828(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1BBBCF884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1BBBCF904(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBBCF954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1BBBCF9A8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1BBBCF9C0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BBBCFA04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBBCFA24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1BBBCFB68()
{
  result = qword_1EBC9A978;
  if (!qword_1EBC9A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A978);
  }

  return result;
}

unint64_t sub_1BBBCFBC0()
{
  result = qword_1EBC9A980;
  if (!qword_1EBC9A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A980);
  }

  return result;
}

unint64_t sub_1BBBCFC18()
{
  result = qword_1EBC9A988;
  if (!qword_1EBC9A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A988);
  }

  return result;
}

unint64_t sub_1BBBCFC70()
{
  result = qword_1EBC9A990;
  if (!qword_1EBC9A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A990);
  }

  return result;
}

unint64_t sub_1BBBCFCC8()
{
  result = qword_1EBC9A998;
  if (!qword_1EBC9A998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A998);
  }

  return result;
}

unint64_t sub_1BBBCFD20()
{
  result = qword_1EBC9A9A0;
  if (!qword_1EBC9A9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9A0);
  }

  return result;
}

unint64_t sub_1BBBCFD78()
{
  result = qword_1EBC9A9A8;
  if (!qword_1EBC9A9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9A8);
  }

  return result;
}

unint64_t sub_1BBBCFDD0()
{
  result = qword_1EBC9A9B0;
  if (!qword_1EBC9A9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9B0);
  }

  return result;
}

unint64_t sub_1BBBCFE28()
{
  result = qword_1EBC9A9B8;
  if (!qword_1EBC9A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9B8);
  }

  return result;
}

unint64_t sub_1BBBCFE80()
{
  result = qword_1EBC9A9C0;
  if (!qword_1EBC9A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9C0);
  }

  return result;
}

unint64_t sub_1BBBCFED8()
{
  result = qword_1EBC9A9C8;
  if (!qword_1EBC9A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9C8);
  }

  return result;
}

unint64_t sub_1BBBCFF30()
{
  result = qword_1EBC9A9D0;
  if (!qword_1EBC9A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC9A9D0);
  }

  return result;
}
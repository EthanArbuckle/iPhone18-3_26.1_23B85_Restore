uint64_t sub_29D6CA178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6CA244()
{
  result = sub_29D9346E8();
  if (v1 <= 0x3F)
  {
    result = sub_29D9336F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29D6CA2E0()
{
  result = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29D6CA350()
{
  result = qword_2A17B1C50;
  if (!qword_2A17B1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C50);
  }

  return result;
}

unint64_t sub_29D6CA3A8()
{
  result = qword_2A17B1C58;
  if (!qword_2A17B1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C58);
  }

  return result;
}

unint64_t sub_29D6CA400()
{
  result = qword_2A17B1C60;
  if (!qword_2A17B1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C60);
  }

  return result;
}

unint64_t sub_29D6CA454()
{
  result = qword_2A17B1C70;
  if (!qword_2A17B1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C70);
  }

  return result;
}

unint64_t sub_29D6CA4A8()
{
  result = qword_2A17B1C80;
  if (!qword_2A17B1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C80);
  }

  return result;
}

unint64_t sub_29D6CA4FC()
{
  result = qword_2A17B1C90;
  if (!qword_2A17B1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1C90);
  }

  return result;
}

unint64_t sub_29D6CA550()
{
  result = qword_2A17B1CA0;
  if (!qword_2A17B1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CA0);
  }

  return result;
}

unint64_t sub_29D6CA5A4()
{
  result = qword_2A17B1CB0;
  if (!qword_2A17B1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CB0);
  }

  return result;
}

unint64_t sub_29D6CA5F8()
{
  result = qword_2A17B1CC0;
  if (!qword_2A17B1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CC0);
  }

  return result;
}

unint64_t sub_29D6CA64C()
{
  result = qword_2A17B1CD0;
  if (!qword_2A17B1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CD0);
  }

  return result;
}

unint64_t sub_29D6CA6A0()
{
  result = qword_2A17B1CE0;
  if (!qword_2A17B1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CE0);
  }

  return result;
}

unint64_t sub_29D6CA6F4()
{
  result = qword_2A17B1CF0;
  if (!qword_2A17B1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1CF0);
  }

  return result;
}

void sub_29D6CA748()
{
  if (!qword_2A17B1CF8)
  {
    sub_29D6CA7B8();
    sub_29D93AA68();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B1CF8);
    }
  }
}

unint64_t sub_29D6CA7B8()
{
  result = qword_2A17B1D00;
  if (!qword_2A17B1D00)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A17B1D00);
  }

  return result;
}

void sub_29D6CA804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D6CA86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D9336F8();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9346E8();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v60 - v15;
  v17 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v20, v23);
  v26 = &v60 - v25;
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = &v60 - v28;
  sub_29D6CADC0();
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x2A1C7C4A8](v30 - 8, v32);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v33 + 56);
  sub_29D6C9E9C(a1, v35);
  sub_29D6C9E9C(a2, &v35[v36]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v48 = swift_getEnumCaseMultiPayload();
        v39 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
        if (v48 != 6)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v55 = swift_getEnumCaseMultiPayload();
        v39 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
        if (v55 != 7)
        {
          goto LABEL_26;
        }
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v38 = swift_getEnumCaseMultiPayload();
      v39 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
      if (v38 != 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v53 = swift_getEnumCaseMultiPayload();
      v39 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
      if (v53 != 5)
      {
        goto LABEL_26;
      }
    }

LABEL_23:
    v44 = 1;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_29D6C9E9C(v35, v22);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v62 + 8))(v22, v63);
        goto LABEL_26;
      }

      v41 = v62;
      v40 = v63;
      v42 = &v35[v36];
      v43 = v61;
      (*(v62 + 32))(v61, v42, v63);
      v44 = sub_29D9336C8();
      v45 = *(v41 + 8);
      v45(v43, v40);
      v46 = v22;
      v47 = v40;
      goto LABEL_29;
    }

    v54 = swift_getEnumCaseMultiPayload();
    v39 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
    if (v54 != 3)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_29D6C9E9C(v35, v29);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v64 + 8))(v29, v65);
LABEL_26:
      v44 = 0;
      v39 = sub_29D6CADC0;
      goto LABEL_27;
    }

    v57 = v64;
    v58 = &v35[v36];
    v59 = v65;
    (*(v64 + 32))(v16, v58, v65);
    v44 = sub_29D9346D8();
    v45 = *(v57 + 8);
    v45(v16, v59);
    v46 = v29;
    v47 = v59;
LABEL_29:
    v45(v46, v47);
    v39 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
    goto LABEL_27;
  }

  sub_29D6C9E9C(v35, v26);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v64 + 8))(v26, v65);
    goto LABEL_26;
  }

  v49 = v64;
  v50 = &v35[v36];
  v51 = v65;
  (*(v64 + 32))(v13, v50, v65);
  v44 = sub_29D9346D8();
  v52 = *(v49 + 8);
  v52(v13, v51);
  v52(v26, v51);
  v39 = type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction;
LABEL_27:
  sub_29D6CAE24(v35, v39);
  return v44 & 1;
}

void sub_29D6CADC0()
{
  if (!qword_2A17B1D70)
  {
    type metadata accessor for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B1D70);
    }
  }
}

uint64_t sub_29D6CAE24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HypertensionNotificationsFeatureStatusActionHandlerUserData.TapAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AFibBurdenPDFChartPoint.Tag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AFibBurdenPDFChartPoint.Tag(_WORD *result, int a2, int a3)
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

unint64_t sub_29D6CB124()
{
  result = qword_2A17B1D78;
  if (!qword_2A17B1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D78);
  }

  return result;
}

unint64_t sub_29D6CB17C()
{
  result = qword_2A17B1D80;
  if (!qword_2A17B1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D80);
  }

  return result;
}

unint64_t sub_29D6CB1D4()
{
  result = qword_2A17B1D88;
  if (!qword_2A17B1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D88);
  }

  return result;
}

unint64_t sub_29D6CB22C()
{
  result = qword_2A17B1D90;
  if (!qword_2A17B1D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D90);
  }

  return result;
}

unint64_t sub_29D6CB284()
{
  result = qword_2A17B1D98;
  if (!qword_2A17B1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1D98);
  }

  return result;
}

unint64_t sub_29D6CB2DC()
{
  result = qword_2A17B1DA0;
  if (!qword_2A17B1DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DA0);
  }

  return result;
}

unint64_t sub_29D6CB334()
{
  result = qword_2A17B1DA8;
  if (!qword_2A17B1DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DA8);
  }

  return result;
}

unint64_t sub_29D6CB38C()
{
  result = qword_2A17B1DB0;
  if (!qword_2A17B1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DB0);
  }

  return result;
}

unint64_t sub_29D6CB3E4()
{
  result = qword_2A17B1DB8;
  if (!qword_2A17B1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DB8);
  }

  return result;
}

unint64_t sub_29D6CB43C()
{
  result = qword_2A17B1DC0;
  if (!qword_2A17B1DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DC0);
  }

  return result;
}

unint64_t sub_29D6CB494()
{
  result = qword_2A17B1DC8;
  if (!qword_2A17B1DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DC8);
  }

  return result;
}

unint64_t sub_29D6CB4EC()
{
  result = qword_2A17B1DD0;
  if (!qword_2A17B1DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DD0);
  }

  return result;
}

unint64_t sub_29D6CB544()
{
  result = qword_2A17B1DD8;
  if (!qword_2A17B1DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DD8);
  }

  return result;
}

unint64_t sub_29D6CB59C()
{
  result = qword_2A17B1DE0;
  if (!qword_2A17B1DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DE0);
  }

  return result;
}

unint64_t sub_29D6CB5F4()
{
  result = qword_2A17B1DE8;
  if (!qword_2A17B1DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DE8);
  }

  return result;
}

unint64_t sub_29D6CB64C()
{
  result = qword_2A17B1DF0;
  if (!qword_2A17B1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DF0);
  }

  return result;
}

unint64_t sub_29D6CB6A4()
{
  result = qword_2A17B1DF8;
  if (!qword_2A17B1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1DF8);
  }

  return result;
}

unint64_t sub_29D6CB6FC()
{
  result = qword_2A17B1E00;
  if (!qword_2A17B1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E00);
  }

  return result;
}

unint64_t sub_29D6CB754()
{
  result = qword_2A17B1E08;
  if (!qword_2A17B1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E08);
  }

  return result;
}

unint64_t sub_29D6CB7AC()
{
  result = qword_2A17B1E10;
  if (!qword_2A17B1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E10);
  }

  return result;
}

unint64_t sub_29D6CB804()
{
  result = qword_2A17B1E18;
  if (!qword_2A17B1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E18);
  }

  return result;
}

unint64_t sub_29D6CB85C()
{
  result = qword_2A17B1E20;
  if (!qword_2A17B1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1E20);
  }

  return result;
}

uint64_t sub_29D6CB8B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000029D9597B0 == a2;
  if (v3 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000029D9597D0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000029D9597F0 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000029D959810 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000029D959830 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000029D959850 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000029D959870 == a2 || (sub_29D93AD78() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C52556E65706FLL && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_29D93AD78();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_29D6CBB5C()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D6CBC0C()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;

  return sub_29D934788();
}

uint64_t sub_29D6CBCA0(char a1)
{
  if (a1)
  {
    [objc_opt_self() bradycardiaThresholdHeartRate];
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D6B73CC();
    v2 = sub_29D93A6E8();
    v3 = sub_29D8EFDF0(v2, v1);
    v5 = v4;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6CC0B8();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    *(v6 + 56) = MEMORY[0x29EDC99B0];
    *(v6 + 64) = sub_29D69AD24();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_29D939D38();
    v9 = v8;

    sub_29D9334A8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D93DDB0;
    v11 = *MEMORY[0x29EDC5250];
    v12 = MEMORY[0x29EDC9C10];
    *(v10 + 56) = MEMORY[0x29EDC9BA8];
    *(v10 + 64) = v12;
    *(v10 + 32) = v11;
    v13 = sub_29D939D38();
    v15 = v14;

    sub_29D6CBFE8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    *(v16 + 32) = v7;
    *(v16 + 40) = v9;
    *(v16 + 48) = v13;
  }

  else
  {
    sub_29D6CBFE8();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *(v16 + 32) = sub_29D9334A8();
    *(v16 + 40) = v17;
    v18 = sub_29D9334A8();
    v15 = v19;
    *(v16 + 48) = v18;
  }

  *(v16 + 56) = v15;
  return v16;
}

void sub_29D6CBFE8()
{
  if (!qword_2A1A21F18)
  {
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21F18);
    }
  }
}

void sub_29D6CC038()
{
  v0 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  [objc_opt_self() setBradycardiaThresholdHeartRate_];
}

void sub_29D6CC0B8()
{
  if (!qword_2A1A24860)
  {
    sub_29D69ACC0();
    v0 = sub_29D93AD48();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24860);
    }
  }
}

uint64_t sub_29D6CC110@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v67 = a2;
  v72 = a4;
  v73 = a1;
  sub_29D6CE4A4(0, &qword_2A1A24A68, sub_29D6CE0BC, MEMORY[0x29EDB8AB0]);
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v69 = v56 - v8;
  sub_29D6CE508();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v64 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_29D934148();
  v61 = *(v63 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v63, v14);
  v60 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29D9341E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v16, v19);
  v62 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v21);
  v23 = v56 - v22;
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator();
  v25 = *(*(updated - 8) + 64);
  MEMORY[0x2A1C7C4A8](updated, v26);
  v68 = (v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D6CE120(0, &qword_2A1A24A38, MEMORY[0x29EDB8AC0]);
  v29 = v28;
  v30 = *(v28 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v28, v32);
  v34 = v56 - v33;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v59 = a3;
    v36 = *(v17 + 16);
    v58 = Strong;
    v36(v23, v73, v16);
    v57 = updated;
    v56[1] = *(updated + 20);
    v56[0] = sub_29D9341B8();
    sub_29D6CE4A4(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
    v37 = sub_29D933F58();
    v38 = *(v37 - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_29D93DDB0;
    (*(v38 + 104))(v41 + v40, *MEMORY[0x29EDC3758], v37);
    (*(v61 + 104))(v60, *MEMORY[0x29EDC3898], v63);
    v42 = v68;
    sub_29D934158();
    v43 = v62;
    v36(v62, v23, v16);
    v44 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v67;
    (*(v17 + 32))(v45 + v44, v43, v16);
    sub_29D6CE59C();
    sub_29D6CE9B0(&qword_2A1A24AB0, sub_29D6CE59C);

    v46 = v64;
    sub_29D938378();
    sub_29D6CE9B0(&qword_2A1A24A00, sub_29D6CE508);
    v47 = v66;
    v48 = sub_29D938418();
    (*(v65 + 8))(v46, v47);
    (*(v17 + 8))(v23, v16);
    *v42 = v48;
    v74[3] = v57;
    v74[4] = sub_29D6CE9B0(qword_2A1A25418, type metadata accessor for ElectrocardiogramUpdateGenerator);
    v49 = sub_29D693F78(v74);
    sub_29D6CE6EC(v42, v49);
    sub_29D6CE0BC();
    v50 = v69;
    sub_29D938338();
    sub_29D6CE750();
    v51 = v71;
    v52 = sub_29D938418();
    (*(v70 + 8))(v50, v51);
    v53 = *(v58 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_notificationPublisher);

    v54 = sub_29D6CC920(v52, v53);

    result = sub_29D6CE7D8(v42);
  }

  else
  {
    sub_29D6CE0BC();
    sub_29D938348();
    sub_29D6CE190(&qword_2A1A24A40, &qword_2A1A24A38, MEMORY[0x29EDB8AC0]);
    v54 = sub_29D938418();
    result = (*(v30 + 8))(v34, v29);
  }

  *v72 = v54;
  return result;
}

uint64_t sub_29D6CC920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  sub_29D6CE834();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5, v9);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE8F4(0, &qword_2A1A24B50, MEMORY[0x29EDB8938]);
  v12 = v11;
  v52 = *(v11 - 8);
  v13 = v52[8];
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v51 - v15;
  v54 = sub_29D937898();
  v17 = *(v54 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x2A1C7C4A8](v54, v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20, v23);
  v25 = &v51 - v24;
  if (sub_29D934198())
  {
    sub_29D934D28();
    v26 = sub_29D937878();
    v27 = sub_29D93A2A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55 = v52;
      v56 = v3;
      *v28 = 136446210;
      swift_getMetatypeMetadata();
      v29 = sub_29D939DA8();
      v31 = v7;
      v32 = v6;
      v33 = a1;
      v34 = sub_29D6C2364(v29, v30, &v55);

      *(v28 + 4) = v34;
      a1 = v33;
      v6 = v32;
      v7 = v31;
      _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s]: In foreground mode, so will continue to listen for updates", v28, 0xCu);
      v35 = v52;
      sub_29D69417C(v52);
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v28, -1, -1);
    }

    (*(v17 + 8))(v22, v54);
    if (v53)
    {
      v55 = v53;
      v56 = a1;
      v36 = MEMORY[0x29EDB89F8];
      sub_29D6CE120(0, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
      sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v36);

      v37 = v51;
      sub_29D938148();
      sub_29D6CE9B0(&qword_2A1A24B40, sub_29D6CE834);
      v38 = sub_29D938418();
      (*(v7 + 8))(v37, v6);
    }

    else
    {
      v56 = a1;
      v49 = MEMORY[0x29EDB89F8];
      sub_29D6CE120(0, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
      sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v49);
      return sub_29D938418();
    }
  }

  else
  {
    sub_29D934D28();
    v39 = sub_29D937878();
    v40 = sub_29D93A2A8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53 = a1;
      v43 = v42;
      v55 = v42;
      v56 = v3;
      *v41 = 136446210;
      swift_getMetatypeMetadata();
      v44 = sub_29D939DA8();
      v46 = sub_29D6C2364(v44, v45, &v55);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_29D677000, v39, v40, "[%{public}s]: In background mode, so will finish after 1 update", v41, 0xCu);
      sub_29D69417C(v43);
      v47 = v43;
      a1 = v53;
      MEMORY[0x29ED6BE30](v47, -1, -1);
      MEMORY[0x29ED6BE30](v41, -1, -1);
    }

    (*(v17 + 8))(v25, v54);
    v56 = a1;
    v48 = MEMORY[0x29EDB89F8];
    sub_29D6CE120(0, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
    sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v48);
    sub_29D938498();
    sub_29D6CE9F8(&qword_2A1A224E8, &qword_2A1A24B50, MEMORY[0x29EDB8938]);
    v38 = sub_29D938418();
    (v52[1])(v16, v12);
  }

  return v38;
}

uint64_t sub_29D6CCF7C()
{
  v1 = v0;
  v2 = sub_29D93A548();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE280();
  v8 = v7;
  v26 = *(v7 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v7, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6CE35C();
  v14 = v13;
  v27 = *(v13 - 8);
  v15 = *(v27 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D934188();
  sub_29D693E2C(v28, v28[3]);
  sub_29D934108();
  v19 = sub_29D934418();
  result = sub_29D69417C(v28);
  if (v19)
  {
    v21 = [objc_opt_self() defaultCenter];
    v22 = *MEMORY[0x29EDC5298];
    sub_29D93A558();

    swift_allocObject();
    swift_weakInit();
    sub_29D6CE4A4(0, &qword_2A1A25738, sub_29D6CE0BC, MEMORY[0x29EDC9C68]);
    sub_29D6CE9B0(&unk_2A1A248C0, MEMORY[0x29EDB9DF8]);
    sub_29D938468();

    (*(v25 + 8))(v6, v2);
    sub_29D6CE0BC();
    sub_29D6CE9B0(&qword_2A1A24B70, sub_29D6CE280);
    sub_29D938428();
    (*(v26 + 8))(v12, v8);
    sub_29D6CE9B0(&qword_2A1A24BA0, sub_29D6CE35C);
    v23 = sub_29D938418();
    (*(v27 + 8))(v18, v14);
    v24 = *(v1 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_notificationPublisher);
    *(v1 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_notificationPublisher) = v23;
  }

  return result;
}

uint64_t sub_29D6CD3A8()
{
  v1 = OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_context;
  v2 = sub_29D9341E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_domain;
  v4 = sub_29D934178();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_publisher);

  v6 = *(v0 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_notificationPublisher);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ElectrocardiogramUpdateGeneratorPipeline()
{
  result = qword_2A1A24E58;
  if (!qword_2A1A24E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6CD4F8()
{
  result = sub_29D9341E8();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_29D934178();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29D6CD5F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_domain;
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_29D6CD66C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_29D934148();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934178();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = MEMORY[0x29EDC9E90];
    sub_29D6CE628(0, &qword_2A1A21F60, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    v27[1] = v12;
    v15 = v14;
    v28 = xmmword_29D93DDB0;
    *(v14 + 16) = xmmword_29D93DDB0;
    sub_29D6CE628(0, &qword_2A1A21F18, MEMORY[0x29EDC99B0], v13);
    v16 = swift_allocObject();
    *(v16 + 16) = v28;
    *(v16 + 32) = sub_29D6D0388();
    *(v16 + 40) = v17;
    *(v15 + 32) = v16;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 32;
    v27[0] = sub_29D9341B8();
    sub_29D6CE4A4(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
    v18 = sub_29D933F58();
    v19 = v2;
    v20 = *(v18 - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v28;
    (*(v20 + 104))(v23 + v22, *MEMORY[0x29EDC3758], v18);
    (*(v3 + 104))(v7, *MEMORY[0x29EDC3898], v19);
    sub_29D934158();
    v24 = sub_29D934018();
    v25 = MEMORY[0x29EDC37F8];
    *(a1 + 24) = v24;
    *(a1 + 32) = v25;
    sub_29D693F78(a1);
    sub_29D934008();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t *sub_29D6CD9B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = *v3;
  v66 = a2;
  v5 = sub_29D9341E8();
  v55 = v5;
  v58 = *(v5 - 8);
  v6 = v58;
  v63 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v62 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x29EDB8AE0];
  sub_29D6CE8F4(0, &qword_2A1A24A18, MEMORY[0x29EDB8AE0]);
  v10 = *(v9 - 8);
  v68 = v9;
  v69 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v64 = &v52 - v13;
  v59 = MEMORY[0x29EDB8AC0];
  sub_29D6CE120(0, &qword_2A1A24A38, MEMORY[0x29EDB8AC0]);
  v15 = *(v14 - 8);
  v60 = v14;
  v61 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14, v17);
  v57 = &v52 - v18;
  v54 = sub_29D934148();
  v19 = *(v54 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v54, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29D934178();
  v24 = *(v53 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v53, v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_notificationPublisher) = 0;
  v56 = *(v6 + 16);
  v70 = a1;
  v56(v3 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_context, a1, v5);
  v52 = sub_29D9341B8();
  sub_29D6CE4A4(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v29 = sub_29D933F58();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_29D93DDB0;
  (*(v30 + 104))(v33 + v32, *MEMORY[0x29EDC3758], v29);
  (*(v19 + 104))(v23, *MEMORY[0x29EDC3898], v54);
  sub_29D934158();
  (*(v24 + 32))(v3 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_domain, v28, v53);
  sub_29D6CE0BC();
  v34 = v57;
  sub_29D938348();
  sub_29D6CE190(&qword_2A1A24A40, &qword_2A1A24A38, v59);
  v35 = v60;
  v36 = sub_29D938418();
  (*(v61 + 8))(v34, v35);
  v37 = OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_publisher;
  *(v3 + OBJC_IVAR____TtC5Heart40ElectrocardiogramUpdateGeneratorPipeline_publisher) = v36;
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v62;
  v40 = v55;
  v56(v62, v70, v55);
  v41 = v58;
  v42 = (*(v58 + 80) + 24) & ~*(v58 + 80);
  v43 = (v63 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  (*(v41 + 32))(v44 + v42, v39, v40);
  v45 = v65;
  *(v44 + v43) = v66;
  *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
  v46 = MEMORY[0x29EDB89F8];
  sub_29D6CE120(0, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
  sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v46);

  v47 = v64;
  sub_29D938378();
  sub_29D6CE9F8(&qword_2A1A24A20, &qword_2A1A24A18, v67);
  v48 = v68;
  v49 = sub_29D938418();
  (*(v69 + 8))(v47, v48);
  v50 = *(v3 + v37);
  *(v3 + v37) = v49;

  sub_29D6CCF7C();
  (*(v41 + 8))(v70, v40);
  return v3;
}

unint64_t sub_29D6CE0BC()
{
  result = qword_2A1A25740;
  if (!qword_2A1A25740)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A25740);
  }

  return result;
}

void sub_29D6CE120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_29D6CE0BC();
    v7 = a3(a1, v6, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D6CE190(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_29D6CE120(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D6CE1D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_29D6CC110(v1 + v4, v6, v7, a1);
}

void sub_29D6CE280()
{
  if (!qword_2A1A24B68)
  {
    sub_29D93A548();
    sub_29D6CE4A4(255, &qword_2A1A25738, sub_29D6CE0BC, MEMORY[0x29EDC9C68]);
    sub_29D6CE9B0(&unk_2A1A248C0, MEMORY[0x29EDB9DF8]);
    v0 = sub_29D9380F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24B68);
    }
  }
}

void sub_29D6CE35C()
{
  if (!qword_2A1A24B98)
  {
    sub_29D6CE280();
    sub_29D6CE0BC();
    sub_29D6CE9B0(&qword_2A1A24B70, sub_29D6CE280);
    v0 = sub_29D938078();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24B98);
    }
  }
}

uint64_t sub_29D6CE410(uint64_t a1, uint64_t a2)
{
  sub_29D6CE4A4(0, &qword_2A1A25738, sub_29D6CE0BC, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D6CE4A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D6CE508()
{
  if (!qword_2A1A249F8)
  {
    sub_29D6CE59C();
    sub_29D6CE9B0(&qword_2A1A24AB0, sub_29D6CE59C);
    v0 = sub_29D938388();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A249F8);
    }
  }
}

void sub_29D6CE59C()
{
  if (!qword_2A1A24AA8)
  {
    sub_29D6CE628(255, &qword_2A1A249B8, MEMORY[0x29EDC3A38], MEMORY[0x29EDC9A40]);
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24AA8);
    }
  }
}

void sub_29D6CE628(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D6CE678@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_29D9341E8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_29D6CEA3C(v4, v5, a1);
}

uint64_t sub_29D6CE6EC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

unint64_t sub_29D6CE750()
{
  result = qword_2A1A24A70;
  if (!qword_2A1A24A70)
  {
    sub_29D6CE4A4(255, &qword_2A1A24A68, sub_29D6CE0BC, MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24A70);
  }

  return result;
}

uint64_t sub_29D6CE7D8(uint64_t a1)
{
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

void sub_29D6CE834()
{
  if (!qword_2A1A24B38)
  {
    v0 = MEMORY[0x29EDB89F8];
    sub_29D6CE120(255, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
    sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v0);
    v1 = sub_29D938138();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A24B38);
    }
  }
}

void sub_29D6CE8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x29EDB89F8];
    sub_29D6CE120(255, &qword_2A1A24AD8, MEMORY[0x29EDB89F8]);
    v8 = v7;
    v9 = sub_29D6CE190(&qword_2A1A24AE0, &qword_2A1A24AD8, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D6CE9B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D6CE9F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29D6CE8F4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D6CEA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v44 = a3;
  v38 = sub_29D9341E8();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v38, v7);
  v8 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D050C();
  v10 = v9;
  v36[0] = *(v9 - 8);
  v11 = *(v36[0] + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D0608();
  v42 = v15;
  v40 = *(v15 - 8);
  v16 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D0848();
  v43 = v20;
  v41 = *(v20 - 8);
  v21 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v45 = sub_29D817090();
  v37 = a2;
  LOBYTE(a1) = sub_29D934198();
  sub_29D6D05A0();
  v26 = v25;
  v36[1] = sub_29D6D0800(&qword_2A1A24AA0, sub_29D6D05A0);
  v36[2] = v26;
  if (a1)
  {
    v27 = sub_29D938418();
  }

  else
  {
    sub_29D938498();
    sub_29D6D0800(&qword_2A1A224D0, sub_29D6D050C);
    v27 = sub_29D938418();

    (*(v36[0] + 8))(v14, v10);
  }

  v45 = v27;
  v28 = v38;
  (*(v5 + 16))(v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v38);
  v29 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v30 = (v6 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v5 + 32))(v31 + v29, v8, v28);
  *(v31 + v30) = v39;

  sub_29D938228();
  sub_29D6D05A0();
  sub_29D6CE59C();
  sub_29D6D0800(&qword_2A1A24AB0, sub_29D6CE59C);
  sub_29D9384F8();

  sub_29D6D0800(&qword_2A1A24B10, sub_29D6D0608);
  v32 = v42;
  sub_29D938488();
  (*(v40 + 8))(v19, v32);
  sub_29D6D0800(&qword_2A1A24B60, sub_29D6D0848);
  v33 = v43;
  v34 = sub_29D938418();
  result = (*(v41 + 8))(v24, v33);
  *v44 = v34;
  return result;
}

uint64_t sub_29D6CEF84@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  sub_29D6D09E0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A08F8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8, v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = sub_29D6CF280(v16);
  v18 = v17;
  if (*(v17 + 16))
  {
    v20 = *(v17 + 32);
    v19 = *(v17 + 40);
    v21 = *(v17 + 48);
    v22 = *(v17 + 56);
    v23 = *(v17 + 64);
    v24 = v23 >> 5;
    if (v23 >> 5)
    {
      if (v24 == 1 || (v24 == 5 ? (v25 = (v19 | v20 | v21 | v22) == 0) : (v25 = 0), v25 && v23 == 160))
      {
        sub_29D8180E0();
      }
    }

    else
    {
      v34 = *(v17 + 32);
      sub_29D935E88();
      sub_29D817D04();
      sub_29D6D0A78(v20, v19, v21, v22, v23);
    }
  }

  else if (v16)
  {
    v26 = *MEMORY[0x29EDC52A0];
    v27 = sub_29D939D68();
    v29 = v28;
    v30 = *(v37 + 16);
    type metadata accessor for ElectrocardiogramUpdateAvailability.FeedItemUpdateDate();
    inited = swift_initStackObject();
    inited[2] = v27;
    inited[3] = v29;
    inited[4] = v30;
    inited[5] = sub_29D816FF8;
    inited[6] = 0;
    v32 = v30;
    sub_29D8160F8(v15);

    v33 = sub_29D9339F8();
    LODWORD(v32) = (*(*(v33 - 8) + 48))(v15, 1, v33);
    sub_29D6D0BF0(v15, sub_29D6A08F8);
    if (v32 == 1)
    {
      sub_29D817ED4();
    }
  }

  v39 = v18;
  sub_29D6D07B0();
  sub_29D938338();
  sub_29D6D0800(&qword_2A1A24A58, sub_29D6D09E0);
  v35 = sub_29D938418();
  result = (*(v6 + 8))(v10, v5);
  *v38 = v35;
  return result;
}

uint64_t sub_29D6CF280(int a1)
{
  LODWORD(v95) = a1;
  v1 = sub_29D937898();
  v100 = *(v1 - 8);
  v101 = v1;
  v2 = *(v100 + 64);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  v97 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4, v6);
  v87 = &v86 - v8;
  v10 = MEMORY[0x2A1C7C4A8](v7, v9);
  v89 = &v86 - v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v88 = &v86 - v13;
  v14 = sub_29D9340F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x2A1C7C4A8](v14, v17);
  v96 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v86 - v21;
  sub_29D6C36D8(0);
  v91 = *(v23 - 8);
  v24 = *(v91 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23 - 8, v25);
  v94 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x2A1C7C4A8](v26, v28);
  v92 = &v86 - v30;
  v32 = MEMORY[0x2A1C7C4A8](v29, v31);
  v99 = &v86 - v33;
  v35 = MEMORY[0x2A1C7C4A8](v32, v34);
  v37 = &v86 - v36;
  MEMORY[0x2A1C7C4A8](v35, v38);
  v40 = &v86 - v39;
  sub_29D6D0388();
  sub_29D934188();
  sub_29D693E2C(&updated, v105);
  v41 = v15;
  sub_29D934128();

  sub_29D6D0B8C(v40, v37);
  v90 = *(v15 + 48);
  if (v90(v37, 1, v14) == 1)
  {
    sub_29D6D0BF0(v40, sub_29D6C36D8);
    sub_29D69417C(&updated);
    v93 = MEMORY[0x29EDCA190];
  }

  else
  {
    v42 = *(v15 + 32);
    v42(v22, v37, v14);
    sub_29D6D0A14(0, &qword_2A1A21F70, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v43 = *(v15 + 72);
    v44 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_29D93DDB0;
    v93 = v45;
    v42((v45 + v44), v22, v14);
    sub_29D6D0BF0(v40, sub_29D6C36D8);
    sub_29D69417C(&updated);
  }

  v46 = sub_29D9341B8();
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator();
  sub_29D6D0C9C();
  updated = sub_29D939DA8();
  v104 = v47;
  MEMORY[0x29ED6A240](95, 0xE100000000000000);
  v102 = v46;
  v48 = v46;
  v49 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v49);

  v50 = updated;
  v51 = v104;
  v98 = updated;
  if (v95)
  {
    v52 = v88;
    sub_29D934D28();
    sub_29D935E88();
    v53 = sub_29D937878();
    v54 = sub_29D93A2A8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      updated = v56;
      *v55 = 136446210;
      *(v55 + 4) = sub_29D6C2364(v98, v51, &updated);
      _os_log_impl(&dword_29D677000, v53, v54, "[%{public}s]: Electrocardiogram update hasn't been updated since the refresh interval; submitting the update feedItem", v55, 0xCu);
      sub_29D69417C(v56);
      v57 = v56;
      v41 = v15;
      MEMORY[0x29ED6BE30](v57, -1, -1);
      MEMORY[0x29ED6BE30](v55, -1, -1);
    }

    v95 = *(v100 + 8);
    v95(v52, v101);
    v58 = v94;
    v59 = v99;
    sub_29D6CFFDC(v99);
    v60 = 0;
    v50 = v98;
  }

  else
  {
    v61 = v89;
    sub_29D934D28();
    sub_29D935E88();
    v62 = sub_29D937878();
    v63 = sub_29D93A2A8();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      updated = v65;
      *v64 = 136446210;
      *(v64 + 4) = sub_29D6C2364(v50, v51, &updated);
      _os_log_impl(&dword_29D677000, v62, v63, "[%{public}s]: Electrocardiogram update is up-to-date; deleting the feedItem", v64, 0xCu);
      sub_29D69417C(v65);
      v66 = v65;
      v41 = v15;
      MEMORY[0x29ED6BE30](v66, -1, -1);
      MEMORY[0x29ED6BE30](v64, -1, -1);
    }

    v95 = *(v100 + 8);
    v95(v61, v101);
    v60 = 1;
    v59 = v99;
    v58 = v94;
  }

  (*(v41 + 56))(v59, v60, 1, v14);
  sub_29D6D0A14(0, &qword_2A1A24890, sub_29D6C36D8, MEMORY[0x29EDC9E90]);
  v67 = *(v91 + 72);
  v68 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v69 = swift_allocObject();
  sub_29D6D0B8C(v59, v69 + v68);
  v70 = v92;
  sub_29D6D0B8C(v69 + v68, v92);
  sub_29D6C37D4(v70, v58);
  if (v90(v58, 1, v14) == 1)
  {
    sub_29D6D0BF0(v58, sub_29D6C36D8);
  }

  else
  {
    v71 = *(v41 + 32);
    v71(v96, v58, v14);
    v72 = MEMORY[0x29EDCA190];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_29D68F864(0, *(v72 + 2) + 1, 1, v72);
    }

    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_29D68F864(v73 > 1, v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v71(&v72[((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v74], v96, v14);
    v50 = v98;
    v59 = v99;
  }

  swift_setDeallocating();
  sub_29D6D0BF0(v69 + v68, sub_29D6C36D8);
  swift_deallocClassInstance();
  v75 = sub_29D939F58();

  v76 = v87;
  sub_29D934D28();
  sub_29D935E88();
  sub_29D935E88();
  v77 = sub_29D937878();
  v78 = sub_29D93A2A8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    updated = v80;
    *v79 = 136446466;
    v81 = sub_29D6C2364(v50, v51, &updated);

    *(v79 + 4) = v81;
    *(v79 + 12) = 2082;
    v82 = MEMORY[0x29ED6A340](v75, MEMORY[0x29EDC3A38]);
    v84 = sub_29D6C2364(v82, v83, &updated);

    *(v79 + 14) = v84;
    _os_log_impl(&dword_29D677000, v77, v78, "[%{public}s]: Computed needed PluginFeedItemChanges: %{public}s", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v80, -1, -1);
    MEMORY[0x29ED6BE30](v79, -1, -1);
  }

  else
  {
  }

  v95(v76, v101);
  sub_29D6D0BF0(v59, sub_29D6C36D8);
  return v75;
}

uint64_t sub_29D6CFEA8@<X0>(uint64_t *a1@<X8>)
{
  sub_29D6D09E0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2, v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = MEMORY[0x29EDCA190];
  sub_29D6D07B0();
  sub_29D938338();
  sub_29D6D0800(&qword_2A1A24A58, sub_29D6D09E0);
  v9 = sub_29D938418();
  result = (*(v4 + 8))(v8, v3);
  *a1 = v9;
  return result;
}

uint64_t sub_29D6CFFDC@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_29D9342A8();
  v23 = *(v1 - 8);
  v24 = v1;
  v2 = *(v23 + 64);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v19 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D9342D8();
  v6 = *(v5 - 8);
  v20 = v5;
  v21 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29D933F58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D0388();
  type metadata accessor for ElectrocardiogramUpdateViewController();
  sub_29D933FF8();
  (*(v12 + 104))(v16, *MEMORY[0x29EDC3758], v11);
  sub_29D9341B8();
  sub_29D9340A8();
  (*(v23 + 104))(v19, *MEMORY[0x29EDC3910], v24);
  sub_29D9342E8();
  v17 = v20;
  sub_29D934068();
  (*(v21 + 8))(v10, v17);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D934098();
  sub_29D934088();
  sub_29D6D0CE4();
  return sub_29D934078();
}

uint64_t sub_29D6D0314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_29D934178();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_29D6D0388()
{
  v0 = sub_29D933A58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9341B8();
  v7 = sub_29D933FA8();

  if (v7)
  {
    v8 = [v7 identifier];

    sub_29D933A38();
    v9 = sub_29D933A18();
    v11 = v10;
    (*(v1 + 8))(v5, v0);
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_29D93AA18();

  v13 = 0xD000000000000020;
  v14 = 0x800000029D9599D0;
  MEMORY[0x29ED6A240](v9, v11);

  return v13;
}

void sub_29D6D050C()
{
  if (!qword_2A1A24B48)
  {
    sub_29D6D05A0();
    sub_29D6D0800(&qword_2A1A24AA0, sub_29D6D05A0);
    v0 = sub_29D938128();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24B48);
    }
  }
}

void sub_29D6D05A0()
{
  if (!qword_2A1A24A98)
  {
    sub_29D6A0CD0();
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24A98);
    }
  }
}

void sub_29D6D0608()
{
  if (!qword_2A1A24B08)
  {
    sub_29D6D06F4();
    sub_29D6D05A0();
    sub_29D6D0800(&qword_2A1A24B90, sub_29D6D06F4);
    sub_29D6D0800(&qword_2A1A24AA0, sub_29D6D05A0);
    v0 = sub_29D938198();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24B08);
    }
  }
}

void sub_29D6D06F4()
{
  if (!qword_2A1A24B88)
  {
    sub_29D6CE59C();
    sub_29D6A0CD0();
    sub_29D6D0800(&qword_2A1A24AB0, sub_29D6CE59C);
    v0 = sub_29D9380B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24B88);
    }
  }
}

void sub_29D6D07B0()
{
  if (!qword_2A1A249B8)
  {
    v0 = sub_29D939FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A249B8);
    }
  }
}

uint64_t sub_29D6D0800(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D6D0848()
{
  if (!qword_2A1A24B58)
  {
    sub_29D6D0608();
    sub_29D6CE59C();
    sub_29D6D0800(&qword_2A1A24B10, sub_29D6D0608);
    sub_29D6D0800(&qword_2A1A24AB0, sub_29D6CE59C);
    v0 = sub_29D938118();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24B58);
    }
  }
}

uint64_t sub_29D6D0934@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_29D9341E8() - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_29D6CEF84(a1, v6, a2);
}

void sub_29D6D0A14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D6D0A78(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v6 = a5 >> 5;
  if (v6 <= 1)
  {
    if (a5 >> 5 && v6 != 1)
    {
      return;
    }
  }

  else if (v6 != 2 && v6 != 3)
  {
    if (v6 == 4)
    {

      sub_29D6D0B14(a2, a3, a4, a5 & 0x1F);
    }

    return;
  }
}

void sub_29D6D0B14(void *a1, void *a2, void *a3, char a4)
{
  if (!a4)
  {
    a3 = a2;
LABEL_6:

    a1 = a3;
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_7:

  sub_29D6D0B7C(a1);
}

void sub_29D6D0B7C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_29D6D0B8C(uint64_t a1, uint64_t a2)
{
  sub_29D6C36D8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6D0BF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ElectrocardiogramUpdateGenerator()
{
  result = qword_2A1A25408;
  if (!qword_2A1A25408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29D6D0C9C()
{
  result = qword_2A1A253A8[0];
  if (!qword_2A1A253A8[0])
  {
    type metadata accessor for ElectrocardiogramUpdateGenerator();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A253A8);
  }

  return result;
}

uint64_t sub_29D6D0CE4()
{
  v0 = sub_29D937898();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0, v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D9341B8();
  updated = type metadata accessor for ElectrocardiogramUpdateGenerator();
  sub_29D6D0C9C();
  updated = sub_29D939DA8();
  v24 = v7;
  MEMORY[0x29ED6A240](95, 0xE100000000000000);
  v22[1] = v6;
  v8 = v6;
  v9 = sub_29D939DB8();
  MEMORY[0x29ED6A240](v9);

  v11 = updated;
  v10 = v24;
  v12 = HKNRActivePairedDeviceSupportsECG2UpgradeBackgroundDelivery();
  sub_29D934D28();
  sub_29D935E88();
  v13 = sub_29D937878();
  v14 = sub_29D93A2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    updated = v16;
    *v15 = 136446466;
    v17 = sub_29D6C2364(v11, v10, &updated);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2082;
    if (v12)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v12)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_29D6C2364(v18, v19, &updated);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_29D677000, v13, v14, "[%{public}s]: Hide the feed item in Summary: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v16, -1, -1);
    MEMORY[0x29ED6BE30](v15, -1, -1);
  }

  else
  {
  }

  (*(v1 + 8))(v5, v0);
  return v12;
}

void sub_29D6D0FA8()
{
  sub_29D6CE59C();
  if (v0 <= 0x3F)
  {
    sub_29D934178();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for IrregularRhythmNotificationsFeatureStatusActionHandler()
{
  result = qword_2A1A22B68;
  if (!qword_2A1A22B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6D10C4()
{
  ObjectType = swift_getObjectType();
  sub_29D6D22BC(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v97 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6B805C(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v99 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D9371A8();
  v100 = *(v9 - 8);
  v101 = v9;
  v10 = *(v100 + 64);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v98 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9346E8();
  v105 = *(v13 - 8);
  v14 = *(v105 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29D934C58();
  v107 = *(v18 - 8);
  v108 = v18;
  v19 = *(v107 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v104 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v106 = &v96 - v24;
  v25 = sub_29D936638();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v25, v28);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D9369E8();
  v31 = MEMORY[0x29EDC2970];
  sub_29D6D2830(&qword_2A17B1E40, MEMORY[0x29EDC2970]);
  sub_29D6D2830(&qword_2A17B3920, v31);
  sub_29D936628();
  v32 = *(v26 + 8);
  v32(v30, v25);
  v33 = v110[0];
  if (v110[0])
  {
    sub_29D936B88();
    sub_29D936608();
    v32(v30, v25);
    v109 = v33;
    sub_29D693E2C(v110, v110[3]);
    v34 = sub_29D936588();
    sub_29D69417C(v110);
    sub_29D936B88();
    v103 = sub_29D936618();
    v32(v30, v25);
    v96 = v0;
    sub_29D936B88();
    v35 = v106;
    sub_29D9347B8();
    v32(v30, v25);
    sub_29D9369B8();
    v36 = v105;
    v37 = (*(v105 + 88))(v17, v13);
    if (v37 == *MEMORY[0x29EDC1760])
    {
      v38 = *MEMORY[0x29EDBA6F8];
      v39 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
      v40 = v34;
      v41 = [v39 initWithFeatureIdentifier:v38 healthStore:v40 currentCountryCode:0];
      v42 = type metadata accessor for AtrialFibrillationFeatureStatusAvailability();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      v45 = swift_allocObject();
      sub_29D6D2354(v40, v41, v45);

      v46 = v107;
      v47 = v108;
      v48 = v104;
      (*(v107 + 16))(v104, v35, v108);
      v49 = objc_allocWithZone(type metadata accessor for AtrialFibrillationSettingsViewController(0));

      v51 = sub_29D706714(v50, v48);

      v52 = v103;
      v53 = [v103 navigationController];
      if (v53)
      {
        v54 = v53;
        [v53 pushViewController:v51 animated:1];

        (*(v46 + 8))(v35, v47);
      }

      else
      {
        (*(v46 + 8))(v35, v47);
      }
    }

    else
    {
      v63 = v34;
      v64 = v103;
      v65 = v35;
      v66 = v108;
      if (v37 == *MEMORY[0x29EDC1768])
      {
        v67 = *MEMORY[0x29EDBA6F8];
        v68 = objc_allocWithZone(MEMORY[0x29EDBABB0]);
        v69 = v63;
        v70 = [v68 initWithFeatureIdentifier:v67 healthStore:v69 currentCountryCode:0];
        v71 = type metadata accessor for AtrialFibrillationFeatureStatusAvailability();
        v72 = *(v71 + 48);
        v73 = *(v71 + 52);
        v74 = swift_allocObject();
        v75 = sub_29D6D2354(v69, v70, v74);

        v76 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
        swift_beginAccess();
        v77 = &v75[v76];
        v78 = v99;
        sub_29D6D27C0(v77, v99, sub_29D6B805C);
        v80 = v100;
        v79 = v101;
        if ((*(v100 + 48))(v78, 1, v101) == 1)
        {
          sub_29D6D272C(v78, sub_29D6B805C);
          v81 = v64;
        }

        else
        {
          v86 = v98;
          (*(v80 + 32))(v98, v78, v79);
          v81 = v64;
          if (sub_29D937198())
          {
            v87 = v80;
            v88 = v107;
            v89 = v104;
            (*(v107 + 16))(v104, v65, v66);
            v90 = objc_allocWithZone(type metadata accessor for AtrialFibrillationSettingsViewController(0));

            v92 = sub_29D706714(v91, v89);
            v93 = v79;
            v94 = v92;

            sub_29D9365C8();
            sub_29D835258(1, v69, ObjectType, &off_2A24415C0);
            v95 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
            [v81 presentViewController:v95 animated:1 completion:0];

            (*(v87 + 8))(v98, v93);
            (*(v88 + 8))(v65, v66);
            return;
          }

          (*(v80 + 8))(v86, v79);
        }

        sub_29D6D1C34(v81, v69);

        (*(v107 + 8))(v65, v66);
      }

      else
      {
        v82 = v107;
        if (v37 == *MEMORY[0x29EDC1758] || v37 == *MEMORY[0x29EDC1750])
        {
          v83 = v97;
          sub_29D9369D8();
          v84 = sub_29D9336F8();
          v85 = *(v84 - 8);
          if ((*(v85 + 48))(v83, 1, v84) == 1)
          {
            (*(v82 + 8))(v65, v108);

            sub_29D6D272C(v83, sub_29D6D22BC);
          }

          else
          {
            sub_29D9336A8();

            (*(v82 + 8))(v65, v108);
            (*(v85 + 8))(v83, v84);
          }
        }

        else
        {
          (*(v107 + 8))(v35, v108);

          (*(v36 + 8))(v17, v13);
        }
      }
    }
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v55 = sub_29D937898();
    sub_29D69C6C0(v55, qword_2A1A2C008);
    v56 = sub_29D937878();
    v57 = sub_29D93A298();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v110[0] = v59;
      *v58 = 136315138;
      v60 = sub_29D93AF08();
      v62 = sub_29D6C2364(v60, v61, v110);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_29D677000, v56, v57, "[%s] Could not access action handler user data!", v58, 0xCu);
      sub_29D69417C(v59);
      MEMORY[0x29ED6BE30](v59, -1, -1);
      MEMORY[0x29ED6BE30](v58, -1, -1);
    }
  }
}

void sub_29D6D1C34(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_29D933CE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933C88();
  v12 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v13 = sub_29D933BB8();
  v14 = [v12 initWithCalendar_];

  (*(v7 + 8))(v11, v6);
  v15 = objc_allocWithZone(type metadata accessor for OnboardingDelegate());
  v16 = sub_29D6D20B4(a2, v14);
  v17 = qword_2A1A22B90;
  v18 = *&v3[qword_2A1A22B90];
  *&v3[qword_2A1A22B90] = v16;

  v19 = *&v3[v17];
  if (v19 && (v20 = *(v19 + OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager)) != 0 && (v21 = [v20 onboardingNavigationController]) != 0)
  {
    v22 = v21;
    [v21 setModalInPresentation:1];
    [a1 showViewController:v22 sender:0];
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v23 = sub_29D937898();
    sub_29D69C6C0(v23, qword_2A1A2C008);
    v24 = v3;
    v22 = sub_29D937878();
    v25 = sub_29D93A298();

    if (os_log_type_enabled(v22, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136446466;
      ObjectType = swift_getObjectType();
      sub_29D6D2274();
      v28 = sub_29D939DA8();
      v30 = sub_29D6C2364(v28, v29, &v32);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_29D6C2364(0xD000000000000035, 0x800000029D959B20, &v32);
      _os_log_impl(&dword_29D677000, v22, v25, "[%{public}s.%{public}s] Onboarding navigation controller not initialized", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v27, -1, -1);
      MEMORY[0x29ED6BE30](v26, -1, -1);
    }
  }
}

uint64_t sub_29D6D1F44(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(v1);
  *&v9[qword_2A1A22B90] = 0;
  (*(v4 + 16))(v8, a1, v3);
  v10 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v10;
}

id sub_29D6D2060()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IrregularRhythmNotificationsFeatureStatusActionHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_29D6D20B4(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager] = 0;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v12, sel_init);
  v7 = objc_allocWithZone(MEMORY[0x29EDC52B0]);
  v8 = v6;
  v9 = [v7 initWithOnboardingType:0 isFirstTimeOnboarding:1 healthStore:a1 dateCache:a2 provenance:4 delegate:v8];

  v10 = *&v8[OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager];
  *&v8[OBJC_IVAR____TtC5HeartP33_8DCA3C15E4C4BF158196465BE488169318OnboardingDelegate_onboardingManager] = v9;

  return v8;
}

unint64_t sub_29D6D2274()
{
  result = qword_2A17B1E38;
  if (!qword_2A17B1E38)
  {
    type metadata accessor for IrregularRhythmNotificationsFeatureStatusActionHandler();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B1E38);
  }

  return result;
}

void sub_29D6D22F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

char *sub_29D6D2354(void *a1, uint64_t a2, char *a3)
{
  sub_29D6D22F0(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v6, v10);
  v12 = v30 - v11;
  sub_29D6D278C(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x2A1C7C4A8](v13, v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16, v19);
  v21 = v30 - v20;
  v31[3] = sub_29D6B8230();
  v31[4] = MEMORY[0x29EDC2EA8];
  v31[0] = a2;
  v22 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability__featureStatus;
  v23 = sub_29D9346E8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_29D6D27C0(v21, v18, sub_29D6D278C);
  sub_29D938398();
  sub_29D6D272C(v21, sub_29D6D278C);
  (*(v8 + 32))(&a3[v22], v12, v7);
  v24 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
  v25 = sub_29D9371A8();
  (*(*(v25 - 8) + 56))(&a3[v24], 1, 1, v25);
  if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
  {
    v26 = sub_29D6E4394(MEMORY[0x29EDCA190]);
  }

  else
  {
    v26 = MEMORY[0x29EDCA1A0];
  }

  *&a3[OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_subscriptions] = v26;
  *(a3 + 2) = a1;
  sub_29D6945AC(v31, (a3 + 24));
  v27 = a1;
  sub_29D70C7C4();
  v28 = *(a3 + 7);
  sub_29D693E2C(a3 + 3, *(a3 + 6));
  v30[0] = sub_29D937258();
  swift_allocObject();
  swift_weakInit();
  sub_29D6B7D8C();
  sub_29D6D2830(&qword_2A1A22420, sub_29D6B7D8C);
  sub_29D938588();

  swift_beginAccess();
  sub_29D938258();
  swift_endAccess();

  sub_29D69417C(v31);
  return a3;
}

uint64_t sub_29D6D272C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6D27C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6D2830(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29D6D28E8(uint64_t *a1, void (*a2)(id), void (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_29D6D2948(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_29D6D2948(uint64_t a1, void (*a2)(id), void (*a3)(void))
{
  v5 = sub_29D937A88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  a2([v11 setTranslatesAutoresizingMaskIntoConstraints_]);
  v12 = sub_29D937A48();
  (*(v6 + 8))(v10, v5);
  [v11 setFont_];

  a3();
  if (v13)
  {
    v14 = sub_29D939D28();
  }

  else
  {
    v14 = 0;
  }

  [v11 setText_];

  [v11 setNumberOfLines_];
  return v11;
}

id sub_29D6D2AE8()
{
  v1 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel;
  v2 = *&v0[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel];
  }

  else
  {
    v4 = sub_29D6D2B4C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_29D6D2B4C(void *a1)
{
  v2 = sub_29D937A88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_29D937AC8();
  v9 = sub_29D937A48();
  (*(v3 + 8))(v7, v2);
  [v8 setFont_];

  if (qword_2A17B0D60 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  v10 = sub_29D939D28();

  [v8 setText_];

  v11 = [a1 tintColor];
  [v8 setTextColor_];

  [v8 setUserInteractionEnabled_];
  v12 = [objc_allocWithZone(MEMORY[0x29EDC7D28]) initWithTarget:a1 action:sel_learnMoreTapped];
  [v8 addGestureRecognizer_];

  [v8 setNumberOfLines_];
  return v8;
}

char *sub_29D6D2DB8(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___detailLabel] = 0;
  *&v2[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel] = 0;
  v5 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView_configuration;
  v56 = sub_29D937B88();
  v57 = *(v56 - 8);
  v55 = a1;
  (*(v57 + 16))(&v2[v5], a1, v56);
  v58.receiver = v2;
  v58.super_class = type metadata accessor for ConfirmDetailsLearnMoreView();
  v6 = objc_msgSendSuper2(&v58, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29D937AE8();
  v8 = v7;
  sub_29D937AE8();
  v10 = v9;
  v11 = sub_29D6D2880();
  v12 = a2 - (v8 + v10);
  [v11 setPreferredMaxLayoutWidth_];

  v13 = sub_29D6D28B4();
  [v13 setPreferredMaxLayoutWidth_];

  v14 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel;
  v15 = *&v6[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___titleLabel];
  v16 = v6;
  [v16 addSubview_];
  v17 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___detailLabel;
  [v16 addSubview_];
  v18 = sub_29D6D2AE8();
  [v16 addSubview_];

  v54 = objc_opt_self();
  sub_29D6A0C58();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29D941950;
  v20 = [*&v6[v14] topAnchor];
  v21 = [v16 &selRef_irregularHeartRhythmFooterLinkTitle];

  v22 = [v20 constraintEqualToAnchor_];
  *(v19 + 32) = v22;
  v23 = [*&v6[v14] leadingAnchor];
  v24 = [v16 leadingAnchor];

  v25 = [v23 constraintEqualToAnchor:v24 constant:v8];
  *(v19 + 40) = v25;
  v26 = [*&v6[v14] trailingAnchor];
  v27 = [v16 trailingAnchor];

  v28 = -v10;
  v29 = [v26 constraintLessThanOrEqualToAnchor:v27 constant:v28];

  *(v19 + 48) = v29;
  v30 = [*&v16[v17] topAnchor];
  v31 = [*&v6[v14] bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:4.0];

  *(v19 + 56) = v32;
  v33 = [*&v16[v17] leadingAnchor];
  v34 = [v16 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor:v34 constant:v8];
  *(v19 + 64) = v35;
  v36 = [*&v16[v17] trailingAnchor];
  v37 = [v16 trailingAnchor];

  v38 = [v36 constraintLessThanOrEqualToAnchor:v37 constant:v28];
  *(v19 + 72) = v38;
  v39 = OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel;
  v40 = [*&v16[OBJC_IVAR____TtC5Heart27ConfirmDetailsLearnMoreView____lazy_storage___learnMoreLabel] topAnchor];
  v41 = [*&v16[v17] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:2.0];

  *(v19 + 80) = v42;
  v43 = [*&v16[v39] leadingAnchor];
  v44 = [v16 leadingAnchor];

  v45 = [v43 constraintEqualToAnchor:v44 constant:v8];
  *(v19 + 88) = v45;
  v46 = [*&v16[v39] trailingAnchor];
  v47 = [v16 trailingAnchor];

  v48 = [v46 constraintLessThanOrEqualToAnchor:v47 constant:v28];
  *(v19 + 96) = v48;
  v49 = [*&v16[v39] bottomAnchor];
  v50 = [v16 bottomAnchor];

  v51 = [v49 constraintEqualToAnchor:v50 constant:-18.0];
  *(v19 + 104) = v51;
  sub_29D6D37A4();
  v52 = sub_29D939F18();

  [v54 activateConstraints_];

  (*(v57 + 8))(v55, v56);
  return v16;
}

uint64_t sub_29D6D34D0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_29D7307EC();
      sub_29D936978();
    }

    return sub_29D936978();
  }

  return result;
}

id sub_29D6D35C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmDetailsLearnMoreView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ConfirmDetailsLearnMoreView()
{
  result = qword_2A17B1E70;
  if (!qword_2A17B1E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6D36FC()
{
  result = sub_29D937B88();
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

unint64_t sub_29D6D37A4()
{
  result = qword_2A17B81B0;
  if (!qword_2A17B81B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A17B81B0);
  }

  return result;
}

uint64_t type metadata accessor for AFibBurdenPDFBarChart()
{
  result = qword_2A17B1E80;
  if (!qword_2A17B1E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6D3864()
{
  sub_29D6D3900();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AFibBurdenPDFChartViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29D6D3900()
{
  if (!qword_2A17B1E90)
  {
    v0 = sub_29D93A7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1E90);
    }
  }
}

uint64_t sub_29D6D3950@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v126 = a5;
  v137 = a4;
  LODWORD(v136) = a3;
  v138 = a2;
  v141 = a1;
  v130 = a6;
  v124 = sub_29D938828();
  v135 = *(v124 - 8);
  v6 = *(v135 + 64);
  MEMORY[0x2A1C7C4A8](v124, v7);
  v134 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D715C(0, &qword_2A17B1EB0, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8, v11);
  v132 = &v115 - v12;
  sub_29D6D5E4C();
  v119 = v13;
  v117 = *(v13 - 8);
  v14 = *(v117 + 64);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v116 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6560();
  v121 = v17;
  v120 = *(v17 - 8);
  v18 = *(v120 + 64);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v118 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6738();
  v128 = v21;
  v123 = *(v21 - 8);
  v22 = *(v123 + 64);
  MEMORY[0x2A1C7C4A8](v21, v23);
  v122 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6858();
  v131 = v25;
  v129 = *(v25 - 8);
  v26 = *(v129 + 64);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v125 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6EB0(0, &qword_2A17B1F58, sub_29D6D6A80, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  v127 = v29;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v29, v31);
  v133 = &v115 - v32;
  sub_29D6D6C48();
  v34 = v33;
  v35 = *(*(v33 - 8) + 64);
  v37 = MEMORY[0x2A1C7C4A8](v33, v36);
  v115 = (&v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v37, v39);
  v41 = &v115 - v40;
  v42 = sub_29D9339F8();
  v43 = *(v42 - 8);
  v44 = v43[8];
  v46 = MEMORY[0x2A1C7C4A8](v42, v45);
  v48 = &v115 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v46, v49);
  v51 = &v115 - v50;
  sub_29D6D6634();
  v140 = v52;
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v52, v54);
  v142 = &v115 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_29D9331D8();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x2A1C7C4A8](v56, v59);
  v61 = &v115 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for AFibBurdenPDFChartViewModel();
  v63 = (v141 + *(result + 32));
  v64 = *v63;
  if (v64 != 2 && v63[2] < 0.0)
  {
    goto LABEL_8;
  }

  sub_29D8BE424(v64 == 2, 3, v138, v136, v137, &v144);
  v138 = v57;
  v65 = v61;
  v66 = v56;
  v67 = v65;
  (*(v57 + 16))();
  sub_29D9331A8();
  sub_29D933178();
  sub_29D6D706C(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
  v68 = v42;
  result = sub_29D939CD8();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v137 = v66;
  v139 = v67;
  v69 = v43[4];
  v69(v41, v51, v42);
  v70 = v34;
  v69(&v41[*(v34 + 48)], v48, v68);
  v71 = v115;
  sub_29D6D6F1C(v41, v115, sub_29D6D6C48);
  v136 = *(v34 + 48);
  v72 = v142;
  v69(v142, v71, v68);
  v73 = v43[1];
  v73(v136 + v71, v68);
  sub_29D6D6F84(v41, v71, sub_29D6D6C48);
  v69((v72 + *(v140 + 36)), (v71 + *(v70 + 48)), v68);
  v74 = (v73)(v71, v68);
  v136 = &v115;
  MEMORY[0x2A1C7C4A8](v74, v75);
  v76 = v139;
  *(&v115 - 2) = v141;
  *(&v115 - 1) = v76;
  sub_29D6D5EB0();
  sub_29D6D6328();
  v77 = v116;
  sub_29D937E58();
  v78 = sub_29D938028();
  v115 = *(*(v78 - 8) + 56);
  v79 = v132;
  v115(v132, 1, 1, v78);
  v80 = sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C);
  v81 = sub_29D6D66C8();
  v82 = v118;
  v83 = v119;
  v84 = v140;
  sub_29D939348();
  v141 = MEMORY[0x29EDB8710];
  sub_29D6D71C0(v79, &qword_2A17B1EB0, MEMORY[0x29EDB8710]);
  v85 = (*(v117 + 8))(v77, v83);
  MEMORY[0x2A1C7C4A8](v85, v86);
  *(&v115 - 2) = v126;
  *&v145 = v83;
  *(&v145 + 1) = v84;
  *&v146 = v80;
  *(&v146 + 1) = v81;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = MEMORY[0x29EDB8608];
  v89 = v122;
  v90 = v121;
  v91 = MEMORY[0x29EDB8600];
  sub_29D939328();
  (*(v120 + 8))(v82, v90);
  v143 = v144;
  v115(v79, 1, 1, v78);
  sub_29D6D7108(0, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
  v93 = v92;
  *&v145 = v90;
  *(&v145 + 1) = v88;
  *&v146 = OpaqueTypeConformance2;
  *(&v146 + 1) = v91;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = sub_29D6D69EC();
  v96 = v125;
  v97 = v128;
  sub_29D939358();
  sub_29D6D71C0(v79, &qword_2A17B1EB0, v141);
  v98 = (*(v123 + 8))(v89, v97);
  MEMORY[0x2A1C7C4A8](v98, v99);
  *(&v115 - 2) = &v144;
  *&v145 = v97;
  *(&v145 + 1) = v93;
  *&v146 = v94;
  *(&v146 + 1) = v95;
  swift_getOpaqueTypeConformance2();
  v100 = v133;
  v101 = v131;
  sub_29D939338();
  (*(v129 + 8))(v96, v101);
  sub_29D9398B8();
  sub_29D938718();
  v102 = (v100 + *(v127 + 36));
  v103 = v146;
  *v102 = v145;
  v102[1] = v103;
  v102[2] = v147;
  KeyPath = swift_getKeyPath();
  v105 = [objc_opt_self() sharedApplication];
  v106 = [v105 userInterfaceLayoutDirection];

  sub_29D6D6CD4(v142);
  v107 = v135;
  v108 = MEMORY[0x29EDBC548];
  if (v106 != 1)
  {
    v108 = MEMORY[0x29EDBC540];
  }

  v109 = v134;
  v110 = v124;
  (*(v135 + 104))(v134, *v108, v124);
  sub_29D6D6D30();
  v112 = v130;
  v113 = (v130 + *(v111 + 36));
  sub_29D6D715C(0, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
  (*(v107 + 32))(v113 + *(v114 + 28), v109, v110);
  *v113 = KeyPath;
  sub_29D67BD84(v100, v112);
  (*(v138 + 1))(v139, v137);
  return sub_29D6D6E00(&v144);
}

uint64_t sub_29D6D46D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2;
  v93 = a3;
  v100 = sub_29D9339F8();
  v102 = *(v100 - 8);
  v4 = *(v102 + 64);
  MEMORY[0x2A1C7C4A8](v100, v5);
  v82 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6EB0(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v97 = &v77 - v10;
  v88 = sub_29D937F78();
  v101 = *(v88 - 8);
  v11 = *(v101 + 64);
  MEMORY[0x2A1C7C4A8](v88, v12);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6290(0, &qword_2A17B1F00, MEMORY[0x29EDB86E8]);
  v98 = v14;
  v87 = *(v14 - 8);
  v15 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v86 = &v77 - v17;
  sub_29D6D61A0();
  v92 = v18;
  v91 = *(v18 - 8);
  v19 = *(v91 + 64);
  v21 = MEMORY[0x2A1C7C4A8](v18, v20);
  v90 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v89 = &v77 - v25;
  v27 = MEMORY[0x2A1C7C4A8](v24, v26);
  v85 = &v77 - v28;
  MEMORY[0x2A1C7C4A8](v27, v29);
  v96 = &v77 - v30;
  v31 = type metadata accessor for AFibBurdenPDFChartViewModel();
  v32 = v31 - 8;
  v33 = *(v31 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x2A1C7C4A8](v31, v35);
  sub_29D6D5F24();
  v84 = v36;
  v83 = *(v36 - 8);
  v37 = *(v83 + 64);
  v39 = MEMORY[0x2A1C7C4A8](v36, v38);
  v95 = &v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v39, v41);
  v43 = &v77 - v42;
  v104[0] = *(a1 + *(v32 + 28));
  sub_29D6D6F1C(a1, &v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AFibBurdenPDFChartViewModel);
  v44 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v45 = swift_allocObject();
  sub_29D6D6F84(&v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for AFibBurdenPDFChartViewModel);
  sub_29D6D715C(0, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
  sub_29D9331D8();
  sub_29D6D6028();
  sub_29D6D6118();
  v46 = MEMORY[0x29EDB8698];
  sub_29D6D6290(255, &qword_2A17B1EE0, MEMORY[0x29EDB86A0]);
  v48 = v47;
  v49 = sub_29D937EA8();
  sub_29D935E88();
  v105 = v49;
  v106 = MEMORY[0x29EDBCA98];
  v107 = v46;
  v108 = MEMORY[0x29EDBCA88];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = v48;
  v106 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29D6D706C(&qword_2A17B1F88, type metadata accessor for AFibBurdenPDFChartPoint);
  v94 = v43;
  sub_29D9397B8();
  sub_29D938C18();
  v51 = v82;
  sub_29D9331A8();
  v52 = v81;
  v53 = v100;
  sub_29D937D48();

  v54 = *(v102 + 8);
  v102 += 8;
  v80 = v54;
  v54(v51, v53);
  sub_29D937F48();
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  v78 = qword_2A17D0CC0;
  v105 = qword_2A17D0CC0;

  v55 = v86;
  v56 = v88;
  v57 = MEMORY[0x29EDBCA98];
  v58 = MEMORY[0x29EDB86E0];
  v59 = MEMORY[0x29EDBCA88];
  sub_29D937C48();
  v60 = *(v101 + 8);
  v101 += 8;
  v79 = v60;
  v60(v52, v56);
  sub_29D9386D8();
  v105 = v56;
  v106 = v57;
  v107 = v58;
  v108 = v59;
  v77 = swift_getOpaqueTypeConformance2();
  v61 = v98;
  sub_29D937C98();
  sub_29D6D70B4(v104);
  v87 = *(v87 + 8);
  (v87)(v55, v61);
  sub_29D938C18();
  sub_29D933178();
  v62 = v100;
  sub_29D937D48();

  v80(v51, v62);
  sub_29D937F48();
  v105 = v78;
  sub_29D937C48();

  v79(v52, v56);
  sub_29D9386D8();
  v63 = v85;
  v64 = v98;
  sub_29D937C98();
  sub_29D6D70B4(&v105);
  (v87)(v55, v64);
  v65 = v83;
  v66 = v95;
  v67 = v84;
  (*(v83 + 16))(v95, v94, v84);
  v103[0] = v66;
  v68 = v91;
  v69 = *(v91 + 16);
  v70 = v89;
  v71 = v96;
  v72 = v92;
  v69(v89, v96, v92);
  v103[1] = v70;
  v73 = v90;
  v69(v90, v63, v72);
  v103[2] = v73;
  sub_29D90AA34(v103, v93);
  v74 = *(v68 + 8);
  v74(v63, v72);
  v74(v71, v72);
  v75 = *(v65 + 8);
  v75(v94, v67);
  v74(v73, v72);
  v74(v70, v72);
  return (v75)(v95, v67);
}

uint64_t sub_29D6D5228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v87 = a3;
  v4 = sub_29D938C38();
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v84 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D7108(0, &qword_2A17B1F90, MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v82 = v66 - v11;
  v80 = MEMORY[0x29EDB9D18];
  sub_29D6D715C(0, &qword_2A17B1F98, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8, v14);
  v76 = v66 - v15;
  v16 = sub_29D933CC8();
  v72 = *(v16 - 8);
  v73 = v16;
  v17 = *(v72 + 64);
  MEMORY[0x2A1C7C4A8](v16, v18);
  v71 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_29D9339F8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x2A1C7C4A8](v20, v23);
  v26 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v27);
  v29 = v66 - v28;
  sub_29D6D6EB0(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v30 - 8, v32);
  v70 = v66 - v33;
  v34 = sub_29D937EA8();
  v35 = *(v34 - 8);
  v77 = v34;
  v78 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x2A1C7C4A8](v34, v37);
  v75 = v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D6290(0, &qword_2A17B1EE0, MEMORY[0x29EDB86A0]);
  v79 = v39;
  v81 = *(v39 - 8);
  v40 = *(v81 + 64);
  MEMORY[0x2A1C7C4A8](v39, v41);
  v74 = v66 - v42;
  v68 = sub_29D938C18();
  v66[3] = v43;
  v69 = a1;
  sub_29D9331A8();
  v44 = sub_29D933958();
  v45 = *(v21 + 8);
  v67 = v20;
  v45(v26, v20);
  sub_29D933178();
  v46 = sub_29D933958();
  v45(v26, v20);
  v47 = HKDateMid();

  sub_29D933998();
  v49 = v71;
  v48 = v72;
  v50 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x29EDB9CA0], v73);
  v51 = sub_29D933CE8();
  v52 = v76;
  (*(*(v51 - 8) + 56))(v76, 1, 1, v51);
  sub_29D937D38();

  sub_29D6D71C0(v52, &qword_2A17B1F98, v80);
  (*(v48 + 8))(v49, v50);
  v45(v29, v67);
  sub_29D938C18();
  v88 = *(v69 + *(type metadata accessor for AFibBurdenPDFChartPoint() + 20));
  sub_29D937D48();

  v53 = v75;
  sub_29D937E78();
  v88 = sub_29D8F4468();
  v54 = MEMORY[0x29EDBCA98];
  v55 = MEMORY[0x29EDBCA88];
  v56 = v74;
  v57 = v77;
  v58 = MEMORY[0x29EDB8698];
  sub_29D937C48();

  v59 = v53;
  v60 = v57;
  (*(v78 + 8))(v59, v57);
  v61 = v84;
  v62 = v85;
  v63 = v86;
  (*(v85 + 104))(v84, *MEMORY[0x29EDBC6F8], v86);
  v88 = v60;
  v89 = v54;
  v90 = v58;
  v91 = v55;
  swift_getOpaqueTypeConformance2();
  v64 = v79;
  sub_29D937C38();
  (*(v62 + 8))(v61, v63);
  return (*(v81 + 8))(v56, v64);
}

uint64_t sub_29D6D5A5C()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_29D6D5A68()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_29D6D5A74@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A17B0C88 != -1)
  {
    swift_once();
  }

  sub_29D9356B8();
  v2 = sub_29D9356C8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_29D6D5B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6D706C(&qword_2A17B1EA8, type metadata accessor for AFibBurdenPDFBarChart);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D6D5BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D6D706C(&qword_2A17B1EA8, type metadata accessor for AFibBurdenPDFBarChart);

  return a4(a1, a2, v6);
}

uint64_t sub_29D6D5C6C(uint64_t a1)
{
  v3 = *(MEMORY[0x29EDC2218] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_29D6D706C(&qword_2A17B1EA0, type metadata accessor for AFibBurdenPDFBarChart);
  *v4 = v1;
  v4[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v5);
}

uint64_t sub_29D6D5DF4(uint64_t a1)
{
  result = sub_29D6D706C(&qword_2A17B1EA8, type metadata accessor for AFibBurdenPDFBarChart);
  *(a1 + 8) = result;
  return result;
}

void sub_29D6D5E4C()
{
  if (!qword_2A17B1EB8)
  {
    sub_29D6D5EB0();
    sub_29D6D6328();
    v0 = sub_29D937E68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1EB8);
    }
  }
}

void sub_29D6D5EB0()
{
  if (!qword_2A17B1EC0)
  {
    sub_29D6D5F24();
    sub_29D6D61A0();
    v0 = sub_29D937BF8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1EC0);
    }
  }
}

void sub_29D6D5F24()
{
  if (!qword_2A17B1EC8)
  {
    sub_29D6D715C(255, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
    sub_29D9331D8();
    sub_29D6D6028();
    sub_29D6D6118();
    sub_29D6D706C(&qword_2A17B1EF0, MEMORY[0x29EDB98E8]);
    v0 = sub_29D9397E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1EC8);
    }
  }
}

void sub_29D6D6028()
{
  if (!qword_2A17B1ED8)
  {
    sub_29D6D6290(255, &qword_2A17B1EE0, MEMORY[0x29EDB86A0]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1ED8);
    }
  }
}

unint64_t sub_29D6D6118()
{
  result = qword_2A17B1EE8;
  if (!qword_2A17B1EE8)
  {
    sub_29D6D715C(255, &qword_2A17B1ED0, type metadata accessor for AFibBurdenPDFChartPoint, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1EE8);
  }

  return result;
}

void sub_29D6D61A0()
{
  if (!qword_2A17B1EF8)
  {
    sub_29D6D6290(255, &qword_2A17B1F00, MEMORY[0x29EDB86E8]);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1EF8);
    }
  }
}

void sub_29D6D6290(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29D6D6328()
{
  result = qword_2A17B1F08;
  if (!qword_2A17B1F08)
  {
    sub_29D6D5EB0();
    sub_29D6D644C();
    sub_29D6D6290(255, &qword_2A17B1F00, MEMORY[0x29EDB86E8]);
    sub_29D937F78();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1F08);
  }

  return result;
}

unint64_t sub_29D6D644C()
{
  result = qword_2A17B1F10;
  if (!qword_2A17B1F10)
  {
    sub_29D6D5F24();
    sub_29D6D6290(255, &qword_2A17B1EE0, MEMORY[0x29EDB86A0]);
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1F10);
  }

  return result;
}

void sub_29D6D6560()
{
  if (!qword_2A17B1F18)
  {
    sub_29D6D5E4C();
    sub_29D6D6634();
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C);
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F18);
    }
  }
}

void sub_29D6D6634()
{
  if (!qword_2A17B1F20)
  {
    sub_29D9339F8();
    sub_29D6D706C(&qword_2A17B4730, MEMORY[0x29EDB9BC8]);
    v0 = sub_29D939CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1F20);
    }
  }
}

unint64_t sub_29D6D66C8()
{
  result = qword_2A17B1F30;
  if (!qword_2A17B1F30)
  {
    sub_29D6D6634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1F30);
  }

  return result;
}

void sub_29D6D6738()
{
  if (!qword_2A17B1F38)
  {
    sub_29D6D6560();
    sub_29D6D5E4C();
    sub_29D6D6634();
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F38);
    }
  }
}

void sub_29D6D6858()
{
  if (!qword_2A17B1F40)
  {
    sub_29D6D6738();
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D6D6560();
    sub_29D6D5E4C();
    sub_29D6D6634();
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F40);
    }
  }
}

unint64_t sub_29D6D69EC()
{
  result = qword_2A17B1F50;
  if (!qword_2A17B1F50)
  {
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1F50);
  }

  return result;
}

void sub_29D6D6A80()
{
  if (!qword_2A17B1F60)
  {
    sub_29D6D6858();
    sub_29D6D6738();
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D6D6560();
    sub_29D6D5E4C();
    sub_29D6D6634();
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1F60);
    }
  }
}

void sub_29D6D6C48()
{
  if (!qword_2A17B1F68)
  {
    sub_29D9339F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B1F68);
    }
  }
}

uint64_t sub_29D6D6CD4(uint64_t a1)
{
  sub_29D6D6634();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6D6D30()
{
  if (!qword_2A17B1F70)
  {
    sub_29D6D6EB0(255, &qword_2A17B1F58, sub_29D6D6A80, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D6D715C(255, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    v0 = sub_29D938838();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1F70);
    }
  }
}

void sub_29D6D6EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D6D6F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6D6F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6D6FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AFibBurdenPDFChartViewModel() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D6D5228(a1, v6, a2);
}

uint64_t sub_29D6D706C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29D6D7108(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x29EDC9AD8]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29D6D715C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29D6D71C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D6D715C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D6D7230()
{
  result = qword_2A17B1FA0;
  if (!qword_2A17B1FA0)
  {
    sub_29D6D6D30();
    sub_29D6D72B0();
    sub_29D6D74DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1FA0);
  }

  return result;
}

unint64_t sub_29D6D72B0()
{
  result = qword_2A17B1FA8;
  if (!qword_2A17B1FA8)
  {
    sub_29D6D6EB0(255, &qword_2A17B1F58, sub_29D6D6A80, MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
    sub_29D6D6858();
    sub_29D6D6738();
    sub_29D6D7108(255, &qword_2A17B1F48, MEMORY[0x29EDC9B00], MEMORY[0x29EDC9930]);
    sub_29D6D6560();
    sub_29D6D5E4C();
    sub_29D6D6634();
    sub_29D6D706C(&qword_2A17B1F28, sub_29D6D5E4C);
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29D6D69EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1FA8);
  }

  return result;
}

unint64_t sub_29D6D74DC()
{
  result = qword_2A17B1FB0;
  if (!qword_2A17B1FB0)
  {
    sub_29D6D715C(255, &qword_2A17B1F78, MEMORY[0x29EDBC550], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B1FB0);
  }

  return result;
}

uint64_t sub_29D6D7564(uint64_t a1, int a2)
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

uint64_t sub_29D6D75AC(uint64_t result, int a2, int a3)
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

unint64_t sub_29D6D75FC()
{
  result = qword_2A1A244A8;
  if (!qword_2A1A244A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A244A8);
  }

  return result;
}

uint64_t sub_29D6D76E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D6D7728(char a1)
{
  if (a1)
  {
    [objc_opt_self() bradycardiaThresholdHeartRate];
    v1 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    sub_29D69567C(0, &qword_2A17B4FE0, 0x29EDBA070);
    v2 = sub_29D93A6E8();
    v3 = sub_29D8EFDF0(v2, v1);
    v5 = v4;

    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    sub_29D9334A8();
    sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_29D93DDB0;
    *(v6 + 56) = MEMORY[0x29EDC99B0];
    *(v6 + 64) = sub_29D69AD24();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_29D939D38();
    v9 = v8;

    sub_29D9334A8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_29D93DDB0;
    v11 = *MEMORY[0x29EDC5250];
    v12 = MEMORY[0x29EDC9C10];
    *(v10 + 56) = MEMORY[0x29EDC9BA8];
    *(v10 + 64) = v12;
    *(v10 + 32) = v11;
    v13 = sub_29D939D38();
    v15 = v14;

    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    *(v16 + 32) = v7;
    *(v16 + 40) = v9;
    *(v16 + 48) = v13;
  }

  else
  {
    sub_29D6AA3B4(0, &qword_2A1A21F18);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_29D93F680;
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *(v16 + 32) = sub_29D9334A8();
    *(v16 + 40) = v17;
    v18 = sub_29D9334A8();
    v15 = v19;
    *(v16 + 48) = v18;
  }

  *(v16 + 56) = v15;
  return v16;
}

uint64_t sub_29D6D7AD4@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = &v25 - v6;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v2);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = sub_29D9346E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v19 = qword_2A1A2C038;
  sub_29D9334A8();
  (*(v14 + 104))(v18, *MEMORY[0x29EDC1760], v13);
  v20 = v19;
  sub_29D934788();
  v21 = sub_29D934798();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_29D6D7728(1);
  sub_29D934818();
  v22 = sub_29D934358();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_29D934988();
  v23 = sub_29D9349A8();
  return (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
}

uint64_t sub_29D6D7E70@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v6 = &v28 - v5;
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8, v9);
  v11 = &v28 - v10;
  v12 = sub_29D9346E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A2C038;
  v28 = sub_29D9334A8();
  (*(v13 + 104))(v17, *MEMORY[0x29EDC1768], v12);
  v19 = v18;
  sub_29D934788();
  v20 = sub_29D934798();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  sub_29D9347E8();
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29D93F680;
  *(v21 + 32) = sub_29D9334A8();
  *(v21 + 40) = v22;
  *(v21 + 48) = sub_29D9334A8();
  *(v21 + 56) = v23;
  sub_29D934818();
  v24 = sub_29D934358();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v25 = v29;
  sub_29D934988();
  v26 = sub_29D9349A8();
  return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
}

void sub_29D6D82C8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x29EDC9C68];
  sub_29D6D974C(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], MEMORY[0x29EDC9C68]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8, v7);
  v116 = &v108 - v8;
  v9 = sub_29D9346B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], v4);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x2A1C7C4A8](v15 - 8, v17);
  v117 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18, v20);
  v22 = &v108 - v21;
  v23 = sub_29D9346E8();
  v118 = *(v23 - 8);
  v24 = *(v118 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v26, v29);
  v31 = &v108 - v30;
  v120 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v120)
  {
    __break(1u);
    goto LABEL_52;
  }

  v119 = a2;
  v32 = *MEMORY[0x29EDBA5A8];
  v33 = sub_29D939D68();
  v35 = v34;
  if (v33 == sub_29D939D68() && v35 == v36)
  {

LABEL_6:
    v38 = sub_29D9349A8();
    (*(*(v38 - 8) + 56))(v119, 1, 1, v38);
    v39 = v120;

    return;
  }

  v37 = sub_29D93AD78();

  if (v37)
  {
    goto LABEL_6;
  }

  v40 = *MEMORY[0x29EDBA6A0];
  v41 = sub_29D939D68();
  v43 = v42;
  if (v41 == sub_29D939D68() && v43 == v44)
  {

    goto LABEL_14;
  }

  v45 = sub_29D93AD78();

  if ((v45 & 1) == 0)
  {
    v64 = *MEMORY[0x29EDBA640];
    v65 = sub_29D939D68();
    v67 = v66;
    if (v65 == sub_29D939D68() && v67 == v68)
    {

      goto LABEL_24;
    }

    v69 = sub_29D93AD78();

    if (v69)
    {

LABEL_24:
      v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      if (qword_2A1A257A0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_49;
    }

    v70 = *MEMORY[0x29EDBA620];
    v71 = sub_29D939D68();
    v73 = v72;
    if (v71 == sub_29D939D68() && v73 == v74)
    {

LABEL_31:
      v120 = sub_29D934848();
      v77 = v76;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v114 = qword_2A1A2C038;
      v115 = sub_29D9334A8();
      sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v78 = swift_allocObject();
      v112 = xmmword_29D93DDB0;
      *(v78 + 16) = xmmword_29D93DDB0;
      *(v78 + 56) = MEMORY[0x29EDC99B0];
      *(v78 + 64) = sub_29D69AD24();
      *(v78 + 32) = v120;
      *(v78 + 40) = v77;
      v113 = v77;
      sub_29D935E88();
      v115 = sub_29D939D38();
      v80 = v79;

      (*(v118 + 104))(v31, *MEMORY[0x29EDC1758], v23);
      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v81 = swift_allocObject();
      *(v81 + 16) = v112;
      *(v81 + 32) = v115;
      *(v81 + 40) = v80;
      v111 = v80;
      *&v112 = v81;
      sub_29D935E88();
      v82 = sub_29D934828();
      v109 = v83;
      v110 = v82;
      (*(v10 + 104))(v14, *MEMORY[0x29EDC1720], v9);
      sub_29D934698();
      (*(v10 + 8))(v14, v9);
LABEL_34:
      v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      v54 = v120;
      goto LABEL_16;
    }

    v75 = sub_29D93AD78();

    if (v75)
    {

      goto LABEL_31;
    }

    v84 = *MEMORY[0x29EDBA6A8];
    v85 = sub_29D939D68();
    v87 = v86;
    if (v85 == sub_29D939D68() && v87 == v88)
    {

LABEL_39:
      v120 = sub_29D934858();
      v91 = v90;
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v114 = qword_2A1A2C038;
      v115 = sub_29D9334A8();
      sub_29D6D974C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
      v92 = swift_allocObject();
      v112 = xmmword_29D93DDB0;
      *(v92 + 16) = xmmword_29D93DDB0;
      *(v92 + 56) = MEMORY[0x29EDC99B0];
      *(v92 + 64) = sub_29D69AD24();
      *(v92 + 32) = v120;
      *(v92 + 40) = v91;
      v113 = v91;
      sub_29D935E88();
      v115 = sub_29D939D38();
      v94 = v93;

      (*(v118 + 104))(v31, *MEMORY[0x29EDC1758], v23);
      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v95 = swift_allocObject();
      *(v95 + 16) = v112;
      *(v95 + 32) = v115;
      *(v95 + 40) = v94;
      v111 = v94;
      *&v112 = v95;
      sub_29D935E88();
      v96 = sub_29D934828();
      v109 = v97;
      v110 = v96;
      (*(v10 + 104))(v14, *MEMORY[0x29EDC1728], v9);
      sub_29D934698();
      (*(v10 + 8))(v14, v9);
      goto LABEL_34;
    }

    v89 = sub_29D93AD78();

    if (v89)
    {
      goto LABEL_39;
    }

    if ((sub_29D9347F8() & 1) == 0)
    {
      if (qword_2A1A257A0 != -1)
      {
        swift_once();
      }

      v98 = qword_2A1A2C038;
      goto LABEL_48;
    }

    if (qword_2A1A257A0 == -1)
    {
LABEL_44:
      v98 = qword_2A1A2C038;
LABEL_48:
      v114 = v98;
      v99 = sub_29D9334A8();
      v101 = v100;
      (*(v118 + 104))(v31, *MEMORY[0x29EDC1750], v23);
      sub_29D6AA3B4(0, &qword_2A1A21F18);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_29D93DDB0;
      *(v102 + 32) = v99;
      *(v102 + 40) = v101;
      *&v112 = v102;
      sub_29D935E88();
      v103 = sub_29D934808();
      v109 = v104;
      v110 = v103;
      v115 = MEMORY[0x29ED64C30](v99, v101);
      v111 = v105;

      v54 = sub_29D934808();
      v113 = v106;
      v107 = [objc_opt_self() bradycardiaLearnMoreLink];
      sub_29D939D68();

      sub_29D9336E8();

      v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
      goto LABEL_16;
    }

LABEL_52:
    swift_once();
    goto LABEL_44;
  }

LABEL_14:
  v46 = &OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  if (qword_2A1A257A0 != -1)
  {
LABEL_49:
    swift_once();
  }

LABEL_15:
  v114 = qword_2A1A2C038;
  v47 = sub_29D9334A8();
  v49 = v48;
  (*(v118 + 104))(v31, *MEMORY[0x29EDC1750], v23);
  sub_29D6AA3B4(0, &qword_2A1A21F18);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_29D93DDB0;
  *(v50 + 32) = v47;
  *(v50 + 40) = v49;
  *&v112 = v50;
  sub_29D935E88();
  v51 = sub_29D934808();
  v109 = v52;
  v110 = v51;
  v115 = MEMORY[0x29ED64C30](v47, v49);
  v111 = v53;

  v54 = sub_29D934808();
  v113 = v55;
  v56 = [objc_opt_self() bradycardiaLearnMoreLink];
  sub_29D939D68();

  sub_29D9336E8();

LABEL_16:
  v120 = v54;
  v57 = v119;
  if (v46[244] != -1)
  {
    swift_once();
  }

  v58 = v114;
  sub_29D9334A8();
  v59 = v118;
  (*(v118 + 16))(v28, v31, v23);
  v60 = v58;
  v61 = v116;
  sub_29D934788();
  v62 = sub_29D934798();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  sub_29D6D962C(v22, v117);
  sub_29D934978();
  sub_29D6D96C0(v22);
  (*(v59 + 8))(v31, v23);
  v63 = sub_29D9349A8();
  (*(*(v63 - 8) + 56))(v57, 0, 1, v63);
}

uint64_t sub_29D6D9304@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1858];
  v3 = sub_29D934898();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29D6D9378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6D97B0();

  return MEMORY[0x2A1C60FD8](a1, a2, a3, v6);
}

uint64_t sub_29D6D93CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29D6D97B0();

  return MEMORY[0x2A1C60FC0](a1, a2, v4);
}

unint64_t sub_29D6D9428()
{
  result = qword_2A1A244B0;
  if (!qword_2A1A244B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A244B0);
  }

  return result;
}

uint64_t sub_29D6D947C()
{
  sub_29D6AA3B4(0, &qword_2A1A21EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D941B10;
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 32) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA498]);
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA908]);
  sub_29D6E3D70(inited);
  v2 = v1;
  swift_setDeallocating();
  v3 = *(inited + 16);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D6D9570(uint64_t a1)
{
  v2 = sub_29D6D9428();

  return MEMORY[0x2A1C61000](a1, v2);
}

uint64_t sub_29D6D95BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6D9428();

  return MEMORY[0x2A1C60FF8](a1, a2, a3, v6);
}

uint64_t sub_29D6D962C(uint64_t a1, uint64_t a2)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6D96C0(uint64_t a1)
{
  sub_29D6D974C(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6D974C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29D6D97B0()
{
  result = qword_2A1A244B8;
  if (!qword_2A1A244B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A244B8);
  }

  return result;
}

uint64_t sub_29D6D9804@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v36 = &v30 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v35 = &v30 - v9;
  v31 = sub_29D9346E8();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v31, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  v32 = sub_29D9334A8();
  v19 = v18;

  v20 = [v16 bundleForClass_];
  v21 = sub_29D9334A8();
  v33 = v22;
  v34 = v21;

  (*(v10 + 104))(v14, *MEMORY[0x29EDC1750], v31);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2C038;
  v24 = v35;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  sub_29D6CBFE8();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93DDB0;
  v27 = v32;
  *(v26 + 32) = v32;
  *(v26 + 40) = v19;
  sub_29D935E88();
  sub_29D934808();
  MEMORY[0x29ED64C30](v27, v19);

  sub_29D934808();
  v28 = sub_29D9336F8();
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  return sub_29D934978();
}

uint64_t sub_29D6D9C74@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v36 = &v30 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v35 = &v30 - v9;
  v31 = sub_29D9346E8();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v31, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  v32 = sub_29D9334A8();
  v19 = v18;

  v20 = [v16 bundleForClass_];
  v21 = sub_29D9334A8();
  v33 = v22;
  v34 = v21;

  (*(v10 + 104))(v14, *MEMORY[0x29EDC1750], v31);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2C038;
  v24 = v35;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  sub_29D6CBFE8();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93DDB0;
  v27 = v32;
  *(v26 + 32) = v32;
  *(v26 + 40) = v19;
  sub_29D935E88();
  sub_29D934808();
  MEMORY[0x29ED64C30](v27, v19);

  sub_29D934808();
  v28 = sub_29D9336F8();
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  return sub_29D934978();
}

uint64_t sub_29D6DA0E4@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v36 = &v30 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v35 = &v30 - v9;
  v31 = sub_29D9346E8();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v31, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  v32 = sub_29D9334A8();
  v19 = v18;

  v20 = [v16 bundleForClass_];
  v21 = sub_29D9334A8();
  v33 = v22;
  v34 = v21;

  (*(v10 + 104))(v14, *MEMORY[0x29EDC1750], v31);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v23 = qword_2A1A2C038;
  v24 = v35;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  sub_29D6CBFE8();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93DDB0;
  v27 = v32;
  *(v26 + 32) = v32;
  *(v26 + 40) = v19;
  sub_29D935E88();
  sub_29D934808();
  MEMORY[0x29ED64C30](v27, v19);

  sub_29D934808();
  v28 = sub_29D9336F8();
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  return sub_29D934978();
}

uint64_t sub_29D6DA554@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v38 = &v32 - v7;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v3);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8, v10);
  v37 = &v32 - v11;
  v33 = sub_29D9346E8();
  v12 = *(v33 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x2A1C7C4A8](v33, v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v15);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  v34 = sub_29D9334A8();
  v21 = v20;

  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_29D9334A8();
  v35 = v24;
  v36 = v23;

  (*(v12 + 104))(v17, *MEMORY[0x29EDC1750], v33);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v25 = qword_2A1A2C038;
  v26 = v37;
  sub_29D934788();
  v27 = sub_29D934798();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  sub_29D6CBFE8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29D93DDB0;
  v29 = v34;
  *(v28 + 32) = v34;
  *(v28 + 40) = v21;
  sub_29D935E88();
  sub_29D934808();
  MEMORY[0x29ED64C30](v29, v21);

  sub_29D934808();
  v30 = sub_29D9336F8();
  (*(*(v30 - 8) + 56))(v38, 1, 1, v30);
  return sub_29D934978();
}

uint64_t sub_29D6DA9F4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v45 = &v37 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v44 = &v37 - v9;
  v40 = sub_29D9346E8();
  v43 = *(v40 - 8);
  v10 = *(v43 + 8);
  MEMORY[0x2A1C7C4A8](v40, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_29D9334A8();
  v19 = v18;

  v20 = [v15 &selRef:ObjCClassFromMetadata initWithIconImage:? titleText:? detailText:? tintColor:? + 3];
  sub_29D9334A8();

  sub_29D6E2800(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v21 = swift_allocObject();
  v37 = xmmword_29D93DDB0;
  *(v21 + 16) = xmmword_29D93DDB0;
  *(v21 + 56) = MEMORY[0x29EDC99B0];
  *(v21 + 64) = sub_29D69AD24();
  v41 = v19;
  v42 = v17;
  *(v21 + 32) = v17;
  *(v21 + 40) = v19;
  sub_29D935E88();
  v22 = sub_29D939D38();
  v24 = v23;

  v25 = [v15 bundleForClass_];
  v26 = sub_29D9334A8();
  v38 = v27;
  v39 = v26;

  v28 = *MEMORY[0x29EDC1758];
  v29 = *(v43 + 13);
  v43 = v13;
  v29(v13, v28, v40);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v30 = qword_2A1A2C038;
  v31 = v44;
  sub_29D934788();
  v32 = sub_29D934798();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  sub_29D6CBFE8();
  v33 = swift_allocObject();
  *(v33 + 16) = v37;
  *(v33 + 32) = v22;
  *(v33 + 40) = v24;
  sub_29D935E88();
  v34 = [v15 bundleForClass_];
  sub_29D9334A8();

  v35 = sub_29D9336F8();
  (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
  return sub_29D934978();
}

uint64_t sub_29D6DAFD4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v39 = &v32 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v37 = &v32 - v9;
  v35 = sub_29D9346E8();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v35, v12);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D934848();
  v16 = v15;
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  sub_29D9334A8();

  sub_29D6E2800(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v20 = swift_allocObject();
  v34 = xmmword_29D93DDB0;
  *(v20 + 16) = xmmword_29D93DDB0;
  *(v20 + 56) = MEMORY[0x29EDC99B0];
  *(v20 + 64) = sub_29D69AD24();
  v38 = v14;
  *(v20 + 32) = v14;
  *(v20 + 40) = v16;
  v36 = v16;
  sub_29D935E88();
  v21 = sub_29D939D38();
  v23 = v22;

  v24 = [v18 bundleForClass_];
  v25 = v33;
  sub_29D9334A8();

  (*(v10 + 104))(v25, *MEMORY[0x29EDC1758], v35);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v26 = qword_2A1A2C038;
  v27 = v37;
  sub_29D934788();
  v28 = sub_29D934798();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  sub_29D6CBFE8();
  v29 = swift_allocObject();
  *(v29 + 16) = v34;
  *(v29 + 32) = v21;
  *(v29 + 40) = v23;
  sub_29D935E88();
  sub_29D934828();
  v30 = sub_29D9336F8();
  (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  return sub_29D934978();
}

uint64_t sub_29D6DB4F4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v40 = v39 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v39 - v9;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v20 = sub_29D9334A8();
  v39[4] = v21;
  v39[5] = v20;

  v22 = *MEMORY[0x29EDC1768];
  v23 = *(v12 + 104);
  v39[3] = v16;
  v23(v16, v22, v11);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A2C038;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  v26 = sub_29D9347D8();
  v39[1] = v27;
  v39[2] = v26;
  sub_29D6CBFE8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29D93F680;
  v29 = [v18 bundleForClass_];
  v39[0] = v10;
  v30 = sub_29D9334A8();
  v32 = v31;

  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v33 = [v18 bundleForClass_];
  v34 = sub_29D9334A8();
  v36 = v35;

  *(v28 + 48) = v34;
  *(v28 + 56) = v36;
  sub_29D934818();
  v37 = sub_29D934358();
  (*(*(v37 - 8) + 56))(v40, 1, 1, v37);
  return sub_29D934988();
}

uint64_t sub_29D6DB9B0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v40 = v39 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v39 - v9;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v20 = sub_29D9334A8();
  v39[4] = v21;
  v39[5] = v20;

  v22 = *MEMORY[0x29EDC1768];
  v23 = *(v12 + 104);
  v39[3] = v16;
  v23(v16, v22, v11);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A2C038;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  v26 = sub_29D9347E8();
  v39[1] = v27;
  v39[2] = v26;
  sub_29D6CBFE8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_29D93F680;
  v29 = [v18 bundleForClass_];
  v39[0] = v10;
  v30 = sub_29D9334A8();
  v32 = v31;

  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v33 = [v18 bundleForClass_];
  v34 = sub_29D9334A8();
  v36 = v35;

  *(v28 + 48) = v34;
  *(v28 + 56) = v36;
  sub_29D934818();
  v37 = sub_29D934358();
  (*(*(v37 - 8) + 56))(v40, 1, 1, v37);
  return sub_29D934988();
}

uint64_t sub_29D6DBE6C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v38 = v37 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v37 - v9;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v20 = sub_29D9334A8();
  v37[2] = v21;
  v37[3] = v20;

  v22 = *MEMORY[0x29EDC1760];
  v23 = *(v12 + 104);
  v37[1] = v16;
  v23(v16, v22, v11);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A2C038;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  sub_29D6CBFE8();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93F680;
  v27 = [v18 bundleForClass_];
  v37[0] = v10;
  v28 = sub_29D9334A8();
  v30 = v29;

  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  v31 = [v18 bundleForClass_];
  v32 = sub_29D9334A8();
  v34 = v33;

  *(v26 + 48) = v32;
  *(v26 + 56) = v34;
  sub_29D934818();
  v35 = sub_29D934358();
  (*(*(v35 - 8) + 56))(v38, 1, 1, v35);
  return sub_29D934988();
}

uint64_t sub_29D6DC320@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v35 = v34 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v34 - v9;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v34[2] = "DVERTISEMENT_TITLE";
  v20 = sub_29D9334A8();
  v34[3] = v21;
  v34[4] = v20;

  v22 = *MEMORY[0x29EDC1768];
  v23 = *(v12 + 104);
  v34[5] = v16;
  v23(v16, v22, v11);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A2C038;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  v34[1] = v10;
  if (qword_2A17B0D80 != -1)
  {
    swift_once();
  }

  v34[0] = sub_29D9334A8();
  sub_29D6CBFE8();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93F680;
  v27 = [v18 bundleForClass_];
  v28 = sub_29D9334A8();
  v30 = v29;

  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  *(v26 + 48) = sub_29D9334A8();
  *(v26 + 56) = v31;
  v32 = sub_29D934358();
  (*(*(v32 - 8) + 56))(v35, 1, 1, v32);
  return sub_29D934988();
}

uint64_t sub_29D6DC814@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v35 = v34 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v34 - v9;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v34[2] = "DVERTISEMENT_TITLE";
  v20 = sub_29D9334A8();
  v34[3] = v21;
  v34[4] = v20;

  v22 = *MEMORY[0x29EDC1768];
  v23 = *(v12 + 104);
  v34[5] = v16;
  v23(v16, v22, v11);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A2C038;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  v34[1] = v10;
  if (qword_2A17B0D80 != -1)
  {
    swift_once();
  }

  v34[0] = sub_29D9334A8();
  sub_29D6CBFE8();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93F680;
  v27 = [v18 bundleForClass_];
  v28 = sub_29D9334A8();
  v30 = v29;

  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  *(v26 + 48) = sub_29D9334A8();
  *(v26 + 56) = v31;
  v32 = sub_29D934358();
  (*(*(v32 - 8) + 56))(v35, 1, 1, v32);
  return sub_29D934988();
}

uint64_t sub_29D6DCD08@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = MEMORY[0x29EDC9C68];
  sub_29D6E2800(0, &qword_2A1A24760, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8, v4);
  v35 = v34 - v5;
  sub_29D6E2800(0, &qword_2A1A24728, MEMORY[0x29EDC17F0], v1);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v8);
  v10 = v34 - v9;
  v11 = sub_29D9346E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeartHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v34[2] = "DVERTISEMENT_TITLE";
  v20 = sub_29D9334A8();
  v34[3] = v21;
  v34[4] = v20;

  v22 = *MEMORY[0x29EDC1760];
  v23 = *(v12 + 104);
  v34[5] = v16;
  v23(v16, v22, v11);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v24 = qword_2A1A2C038;
  sub_29D934788();
  v25 = sub_29D934798();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
  v34[1] = v10;
  if (qword_2A17B0D80 != -1)
  {
    swift_once();
  }

  v34[0] = sub_29D9334A8();
  sub_29D6CBFE8();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_29D93F680;
  v27 = [v18 bundleForClass_];
  v28 = sub_29D9334A8();
  v30 = v29;

  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  *(v26 + 48) = sub_29D9334A8();
  *(v26 + 56) = v31;
  v32 = sub_29D934358();
  (*(*(v32 - 8) + 56))(v35, 1, 1, v32);
  return sub_29D934988();
}

void sub_29D6DD1FC(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  if (a2())
  {
    v7 = [a1 highestPriorityUnsatisfiedRequirement];
    if (!v7)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v34 = sub_29D937898();
      sub_29D69C6C0(v34, qword_2A1A2C008);
      v35 = sub_29D937878();
      v36 = sub_29D93A2A8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v158 = v38;
        *v37 = 136446210;
        *(v37 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
        _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s:FeatureStatusConfiguration] Onboarded, available, and enabled", v37, 0xCu);
        sub_29D69417C(v38);
        MEMORY[0x29ED6BE30](v38, -1, -1);
        MEMORY[0x29ED6BE30](v37, -1, -1);
      }

      v39 = *MEMORY[0x29EDBA568];
      v40 = sub_29D9371B8();
      v41 = [v40 areAllRequirementsSatisfied];

      if (v41)
      {
        sub_29D6DBE6C(a4);
      }

      else
      {
        sub_29D6DCD08(a4);
      }

      v42 = 0;
      goto LABEL_36;
    }

    v8 = v7;
    v9 = *MEMORY[0x29EDBA618];
    v10 = sub_29D939D68();
    v12 = v11;
    if (v10 == sub_29D939D68() && v12 == v13)
    {
    }

    else
    {
      v15 = sub_29D93AD78();

      if ((v15 & 1) == 0)
      {
        v16 = *MEMORY[0x29EDBA668];
        v17 = sub_29D939D68();
        v19 = v18;
        if (v17 == sub_29D939D68() && v19 == v20)
        {
        }

        else
        {
          v22 = sub_29D93AD78();

          if ((v22 & 1) == 0)
          {
            v23 = *MEMORY[0x29EDBA6A0];
            v24 = sub_29D939D68();
            v26 = v25;
            if (v24 == sub_29D939D68() && v26 == v27)
            {

LABEL_46:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v52 = sub_29D937898();
              sub_29D69C6C0(v52, qword_2A1A2C008);
              v53 = sub_29D937878();
              v54 = sub_29D93A2A8();
              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                v158 = v56;
                *v55 = 136446210;
                *(v55 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
                _os_log_impl(&dword_29D677000, v53, v54, "[%{public}s:FeatureStatusConfiguration] Heart rate app not installed, treating as unavailable", v55, 0xCu);
                sub_29D69417C(v56);
                MEMORY[0x29ED6BE30](v56, -1, -1);
                MEMORY[0x29ED6BE30](v55, -1, -1);
              }

              sub_29D6D9804(a4);
              goto LABEL_51;
            }

            v51 = sub_29D93AD78();

            if (v51)
            {
              goto LABEL_46;
            }

            v57 = *MEMORY[0x29EDBA640];
            v58 = sub_29D939D68();
            v60 = v59;
            if (v58 == sub_29D939D68() && v60 == v61)
            {

LABEL_56:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v63 = sub_29D937898();
              sub_29D69C6C0(v63, qword_2A1A2C008);
              v64 = sub_29D937878();
              v65 = sub_29D93A2A8();
              if (os_log_type_enabled(v64, v65))
              {
                v66 = swift_slowAlloc();
                v67 = swift_slowAlloc();
                v158 = v67;
                *v66 = 136446210;
                *(v66 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
                _os_log_impl(&dword_29D677000, v64, v65, "[%{public}s:FeatureStatusConfiguration] Age gated, treating as unavailable", v66, 0xCu);
                sub_29D69417C(v67);
                MEMORY[0x29ED6BE30](v67, -1, -1);
                MEMORY[0x29ED6BE30](v66, -1, -1);
              }

              sub_29D6D9C74(a4);
              goto LABEL_51;
            }

            v62 = sub_29D93AD78();

            if (v62)
            {
              goto LABEL_56;
            }

            v68 = *MEMORY[0x29EDBA5D8];
            v69 = sub_29D939D68();
            v71 = v70;
            if (v69 == sub_29D939D68() && v71 == v72)
            {

LABEL_65:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v74 = sub_29D937898();
              sub_29D69C6C0(v74, qword_2A1A2C008);
              v75 = sub_29D937878();
              v76 = sub_29D93A2A8();
              if (!os_log_type_enabled(v75, v76))
              {
                goto LABEL_70;
              }

              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v158 = v78;
              *v77 = 136446210;
              *(v77 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
              v79 = "[%{public}s:FeatureStatusConfiguration] Country not supported on local device, treating as unavailable";
LABEL_69:
              _os_log_impl(&dword_29D677000, v75, v76, v79, v77, 0xCu);
              sub_29D69417C(v78);
              MEMORY[0x29ED6BE30](v78, -1, -1);
              MEMORY[0x29ED6BE30](v77, -1, -1);
LABEL_70:

              sub_29D6DA0E4(a4);
LABEL_51:

              v42 = 0;
              goto LABEL_36;
            }

            v73 = sub_29D93AD78();

            if (v73)
            {
              goto LABEL_65;
            }

            v80 = *MEMORY[0x29EDBA5D0];
            v81 = sub_29D939D68();
            v83 = v82;
            if (v81 == sub_29D939D68() && v83 == v84)
            {

LABEL_75:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v86 = sub_29D937898();
              sub_29D69C6C0(v86, qword_2A1A2C008);
              v75 = sub_29D937878();
              v76 = sub_29D93A2A8();
              if (!os_log_type_enabled(v75, v76))
              {
                goto LABEL_70;
              }

              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v158 = v78;
              *v77 = 136446210;
              *(v77 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
              v79 = "[%{public}s:FeatureStatusConfiguration] Country not supported on active remote device, treating as unavailable";
              goto LABEL_69;
            }

            v85 = sub_29D93AD78();

            if (v85)
            {
              goto LABEL_75;
            }

            v87 = *MEMORY[0x29EDBA5C8];
            v88 = sub_29D939D68();
            v90 = v89;
            if (v88 == sub_29D939D68() && v90 == v91)
            {

LABEL_83:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v93 = sub_29D937898();
              sub_29D69C6C0(v93, qword_2A1A2C008);
              v94 = sub_29D937878();
              v95 = sub_29D93A2A8();
              if (os_log_type_enabled(v94, v95))
              {
                v96 = swift_slowAlloc();
                v97 = swift_slowAlloc();
                v158 = v97;
                *v96 = 136446210;
                *(v96 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
                _os_log_impl(&dword_29D677000, v94, v95, "[%{public}s:FeatureStatusConfiguration] Capability not supported on active watch, treating as unavailable", v96, 0xCu);
                sub_29D69417C(v97);
                MEMORY[0x29ED6BE30](v97, -1, -1);
                MEMORY[0x29ED6BE30](v96, -1, -1);
              }

              sub_29D6DA554(a3, a4);
              goto LABEL_51;
            }

            v92 = sub_29D93AD78();

            if (v92)
            {
              goto LABEL_83;
            }

            v98 = *MEMORY[0x29EDBA5B8];
            v99 = sub_29D939D68();
            v101 = v100;
            if (v99 == sub_29D939D68() && v101 == v102)
            {

LABEL_92:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v104 = sub_29D937898();
              sub_29D69C6C0(v104, qword_2A1A2C008);
              v105 = sub_29D937878();
              v106 = sub_29D93A2A8();
              if (os_log_type_enabled(v105, v106))
              {
                v107 = swift_slowAlloc();
                v108 = swift_slowAlloc();
                v158 = v108;
                *v107 = 136446210;
                *(v107 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
                _os_log_impl(&dword_29D677000, v105, v106, "[%{public}s:FeatureStatusConfiguration] Age is not present, treating as unavailable", v107, 0xCu);
                sub_29D69417C(v108);
                MEMORY[0x29ED6BE30](v108, -1, -1);
                MEMORY[0x29ED6BE30](v107, -1, -1);
              }

              sub_29D6DA9F4(a4);
              goto LABEL_51;
            }

            v103 = sub_29D93AD78();

            if (v103)
            {
              goto LABEL_92;
            }

            v109 = *MEMORY[0x29EDBA620];
            v110 = sub_29D939D68();
            v112 = v111;
            if (v110 == sub_29D939D68() && v112 == v113)
            {

LABEL_101:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v115 = sub_29D937898();
              sub_29D69C6C0(v115, qword_2A1A2C008);
              v116 = sub_29D937878();
              v117 = sub_29D93A2A8();
              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v119 = swift_slowAlloc();
                v158 = v119;
                *v118 = 136446210;
                *(v118 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
                _os_log_impl(&dword_29D677000, v116, v117, "[%{public}s:FeatureStatusConfiguration] Heart rate is not enabled, treating as unavailable", v118, 0xCu);
                sub_29D69417C(v119);
                MEMORY[0x29ED6BE30](v119, -1, -1);
                MEMORY[0x29ED6BE30](v118, -1, -1);
              }

              sub_29D6DAFD4(a4);
              goto LABEL_51;
            }

            v114 = sub_29D93AD78();

            if (v114)
            {
              goto LABEL_101;
            }

            v120 = *MEMORY[0x29EDBA660];
            v121 = sub_29D939D68();
            v123 = v122;
            if (v121 == sub_29D939D68() && v123 == v124)
            {

LABEL_110:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v126 = sub_29D937898();
              sub_29D69C6C0(v126, qword_2A1A2C008);
              v127 = sub_29D937878();
              v128 = sub_29D93A2A8();
              if (os_log_type_enabled(v127, v128))
              {
                v129 = swift_slowAlloc();
                v130 = swift_slowAlloc();
                v158 = v130;
                *v129 = 136446210;
                *(v129 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
                _os_log_impl(&dword_29D677000, v127, v128, "[%{public}s:FeatureStatusConfiguration] Notification details not entered, treating as not onboarded", v129, 0xCu);
                sub_29D69417C(v130);
                MEMORY[0x29ED6BE30](v130, -1, -1);
                MEMORY[0x29ED6BE30](v129, -1, -1);
              }

              v131 = *MEMORY[0x29EDBA568];
              v132 = sub_29D9371B8();
              v133 = [v132 areAllRequirementsSatisfied];

              if (v133)
              {
                sub_29D6DB4F4(a4);
              }

              else
              {
                sub_29D6DC814(a4);
              }

              goto LABEL_51;
            }

            v125 = sub_29D93AD78();

            if (v125)
            {
              goto LABEL_110;
            }

            v134 = *MEMORY[0x29EDBA608];
            v135 = sub_29D939D68();
            v137 = v136;
            if (v135 == sub_29D939D68() && v137 == v138)
            {

LABEL_121:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v140 = sub_29D937898();
              sub_29D69C6C0(v140, qword_2A1A2C008);
              v141 = sub_29D937878();
              v142 = sub_29D93A2A8();
              if (os_log_type_enabled(v141, v142))
              {
                v143 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                v158 = v144;
                *v143 = 136446210;
                *(v143 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
                _os_log_impl(&dword_29D677000, v141, v142, "[%{public}s:FeatureStatusConfiguration] Onboarded and available but feature disabled", v143, 0xCu);
                sub_29D69417C(v144);
                MEMORY[0x29ED6BE30](v144, -1, -1);
                MEMORY[0x29ED6BE30](v143, -1, -1);
              }

              v145 = *MEMORY[0x29EDBA568];
              v146 = sub_29D9371B8();
              v147 = [v146 areAllRequirementsSatisfied];

              if (v147)
              {
                sub_29D6DB9B0(a4);
              }

              else
              {
                sub_29D6DC320(a4);
              }

              goto LABEL_51;
            }

            v139 = sub_29D93AD78();

            if (v139)
            {
              goto LABEL_121;
            }

            if (qword_2A1A25718 != -1)
            {
              swift_once();
            }

            v148 = sub_29D937898();
            sub_29D69C6C0(v148, qword_2A1A2C008);
            v149 = a1;
            v29 = sub_29D937878();
            v150 = sub_29D93A298();
            if (!os_log_type_enabled(v29, v150))
            {

              goto LABEL_35;
            }

            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v158 = v152;
            *v151 = 136446466;
            *(v151 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
            *(v151 + 12) = 2082;
            v153 = [v149 highestPriorityUnsatisfiedRequirement];

            if (!v153)
            {
              __break(1u);
              return;
            }

            v154 = sub_29D939D68();
            v156 = v155;

            v157 = sub_29D6C2364(v154, v156, &v158);

            *(v151 + 14) = v157;
            _os_log_impl(&dword_29D677000, v29, v150, "[%{public}s:FeatureStatusConfiguration] Unhandled, unsatisfied requirement encountered: %{public}s", v151, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED6BE30](v152, -1, -1);
            v33 = v151;
            goto LABEL_20;
          }
        }

        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v50 = sub_29D937898();
        sub_29D69C6C0(v50, qword_2A1A2C008);
        v29 = sub_29D937878();
        v44 = sub_29D93A2A8();
        if (!os_log_type_enabled(v29, v44))
        {
LABEL_34:

          goto LABEL_35;
        }

        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v158 = v46;
        *v45 = 136446210;
        *(v45 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
        v47 = "[%{public}s:FeatureStatusConfiguration] Not background delivered, meaning we do not have a supported device yet";
LABEL_33:
        _os_log_impl(&dword_29D677000, v29, v44, v47, v45, 0xCu);
        sub_29D69417C(v46);
        MEMORY[0x29ED6BE30](v46, -1, -1);
        MEMORY[0x29ED6BE30](v45, -1, -1);
        goto LABEL_34;
      }
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v43 = sub_29D937898();
    sub_29D69C6C0(v43, qword_2A1A2C008);
    v29 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (!os_log_type_enabled(v29, v44))
    {
      goto LABEL_34;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v158 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
    v47 = "[%{public}s:FeatureStatusConfiguration] Health app hidden, hiding";
    goto LABEL_33;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v28 = sub_29D937898();
  sub_29D69C6C0(v28, qword_2A1A2C008);
  v29 = sub_29D937878();
  v30 = sub_29D93A2A8();
  if (!os_log_type_enabled(v29, v30))
  {
    goto LABEL_35;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v158 = v32;
  *v31 = 136446210;
  *(v31 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v158);
  _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s:FeatureStatusConfiguration] Cardio fitness not visible, hiding", v31, 0xCu);
  sub_29D69417C(v32);
  MEMORY[0x29ED6BE30](v32, -1, -1);
  v33 = v31;
LABEL_20:
  MEMORY[0x29ED6BE30](v33, -1, -1);
LABEL_35:

  v42 = 1;
LABEL_36:
  v48 = sub_29D9349A8();
  v49 = *(*(v48 - 8) + 56);

  v49(a4, v42, 1, v48);
}

void sub_29D6DE7C4(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  if (a2())
  {
    v7 = [a1 highestPriorityUnsatisfiedRequirement];
    if (!v7)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v34 = sub_29D937898();
      sub_29D69C6C0(v34, qword_2A1A2C008);
      v35 = sub_29D937878();
      v36 = sub_29D93A2A8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v119 = v38;
        *v37 = 136446210;
        *(v37 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
        _os_log_impl(&dword_29D677000, v35, v36, "[%{public}s:FeatureStatusConfiguration] Background delivered and available but onboarding not acknowledged, showing onboarding promotion", v37, 0xCu);
        sub_29D69417C(v38);
        MEMORY[0x29ED6BE30](v38, -1, -1);
        MEMORY[0x29ED6BE30](v37, -1, -1);
      }

      v39 = *MEMORY[0x29EDBA568];
      v40 = sub_29D9371B8();
      v41 = [v40 areAllRequirementsSatisfied];

      if (v41)
      {
        sub_29D6DB4F4(a4);
      }

      else
      {
        sub_29D6DC814(a4);
      }

      v42 = 0;
      goto LABEL_36;
    }

    v8 = v7;
    v9 = *MEMORY[0x29EDBA618];
    v10 = sub_29D939D68();
    v12 = v11;
    if (v10 == sub_29D939D68() && v12 == v13)
    {
    }

    else
    {
      v15 = sub_29D93AD78();

      if ((v15 & 1) == 0)
      {
        v16 = *MEMORY[0x29EDBA668];
        v17 = sub_29D939D68();
        v19 = v18;
        if (v17 == sub_29D939D68() && v19 == v20)
        {
        }

        else
        {
          v22 = sub_29D93AD78();

          if ((v22 & 1) == 0)
          {
            v23 = *MEMORY[0x29EDBA6A0];
            v24 = sub_29D939D68();
            v26 = v25;
            if (v24 == sub_29D939D68() && v26 == v27)
            {

LABEL_46:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v52 = sub_29D937898();
              sub_29D69C6C0(v52, qword_2A1A2C008);
              v53 = sub_29D937878();
              v54 = sub_29D93A2A8();
              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                v119 = v56;
                *v55 = 136446210;
                *(v55 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
                _os_log_impl(&dword_29D677000, v53, v54, "[%{public}s:FeatureStatusConfiguration] Heart rate app not installed, treating as unavailable", v55, 0xCu);
                sub_29D69417C(v56);
                MEMORY[0x29ED6BE30](v56, -1, -1);
                MEMORY[0x29ED6BE30](v55, -1, -1);
              }

              sub_29D6D9804(a4);
              goto LABEL_51;
            }

            v51 = sub_29D93AD78();

            if (v51)
            {
              goto LABEL_46;
            }

            v57 = *MEMORY[0x29EDBA640];
            v58 = sub_29D939D68();
            v60 = v59;
            if (v58 == sub_29D939D68() && v60 == v61)
            {

LABEL_56:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v63 = sub_29D937898();
              sub_29D69C6C0(v63, qword_2A1A2C008);
              v64 = sub_29D937878();
              v65 = sub_29D93A2A8();
              if (os_log_type_enabled(v64, v65))
              {
                v66 = swift_slowAlloc();
                v67 = swift_slowAlloc();
                v119 = v67;
                *v66 = 136446210;
                *(v66 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
                _os_log_impl(&dword_29D677000, v64, v65, "[%{public}s:FeatureStatusConfiguration] Age gated, treating as unavailable", v66, 0xCu);
                sub_29D69417C(v67);
                MEMORY[0x29ED6BE30](v67, -1, -1);
                MEMORY[0x29ED6BE30](v66, -1, -1);
              }

              sub_29D6D9C74(a4);
              goto LABEL_51;
            }

            v62 = sub_29D93AD78();

            if (v62)
            {
              goto LABEL_56;
            }

            v68 = *MEMORY[0x29EDBA5D8];
            v69 = sub_29D939D68();
            v71 = v70;
            if (v69 == sub_29D939D68() && v71 == v72)
            {

LABEL_65:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v74 = sub_29D937898();
              sub_29D69C6C0(v74, qword_2A1A2C008);
              v75 = sub_29D937878();
              v76 = sub_29D93A2A8();
              if (!os_log_type_enabled(v75, v76))
              {
                goto LABEL_70;
              }

              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v119 = v78;
              *v77 = 136446210;
              *(v77 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
              v79 = "[%{public}s:FeatureStatusConfiguration] Country not supported on local device, treating as unavailable";
LABEL_69:
              _os_log_impl(&dword_29D677000, v75, v76, v79, v77, 0xCu);
              sub_29D69417C(v78);
              MEMORY[0x29ED6BE30](v78, -1, -1);
              MEMORY[0x29ED6BE30](v77, -1, -1);
LABEL_70:

              sub_29D6DA0E4(a4);
LABEL_51:

              v42 = 0;
              goto LABEL_36;
            }

            v73 = sub_29D93AD78();

            if (v73)
            {
              goto LABEL_65;
            }

            v80 = *MEMORY[0x29EDBA5D0];
            v81 = sub_29D939D68();
            v83 = v82;
            if (v81 == sub_29D939D68() && v83 == v84)
            {

LABEL_75:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v86 = sub_29D937898();
              sub_29D69C6C0(v86, qword_2A1A2C008);
              v75 = sub_29D937878();
              v76 = sub_29D93A2A8();
              if (!os_log_type_enabled(v75, v76))
              {
                goto LABEL_70;
              }

              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v119 = v78;
              *v77 = 136446210;
              *(v77 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
              v79 = "[%{public}s:FeatureStatusConfiguration] Country not supported on active remote device, treating as unavailable";
              goto LABEL_69;
            }

            v85 = sub_29D93AD78();

            if (v85)
            {
              goto LABEL_75;
            }

            v87 = *MEMORY[0x29EDBA5C8];
            v88 = sub_29D939D68();
            v90 = v89;
            if (v88 == sub_29D939D68() && v90 == v91)
            {

LABEL_83:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v93 = sub_29D937898();
              sub_29D69C6C0(v93, qword_2A1A2C008);
              v94 = sub_29D937878();
              v95 = sub_29D93A2A8();
              if (os_log_type_enabled(v94, v95))
              {
                v96 = swift_slowAlloc();
                v97 = swift_slowAlloc();
                v119 = v97;
                *v96 = 136446210;
                *(v96 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
                _os_log_impl(&dword_29D677000, v94, v95, "[%{public}s:FeatureStatusConfiguration] Capability not supported on active watch, treating as unavailable", v96, 0xCu);
                sub_29D69417C(v97);
                MEMORY[0x29ED6BE30](v97, -1, -1);
                MEMORY[0x29ED6BE30](v96, -1, -1);
              }

              sub_29D6DA554(a3, a4);
              goto LABEL_51;
            }

            v92 = sub_29D93AD78();

            if (v92)
            {
              goto LABEL_83;
            }

            v98 = *MEMORY[0x29EDBA620];
            v99 = sub_29D939D68();
            v101 = v100;
            if (v99 == sub_29D939D68() && v101 == v102)
            {

LABEL_92:
              if (qword_2A1A25718 != -1)
              {
                swift_once();
              }

              v104 = sub_29D937898();
              sub_29D69C6C0(v104, qword_2A1A2C008);
              v105 = sub_29D937878();
              v106 = sub_29D93A2A8();
              if (os_log_type_enabled(v105, v106))
              {
                v107 = swift_slowAlloc();
                v108 = swift_slowAlloc();
                v119 = v108;
                *v107 = 136446210;
                *(v107 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
                _os_log_impl(&dword_29D677000, v105, v106, "[%{public}s:FeatureStatusConfiguration] Heart rate is not enabled, treating as unavailable", v107, 0xCu);
                sub_29D69417C(v108);
                MEMORY[0x29ED6BE30](v108, -1, -1);
                MEMORY[0x29ED6BE30](v107, -1, -1);
              }

              sub_29D6DAFD4(a4);
              goto LABEL_51;
            }

            v103 = sub_29D93AD78();

            if (v103)
            {
              goto LABEL_92;
            }

            if (qword_2A1A25718 != -1)
            {
              swift_once();
            }

            v109 = sub_29D937898();
            sub_29D69C6C0(v109, qword_2A1A2C008);
            v110 = a1;
            v29 = sub_29D937878();
            v111 = sub_29D93A298();
            if (!os_log_type_enabled(v29, v111))
            {

              goto LABEL_35;
            }

            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v119 = v113;
            *v112 = 136446466;
            *(v112 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
            *(v112 + 12) = 2082;
            v114 = [v110 highestPriorityUnsatisfiedRequirement];

            if (!v114)
            {
              __break(1u);
              return;
            }

            v115 = sub_29D939D68();
            v117 = v116;

            v118 = sub_29D6C2364(v115, v117, &v119);

            *(v112 + 14) = v118;
            _os_log_impl(&dword_29D677000, v29, v111, "[%{public}s:FeatureStatusConfiguration] Unhandled, unsatisfied requirement encountered: %{public}s", v112, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED6BE30](v113, -1, -1);
            v33 = v112;
            goto LABEL_20;
          }
        }

        if (qword_2A1A25718 != -1)
        {
          swift_once();
        }

        v50 = sub_29D937898();
        sub_29D69C6C0(v50, qword_2A1A2C008);
        v29 = sub_29D937878();
        v44 = sub_29D93A2A8();
        if (!os_log_type_enabled(v29, v44))
        {
LABEL_34:

          goto LABEL_35;
        }

        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v119 = v46;
        *v45 = 136446210;
        *(v45 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
        v47 = "[%{public}s:FeatureStatusConfiguration] Not background delivered, meaning we do not have a supported device yet";
LABEL_33:
        _os_log_impl(&dword_29D677000, v29, v44, v47, v45, 0xCu);
        sub_29D69417C(v46);
        MEMORY[0x29ED6BE30](v46, -1, -1);
        MEMORY[0x29ED6BE30](v45, -1, -1);
        goto LABEL_34;
      }
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v43 = sub_29D937898();
    sub_29D69C6C0(v43, qword_2A1A2C008);
    v29 = sub_29D937878();
    v44 = sub_29D93A2A8();
    if (!os_log_type_enabled(v29, v44))
    {
      goto LABEL_34;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v119 = v46;
    *v45 = 136446210;
    *(v45 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
    v47 = "[%{public}s:FeatureStatusConfiguration] Health app hidden, hiding";
    goto LABEL_33;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v28 = sub_29D937898();
  sub_29D69C6C0(v28, qword_2A1A2C008);
  v29 = sub_29D937878();
  v30 = sub_29D93A2A8();
  if (!os_log_type_enabled(v29, v30))
  {
    goto LABEL_35;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v119 = v32;
  *v31 = 136446210;
  *(v31 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v119);
  _os_log_impl(&dword_29D677000, v29, v30, "[%{public}s:FeatureStatusConfiguration] Cardio fitness not visible, hiding", v31, 0xCu);
  sub_29D69417C(v32);
  MEMORY[0x29ED6BE30](v32, -1, -1);
  v33 = v31;
LABEL_20:
  MEMORY[0x29ED6BE30](v33, -1, -1);
LABEL_35:

  v42 = 1;
LABEL_36:
  v48 = sub_29D9349A8();
  v49 = *(*(v48 - 8) + 56);

  v49(a4, v42, 1, v48);
}

void sub_29D6DF86C(void *a1@<X0>, NSObject *a2@<X2>, char *a3@<X8>)
{
  if ((sub_29D9347C8() & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v27 = sub_29D937898();
    sub_29D69C6C0(v27, qword_2A1A2C008);
    v28 = sub_29D937878();
    v29 = sub_29D93A2A8();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_33;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v142 = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
    _os_log_impl(&dword_29D677000, v28, v29, "[%{public}s] Cardio fitness not visible, hiding", v30, 0xCu);
    sub_29D69417C(v31);
    MEMORY[0x29ED6BE30](v31, -1, -1);
    v32 = v30;
    goto LABEL_20;
  }

  v6 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v6)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v33 = sub_29D937898();
    sub_29D69C6C0(v33, qword_2A1A2C008);
    v34 = sub_29D937878();
    v35 = sub_29D93A2A8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v142 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
      _os_log_impl(&dword_29D677000, v34, v35, "[%{public}s:ActionHandler] Onboarded, available, and enabled, push feature settings", v36, 0xCu);
      sub_29D69417C(v37);
      MEMORY[0x29ED6BE30](v37, -1, -1);
      MEMORY[0x29ED6BE30](v36, -1, -1);
    }

    sub_29D6E0EB0(a2, a3);
LABEL_26:
    v38 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
LABEL_41:
    swift_storeEnumTagMultiPayload();
    (*(*(v38 - 8) + 56))(a3, 0, 1, v38);
    v43 = 0;
    goto LABEL_42;
  }

  v7 = v6;
  v8 = *MEMORY[0x29EDBA618];
  v9 = sub_29D939D68();
  v11 = v10;
  if (v9 == sub_29D939D68() && v11 == v12)
  {

    goto LABEL_28;
  }

  v14 = sub_29D93AD78();

  if (v14)
  {
LABEL_28:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v39 = sub_29D937898();
    sub_29D69C6C0(v39, qword_2A1A2C008);
    v28 = sub_29D937878();
    v40 = sub_29D93A2A8();
    if (os_log_type_enabled(v28, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v142 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
      _os_log_impl(&dword_29D677000, v28, v40, "[%{public}s:ActionHandler] Health app hidden, no action", v41, 0xCu);
      sub_29D69417C(v42);
      MEMORY[0x29ED6BE30](v42, -1, -1);
      MEMORY[0x29ED6BE30](v41, -1, -1);
    }

    goto LABEL_33;
  }

  v15 = *MEMORY[0x29EDBA6A0];
  v16 = sub_29D939D68();
  v18 = v17;
  if (v16 == sub_29D939D68() && v18 == v19)
  {

    goto LABEL_35;
  }

  v21 = sub_29D93AD78();

  if (v21)
  {
LABEL_35:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v44 = sub_29D937898();
    sub_29D69C6C0(v44, qword_2A1A2C008);
    v45 = sub_29D937878();
    v46 = sub_29D93A2A8();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_40;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v142 = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
    v49 = "[%{public}s:ActionHandler] Heart rate app not installed, open knowledge base article";
LABEL_39:
    _os_log_impl(&dword_29D677000, v45, v46, v49, v47, 0xCu);
    sub_29D69417C(v48);
    MEMORY[0x29ED6BE30](v48, -1, -1);
    MEMORY[0x29ED6BE30](v47, -1, -1);
LABEL_40:

    v38 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
    goto LABEL_41;
  }

  v22 = *MEMORY[0x29EDBA640];
  v23 = sub_29D939D68();
  v25 = v24;
  if (v23 == sub_29D939D68() && v25 == v26)
  {

LABEL_46:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v53 = sub_29D937898();
    sub_29D69C6C0(v53, qword_2A1A2C008);
    v45 = sub_29D937878();
    v46 = sub_29D93A2A8();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_40;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v142 = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
    v49 = "[%{public}s:ActionHandler] Age gated, open knowledge base article";
    goto LABEL_39;
  }

  v52 = sub_29D93AD78();

  if (v52)
  {
    goto LABEL_46;
  }

  v54 = *MEMORY[0x29EDBA5D8];
  v55 = sub_29D939D68();
  v57 = v56;
  if (v55 == sub_29D939D68() && v57 == v58)
  {

LABEL_54:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v60 = sub_29D937898();
    sub_29D69C6C0(v60, qword_2A1A2C008);
    v45 = sub_29D937878();
    v46 = sub_29D93A2A8();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_40;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v142 = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
    v49 = "[%{public}s:ActionHandler] Country not supported on local device, open knowledge base article";
    goto LABEL_39;
  }

  v59 = sub_29D93AD78();

  if (v59)
  {
    goto LABEL_54;
  }

  v61 = *MEMORY[0x29EDBA5D0];
  v62 = sub_29D939D68();
  v64 = v63;
  if (v62 == sub_29D939D68() && v64 == v65)
  {

LABEL_62:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v67 = sub_29D937898();
    sub_29D69C6C0(v67, qword_2A1A2C008);
    v45 = sub_29D937878();
    v46 = sub_29D93A2A8();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_40;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v142 = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
    v49 = "[%{public}s:ActionHandler] Country not supported on active remote device, open knowledge base article";
    goto LABEL_39;
  }

  v66 = sub_29D93AD78();

  if (v66)
  {
    goto LABEL_62;
  }

  v68 = *MEMORY[0x29EDBA5C8];
  v69 = sub_29D939D68();
  v71 = v70;
  if (v69 == sub_29D939D68() && v71 == v72)
  {

LABEL_70:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v74 = sub_29D937898();
    sub_29D69C6C0(v74, qword_2A1A2C008);
    v45 = sub_29D937878();
    v46 = sub_29D93A2A8();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_40;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v142 = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
    v49 = "[%{public}s:ActionHandler] Capability not supported on active watch, open knowledge base article";
    goto LABEL_39;
  }

  v73 = sub_29D93AD78();

  if (v73)
  {
    goto LABEL_70;
  }

  v75 = *MEMORY[0x29EDBA5B8];
  v76 = sub_29D939D68();
  v78 = v77;
  if (v76 == sub_29D939D68() && v78 == v79)
  {

LABEL_78:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v81 = sub_29D937898();
    sub_29D69C6C0(v81, qword_2A1A2C008);
    v45 = sub_29D937878();
    v82 = sub_29D93A2A8();
    if (os_log_type_enabled(v45, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v142 = v84;
      *v83 = 136446210;
      *(v83 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
      _os_log_impl(&dword_29D677000, v45, v82, "[%{public}s:ActionHandler] Age is not present, present health details", v83, 0xCu);
      sub_29D69417C(v84);
      MEMORY[0x29ED6BE30](v84, -1, -1);
      MEMORY[0x29ED6BE30](v83, -1, -1);
    }

    goto LABEL_40;
  }

  v80 = sub_29D93AD78();

  if (v80)
  {
    goto LABEL_78;
  }

  v85 = *MEMORY[0x29EDBA620];
  v86 = sub_29D939D68();
  v88 = v87;
  if (v86 == sub_29D939D68() && v88 == v89)
  {

LABEL_87:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v91 = sub_29D937898();
    sub_29D69C6C0(v91, qword_2A1A2C008);
    v45 = sub_29D937878();
    v92 = sub_29D93A2A8();
    if (os_log_type_enabled(v45, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v142 = v94;
      *v93 = 136446210;
      *(v93 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
      _os_log_impl(&dword_29D677000, v45, v92, "[%{public}s:ActionHandler] Heart rate is not enabled, deep link to heart rate settings", v93, 0xCu);
      sub_29D69417C(v94);
      MEMORY[0x29ED6BE30](v94, -1, -1);
      MEMORY[0x29ED6BE30](v93, -1, -1);
    }

    goto LABEL_40;
  }

  v90 = sub_29D93AD78();

  if (v90)
  {
    goto LABEL_87;
  }

  v95 = *MEMORY[0x29EDBA668];
  v96 = sub_29D939D68();
  v98 = v97;
  if (v96 == sub_29D939D68() && v98 == v99)
  {

LABEL_96:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v101 = sub_29D937898();
    sub_29D69C6C0(v101, qword_2A1A2C008);
    v45 = sub_29D937878();
    v102 = sub_29D93A2A8();
    if (!os_log_type_enabled(v45, v102))
    {
      goto LABEL_40;
    }

    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v142 = v104;
    *v103 = 136446210;
    *(v103 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
    v105 = "[%{public}s:ActionHandler] Not background delivered, present onboarding";
    goto LABEL_100;
  }

  v100 = sub_29D93AD78();

  if (v100)
  {
    goto LABEL_96;
  }

  v106 = *MEMORY[0x29EDBA660];
  v107 = sub_29D939D68();
  v109 = v108;
  if (v107 == sub_29D939D68() && v109 == v110)
  {

LABEL_106:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v112 = sub_29D937898();
    sub_29D69C6C0(v112, qword_2A1A2C008);
    v45 = sub_29D937878();
    v102 = sub_29D93A2A8();
    if (!os_log_type_enabled(v45, v102))
    {
      goto LABEL_40;
    }

    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v142 = v104;
    *v103 = 136446210;
    *(v103 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
    v105 = "[%{public}s:ActionHandler] Notification details not entered, present onboarding";
LABEL_100:
    _os_log_impl(&dword_29D677000, v45, v102, v105, v103, 0xCu);
    sub_29D69417C(v104);
    MEMORY[0x29ED6BE30](v104, -1, -1);
    MEMORY[0x29ED6BE30](v103, -1, -1);
    goto LABEL_40;
  }

  v111 = sub_29D93AD78();

  if (v111)
  {
    goto LABEL_106;
  }

  v113 = *MEMORY[0x29EDBA608];
  v114 = sub_29D939D68();
  v116 = v115;
  if (v114 == sub_29D939D68() && v116 == v117)
  {

LABEL_114:
    v119 = *MEMORY[0x29EDBA568];
    v120 = sub_29D9371B8();
    v121 = [v120 areAllRequirementsSatisfied];

    if (v121)
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v122 = sub_29D937898();
      sub_29D69C6C0(v122, qword_2A1A2C008);
      v123 = sub_29D937878();
      v124 = sub_29D93A2A8();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v142 = v126;
        *v125 = 136446210;
        *(v125 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
        _os_log_impl(&dword_29D677000, v123, v124, "[%{public}s:ActionHandler] Onboarded and available but feature disabled, present feature settings and enable", v125, 0xCu);
        sub_29D69417C(v126);
        MEMORY[0x29ED6BE30](v126, -1, -1);
        MEMORY[0x29ED6BE30](v125, -1, -1);
      }

      sub_29D6E0EB0(a2, a3);
      v38 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
      goto LABEL_41;
    }

    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v127 = sub_29D937898();
    sub_29D69C6C0(v127, qword_2A1A2C008);
    v128 = sub_29D937878();
    v129 = sub_29D93A2A8();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v142 = v131;
      *v130 = 136446210;
      *(v130 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
      _os_log_impl(&dword_29D677000, v128, v129, "[%{public}s:ActionHandler] Onboarded and available but feature inactive, push feature settings but do not enable", v130, 0xCu);
      sub_29D69417C(v131);
      MEMORY[0x29ED6BE30](v131, -1, -1);
      MEMORY[0x29ED6BE30](v130, -1, -1);
    }

    sub_29D6E0EB0(a2, a3);
    goto LABEL_26;
  }

  v118 = sub_29D93AD78();

  if (v118)
  {
    goto LABEL_114;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v132 = sub_29D937898();
  sub_29D69C6C0(v132, qword_2A1A2C008);
  v133 = a1;
  v28 = sub_29D937878();
  v134 = sub_29D93A298();
  if (!os_log_type_enabled(v28, v134))
  {

    goto LABEL_33;
  }

  v135 = swift_slowAlloc();
  v136 = swift_slowAlloc();
  v142 = v136;
  *v135 = 136446466;
  *(v135 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v142);
  *(v135 + 12) = 2082;
  v137 = [v133 highestPriorityUnsatisfiedRequirement];

  if (!v137)
  {
    __break(1u);
    return;
  }

  v138 = sub_29D939D68();
  v140 = v139;

  v141 = sub_29D6C2364(v138, v140, &v142);

  *(v135 + 14) = v141;
  _os_log_impl(&dword_29D677000, v28, v134, "[%{public}s:ActionHandler] Unhandled, unsatisfied requirement encountered: %{public}s", v135, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x29ED6BE30](v136, -1, -1);
  v32 = v135;
LABEL_20:
  MEMORY[0x29ED6BE30](v32, -1, -1);
LABEL_33:

  v43 = 1;
LABEL_42:
  v50 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData(0);
  v51 = *(*(v50 - 8) + 56);

  v51(a3, v43, 1, v50);
}

double sub_29D6E0EB0@<D0>(NSObject *a1@<X1>, char *a2@<X8>)
{
  v34[1] = a1;
  v3 = sub_29D9346E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v3, v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = v34 - v12;
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v34 - v15;
  if (sub_29D934968())
  {
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v17 = sub_29D937898();
    sub_29D69C6C0(v17, qword_2A1A2C008);
    v18 = sub_29D937878();
    v19 = sub_29D93A298();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34[0] = v18;
      v22 = v21;
      *&v35[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, v35);
      v23 = v19;
      v24 = v34[0];
      _os_log_impl(&dword_29D677000, v34[0], v23, "[%{public}s] Expected to have primary description content but it's not present", v20, 0xCu);
      sub_29D69417C(v22);
      MEMORY[0x29ED6BE30](v22, -1, -1);
      MEMORY[0x29ED6BE30](v20, -1, -1);
    }

    else
    {
    }
  }

  sub_29D934958();
  v25 = *(v4 + 32);
  v25(v13, v16, v3);
  v26 = (*(v4 + 88))(v13, v3);
  if (v26 == *MEMORY[0x29EDC1760])
  {
    v27 = 1;
  }

  else if (v26 == *MEMORY[0x29EDC1768])
  {
    v27 = 2;
  }

  else
  {
    (*(v4 + 8))(v13, v3);
    v27 = 0;
  }

  sub_29D934958();
  v28 = sub_29D934968();
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = MEMORY[0x29EDCA190];
  }

  sub_29D6E21DC(v35);
  *a2 = v27;
  v30 = type metadata accessor for CardioFitnessHealthChecklistSettingsState();
  v25(&a2[v30[5]], v9, v3);
  *&a2[v30[6]] = v29;
  v31 = &a2[v30[7]];
  v32 = v35[1];
  *v31 = v35[0];
  *(v31 + 1) = v32;
  result = *&v36;
  *(v31 + 2) = v36;
  return result;
}

void sub_29D6E11FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ((sub_29D9347C8() & 1) == 0)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v25 = sub_29D937898();
    sub_29D69C6C0(v25, qword_2A1A2C008);
    v26 = sub_29D937878();
    v27 = sub_29D93A2A8();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_33;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v101 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
    _os_log_impl(&dword_29D677000, v26, v27, "[%{public}s] Cardio fitness not visible, hiding", v28, 0xCu);
    sub_29D69417C(v29);
    MEMORY[0x29ED6BE30](v29, -1, -1);
    v30 = v28;
    goto LABEL_20;
  }

  v4 = [a1 highestPriorityUnsatisfiedRequirement];
  if (!v4)
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v31 = sub_29D937898();
    sub_29D69C6C0(v31, qword_2A1A2C008);
    v32 = sub_29D937878();
    v33 = sub_29D93A2A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v101 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
      _os_log_impl(&dword_29D677000, v32, v33, "[%{public}s:ActionHandler] Not onboarded but no reason why we can't, present onboarding", v34, 0xCu);
      sub_29D69417C(v35);
      MEMORY[0x29ED6BE30](v35, -1, -1);
      MEMORY[0x29ED6BE30](v34, -1, -1);
    }

    v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
    goto LABEL_41;
  }

  v5 = v4;
  v6 = *MEMORY[0x29EDBA618];
  v7 = sub_29D939D68();
  v9 = v8;
  if (v7 == sub_29D939D68() && v9 == v10)
  {

    goto LABEL_27;
  }

  v12 = sub_29D93AD78();

  if (v12)
  {
LABEL_27:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v37 = sub_29D937898();
    sub_29D69C6C0(v37, qword_2A1A2C008);
    v26 = sub_29D937878();
    v38 = sub_29D93A2A8();
    if (!os_log_type_enabled(v26, v38))
    {
      goto LABEL_32;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v101 = v40;
    *v39 = 136446210;
    *(v39 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
    v41 = "[%{public}s:ActionHandler] Health app hidden, no action";
    goto LABEL_31;
  }

  v13 = *MEMORY[0x29EDBA6A0];
  v14 = sub_29D939D68();
  v16 = v15;
  if (v14 == sub_29D939D68() && v16 == v17)
  {

    goto LABEL_35;
  }

  v19 = sub_29D93AD78();

  if (v19)
  {
LABEL_35:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v43 = sub_29D937898();
    sub_29D69C6C0(v43, qword_2A1A2C008);
    v44 = sub_29D937878();
    v45 = sub_29D93A2A8();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_40;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v101 = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
    v48 = "[%{public}s:ActionHandler] Heart rate app not installed, open knowledge base article";
    goto LABEL_39;
  }

  v20 = *MEMORY[0x29EDBA640];
  v21 = sub_29D939D68();
  v23 = v22;
  if (v21 == sub_29D939D68() && v23 == v24)
  {

LABEL_46:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v52 = sub_29D937898();
    sub_29D69C6C0(v52, qword_2A1A2C008);
    v44 = sub_29D937878();
    v45 = sub_29D93A2A8();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_40;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v101 = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
    v48 = "[%{public}s:ActionHandler] Age gated, open knowledge base article";
LABEL_39:
    _os_log_impl(&dword_29D677000, v44, v45, v48, v46, 0xCu);
    sub_29D69417C(v47);
    MEMORY[0x29ED6BE30](v47, -1, -1);
    MEMORY[0x29ED6BE30](v46, -1, -1);
LABEL_40:

    v36 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData.TapAction(0);
LABEL_41:
    swift_storeEnumTagMultiPayload();
    (*(*(v36 - 8) + 56))(a2, 0, 1, v36);
    v42 = 0;
    goto LABEL_42;
  }

  v51 = sub_29D93AD78();

  if (v51)
  {
    goto LABEL_46;
  }

  v53 = *MEMORY[0x29EDBA5D8];
  v54 = sub_29D939D68();
  v56 = v55;
  if (v54 == sub_29D939D68() && v56 == v57)
  {

LABEL_54:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v59 = sub_29D937898();
    sub_29D69C6C0(v59, qword_2A1A2C008);
    v44 = sub_29D937878();
    v45 = sub_29D93A2A8();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_40;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v101 = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
    v48 = "[%{public}s:ActionHandler] Country not supported on local device, open knowledge base article";
    goto LABEL_39;
  }

  v58 = sub_29D93AD78();

  if (v58)
  {
    goto LABEL_54;
  }

  v60 = *MEMORY[0x29EDBA5D0];
  v61 = sub_29D939D68();
  v63 = v62;
  if (v61 == sub_29D939D68() && v63 == v64)
  {

LABEL_62:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v66 = sub_29D937898();
    sub_29D69C6C0(v66, qword_2A1A2C008);
    v44 = sub_29D937878();
    v45 = sub_29D93A2A8();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_40;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v101 = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
    v48 = "[%{public}s:ActionHandler] Country not supported on active remote device, open knowledge base article";
    goto LABEL_39;
  }

  v65 = sub_29D93AD78();

  if (v65)
  {
    goto LABEL_62;
  }

  v67 = *MEMORY[0x29EDBA5C8];
  v68 = sub_29D939D68();
  v70 = v69;
  if (v68 == sub_29D939D68() && v70 == v71)
  {

LABEL_70:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v73 = sub_29D937898();
    sub_29D69C6C0(v73, qword_2A1A2C008);
    v44 = sub_29D937878();
    v45 = sub_29D93A2A8();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_40;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v101 = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
    v48 = "[%{public}s:ActionHandler] Capability not supported on active watch, open knowledge base article";
    goto LABEL_39;
  }

  v72 = sub_29D93AD78();

  if (v72)
  {
    goto LABEL_70;
  }

  v74 = *MEMORY[0x29EDBA620];
  v75 = sub_29D939D68();
  v77 = v76;
  if (v75 == sub_29D939D68() && v77 == v78)
  {

LABEL_78:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v80 = sub_29D937898();
    sub_29D69C6C0(v80, qword_2A1A2C008);
    v44 = sub_29D937878();
    v81 = sub_29D93A2A8();
    if (os_log_type_enabled(v44, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v101 = v83;
      *v82 = 136446210;
      *(v82 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
      _os_log_impl(&dword_29D677000, v44, v81, "[%{public}s:ActionHandler] Heart rate is not enabled, deep link to heart rate settings", v82, 0xCu);
      sub_29D69417C(v83);
      MEMORY[0x29ED6BE30](v83, -1, -1);
      MEMORY[0x29ED6BE30](v82, -1, -1);
    }

    goto LABEL_40;
  }

  v79 = sub_29D93AD78();

  if (v79)
  {
    goto LABEL_78;
  }

  v84 = *MEMORY[0x29EDBA668];
  v85 = sub_29D939D68();
  v87 = v86;
  if (v85 == sub_29D939D68() && v87 == v88)
  {

LABEL_87:
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v90 = sub_29D937898();
    sub_29D69C6C0(v90, qword_2A1A2C008);
    v26 = sub_29D937878();
    v38 = sub_29D93A2A8();
    if (!os_log_type_enabled(v26, v38))
    {
      goto LABEL_32;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v101 = v40;
    *v39 = 136446210;
    *(v39 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
    v41 = "[%{public}s:ActionHandler] Background delivered onboarding record not present, no action";
LABEL_31:
    _os_log_impl(&dword_29D677000, v26, v38, v41, v39, 0xCu);
    sub_29D69417C(v40);
    MEMORY[0x29ED6BE30](v40, -1, -1);
    MEMORY[0x29ED6BE30](v39, -1, -1);
LABEL_32:

    goto LABEL_33;
  }

  v89 = sub_29D93AD78();

  if (v89)
  {
    goto LABEL_87;
  }

  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v91 = sub_29D937898();
  sub_29D69C6C0(v91, qword_2A1A2C008);
  v92 = a1;
  v26 = sub_29D937878();
  v93 = sub_29D93A298();
  if (!os_log_type_enabled(v26, v93))
  {

    goto LABEL_33;
  }

  v94 = swift_slowAlloc();
  v95 = swift_slowAlloc();
  v101 = v95;
  *v94 = 136446466;
  *(v94 + 4) = sub_29D6C2364(0xD00000000000002DLL, 0x800000029D959DB0, &v101);
  *(v94 + 12) = 2082;
  v96 = [v92 highestPriorityUnsatisfiedRequirement];

  if (!v96)
  {
    __break(1u);
    return;
  }

  v97 = sub_29D939D68();
  v99 = v98;

  v100 = sub_29D6C2364(v97, v99, &v101);

  *(v94 + 14) = v100;
  _os_log_impl(&dword_29D677000, v26, v93, "[%{public}s:ActionHandler] Unhandled, unsatisfied requirement encountered: %{public}s", v94, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x29ED6BE30](v95, -1, -1);
  v30 = v94;
LABEL_20:
  MEMORY[0x29ED6BE30](v30, -1, -1);
LABEL_33:

  v42 = 1;
LABEL_42:
  v49 = type metadata accessor for CardioFitnessFeatureStatusActionHandlerUserData(0);
  v50 = *(*(v49 - 8) + 56);

  v50(a2, v42, 1, v49);
}

void sub_29D6E21DC(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x29EDC5140];
  v3 = sub_29D9371B8();
  v4 = [v3 highestPriorityUnsatisfiedRequirement];

  if (v4)
  {
    v5 = *MEMORY[0x29EDBA640];
    v6 = sub_29D939D68();
    v8 = v7;
    if (v6 == sub_29D939D68() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_29D93AD78();

      if ((v11 & 1) == 0)
      {
        v12 = *MEMORY[0x29EDBA5B8];
        v13 = sub_29D939D68();
        v15 = v14;
        if (v13 == sub_29D939D68() && v15 == v16)
        {
        }

        else
        {
          v18 = sub_29D93AD78();

          if ((v18 & 1) == 0)
          {
            v19 = *MEMORY[0x29EDBA5D0];
            v20 = sub_29D939D68();
            v22 = v21;
            if (v20 == sub_29D939D68() && v22 == v23)
            {

LABEL_27:
              v38 = [objc_opt_self() cardioFitnessPairedDeviceRegionGatedFooterDescription];
              goto LABEL_20;
            }

            v53 = sub_29D93AD78();

            if (v53)
            {
              goto LABEL_27;
            }

            v54 = *MEMORY[0x29EDBA6A8];
            v55 = sub_29D939D68();
            v57 = v56;
            if (v55 == sub_29D939D68() && v57 == v58)
            {

LABEL_32:
              v60 = objc_opt_self();
              v61 = [v60 cardioFitnessWristDetectFooterDescriptionWithLink];
              v30 = sub_29D939D68();
              v32 = v62;

              v63 = [v60 cardioFitnessWristDetectFooterLinkTitle];
              v34 = sub_29D939D68();
              v36 = v64;

              v50 = [v60 cardioFitnessWristDetectFooterLinkURL];
              goto LABEL_24;
            }

            v59 = sub_29D93AD78();

            if (v59)
            {
              goto LABEL_32;
            }

            v65 = *MEMORY[0x29EDBA568];
            v66 = sub_29D9371B8();
            v67 = [v66 areAllRequirementsSatisfied];

            v27 = objc_opt_self();
            v28 = v27;
            if (!v67)
            {
              goto LABEL_21;
            }

            goto LABEL_16;
          }
        }

        v45 = objc_opt_self();
        v46 = [v45 cardioFitnessAgeDeletedFooterDescriptionWithLink];
        v30 = sub_29D939D68();
        v32 = v47;

        v48 = [v45 cardioFitnessAgeDeletedFooterLinkTitle];
        v34 = sub_29D939D68();
        v36 = v49;

        v50 = [v45 cardioFitnessAgeDeletedFooterLinkURL];
LABEL_24:
        v51 = v50;
        v42 = sub_29D939D68();
        v44 = v52;

        goto LABEL_25;
      }
    }

    v38 = [objc_opt_self() cardioFitnessAgeRestrictedFooterDescription];
LABEL_20:
    v39 = v38;
    v30 = sub_29D939D68();
    v32 = v40;

    v34 = 0;
    v36 = 0;
    v42 = 0;
    v44 = 0;
    goto LABEL_25;
  }

  v24 = *MEMORY[0x29EDBA568];
  v25 = sub_29D9371B8();
  v26 = [v25 areAllRequirementsSatisfied];

  v27 = objc_opt_self();
  v28 = v27;
  if (!v26)
  {
LABEL_21:
    v29 = [v27 cardioFitnessPregnantFooterDescriptionWithLink];
    goto LABEL_17;
  }

LABEL_16:
  v29 = [v27 cardioFitnessFooterDescriptionWithLink];
LABEL_17:
  v30 = sub_29D939D68();
  v32 = v31;

  v33 = [v28 cardioFitnessFooterLinkTitle];
  v34 = sub_29D939D68();
  v36 = v35;

  v37 = [v28 cardioFitnessFooterLinkURL];
  v41 = v37;
  v42 = sub_29D939D68();
  v44 = v43;

LABEL_25:
  *a1 = v30;
  a1[1] = v32;
  a1[2] = v34;
  a1[3] = v36;
  a1[4] = v42;
  a1[5] = v44;
}

void sub_29D6E2800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for AFibBurdenPDFChartViewModel.DataRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29D6E2880(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29D6E28C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D6E2934()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_29D935E88();
  return v1;
}

uint64_t sub_29D6E296C(uint64_t a1, void *a2)
{
  v4 = sub_29D936378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29D9360A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_29D936368() & 0xFE) == 2)
  {
    v16 = a2;
    sub_29D936098();
    sub_29D936088();
    (*(v11 + 8))(v15, v10);
    sub_29D6E2D58();
    swift_getOpaqueTypeConformance2();
    sub_29D935438();
    sub_29D936978();
    swift_unknownObjectRetain();
    sub_29D9353F8();
    sub_29D936978();
    type metadata accessor for HKHRCardioFitnessChartDataSource();
    sub_29D6E2E8C(&qword_2A17B1FC0, type metadata accessor for HKHRCardioFitnessChartDataSource);
    swift_unknownObjectRetain();
    sub_29D935408();
    sub_29D936978();
    swift_unknownObjectRelease_n();
  }

  else
  {
    (*(v5 + 16))(v9, a1, v4);
    v17 = type metadata accessor for HKHRCardioFitnessChartDataSource();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = a2;
    sub_29D877688(v20, v9);

    sub_29D6E2E8C(&qword_2A17B1FC0, type metadata accessor for HKHRCardioFitnessChartDataSource);
    sub_29D935438();

    sub_29D9353F8();

    sub_29D6E2D58();

    swift_getOpaqueTypeConformance2();
    sub_29D935418();
  }

  sub_29D6E2DB8();
  sub_29D6E2E8C(&qword_2A17B1FD8, sub_29D6E2DB8);

  v21 = sub_29D9353F8();

  return v21;
}

void sub_29D6E2D58()
{
  if (!qword_2A17B1FC8)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1FC8);
    }
  }
}

void sub_29D6E2DB8()
{
  if (!qword_2A17B1FD0)
  {
    sub_29D6E2D58();
    type metadata accessor for HKHRCardioFitnessChartDataSource();
    swift_getOpaqueTypeConformance2();
    sub_29D6E2E8C(&qword_2A17B1FC0, type metadata accessor for HKHRCardioFitnessChartDataSource);
    v0 = sub_29D935C38();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B1FD0);
    }
  }
}

uint64_t sub_29D6E2E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController()
{
  result = qword_2A17B1FE0;
  if (!qword_2A17B1FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6E2F60()
{
  v0 = *MEMORY[0x29EDC43E0];
  v2 = sub_29D939D68();
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000020, 0x800000029D95A360);

  return v2;
}

uint64_t (*sub_29D6E2FD0(uint64_t *a1))(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC43E0];
  v5 = sub_29D939D68();
  v6 = v3;
  sub_29D935E88();
  MEMORY[0x29ED6A240](0xD000000000000020, 0x800000029D95A360);

  *a1 = v5;
  a1[1] = v6;
  return sub_29D6C14A0;
}

uint64_t sub_29D6E306C()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000014, 0x800000029D959370);
  MEMORY[0x29ED6A240](0xD00000000000003ALL, 0x800000029D95A320);
  return 0;
}

uint64_t sub_29D6E3138()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](0xD000000000000054, 0x800000029D95A2C0);
  return 0;
}

uint64_t sub_29D6E31D0()
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000014, 0x800000029D959370);
  MEMORY[0x29ED6A240](0xD000000000000037, 0x800000029D95A230);
  return 0;
}

uint64_t sub_29D6E32A0()
{
  sub_29D93AA18();

  v0 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v0);

  MEMORY[0x29ED6A240](46, 0xE100000000000000);
  MEMORY[0x29ED6A240](0xD000000000000014, 0x800000029D959370);
  MEMORY[0x29ED6A240](0xD000000000000027, 0x800000029D95A200);
  return 91;
}

uint64_t sub_29D6E3368(void *a1)
{
  sub_29D93AA18();
  MEMORY[0x29ED6A240](91, 0xE100000000000000);
  v2 = sub_29D93AF08();
  MEMORY[0x29ED6A240](v2);

  MEMORY[0x29ED6A240](0xD00000000000004CLL, 0x800000029D95A270);
  v3 = a1;
  sub_29D6A0CD0();
  v4 = sub_29D939DA8();
  MEMORY[0x29ED6A240](v4);

  return 0;
}

id sub_29D6E3440(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29D939D68();
    v6 = a4;
    v7 = sub_29D939D28();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v7, a4);

  return v9;
}

id sub_29D6E34E4(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_29D6E3560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenNotificationSettingsDisclosureCellViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6E35C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D6E5ED0();
    v3 = sub_29D93A9E8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_29D93AE58();
      sub_29D935E88();
      sub_29D939E18();
      result = sub_29D93AE98();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_29D93AD78();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA1A0];
  }

  return result;
}

uint64_t sub_29D6E3748(uint64_t a1)
{
  v2 = sub_29D933CC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_29D6E5F28();
    v12 = sub_29D93A9E8();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_29D6E5480(&qword_2A17B2040, MEMORY[0x29EDB9D00]);
      v20 = sub_29D939C88();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_29D6E5480(&qword_2A17B2048, MEMORY[0x29EDB9D00]);
          v27 = sub_29D939CF8();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29D6E3A5C(uint64_t a1)
{
  v2 = sub_29D939BF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_29D6E5FBC();
    v12 = sub_29D93A9E8();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_29D6E5480(&qword_2A17B2058, MEMORY[0x29EDBD1F0]);
      v20 = sub_29D939C88();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_29D6E5480(&qword_2A17B2060, MEMORY[0x29EDBD1F0]);
          v27 = sub_29D939CF8();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D6E3D94(unint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a5;
    v11 = a2;
    v12 = sub_29D93A928();
    a2 = v11;
    a5 = v10;
    if (v12)
    {
LABEL_3:
      sub_29D6E5AE4(0, a2, a3, a4, a5);
      v7 = sub_29D93A9E8();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_29D93A928();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x29EDCA1A0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x29ED6AE30](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_29D93A6F8();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_29D69567C(0, a3, a4);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_29D93A708();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        sub_29D936978();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_29D93A6F8();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_29D69567C(0, a3, a4);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_29D93A708();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_29D6E4080(uint64_t a1)
{
  v2 = sub_29D933F58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_29D6E5E3C();
    v12 = sub_29D93A9E8();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_29D6E5480(&unk_2A1A25770, MEMORY[0x29EDC3798]);
      v20 = sub_29D939C88();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_29D6E5480(&qword_2A1A247D8, MEMORY[0x29EDC3798]);
          v27 = sub_29D939CF8();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

unint64_t sub_29D6E4394(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_29D93A928();
    if (result)
    {
LABEL_3:
      sub_29D6E56A8();
      result = sub_29D93A9E8();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_29D93A928();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x29EDCA1A0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x29ED6AE30](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_29D938278();
    sub_29D6E5480(&qword_2A17B2008, MEMORY[0x29EDB8A18]);
    result = sub_29D939C88();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_29D6E5480(&qword_2A17B2010, MEMORY[0x29EDB8A18]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_29D939CF8();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_29D6E461C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_29D6E542C(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v7 = v91 - v6;
  v104 = sub_29D934C58();
  v103 = *(v104 - 8);
  v8 = *(v103 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v104, v9);
  v100 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v102 = v91 - v13;
  sub_29D6E542C(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14 - 8, v16);
  v19 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = v91 - v21;
  v23 = _s14descr2A243C641C15SettingsContentVMa();
  v107 = *(v23 - 8);
  v24 = *(v107 + 64);
  v26 = MEMORY[0x2A1C7C4A8](v23, v25);
  v28 = v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x2A1C7C4A8](v26, v29);
  v101 = v91 - v31;
  MEMORY[0x2A1C7C4A8](v30, v32);
  v105 = v91 - v33;
  v34 = sub_29D9371A8();
  v106 = *(v34 - 8);
  v35 = *(v106 + 64);
  MEMORY[0x2A1C7C4A8](v34, v36);
  v110 = v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_29D93A378();
  if (v38)
  {
    v39 = v38;
    v99 = v34;
    v98 = a1;
    v109 = ObjectType;
    v40 = *MEMORY[0x29EDBA6B0];
    v108 = [objc_allocWithZone(MEMORY[0x29EDBAB98]) initWithFeatureIdentifier:*MEMORY[0x29EDBA6B0] healthStore:v38];
    v41 = [v39 profileIdentifier];
    v42 = [v41 type];

    if (v42 == 1 && (v43 = [objc_allocWithZone(MEMORY[0x29EDBABB0]) initWithFeatureIdentifier:v40 healthStore:v39]) != 0)
    {
      v44 = v43;
      v96 = v7;
      v45 = sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
      v46 = MEMORY[0x29EDC2EA8];
      v47 = v110;
      v97 = v44;
      sub_29D937278();
      v50 = sub_29D933F18();
      v51 = sub_29D933F08();
      v117 = v50;
      v118 = &off_2A2447A08;
      v116 = v51;
      sub_29D826468(v47, &v116, v22);
      sub_29D69417C(&v116);
      if ((*(v107 + 48))(v22, 1, v23) == 1)
      {
        sub_29D6E54E0(v22);
        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4();
        sub_29D69C6C0(v52, qword_2A1A2BF58);
        *(swift_allocObject() + 16) = v109;
        v116 = 0;
        sub_29D9371F8();
      }

      else
      {
        v53 = v105;
        sub_29D6AA104(v22, v105);
        v91[0] = v50;
        v54 = v101;
        sub_29D6E5560(v53, v101);
        v55 = v103;
        v56 = v102;
        v57 = v104;
        (*(v103 + 104))(v102, *MEMORY[0x29EDC1BF0], v104);
        v117 = v45;
        v118 = v46;
        v58 = v97;
        v116 = v97;
        sub_29D6E5560(v54, v28);
        sub_29D6945AC(&v116, &v115);
        v59 = *(v55 + 16);
        v95 = v55 + 16;
        v94 = v59;
        v59(v100, v56, v57);
        v93 = v39;
        v92 = v108;
        v108 = v58;
        v60 = v91[0];
        v61 = sub_29D933F08();
        v113 = v60;
        v114 = &off_2A244CEA8;
        v62 = v60;
        v112[0] = v61;
        v63 = objc_allocWithZone(type metadata accessor for AFibBurdenSpecifierDataSource(0));
        v64 = v113;
        v65 = sub_29D693DDC(v112, v113);
        v97 = v91;
        v66 = *(*(v64 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v65, v65);
        v68 = (v91 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v69 + 16))(v68);
        v70 = *v68;
        v111[3] = v62;
        v111[4] = &off_2A244CEA8;
        v111[0] = v70;
        v91[1] = v61;
        if (MEMORY[0x29EDCA190] >> 62 && sub_29D93A928())
        {

          v71 = sub_29D6E4394(MEMORY[0x29EDCA190]);
        }

        else
        {

          v71 = MEMORY[0x29EDCA1A0];
        }

        v72 = v96;
        v96 = objc_allocWithZone(type metadata accessor for AFibBurdenSettingsViewController(0));
        *&v63[qword_2A17B7828] = v71;
        v73 = &v63[qword_2A17B7830];
        *v73 = 0;
        *(v73 + 1) = 0;
        v74 = qword_2A17B7840;
        v75 = *(v107 + 56);
        v75(&v63[qword_2A17B7840], 1, 1, v23);
        *&v63[qword_2A17D0E28 + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v63[qword_2A17D0E30 + 8] = 0;
        swift_unknownObjectWeakInit();
        *&v63[qword_2A17B7810] = 256;
        v76 = v92;
        *&v63[qword_2A17B7818] = v92;
        sub_29D6945AC(&v115, &v63[qword_2A17B7820]);
        v77 = v93;
        *&v63[qword_2A17B7838] = v93;
        sub_29D6E5560(v28, v19);
        v75(v19, 0, 1, v23);
        swift_beginAccess();
        v78 = v77;
        v79 = v76;
        sub_29D6E55C4(v19, &v63[v74]);
        swift_endAccess();
        sub_29D6945AC(v111, &v63[qword_2A17B7848]);
        v80 = v100;
        v81 = v104;
        v94(v72, v100, v104);
        v82 = v103;
        (*(v103 + 56))(v72, 0, 1, v81);
        HKImproveHealthAndActivityAnalyticsAllowed();
        v83 = sub_29D934C48();
        sub_29D8C9560();

        v84 = *(v82 + 8);
        v84(v80, v81);
        sub_29D69417C(&v115);
        sub_29D6E5644(v28);
        sub_29D69417C(v111);
        sub_29D69417C(v112);
        sub_29D6E5480(&qword_2A17B1FF8, type metadata accessor for AFibBurdenSpecifierDataSource);
        v85 = v83;
        v86 = sub_29D9365D8();
        v87 = objc_opt_self();
        v88 = v86;
        v89 = [v87 aFibBurdenSectionTitle];
        if (!v89)
        {
          sub_29D939D68();
          v89 = sub_29D939D28();
        }

        [v88 setTitle_];

        v84(v102, v81);
        sub_29D6E5644(v101);
        sub_29D69417C(&v116);
        if (qword_2A1A24678 != -1)
        {
          swift_once();
        }

        sub_29D6A9ED4();
        sub_29D69C6C0(v90, qword_2A1A2BF58);
        *(swift_allocObject() + 16) = v109;
        v116 = 0;
        sub_29D9371C8();

        [v98 showViewController:v88 sender:0];

        sub_29D6E5644(v105);
      }

      (*(v106 + 8))(v110, v99);
    }

    else
    {
      if (qword_2A1A24678 != -1)
      {
        swift_once();
      }

      sub_29D6A9ED4();
      sub_29D69C6C0(v48, qword_2A1A2BF58);
      *(swift_allocObject() + 16) = v109;
      v116 = 0;
      sub_29D9371F8();
    }
  }

  else
  {
    if (qword_2A1A24678 != -1)
    {
      swift_once();
    }

    sub_29D6A9ED4();
    sub_29D69C6C0(v49, qword_2A1A2BF58);
    *(swift_allocObject() + 16) = ObjectType;
    v116 = 0;
    sub_29D9371E8();
  }
}

void sub_29D6E542C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D93A7F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D6E5480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29D6E54E0(uint64_t a1)
{
  sub_29D6E542C(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D6E5560(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr2A243C641C15SettingsContentVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6E55C4(uint64_t a1, uint64_t a2)
{
  sub_29D6E542C(0, qword_2A1A24190, _s14descr2A243C641C15SettingsContentVMa);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6E5644(uint64_t a1)
{
  v2 = _s14descr2A243C641C15SettingsContentVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D6E56A8()
{
  if (!qword_2A17B2000)
  {
    sub_29D938278();
    sub_29D6E5480(&qword_2A17B2008, MEMORY[0x29EDB8A18]);
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2000);
    }
  }
}

uint64_t sub_29D6E573C(uint64_t a1)
{
  v2 = sub_29D9357D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_29D6E5A50();
    v12 = sub_29D93A9E8();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_29D6E5480(&qword_2A17B2020, MEMORY[0x29EDC2148]);
      v20 = sub_29D939C88();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_29D6E5480(&qword_2A17B2028, MEMORY[0x29EDC2148]);
          v27 = sub_29D939CF8();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D6E5A50()
{
  if (!qword_2A17B2018)
  {
    sub_29D9357D8();
    sub_29D6E5480(&qword_2A17B2020, MEMORY[0x29EDC2148]);
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2018);
    }
  }
}

void sub_29D6E5AE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D69567C(255, a3, a4);
    sub_29D6E5B70(a5, a3, a4);
    v9 = sub_29D93A9F8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D6E5B70(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D69567C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D6E5BC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D6E5DA8();
    v3 = sub_29D93A9E8();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_29D939D68();
      sub_29D93AE58();
      v29 = v7;
      sub_29D939E18();
      v9 = sub_29D93AE98();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_29D939D68();
        v20 = v19;
        if (v18 == sub_29D939D68() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_29D93AD78();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D6E5DA8()
{
  if (!qword_2A1A21FB8)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_29D6E5480(&qword_2A1A22200, type metadata accessor for HKFeatureIdentifier);
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A21FB8);
    }
  }
}

void sub_29D6E5E3C()
{
  if (!qword_2A1A248B8)
  {
    sub_29D933F58();
    sub_29D6E5480(&unk_2A1A25770, MEMORY[0x29EDC3798]);
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A248B8);
    }
  }
}

void sub_29D6E5ED0()
{
  if (!qword_2A17B2030)
  {
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2030);
    }
  }
}

void sub_29D6E5F28()
{
  if (!qword_2A17B2038)
  {
    sub_29D933CC8();
    sub_29D6E5480(&qword_2A17B2040, MEMORY[0x29EDB9D00]);
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2038);
    }
  }
}

void sub_29D6E5FBC()
{
  if (!qword_2A17B2050)
  {
    sub_29D939BF8();
    sub_29D6E5480(&qword_2A17B2058, MEMORY[0x29EDBD1F0]);
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2050);
    }
  }
}

uint64_t sub_29D6E6050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29D6E6128();
    v2 = sub_29D93A9E8();
    v3 = v2 + 56;
    while (1)
    {
      v4 = *(v2 + 40);
      sub_29D93AE58();
      MEMORY[0x29ED6B260](0);
      result = sub_29D93AE98();
      v6 = result & ~(-1 << *(v2 + 32));
      v7 = v6 >> 6;
      v8 = *(v3 + 8 * (v6 >> 6));
      v9 = 1 << v6;
      if ((v9 & v8) == 0)
      {
        *(v3 + 8 * v7) = v9 | v8;
        v10 = *(v2 + 16);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (v11)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v12;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x29EDCA1A0];
}

void sub_29D6E6128()
{
  if (!qword_2A17B2068)
  {
    sub_29D6E6184();
    v0 = sub_29D93A9F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17B2068);
    }
  }
}

unint64_t sub_29D6E6184()
{
  result = qword_2A17B2070;
  if (!qword_2A17B2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2070);
  }

  return result;
}

uint64_t sub_29D6E61E8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x7472617453746567;
    if (v1 != 1)
    {
      v5 = 0x726F577449776F68;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x7472617473;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    if (v1 != 5)
    {
      v2 = 0x6974656C706D6F63;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0x746361466566696CLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}
uint64_t sub_E4B74()
{
  v1 = (type metadata accessor for Battery24HrActivityChart(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 6);

  v7 = *(v3 + 7);

  v8 = *(v3 + 11);

  v9 = *(v3 + 13);

  v10 = v1[15];
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1158E0();
    (*(*(v11 - 8) + 8))(&v3[v10], v11);
  }

  else
  {
    v12 = *&v3[v10];
  }

  return swift_deallocObject();
}

uint64_t sub_E4CB8(double a1)
{
  v4 = *(type metadata accessor for Battery24HrActivityChart(0) - 8);
  v5 = *(*(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 24) + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourMinutes);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v7 = objc_allocWithZone(NSNumber);
    v8 = v5;
    v9 = [v7 initWithDouble:a1];
    v10 = [v8 stringFromNumber:v9];

    if (v10)
    {
      v11 = sub_1171B0();

      return v11;
    }
  }

  else
  {
    v6 = v5;
  }

  return 0;
}

unint64_t sub_E4DFC()
{
  result = qword_186680;
  if (!qword_186680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186680);
  }

  return result;
}

unint64_t sub_E4E54()
{
  result = qword_186688;
  if (!qword_186688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186688);
  }

  return result;
}

unint64_t sub_E4EAC()
{
  result = qword_186690;
  if (!qword_186690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186690);
  }

  return result;
}

unint64_t sub_E4F04()
{
  result = qword_186698;
  if (!qword_186698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186698);
  }

  return result;
}

uint64_t sub_E4F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_46F9C(&qword_185640, &unk_12A2C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_E50D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_46F9C(&qword_185640, &unk_12A2C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_E5214()
{
  sub_C08E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BUIChartViewConfig();
    if (v1 <= 0x3F)
    {
      sub_C0A70();
      if (v2 <= 0x3F)
      {
        sub_C097C();
        if (v3 <= 0x3F)
        {
          sub_C09CC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_E532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_E53FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_46F9C(&qword_1857A0, &unk_12A4B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_E54AC()
{
  sub_C08E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BUIChartViewConfig();
    if (v1 <= 0x3F)
    {
      sub_C097C();
      if (v2 <= 0x3F)
      {
        sub_E559C();
        if (v3 <= 0x3F)
        {
          sub_C0A70();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_E559C()
{
  if (!qword_186798)
  {
    sub_E4630();
    v0 = type metadata accessor for BatteryYAxis();
    if (!v1)
    {
      atomic_store(v0, &qword_186798);
    }
  }
}

uint64_t sub_E55F8()
{
  sub_47A1C(&qword_1865A0, &qword_12B9D0);
  sub_47A1C(&qword_1865E8, &unk_12BA08);
  sub_E412C();
  sub_E4418(&qword_1865F8, &qword_1865E8, &unk_12BA08, sub_E412C);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_E5714()
{
  result = qword_190760;
  if (!qword_190760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_190760);
  }

  return result;
}

unint64_t sub_E576C()
{
  result = qword_190768[0];
  if (!qword_190768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_190768);
  }

  return result;
}

unint64_t sub_E57CC()
{
  result = qword_186808;
  if (!qword_186808)
  {
    sub_47A1C(&qword_186800, &unk_12BDA0);
    sub_47A1C(&qword_185950, &unk_12A540);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186808);
  }

  return result;
}

uint64_t sub_E58D8@<X0>(int64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Battery24HrBatteryLevelChart(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_DDE2C(a1, v6, a2);
}

unint64_t sub_E5960()
{
  result = qword_186830;
  if (!qword_186830)
  {
    sub_47A1C(&qword_186828, &qword_12BDD0);
    sub_E5A18();
    sub_E3A90(&qword_186848, &qword_186850, &qword_12BDE0, sub_E5AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186830);
  }

  return result;
}

unint64_t sub_E5A18()
{
  result = qword_186838;
  if (!qword_186838)
  {
    sub_47A1C(&qword_186840, &qword_12BDD8);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186838);
  }

  return result;
}

unint64_t sub_E5AE0()
{
  result = qword_186858;
  if (!qword_186858)
  {
    sub_47A1C(&qword_186860, &qword_12BDE8);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186858);
  }

  return result;
}

uint64_t sub_E5BA8()
{
  v1 = type metadata accessor for Battery24HrBatteryLevelChart(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v1[7];
  sub_46F9C(&qword_185648, &qword_12B880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1158E0();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    v8 = *(v3 + v6);
  }

  v9 = (v3 + v1[9]);
  v10 = *v9;

  v11 = v9[1];

  v12 = *(v3 + v1[10]);

  v13 = (v3 + v1[12]);
  v14 = *v13;

  v15 = *(sub_46F9C(&qword_185640, &unk_12A2C0) + 40);
  v16 = sub_46F9C(&qword_183560, &qword_129070);
  (*(*(v16 - 8) + 8))(&v13[v15], v16);

  return swift_deallocObject();
}

unint64_t sub_E5D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Battery24HrBatteryLevelChart(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_DEF90(a1, v2 + v6, v7, a2);
}

uint64_t sub_E5E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_E5E88()
{
  result = qword_186890;
  if (!qword_186890)
  {
    sub_47A1C(&qword_186888, &qword_12BE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186890);
  }

  return result;
}

uint64_t sub_E5F34(uint64_t a1)
{
  v3 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_115760();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - v13;
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v34 = v17;
  (*(v17 + 16))(&v31 - v15, v1, v7);
  v18 = sub_D2CC4();
  if (*v18 == 1)
  {
    v19 = sub_A79F0();
  }

  else
  {
    v19 = sub_A7A80();
  }

  v20 = *v19;
  sub_1156E0();
  sub_115710();
  sub_115710();
  sub_115700();
  v21 = *(a1 + 16);
  if (!v21)
  {
    v28 = 0;
    goto LABEL_18;
  }

  v32 = v7;
  v22 = *v18;
  v23 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
  v24 = *(v33 + 72);
  do
  {
    sub_E69C0(v23, v6);
    if (v22)
    {
      if ((sub_1156D0() & 1) == 0)
      {
        goto LABEL_6;
      }

      v25 = &v6[*(v3 + 20)];
    }

    else
    {
      if ((sub_1156D0() & 1) == 0)
      {
LABEL_6:
        sub_E6A24(v6);
        goto LABEL_7;
      }

      v26 = &v6[*(v3 + 20)];
    }

    v27 = sub_1156C0();
    sub_E6A24(v6);
    if (v27)
    {
      v28 = 1;
      goto LABEL_16;
    }

LABEL_7:
    v23 += v24;
    --v21;
  }

  while (v21);
  v28 = 0;
LABEL_16:
  v7 = v32;
LABEL_18:
  v29 = *(v34 + 8);
  v29(v11, v7);
  v29(v14, v7);
  v29(v16, v7);
  return v28;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_E622C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a3 == 6;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 0x444E454B4545575FLL;
  }

  else
  {
    v4 = 0x5941444B4545575FLL;
  }

  v5._countAndFlagsBits = v4;
  v5._object = 0xE800000000000000;
  sub_117220(v5);
}

Swift::Int sub_E62A4()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(v1 + 1);
  return sub_117AD0();
}

Swift::Int sub_E631C()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(v1 + 1);
  return sub_117AD0();
}

uint64_t sub_E6360@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_E6A80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_E639C()
{
  v19 = sub_1158D0();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_115510();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1158A0();
  sub_46F9C(&qword_1868A0, &qword_12BE38);
  v8 = sub_1158B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_124890;
  (*(v9 + 104))(v12 + v11, enum case for Calendar.Component.weekday(_:), v8);
  sub_E66C8(v12);
  swift_setDeallocating();
  (*(v9 + 8))(v12 + v11, v8);
  v13 = 7;
  swift_deallocClassInstance();
  sub_115850();

  (*(v0 + 8))(v3, v19);
  v14 = sub_1154F0();
  LOBYTE(v9) = v15;
  (*(v4 + 8))(v7, v18);
  if ((v9 & 1) == 0)
  {
    return sub_E6A80(v14);
  }

  return v13;
}

uint64_t sub_E6648()
{
  v0 = sub_8D8B4()[4];
  isa = sub_1156B0().super.isa;
  v2 = [v0 stringFromDate:isa];

  v3 = sub_1171B0();
  return v3;
}

void *sub_E66C8(uint64_t a1)
{
  v2 = sub_1158B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_46F9C(&qword_1868B0, &unk_12BEF0);
    v10 = sub_1176F0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_E6C50(&qword_1868B8);
      v18 = sub_1170C0();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_E6C50(&qword_1868C0);
          v25 = sub_117160();
          v26 = *v16;
          (*v16)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_E69C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E6A24(uint64_t a1)
{
  v2 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E6A80(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

unint64_t sub_E6AAC()
{
  result = qword_1868A8;
  if (!qword_1868A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1868A8);
  }

  return result;
}

uint64_t _s3DayOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s3DayOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_E6C50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1158B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PLBUIChartViewController.graphHeight(traitCollection:)(uint64_t a1)
{
  v2 = sub_5A754();
  swift_beginAccess();
  v3 = *(**v2 + 624);

  v3(a1);

  return sub_B9CEC();
}

uint64_t PLBUIChartViewController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PLBUIChartViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_E70A0;
}

void sub_E70A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_E7120()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_E716C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_E7224()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_model;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_E726C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_model;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double variable initialization expression of PLBUIChartViewController.receiver@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_E7330@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_receiver;
  swift_beginAccess();
  return sub_E7388(v1 + v3, a1);
}

uint64_t sub_E7388(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182FC8, &qword_124DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E73F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_receiver;
  swift_beginAccess();
  sub_E7458(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_E7458(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182FC8, &qword_124DD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_E7528()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_isUpdating;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_E756C(char a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_isUpdating;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t static PLBUIChartViewController.reloadLocale()()
{
  v0 = sub_5A754();
  type metadata accessor for BUIChartViewConfig();
  v1 = sub_59600();
  swift_beginAccess();
  v2 = *v0;
  *v0 = v1;
}

Swift::Void __swiftcall PLBUIChartViewController.endUpdate()()
{
  (*(&stru_B8.size + (swift_isaMask & *v0)))(0);
  v1 = *&stru_108.segname[(swift_isaMask & *v0) + 16];

  v1();
}

Swift::Void __swiftcall PLBUIChartViewController.setActiveChart(_:)(Swift::String a1)
{
  if (a1._countAndFlagsBits == 0xD000000000000014 && 0x80000000001365F0 == a1._object)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1179E0() ^ 1;
  }

  v3 = *(&stru_68.flags + (swift_isaMask & *v1));
  v4 = v3();
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  (*(*v4 + 192))(v4);

  sub_BA5C0();
  if (sub_117160())
  {
    return;
  }

  v5 = v3();
  if (!v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  (*(*v5 + 200))(v2 & 1);
}

Swift::Void __swiftcall PLBUIChartViewController.setTappedIndex(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    v2 = [(objc_class *)a1.value.super.super.isa integerValue];
  }

  else
  {
    v2 = -1;
  }

  v3 = *(&stru_68.flags + (swift_isaMask & *v1));
  v4 = v3();
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = (*(*v4 + 240))(v4);
  v7 = v6;

  if (v7)
  {
    if (v2 < 0)
    {
      return;
    }
  }

  else if ((v2 & 0x8000000000000000) == 0 && v5 == (v2 & ~(v2 >> 63)))
  {
    return;
  }

  v9 = (v3)(v8);
  if (!v9)
  {
LABEL_15:
    __break(1u);
    return;
  }

  (*(*v9 + 248))(v2 & ~(v2 >> 63), v2 >> 63);
}

uint64_t PLBUIChartViewController.setDataset(_:endOfDay:)(void *a1)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_1852D8, &qword_129F88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v28 - v7;
  v9 = type metadata accessor for BUIChartViewData(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  v16 = a1;
  sub_115710();
  v18 = sub_D5810(v16, v15, v17);
  v19 = *(&stru_68.flags + (swift_isaMask & *v1));
  if (!v19(v18))
  {
    type metadata accessor for BUIChartViewModel();
    sub_E8088(v15, v12);
    v25 = sub_AF42C(v12);
    v26 = (*(&stru_68.reserved2 + (swift_isaMask & *v1)))(v25);
    result = v19(v26);
    if (result)
    {
      (*(*result + 264))(result);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_E824C();
      v27 = sub_115FA0();

      (*(v5 + 8))(v8, v4);
      v28[3] = sub_115F10();
      v28[0] = v27;
      (*&stru_B8.segname[swift_isaMask & *v2])(v28);
      return sub_E82B0(v15);
    }

    goto LABEL_10;
  }

  result = v19(v20);
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(*result + 136))(result);

  sub_E830C();
  v22 = sub_117160();
  v23 = sub_E82B0(v12);
  if (v22)
  {
    return sub_E82B0(v15);
  }

  result = v19(v23);
  if (result)
  {
    v24 = result;
    sub_E8088(v15, v12);
    (*(*v24 + 144))(v12);

    return sub_E82B0(v15);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_E8088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BUIChartViewData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E80EC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_E8124(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (((*&stru_B8.segname[(swift_isaMask & *Strong) + 16])() & 1) == 0)
    {
      v5 = (*&stru_68.segname[swift_isaMask & *v4])();
      v6 = v5;
      if (v2)
      {
        if (v5)
        {
          [v5 graphOnSelectAt:0];
LABEL_8:
          swift_unknownObjectRelease();
        }
      }

      else if (v5)
      {
        v7 = [objc_allocWithZone(NSNumber) initWithInteger:v1];
        [v6 graphOnSelectAt:v7];

        goto LABEL_8;
      }
    }
  }
}

unint64_t sub_E824C()
{
  result = qword_1868F0;
  if (!qword_1868F0)
  {
    sub_47A1C(&qword_1852D8, &qword_129F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1868F0);
  }

  return result;
}

uint64_t sub_E82B0(uint64_t a1)
{
  v2 = type metadata accessor for BUIChartViewData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_E830C()
{
  result = qword_1868F8;
  if (!qword_1868F8)
  {
    type metadata accessor for BUIChartViewData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1868F8);
  }

  return result;
}

uint64_t PLBUIChartViewController.setMargin(top:bottom:)(double a1, double a2)
{
  v5 = *(&stru_68.flags + (swift_isaMask & *v2));
  result = v5();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(*result + 296))(result, a1);

  result = (v5)(v7);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  (*(*result + 344))(result, a2);
}

Swift::Void __swiftcall PLBUIChartViewController.setContainerBackgroundColor(_:)(UIColor a1)
{
  v3 = (*(&stru_68.flags + (swift_isaMask & *v1)))();
  if (v3)
  {
    (*(*v3 + 392))(a1.super.isa);
  }

  else
  {
    __break(1u);
  }
}

void sub_E8814()
{
  v1 = v0;
  v2 = *(&stru_68.flags + (swift_isaMask & *v0));
  if (!v2())
  {
    return;
  }

  v4 = *(&stru_68.size + (swift_isaMask & *v0));
  v5 = (v4)(v3);
  if (!v5)
  {
    v6 = v2();
    if (v6)
    {
      v7 = v6;
      if (BatteryUIResourceBundle())
      {
        v48 = nullsub_4(v7);
        v49 = v8;
        v9 = objc_allocWithZone(sub_46F9C(&qword_186900, &qword_12BF00));
        v10 = sub_116440();
        v11 = (*(&stru_68.offset + (swift_isaMask & *v1)))(v10);
        v12 = (v4)(v11);
        if (v12)
        {
          v13 = v12;
          [v1 addChildViewController:{v12, v48, v49}];

          v14 = v4();
          if (v14)
          {
            v15 = v14;
            v16 = [v14 view];

            if (v16)
            {
              v17 = [v1 view];
              if (v17)
              {
                v18 = v17;
                [v17 bounds];
                v20 = v19;
                v22 = v21;
                v24 = v23;
                v26 = v25;

                [v16 setFrame:{v20, v22, v24, v26}];
                v27 = v4();
                if (v27)
                {
                  v28 = v27;
                  v29 = [v27 view];

                  if (v29)
                  {
                    [v29 setTranslatesAutoresizingMaskIntoConstraints:1];

                    v30 = v4();
                    if (v30)
                    {
                      v31 = v30;
                      v32 = [v30 view];

                      if (v32)
                      {
                        [v32 setAutoresizingMask:18];

                        v33 = v4();
                        if (v33)
                        {
                          v34 = v33;
                          v35 = [v33 view];

                          if (v35)
                          {
                            v36 = objc_opt_self();
                            v37 = [v36 clearColor];
                            [v35 setBackgroundColor:v37];

                            v38 = [v1 view];
                            if (v38)
                            {
                              v39 = v38;
                              v40 = [v36 clearColor];
                              [v39 setBackgroundColor:v40];

                              v41 = [v1 view];
                              if (v41)
                              {
                                v42 = v41;
                                v43 = v4();
                                if (v43)
                                {
                                  v44 = v43;
                                  v45 = [v43 view];

                                  if (v45)
                                  {
                                    [v42 addSubview:v45];

                                    v46 = v4();
                                    if (v46)
                                    {
                                      v47 = v46;
                                      sub_116430();

                                      return;
                                    }

LABEL_41:
                                    __break(1u);
                                    return;
                                  }

LABEL_40:
                                  __break(1u);
                                  goto LABEL_41;
                                }

LABEL_39:
                                __break(1u);
                                goto LABEL_40;
                              }

LABEL_38:
                              __break(1u);
                              goto LABEL_39;
                            }

LABEL_37:
                            __break(1u);
                            goto LABEL_38;
                          }

LABEL_36:
                          __break(1u);
                          goto LABEL_37;
                        }

LABEL_35:
                        __break(1u);
                        goto LABEL_36;
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

LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

id PLBUIChartViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_117170();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PLBUIChartViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_hostingController] = 0;
  *&v3[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_model] = 0;
  v6 = &v3[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_receiver];
  *v6 = 0u;
  v6[1] = 0u;
  v3[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_isUpdating] = 0;
  if (a2)
  {
    v7 = sub_117170();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for PLBUIChartViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id PLBUIChartViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id PLBUIChartViewController.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_hostingController] = 0;
  *&v1[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_model] = 0;
  v3 = &v1[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_receiver];
  *v3 = 0u;
  v3[1] = 0u;
  v1[OBJC_IVAR____TtC14BatteryUsageUI24PLBUIChartViewController_isUpdating] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PLBUIChartViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id PLBUIChartViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PLBUIChartViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_E9054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for BatteryYAxis();
  v11 = *(v10 + 44);
  v12 = sub_5822C();
  *(a4 + v11) = sub_F59F0(&type metadata for PerfPowerServices, v12) & 1;
  *a4 = a1;
  *(a4 + 8) = a5;
  return (*(*(a3 - 8) + 32))(a4 + *(v10 + 40), a2, a3);
}

uint64_t sub_E9144(uint64_t a1)
{
  v3 = sub_115C80();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_115BE0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v9);
  v11 = *v1;
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v10);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a1 + 16);
  (*(v7 + 32))(v13 + v12, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = 0x4014000000000000;

  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_186930, &qword_12BF38);
  sub_EA008();
  return sub_115EA0();
}

uint64_t sub_E9384@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v78 = a3;
  v89 = a4;
  v88 = sub_46F9C(&qword_186A88, &qword_12C2D8);
  v8 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v87 = &v69 - v9;
  v84 = sub_115A40();
  v85 = *(v84 - 8);
  v10 = *(v85 + 64);
  __chkstk_darwin(v84);
  v81 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_46F9C(&qword_1843A0, &unk_128120);
  v82 = *(v86 - 8);
  v12 = *(v82 + 64);
  __chkstk_darwin(v86);
  v83 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = &v69 - v15;
  v16 = sub_115D00();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v72 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_115DA0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = a2;
  v71 = *(a2 - 8);
  v22 = *(v71 + 64);
  __chkstk_darwin(v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_46F9C(&qword_186958, &unk_12BF50);
  v74 = *(v76 - 8);
  v26 = *(v74 + 64);
  __chkstk_darwin(v76);
  v28 = &v69 - v27;
  v29 = sub_46F9C(&qword_186950, &qword_12BF48);
  v77 = *(v29 - 8);
  v30 = *(v77 + 64);
  __chkstk_darwin(v29);
  v75 = &v69 - v31;
  v32 = sub_46F9C(&qword_186A90, &unk_12C2E0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v73 = &v69 - v35;
  v36 = sub_46F9C(&qword_186948, &qword_12BF40);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v79 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v90 = &v69 - v40;
  result = sub_115EB0();
  if (BYTE8(v95))
  {
    goto LABEL_22;
  }

  if ((v95 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*&v95 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*&v95 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v42 = *(a1 + 8);
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v43 = v42;
  if (!v42)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*&v95 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_21;
  }

  v44 = 1;
  if (!(*&v95 % v43))
  {
    v70 = v29;
    v45 = type metadata accessor for BatteryYAxis();
    (*(v71 + 16))(v25, a1 + *(v45 + 40), v21);
    v46 = *sub_A79CC() + a5;
    sub_115D90();
    sub_115CF0();
    sub_115C20();
    v47 = sub_5A754();
    swift_beginAccess();
    *&v95 = *(*v47 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelColor);
    v48 = sub_48800(&qword_186960, &qword_186958, &unk_12BF50);
    v49 = v75;
    v50 = v76;
    sub_115E10();
    (*(v74 + 8))(v28, v50);
    swift_beginAccess();
    v51 = *(*v47 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelFont);

    *&v95 = v50;
    *(&v95 + 1) = &type metadata for Color;
    *&v96 = v48;
    *(&v96 + 1) = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v52 = v73;
    v53 = v70;
    sub_115E20();

    (*(v77 + 8))(v49, v53);
    (*(v33 + 32))(v90, v52, v32);
    v44 = 0;
  }

  v54 = v90;
  (*(v33 + 56))(v90, v44, 1, v32);
  sub_116010();
  v95 = v92;
  v96 = v93;
  v97 = v94;
  v55 = v81;
  sub_115A30();
  v56 = sub_5A754();
  swift_beginAccess();
  v91 = *(*v56 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
  v57 = v80;
  v58 = v84;
  sub_115E10();
  (*(v85 + 8))(v55, v58);
  v59 = v79;
  sub_479B4(v54, v79, &qword_186948, &qword_12BF40);
  v60 = v82;
  v61 = *(v82 + 16);
  v62 = v83;
  v63 = v86;
  v61(v83, v57, v86);
  sub_EA0E0();
  v64 = v87;
  sub_479B4(v59, v87, &qword_186948, &qword_12BF40);
  v65 = v88;
  v66 = *(v88 + 48);
  v61((v64 + v66), v62, v63);
  v67 = v89;
  sub_548D0(v64, v89, &qword_186948, &qword_12BF40);
  (*(v60 + 32))(v67 + *(v65 + 48), v64 + v66, v63);
  v68 = *(v60 + 8);
  v68(v57, v63);
  sub_488C8(v90, &qword_186948, &qword_12BF40);
  v68(v62, v63);
  return sub_488C8(v59, &qword_186948, &qword_12BF40);
}

uint64_t sub_E9E4C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for BatteryYAxis() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v0 + v4);

  (*(*(v2 - 8) + 8))(v6 + v3[12], v2);

  return swift_deallocObject();
}

uint64_t sub_E9F40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for BatteryYAxis() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_E9384(v1 + v6, v3, v4, a1, v7);
}

unint64_t sub_EA008()
{
  result = qword_186938;
  if (!qword_186938)
  {
    sub_47A1C(&qword_186930, &qword_12BF38);
    sub_EA0E0();
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186938);
  }

  return result;
}

unint64_t sub_EA0E0()
{
  result = qword_186940;
  if (!qword_186940)
  {
    sub_47A1C(&qword_186948, &qword_12BF40);
    sub_47A1C(&qword_186950, &qword_12BF48);
    sub_47A1C(&qword_186958, &unk_12BF50);
    sub_48800(&qword_186960, &qword_186958, &unk_12BF50);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186940);
  }

  return result;
}

uint64_t sub_EA22C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_46F9C(&qword_186A80, &qword_12C2D0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = sub_46F9C(&qword_186A38, &unk_12C258);
  sub_115E40();
  v10 = *a1;
  v21 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  v12 = sub_46F9C(&qword_186980, &qword_12BF68);
  sub_48800(&qword_186978, &qword_186980, &qword_12BF68);
  v13 = *(v5 + 56);
  v14 = *(v12 - 8);
  (*(v14 + 16))(&v8[v13], a1[1], v12);
  v15 = sub_46F9C(&qword_1843A0, &unk_128120);
  sub_115A40();
  v16 = *(v5 + 72);
  v17 = a1[2];
  v18 = *(v15 - 8);
  (*(v18 + 16))(&v8[v16], v17, v15);
  (*(v11 + 32))(a2, v8, v21);
  (*(v14 + 32))(a2 + *(v5 + 56), &v8[v13], v12);
  return (*(v18 + 32))(a2 + *(v5 + 72), &v8[v16], v15);
}

uint64_t sub_EA490@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_46F9C(&qword_186A68, &qword_12C288);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = sub_46F9C(&qword_186A40, &unk_12C268);
  sub_48800(&qword_1869A8, &qword_1869A0, &qword_12BF80);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, *a1, v9);
  sub_ED304();
  v11 = *(v5 + 56);
  sub_479B4(a1[1], &v8[v11], &qword_1869B8, &qword_12BF88);
  sub_ED3CC();
  v12 = *(v5 + 72);
  sub_479B4(a1[2], &v8[v12], &qword_1869C8, &qword_12BF90);
  (*(v10 + 32))(a2, v8, v9);
  sub_548D0(&v8[v11], a2 + *(v5 + 56), &qword_1869B8, &qword_12BF88);
  return sub_548D0(&v8[v12], a2 + *(v5 + 72), &qword_1869C8, &qword_12BF90);
}

double *sub_EA65C()
{
  v0 = sub_115C80();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_115BE0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_46F9C(&qword_1842B8, &qword_129030);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1158B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_115C10();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  (*(v9 + 104))(v12, enum case for Calendar.Component.second(_:), v8, v15);
  result = sub_A79FC();
  v17 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v17 < 9.22337204e18)
  {
    v18 = sub_1158D0();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_115BF0();
    sub_EA990(v7);
    (*(v9 + 8))(v12, v8);

    sub_115BD0();
    sub_115C70();
    sub_46F9C(&qword_186968, &qword_12BF60);
    sub_EB3F8();
    return sub_115E90();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_EA990(uint64_t a1)
{
  v2 = sub_46F9C(&qword_1842B8, &qword_129030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EA9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a3;
  v5 = sub_115A40();
  v100 = *(v5 - 8);
  v101 = v5;
  v6 = *(v100 + 64);
  __chkstk_darwin(v5);
  v98 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_1843A0, &unk_128120);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v102 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v99 = &v81 - v13;
  v14 = sub_115D00();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v95 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_115DA0();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v94 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_46F9C(&qword_186980, &qword_12BF68);
  v97 = *(v109 - 8);
  v20 = *(v97 + 64);
  __chkstk_darwin(v109);
  v108 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v105 = &v81 - v23;
  v24 = sub_115E40();
  v92 = *(v24 - 8);
  v93 = v24;
  v25 = *(v92 + 64);
  __chkstk_darwin(v24);
  v27 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_46F9C(&qword_186A38, &unk_12C258);
  v96 = *(v107 - 8);
  v28 = *(v96 + 64);
  __chkstk_darwin(v107);
  v106 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v104 = &v81 - v31;
  v32 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v81 - v34;
  v36 = sub_115760();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115EB0();
  result = (*(v37 + 48))(v35, 1, v36);
  if (result == 1)
  {
    goto LABEL_10;
  }

  v88 = v37;
  v89 = v36;
  (*(v37 + 32))(v40, v35, v36);
  v42 = sub_115ED0();
  v90 = v9;
  v91 = v8;
  v87 = a1;
  if (!v42)
  {
    v44 = 1;
    goto LABEL_6;
  }

  v43 = sub_115ED0();
  result = sub_115EC0();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v44 = v43 == result - 1;
LABEL_6:
  v45 = (*(*a2 + 512))(v40);
  v46 = sub_5A754();
  swift_beginAccess();
  v47 = *(*v46 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridLineWidth);

  sub_116010();
  v85 = v112;
  v86 = v111;
  v84 = v113;
  swift_beginAccess();
  v48 = *(*v46 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridLineWidth);
  sub_116010();
  v81 = v115;
  v82 = v114;
  v49 = v116;
  swift_beginAccess();
  v50 = *v46;
  v51 = 1.0;
  if ((v44 | v45))
  {
    v51 = 2.0;
  }

  v52 = v51 * *(*v46 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);
  v120 = v82;
  v121 = v81;
  v122 = v49;
  sub_115E30();
  swift_beginAccess();
  *&v117 = *(*v46 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
  v53 = v104;
  v54 = v93;
  sub_115E10();
  (*(v92 + 8))(v27, v54);
  v83 = v40;
  sub_115D80();
  v55 = *sub_A79C0();
  v56 = swift_beginAccess();
  v57 = *(*v46 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing) * 0.5 + *(*v46 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelAdditionalOffset);
  __chkstk_darwin(v56);
  sub_115CF0();
  v79 = sub_46F9C(&qword_186A70, &unk_12C2C0);
  v80 = sub_EE11C();
  v77 = sub_EDF30;
  v78 = &v75;
  v76 = 0;
  v75 = v57;
  v58 = v105;
  sub_115C30();
  v117 = v86;
  v118 = v85;
  v119 = v84;
  v59 = v98;
  sub_115A30();
  swift_beginAccess();
  v110[0] = *(*v46 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
  v60 = v99;
  v61 = v101;
  sub_115E10();
  (*(v100 + 8))(v59, v61);
  v62 = v96;
  v63 = v106;
  (*(v96 + 16))(v106, v53, v107);
  v110[0] = v63;
  v64 = v97;
  v65 = v108;
  v66 = v58;
  v67 = v109;
  (*(v97 + 16))(v108, v66, v109);
  v110[1] = v65;
  v69 = v90;
  v68 = v91;
  v70 = v102;
  (*(v90 + 16))(v102, v60, v91);
  v110[2] = v70;
  sub_EA22C(v110, v103);
  v71 = *(v69 + 8);
  v71(v60, v68);
  v72 = *(v64 + 8);
  v72(v105, v67);
  v73 = *(v62 + 8);
  v74 = v107;
  v73(v104, v107);
  v71(v70, v68);
  v72(v108, v109);
  v73(v106, v74);
  return (*(v88 + 8))(v83, v89);
}

unint64_t sub_EB3F8()
{
  result = qword_186970;
  if (!qword_186970)
  {
    sub_47A1C(&qword_186968, &qword_12BF60);
    sub_115E40();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_186978, &qword_186980, &qword_12BF68);
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186970);
  }

  return result;
}

uint64_t sub_EB534()
{
  v0 = sub_5822C();
  result = sub_F59F0(&type metadata for PerfPowerServices, v0);
  v2 = 3;
  if (result)
  {
    v2 = 6;
  }

  qword_191ED0 = v2;
  return result;
}

double *sub_EB590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_115C80();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_115BE0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_46F9C(&qword_1842B8, &qword_129030);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v27 - v9;
  v11 = sub_1158B0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_115C10();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  (*(v12 + 104))(v15, enum case for Calendar.Component.second(_:), v11, v18);
  if (qword_190970 != -1)
  {
    swift_once();
  }

  v19 = qword_191ED0;
  result = sub_A79F0();
  v21 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v27[1] = a1;
  if ((v19 * v21) >> 64 == (v19 * v21) >> 63)
  {
    v22 = sub_1158D0();
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
    sub_115BF0();
    sub_EA990(v10);
    (*(v12 + 8))(v15, v11);
    v23 = *v1;
    v24 = v1[1];
    v25 = swift_allocObject();
    v26 = *(v1 + 1);
    *(v25 + 16) = *v1;
    *(v25 + 32) = v26;
    *(v25 + 48) = *(v1 + 16);

    sub_115BD0();
    sub_115C70();
    sub_46F9C(&qword_186988, &qword_12BF70);
    sub_ED1A0();
    return sub_115E90();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_EB948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v173 = a2;
  v171 = a3;
  v139 = sub_115E40();
  v138 = *(v139 - 8);
  v5 = *(v138 + 64);
  __chkstk_darwin(v139);
  v137 = v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_46F9C(&qword_186A38, &unk_12C258);
  v146 = *(v147 - 8);
  v7 = *(v146 + 64);
  __chkstk_darwin(v147);
  v136 = v133 - v8;
  v170 = sub_46F9C(&qword_1869D8, &qword_12BF98);
  v169 = *(v170 - 8);
  v9 = *(v169 + 64);
  __chkstk_darwin(v170);
  v145 = v133 - v10;
  v11 = sub_46F9C(&qword_1869C8, &qword_12BF90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v133 - v16;
  v165 = sub_1158B0();
  v164 = *(v165 - 8);
  v18 = *(v164 + 64);
  __chkstk_darwin(v165);
  v163 = v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_115A40();
  v142 = *(v143 - 8);
  v20 = *(v142 + 64);
  __chkstk_darwin(v143);
  v141 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_46F9C(&qword_1843A0, &unk_128120);
  v161 = *(v162 - 8);
  v22 = *(v161 + 64);
  __chkstk_darwin(v162);
  v140 = v133 - v23;
  v24 = sub_46F9C(&qword_1869B8, &qword_12BF88);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v133 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v177 = v133 - v29;
  v30 = sub_115D00();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v155 = v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_115DA0();
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v157 = sub_46F9C(&qword_1869A0, &qword_12BF80);
  v158 = *(v157 - 8);
  v35 = *(v158 + 64);
  __chkstk_darwin(v157);
  v154 = v133 - v36;
  v160 = sub_46F9C(&qword_186998, &qword_12BF78);
  v159 = *(v160 - 8);
  v37 = *(v159 + 64);
  __chkstk_darwin(v160);
  v156 = v133 - v38;
  v168 = sub_46F9C(&qword_186A40, &unk_12C268);
  v167 = *(v168 - 8);
  v39 = *(v167 + 64);
  __chkstk_darwin(v168);
  v166 = v133 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v176 = v133 - v42;
  v43 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v46 = v133 - v45;
  v47 = sub_115760();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin(v47);
  v135 = v133 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v53 = v133 - v52;
  sub_115EB0();
  v54 = v47;
  v55 = v48;
  result = (*(v48 + 48))(v46, 1, v54);
  if (result != 1)
  {
    v57 = *(v48 + 32);
    v172 = v54;
    v57(v53, v46, v54);
    v58 = a1;
    v59 = sub_115ED0();
    v60 = sub_115ED0();
    v61 = sub_115EC0();
    if (__OFSUB__(v61, 1))
    {
      __break(1u);
    }

    else
    {
      v178 = v55;
      v151 = v27;
      v152 = v17;
      v153 = v14;
      v150 = v59;
      v149 = v60;
      v148 = v61 - 1;
      v62 = v60 == v61 - 1;
      v27 = v173;
      v60 = *(v173 + 8);
      v63 = (*v60 + 504);
      v134 = *v63;
      v133[1] = v63;
      v174 = v134(v53);
      v64 = sub_115ED0();
      v65 = *(v27 + 32);
      v3 = *(v27 + 16);
      v66 = *(*v60 + 528);
      v175 = v53;
      v66(v53, v64, v59 == 0, v62, v65, v3);
      sub_115D80();
      v67 = *sub_A79C0();
      a1 = *v27;
      v68 = *v27;
      v144 = v65;
      v69 = sub_ED0A4(v68, v65);
      __chkstk_darwin(v70);
      sub_115CF0();
      v131 = sub_46F9C(&qword_186A48, &qword_12C278);
      v132 = sub_EDE78();
      v129 = sub_EDDC4;
      v130 = &v127;
      v128 = 0;
      v127 = v69;
      v71 = 1;
      v72 = v154;
      sub_115C30();

      *&v189 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelColor);
      v73 = sub_48800(&qword_1869A8, &qword_1869A0, &qword_12BF80);
      v74 = v156;
      v75 = v157;
      sub_115E10();
      (*(v158 + 8))(v72, v75);
      v76 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelFont);
      *&v189 = v75;
      *(&v189 + 1) = &type metadata for Color;
      *&v190 = v73;
      *(&v190 + 1) = &protocol witness table for Color;
      swift_getOpaqueTypeConformance2();
      v77 = v160;
      sub_115E20();
      (*(v159 + 8))(v74, v77);
      LOBYTE(v27) = *(v27 + 33);
      v78 = v177;
      v79 = v162;
      v80 = v161;
      if ((v27 & 1) == 0)
      {
        v81 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridLineWidth);
        sub_116010();
        v189 = v180;
        v190 = v181;
        v191 = v182;
        v82 = v141;
        sub_115A30();
        *&v186 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
        v83 = v140;
        v84 = v143;
        sub_115E10();
        (*(v142 + 8))(v82, v84);
        (*(v80 + 32))(v78, v83, v79);
        v71 = 0;
      }

      (*(v80 + 56))(v78, v71, 1, v79);
      v85 = v164;
      v86 = v163;
      v87 = v165;
      (*(v164 + 104))(v163, enum case for Calendar.Component.hour(_:), v165);
      v88 = sub_1158C0();
      (*(v85 + 8))(v86, v87);
      v58 = v88 % 12;
      if (qword_190970 == -1)
      {
LABEL_6:
        v90 = qword_191ED0;
        v91 = v170;
        v92 = v152;
        v93 = v178;
        v94 = v150;
        if (v58 == qword_191ED0 && ((*(*v60 + 488))(v3) & 1) != 0 && v94 && v149 != v148)
        {
          v95 = 1;
          v96 = v169;
          v97 = v168;
          v98 = v92;
LABEL_25:
          (*(v96 + 56))(v98, v95, 1, v91);
          v118 = v167;
          v119 = v166;
          v120 = v176;
          (*(v167 + 16))(v166, v176, v97);
          v179[0] = v119;
          v121 = v177;
          v122 = v151;
          sub_479B4(v177, v151, &qword_1869B8, &qword_12BF88);
          v179[1] = v122;
          v123 = v98;
          v124 = v98;
          v125 = v153;
          sub_479B4(v123, v153, &qword_1869C8, &qword_12BF90);
          v179[2] = v125;
          sub_EA490(v179, v171);
          sub_488C8(v124, &qword_1869C8, &qword_12BF90);
          sub_488C8(v121, &qword_1869B8, &qword_12BF88);
          v126 = *(v118 + 8);
          v126(v120, v97);
          (*(v178 + 8))(v175, v172);
          sub_488C8(v125, &qword_1869C8, &qword_12BF90);
          sub_488C8(v122, &qword_1869B8, &qword_12BF88);
          return (v126)(v119, v97);
        }

        v99 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);
        if ((((v94 == 0 || (v144 & 1) == 0) | v174 & 1) & v144) != 0)
        {
          v89.n128_f64[0] = v99 + v99;
        }

        else
        {
          v89.n128_u64[0] = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);
        }

        if (!((v94 == 0 || (v144 & 1) == 0) | v174 & 1) && v149 == v148)
        {
          v100 = -(*sub_A79F0() * v90);
          v101 = v135;
          sub_115740();
          if ((v134(v101) & 1) == 0)
          {
            (*(v93 + 8))(v101, v172);
            v89.n128_f64[0] = v99 + v99;
            if (v27)
            {
              goto LABEL_21;
            }

            goto LABEL_23;
          }

          v102 = v101;
          v103 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDate);
          isa = sub_1156B0().super.isa;
          v105 = [v103 stringFromDate:isa];

          v106 = sub_1171B0();
          v108 = v107;

          LOBYTE(v105) = (*(*v60 + 480))(v106, v108, v3);

          (*(v178 + 8))(v102, v172);
          if (v105)
          {
            v89.n128_f64[0] = v99 + v99;
          }

          else
          {
            v89.n128_f64[0] = v99;
          }
        }

        if (v27)
        {
LABEL_21:
          v109 = 1;
          v110 = v147;
          v96 = v169;
          v111 = v146;
          v112 = v145;
LABEL_24:
          v97 = v168;
          (*(v111 + 56))(v112, v109, 1, v110, v89);
          v98 = v92;
          sub_548D0(v112, v92, &qword_1869D8, &qword_12BF98);
          v95 = 0;
          goto LABEL_25;
        }

LABEL_23:
        v113 = v89.n128_f64[0] + *(v173 + 24);
        v114 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridLineWidth);
        sub_116010();
        v186 = v183;
        v187 = v184;
        v188 = v185;
        v115 = v137;
        sub_115E30();
        v179[0] = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
        v116 = v136;
        v117 = v139;
        sub_115E10();
        (*(v138 + 8))(v115, v117);
        v111 = v146;
        v112 = v145;
        v110 = v147;
        (*(v146 + 32))(v145, v116, v147);
        v109 = 0;
        v96 = v169;
        goto LABEL_24;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_ECCA4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_5A754();
  swift_beginAccess();
  v11 = *v10;
  v12 = sub_5822C();

  result = sub_F59F0(&type metadata for PerfPowerServices, v12);
  *a3 = v11;
  *(a3 + 8) = a1;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a2;
  *(a3 + 33) = result & 1;
  return result;
}

uint64_t sub_ECD50(uint64_t a1)
{
  v2 = sub_ED518();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_ECD8C(uint64_t a1)
{
  v2 = sub_ED518();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_ECDC8@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_C0504(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_ECDF4(void *a1)
{
  v2 = sub_46F9C(&qword_1869E0, &unk_12BFA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_66DE0(a1, a1[3]);
  sub_ED518();
  sub_117B00();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_ECF08()
{
  v0 = sub_115820();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_46F9C(&qword_183560, &qword_129070);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  sub_1157E0();
  sub_66C80();
  sub_1155E0();
  sub_1155D0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_ED050@<X0>(void *a1@<X8>)
{
  result = sub_1161C0();
  *a1 = v3;
  return result;
}

double sub_ED0A4(uint64_t a1, char a2)
{
  v4 = sub_5822C();
  if (sub_F59F0(&type metadata for PerfPowerServices, v4))
  {
    return *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalHeight);
  }

  v6 = 0.0;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axisLabelPadding);
  }

  return *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing) * 0.5 + *(a1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelAdditionalOffset) + v6;
}

uint64_t sub_ED158()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_ED1A0()
{
  result = qword_186990;
  if (!qword_186990)
  {
    sub_47A1C(&qword_186988, &qword_12BF70);
    sub_47A1C(&qword_186998, &qword_12BF78);
    sub_47A1C(&qword_1869A0, &qword_12BF80);
    sub_48800(&qword_1869A8, &qword_1869A0, &qword_12BF80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_ED304();
    sub_ED3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186990);
  }

  return result;
}

unint64_t sub_ED304()
{
  result = qword_1869B0;
  if (!qword_1869B0)
  {
    sub_47A1C(&qword_1869B8, &qword_12BF88);
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869B0);
  }

  return result;
}

unint64_t sub_ED3CC()
{
  result = qword_1869C0;
  if (!qword_1869C0)
  {
    sub_47A1C(&qword_1869C8, &qword_12BF90);
    sub_ED450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869C0);
  }

  return result;
}

unint64_t sub_ED450()
{
  result = qword_1869D0;
  if (!qword_1869D0)
  {
    sub_47A1C(&qword_1869D8, &qword_12BF98);
    sub_115E40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869D0);
  }

  return result;
}

unint64_t sub_ED518()
{
  result = qword_190978[0];
  if (!qword_190978[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_190978);
  }

  return result;
}

unint64_t sub_ED570()
{
  result = qword_1869E8;
  if (!qword_1869E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869E8);
  }

  return result;
}

unint64_t sub_ED5C8()
{
  result = qword_1869F0;
  if (!qword_1869F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869F0);
  }

  return result;
}

unint64_t sub_ED620()
{
  result = qword_1869F8;
  if (!qword_1869F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1869F8);
  }

  return result;
}

unint64_t sub_ED678()
{
  result = qword_186A00;
  if (!qword_186A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186A00);
  }

  return result;
}

void sub_ED6D4(uint64_t a1)
{
  sub_C097C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_ED76C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 1;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_ED8FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 1;
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) != -1)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

__n128 sub_EDB68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_EDB7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_EDBC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_EDD18()
{
  result = qword_190D80;
  if (!qword_190D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_190D80);
  }

  return result;
}

unint64_t sub_EDD70()
{
  result = qword_190D88[0];
  if (!qword_190D88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_190D88);
  }

  return result;
}

uint64_t sub_EDDC4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[4];
  v13 = v1[2];
  v14 = v1[3];
  sub_4869C();

  v4 = sub_116900();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(*v3 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing);
  result = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = result;
  *(a1 + 40) = v11;
  return result;
}

unint64_t sub_EDE78()
{
  result = qword_186A50;
  if (!qword_186A50)
  {
    sub_47A1C(&qword_186A48, &qword_12C278);
    sub_48800(&qword_186A58, &qword_186A60, &qword_12C280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186A50);
  }

  return result;
}

uint64_t sub_EDF30@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_115ED0();
  v7 = sub_115ED0();
  v8 = sub_115ED0();
  result = sub_115EC0();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    (*(*v3 + 536))(v4, v6, v7 == 0, v8 == result - 1);
    sub_4869C();
    v10 = sub_116900();
    v12 = v11;
    v14 = v13;
    v15 = sub_5A754();
    swift_beginAccess();
    v16 = *(*v15 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelFont);

    v17 = sub_1168C0();
    v19 = v18;
    v21 = v20;
    v26 = v22;

    sub_48928(v10, v12, v14 & 1);

    swift_beginAccess();
    v23 = *(*v15 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing);
    KeyPath = swift_getKeyPath();
    swift_beginAccess();
    v25 = *(*v15 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelColor);
    *a1 = v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v21 & 1;
    *(a1 + 24) = v26;
    *(a1 + 32) = KeyPath;
    *(a1 + 40) = v23;
    *(a1 + 48) = v25;
  }

  return result;
}

unint64_t sub_EE11C()
{
  result = qword_186A78;
  if (!qword_186A78)
  {
    sub_47A1C(&qword_186A70, &unk_12C2C0);
    sub_EDE78();
    sub_48800(&qword_183ED8, &qword_183EE0, &qword_129730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186A78);
  }

  return result;
}

uint64_t sub_EE1D4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v5 = *v2;
  v6 = v2[1];
  sub_46F9C(&qword_186AA0, &unk_12C2F8);
  sub_116CC0();
  return v4;
}

uint64_t sub_EE22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = a1;
  v5 = type metadata accessor for BreakdownListView();
  v6 = *(v5 + 56);
  v7 = sub_116DC0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a3 + v6, a2, v7);

  v9 = sub_117370();

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v11 = sub_117350();
      v11[2] = v9;
      bzero(v11 + 4, v9);
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    result = (*(v8 + 8))(a2, v7);
    v12 = (a3 + *(v5 + 60));
    *v12 = v11;
    v12[1] = 0;
  }

  return result;
}

uint64_t sub_EE390@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v4 = sub_47A1C(&qword_186540, &qword_12B980);
  type metadata accessor for BreakdownCellButtonStyle();
  v5 = a1[3];
  v6 = a1[5];
  type metadata accessor for BreakdownEntryView();
  WitnessTable = swift_getWitnessTable();
  sub_F599C(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_186AA8, &qword_12C308);
  swift_getTupleTypeMetadata2();
  sub_116F20();
  v29 = v4;
  v30 = &type metadata for Int;
  v31 = sub_116480();
  v32 = sub_E3CB0();
  v33 = &protocol witness table for Int;
  sub_116E30();
  v27 = swift_getWitnessTable();
  v28 = WitnessTable;
  v26 = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_116D30();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  sub_1163F0();
  *&v16 = a1[2];
  *(&v16 + 1) = v5;
  *&v17 = a1[4];
  *(&v17 + 1) = v6;
  v23 = v16;
  v24 = v17;
  v25 = v2;
  sub_116D20();
  swift_getWitnessTable();
  v18 = v9[2];
  v18(v15, v12, v8);
  v19 = v9[1];
  v19(v12, v8);
  v18(v22, v15, v8);
  return (v19)(v15, v8);
}

uint64_t type metadata accessor for BreakdownCellButtonStyle()
{
  result = qword_1910B0;
  if (!qword_1910B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_EE758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v47 = a2;
  v48 = a6;
  v54 = a2;
  v55 = a3;
  v49 = a4;
  v56 = a4;
  v57 = a5;
  v9 = type metadata accessor for BreakdownListView();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  __chkstk_darwin(v9);
  v12 = v42 - v11;
  v13 = sub_47A1C(&qword_186540, &qword_12B980);
  v50 = a5;
  v14 = type metadata accessor for BreakdownEntryView();
  v15 = type metadata accessor for BreakdownCellButtonStyle();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_F599C(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle);
  v54 = v14;
  v55 = v15;
  v44 = WitnessTable;
  v56 = WitnessTable;
  v57 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_186AA8, &qword_12C308);
  v18 = a1;
  swift_getTupleTypeMetadata2();
  v42[1] = sub_116F20();
  v19 = sub_116480();
  v20 = sub_E3CB0();
  v54 = v13;
  v55 = &type metadata for Int;
  v56 = v19;
  v57 = v20;
  v58 = &protocol witness table for Int;
  v21 = sub_116E30();
  v22 = *(v21 - 8);
  v23 = v22[8];
  __chkstk_darwin(v21);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v42 - v27;
  v29 = *(v18 + 8);
  v43 = a3;
  result = sub_117370();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v31 = v45;
    v32 = *(v45 + 16);
    v42[0] = result;
    v33 = v18;
    v34 = v46;
    v32(v12, v33, v46);
    v35 = (*(v31 + 80) + 48) & ~*(v31 + 80);
    v36 = swift_allocObject();
    v37 = v43;
    *(v36 + 2) = v47;
    *(v36 + 3) = v37;
    v38 = v50;
    *(v36 + 4) = v49;
    *(v36 + 5) = v38;
    (*(v31 + 32))(&v36[v35], v12, v34);
    v52 = swift_getWitnessTable();
    v53 = v44;
    v39 = swift_getWitnessTable();
    sub_116E20();
    v51 = v39;
    swift_getWitnessTable();
    v40 = v22[2];
    v40(v28, v25, v21);
    v41 = v22[1];
    v41(v25, v21);
    v40(v48, v28, v21);
    return (v41)(v28, v21);
  }

  return result;
}

uint64_t sub_EEBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X8>)
{
  v163 = a1;
  v164 = a2;
  v154 = a7;
  v171 = type metadata accessor for BreakdownEntryView();
  v172 = type metadata accessor for BreakdownCellButtonStyle();
  WitnessTable = swift_getWitnessTable();
  v173 = WitnessTable;
  v174 = sub_F599C(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle);
  v147 = v174;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = sub_47A1C(&qword_186AA8, &qword_12C308);
  swift_getTupleTypeMetadata2();
  v13 = sub_116F20();
  v139 = *(v13 - 8);
  v14 = *(v139 + 64);
  __chkstk_darwin(v13);
  v138 = &v128 - v15;
  v135 = sub_46F9C(&qword_184F40, &unk_12C690);
  v134 = *(v135 - 8);
  v16 = *(v134 + 64);
  __chkstk_darwin(v135);
  v133 = &v128 - v17;
  v137 = v12;
  v18 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v19);
  v136 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v149 = &v128 - v22;
  v146 = swift_checkMetadataState();
  v23 = *(*(v146 - 8) + 64);
  __chkstk_darwin(v146);
  v145 = &v128 - v24;
  v25 = swift_checkMetadataState();
  v158 = *(v25 - 8);
  v26 = *(v158 + 64);
  __chkstk_darwin(v25);
  v28 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v157 = &v128 - v30;
  v150 = OpaqueTypeMetadata2;
  v148 = *(OpaqueTypeMetadata2 - 8);
  v31 = *(v148 + 64);
  __chkstk_darwin(v32);
  v144 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v143 = &v128 - v35;
  v36 = a3;
  v171 = a3;
  v172 = a4;
  v165 = a5;
  v166 = a6;
  v173 = a5;
  v174 = a6;
  v155 = type metadata accessor for BreakdownListView();
  v141 = *(v155 - 8);
  v37 = *(v141 + 64);
  __chkstk_darwin(v155);
  v39 = &v128 - v38;
  v153 = v13;
  v159 = v25;
  v152 = sub_116480();
  v151 = *(v152 - 8);
  v40 = *(v151 + 64);
  __chkstk_darwin(v152);
  v42 = &v128 - v41;
  v161 = *(a4 - 8);
  v43 = *(v161 + 64);
  __chkstk_darwin(v44);
  v156 = &v128 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v128 - v47;
  v49 = v164;
  v142 = *(v164 + 8);
  v167 = a4;
  sub_1173C0();
  v50 = *v49 == 1;
  v160 = v48;
  if (!v50)
  {
    v112 = v161;
    v113 = v156;
    v114 = v167;
    (*(v161 + 16))(v156, v48, v167);
    v174 = v36;
    v175 = v165;
    sub_A8370(&v171);
    v115 = *(v155 + 56);
    v116 = *(v155 + 16);
    sub_116DC0();
    sub_116D60();
    sub_EFAC0(v113, 0, &v171, 0, 0, 0, v114, v28);
    v117 = v158;
    v118 = *(v158 + 16);
    v119 = v157;
    v120 = v159;
    v118(v157, v28, v159);
    v121 = *(v117 + 8);
    v121(v28, v120);
    v118(v28, v119, v120);
    v122 = v153;
    swift_getWitnessTable();
    v123 = WitnessTable;
    sub_8E6BC(v28, v122, v120);
    v121(v28, v120);
    v121(v119, v120);
    (*(v112 + 8))(v160, v167);
    v124 = v42;
LABEL_7:
    v125 = v154;
    v170[2] = swift_getWitnessTable();
    v170[3] = v123;
    v126 = v152;
    swift_getWitnessTable();
    v127 = v151;
    (*(v151 + 16))(v125, v124, v126);
    return (*(v127 + 8))(v124, v126);
  }

  v129 = v42;
  v140 = v36;
  v51 = v141;
  v132 = *(v141 + 16);
  v52 = v39;
  v53 = v155;
  v132(v39, v49, v155);
  v131 = sub_1173F0();
  v54 = sub_1173E0();
  v55 = (*(v51 + 80) + 64) & ~*(v51 + 80);
  v130 = v55;
  v56 = (v37 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 2) = v54;
  *(v57 + 3) = &protocol witness table for MainActor;
  v58 = v167;
  *(v57 + 4) = v140;
  *(v57 + 5) = v58;
  v59 = v166;
  *(v57 + 6) = v165;
  *(v57 + 7) = v59;
  v60 = *(v51 + 32);
  v60(&v57[v55], v52, v53);
  v62 = v163;
  v61 = v164;
  *&v57[v56] = v163;
  v132(v52, v61, v53);
  v63 = sub_1173E0();
  v64 = swift_allocObject();
  *(v64 + 2) = v63;
  v65 = v140;
  *(v64 + 3) = &protocol witness table for MainActor;
  *(v64 + 4) = v65;
  v67 = v165;
  v66 = v166;
  *(v64 + 5) = v167;
  *(v64 + 6) = v67;
  *(v64 + 7) = v66;
  v60(&v64[v130], v52, v53);
  v68 = v167;
  *&v64[v56] = v62;
  sub_116DA0();
  v69 = v171;
  v70 = v172;
  LOBYTE(v60) = v173;
  v71 = v156;
  (*(v161 + 16))(v156, v160, v68);
  v174 = v65;
  v175 = v165;
  sub_A8370(&v171);
  v72 = *(v53 + 56);
  v73 = *(v53 + 16);
  sub_116DC0();
  sub_116D60();

  v74 = v157;
  sub_EFAC0(v71, 1, &v171, v69, v70, v60, v68, v157);
  LOBYTE(v170[0]) = 0;

  sub_116CB0();
  v75 = v172;
  v76 = v145;
  *v145 = v171;
  *(v76 + 8) = v75;
  v77 = v146;
  v78 = *(v146 + 28);
  *(v76 + v78) = swift_getKeyPath();
  sub_46F9C(&qword_186AB0, &qword_12C340);
  swift_storeEnumTagMultiPayload();
  *(v76 + 16) = 0;
  *(v76 + 24) = v69;
  *(v76 + 32) = v70;
  *(v76 + 40) = v60;
  v79 = v144;
  v80 = v159;
  v81 = WitnessTable;
  v82 = v147;
  sub_116A00();
  v83 = v148;
  sub_47B6C(v76);
  (*(v158 + 8))(v74, v80);
  v171 = v80;
  v172 = v77;
  v173 = v81;
  v174 = v82;
  v84 = v150;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = *(v83 + 16);
  v87 = v143;
  v86(v143, v79, v84);
  v166 = *(v83 + 8);
  v166(v79, v84);
  result = sub_117370();
  if (!__OFSUB__(result, 1))
  {
    v89 = v79;
    v164 = v70;
    v165 = v69;
    v90 = 1;
    v91 = v135;
    if (result - 1 > v163)
    {
      v92 = v133;
      sub_116DD0();
      v93 = sub_116630();
      v94 = *sub_8D6E4();
      sub_115FD0();
      v96 = v95;
      v98 = v97;
      v100 = v99;
      v102 = v101;
      v103 = &v92[*(sub_46F9C(&qword_184EA0, &qword_129180) + 36)];
      *v103 = v93;
      v84 = v150;
      *(v103 + 1) = v96;
      *(v103 + 2) = v98;
      *(v103 + 3) = v100;
      *(v103 + 4) = v102;
      v103[40] = 0;
      v104 = sub_116600();
      v105 = &v92[*(v91 + 36)];
      *v105 = v104;
      *(v105 + 8) = 0u;
      *(v105 + 24) = 0u;
      v105[40] = 1;
      v106 = v92;
      v89 = v79;
      sub_548D0(v106, v149, &qword_184F40, &unk_12C690);
      v90 = 0;
    }

    v107 = v149;
    (*(v134 + 56))(v149, v90, 1, v91);
    v86(v89, v87, v84);
    v171 = v89;
    v108 = v136;
    sub_479B4(v107, v136, &qword_186AA8, &qword_12C308);
    v172 = v108;
    v170[0] = v84;
    v170[1] = v137;
    v168 = OpaqueTypeConformance2;
    v169 = sub_F58EC();
    v109 = v138;
    sub_7A8C4(&v171, 2uLL, v170);
    sub_488C8(v108, &qword_186AA8, &qword_12C308);
    v110 = v166;
    v166(v89, v84);
    v111 = v153;
    swift_getWitnessTable();
    v124 = v129;
    v123 = WitnessTable;
    sub_8E5C4(v109, v111);

    (*(v139 + 8))(v109, v111);
    sub_488C8(v107, &qword_186AA8, &qword_12C308);
    v110(v87, v84);
    (*(v161 + 8))(v160, v167);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_EFAC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for BreakdownEntryView();
  v16 = v15[9];
  v17 = *(a7 - 8);
  (*(v17 + 16))(a8, a1, a7);
  *(a8 + v16) = a2;
  sub_719FC(a3, a8 + v15[10]);
  if (a5)
  {
    sub_6ACB4(a3);
    result = (*(v17 + 8))(a1, a7);
    v19 = a8 + v15[11];
    *v19 = a4;
    *(v19 + 8) = a5;
    *(v19 + 16) = a6 & 1;
  }

  else
  {
    sub_116DB0();
    sub_6ACB4(a3);
    result = (*(v17 + 8))(a1, a7);
    v20 = a8 + v15[11];
    *v20 = v22;
    *(v20 + 8) = v23;
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_EFC40@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_116CB0();
  *a5 = v12;
  *(a5 + 8) = v13;
  v10 = *(type metadata accessor for BreakdownCellButtonStyle() + 28);
  *(a5 + v10) = swift_getKeyPath();
  sub_46F9C(&qword_186AB0, &qword_12C340);
  result = swift_storeEnumTagMultiPayload();
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

uint64_t sub_EFD00(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 44));
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  sub_46F9C(&qword_186AB8, &qword_12C348);
  return sub_116D70();
}

uint64_t sub_EFD64(uint64_t a1)
{
  sub_EFE84(v1, *(a1 + 16), *(a1 + 24), v3);
  sub_46F9C(&qword_186AC0, &qword_12C350);
  sub_46F9C(&qword_186AC8, &qword_12C358);
  sub_48800(&qword_186AD0, &qword_186AC0, &qword_12C350);
  sub_F2BAC(&qword_186AD8, &qword_186AC8, &qword_12C358, sub_F2B7C);
  return sub_1160F0();
}

uint64_t sub_EFE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = type metadata accessor for BreakdownEntryView();
  v32 = *(v30 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v30);
  v31 = &v25 - v8;
  v10 = (a1 + *(v9 + 40));
  v11 = v10[3];
  v12 = v10[4];
  sub_66DE0(v10, v11);
  v35 = a2;
  v36 = a3;
  v29 = a3;
  v13 = sub_A8370(&v34);
  v14 = *(*(a2 - 8) + 16);
  v28 = a1;
  v14(v13, a1, a2);
  (*(v12 + 8))(&v34, v11, v12);
  sub_6ACB4(&v34);
  v35 = a2;
  v36 = a3;
  v15 = sub_A8370(&v34);
  v26 = a2;
  v14(v15, a1, a2);
  sub_CB30C(&v34, a4);
  v17 = v31;
  v16 = v32;
  v27 = *(v32 + 16);
  v18 = v30;
  v27(v31, a1, v30);
  v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v21 = v29;
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  v22 = *(v16 + 32);
  v22(v20 + v19, v17, v18);
  a4[7] = sub_F51A0;
  a4[8] = v20;
  a4[9] = 0;
  a4[10] = 0;
  v27(v17, v28, v18);
  v23 = swift_allocObject();
  *(v23 + 16) = v26;
  *(v23 + 24) = v21;
  result = (v22)(v23 + v19, v17, v18);
  a4[11] = 0;
  a4[12] = 0;
  a4[13] = sub_F52B0;
  a4[14] = v23;
  return result;
}

uint64_t sub_F0110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v164 = a4;
  v7 = sub_46F9C(&qword_186C50, &qword_12C560);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v135 - v12;
  v162 = sub_46F9C(&qword_186C58, &qword_12C568);
  v14 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v163 = &v135 - v15;
  v138 = sub_46F9C(&qword_186C60, &qword_12C570);
  v16 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v139 = &v135 - v17;
  v145 = sub_46F9C(&qword_186C68, &qword_12C578);
  v18 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v140 = &v135 - v19;
  v142 = sub_46F9C(&qword_186C70, &qword_12C580);
  v20 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v144 = &v135 - v21;
  v22 = sub_46F9C(&qword_186C78, &qword_12C588);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v135 - v24;
  v151 = sub_46F9C(&qword_186C80, &qword_12C590);
  v26 = *(*(v151 - 8) + 64);
  __chkstk_darwin(v151);
  v152 = &v135 - v27;
  v158 = sub_46F9C(&qword_186C88, &qword_12C598);
  v28 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v153 = &v135 - v29;
  v143 = sub_46F9C(&qword_186C90, &qword_12C5A0);
  v30 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v141 = &v135 - v31;
  v149 = sub_46F9C(&qword_186C98, &qword_12C5A8);
  v32 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v146 = &v135 - v33;
  v155 = sub_46F9C(&qword_186CA0, &qword_12C5B0);
  v34 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v157 = &v135 - v35;
  v147 = sub_46F9C(&qword_186CA8, &qword_12C5B8);
  v36 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v148 = &v135 - v37;
  v156 = sub_46F9C(&qword_186CB0, &qword_12C5C0);
  v38 = *(*(v156 - 8) + 64);
  __chkstk_darwin(v156);
  v150 = &v135 - v39;
  v40 = sub_46F9C(&qword_186CB8, &qword_12C5C8);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v135 - v43;
  v159 = sub_46F9C(&qword_186CC0, &qword_12C5D0);
  v45 = *(*(v159 - 8) + 64);
  __chkstk_darwin(v159);
  v154 = &v135 - v46;
  v47 = sub_46F9C(&qword_186CC8, &qword_12C5D8);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v161 = &v135 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v50);
  v160 = &v135 - v52;
  v53 = *(a3 + 48);
  v165 = a1;
  v166 = a2;
  v167 = a3;
  v54 = v53(a2, a3, v51);
  if (v54 != 6)
  {
    v55 = v54;
    v56 = (*(v167 + 24))(v166);
    if (v57)
    {
      v58 = v57;
      v59 = v55;
      v137 = v10;
      if (v55 == 4)
      {

        v81 = objc_allocWithZone(ISIcon);
        v82 = sub_117170();
        v83 = [v81 initWithBundleIdentifier:v82];

        v84 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
        v85 = v83;
        v150 = v84;
        sub_1159A0();
        v86 = v41;
        (*(v41 + 16))(v152, v44, v40);
        swift_storeEnumTagMultiPayload();
        sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
        v87 = v153;
        sub_116470();
        sub_479B4(v87, v157, &qword_186C88, &qword_12C598);
        swift_storeEnumTagMultiPayload();
        sub_F4BF0();
        sub_F4DC0();
        v69 = v154;
        sub_116470();

        sub_488C8(v87, &qword_186C88, &qword_12C598);
        (*(v86 + 8))(v44, v40);
        v61 = v160;
LABEL_20:
        sub_479B4(v69, v163, &qword_186CC0, &qword_12C5D0);
        swift_storeEnumTagMultiPayload();
        sub_F4B64();
        sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
        sub_116470();
        sub_488C8(v69, &qword_186CC0, &qword_12C5D0);
        v10 = v137;
        goto LABEL_21;
      }

      v60 = v56;
      if (v55 != 1)
      {
        v61 = v160;
        if (v59)
        {

          v88 = objc_allocWithZone(ISIcon);
          v89 = sub_117170();
          v90 = [v88 initWithBundleIdentifier:v89];

          v91 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
          v92 = v90;
          v150 = v91;
          sub_1159A0();
          v93 = v41;
          (*(v41 + 16))(v152, v44, v40);
          swift_storeEnumTagMultiPayload();
          sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
          v94 = v153;
          sub_116470();
          sub_479B4(v94, v157, &qword_186C88, &qword_12C598);
          swift_storeEnumTagMultiPayload();
          sub_F4BF0();
          sub_F4DC0();
          v69 = v154;
          sub_116470();

          sub_488C8(v94, &qword_186C88, &qword_12C598);
          (*(v93 + 8))(v44, v40);
        }

        else
        {
          v62 = objc_allocWithZone(ISIcon);
          v63 = sub_117170();

          v64 = [v62 initWithBundleIdentifier:v63];

          v65 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
          v152 = v64;
          v153 = v65;
          sub_1159A0();
          v66 = v41;
          v67 = v40;
          (*(v41 + 16))(v148, v44, v40);
          swift_storeEnumTagMultiPayload();
          sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
          sub_F4CA8();
          v68 = v150;
          sub_116470();
          sub_479B4(v68, v157, &qword_186CB0, &qword_12C5C0);
          swift_storeEnumTagMultiPayload();
          sub_F4BF0();
          sub_F4DC0();
          v69 = v154;
          sub_116470();

          sub_488C8(v68, &qword_186CB0, &qword_12C5C0);
          (*(v66 + 8))(v44, v67);
        }

        goto LABEL_20;
      }

      v76 = objc_opt_self();
      v77 = sub_117170();
      v78 = [v76 iconUTTypeIdentifierForNonApp:v77];

      if (v78)
      {

        v79 = [objc_allocWithZone(ISIcon) initWithType:v78];

        v80 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
        v139 = v79;
        v140 = v80;
        sub_1159A0();
        (*(v41 + 16))(v152, v44, v40);
      }

      else
      {
        if ((v60 != 0x6E4F737961776C41 || v58 != 0xEF79616C70736944) && (sub_1179E0() & 1) == 0)
        {
          if (v60 == 0xD000000000000010 && v58 == 0x80000000001367B0 || (sub_1179E0() & 1) != 0)
          {

            v111 = BatteryUIResourceBundle();
            v168 = sub_116C40();
            v169 = 0;
          }

          else
          {
            if ((v60 != 0xD000000000000015 || v58 != 0x80000000001367D0) && (sub_1179E0() & 1) == 0)
            {
              v136 = v41;
              if (v60 == 1769105747 && v58 == 0xE400000000000000 || (sub_1179E0() & 1) != 0)
              {

                v115 = objc_allocWithZone(ISIcon);
                v116 = sub_117170();
                v117 = [v115 initWithBundleIdentifier:v116];

                v118 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
                v135 = v117;
                v141 = v118;
                sub_1159A0();
                v119 = *(v41 + 16);
                v120 = v40;
                v119(v152, v44, v40);
              }

              else
              {
                if (v60 == 0x74694B656D6F48 && v58 == 0xE700000000000000)
                {
                }

                else
                {
                  v123 = sub_1179E0();

                  if ((v123 & 1) == 0)
                  {
                    v129 = objc_allocWithZone(ISIcon);
                    v130 = sub_117170();
                    v131 = [v129 initWithBundleIdentifier:v130];

                    v132 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
                    v133 = v131;
                    v153 = v132;
                    sub_1159A0();
                    (*(v41 + 16))(v139, v44, v40);
                    swift_storeEnumTagMultiPayload();
                    sub_F4DC0();
                    sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
                    v134 = v140;
                    sub_116470();
                    sub_479B4(v134, v144, &qword_186C68, &qword_12C578);
                    swift_storeEnumTagMultiPayload();
                    sub_F4D34();
                    sub_F4EEC();
                    v101 = v146;
                    sub_116470();

                    v102 = v134;
                    v103 = &qword_186C68;
                    v104 = &qword_12C578;
                    goto LABEL_17;
                  }
                }

                v124 = objc_allocWithZone(ISIcon);
                v125 = sub_117170();
                v126 = [v124 initWithBundleIdentifier:v125];

                v127 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
                v135 = v126;
                v141 = v127;
                sub_1159A0();
                v128 = *(v41 + 16);
                v120 = v40;
                v128(v152, v44, v40);
              }

              swift_storeEnumTagMultiPayload();
              sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
              v121 = v153;
              sub_116470();
              sub_479B4(v121, v139, &qword_186C88, &qword_12C598);
              swift_storeEnumTagMultiPayload();
              sub_F4DC0();
              v122 = v140;
              sub_116470();
              sub_488C8(v121, &qword_186C88, &qword_12C598);
              sub_479B4(v122, v144, &qword_186C68, &qword_12C578);
              swift_storeEnumTagMultiPayload();
              sub_F4D34();
              sub_F4EEC();
              v101 = v146;
              sub_116470();

              sub_488C8(v122, &qword_186C68, &qword_12C578);
              (*(v136 + 8))(v44, v120);
              goto LABEL_18;
            }

            v114 = BatteryUIResourceBundle();
            v168 = sub_116C40();
            v169 = 1;
          }

          sub_116470();
          v112 = v171;
          *v25 = v170;
          v25[8] = v112;
          swift_storeEnumTagMultiPayload();
          sub_46F9C(&qword_186D08, &qword_12C5E0);
          sub_F4DC0();
          sub_F4E70();
          v113 = v141;
          sub_116470();
          sub_479B4(v113, v144, &qword_186C90, &qword_12C5A0);
          swift_storeEnumTagMultiPayload();
          sub_F4D34();
          sub_F4EEC();
          v101 = v146;
          sub_116470();

          sub_488C8(v113, &qword_186C90, &qword_12C5A0);
          v61 = v160;
          goto LABEL_19;
        }

        v95 = objc_allocWithZone(ISIcon);
        v96 = sub_117170();
        v97 = [v95 initWithType:v96];

        v98 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
        v139 = v97;
        v140 = v98;
        sub_1159A0();
        (*(v41 + 16))(v152, v44, v40);
      }

      swift_storeEnumTagMultiPayload();
      sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
      v99 = v153;
      sub_116470();
      sub_479B4(v99, v25, &qword_186C88, &qword_12C598);
      swift_storeEnumTagMultiPayload();
      sub_46F9C(&qword_186D08, &qword_12C5E0);
      sub_F4DC0();
      sub_F4E70();
      v100 = v141;
      sub_116470();
      sub_488C8(v99, &qword_186C88, &qword_12C598);
      sub_479B4(v100, v144, &qword_186C90, &qword_12C5A0);
      swift_storeEnumTagMultiPayload();
      sub_F4D34();
      sub_F4EEC();
      v101 = v146;
      sub_116470();

      v102 = v100;
      v103 = &qword_186C90;
      v104 = &qword_12C5A0;
LABEL_17:
      sub_488C8(v102, v103, v104);
      (*(v41 + 8))(v44, v40);
LABEL_18:
      v61 = v160;
LABEL_19:
      sub_479B4(v101, v148, &qword_186C98, &qword_12C5A8);
      swift_storeEnumTagMultiPayload();
      sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
      sub_F4CA8();
      v105 = v150;
      sub_116470();
      sub_479B4(v105, v157, &qword_186CB0, &qword_12C5C0);
      swift_storeEnumTagMultiPayload();
      sub_F4BF0();
      sub_F4DC0();
      v69 = v154;
      sub_116470();
      sub_488C8(v105, &qword_186CB0, &qword_12C5C0);
      sub_488C8(v101, &qword_186C98, &qword_12C5A8);
      goto LABEL_20;
    }
  }

  v70 = objc_allocWithZone(ISIcon);
  v71 = sub_117170();
  v72 = [v70 initWithBundleIdentifier:v71];

  v73 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
  v74 = v72;
  v75 = v73;
  sub_1159A0();
  (*(v41 + 16))(v163, v44, v40);
  swift_storeEnumTagMultiPayload();
  sub_F4B64();
  sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
  v61 = v160;
  sub_116470();

  (*(v41 + 8))(v44, v40);
LABEL_21:
  *v13 = sub_116320();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v106 = sub_46F9C(&qword_186D18, &qword_12C5E8);
  sub_F1D44(v165, v166, v167, &v13[*(v106 + 44)]);
  v107 = v161;
  sub_479B4(v61, v161, &qword_186CC8, &qword_12C5D8);
  sub_479B4(v13, v10, &qword_186C50, &qword_12C560);
  v108 = v164;
  sub_479B4(v107, v164, &qword_186CC8, &qword_12C5D8);
  v109 = sub_46F9C(&qword_186D20, &unk_12C5F0);
  sub_479B4(v10, v108 + *(v109 + 48), &qword_186C50, &qword_12C560);
  sub_488C8(v13, &qword_186C50, &qword_12C560);
  sub_488C8(v61, &qword_186CC8, &qword_12C5D8);
  sub_488C8(v10, &qword_186C50, &qword_12C560);
  return sub_488C8(v107, &qword_186CC8, &qword_12C5D8);
}

uint64_t sub_F1D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a4;
  v7 = sub_46F9C(&qword_182E20, &qword_124800);
  v108 = *(v7 - 8);
  v109 = v7;
  v8 = *(v108 + 64);
  __chkstk_darwin(v7);
  v103 = &v103 - v9;
  v10 = sub_46F9C(&qword_186D28, &qword_12C600);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v110 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v103 - v14;
  v119 = sub_1163F0();
  LOBYTE(v125) = 1;
  v131 = (*(a3 + 16))(a2, a3);
  v132 = v15;
  v16 = sub_4869C();
  v17 = sub_116900();
  v117 = v18;
  v118 = v17;
  v20 = v19;
  v121 = v21;
  KeyPath = swift_getKeyPath();
  v115 = a1;
  v116 = KeyPath;
  v23 = *(a3 + 32);
  v113 = a2;
  v114 = a3;
  v24 = v23(a2, a3);
  v106 = v16;
  if (v25)
  {
    v131 = v24;
    v132 = v25;
    v26 = sub_116900();
    v28 = v27;
    v29 = v20;
    v31 = v30;
    v33 = v32;
    v34 = swift_getKeyPath();
    v35 = sub_116670();
    v36 = swift_getKeyPath();
    v37 = v31 & 1;
    v20 = v29;
    LOBYTE(v131) = v37;
    LOBYTE(v123) = 1;
    v38 = v37;
    v39 = 1;
    v40 = sub_116B40();
    v41 = v26;
  }

  else
  {
    v41 = 0;
    v28 = 0;
    v33 = 0;
    v34 = 0;
    v36 = 0;
    v35 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
  }

  v42 = v20 & 1;
  LOBYTE(v139) = v42;
  LOBYTE(v130[0]) = 1;
  *&v123 = v41;
  *(&v123 + 1) = v28;
  *&v124[0] = v38;
  *(&v124[0] + 1) = v33;
  v124[1] = v34;
  *&v124[2] = v39;
  *(&v124[2] + 1) = v36;
  *&v124[3] = v35;
  *(&v124[3] + 1) = v40;
  *(v155 + 7) = v123;
  *(&v155[4] + 7) = v124[3];
  *(&v155[3] + 7) = v124[2];
  *(&v155[2] + 7) = v34;
  *(&v155[1] + 7) = v124[0];
  LODWORD(v107) = v42;
  LODWORD(v112) = 1;
  v131 = v41;
  v132 = v28;
  *v133 = v38;
  *&v133[8] = v33;
  *&v133[16] = v34;
  *&v133[24] = 0;
  *&v133[32] = v39;
  *&v133[40] = v36;
  *&v133[48] = v35;
  *&v133[56] = v40;
  v44 = v117;
  v43 = v118;
  sub_488B8(v118, v117, v42);
  v45 = v121;

  v46 = v116;

  sub_479B4(&v123, v143, &qword_186D50, &qword_12C688);
  sub_488C8(&v131, &qword_186D50, &qword_12C688);
  sub_48928(v43, v44, v42);

  *&v142[1] = v155[0];
  *&v142[17] = v155[1];
  *&v142[80] = *(&v155[4] + 15);
  *&v142[65] = v155[4];
  *&v142[49] = v155[3];
  *&v142[33] = v155[2];
  v151 = v155[1];
  *(&v140 + 1) = v123;
  DWORD1(v140) = *(&v123 + 3);
  *&v139 = v43;
  *(&v139 + 1) = v44;
  LOBYTE(v140) = v107;
  *(&v140 + 1) = v45;
  v141 = v46;
  v142[0] = v112;
  v143[0] = v43;
  v143[1] = v44;
  v144 = v107;
  *&v145[3] = *(&v123 + 3);
  *v145 = v123;
  v146 = v45;
  v147 = v46;
  v148 = 0;
  v149 = v112;
  v150 = v155[0];
  *&v154[15] = *(&v155[4] + 15);
  *v154 = v155[4];
  v153 = v155[3];
  v152 = v155[2];
  sub_479B4(&v139, &v131, &qword_186D30, &qword_12C608);
  sub_488C8(v143, &qword_186D30, &qword_12C608);
  *(&v138[5] + 7) = *&v142[32];
  *(&v138[6] + 7) = *&v142[48];
  *(&v138[7] + 7) = *&v142[64];
  *(&v138[1] + 7) = v140;
  *(&v138[2] + 7) = v141;
  *(&v138[3] + 7) = *v142;
  *(&v138[4] + 7) = *&v142[16];
  *(&v138[8] + 7) = *&v142[80];
  *(v138 + 7) = v139;
  LODWORD(v118) = v125;
  v48 = v114;
  v47 = v115;
  v49 = v113;
  v50 = (*(v114 + 40))(v113, v114);
  if (v51)
  {
    v52 = v50;
    v53 = v51;
    v107 = sub_116320();
    v117 = *sub_8D6CC();
    LOBYTE(v123) = 0;
    v54 = *(v48 + 56);
    if (v54(v49, v48))
    {
      v55 = sub_116C00();
      v56 = sub_116B80();
      v121 = v55;

      v112 = v56;
    }

    else
    {
      v121 = 0;
      v112 = 0;
    }

    v131 = v52;
    v132 = v53;
    v116 = v53;

    v58 = sub_116900();
    v60 = v59;
    v62 = v61;
    if (v54(v49, v48))
    {
      v63 = sub_116B80();
    }

    else
    {
      v63 = sub_116B40();
    }

    v131 = v63;
    v64 = sub_116890();
    v66 = v65;
    v68 = v67;
    sub_48928(v58, v60, v62 & 1);

    sub_1166B0();
    v69 = sub_116810();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    sub_48928(v64, v66, v68 & 1);

    v76 = v121;
    sub_F511C(v121);
    sub_488B8(v69, v71, v73 & 1);

    sub_F515C(v76);
    v122 = v73 & 1;
    v105 = v71;
    v106 = v69;
    sub_48928(v69, v71, v73 & 1);
    v104 = v75;

    sub_F515C(v76);

    v57 = v123;
    v116 = v122;
    v47 = v115;
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v116 = 0;
    v117 = 0;
    v121 = 0;
    v112 = 0;
    v104 = 0;
    v105 = 0;
    v57 = 0;
  }

  v77 = type metadata accessor for BreakdownEntryView();
  v78 = 1;
  v79 = v109;
  if (*(v47 + *(v77 + 36)) == 1)
  {
    v80 = sub_116C00();
    v81 = sub_116720();
    v82 = swift_getKeyPath();
    v131 = v80;
    v132 = v82;
    *v133 = v81;
    sub_1166A0();
    sub_46F9C(&qword_182E30, &unk_127C70);
    sub_48748();
    v83 = v103;
    sub_1169E0();

    v84 = [objc_opt_self() systemGray3Color];
    *(v83 + *(v79 + 36)) = sub_116BE0();
    sub_F50AC(v83, v120);
    v78 = 0;
  }

  v85 = v120;
  (*(v108 + 56))(v120, v78, 1, v79);
  v86 = v85;
  v87 = v110;
  sub_479B4(v86, v110, &qword_186D28, &qword_12C600);
  *(&v124[2] + 1) = v138[2];
  *(&v124[1] + 1) = v138[1];
  *(&v124[5] + 1) = v138[5];
  *(&v124[6] + 1) = v138[6];
  *(&v124[7] + 1) = v138[7];
  v124[8] = *(&v138[7] + 15);
  *(&v124[3] + 1) = v138[3];
  v123 = v119;
  LOBYTE(v124[0]) = v118;
  *(&v124[4] + 1) = v138[4];
  *(v124 + 1) = v138[0];
  v88 = v124[6];
  v89 = v111;
  *(v111 + 96) = v124[5];
  *(v89 + 112) = v88;
  v90 = v124[8];
  *(v89 + 128) = v124[7];
  *(v89 + 144) = v90;
  v91 = v124[2];
  *(v89 + 32) = v124[1];
  *(v89 + 48) = v91;
  v92 = v124[4];
  *(v89 + 64) = v124[3];
  *(v89 + 80) = v92;
  v93 = v124[0];
  *v89 = v123;
  *(v89 + 16) = v93;
  *(v89 + 160) = 0;
  *(v89 + 168) = 1;
  v94 = v106;
  v95 = v107;
  *&v125 = v107;
  *(&v125 + 1) = v117;
  *&v126 = v57;
  *(&v126 + 1) = v121;
  v115 = v57;
  v96 = v112;
  *&v127 = v112;
  *(&v127 + 1) = v106;
  v97 = v104;
  v98 = v105;
  *&v128 = v105;
  *(&v128 + 1) = v116;
  v129 = v104;
  *(v89 + 240) = v104;
  v99 = v128;
  *(v89 + 208) = v127;
  *(v89 + 224) = v99;
  v100 = v126;
  *(v89 + 176) = v125;
  *(v89 + 192) = v100;
  v101 = sub_46F9C(&qword_186D38, &qword_12C610);
  sub_479B4(v87, v89 + *(v101 + 80), &qword_186D28, &qword_12C600);
  sub_479B4(&v123, &v131, &qword_186D40, &qword_12C618);
  sub_479B4(&v125, &v131, &qword_186D48, &qword_12C620);
  sub_488C8(v120, &qword_186D28, &qword_12C600);
  sub_488C8(v87, &qword_186D28, &qword_12C600);
  v130[0] = v95;
  v130[1] = v117;
  v130[2] = v115;
  v130[3] = v121;
  v130[4] = v96;
  v130[5] = v94;
  v130[6] = v98;
  v130[7] = v116;
  v130[8] = v97;
  sub_488C8(v130, &qword_186D48, &qword_12C620);
  v135 = v138[5];
  v136 = v138[6];
  *v137 = v138[7];
  *&v137[15] = *(&v138[7] + 15);
  *&v133[17] = v138[1];
  *&v133[33] = v138[2];
  *&v133[49] = v138[3];
  v134 = v138[4];
  v131 = v119;
  v132 = 0;
  v133[0] = v118;
  *&v133[1] = v138[0];
  return sub_488C8(&v131, &qword_186D40, &qword_12C618);
}

BOOL sub_F27A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = sub_1170E0();
  return v5 == sub_1170E0();
}

uint64_t sub_F280C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1162F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_186AB0, &qword_12C340);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BreakdownCellButtonStyle();
  sub_479B4(v1 + *(v12 + 28), v11, &qword_186AB0, &qword_12C340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_115FF0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1174D0();
    v16 = sub_1165F0();
    sub_1159B0();

    sub_1162E0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_F2A38(uint64_t a1)
{
  v2 = sub_115FF0();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1161B0();
}

uint64_t sub_F2B00@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_116320();
  v7 = *sub_8D6C0();
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  v8 = sub_46F9C(&qword_186C48, &qword_12C558);
  return sub_F0110(v5, v3, v4, a1 + *(v8 + 44));
}

uint64_t sub_F2BAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F2C30()
{
  result = qword_186AF0;
  if (!qword_186AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186AF0);
  }

  return result;
}

uint64_t sub_F2C84@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v1 = type metadata accessor for BreakdownCellButtonStyle();
  v67 = *(v1 - 8);
  v2 = *(v67 + 8);
  __chkstk_darwin(v1 - 8);
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_46F9C(&qword_186AF8, &qword_12C370);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v59 - v7;
  v9 = sub_46F9C(&qword_186B00, &qword_12C378);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v59 - v12;
  v14 = sub_46F9C(&qword_186B08, &qword_12C380);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v65 = sub_46F9C(&qword_186B10, &qword_12C388);
  v63 = *(v65 - 8);
  v18 = *(v63 + 64);
  __chkstk_darwin(v65);
  v59 = &v59 - v19;
  v64 = sub_46F9C(&qword_186B18, &qword_12C390);
  v62 = *(v64 - 8);
  v20 = *(v62 + 64);
  __chkstk_darwin(v64);
  v61 = &v59 - v21;
  sub_116500();
  v22 = sub_116600();
  v23 = &v8[*(v5 + 44)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = sub_116660();
  v25 = v60;
  *(v60 + 16);
  sub_115FD0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_548D0(v8, v13, &qword_186AF8, &qword_12C370);
  v34 = &v13[*(v10 + 44)];
  *v34 = v24;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  sub_548D0(v13, v17, &qword_186B00, &qword_12C378);
  v17[*(v14 + 36)] = 0;
  LOBYTE(v69) = sub_116510() & 1;
  v35 = v25;
  v36 = 1;
  sub_F32B8(v35, v3);
  v37 = (v67[80] + 16) & ~v67[80];
  v66 = v2;
  v38 = v14;
  v39 = swift_allocObject() + v37;
  v67 = v3;
  v40 = v3;
  v41 = v59;
  v42 = v35;
  sub_F3320(v40, v39);
  v43 = sub_F3424();
  sub_116AE0();

  sub_488C8(v17, &qword_186B08, &qword_12C380);
  v44 = *(v35 + 8);
  LOBYTE(v69) = *v35;
  v70 = v44;
  sub_46F9C(&qword_182D78, &qword_12C9A0);
  v45 = sub_116CC0();
  if ((v73 & 1) == 0)
  {
    v46 = *(v35 + 32);
    v47 = *(v35 + 40);
    v69 = *(v35 + 24);
    v70 = v46;
    LOBYTE(v71) = v47;
    sub_46F9C(&qword_186AB8, &qword_12C348);
    v45 = sub_116D60();
    v36 = v73;
  }

  __chkstk_darwin(v45);
  *(&v59 - 2) = v35;
  v48 = sub_46F9C(&qword_186B50, &qword_12C3A0);
  v69 = v38;
  v70 = &type metadata for Bool;
  v71 = v43;
  v72 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = sub_F3838();
  v51 = v61;
  v52 = v36;
  v53 = v65;
  sub_8E234(v52, sub_F3830, (&v59 - 4), v65, v48, OpaqueTypeConformance2, v50, v61);
  (*(v63 + 8))(v41, v53);
  v54 = v67;
  sub_F32B8(v42, v67);
  v55 = swift_allocObject();
  sub_F3320(v54, v55 + v37);
  v56 = v68;
  (*(v62 + 32))(v68, v51, v64);
  result = sub_46F9C(&qword_186B70, qword_12C3B0);
  v58 = (v56 + *(result + 36));
  *v58 = sub_F3A6C;
  v58[1] = v55;
  v58[2] = 0;
  v58[3] = 0;
  return result;
}

uint64_t sub_F32B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakdownCellButtonStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F3320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakdownCellButtonStyle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F3384(uint64_t a1, char *a2)
{
  v4 = *(type metadata accessor for BreakdownCellButtonStyle() - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));
  v8 = *v5;
  v9 = *(v5 + 1);
  v7 = *a2;
  sub_46F9C(&qword_182D78, &qword_12C9A0);
  return sub_116CD0();
}

unint64_t sub_F3424()
{
  result = qword_186B20;
  if (!qword_186B20)
  {
    sub_47A1C(&qword_186B08, &qword_12C380);
    sub_F3508(&qword_186B28, &qword_186B00, &qword_12C378, sub_F358C);
    sub_48800(&qword_186B40, &qword_186B48, &qword_12C398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186B20);
  }

  return result;
}

uint64_t sub_F3508(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F358C()
{
  result = qword_186B30;
  if (!qword_186B30)
  {
    sub_47A1C(&qword_186AF8, &qword_12C370);
    sub_F599C(&qword_186B38, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186B30);
  }

  return result;
}

uint64_t sub_F3648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_115FF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v21 = sub_116EB0();
  v12 = v11;
  v13 = sub_116EB0();
  v15 = v14;
  sub_F280C(v10);
  (*(v4 + 104))(v7, enum case for ColorScheme.light(_:), v3);
  v16 = sub_115FE0();
  v17 = *(v4 + 8);
  v17(v7, v3);
  v17(v10, v3);
  v18 = sub_46F9C(&qword_186B10, &qword_12C388);
  (*(*(v18 - 8) + 16))(a2, v22, v18);
  result = sub_46F9C(&qword_186B50, &qword_12C3A0);
  v20 = a2 + *(result + 36);
  *v20 = v13;
  *(v20 + 8) = v15;
  *(v20 + 16) = (v16 & 1) == 0;
  *(v20 + 24) = v21;
  *(v20 + 32) = v12;
  return result;
}

unint64_t sub_F3838()
{
  result = qword_186B58;
  if (!qword_186B58)
  {
    sub_47A1C(&qword_186B50, &qword_12C3A0);
    sub_47A1C(&qword_186B08, &qword_12C380);
    sub_F3424();
    swift_getOpaqueTypeConformance2();
    sub_48800(&qword_186B60, &qword_186B68, &qword_12C3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186B58);
  }

  return result;
}

uint64_t sub_F3940()
{
  v1 = (type metadata accessor for BreakdownCellButtonStyle() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 4);

  v7 = v1[9];
  sub_46F9C(&qword_186AB0, &qword_12C340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_115FF0();
    (*(*(v8 - 8) + 8))(&v3[v7], v8);
  }

  else
  {
    v9 = *&v3[v7];
  }

  return swift_deallocObject();
}

uint64_t sub_F3A6C()
{
  v1 = *(type metadata accessor for BreakdownCellButtonStyle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  sub_46F9C(&qword_186AB8, &qword_12C348);
  return sub_116D70();
}

uint64_t sub_F3B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_F3BB4(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_1173A0();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    sub_116DC0();
    if (v5 <= 0x3F)
    {
      sub_F3FF0();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_F3C68(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((*(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-17 - v7) | v9)) + 5) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    v19 = a1 & 0xFFFFFFFFFFFFFFF8;
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((v19 + v9 + 16) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v20 = *(v19 + 8);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

uint64_t sub_F3DEC(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = ((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~(v8 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
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

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      v18 = result & 0xFFFFFFFFFFFFFFF8;
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *(v18 + 8) = v19;
      }

      else
      {
        v20 = *(v5 + 56);

        return v20((v8 + ((((v18 + (v8 | 7) + 16) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8);
      }

      return result;
    }
  }

  if (((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 16) & ~v8) + *(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~(v8 | 7)) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
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

void sub_F3FF0()
{
  if (!qword_186B78)
  {
    sub_47A1C(&qword_186A98, &qword_12C2F0);
    v0 = sub_116CF0();
    if (!v1)
    {
      atomic_store(v0, &qword_186B78);
    }
  }
}

void sub_F4054(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_F4458();
    if (v3 <= 0x3F)
    {
      sub_F472C(319, &qword_186B88, &type metadata accessor for Binding);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_F4118(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  v8 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6] & 0xFFFFFFFFFFFFFFF8) + 32);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_F426C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((v9 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v19 + 16) = 0u;
          *(v19 + 32) = 0u;
          *(v19 + 8) = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 32) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (((v9 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

unint64_t sub_F4458()
{
  result = qword_186B80;
  if (!qword_186B80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_186B80);
  }

  return result;
}

uint64_t sub_F44D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_46F9C(&qword_186B90, &qword_12C528);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_F45A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_46F9C(&qword_186B90, &qword_12C528);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_F4650()
{
  sub_F472C(319, &qword_186BF0, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_F472C(319, &qword_186B88, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_F4780();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_F472C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_F4780()
{
  if (!qword_186BF8)
  {
    sub_115FF0();
    v0 = sub_116000();
    if (!v1)
    {
      atomic_store(v0, &qword_186BF8);
    }
  }
}

uint64_t sub_F47D8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  sub_47A1C(&qword_186540, &qword_12B980);
  type metadata accessor for BreakdownEntryView();
  type metadata accessor for BreakdownCellButtonStyle();
  swift_getWitnessTable();
  sub_F599C(&qword_182DC0, type metadata accessor for BreakdownCellButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_186AA8, &qword_12C308);
  swift_getTupleTypeMetadata2();
  sub_116F20();
  sub_116480();
  sub_E3CB0();
  sub_116E30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_116D30();
  return swift_getWitnessTable();
}

unint64_t sub_F4A20()
{
  result = qword_186C40;
  if (!qword_186C40)
  {
    sub_47A1C(&qword_186B70, qword_12C3B0);
    sub_47A1C(&qword_186B10, &qword_12C388);
    sub_47A1C(&qword_186B50, &qword_12C3A0);
    sub_47A1C(&qword_186B08, &qword_12C380);
    sub_F3424();
    swift_getOpaqueTypeConformance2();
    sub_F3838();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186C40);
  }

  return result;
}

unint64_t sub_F4B64()
{
  result = qword_186CD0;
  if (!qword_186CD0)
  {
    sub_47A1C(&qword_186CC0, &qword_12C5D0);
    sub_F4BF0();
    sub_F4DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CD0);
  }

  return result;
}

unint64_t sub_F4BF0()
{
  result = qword_186CD8;
  if (!qword_186CD8)
  {
    sub_47A1C(&qword_186CB0, &qword_12C5C0);
    sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
    sub_F4CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CD8);
  }

  return result;
}

unint64_t sub_F4CA8()
{
  result = qword_186CE8;
  if (!qword_186CE8)
  {
    sub_47A1C(&qword_186C98, &qword_12C5A8);
    sub_F4D34();
    sub_F4EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CE8);
  }

  return result;
}

unint64_t sub_F4D34()
{
  result = qword_186CF0;
  if (!qword_186CF0)
  {
    sub_47A1C(&qword_186C90, &qword_12C5A0);
    sub_F4DC0();
    sub_F4E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CF0);
  }

  return result;
}

unint64_t sub_F4DC0()
{
  result = qword_186CF8;
  if (!qword_186CF8)
  {
    sub_47A1C(&qword_186C88, &qword_12C598);
    sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186CF8);
  }

  return result;
}

unint64_t sub_F4E70()
{
  result = qword_186D00;
  if (!qword_186D00)
  {
    sub_47A1C(&qword_186D08, &qword_12C5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D00);
  }

  return result;
}

unint64_t sub_F4EEC()
{
  result = qword_186D10;
  if (!qword_186D10)
  {
    sub_47A1C(&qword_186C68, &qword_12C578);
    sub_F4DC0();
    sub_48800(&qword_186CE0, &qword_186CB8, &qword_12C5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D10);
  }

  return result;
}

char *sub_F4FB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_186D68, &unk_12C6A0);
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

uint64_t sub_F50AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_182E20, &qword_124800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F511C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F515C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F51A8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for BreakdownEntryView() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  (*(*(v2 - 8) + 8))(v5, v2);
  sub_6ACB4((v5 + v3[12]));
  v6 = (v5 + v3[13]);
  v7 = *v6;

  v8 = v6[1];

  return swift_deallocObject();
}

uint64_t sub_F52B8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for BreakdownEntryView();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return sub_EFD00(a1, v5);
}

uint64_t sub_F5324()
{
  v13 = *(v0 + 16);
  v14 = *(v0 + 32);
  v1 = (type metadata accessor for BreakdownListView() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = (v3 + v1[16]);
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = sub_116DC0();
  (*(*(v13 - 8) + 8))(&v5[*(v8 + 32)], v13);
  v9 = (v3 + v1[17]);
  v10 = *v9;

  v11 = v9[1];

  return swift_deallocObject();
}

uint64_t sub_F545C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for BreakdownListView() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_EEBB0(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_F551C@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = *(type metadata accessor for BreakdownListView() - 8);
  v8 = *(v1 + ((*(v7 + 64) + ((*(v7 + 80) + 64) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = type metadata accessor for BreakdownListView();
  result = sub_EE1D4(v9);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > v8)
  {
    v11 = *(result + v8 + 32);

    *a1 = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_F5618()
{
  v14 = *(v0 + 32);
  v15 = *(v0 + 48);
  v1 = (type metadata accessor for BreakdownListView() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + v2 + 8);

  v6 = (v0 + v2 + v1[16]);
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = sub_116DC0();
  (*(*(v14 - 8) + 8))(&v6[*(v9 + 32)], v14);
  v10 = (v0 + v2 + v1[17]);
  v11 = *v10;

  v12 = v10[1];

  return swift_deallocObject();
}

uint64_t sub_F5764(char *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = *(type metadata accessor for BreakdownListView() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *a1;
  v11 = (v1 + *(type metadata accessor for BreakdownListView() + 60) + v8);
  v13 = *v11;
  v12 = v11[1];

  sub_46F9C(&qword_186AA0, &unk_12C2F8);
  sub_116CC0();
  v14 = v16;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_F4FA4(v16);
  v14 = result;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v14 + 16) > v9)
  {
    *(v14 + v9 + 32) = v10;
    sub_116CD0();
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_F58EC()
{
  result = qword_186D58;
  if (!qword_186D58)
  {
    sub_47A1C(&qword_186AA8, &qword_12C308);
    sub_F3508(&qword_186D60, &qword_184F40, &unk_12C690, sub_AAF8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D58);
  }

  return result;
}

uint64_t sub_F599C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F59F0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 + 8);
  v7[3] = a1;
  v7[4] = v4;
  v5 = sub_A8370(v7);
  (*(*(v3 - 8) + 16))(v5, v2, v3);
  LOBYTE(v3) = sub_115950();
  sub_6ACB4(v7);
  return v3 & 1;
}

unint64_t sub_F5A74()
{
  result = qword_186D70;
  if (!qword_186D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D70);
  }

  return result;
}

const char *sub_F5ADC()
{
  if (*v0)
  {
    return "bui_25";
  }

  else
  {
    return "bui_graph_intervals_iOS";
  }
}

uint64_t sub_F5B0C(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[4] = sub_F5B84();
  LOBYTE(v5[0]) = v2;
  v3 = sub_115950();
  sub_6ACB4(v5);
  return v3 & 1;
}

unint64_t sub_F5B5C(uint64_t a1)
{
  result = sub_F5B84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_F5B84()
{
  result = qword_186D78;
  if (!qword_186D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D78);
  }

  return result;
}

uint64_t sub_F5BE8()
{
  v1 = sub_115760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  __chkstk_darwin(v9);
  v51 = &v48 - v10;
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  __chkstk_darwin(v14);
  v52 = &v48 - v15;
  v53 = v0;
  v16 = type metadata accessor for AppDetailViewModel();
  v17 = sub_FC2E4(&qword_186E48, type metadata accessor for AppDetailViewModel);
  v18 = sub_881D0(v16, v17);
  if (!*(v18 + 16))
  {
  }

  v49 = v8;
  v50 = v5;
  v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v48 = *(v2 + 16);
  v48(v13, v18 + v19, v1);

  v20 = *(v2 + 32);
  v21 = v13;
  v22 = v1;
  v20(v52, v21, v1);
  v53 = v0;
  v23 = sub_881D0(v16, v17);
  v24 = *(v23 + 16);
  if (!v24)
  {

    return (*(v2 + 8))(v52, v1);
  }

  v25 = v23 + v19 + *(v2 + 72) * (v24 - 1);
  v26 = v49;
  v48(v49, v25, v1);

  v27 = v51;
  v20(v51, v26, v1);
  sub_115710();
  v29 = v28;
  v30 = v52;
  v31 = sub_115710();
  v33 = v29 - v32;
  v34 = v22;
  v35 = *(*v0 + 208);
  v36 = *(v35(v31) + 16);

  v38 = v33 / v36;
  v39 = v50;
  (*(*v0 + 160))(v37);
  sub_115710();
  v41 = v40;
  v42 = *(v2 + 8);
  v50 = (v2 + 8);
  v42(v39, v34);
  result = sub_115710();
  v45 = (v41 - v44) / v38;
  if (COERCE__INT64(fabs(v45)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v46 = *(v35(result) + 16);

  v47 = v46 - 1;
  if (v46 - 1 >= v45)
  {
    v47 = v45;
  }

  (*(*v0 + 264))(v47 & ~(v47 >> 63));
  v42(v27, v34);
  return (v42)(v30, v34);
}

uint64_t (*sub_F6024(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_F6088;
}

uint64_t sub_F6088(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_F5BE8();
  }

  return result;
}

uint64_t sub_F60BC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 488))();

  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate;
  swift_beginAccess();
  v4 = sub_115760();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_F61CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_115760();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  return (*(**a2 + 168))(v8);
}

uint64_t sub_F62B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_FC2E4(&qword_183550, &type metadata accessor for Date);
  v16 = a1;
  LOBYTE(a1) = sub_117160();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16, v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v9, v8, v4);
    swift_endAccess();
    sub_F5BE8();
    v11(v8, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v13 = __chkstk_darwin(KeyPath);
    v14 = v16;
    *(&v16 - 2) = v2;
    *(&v16 - 1) = v14;
    (*(*v2 + 496))(v13);
  }

  return (v11)(v16, v4);
}

uint64_t sub_F6558(uint64_t a1, uint64_t a2)
{
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a2, v4, v7);
  v10 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v10, v9, v4);
  swift_endAccess();
  sub_F5BE8();
  return (*(v5 + 8))(v9, v4);
}

void (*sub_F66B8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel);
  sub_115920();

  v4[7] = sub_F6024(v4);
  return sub_F6808;
}

uint64_t type metadata accessor for AppDetailViewModel()
{
  result = qword_191530;
  if (!qword_191530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F68C0()
{
  swift_getKeyPath();
  (*(*v0 + 488))();

  v1 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__dailyBreakdown;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_F694C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_F6998(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 216);

  return v3(v4);
}

uint64_t sub_F69EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__dailyBreakdown;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_FBBE0(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11 = v1;
    v12 = a1;
    (*(*v1 + 496))(v10);
  }
}

void (*sub_F6B1C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel);
  sub_115920();

  v4[7] = sub_F6860();
  return sub_F6C6C;
}

uint64_t sub_F6CD8()
{
  swift_getKeyPath();
  (*(*v0 + 488))();

  v1 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_F6D60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  return result;
}

uint64_t sub_F6E04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDay;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    v7 = v1;
    v8 = a1;
    (*(*v1 + 496))(v6);
  }

  return result;
}

void (*sub_F6F04(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel);
  sub_115920();

  v4[7] = sub_F6C78();
  return sub_F7054;
}

double sub_F70C0()
{
  swift_getKeyPath();
  (*(*v0 + 488))();

  v1 = v0 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__annotationSize;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_F71F0(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__annotationSize);
  result = swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    (*(*v2 + 496))(v9);
  }

  return result;
}

void (*sub_F7308(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel);
  sub_115920();

  v4[7] = sub_F7060();
  return sub_F7458;
}

uint64_t sub_F74C4()
{
  swift_getKeyPath();
  (*(*v0 + 488))();

  v1 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__showUserGuide;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_F754C(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__showUserGuide;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 496))(v6);
  }

  return result;
}

void (*sub_F7650(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 488))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_FC2E4(&qword_186D80, type metadata accessor for AppDetailViewModel);
  sub_115920();

  v4[7] = sub_F7464();
  return sub_F77A0;
}

uint64_t sub_F77AC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_F7814(a1, a2, a3 & 1, a4);
  return v11;
}

uint64_t sub_F7814(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v9 = sub_115760();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__annotationSize);
  *v14 = 0;
  v14[1] = 0;
  *(v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__showUserGuide) = 0;
  sub_115930();
  v15 = *(a1 + 16);
  v16 = sub_8D6F0();
  v18 = v15 - *v16;
  if (__OFSUB__(v15, *v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = -*v16 < 0;
  if (v18 > v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = *(a1 + 16);
  if (v18 <= v20 && v20 >= v15)
  {
    v17 = v18 & ~(v18 >> 63);
    if (v20 == v15 - v17)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  sub_FBFEC(a1, a1 + 32, v17, (2 * v15) | 1);
  v24 = v23;

  a1 = v24;
LABEL_6:
  *(v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__dailyBreakdown) = a1;
  sub_719FC(a4, v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry);

  sub_115750();
  sub_6ACB4(a4);
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate, v13, v9);
  if (a3)
  {
    v21 = *(a1 + 16);

    a2 = v21 - 1;
  }

  else
  {
  }

  *(v4 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDay) = a2;
  return v4;
}

uint64_t sub_F7A08()
{
  v1 = sub_1158D0();
  v40 = *(v1 - 8);
  v2 = *(v40 + 64);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_115760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v35 - v10;
  v12 = __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = *(*v0 + 392);
  v15(v41, v12);
  v66 = v41[10];
  v67 = v41[11];
  v68 = v41[12];
  v69 = v42;
  v62 = v41[6];
  v63 = v41[7];
  v64 = v41[8];
  v65 = v41[9];
  v58 = v41[2];
  v59 = v41[3];
  v60 = v41[4];
  v61 = v41[5];
  v57[0] = v41[0];
  v57[1] = v41[1];
  if (sub_68BD4(v57) == 1)
  {
    goto LABEL_5;
  }

  v16 = BYTE8(v58);
  v17 = sub_488C8(v41, &qword_186D88, &unk_12C870);
  if (v16)
  {
    goto LABEL_5;
  }

  (v15)(v43, v17);
  v53 = v43[10];
  v54 = v43[11];
  v55 = v43[12];
  v56 = v44;
  v49 = v43[6];
  v50 = v43[7];
  v51 = v43[8];
  v52 = v43[9];
  v45[2] = v43[2];
  v46 = v43[3];
  v47 = v43[4];
  v48 = v43[5];
  v45[0] = v43[0];
  v45[1] = v43[1];
  if (sub_68BD4(v45) == 1 || (v18 = BYTE8(v46), sub_488C8(v43, &qword_186D88, &unk_12C870), (v18 & 1) != 0))
  {
LABEL_5:
    sub_46F9C(&qword_184260, &unk_128570);
    v39 = *(v6 + 72);
    v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1248A0;
    v21 = v4;
    sub_1158A0();
    sub_115750();
    sub_115830();
    v22 = v40;
    v23 = v1;
    v24 = *(v6 + 8);
    v24(v14, v5);
    v38 = v5;
    v25 = *(v22 + 8);
    v25(v21, v23);
    sub_1158A0();
    sub_1156F0();
    sub_115830();
    v24(v14, v38);
    v26 = v20;
    v25(v21, v23);
  }

  else
  {
    sub_1158A0();
    v28 = v39;
    sub_115700();
    sub_115830();
    v36 = *(v6 + 8);
    v36(v28, v5);
    v37 = v6 + 8;
    v40 = *(v40 + 8);
    (v40)(v4, v1);
    sub_1158A0();
    v29 = v38;
    sub_115700();
    sub_115830();
    v30 = v29;
    v31 = v36;
    v36(v30, v5);
    (v40)(v4, v1);
    sub_46F9C(&qword_184260, &unk_128570);
    v32 = *(v6 + 72);
    v33 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1248A0;
    v34 = v26 + v33;
    (*(v6 + 16))(v34, v14, v5);
    (*(v6 + 32))(v34 + v32, v28, v5);
    v31(v14, v5);
  }

  return v26;
}

void sub_F7F28(uint64_t a1@<X8>)
{
  v3 = (*v1 + 256);
  v4 = *v3;
  if ((*v3)() < 0 || (v5 = *(*v1 + 208), v6 = *(v5() + 16), v7 = , !v6))
  {
    sub_FC0DC(&v55);
    goto LABEL_7;
  }

  v8 = (v4)(v7);
  v9 = v5();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(v9 + 16))
  {
    v10 = v9 + 216 * v8;
    v11 = *(v10 + 48);
    v27 = *(v10 + 32);
    v28 = v11;
    v12 = *(v10 + 64);
    v13 = *(v10 + 80);
    v14 = *(v10 + 112);
    v31 = *(v10 + 96);
    v32 = v14;
    v29 = v12;
    v30 = v13;
    v15 = *(v10 + 128);
    v16 = *(v10 + 144);
    v17 = *(v10 + 176);
    v35 = *(v10 + 160);
    v36 = v17;
    v33 = v15;
    v34 = v16;
    v18 = *(v10 + 192);
    v19 = *(v10 + 208);
    v20 = *(v10 + 224);
    v40 = *(v10 + 240);
    v38 = v19;
    v39 = v20;
    v37 = v18;
    sub_68C0C(&v27, &v55);

    v51 = v37;
    v52 = v38;
    v53 = v39;
    v54 = v40;
    v47 = v33;
    v48 = v34;
    v49 = v35;
    v50 = v36;
    v43 = v29;
    v44 = v30;
    v45 = v31;
    v46 = v32;
    v41 = v27;
    v42 = v28;
    nullsub_4(&v41);
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v68 = v54;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v64 = v50;
    v57 = v43;
    v58 = v44;
    v59 = v45;
    v60 = v46;
    v55 = v41;
    v56 = v42;
LABEL_7:
    v21 = v66;
    *(a1 + 160) = v65;
    *(a1 + 176) = v21;
    *(a1 + 192) = v67;
    *(a1 + 208) = v68;
    v22 = v62;
    *(a1 + 96) = v61;
    *(a1 + 112) = v22;
    v23 = v64;
    *(a1 + 128) = v63;
    *(a1 + 144) = v23;
    v24 = v58;
    *(a1 + 32) = v57;
    *(a1 + 48) = v24;
    v25 = v60;
    *(a1 + 64) = v59;
    *(a1 + 80) = v25;
    v26 = v56;
    *a1 = v55;
    *(a1 + 16) = v26;
    return;
  }

  __break(1u);
}

double sub_F8130@<D0>(uint64_t a1@<X8>)
{
  (*(*v1 + 392))(v18);
  v27 = v18[10];
  v28 = v18[11];
  v29 = v18[12];
  v30 = v19;
  v23 = v18[6];
  v24 = v18[7];
  v25 = v18[8];
  v26 = v18[9];
  v20[2] = v18[2];
  v20[3] = v18[3];
  v21 = v18[4];
  v22 = v18[5];
  v20[0] = v18[0];
  v20[1] = v18[1];
  if (sub_68BD4(v20) == 1)
  {
    sub_68BEC(&v31);
  }

  else
  {
    v14 = v27;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v10 = v23;
    v11 = v24;
    v12 = v25;
    v13 = v26;
    v8 = v21;
    v9 = v22;
    sub_479B4(&v8, &v31, &qword_1835F0, &unk_12B240);
    sub_488C8(v18, &qword_186D88, &unk_12C870);
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v17;
    v33 = v10;
    v34 = v11;
    v35 = v12;
    v36 = v13;
    v31 = v8;
    v32 = v9;
  }

  v3 = v38;
  *(a1 + 96) = v37;
  *(a1 + 112) = v3;
  *(a1 + 128) = v39;
  *(a1 + 144) = v40;
  v4 = v34;
  *(a1 + 32) = v33;
  *(a1 + 48) = v4;
  v5 = v36;
  *(a1 + 64) = v35;
  *(a1 + 80) = v5;
  result = *&v31;
  v7 = v32;
  *a1 = v31;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_F82B4()
{
  (*(*v0 + 400))(v3);
  v5[6] = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  v8 = v4;
  v5[2] = v3[2];
  v5[3] = v3[3];
  v5[4] = v3[4];
  v5[5] = v3[5];
  v5[0] = v3[0];
  v5[1] = v3[1];
  if (sub_68BD4(v5) == 1)
  {
    return 0;
  }

  v1 = v6;
  sub_488C8(v3, &qword_1835F0, &unk_12B240);
  return v1;
}

void sub_F8398()
{
  v1 = v0;
  v2 = sub_115760();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*v0 + 408))(v5);
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    v11 = (*v0 + 392);
    v12 = *v11;
    (*v11)(v163);
    v201 = v163[10];
    v202 = v163[11];
    v203 = v163[12];
    v204 = v164;
    v197 = v163[6];
    v198 = v163[7];
    v199 = v163[8];
    v200 = v163[9];
    v194[2] = v163[2];
    v194[3] = v163[3];
    v195 = v163[4];
    v196 = v163[5];
    v194[0] = v163[0];
    v194[1] = v163[1];
    if (sub_68BD4(v194) != 1)
    {
      v211 = v201;
      v212 = v202;
      v213 = v203;
      v214 = v204;
      v207 = v197;
      v208 = v198;
      v209 = v199;
      v210 = v200;
      v205 = v195;
      v206 = v196;
      sub_479B4(&v205, v146, &qword_1835F0, &unk_12B240);
      sub_488C8(v163, &qword_186D88, &unk_12C870);
      v216 = v211;
      v217 = v212;
      v218 = v213;
      v219 = v214;
      v215[2] = v207;
      v215[3] = v208;
      v215[4] = v209;
      v215[5] = v210;
      v215[0] = v205;
      v215[1] = v206;
      if (sub_68BD4(v215) != 1)
      {
        v13 = *(&v216 + 1);
        v12(v165);
        v190 = v165[10];
        v191 = v165[11];
        v192 = v165[12];
        v193 = v166;
        v186 = v165[6];
        v187 = v165[7];
        v188 = v165[8];
        v189 = v165[9];
        v182 = v165[2];
        v183 = v165[3];
        v184 = v165[4];
        v185 = v165[5];
        v181[0] = v165[0];
        v181[1] = v165[1];
        if (sub_68BD4(v181) == 1)
        {
          goto LABEL_26;
        }

        v14 = BYTE8(v182);
        sub_488C8(v165, &qword_186D88, &unk_12C870);
        if (v14)
        {
          goto LABEL_26;
        }

        sub_115700();
        v93 = sub_E6648();
        v98 = v15;
        v16 = v12(&v167);
        v17 = *(*v1 + 208);
        v97 = *v1 + 208;
        v18 = (v17)(v16);
        v19 = *(v18 + 16);
        if (v19)
        {
          v20 = v18 + 216 * v19;
          v21 = *(v20 - 184);
          v145[1] = *(v20 - 168);
          v145[0] = v21;
          v22 = *(v20 - 152);
          v23 = *(v20 - 136);
          v24 = *(v20 - 120);
          v145[5] = *(v20 - 104);
          v145[4] = v24;
          v145[3] = v23;
          v145[2] = v22;
          v25 = *(v20 - 88);
          v26 = *(v20 - 72);
          v27 = *(v20 - 56);
          v145[9] = *(v20 - 40);
          v145[8] = v27;
          v145[7] = v26;
          v145[6] = v25;
          v28 = *(v20 - 24);
          v29 = *(v20 - 8);
          v30 = *(v20 + 8);
          LOWORD(v145[13]) = *(v20 + 24);
          v145[12] = v30;
          v145[11] = v29;
          v145[10] = v28;
          memmove(v146, (v20 - 184), 0xD2uLL);
          nullsub_4(v146);
          sub_68C0C(v145, v147);

          v159 = v146[10];
          v160 = v146[11];
          v161 = v146[12];
          v162 = v146[13];
          v155 = v146[6];
          v156 = v146[7];
          v157 = v146[8];
          v158 = v146[9];
          v151 = v146[2];
          v152 = v146[3];
          v153 = v146[4];
          v154 = v146[5];
          v149 = v146[0];
          v150 = v146[1];
        }

        else
        {

          sub_FC0DC(&v149);
        }

        v146[10] = v177;
        v146[11] = v178;
        v146[12] = v179;
        v146[6] = v173;
        v146[7] = v174;
        v146[8] = v175;
        v146[9] = v176;
        v146[2] = v169;
        v146[3] = v170;
        v146[4] = v171;
        v146[5] = v172;
        v146[0] = v167;
        v146[1] = v168;
        *(&v146[24] + 8) = v160;
        *(&v146[25] + 8) = v161;
        *(&v146[20] + 8) = v156;
        *(&v146[21] + 8) = v157;
        *(&v146[22] + 8) = v158;
        *(&v146[23] + 8) = v159;
        *(&v146[16] + 8) = v152;
        *(&v146[17] + 8) = v153;
        *(&v146[18] + 8) = v154;
        *(&v146[19] + 8) = v155;
        *(&v146[15] + 8) = v151;
        *(&v146[13] + 8) = v149;
        *(&v146[14] + 8) = v150;
        v147[10] = v177;
        v147[11] = v178;
        v147[12] = v179;
        v147[6] = v173;
        v147[7] = v174;
        v147[8] = v175;
        v147[9] = v176;
        v147[2] = v169;
        v147[3] = v170;
        v147[4] = v171;
        v147[5] = v172;
        LOWORD(v146[13]) = v180;
        WORD4(v146[26]) = v162;
        v148 = v180;
        v147[0] = v167;
        v147[1] = v168;
        if (sub_68BD4(v147) == 1)
        {
          v145[10] = *(&v146[23] + 8);
          v145[11] = *(&v146[24] + 8);
          v145[12] = *(&v146[25] + 8);
          LOWORD(v145[13]) = WORD4(v146[26]);
          v145[6] = *(&v146[19] + 8);
          v145[7] = *(&v146[20] + 8);
          v145[8] = *(&v146[21] + 8);
          v145[9] = *(&v146[22] + 8);
          v145[2] = *(&v146[15] + 8);
          v145[3] = *(&v146[16] + 8);
          v145[4] = *(&v146[17] + 8);
          v145[5] = *(&v146[18] + 8);
          v145[0] = *(&v146[13] + 8);
          v145[1] = *(&v146[14] + 8);
          if (sub_68BD4(v145) == 1)
          {
            v141 = v177;
            v142 = v178;
            v143 = v179;
            v144 = v180;
            v137 = v173;
            v138 = v174;
            v139 = v175;
            v140 = v176;
            v133 = v169;
            v134 = v170;
            v135 = v171;
            v136 = v172;
            v131 = v167;
            v132 = v168;
            sub_488C8(&v131, &qword_186D88, &unk_12C870);
            v31 = 1;
            goto LABEL_16;
          }
        }

        else
        {
          v141 = v177;
          v142 = v178;
          v143 = v179;
          v137 = v173;
          v138 = v174;
          v139 = v175;
          v140 = v176;
          v133 = v169;
          v134 = v170;
          v135 = v171;
          v136 = v172;
          v131 = v167;
          v132 = v168;
          v127 = v177;
          v128 = v178;
          v129 = v179;
          v123 = v173;
          v124 = v174;
          v125 = v175;
          v126 = v176;
          v119 = v169;
          v120 = v170;
          v121 = v171;
          v122 = v172;
          v144 = v180;
          v130 = v180;
          v117 = v167;
          v118 = v168;
          v145[10] = *(&v146[23] + 8);
          v145[11] = *(&v146[24] + 8);
          v145[12] = *(&v146[25] + 8);
          LOWORD(v145[13]) = WORD4(v146[26]);
          v145[6] = *(&v146[19] + 8);
          v145[7] = *(&v146[20] + 8);
          v145[8] = *(&v146[21] + 8);
          v145[9] = *(&v146[22] + 8);
          v145[2] = *(&v146[15] + 8);
          v145[3] = *(&v146[16] + 8);
          v145[4] = *(&v146[17] + 8);
          v145[5] = *(&v146[18] + 8);
          v145[0] = *(&v146[13] + 8);
          v145[1] = *(&v146[14] + 8);
          if (sub_68BD4(v145) != 1)
          {
            v113 = *(&v146[23] + 8);
            v114 = *(&v146[24] + 8);
            v115 = *(&v146[25] + 8);
            v116 = WORD4(v146[26]);
            v109 = *(&v146[19] + 8);
            v110 = *(&v146[20] + 8);
            v111 = *(&v146[21] + 8);
            v112 = *(&v146[22] + 8);
            v105 = *(&v146[15] + 8);
            v106 = *(&v146[16] + 8);
            v107 = *(&v146[17] + 8);
            v108 = *(&v146[18] + 8);
            v103 = *(&v146[13] + 8);
            v104 = *(&v146[14] + 8);
            sub_479B4(&v131, v101, &qword_186D88, &unk_12C870);
            sub_6933C();
            v31 = sub_117160();
            v99[10] = v113;
            v99[11] = v114;
            v99[12] = v115;
            v100 = v116;
            v99[6] = v109;
            v99[7] = v110;
            v99[8] = v111;
            v99[9] = v112;
            v99[2] = v105;
            v99[3] = v106;
            v99[4] = v107;
            v99[5] = v108;
            v99[0] = v103;
            v99[1] = v104;
            sub_68C44(v99);
            v101[10] = v127;
            v101[11] = v128;
            v101[12] = v129;
            v102 = v130;
            v101[6] = v123;
            v101[7] = v124;
            v101[8] = v125;
            v101[9] = v126;
            v101[2] = v119;
            v101[3] = v120;
            v101[4] = v121;
            v101[5] = v122;
            v101[0] = v117;
            v101[1] = v118;
            sub_68C44(v101);
            v113 = v177;
            v114 = v178;
            v115 = v179;
            v116 = v180;
            v109 = v173;
            v110 = v174;
            v111 = v175;
            v112 = v176;
            v105 = v169;
            v106 = v170;
            v107 = v171;
            v108 = v172;
            v103 = v167;
            v104 = v168;
            sub_488C8(&v103, &qword_186D88, &unk_12C870);
LABEL_16:
            if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v13 > -9.22337204e18)
            {
              v96 = v17;
              if (v13 < 9.22337204e18)
              {
                LODWORD(v95) = v31;
                v32 = v10 - v13;
                if (!__OFSUB__(v10, v13))
                {
                  v33 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 24);
                  v34 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 32);
                  v94 = (v1 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry);
                  sub_66DE0((v1 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry), v33);
                  v35 = (*(v34 + 48))(v33, v34);
                  if (v35 == 6 || (LOBYTE(v146[0]) = v35, LOBYTE(v145[0]) = 0, sub_68F60(), (sub_117160() & 1) == 0))
                  {
                    v36 = 0xE600000000000000;
                    v37 = 0x524548544F5FLL;
                  }

                  else
                  {
                    v36 = 0xE400000000000000;
                    v37 = 1347436895;
                  }

                  v38 = sub_E639C();
                  if (v38 == 7)
                  {
                    goto LABEL_25;
                  }

                  LOBYTE(v39) = v38;
                  if (!v32)
                  {
                    goto LABEL_36;
                  }

                  v40 = v32;
                  if ((v32 & 0x8000000000000000) == 0 || (v40 = -v32, !__OFSUB__(0, v32)))
                  {
                    v41 = [objc_opt_self() localizedStringWithPercentage:v40];
                    if (!v41)
                    {
LABEL_25:
                      (*(v3 + 8))(v7, v2);

LABEL_26:
                      sub_488C8(&v205, &qword_1835F0, &unk_12B240);
                      return;
                    }

                    v42 = v41;
                    v91 = sub_1171B0();
                    v92 = v43;

                    if (v32 < 1)
                    {
                      v65 = 0xD000000000000022;
                      if (v95)
                      {
                        *&v146[0] = 0xD000000000000029;
                        *(&v146[0] + 1) = 0x80000000001368C0;
                        v223._countAndFlagsBits = v37;
                        v223._object = v36;
                        sub_117220(v223);
                        v66 = sub_117170();

                        v44 = BatteryUILocalization(v66);

                        if (!v44)
                        {
LABEL_56:
                          __break(1u);
                          goto LABEL_57;
                        }

                        goto LABEL_43;
                      }
                    }

                    else
                    {
                      if (v95)
                      {
                        *&v146[0] = 0xD00000000000002ALL;
                        *(&v146[0] + 1) = 0x8000000000136920;
                        v220._countAndFlagsBits = v37;
                        v220._object = v36;
                        sub_117220(v220);
                        v39 = sub_117170();

                        v44 = BatteryUILocalization(v39);

                        if (!v44)
                        {
                          __break(1u);
LABEL_36:
                          if ((v95 & 1) == 0)
                          {
                            *&v146[0] = 0xD000000000000022;
                            *(&v146[0] + 1) = 0x8000000000136950;
                            v222._countAndFlagsBits = v37;
                            v222._object = v36;
                            sub_117220(v222);
                            sub_E622C(*&v146[0], *(&v146[0] + 1), v39);

                            v54 = sub_117170();

                            v55 = BatteryUILocalization(v54);

                            if (v55)
                            {

                              sub_488C8(&v205, &qword_1835F0, &unk_12B240);
                              v95 = sub_1171B0();

                              sub_46F9C(&qword_182EF8, &unk_125990);
                              v56 = swift_allocObject();
                              *(v56 + 16) = xmmword_1246D0;
                              v58 = v94[3];
                              v57 = v94[4];
                              sub_66DE0(v94, v58);
                              v59 = (*(v57 + 16))(v58, v57);
                              v61 = v60;
                              *(v56 + 56) = &type metadata for String;
                              v62 = sub_53EE8();
                              *(v56 + 32) = v59;
                              *(v56 + 40) = v61;
                              *(v56 + 96) = &type metadata for String;
                              *(v56 + 104) = v62;
                              v63 = v93;
                              *(v56 + 64) = v62;
                              *(v56 + 72) = v63;
                              *(v56 + 80) = v98;
                              v64 = *(v96() + 16);

                              *(v56 + 136) = &type metadata for Int;
                              *(v56 + 144) = &protocol witness table for Int;
                              *(v56 + 112) = v64 - 1;
                              goto LABEL_48;
                            }

                            goto LABEL_55;
                          }

                          *&v146[0] = 0xD000000000000028;
                          *(&v146[0] + 1) = 0x8000000000136980;
                          v221._countAndFlagsBits = v37;
                          v221._object = v36;
                          sub_117220(v221);
                          v45 = sub_117170();

                          v46 = BatteryUILocalization(v45);

                          if (v46)
                          {

                            sub_488C8(&v205, &qword_1835F0, &unk_12B240);
                            v98 = sub_1171B0();

                            sub_46F9C(&qword_182EF8, &unk_125990);
                            v47 = swift_allocObject();
                            *(v47 + 16) = xmmword_1248A0;
                            v49 = v94[3];
                            v48 = v94[4];
                            sub_66DE0(v94, v49);
                            v50 = (*(v48 + 16))(v49, v48);
                            v52 = v51;
                            *(v47 + 56) = &type metadata for String;
                            *(v47 + 64) = sub_53EE8();
                            *(v47 + 32) = v50;
                            *(v47 + 40) = v52;
                            v53 = *(v96() + 16);

                            *(v47 + 96) = &type metadata for Int;
                            *(v47 + 104) = &protocol witness table for Int;
                            *(v47 + 72) = v53 - 1;
LABEL_48:
                            sub_117180();

                            (*(v3 + 8))(v7, v2);
                            return;
                          }

LABEL_54:
                          __break(1u);
LABEL_55:
                          __break(1u);
                          goto LABEL_56;
                        }

LABEL_43:

                        sub_488C8(&v205, &qword_1835F0, &unk_12B240);
                        v98 = sub_1171B0();

                        sub_46F9C(&qword_182EF8, &unk_125990);
                        v67 = swift_allocObject();
                        *(v67 + 16) = xmmword_1246D0;
                        v69 = v94[3];
                        v68 = v94[4];
                        sub_66DE0(v94, v69);
                        v70 = (*(v68 + 16))(v69, v68);
                        v72 = v71;
                        *(v67 + 56) = &type metadata for String;
                        v73 = sub_53EE8();
                        *(v67 + 32) = v70;
                        *(v67 + 40) = v72;
                        *(v67 + 96) = &type metadata for String;
                        *(v67 + 104) = v73;
                        v75 = v91;
                        v74 = v92;
                        *(v67 + 64) = v73;
                        *(v67 + 72) = v75;
                        *(v67 + 80) = v74;
                        v76 = *(v96() + 16);

                        *(v67 + 136) = &type metadata for Int;
                        *(v67 + 144) = &protocol witness table for Int;
                        *(v67 + 112) = v76 - 1;
                        goto LABEL_48;
                      }

                      *&v146[0] = 0xD000000000000024;
                      *(&v146[0] + 1) = 0x80000000001368F0;
                      v224._countAndFlagsBits = v37;
                      v224._object = v36;
                      sub_117220(v224);
                      sub_E622C(*&v146[0], *(&v146[0] + 1), v39);
                      v37 = v77;

                      v39 = sub_117170();

                      v78 = BatteryUILocalization(v39);

                      if (v78)
                      {
LABEL_47:

                        sub_488C8(&v205, &qword_1835F0, &unk_12B240);
                        v95 = sub_1171B0();

                        sub_46F9C(&qword_182EF8, &unk_125990);
                        v80 = swift_allocObject();
                        *(v80 + 16) = xmmword_129E30;
                        v82 = v94[3];
                        v81 = v94[4];
                        sub_66DE0(v94, v82);
                        v83 = (*(v81 + 16))(v82, v81);
                        v85 = v84;
                        *(v80 + 56) = &type metadata for String;
                        v86 = sub_53EE8();
                        *(v80 + 32) = v83;
                        *(v80 + 40) = v85;
                        *(v80 + 96) = &type metadata for String;
                        *(v80 + 104) = v86;
                        v88 = v91;
                        v87 = v92;
                        *(v80 + 64) = v86;
                        *(v80 + 72) = v88;
                        *(v80 + 80) = v87;
                        *(v80 + 136) = &type metadata for String;
                        *(v80 + 144) = v86;
                        v89 = v98;
                        *(v80 + 112) = v93;
                        *(v80 + 120) = v89;
                        v90 = *(v96() + 16);

                        *(v80 + 176) = &type metadata for Int;
                        *(v80 + 184) = &protocol witness table for Int;
                        *(v80 + 152) = v90 - 1;
                        goto LABEL_48;
                      }

                      __break(1u);
                    }

                    *&v146[0] = v65 + 1;
                    *(&v146[0] + 1) = 0x8000000000136890;
                    v225._countAndFlagsBits = v37;
                    v225._object = v36;
                    sub_117220(v225);
                    sub_E622C(*&v146[0], *(&v146[0] + 1), v39);

                    v79 = sub_117170();

                    v78 = BatteryUILocalization(v79);

                    if (!v78)
                    {
LABEL_57:
                      __break(1u);
                      return;
                    }

                    goto LABEL_47;
                  }

LABEL_53:
                  __break(1u);
                  goto LABEL_54;
                }

LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            __break(1u);
            goto LABEL_51;
          }

          v113 = v127;
          v114 = v128;
          v115 = v129;
          v116 = v130;
          v109 = v123;
          v110 = v124;
          v111 = v125;
          v112 = v126;
          v105 = v119;
          v106 = v120;
          v107 = v121;
          v108 = v122;
          v103 = v117;
          v104 = v118;
          sub_479B4(&v131, v101, &qword_186D88, &unk_12C870);
          sub_68C44(&v103);
        }

        memcpy(v145, v146, 0x1AAuLL);
        sub_488C8(v145, &qword_186D90, &unk_12C880);
        v31 = 0;
        goto LABEL_16;
      }
    }
  }
}

uint64_t sub_F9668(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_115760();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_5D9C0(a1) & 1) == 0)
  {
    v32 = *(v3 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 24);
    v33 = *(v3 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 32);
    sub_66DE0((v3 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry), v32);
    v34 = (*(v33 + 48))(v32, v33);
    return sub_5E120(a2, a3, v34, a1);
  }

  v12 = *(*v3 + 392);
  v52 = v3;
  v12(v109);
  v113[8] = v109[10];
  v113[9] = v109[11];
  v113[10] = v109[12];
  LOWORD(v113[11]) = v110;
  v113[4] = v109[6];
  v113[5] = v109[7];
  v113[6] = v109[8];
  v113[7] = v109[9];
  v113[0] = v109[2];
  v113[1] = v109[3];
  v113[2] = v109[4];
  v113[3] = v109[5];
  v111 = v109[0];
  v112 = v109[1];
  if (sub_68BD4(&v111) == 1)
  {
    return 0;
  }

  v124 = v111;
  v125 = v112;
  v13 = *&v113[0];
  v14 = BYTE8(v113[0]);
  v121 = *(&v113[7] + 9);
  v122 = *(&v113[8] + 9);
  v123[0] = *(&v113[9] + 9);
  *(v123 + 9) = *(&v113[10] + 2);
  v118 = *(&v113[4] + 9);
  v119 = *(&v113[5] + 9);
  v120 = *(&v113[6] + 9);
  v114 = *(v113 + 9);
  v115 = *(&v113[1] + 9);
  v116 = *(&v113[2] + 9);
  v117 = *(&v113[3] + 9);
  v126[6] = v113[8];
  v126[7] = v113[9];
  v127 = v113[10];
  v128 = v113[11];
  v126[2] = v113[4];
  v126[3] = v113[5];
  v126[4] = v113[6];
  v126[5] = v113[7];
  v126[0] = v113[2];
  v126[1] = v113[3];
  if (sub_68BD4(v126) == 1 || (v128 & 1) != 0 || (v15 = [sub_8D8B4()[8] stringFromTimeInterval:*(&v127 + 1)]) == 0)
  {
    sub_488C8(v109, &qword_186D88, &unk_12C870);
    return 0;
  }

  v48 = v8;
  v50 = v14;
  v16 = v15;
  v49 = sub_1171B0();
  v51 = v17;

  v82[0] = v124;
  v82[1] = v125;
  v92 = v121;
  v93 = v122;
  v94[0] = v123[0];
  *(v94 + 9) = *(v123 + 9);
  v88 = v117;
  v89 = v118;
  v90 = v119;
  v91 = v120;
  v85 = v114;
  v86 = v115;
  v83 = v13;
  v18 = v50;
  v84 = v50;
  v87 = v116;
  v19 = (*(*v52 + 208))();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 216 * v20;
    v22 = *(v21 - 168);
    v54 = *(v21 - 184);
    v55 = v22;
    v23 = *(v21 - 152);
    v24 = *(v21 - 136);
    v25 = *(v21 - 104);
    v58 = *(v21 - 120);
    v59 = v25;
    v56 = v23;
    v57 = v24;
    v26 = *(v21 - 88);
    v27 = *(v21 - 72);
    v28 = *(v21 - 40);
    v62 = *(v21 - 56);
    v63 = v28;
    v60 = v26;
    v61 = v27;
    v29 = *(v21 - 24);
    v30 = *(v21 - 8);
    v31 = *(v21 + 8);
    v67 = *(v21 + 24);
    v65 = v30;
    v66 = v31;
    v64 = v29;
    memmove(&v68, (v21 - 184), 0xD2uLL);
    nullsub_4(&v68);
    sub_68C0C(&v54, &v53);

    v105 = v78;
    v106 = v79;
    v107 = v80;
    v108 = v81;
    v101 = v74;
    v102 = v75;
    v103 = v76;
    v104 = v77;
    v97 = v70;
    v98 = v71;
    v99 = v72;
    v100 = v73;
    v95 = v68;
    v96 = v69;
  }

  else
  {

    sub_FC0DC(&v95);
  }

  v64 = v105;
  v65 = v106;
  v66 = v107;
  v67 = v108;
  v60 = v101;
  v61 = v102;
  v62 = v103;
  v63 = v104;
  v56 = v97;
  v57 = v98;
  v58 = v99;
  v59 = v100;
  v54 = v95;
  v55 = v96;
  v36 = sub_FC104();
  v37 = sub_64404(v82, &v54, &type metadata for PerAppBreakdownBucket, v36);
  v78 = v64;
  v79 = v65;
  v80 = v66;
  v81 = v67;
  v74 = v60;
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v70 = v56;
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v68 = v54;
  v69 = v55;
  sub_488C8(&v68, &qword_186D88, &unk_12C870);
  sub_488C8(v109, &qword_186D88, &unk_12C870);
  if ((v37 & 1) == 0)
  {
    v43 = v52;
    if ((v18 & 1) == 0)
    {
      sub_115700();
      v44 = *(v43 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 24);
      v45 = *(v43 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 32);
      sub_66DE0((v43 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry), v44);
      v46 = (*(v45 + 48))(v44, v45);
      sub_5E6D8(a2, a3, v49, v51, v11, v46, a1);
      v42 = v47;

      (*(v48 + 8))(v11, v7);
      return v42;
    }

    return 0;
  }

  v38 = *(v52 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 24);
  v39 = *(v52 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry + 32);
  sub_66DE0((v52 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry), v38);
  v40 = (*(v39 + 48))(v38, v39);
  sub_5E4D8(a2, a3, v49, v51, v40, a1);
  v42 = v41;

  return v42;
}

BOOL sub_F9CE4(uint64_t a1, double a2, double a3)
{
  v6 = sub_1158D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_115760();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  v19 = *(a1 + 16);
  if (!v19)
  {
    return 0;
  }

  v20 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * (v19 - 1);
  sub_115710();
  v22 = v21;
  sub_115710();
  if (v22 < a2 || v23 > a3)
  {
    return 0;
  }

  v25 = v23;
  sub_1158A0();
  sub_115700();
  sub_115830();
  v26 = *(v12 + 8);
  v26(v15, v11);
  (*(v7 + 8))(v10, v6);
  sub_115710();
  v28 = v27;
  v26(v18, v11);
  return v25 <= v28;
}

BOOL sub_F9F18()
{
  (*(*v0 + 400))(v3);
  v9 = v3[6];
  v10 = v3[7];
  v11 = v3[8];
  v12 = v4;
  v5[2] = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  v5[0] = v3[0];
  v5[1] = v3[1];
  if (sub_68BD4(v5) == 1)
  {
    return 0;
  }

  v2 = v6;
  sub_488C8(v3, &qword_1835F0, &unk_12B240);
  return *(&v2 + 1) >= 60.0 || *&v2 >= 60.0;
}

uint64_t sub_FA010()
{
  (*(*v0 + 400))(v3);
  v5[6] = v3[6];
  v5[7] = v3[7];
  v6 = v3[8];
  v7 = v4;
  v5[2] = v3[2];
  v5[3] = v3[3];
  v5[4] = v3[4];
  v5[5] = v3[5];
  v5[0] = v3[0];
  v5[1] = v3[1];
  if (sub_68BD4(v5) == 1)
  {
    return 0;
  }

  v1 = v6;

  sub_488C8(v3, &qword_1835F0, &unk_12B240);
  result = v1;
  if (!v1)
  {
    return 0;
  }

  return result;
}

void *sub_FA0E8()
{
  v1 = (*(*v0 + 448))();
  if (v1)
  {
    return v1;
  }

  v3 = (*(*v0 + 208))();
  v4 = *(v3 + 16);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v24 = _swiftEmptyArrayStorage;
  sub_7122C(0, v4, 0);
  v5 = 32;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v6 = *(v3 + v5 + 16);
    v25[0] = *(v3 + v5);
    v25[1] = v6;
    v7 = *(v3 + v5 + 32);
    v8 = *(v3 + v5 + 48);
    v9 = *(v3 + v5 + 80);
    v25[4] = *(v3 + v5 + 64);
    v25[5] = v9;
    v25[2] = v7;
    v25[3] = v8;
    v10 = *(v3 + v5 + 96);
    v11 = *(v3 + v5 + 112);
    v12 = *(v3 + v5 + 144);
    v25[8] = *(v3 + v5 + 128);
    v25[9] = v12;
    v25[6] = v10;
    v25[7] = v11;
    v13 = *(v3 + v5 + 160);
    v14 = *(v3 + v5 + 176);
    v15 = *(v3 + v5 + 192);
    v26 = *(v3 + v5 + 208);
    v25[11] = v14;
    v25[12] = v15;
    v25[10] = v13;
    sub_68C0C(v25, &v23);
    v16 = COERCE_DOUBLE(sub_62F94());
    v18 = v17;
    result = sub_68C44(v25);
    v20 = (v18 & 1) != 0 ? 0.0 : v16;
    if ((v18 & 1) == 0 && (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      break;
    }

    if (v20 <= -9.22337204e18)
    {
      goto LABEL_19;
    }

    if (v20 >= 9.22337204e18)
    {
      goto LABEL_20;
    }

    v24 = v2;
    v22 = v2[2];
    v21 = v2[3];
    if (v22 >= v21 >> 1)
    {
      sub_7122C((v21 > 1), v22 + 1, 1);
      v2 = v24;
    }

    v2[2] = v22 + 1;
    v2[v22 + 4] = v20;
    v5 += 216;
    if (!--v4)
    {

      return v2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_FA300()
{
  v1 = sub_115760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 392))(v15, v4);
  v26 = v15[10];
  v27 = v15[11];
  v28 = v15[12];
  v29 = v16;
  v22 = v15[6];
  v23 = v15[7];
  v24 = v15[8];
  v25 = v15[9];
  v18 = v15[2];
  v19 = v15[3];
  v20 = v15[4];
  v21 = v15[5];
  v17[0] = v15[0];
  v17[1] = v15[1];
  if (sub_68BD4(v17) == 1)
  {
    return 0;
  }

  v7 = BYTE8(v18);
  v8 = BYTE8(v19);
  sub_488C8(v15, &qword_186D88, &unk_12C870);
  if (v7 & 1) != 0 || (v8)
  {
    return 0;
  }

  sub_115700();
  v10 = sub_8D8B4()[7];
  isa = sub_1156B0().super.isa;
  v12 = [v10 stringFromDate:isa];

  v13 = sub_1171B0();
  (*(v2 + 8))(v6, v1);
  return v13;
}

uint64_t sub_FA530@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_186DA0, &qword_12C890);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v50 - v7;
  v9 = sub_46F9C(&qword_186DA8, &unk_12C898);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v55 = &v50 - v15;
  (*(*v1 + 392))(v95, v14);
  v104 = v95[10];
  v105 = v95[11];
  v106 = v95[12];
  v107 = v96;
  v100 = v95[6];
  v101 = v95[7];
  v102 = v95[8];
  v103 = v95[9];
  v97[2] = v95[2];
  v97[3] = v95[3];
  v98 = v95[4];
  v99 = v95[5];
  v97[0] = v95[0];
  v97[1] = v95[1];
  v16 = 0.0;
  if (sub_68BD4(v97) != 1)
  {
    v114 = v104;
    v115 = v105;
    v116 = v106;
    v117 = v107;
    v110 = v100;
    v111 = v101;
    v112 = v102;
    v113 = v103;
    v108 = v98;
    v109 = v99;
    sub_479B4(&v108, &v77, &qword_1835F0, &unk_12B240);
    sub_488C8(v95, &qword_186D88, &unk_12C870);
    v119 = v114;
    v120 = v115;
    v121 = v116;
    v122 = v117;
    v118[2] = v110;
    v118[3] = v111;
    v118[4] = v112;
    v118[5] = v113;
    v118[0] = v108;
    v118[1] = v109;
    if (sub_68BD4(v118) != 1)
    {
      v16 = *(&v119 + 1);
      sub_488C8(&v108, &qword_1835F0, &unk_12B240);
    }
  }

  v17 = [objc_opt_self() localizedStringWithPercentage:v16];
  if (!v17)
  {
    return (*(v10 + 56))(a1, 1, 1, v9);
  }

  v50 = v5;
  v51 = v4;
  v52 = v10;
  v53 = v9;
  v54 = a1;
  v18 = v17;
  v19 = sub_1171B0();
  v21 = v20;

  v22 = (*(*v2 + 256))();
  v23 = *((*(*v2 + 208))() + 16);

  if (v22 >= (v23 >> 1))
  {
    v24 = sub_116400();
  }

  else
  {
    v24 = sub_1163F0();
  }

  v26 = v24;
  v93 = 0;
  sub_FACD8(v19, v21, v2, &v77);
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v75 = v86;
  v68 = v79;
  v69 = v80;
  v70 = v81;
  v71 = v82;
  v66 = v77;
  v67 = v78;
  v76[6] = v83;
  v76[7] = v84;
  v76[8] = v85;
  v76[9] = v86;
  v76[2] = v79;
  v76[3] = v80;
  v76[4] = v81;
  v76[5] = v82;
  v76[0] = v77;
  v76[1] = v78;
  sub_479B4(&v66, &v61, &qword_1838F0, &qword_1272F0);
  sub_488C8(v76, &qword_1838F0, &qword_1272F0);

  *&v92[103] = v72;
  *&v92[119] = v73;
  *&v92[135] = v74;
  *&v92[151] = v75;
  *&v92[39] = v68;
  *&v92[55] = v69;
  *&v92[71] = v70;
  *&v92[87] = v71;
  *&v92[7] = v66;
  *&v92[23] = v67;
  v27 = v93;
  v28 = sub_116600();
  sub_115FD0();
  *(&v62[7] + 1) = *&v92[112];
  *(&v62[8] + 1) = *&v92[128];
  *(&v62[9] + 1) = *&v92[144];
  *(&v62[3] + 1) = *&v92[48];
  *(&v62[4] + 1) = *&v92[64];
  *(&v62[5] + 1) = *&v92[80];
  *(&v62[6] + 1) = *&v92[96];
  *(v62 + 1) = *v92;
  *(&v62[1] + 1) = *&v92[16];
  v94 = 0;
  v61 = v26;
  LOBYTE(v62[0]) = v27;
  *&v62[10] = *&v92[159];
  *(&v62[2] + 1) = *&v92[32];
  BYTE8(v62[10]) = v28;
  *&v63 = v29;
  *(&v63 + 1) = v30;
  *&v64 = v31;
  *(&v64 + 1) = v32;
  v65 = 0;
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v2;
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v2;
  type metadata accessor for CGSize(0);
  swift_retain_n();
  sub_116DA0();
  v35 = v57;
  v36 = v58;
  v37 = v59;
  v38 = v60;
  sub_46F9C(&qword_1838F8, &qword_1272F8);
  v39 = sub_71B78();
  sub_8EB40(v35, v36, v39, v8, v37, v38);

  v89 = v63;
  v90 = v64;
  v91 = v65;
  v85 = v62[7];
  v86 = v62[8];
  v87 = v62[9];
  v88 = v62[10];
  v81 = v62[3];
  v82 = v62[4];
  v83 = v62[5];
  v84 = v62[6];
  v77 = v61;
  v78 = v62[0];
  v79 = v62[1];
  v80 = v62[2];
  v40 = sub_488C8(&v77, &qword_1838F8, &qword_1272F8);
  (*(*v2 + 304))(v40);
  v42 = v41 + -2.0 + -8.0;
  v43 = v56;
  (*(v50 + 32))(v56, v8, v51);
  v44 = v53;
  v45 = &v43[*(v53 + 36)];
  *v45 = 0;
  *(v45 + 1) = v42;
  v46 = v43;
  v47 = v55;
  sub_FC200(v46, v55);
  v48 = v47;
  v49 = v54;
  sub_FC200(v48, v54);
  return (*(v52 + 56))(v49, 0, 1, v44);
}

uint64_t sub_FACD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a3;
  v100 = a4;
  v6 = sub_46F9C(&qword_182FF8, &qword_124E30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v94 - v8;
  v10 = sub_116740();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v161 = a1;
  *(&v161 + 1) = a2;
  v15 = sub_4869C();

  v99 = v15;
  v101 = sub_116900();
  v97 = v17;
  v98 = v16;
  v19 = v18;
  (*(v11 + 104))(v14, enum case for Font.TextStyle.title(_:), v10);
  v20 = enum case for Font.Design.rounded(_:);
  v21 = sub_116690();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v9, v20, v21);
  (*(v22 + 56))(v9, 0, 1, v21);
  sub_1166E0();
  sub_488C8(v9, &qword_182FF8, &qword_124E30);
  (*(v11 + 8))(v14, v10);
  v23 = v95;
  v24 = v101;
  v25 = v98;
  v26 = sub_1168C0();
  v103 = v27;
  v102 = v28;

  sub_48928(v24, v25, v19 & 1);

  (*(*v23 + 392))(v145, v29);
  v157 = v145[10];
  v158 = v145[11];
  v159 = v145[12];
  v160 = v146;
  v153 = v145[6];
  v154 = v145[7];
  v155 = v145[8];
  v156 = v145[9];
  v149 = v145[2];
  v150 = v145[3];
  v151 = v145[4];
  v152 = v145[5];
  v147 = v145[0];
  v148 = v145[1];
  if (sub_68BD4(&v147) == 1)
  {
    goto LABEL_4;
  }

  v171 = v157;
  v172 = v158;
  v173 = v159;
  v174 = v160;
  v167 = v153;
  v168 = v154;
  v169 = v155;
  v170 = v156;
  v163 = v149;
  v164 = v150;
  v165 = v151;
  v166 = v152;
  v161 = v147;
  v162 = v148;
  v30 = sub_62FFC();
  sub_488C8(v145, &qword_186D88, &unk_12C870);
  if ((v30 & 1) == 0)
  {
LABEL_4:
    v31 = sub_116B30();
  }

  else
  {
    v31 = sub_116B80();
  }

  *&v112 = v31;
  v32 = v102;
  v33 = v103;
  v34 = sub_116890();
  v35 = v26;
  v37 = v36;
  v39 = v38;
  sub_48928(v35, v33, v32 & 1);

  sub_1166B0();
  v40 = sub_116810();
  v96 = v41;
  v97 = v40;
  v43 = v42;
  v98 = v44;
  sub_48928(v34, v37, v39 & 1);

  LODWORD(v103) = sub_116620();
  sub_115FD0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  LODWORD(v101) = v43 & 1;
  v141 = v43 & 1;
  v138 = 0;
  v102 = sub_116610();
  v53 = sub_115FD0();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v142 = 0;
  *&v112 = (*(*v23 + 464))(v53);
  *(&v112 + 1) = v62;
  v63 = sub_116900();
  v65 = v64;
  v67 = v66;
  sub_116700();
  v68 = sub_1168C0();
  v70 = v69;
  v72 = v71;

  sub_48928(v63, v65, v67 & 1);

  sub_1166B0();
  v73 = sub_116810();
  v75 = v74;
  LOBYTE(v63) = v76;
  sub_48928(v68, v70, v72 & 1);

  LODWORD(v112) = sub_1164D0();
  v77 = sub_116890();
  v79 = v78;
  LOBYTE(v68) = v80;
  v82 = v81;
  sub_48928(v73, v75, v63 & 1);

  v84 = v96;
  v83 = v97;
  *&v105 = v97;
  *(&v105 + 1) = v96;
  LOBYTE(v106) = v101;
  *(&v106 + 1) = *v140;
  DWORD1(v106) = *&v140[3];
  v85 = v98;
  *(&v106 + 1) = v98;
  LOBYTE(v107) = v103;
  *(&v107 + 1) = *v139;
  DWORD1(v107) = *&v139[3];
  *(&v107 + 1) = v46;
  *&v108 = v48;
  *(&v108 + 1) = v50;
  *&v109 = v52;
  BYTE8(v109) = 0;
  *(&v109 + 9) = *v144;
  HIDWORD(v109) = *&v144[3];
  LOBYTE(v110) = v102;
  DWORD1(v110) = *&v143[3];
  *(&v110 + 1) = *v143;
  *(&v110 + 1) = v55;
  *&v111[0] = v57;
  *(&v111[0] + 1) = v59;
  *&v111[1] = v61;
  BYTE8(v111[1]) = 0;
  v114 = v107;
  v115 = v108;
  v112 = v105;
  v113 = v106;
  *(v118 + 9) = *(v111 + 9);
  v117 = v110;
  v118[0] = v111[0];
  v116 = v109;
  v104 = v68 & 1;
  v86 = v105;
  v87 = v106;
  v88 = v108;
  v89 = v100;
  *(v100 + 32) = v107;
  *(v89 + 48) = v88;
  *v89 = v86;
  *(v89 + 16) = v87;
  v90 = v116;
  v91 = v117;
  v92 = v118[1];
  *(v89 + 96) = v118[0];
  *(v89 + 112) = v92;
  *(v89 + 64) = v90;
  *(v89 + 80) = v91;
  *(v89 + 128) = v77;
  *(v89 + 136) = v79;
  *(v89 + 144) = v68 & 1;
  *(v89 + 152) = v82;
  sub_479B4(&v105, v119, &qword_183CF8, &qword_1273E8);
  sub_488B8(v77, v79, v68 & 1);

  sub_48928(v77, v79, v68 & 1);

  v119[0] = v83;
  v119[1] = v84;
  v120 = v101;
  *v121 = *v140;
  *&v121[3] = *&v140[3];
  v122 = v85;
  v123 = v103;
  *v124 = *v139;
  *&v124[3] = *&v139[3];
  v125 = v46;
  v126 = v48;
  v127 = v50;
  v128 = v52;
  v129 = 0;
  *&v130[3] = *&v144[3];
  *v130 = *v144;
  v131 = v102;
  *&v132[3] = *&v143[3];
  *v132 = *v143;
  v133 = v55;
  v134 = v57;
  v135 = v59;
  v136 = v61;
  v137 = 0;
  return sub_488C8(v119, &qword_183CF8, &qword_1273E8);
}

uint64_t sub_FB604()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDate;
  v2 = sub_115760();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__dailyBreakdown);

  sub_6ACB4((v0 + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel_entry));
  v4 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel___observationRegistrar;
  v5 = sub_115940();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*sub_FB884(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 320))();
  return sub_55900;
}

double sub_FBA08@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 392))(v10);
  v3 = v10[11];
  *(a1 + 160) = v10[10];
  *(a1 + 176) = v3;
  *(a1 + 192) = v10[12];
  *(a1 + 208) = v11;
  v4 = v10[7];
  *(a1 + 96) = v10[6];
  *(a1 + 112) = v4;
  v5 = v10[9];
  *(a1 + 128) = v10[8];
  *(a1 + 144) = v5;
  v6 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v6;
  v7 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v7;
  result = *v10;
  v9 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v9;
  return result;
}

uint64_t (*sub_FBB4C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 176))();
  return sub_57B6C;
}

uint64_t sub_FBBE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v93 = v2;
  v94 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 176);
    v9 = *(v5 + 144);
    v72 = *(v5 + 160);
    v73 = v8;
    v10 = *(v5 + 176);
    v74 = *(v5 + 192);
    v11 = *(v5 + 112);
    v12 = *(v5 + 80);
    v68 = *(v5 + 96);
    v69 = v11;
    v13 = *(v5 + 112);
    v14 = *(v5 + 144);
    v70 = *(v5 + 128);
    v71 = v14;
    v15 = *(v5 + 48);
    v16 = *(v5 + 16);
    v64 = *(v5 + 32);
    v65 = v15;
    v17 = *(v5 + 48);
    v18 = *(v5 + 80);
    v66 = *(v5 + 64);
    v67 = v18;
    v19 = *(v5 + 16);
    v63[0] = *v5;
    v63[1] = v19;
    v59 = v72;
    v60 = v10;
    v61 = *(v5 + 192);
    v55 = v68;
    v56 = v13;
    v57 = v70;
    v58 = v9;
    v51 = v64;
    v52 = v17;
    v53 = v66;
    v54 = v12;
    v49 = v63[0];
    v50 = v16;
    v20 = *(v6 + 176);
    v21 = *(v6 + 144);
    v85 = *(v6 + 160);
    v86 = v20;
    v22 = *(v6 + 176);
    v87 = *(v6 + 192);
    v23 = *(v6 + 112);
    v24 = *(v6 + 80);
    v81 = *(v6 + 96);
    v82 = v23;
    v25 = *(v6 + 112);
    v26 = *(v6 + 144);
    v83 = *(v6 + 128);
    v84 = v26;
    v27 = *(v6 + 48);
    v28 = *(v6 + 16);
    v77 = *(v6 + 32);
    v78 = v27;
    v29 = *(v6 + 48);
    v30 = *(v6 + 80);
    v79 = *(v6 + 64);
    v80 = v30;
    v31 = *(v6 + 16);
    v76[0] = *v6;
    v76[1] = v31;
    v45 = v85;
    v46 = v22;
    v47 = *(v6 + 192);
    v41 = v81;
    v42 = v25;
    v43 = v83;
    v44 = v21;
    v37 = v77;
    v38 = v29;
    v39 = v79;
    v40 = v24;
    v75 = *(v5 + 208);
    v62 = *(v5 + 208);
    v88 = *(v6 + 208);
    v48 = *(v6 + 208);
    v35 = v76[0];
    v36 = v28;
    sub_68C0C(v63, v34);
    sub_68C0C(v76, v34);
    sub_6933C();
    v32 = sub_117160();
    v89[10] = v45;
    v89[11] = v46;
    v89[12] = v47;
    v90 = v48;
    v89[6] = v41;
    v89[7] = v42;
    v89[8] = v43;
    v89[9] = v44;
    v89[2] = v37;
    v89[3] = v38;
    v89[4] = v39;
    v89[5] = v40;
    v89[0] = v35;
    v89[1] = v36;
    sub_68C44(v89);
    v91[10] = v59;
    v91[11] = v60;
    v91[12] = v61;
    v91[6] = v55;
    v91[7] = v56;
    v91[8] = v57;
    v91[9] = v58;
    v91[2] = v51;
    v91[3] = v52;
    v91[4] = v53;
    v91[5] = v54;
    v91[0] = v49;
    v92 = v62;
    v91[1] = v50;
    sub_68C44(v91);
    if ((v32 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 216;
    v5 += 216;
  }

  return 1;
}

uint64_t sub_FBE6C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__dailyBreakdown;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
}

uint64_t sub_FBED8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__selectedDay;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t sub_FBF30()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__annotationSize);
  result = swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  return result;
}

uint64_t sub_FBF90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18AppDetailViewModel__showUserGuide;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_FBFEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_46F9C(&qword_183D00, &unk_1273F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 216);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

double sub_FC0DC(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_FC104()
{
  result = qword_186D98;
  if (!qword_186D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186D98);
  }

  return result;
}

uint64_t sub_FC200(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_186DA8, &unk_12C898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_FC290()
{
  result = qword_186DB0;
  if (!qword_186DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_186DB0);
  }

  return result;
}

uint64_t sub_FC2E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_FC330(uint64_t a1)
{
  result = sub_FC2E4(&qword_186E48, type metadata accessor for AppDetailViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_FC394()
{
  result = sub_115760();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_115940();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_FC498()
{
  result = qword_187120;
  if (!qword_187120)
  {
    sub_47A1C(&qword_187128, &unk_12C980);
    sub_FC51C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187120);
  }

  return result;
}

unint64_t sub_FC51C()
{
  result = qword_187130;
  if (!qword_187130)
  {
    sub_47A1C(&qword_186DA8, &unk_12C898);
    sub_47A1C(&qword_1838F8, &qword_1272F8);
    sub_71B78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_187130);
  }

  return result;
}

void sub_FC5F4(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_46F9C(&qword_187150, &qword_12C9B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v26 = sub_46F9C(&qword_187158, &qword_12C9B8);
  v8 = *(v26 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v26);
  v11 = &v24 - v10;
  v25 = sub_46F9C(&qword_187160, &qword_12C9C0);
  v12 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v14 = &v24 - v13;
  v28 = v2;
  sub_46F9C(&qword_187168, &qword_12C9C8);
  sub_48800(&qword_187170, &qword_187168, &qword_12C9C8);
  sub_116750();
  v15 = sub_117170();
  v16 = BatteryUILocalization(v15);

  if (v16)
  {
    v17 = sub_1171B0();
    v19 = v18;

    *&v30 = v17;
    *(&v30 + 1) = v19;
    sub_48800(&qword_187178, &qword_187150, &qword_12C9B0);
    sub_4869C();
    sub_116A40();

    (*(v4 + 8))(v7, v3);
    v20 = *v2;
    v31 = v2[1];
    v30 = *(v2 + 1);
    v21 = swift_allocObject();
    v22 = *(v2 + 1);
    *(v21 + 16) = *v2;
    *(v21 + 32) = v22;
    *(v21 + 48) = v2[4];
    (*(v8 + 32))(v14, v11, v26);
    v23 = &v14[*(v25 + 36)];
    *v23 = sub_FF44C;
    v23[1] = v21;
    v23[2] = 0;
    v23[3] = 0;
    sub_548D0(v14, v27, &qword_187160, &qword_12C9C0);

    sub_479B4(&v31, v29, &qword_187140, &qword_12C998);
    sub_479B4(&v30, v29, &qword_182D78, &qword_12C9A0);
  }

  else
  {
    __break(1u);
  }
}

void sub_FC9A8(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v3 = sub_46F9C(&qword_1871E8, &qword_12CB80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v81 = v77 - v6;
  v7 = sub_46F9C(&qword_1871F0, &qword_12CB88);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v85 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v77 - v11;
  v80 = sub_46F9C(&qword_1871F8, &qword_12CB90);
  v13 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v15 = v77 - v14;
  v16 = sub_46F9C(&qword_187200, &qword_12CB98);
  v83 = *(v16 - 8);
  v84 = v16;
  v17 = *(v83 + 64);
  __chkstk_darwin(v16);
  v79 = v77 - v18;
  v19 = sub_46F9C(&qword_187208, &qword_12CBA0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v91 = v77 - v24;
  v25 = sub_46F9C(&qword_187210, &qword_12CBA8);
  v87 = *(v25 - 8);
  v88 = v25;
  v26 = *(v87 + 64);
  __chkstk_darwin(v25);
  v86 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v77 - v29;
  v92 = a1;
  v31 = sub_117170();
  v32 = BatteryUILocalization(v31);

  if (v32)
  {
    v82 = v22;
    v33 = sub_1171B0();
    v35 = v34;

    *&v95 = v33;
    *(&v95 + 1) = v35;
    sub_4869C();
    *&v95 = sub_116900();
    *(&v95 + 1) = v36;
    v96 = v37 & 1;
    v97 = v38;
    sub_46F9C(&qword_187218, &qword_12CBB0);
    v39 = sub_47A1C(&qword_187220, &qword_12CBB8);
    v40 = sub_101E00();
    *&v94 = &type metadata for ShowAllUsageGraphSectionView;
    *(&v94 + 1) = v40;
    v41 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v94 = v39;
    *(&v94 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v90 = v30;
    sub_116E40();
    v94 = *a1;
    v95 = v94;
    sub_46F9C(&qword_187138, &qword_12C990);
    v43 = sub_116CC0();
    v44 = a1;
    v45 = (*(*v93 + 480))(v43);

    v46 = *(v45 + 16);

    v78 = v44;
    if (v46)
    {
      *v15 = sub_1163F0();
      *(v15 + 1) = 0;
      v15[16] = 1;
      v47 = sub_46F9C(&qword_187230, &qword_12CBC0);
      sub_FD600(&v15[*(v47 + 44)]);
      v48 = sub_116620();
      v49 = sub_115FD0();
      v77[1] = v77;
      v50 = &v15[*(v80 + 36)];
      *v50 = v48;
      *(v50 + 1) = v51;
      *(v50 + 2) = v52;
      *(v50 + 3) = v53;
      *(v50 + 4) = v54;
      v50[40] = 0;
      __chkstk_darwin(v49);
      v77[-2] = v44;
      sub_46F9C(&qword_187238, &qword_12CBC8);
      sub_101E5C();
      sub_48800(&qword_187258, &qword_187238, &qword_12CBC8);
      v55 = v79;
      sub_116E40();
      v57 = v83;
      v56 = v84;
      v58 = v91;
      (*(v83 + 32))(v91, v55, v84);
      v41 = 0;
    }

    else
    {
      v58 = v91;
      v57 = v83;
      v56 = v84;
    }

    v59 = 1;
    (*(v57 + 56))(v58, v41, 1, v56);
    v94 = v95;
    v60 = sub_116CC0();
    v61 = (*(*v93 + 528))(v60);

    v62 = *(v61 + 16);

    if (v62)
    {
      __chkstk_darwin(v63);
      v77[-2] = v78;
      sub_46F9C(&qword_187260, &qword_12CBD8);
      sub_48800(&qword_187268, &qword_187260, &qword_12CBD8);
      v64 = v81;
      sub_116E50();
      (*(v4 + 32))(v12, v64, v3);
      v59 = 0;
    }

    v65 = v12;
    (*(v4 + 56))(v12, v59, 1, v3);
    v67 = v86;
    v66 = v87;
    v68 = *(v87 + 16);
    v69 = v88;
    v68(v86, v90, v88);
    v70 = v91;
    v71 = v82;
    sub_479B4(v91, v82, &qword_187208, &qword_12CBA0);
    v72 = v12;
    v73 = v85;
    sub_479B4(v72, v85, &qword_1871F0, &qword_12CB88);
    v74 = v89;
    v68(v89, v67, v69);
    v75 = sub_46F9C(&qword_187270, &qword_12CBE0);
    sub_479B4(v71, &v74[*(v75 + 48)], &qword_187208, &qword_12CBA0);
    sub_479B4(v73, &v74[*(v75 + 64)], &qword_1871F0, &qword_12CB88);
    sub_488C8(v65, &qword_1871F0, &qword_12CB88);
    sub_488C8(v70, &qword_187208, &qword_12CBA0);
    v76 = *(v66 + 8);
    v76(v90, v69);
    sub_488C8(v73, &qword_1871F0, &qword_12CB88);
    sub_488C8(v71, &qword_187208, &qword_12CBA0);
    v76(v67, v69);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_FD344@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_46F9C(&qword_187220, &qword_12CBB8);
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v26 = *a1;
  sub_46F9C(&qword_187138, &qword_12C990);
  sub_116CE0();
  v8 = v31;
  v9 = v32;
  v31 = *a1;
  v10 = sub_116CC0();
  v11 = (*(*v26 + 368))(v10);
  v13 = v12;

  v31 = v8;
  v32 = v9;
  v33 = v11;
  v34 = v13;
  v29 = *a1;
  sub_116CE0();
  v14 = v26;
  v15 = v27;
  swift_getKeyPath();
  v29 = v14;
  v30 = v15;
  sub_46F9C(&qword_187180, &qword_12C9D0);
  sub_116D80();

  v16 = v26;
  v17 = v27;
  v18 = v28;

  v19 = sub_101E00();
  sub_8EB40(v16, *(&v16 + 1), v19, v7, v17, v18);

  sub_116030();
  *&v31 = &type metadata for ShowAllUsageGraphSectionView;
  *(&v31 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v23;
  sub_116A50();
  return (*(v24 + 8))(v7, v20);
}

void sub_FD600(uint64_t a1@<X8>)
{
  v93 = a1;
  v96 = sub_46F9C(&qword_185198, &qword_129BC0);
  v1 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v92 = v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v89 = v85 - v4;
  __chkstk_darwin(v5);
  v91 = v85 - v6;
  __chkstk_darwin(v7);
  v9 = v85 - v8;
  v95 = sub_46F9C(&qword_187340, &qword_12CCD8);
  v10 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v90 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v94 = v85 - v13;
  __chkstk_darwin(v14);
  v97 = v85 - v15;
  v16 = sub_117170();
  v17 = BatteryUILocalization(v16);

  if (v17)
  {
    v18 = sub_1171B0();
    v20 = v19;

    v98 = v18;
    v99 = v20;
    v88 = sub_4869C();
    v21 = sub_116900();
    v23 = v22;
    v25 = v24;
    sub_116680();
    v26 = sub_1168C0();
    v28 = v27;
    v30 = v29;

    sub_48928(v21, v23, v25 & 1);

    sub_116BB0();
    v31 = sub_116880();
    v33 = v32;
    v35 = v34;

    sub_48928(v26, v28, v30 & 1);

    sub_1166C0();
    v36 = sub_116810();
    v38 = v37;
    LOBYTE(v26) = v39;
    v41 = v40;
    sub_48928(v31, v33, v35 & 1);

    v42 = &v9[*(v96 + 36)];
    v87 = sub_46F9C(&qword_1851B0, &qword_12CCE0);
    v43 = *(v87 + 28);
    v44 = sub_1168B0();
    v45 = *(v44 - 8);
    v86 = *(v45 + 56);
    v85[1] = v45 + 56;
    v86(v42 + v43, 1, 1, v44);
    *v42 = swift_getKeyPath();
    *v9 = v36;
    *(v9 + 1) = v38;
    v9[16] = v26 & 1;
    *(v9 + 3) = v41;
    LOBYTE(v36) = sub_116620();
    sub_115FD0();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v94;
    sub_548D0(v9, v94, &qword_185198, &qword_129BC0);
    v55 = v54 + *(v95 + 36);
    *v55 = v36;
    *(v55 + 8) = v47;
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;
    *(v55 + 32) = v53;
    *(v55 + 40) = 0;
    sub_548D0(v54, v97, &qword_187340, &qword_12CCD8);
    v56 = sub_117170();
    v57 = BatteryUILocalization(v56);

    if (v57)
    {
      v58 = sub_1171B0();
      v60 = v59;

      v98 = v58;
      v99 = v60;
      v61 = sub_116900();
      v63 = v62;
      LOBYTE(v60) = v64;
      sub_116670();
      v65 = sub_1168C0();
      v67 = v66;
      v69 = v68;

      sub_48928(v61, v63, v60 & 1);

      sub_116BC0();
      v70 = sub_116880();
      v72 = v71;
      v74 = v73;
      v76 = v75;

      sub_48928(v65, v67, v69 & 1);

      v77 = v89;
      v78 = &v89[*(v96 + 36)];
      v86(v78 + *(v87 + 28), 1, 1, v44);
      *v78 = swift_getKeyPath();
      *v77 = v70;
      *(v77 + 8) = v72;
      *(v77 + 16) = v74 & 1;
      *(v77 + 24) = v76;
      v79 = v91;
      sub_548D0(v77, v91, &qword_185198, &qword_129BC0);
      v80 = v97;
      v81 = v90;
      sub_479B4(v97, v90, &qword_187340, &qword_12CCD8);
      v82 = v92;
      sub_479B4(v79, v92, &qword_185198, &qword_129BC0);
      v83 = v93;
      sub_479B4(v81, v93, &qword_187340, &qword_12CCD8);
      v84 = sub_46F9C(&qword_187348, &qword_12CD18);
      sub_479B4(v82, v83 + *(v84 + 48), &qword_185198, &qword_129BC0);
      sub_488C8(v79, &qword_185198, &qword_129BC0);
      sub_488C8(v80, &qword_187340, &qword_12CCD8);
      sub_488C8(v82, &qword_185198, &qword_129BC0);
      sub_488C8(v81, &qword_187340, &qword_12CCD8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_FDCA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v92 = a2;
  v80 = sub_46F9C(&qword_1872C0, &qword_12CC40);
  v2 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v79 = &v78 - v3;
  v86 = sub_46F9C(&qword_1872C8, &qword_12CC48);
  v85 = *(v86 - 8);
  v4 = *(v85 + 64);
  __chkstk_darwin(v86);
  v78 = &v78 - v5;
  v6 = sub_46F9C(&qword_1872D0, &qword_12CC50);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v91 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v78 - v10;
  v11 = sub_46F9C(&qword_1872D8, &qword_12CC58);
  v89 = *(v11 - 8);
  v90 = v11;
  v12 = *(v89 + 64);
  __chkstk_darwin(v11);
  v87 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v93 = &v78 - v15;
  v82 = sub_1163D0();
  v81 = *(v82 - 8);
  v16 = *(v81 + 64);
  __chkstk_darwin(v82);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_46F9C(&qword_185EA8, &unk_12B1D0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v84 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v94 = &v78 - v23;
  v24 = sub_117170();
  v25 = BatteryUILocalization(v24);

  if (v25)
  {
    v26 = sub_1171B0();
    v28 = v27;

    *&v97 = v26;
    *(&v97 + 1) = v28;
    sub_4869C();
    v29 = sub_116900();
    v31 = v30;
    LOBYTE(v28) = v32;
    sub_116670();
    v33 = sub_1168C0();
    v35 = v34;
    v37 = v36;

    sub_48928(v29, v31, v28 & 1);

    sub_116BC0();
    v38 = sub_116880();
    v40 = v39;
    v42 = v41;

    sub_48928(v33, v35, v37 & 1);

    sub_1166B0();
    v43 = sub_116810();
    v45 = v44;
    LOBYTE(v29) = v46;
    v48 = v47;
    sub_48928(v38, v40, v42 & 1);

    *&v97 = v43;
    *(&v97 + 1) = v45;
    v98 = v29 & 1;
    v99 = v48;
    sub_1163C0();
    sub_116A90();
    (*(v81 + 8))(v18, v82);
    sub_48928(v43, v45, v29 & 1);

    v49 = v83;
    v50 = v83[1];
    *&v97 = *v83;
    v51 = v97;
    *(&v97 + 1) = v50;
    sub_46F9C(&qword_187138, &qword_12C990);
    v52 = sub_116CC0();
    v53 = (*(*v95[0] + 480))(v52);

    v54 = sub_101B5C(v53);

    v96 = v54;
    swift_getKeyPath();
    v100[0] = v50;
    v97 = *(v49 + 1);
    v55 = swift_allocObject();
    v56 = *(v49 + 1);
    *(v55 + 16) = *v49;
    *(v55 + 32) = v56;
    *(v55 + 48) = v49[4];
    v57 = swift_allocObject();
    *(v57 + 16) = sub_1022A0;
    *(v57 + 24) = v55;

    sub_479B4(v100, v95, &qword_187140, &qword_12C998);
    sub_479B4(&v97, v95, &qword_182D78, &qword_12C9A0);
    sub_46F9C(&qword_1872E0, &qword_12CC90);
    sub_46F9C(&qword_1872E8, &qword_12CC98);
    sub_48800(&qword_1872F0, &qword_1872E0, &qword_12CC90);
    sub_10235C();
    v58 = v93;
    sub_116E10();
    v95[0] = v51;
    v95[1] = v50;
    v59 = sub_116CC0();
    v60 = (*(*v96 + 480))(v59);

    v61 = *(v60 + 16);

    if (v49[4] >= v61)
    {
      v68 = 1;
      v67 = v88;
    }

    else
    {
      v62 = swift_allocObject();
      v63 = *(v49 + 1);
      *(v62 + 16) = *v49;
      *(v62 + 32) = v63;
      *(v62 + 48) = v49[4];
      __chkstk_darwin(v62);

      sub_479B4(v100, v95, &qword_187140, &qword_12C998);
      sub_479B4(&v97, v95, &qword_182D78, &qword_12C9A0);
      sub_46F9C(&qword_183530, &qword_12CCB0);
      sub_5CC8C();
      v64 = v79;
      sub_116D00();
      v65 = (v64 + *(v80 + 36));
      *v65 = sub_FEDCC;
      v65[1] = 0;
      sub_102690();
      v66 = v78;
      sub_116AA0();
      sub_488C8(v64, &qword_1872C0, &qword_12CC40);
      v67 = v88;
      sub_548D0(v66, v88, &qword_1872C8, &qword_12CC48);
      v68 = 0;
    }

    (*(v85 + 56))(v67, v68, 1, v86);
    v69 = v84;
    sub_479B4(v94, v84, &qword_185EA8, &unk_12B1D0);
    v70 = v89;
    v71 = v90;
    v72 = *(v89 + 16);
    v73 = v87;
    v72(v87, v58, v90);
    v74 = v91;
    sub_479B4(v67, v91, &qword_1872D0, &qword_12CC50);
    v75 = v92;
    sub_479B4(v69, v92, &qword_185EA8, &unk_12B1D0);
    v76 = sub_46F9C(&qword_187310, &qword_12CCA8);
    v72((v75 + *(v76 + 48)), v73, v71);
    sub_479B4(v74, v75 + *(v76 + 64), &qword_1872D0, &qword_12CC50);
    sub_488C8(v67, &qword_1872D0, &qword_12CC50);
    v77 = *(v70 + 8);
    v77(v93, v71);
    sub_488C8(v94, &qword_185EA8, &unk_12B1D0);
    sub_488C8(v74, &qword_1872D0, &qword_12CC50);
    v77(v73, v71);
    sub_488C8(v69, &qword_185EA8, &unk_12B1D0);
  }

  else
  {
    __break(1u);
  }
}
uint64_t sub_82754(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_117620();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  sub_7DBD0(a2, &State.wrappedValue.getter);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = sub_62DA4(a1, v11, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    if ((*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness))
    {
      return sub_116B80();
    }

    else
    {
      return sub_116B30();
    }
  }

  else
  {
    v15 = sub_5A754();
    swift_beginAccess();
    v16 = *(*v15 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);
  }
}

uint64_t sub_82918(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_829B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v19 = *(type metadata accessor for DynamicUsageView() + 16);
  sub_116DC0();
  sub_116D60();
  (*(a3 + 88))(a2, a3);
  (*(v7 + 8))(v10, a2);
  v20 = v12[2];
  v20(v18, v16, AssociatedTypeWitness);
  v21 = v12[1];
  v21(v16, AssociatedTypeWitness);
  v20(a4, v18, AssociatedTypeWitness);
  return (v21)(v18, AssociatedTypeWitness);
}

uint64_t sub_82BE8@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1;
  v6 = 8 * a2;
  v37[1] = a4;
  if (a2 == 1)
  {
    v7 = a3;
    TupleTypeMetadata = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(a1);
    v10 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v11 = 0;
      v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != a2)
      {
LABEL_9:
        v17 = a2 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    v7 = v9;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v22 = *(*(TupleTypeMetadata - 8) + 64);
  v23 = __chkstk_darwin(TupleTypeMetadata);
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = v37;
  v26 = __chkstk_darwin(v23);
  if (a2)
  {
    v27 = (v7 & 0xFFFFFFFFFFFFFFFELL);
    v28 = (v26 + 32);
    v29 = (v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = a2;
    do
    {
      if (a2 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = *v28;
      }

      v33 = *v27++;
      v32 = v33;
      v34 = &v25[v31];
      v35 = *v5++;
      (*(*(v32 - 8) + 16))(&v25[v31], v35);
      *v29++ = v34;
      v28 += 4;
      --v30;
    }

    while (v30);
  }

  return sub_115A50();
}

void sub_82E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v25 = sub_117620();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v25);
  v10 = v24 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v24[1] = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v24[2] = v24 - v16;
  __chkstk_darwin(v15);
  v18 = v24 - v17;
  v19 = type metadata accessor for DynamicUsageView();
  v20 = *(v19 + 16);
  sub_116DC0();
  sub_116D60();
  (*(a3 + 56))(a2, a3);
  (*(v11 + 8))(v18, a2);
  sub_88A14(v10, v19);
  (*(v6 + 8))(v10, v25);
  sub_116EF0();
  v26 = a2;
  v27 = a3;
  v28 = a1;
  sub_1160D0();

  sub_116D60();
  type metadata accessor for ShowAllUsageViewModel();
  if (swift_dynamicCast())
  {

    sub_A77E8(sub_83370, 0);
    v33 = sub_8338C;
    v34 = 0;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v21 = &unk_167568;
LABEL_5:
    v31 = sub_83460;
    v32 = v21;
    v22 = _Block_copy(&aBlock);
    v23 = @"com.apple.batteryui";
    AnalyticsSendEventLazy();
    _Block_release(v22);

    return;
  }

  sub_116D60();
  type metadata accessor for AppDetailViewModel();
  if (swift_dynamicCast())
  {

    sub_A77E8(sub_834EC, 0);
    v33 = sub_83508;
    v34 = 0;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v21 = &unk_167540;
    goto LABEL_5;
  }

  sub_A77E8(sub_835D4, 0);
}

uint64_t sub_83250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DynamicUsageView();
  v10 = *(v9 + 16);
  sub_116DC0();
  sub_116D60();
  v11 = (*(a3 + 136))(a2, a3);
  (*(v5 + 8))(v8, a2);
  return sub_7E0F8(v11, v9);
}

unint64_t sub_8338C()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0x7061546870617267;
  *(inited + 40) = 0xEF6C6172656E6547;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_8CACC(inited);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

Class sub_83460(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_8CBD0();
    v5.super.isa = sub_117050().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

unint64_t sub_83508()
{
  sub_46F9C(&qword_1843A8, &unk_12B280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_124890;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x8000000000134FB0;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v1 = sub_8CACC(inited);
  swift_setDeallocating();
  sub_488C8(inited + 32, &qword_1843B0, &unk_128130);
  return v1;
}

double sub_835F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5A754();
  swift_beginAccess();
  v5 = *(*v4 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
  sub_116EB0();
  sub_116070();
  v6 = sub_115C90();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(sub_46F9C(&qword_184160, &unk_127D70) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_836E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_46F9C(&qword_184138, &qword_127D50);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v46 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for DynamicUsageView() + 16);
  sub_116DC0();
  sub_116D60();
  v18 = (*(a3 + 72))(a2, a3);
  (*(v13 + 8))(v16, a2);
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = *(v18 + 8 * v19 + 24);

  if (v20 < 0)
  {
    __break(1u);
LABEL_4:

    v20 = 0;
  }

  v55 = 0;
  v56 = v20;
  v21 = sub_115F00();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v46[1] = a4;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v22 = sub_1173A0();
  v23 = sub_47A1C(&qword_1841D0, &qword_127DB0);
  v46[0] = a1;
  v24 = v23;
  WitnessTable = swift_getWitnessTable();
  v48 = v22;
  v49 = &type metadata for Int;
  v50 = v24;
  v51 = WitnessTable;
  v52 = &protocol witness table for Int;
  v53 = sub_116E30();
  v26 = sub_47A1C(&qword_1841D8, &qword_127DB8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = sub_47A1C(&qword_1841E0, &qword_127DC0);
  v29 = sub_47A1C(&qword_1841E8, &qword_127DC8);
  v30 = sub_47A1C(&qword_1841F0, &qword_127DD0);
  v48 = sub_115E70();
  v49 = &protocol witness table for RuleMark;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v30;
  v49 = &type metadata for Color;
  v50 = OpaqueTypeConformance2;
  v51 = &protocol witness table for Color;
  v32 = swift_getOpaqueTypeConformance2();
  v48 = v29;
  v49 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v48 = v28;
  v49 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v26;
  v49 = AssociatedTypeWitness;
  v50 = v34;
  v51 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = v26;
  v49 = AssociatedTypeWitness;
  v50 = v34;
  v51 = AssociatedConformanceWitness;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_4869C();
  v48 = OpaqueTypeMetadata2;
  v49 = &type metadata for String;
  v50 = v37;
  v51 = v38;
  swift_getOpaqueTypeMetadata2();
  v54 = sub_117620();
  sub_115A60();
  v46[4] = sub_88B20();
  v47[0] = swift_getWitnessTable();
  v48 = OpaqueTypeMetadata2;
  v49 = &type metadata for String;
  v50 = v37;
  v51 = v38;
  v46[3] = swift_getOpaqueTypeConformance2();
  v47[1] = swift_getWitnessTable();
  v46[2] = v47;
  swift_getWitnessTable();
  v39 = sub_115DD0();
  v40 = swift_getWitnessTable();
  v48 = v39;
  v49 = &type metadata for Int;
  v50 = v40;
  v51 = &protocol witness table for Int;
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = sub_47A1C(&qword_184160, &unk_127D70);
  v48 = v39;
  v49 = &type metadata for Int;
  v50 = v40;
  v51 = &protocol witness table for Int;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_7DDE8();
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  swift_getOpaqueTypeMetadata2();
  sub_46F9C(&qword_184178, &qword_1285D0);
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  sub_116970();
  return sub_488C8(v12, &qword_184138, &qword_127D50);
}

uint64_t sub_83D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v7 = sub_115C10();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_117600();
  v43 = *(v48 - 8);
  v10 = *(v43 + 64);
  v11 = __chkstk_darwin(v48);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v41 - v13;
  v47 = sub_46F9C(&qword_1841B0, &unk_127D90);
  v45 = *(v47 - 8);
  v14 = *(v45 + 64);
  __chkstk_darwin(v47);
  v44 = &v41 - v15;
  v16 = sub_115C80();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v55 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_115BE0();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v54 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_46F9C(&qword_184230, &qword_127DF8);
  v51 = *(v22 - 8);
  v52 = v22;
  v23 = *(v51 + 64);
  v24 = __chkstk_darwin(v22);
  v50 = &v41 - v25;
  v26 = *(a2 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(type metadata accessor for DynamicUsageView() + 16);
  sub_116DC0();
  v53 = a1;
  sub_116D60();
  v31 = *(a3 + 72);
  v32 = a3;
  v33 = v31(a2, a3);
  v34 = *(v26 + 8);
  v35 = a2;
  v34(v29, a2);
  v36 = *(v33 + 16);

  if (v36)
  {
    sub_116D60();
    v31(v35, v32);
    v34(v29, v35);
    sub_115BD0();
    sub_115C70();
    sub_46F9C(&qword_184368, &qword_128100);
    sub_8D014(&qword_184370, &qword_184368, &qword_128100, sub_8C9D0);
    v37 = v50;
    sub_115EA0();
    (*(v51 + 32))(v56, v37, v52);
  }

  else
  {
    v38 = v42;
    sub_115590();
    sub_1175F0();
    (*(v43 + 8))(v38, v48);
    *&v57 = 0x3FF0000000000000;
    sub_66C80();
    sub_115C00();
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
    sub_115BD0();
    sub_115C70();
    sub_8C988(&qword_184358, &type metadata accessor for NSDecimal.FormatStyle.Percent);
    v39 = v44;
    sub_115E80();
    (*(v45 + 32))(v56, v39, v47);
  }

  sub_46F9C(&qword_184360, &qword_1280F8);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_8438C@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = sub_46F9C(&qword_184398, &qword_128118);
  v1 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v53 = v47 - v2;
  v49 = sub_115A40();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v49);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_46F9C(&qword_1843A0, &unk_128120);
  v50 = *(v52 - 8);
  v7 = *(v50 + 64);
  v8 = __chkstk_darwin(v52);
  v51 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v47 - v10;
  v12 = sub_115D00();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v47[3] = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_115DA0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_46F9C(&qword_184390, &qword_128110);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v47 - v20;
  v22 = sub_46F9C(&qword_184380, &qword_128108);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v57 = v47 - v27;
  sub_115EB0();
  v56 = v26;
  if (BYTE8(v62) == 1)
  {
    v28 = 1;
  }

  else
  {
    v29 = [objc_opt_self() localizedStringWithPercentage:v62];
    v28 = 1;
    if (v29)
    {
      v30 = v29;
      sub_1171B0();
      v47[1] = v31;

      v47[2] = v47;
      __chkstk_darwin(v32);
      v26 = v56;
      sub_115D90();
      sub_115CF0();
      v46[3] = &protocol witness table for Text;
      v46[1] = v46;
      v46[2] = &type metadata for Text;
      v46[0] = sub_8CA80;
      sub_115C30();

      (*(v18 + 32))(v57, v21, v17);
      v28 = 0;
    }
  }

  v48 = v11;
  v33 = v57;
  (*(v18 + 56))(v57, v28, 1, v17);
  sub_116010();
  v62 = v59;
  v63 = v60;
  v64 = v61;
  sub_115A30();
  v34 = sub_5A754();
  swift_beginAccess();
  v58 = *(*v34 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);
  v35 = v49;
  sub_115E10();
  (*(v3 + 8))(v6, v35);
  sub_479B4(v33, v26, &qword_184380, &qword_128108);
  v36 = v50;
  v37 = *(v50 + 16);
  v38 = v51;
  v39 = v52;
  v37(v51, v11, v52);
  sub_8C9D0();
  v40 = v53;
  sub_479B4(v26, v53, &qword_184380, &qword_128108);
  v41 = v54;
  v42 = *(v54 + 48);
  v37((v40 + v42), v38, v39);
  v43 = v55;
  sub_548D0(v40, v55, &qword_184380, &qword_128108);
  (*(v36 + 32))(v43 + *(v41 + 48), v40 + v42, v39);
  v44 = *(v36 + 8);
  v44(v48, v39);
  sub_488C8(v57, &qword_184380, &qword_128108);
  v44(v38, v39);
  return sub_488C8(v56, &qword_184380, &qword_128108);
}

uint64_t sub_84AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v35 = a4;
  v4 = sub_115C80();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_115BE0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for DynamicUsageView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = sub_46F9C(&qword_1842B8, &qword_129030);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v30 - v16;
  v18 = sub_1158B0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_115C10();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  (*(v19 + 104))(v22, enum case for Calendar.Component.day(_:), v18);
  v25 = sub_1158D0();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  sub_115BF0();
  sub_488C8(v17, &qword_1842B8, &qword_129030);
  (*(v19 + 8))(v22, v18);
  (*(v10 + 16))(v13, v33, v9);
  v26 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v27 = swift_allocObject();
  v28 = v32;
  *(v27 + 16) = v31;
  *(v27 + 24) = v28;
  (*(v10 + 32))(v27 + v26, v13, v9);
  sub_115BD0();
  sub_115C70();
  sub_46F9C(&qword_1842C0, &qword_1280A0);
  sub_8C4BC();
  return sub_115E90();
}

uint64_t sub_84E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a3;
  v75 = a4;
  v76 = a2;
  v80 = a5;
  v6 = sub_46F9C(&qword_184308, &qword_1280C0);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v63 = &v60 - v8;
  v9 = sub_46F9C(&qword_1842F8, &qword_1280B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v66 = &v60 - v11;
  v12 = sub_115D00();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v77 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_115DA0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v78 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_46F9C(&qword_1842E8, &qword_1280B0);
  v68 = *(v18 - 8);
  v69 = v18;
  v19 = *(v68 + 64);
  __chkstk_darwin(v18);
  v67 = &v60 - v20;
  v21 = sub_46F9C(&qword_1842D8, &qword_1280A8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v79 = &v60 - v24;
  v72 = sub_1158B0();
  v25 = *(v72 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v72);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1158D0();
  v70 = *(v29 - 8);
  v71 = v29;
  v30 = *(v70 + 64);
  __chkstk_darwin(v29);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v60 - v35;
  v37 = sub_115760();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  sub_115EB0();
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_488C8(v36, &qword_182EF0, &unk_124BB0);
    return (*(v22 + 56))(v80, 1, 1, v21);
  }

  else
  {
    v61 = v37;
    v62 = v22;
    v60 = v38;
    (*(v38 + 32))(v41, v36, v37);
    sub_1158A0();
    v43 = v72;
    (*(v25 + 104))(v28, enum case for Calendar.Component.day(_:), v72);
    v44 = sub_1158C0();
    (*(v25 + 8))(v28, v43);
    (*(v70 + 8))(v32, v71);
    v45 = sub_115ED0();
    v46 = v41;
    if (v45)
    {
      __chkstk_darwin(v45);
      v56 = v74;
      v57 = v75;
      v58 = v76;
      v59 = v41;
      sub_115D90();
      sub_115CF0();
      if (v44 == 1)
      {
        v58 = sub_46F9C(&qword_184340, &qword_1280E8);
        v59 = sub_48800(&qword_184348, &qword_184340, &qword_1280E8);
        v56 = sub_8C7EC;
        v57 = &v54;
        v55 = 1;
        v54 = 0;
        v47 = v67;
        sub_115C30();
        v48 = v66;
        (*(v68 + 32))(v66, v47, v69);
      }

      else
      {
        v58 = sub_46F9C(&qword_184310, &qword_1280C8);
        v59 = sub_8C6E4();
        v56 = sub_8C6D8;
        v57 = &v54;
        v55 = 1;
        v54 = 0;
        v52 = v63;
        sub_115C30();
        v48 = v66;
        (*(v64 + 32))(v66, v52, v65);
      }

      v51 = v80;
      sub_46F9C(&qword_184330, &qword_1280D8);
      swift_storeEnumTagMultiPayload();
      v50 = v79;
      sub_548D0(v48, v79, &qword_1842F8, &qword_1280B8);
    }

    else
    {
      __chkstk_darwin(0);
      sub_115D90();
      sub_115CF0();
      v58 = sub_46F9C(&qword_184340, &qword_1280E8);
      v59 = sub_48800(&qword_184348, &qword_184340, &qword_1280E8);
      v56 = sub_8D69C;
      v57 = &v54;
      v55 = 1;
      v54 = 0;
      v49 = v67;
      sub_115C30();
      v50 = v79;
      (*(v68 + 32))(v79, v49, v69);
      v51 = v80;
    }

    v53 = v62;
    sub_46F9C(&qword_184338, &qword_1280E0);
    swift_storeEnumTagMultiPayload();
    sub_548D0(v50, v51, &qword_1842D8, &qword_1280A8);
    (*(v53 + 56))(v51, 0, 1, v21);
    return (*(v60 + 8))(v46, v61);
  }
}

uint64_t sub_857E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v105 = a5;
  *&v106 = a2;
  v103 = sub_1158D0();
  v102 = *(v103 - 8);
  v8 = *(v102 + 64);
  __chkstk_darwin(v103);
  v99 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_115760();
  v100 = *(v101 - 8);
  v10 = *(v100 + 64);
  __chkstk_darwin(v101);
  v96 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v98 = &v92 - v13;
  __chkstk_darwin(v14);
  v97 = &v92 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v104 = sub_117620();
  v17 = *(v104 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v104);
  v20 = &v92 - v19;
  v21 = *(a3 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(AssociatedTypeWitness - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v28);
  v30 = &v92 - v29;
  v94 = type metadata accessor for DynamicUsageView();
  v31 = *(v94 + 16);
  sub_116DC0();
  v95 = a1;
  sub_116D60();
  (*(a4 + 56))(a3, a4);
  (*(v21 + 8))(v25, a3);
  v32 = &selRef_setUisocLevel_;
  if ((*(v26 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v20, v104);
LABEL_8:
    v63 = sub_8D8B4()[3];
    isa = sub_1156B0().super.isa;
    v65 = [v63 v32[101]];

    v66 = sub_1171B0();
    v68 = v67;

    *&v114 = v66;
    *(&v114 + 1) = v68;
    sub_4869C();
    v108 = sub_116900();
    v109 = v69;
    v110 = v70 & 1;
    v111 = v71;
    v112 = 257;
    v113 = 1;
    sub_46F9C(&qword_184328, &qword_1280D0);
    sub_8C768();
    sub_116470();
    goto LABEL_9;
  }

  (*(v26 + 32))(v30, v20, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 32))(AssociatedTypeWitness);
  if (v34)
  {
    (*(v26 + 8))(v30, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v93 = v30;
  *&v104 = v26;
  v35 = v99;
  sub_1158A0();
  v36 = v97;
  sub_115830();
  v37 = *(v102 + 8);
  v38 = v103;
  v37(v35, v103);
  sub_1158A0();
  v39 = v96;
  sub_115700();
  v40 = v98;
  sub_115830();
  v41 = *(v100 + 8);
  v42 = v39;
  v43 = v101;
  v41(v42, v101);
  v37(v35, v38);
  LOBYTE(v35) = sub_115720();
  v41(v40, v43);
  v41(v36, v43);
  if ((v35 & 1) == 0)
  {
    (*(v104 + 8))(v93, AssociatedTypeWitness);
    v32 = &selRef_setUisocLevel_;
    goto LABEL_8;
  }

  v44 = sub_8D8B4()[3];
  v45 = sub_1156B0().super.isa;
  v32 = &selRef_setUisocLevel_;
  v46 = [v44 stringFromDate:v45];

  v47 = sub_1171B0();
  v49 = v48;

  *&v114 = v47;
  *(&v114 + 1) = v49;
  sub_4869C();
  v50 = sub_116900();
  v52 = v51;
  v54 = v53;
  v55 = v93;
  *&v114 = sub_82754(v93, v94);
  v56 = sub_116890();
  v103 = AssociatedTypeWitness;
  v57 = v55;
  v59 = v58;
  v61 = v60;
  v102 = v62;
  sub_48928(v50, v52, v54 & 1);

  v108 = v56;
  v109 = v59;
  v110 = v61 & 1;
  v111 = v102;
  v112 = 257;
  v113 = 0;
  sub_46F9C(&qword_184328, &qword_1280D0);
  sub_8C768();
  sub_116470();
  (*(v104 + 8))(v57, v103);
LABEL_9:
  v72 = v116;
  v73 = v117;
  v104 = v115;
  v106 = v114;
  v74 = v114;
  v75 = v115;
  sub_8C910(v114, *(&v114 + 1), v115);
  v76 = sub_8D8B4()[5];
  v77 = sub_1156B0().super.isa;
  v78 = [v76 v32[101]];

  v79 = sub_1171B0();
  v81 = v80;

  *&v114 = v79;
  *(&v114 + 1) = v81;
  sub_4869C();
  v82 = sub_116900();
  v84 = v83;
  LOBYTE(v78) = v85;
  v87 = v86;
  LOBYTE(v114) = v73;
  LOBYTE(v108) = v73;
  sub_8C910(v74, *(&v74 + 1), v75);
  LOBYTE(v78) = v78 & 1;
  sub_488B8(v82, v84, v78);

  sub_8C94C(v74, *(&v74 + 1), v75);
  v107 = v78;
  v88 = v108;
  v89 = v105;
  v90 = v104;
  *v105 = v106;
  v89[1] = v90;
  *(v89 + 16) = v72;
  *(v89 + 34) = v88;
  *(v89 + 5) = v82;
  *(v89 + 6) = v84;
  *(v89 + 56) = v78;
  *(v89 + 8) = v87;
  *(v89 + 36) = 257;
  sub_48928(v82, v84, v78);

  return sub_8C94C(v74, *(&v74 + 1), v75);
}

double sub_86150@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v91 = a5;
  v92 = a2;
  v8 = sub_1158D0();
  v87 = *(v8 - 8);
  v88 = v8;
  v9 = *(v87 + 64);
  __chkstk_darwin(v8);
  v84 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_115760();
  v85 = *(v11 - 8);
  v86 = v11;
  v12 = *(v85 + 64);
  v13 = __chkstk_darwin(v11);
  v82 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v83 = &v79 - v16;
  __chkstk_darwin(v15);
  v90 = &v79 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = sub_117620();
  v19 = *(v89 - 1);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v89);
  v23 = &v79 - v22;
  v24 = *(a3 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v21);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(AssociatedTypeWitness - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  v32 = &v79 - v31;
  v80 = type metadata accessor for DynamicUsageView();
  v33 = *(v80 + 16);
  sub_116DC0();
  v81 = a1;
  sub_116D60();
  (*(a4 + 56))(a3, a4);
  v34 = v28;
  v35 = v29;
  (*(v24 + 8))(v34, a3);
  if ((*(v29 + 48))(v23, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v23, v89);
LABEL_8:
    v65 = sub_8D8B4()[3];
    isa = sub_1156B0().super.isa;
    v67 = [v65 stringFromDate:isa];

    v68 = sub_1171B0();
    v70 = v69;

    *&v99 = v68;
    *(&v99 + 1) = v70;
    sub_4869C();
    v93 = sub_116900();
    v94 = v71;
    v95 = v72 & 1;
    v96 = v73;
    v97 = 257;
    v98 = 1;
    sub_46F9C(&qword_184328, &qword_1280D0);
    sub_8C768();
    sub_116470();
    goto LABEL_9;
  }

  (*(v29 + 32))(v32, v23, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(AssociatedConformanceWitness + 8) + 32))(AssociatedTypeWitness);
  if (v37)
  {
    (*(v29 + 8))(v32, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v89 = v32;
  v38 = v84;
  sub_1158A0();
  sub_115830();
  v39 = v88;
  v40 = *(v87 + 8);
  v40(v38, v88);
  sub_1158A0();
  v41 = v82;
  sub_115700();
  v42 = v83;
  sub_115830();
  v43 = *(v85 + 8);
  v44 = v41;
  v45 = v86;
  v43(v44, v86);
  v40(v38, v39);
  v46 = v90;
  LOBYTE(v40) = sub_115720();
  v43(v42, v45);
  v43(v46, v45);
  if ((v40 & 1) == 0)
  {
    (*(v35 + 8))(v89, AssociatedTypeWitness);
    goto LABEL_8;
  }

  v47 = sub_8D8B4()[3];
  v48 = sub_1156B0().super.isa;
  v49 = [v47 stringFromDate:v48];

  v50 = sub_1171B0();
  v52 = v51;

  *&v99 = v50;
  *(&v99 + 1) = v52;
  sub_4869C();
  v53 = sub_116900();
  v55 = v54;
  LOBYTE(v49) = v56;
  v57 = v89;
  *&v99 = sub_82754(v89, v80);
  v90 = sub_116890();
  v59 = v58;
  v92 = AssociatedTypeWitness;
  v61 = v60;
  v62 = v35;
  v64 = v63;
  sub_48928(v53, v55, v49 & 1);

  v93 = v90;
  v94 = v59;
  v95 = v61 & 1;
  v96 = v64;
  v97 = 257;
  v98 = 0;
  sub_46F9C(&qword_184328, &qword_1280D0);
  sub_8C768();
  sub_116470();
  (*(v62 + 8))(v57, v92);
LABEL_9:
  result = *&v99;
  v75 = v100;
  v76 = v101;
  v77 = v102;
  v78 = v91;
  *v91 = v99;
  v78[1] = v75;
  *(v78 + 16) = v76;
  *(v78 + 34) = v77;
  return result;
}

uint64_t sub_868E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v24 = a1;
  v25 = a4;
  v26 = a5;
  v7 = type metadata accessor for DynamicUsageView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = sub_115A20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v24, v12, v15);
  (*(v8 + 16))(v11, a2, v7);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 16) = a3;
  *(v19 + 24) = v20;
  (*(v13 + 32))(v19 + v17, v16, v12);
  result = (*(v8 + 32))(v19 + v18, v11, v7);
  v22 = v26;
  *v26 = sub_8BA44;
  v22[1] = v19;
  return result;
}

uint64_t sub_86AFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v61 = a4;
  v62 = a3;
  v48 = a2;
  v60 = a5;
  v55 = sub_116490();
  v56 = *(v55 - 8);
  v7 = *(v56 + 64);
  __chkstk_darwin(v55);
  v54 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DynamicUsageView();
  v43 = *(v57 - 8);
  v59 = *(v43 + 64);
  __chkstk_darwin(v57);
  v10 = &v40 - v9;
  v11 = sub_115A20();
  v12 = *(v11 - 8);
  v58 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_1159F0();
  type metadata accessor for CGRect(0);
  sub_1160A0();

  v15 = v72;
  v16 = v73;
  v17 = sub_116B50();
  sub_1167F0();
  *&v63 = v17;
  WORD4(v63) = 256;
  *(&v63 + 10) = v70;
  HIWORD(v63) = v71;
  v64 = v67;
  v65 = v68;
  v66 = v69;
  v18 = *(v12 + 16);
  v51 = v12 + 16;
  v53 = v18;
  v42 = v14;
  v18(v14, a1, v11);
  v19 = v43;
  v20 = *(v43 + 16);
  v47 = v43 + 16;
  v49 = v20;
  v41 = v10;
  v21 = v57;
  v20(v10, a2, v57);
  v46 = *(v12 + 80);
  v22 = (v46 + 64) & ~v46;
  v45 = *(v19 + 80);
  v23 = (v58 + v45 + v22) & ~v45;
  v50 = v46 | v45;
  v24 = swift_allocObject();
  v25 = v61;
  *(v24 + 16) = v62;
  *(v24 + 24) = v25;
  *(v24 + 32) = v15;
  *(v24 + 48) = v16;
  v44 = *(v12 + 32);
  v26 = v14;
  v27 = v11;
  v44(v24 + v22, v26, v11);
  v28 = *(v19 + 32);
  v28(v24 + v23, v10, v21);
  v29 = v54;
  sub_1164F0();
  sub_46F9C(&qword_184280, &unk_128080);
  sub_8BF50();
  v30 = v55;
  sub_116A10();

  (*(v56 + 8))(v29, v30);
  v72 = v63;
  v73 = v64;
  v74 = v65;
  v75 = v66;
  sub_488C8(&v72, &qword_184280, &unk_128080);
  v31 = v41;
  v32 = v57;
  v49(v41, v48, v57);
  v33 = v42;
  v53(v42, v52, v27);
  v34 = (v45 + 32) & ~v45;
  v35 = (v59 + v46 + v34) & ~v46;
  v36 = swift_allocObject();
  v37 = v61;
  *(v36 + 16) = v62;
  *(v36 + 24) = v37;
  v28(v36 + v34, v31, v32);
  v44(v36 + v35, v33, v27);
  result = sub_46F9C(&qword_1842B0, &qword_128098);
  v39 = (v60 + *(result + 36));
  *v39 = sub_8C324;
  v39[1] = v36;
  v39[2] = 0;
  v39[3] = 0;
  return result;
}

void sub_8712C(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(*(a8 - 8) + 64);
  __chkstk_darwin(a1);
  v17 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v31 - v19;
  v21 = sub_115760();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = (__chkstk_darwin)(v21);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v31 - v27;
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  MaxX = CGRectGetMaxX(v33);
  if (MinX > MaxX)
  {
    __break(1u);
  }

  else if (MinX <= a2 && MaxX > a2)
  {
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    CGRectGetMinX(v34);
    sub_115A00();
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_488C8(v20, &qword_182EF0, &unk_124BB0);
    }

    else
    {
      (*(v22 + 32))(v28, v20, v21);
      (*(v22 + 16))(v26, v28, v21);
      sub_116DC0();
      sub_116D60();
      (*(*(a9 + 8) + 56))(v26, a8);
      sub_116D70();
      (*(v22 + 8))(v28, v21);
    }
  }
}

uint64_t sub_87430(uint64_t a1, uint64_t a2)
{
  v3 = sub_46F9C(&qword_184128, &qword_127D40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_115A20();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = type metadata accessor for DynamicUsageView();
  return sub_7D9E0(v6, v9);
}

void sub_87554(uint64_t a1)
{
  v2 = sub_115760();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  __chkstk_darwin(v2);
  v71 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v69 = v68 - v8;
  v9 = sub_117620();
  v83 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v74 = *(TupleTypeMetadata2 - 8);
  v10 = *(v74 + 64);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v77 = v68 - v12;
  v82 = *(v9 - 8);
  v13 = v82[8];
  v14 = __chkstk_darwin(v11);
  v79 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v68 - v17;
  v19 = __chkstk_darwin(v16);
  v75 = v68 - v20;
  v21 = *(v5 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v19);
  v25 = v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v68 - v26;
  sub_116DC0();
  sub_116D60();
  (*(v6 + 56))(v5, v6);
  v28 = *(v21 + 8);
  v28(v27, v5);
  v29 = v77;
  sub_116D60();
  v30 = *(v6 + 48);
  v70 = v6;
  v31 = v30(v5, v6);
  v68[1] = v5;
  v28(v25, v5);
  v84 = v31;
  v32 = AssociatedTypeWitness;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1170F0();

  v33 = *(TupleTypeMetadata2 + 48);
  v34 = v82;
  v35 = v82[2];
  v36 = v75;
  v37 = v83;
  v35(v29);
  v76 = v33;
  (v35)(&v29[v33], v18, v37);
  v38 = *(v80 + 48);
  if (v38(v29, 1, v32) == 1)
  {
    v39 = v34[1];
    v40 = v18;
    v41 = v83;
    v39(v40, v83);
    v39(v36, v41);
    v42 = v29;
    if (v38(&v29[v76], 1, v32) == 1)
    {
      v39(v29, v83);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v43 = v36;
  (v35)(v79, v29, v83);
  v44 = v76;
  v42 = v29;
  if (v38(&v29[v76], 1, v32) == 1)
  {
    v45 = v83;
    v46 = v82[1];
    v46(v18, v83);
    v46(v43, v45);
    (*(v80 + 8))(v79, v32);
LABEL_6:
    (*(v74 + 8))(v42, TupleTypeMetadata2);
LABEL_7:
    v47 = sub_117170();
    v48 = BatteryUILocalization(v47);

    if (v48)
    {
      sub_1171B0();

      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v49 = v80;
  v50 = v69;
  (*(v80 + 32))(v69, &v29[v44], v32);
  v51 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v52 = v79;
  v53 = sub_117160();
  v54 = *(v49 + 8);
  v54(v50, v32);
  v55 = v82[1];
  v56 = v18;
  v57 = v83;
  v55(v56, v83);
  v55(v43, v57);
  v54(v52, v32);
  v55(v29, v57);
  if ((v53 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v58 = sub_117170();
  v59 = BatteryUILocalization(v58);

  if (v59)
  {
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_124890;
    v61 = sub_8D8B4()[2];
    v62 = v71;
    sub_115750();
    isa = sub_1156B0().super.isa;
    (*(v72 + 8))(v62, v73);
    v64 = [v61 stringFromDate:isa];

    v65 = sub_1171B0();
    v67 = v66;

    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_53EE8();
    *(v60 + 32) = v65;
    *(v60 + 40) = v67;
    sub_117180();

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_87D88(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_117620();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v10);
  v13 = &v24[-v12];
  v27 = (*(a2 + 48))(a1, a2, v11);
  v25 = a1;
  v26 = a2;
  sub_1173A0();
  swift_getWitnessTable();
  sub_1172C0();

  (*(v6 + 16))(v9, v13, v5);
  v14 = *(AssociatedTypeWitness - 8);
  if ((*(v14 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v6 + 8))(v9, v5);
    v16 = 0.0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v20 = v19;
    result = (*(v14 + 8))(v9, AssociatedTypeWitness);
    v16 = 0.0;
    if ((v20 & 1) == 0)
    {
      v16 = *&v18;
    }
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = v16;
  if (v16 < 101)
  {
    goto LABEL_13;
  }

  v16 = ceil(v16 / 50.0) * 50.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = 0x43E0000000000000;
  if (v16 < 9.22337204e18)
  {
    goto LABEL_21;
  }

  __break(1u);
LABEL_13:
  if (v21 < 51)
  {
    goto LABEL_18;
  }

  v16 = ceil(v16 / 50.0) * 50.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v16 < 9.22337204e18)
  {
LABEL_21:
    v22 = v16;
    sub_46F9C(&qword_183D08, &unk_127E20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1246D0;
    *(v23 + 32) = 0;
    *(v23 + 40) = v22 / 2;
    *(v23 + 48) = v22;
    (*(v6 + 8))(v13, v5);
    return v23;
  }

  __break(1u);
LABEL_18:
  v16 = ceil(v16 / 10.0) * 10.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v16 < 9.22337204e18)
  {
    goto LABEL_21;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_881D0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1158D0();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  __chkstk_darwin(v5);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_115760();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  v10 = __chkstk_darwin(v8);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v48 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_117620();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  v16 = __chkstk_darwin(v14);
  v53 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v48 - v18;
  v20 = *(a2 + 32);
  v54 = v2;
  v21 = a1;
  v52 = v20;
  v63 = v20(a1, a2);
  sub_1173A0();
  swift_getWitnessTable();
  sub_117490();

  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 48);
  if (v23(v19, 1, AssociatedTypeWitness) == 1)
  {
    v24 = v19;
LABEL_3:
    (*(v55 + 8))(v24, v56);
    goto LABEL_5;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = *(AssociatedConformanceWitness + 32);
  v50 = AssociatedConformanceWitness;
  v48 = v26(AssociatedTypeWitness);
  v28 = v27;
  v49 = *(v22 + 8);
  v49(v19, AssociatedTypeWitness);
  if (v28)
  {
    goto LABEL_5;
  }

  v63 = v52(v21, a2);
  swift_getWitnessTable();
  v24 = v53;
  sub_1170F0();

  if (v23(v24, 1, AssociatedTypeWitness) == 1)
  {
    goto LABEL_3;
  }

  (*(v50 + 40))(AssociatedTypeWitness);
  v40 = v39;
  v49(v24, AssociatedTypeWitness);
  if ((v40 & 1) == 0)
  {
    v41 = v60;
    sub_115700();
    v42 = v51;
    sub_115700();
    sub_46F9C(&qword_184260, &unk_128570);
    v43 = v61;
    v44 = *(v61 + 72);
    v45 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1248A0;
    v46 = v31 + v45;
    v47 = v62;
    (*(v43 + 16))(v46, v41, v62);
    (*(v43 + 32))(v46 + v44, v42, v47);
    (*(v43 + 8))(v41, v47);
    return v31;
  }

LABEL_5:
  sub_46F9C(&qword_184260, &unk_128570);
  v29 = v61;
  v56 = *(v61 + 72);
  v30 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1248A0;
  v32 = v57;
  sub_1158A0();
  v33 = v60;
  sub_1156F0();
  sub_115830();
  v34 = *(v29 + 8);
  v35 = v62;
  v34(v33, v62);
  v36 = v59;
  v37 = *(v58 + 8);
  v37(v32, v59);
  sub_1158A0();
  sub_1156F0();
  sub_115830();
  v34(v33, v35);
  v37(v32, v36);
  return v31;
}

BOOL sub_887E0(uint64_t a1, double a2, double a3)
{
  v6 = sub_1158D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_115760();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
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
  v26(v16, v11);
  (*(v7 + 8))(v10, v6);
  sub_115710();
  v28 = v27;
  v26(v18, v11);
  return v25 <= v28;
}

uint64_t sub_88A14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  v6 = sub_117620();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = *(a2 + 44);
  (*(v10 + 16))(&v12 - v8, a1, v6);
  sub_116CF0();
  return sub_116CD0();
}

unint64_t sub_88B20()
{
  result = qword_1841F8;
  if (!qword_1841F8)
  {
    sub_47A1C(&qword_1841D0, &qword_127DB0);
    sub_47A1C(&qword_184200, &qword_127DD8);
    sub_47A1C(&qword_184208, &unk_127DE0);
    sub_47A1C(&qword_184210, &qword_128640);
    sub_47A1C(&qword_184158, &unk_1285C0);
    sub_115E00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_4869C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1841F8);
  }

  return result;
}

unint64_t sub_88CFC()
{
  result = qword_184220;
  if (!qword_184220)
  {
    sub_47A1C(&qword_184218, &qword_127DF0);
    sub_48800(&qword_184228, &qword_184230, &qword_127DF8);
    sub_48800(&qword_1841A8, &qword_1841B0, &unk_127D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184220);
  }

  return result;
}

void sub_88DF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for DynamicUsageView() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_82E10(v4, v1, v2);
}

uint64_t sub_88EA0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for DynamicUsageView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_868E0(a1, v8, v5, v6, a2);
}

BOOL sub_88F3C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 16);
  v5 = swift_checkMetadataState();
  v6 = COERCE_DOUBLE(v4(v5, AssociatedConformanceWitness));
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  v9 = COERCE_DOUBLE(v4(v5, AssociatedConformanceWitness));
  if (v10)
  {
    v9 = 0.0;
  }

  return v8 < v9;
}

uint64_t sub_89088(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_89108(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_89188(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_891EC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_115A20() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v9 + 64);
  if (v11)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = ((v14 + 16) & ~v14) + *(v6 + 64) + v17;
  if (v13 >= a2)
  {
    goto LABEL_36;
  }

  v19 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + (v18 & ~v17) + 8;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v13 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v13 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if (v12 <= v8)
  {
    v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v7 & 0x80000000) != 0)
    {
      v31 = *(v6 + 48);

      return v31((v29 + v14 + 8) & ~v14, v7, v5);
    }

    else
    {
      v30 = *v29;
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      return (v30 + 1);
    }
  }

  else
  {
    v28 = (*(v10 + 48))((a1 + v18) & ~v17);
    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_8946C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v36 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_115A20();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  if (v14)
  {
    v16 = v14 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v17;
  }

  v19 = ((v15 + 16) & ~v15) + *(v8 + 64);
  v20 = *(v13 + 80) & 0xF8 | 7;
  if (v14)
  {
    v21 = *(*(v11 - 8) + 64);
  }

  else
  {
    v21 = *(*(v11 - 8) + 64) + 1;
  }

  v22 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v19 + v20) & ~v20) + 8;
  if (v18 < a3)
  {
    if (((v21 + 7) & 0xFFFFFFF8) + ((v19 + v20) & ~v20) == -8)
    {
      v23 = a3 - v18 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v12 = v24;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 > v18)
  {
    if (((v21 + 7) & 0xFFFFFFF8) + ((v19 + v20) & ~v20) == -8)
    {
      v25 = a2 - v18;
    }

    else
    {
      v25 = 1;
    }

    if (((v21 + 7) & 0xFFFFFFF8) + ((v19 + v20) & ~v20) != -8)
    {
      v26 = ~v18 + a2;
      bzero(a1, v22);
      *a1 = v26;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *&a1[v22] = v25;
      }

      else
      {
        *&a1[v22] = v25;
      }
    }

    else if (v12)
    {
      a1[v22] = v25;
    }

    return;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (v12 == 2)
  {
    *&a1[v22] = 0;
    goto LABEL_45;
  }

  *&a1[v22] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v16 <= v10)
  {
    if (v10 >= a2)
    {
      v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v35 = *(v36 + 56);

        v35((v32 + v15 + 8) & ~v15, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v33 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v33 = (a2 - 1);
        }

        *v32 = v33;
      }
    }

    else
    {
      if (v19 <= 3)
      {
        v29 = ~(-1 << (8 * v19));
      }

      else
      {
        v29 = -1;
      }

      if (v19)
      {
        v28 = v29 & (~v10 + a2);
        if (v19 <= 3)
        {
          v30 = v19;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v19);
        if (v30 <= 2)
        {
          if (v30 != 1)
          {
LABEL_74:
            *a1 = v28;
            return;
          }

LABEL_60:
          *a1 = v28;
          return;
        }

LABEL_82:
        if (v30 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
          return;
        }

        goto LABEL_84;
      }
    }
  }

  else
  {
    a1 = (&a1[v19 + v20] & ~v20);
    if (v17 < a2)
    {
      v27 = (v21 + 7) & 0xFFFFFFF8;
      if (v27 == -8)
      {
        return;
      }

      v28 = ~v17 + a2;
      bzero(a1, (v27 + 8));
LABEL_84:
      *a1 = v28;
      return;
    }

    if (v16 >= a2)
    {
      v34 = *(v13 + 56);

      v34(a1, (a2 + 1));
    }

    else
    {
      if (v21 <= 3)
      {
        v31 = ~(-1 << (8 * v21));
      }

      else
      {
        v31 = -1;
      }

      if (v21)
      {
        v28 = v31 & (~v16 + a2);
        if (v21 <= 3)
        {
          v30 = v21;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v21);
        if (v30 <= 2)
        {
          if (v30 != 1)
          {
            goto LABEL_74;
          }

          goto LABEL_60;
        }

        goto LABEL_82;
      }
    }
  }
}

void sub_89878(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  sub_116DC0();
  if (v8 <= 0x3F)
  {
    sub_8AAEC(319, a4, &qword_184128, &qword_127D40, a5);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_89928(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_115A20() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v15 | 7;
  v19 = ((v14 + 16) & ~v14) + *(v6 + 64) + (v15 | 7);
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v20 = v17 + ((v15 + 16) & ~v15) + (v19 & ~v18);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v13 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v24 < 2)
    {
LABEL_37:
      if (v12 <= v8)
      {
        v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v7 & 0x80000000) != 0)
        {
          v31 = *(v6 + 48);

          return v31((v29 + v14 + 8) & ~v14, v7, v5);
        }

        else
        {
          v30 = *v29;
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          return (v30 + 1);
        }
      }

      else
      {
        v28 = (*(v10 + 48))((v15 + ((((a1 + v19) & ~v18) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15);
        if (v28 >= 2)
        {
          return v28 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_37;
  }

LABEL_24:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = v20;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v13 + (v27 | v25) + 1;
}

void sub_89C04(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v42 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(sub_115A20() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v8 + 80);
  v19 = ((v18 + 16) & ~v18) + *(v8 + 64);
  v20 = *(v12 + 80);
  v21 = v19 + (v20 | 7);
  v22 = (v20 + 16) & ~v20;
  v23 = *(v12 + 64);
  if (v14)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v22 + v24;
  v26 = (v21 & ~(v20 | 7)) + v22 + v24;
  if (a3 <= v17)
  {
    goto LABEL_30;
  }

  if (v26 > 3)
  {
    v11 = 1;
    if (v17 >= a2)
    {
      goto LABEL_19;
    }

LABEL_31:
    v29 = ~v17 + a2;
    if (v26 >= 4)
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v11 > 1)
      {
        goto LABEL_33;
      }

LABEL_87:
      if (v11)
      {
        a1[v26] = v30;
      }

      return;
    }

    v30 = (v29 >> (8 * v26)) + 1;
    if (v26)
    {
      v35 = v29 & ~(-1 << (8 * v26));
      bzero(a1, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *a1 = v35;
          if (v11 <= 1)
          {
            goto LABEL_87;
          }
        }

        else
        {
          *a1 = v29;
          if (v11 <= 1)
          {
            goto LABEL_87;
          }
        }

LABEL_33:
        if (v11 == 2)
        {
          *&a1[v26] = v30;
        }

        else
        {
          *&a1[v26] = v30;
        }

        return;
      }

      *a1 = v35;
      a1[2] = BYTE2(v35);
    }

    if (v11 <= 1)
    {
      goto LABEL_87;
    }

    goto LABEL_33;
  }

  v27 = ((a3 - v17 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
  if (!HIWORD(v27))
  {
    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v11 = v28;
    }

    else
    {
      v11 = 0;
    }

LABEL_30:
    if (v17 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  v11 = 4;
  if (v17 < a2)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v26] = 0;
  }

  else if (v11)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v15 <= v10)
  {
    if (v10 >= a2)
    {
      v38 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v41 = *(v42 + 56);

        v41((v38 + v18 + 8) & ~v18, a2, v9, v7);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v39 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v39 = (a2 - 1);
        }

        *v38 = v39;
      }
    }

    else
    {
      if (v19 <= 3)
      {
        v36 = ~(-1 << (8 * v19));
      }

      else
      {
        v36 = -1;
      }

      if (v19)
      {
        v32 = v36 & (~v10 + a2);
        if (v19 <= 3)
        {
          v33 = v19;
        }

        else
        {
          v33 = 4;
        }

        v34 = a1;
        v24 = v19;
        goto LABEL_76;
      }
    }
  }

  else
  {
    a1 = (&a1[v21] & ~(v20 | 7));
    if (v16 >= a2)
    {
      a1 = ((v20 + ((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v20);
      if (v15 >= a2)
      {
        v40 = *(v13 + 56);

        v40(a1, (a2 + 1));
      }

      else
      {
        if (v24 <= 3)
        {
          v37 = ~(-1 << (8 * v24));
        }

        else
        {
          v37 = -1;
        }

        if (v24)
        {
          v32 = v37 & (~v15 + a2);
          if (v24 <= 3)
          {
            v33 = v24;
          }

          else
          {
            v33 = 4;
          }

          v34 = a1;
          goto LABEL_76;
        }
      }
    }

    else
    {
      if (v25 <= 3)
      {
        v31 = ~(-1 << (8 * v25));
      }

      else
      {
        v31 = -1;
      }

      if (v25)
      {
        v32 = v31 & (~v16 + a2);
        if (v25 <= 3)
        {
          v33 = v22 + v24;
        }

        else
        {
          v33 = 4;
        }

        v34 = a1;
        v24 += v22;
LABEL_76:
        bzero(v34, v24);
        if (v33 > 2)
        {
          if (v33 == 3)
          {
            *a1 = v32;
            a1[2] = BYTE2(v32);
          }

          else
          {
            *a1 = v32;
          }
        }

        else if (v33 == 1)
        {
          *a1 = v32;
        }

        else
        {
          *a1 = v32;
        }
      }
    }
  }
}

void sub_8A0B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_116DC0();
  if (v3 <= 0x3F)
  {
    sub_8AAEC(319, &qword_184270, &qword_184128, &qword_127D40, &type metadata accessor for Binding);
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_getAssociatedTypeWitness();
      sub_1173A0();
      if (v6 <= 0x3F)
      {
        sub_117620();
        sub_116CF0();
        if (v7 <= 0x3F)
        {
          sub_8AAEC(319, &qword_184278, &qword_1835B0, &qword_127DA0, &type metadata accessor for State);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_8A210(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v45 = *(v5 + 84);
  if (v45 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v43 = sub_115A20();
  v7 = *(v43 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v44 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v46 = v6;
  if (v10 > v6)
  {
    v6 = v10;
  }

  v11 = *(a3 + 24);
  v12 = *(v43 - 8);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v6)
  {
    v16 = v6;
  }

  v17 = *(v5 + 80);
  v18 = *(v12 + 80);
  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = *(v7 + 64) + 1;
  }

  v20 = *(v13 + 64);
  if (v15)
  {
    v21 = 7;
  }

  else
  {
    v21 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v18 | 7;
  v23 = ((v17 + 16) & ~v17) + *(v5 + 64) + (v18 | 7);
  v24 = v19 + ((v18 + 16) & ~v18) + 7;
  v25 = *(v13 + 80) & 0xF8;
  v26 = ~v25 & 0xFFFFFFFFFFFFFFF8;
  v27 = v25 + 15;
  if (v16 < a2)
  {
    v28 = ((v21 + v20) & 0xFFFFFFFFFFFFFFF8) + ((v27 + ((v24 + (v23 & ~v22)) & 0xFFFFFFFFFFFFFFF8)) & v26) + 24;
    v29 = v28 & 0xFFFFFFF8;
    if ((v28 & 0xFFFFFFF8) != 0)
    {
      v30 = 2;
    }

    else
    {
      v30 = a2 - v16 + 1;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v33 = *(a1 + v28);
        if (!v33)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v33 = *(a1 + v28);
        if (!v33)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      if (!v32)
      {
        goto LABEL_44;
      }

      v33 = *(a1 + v28);
      if (!v33)
      {
        goto LABEL_44;
      }
    }

    v35 = v33 - 1;
    if (v29)
    {
      v35 = 0;
      v36 = *a1;
    }

    else
    {
      v36 = 0;
    }

    return v16 + (v36 | v35) + 1;
  }

LABEL_44:
  if (v46 == v16)
  {
    v37 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v45 & 0x80000000) != 0)
    {
      v38 = *(v5 + 48);

      return v38((v37 + v17 + 8) & ~v17);
    }

    goto LABEL_51;
  }

  v39 = (a1 + v23) & ~v22;
  if (v10 != v16)
  {
    v41 = ((v24 + v39) & 0xFFFFFFFFFFFFFFF8);
    if ((v16 & 0x80000000) == 0)
    {
      v40 = *v41;
      goto LABEL_54;
    }

    v42 = (*(v14 + 48))((v41 + v27) & v26);
LABEL_61:
    if (v42 >= 2)
    {
      return v42 - 1;
    }

    else
    {
      return 0;
    }
  }

  v37 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v44 & 0x80000000) != 0)
  {
    v42 = (*(v12 + 48))((v37 + v18 + 8) & ~v18, v8, v43);
    goto LABEL_61;
  }

LABEL_51:
  v40 = *v37;
LABEL_54:
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_8A5CC(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v50 = *(v5 + 84);
  if (v50 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v48 = sub_115A20();
  v7 = *(v48 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v49 = v9;
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(a4 + 24);
  v13 = 0;
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = *(v14 + 84);
  v16 = *(v5 + 80);
  v17 = *(v7 + 80);
  v18 = *(v14 + 80);
  if (v15)
  {
    v19 = v15 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  if (v19 <= v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = v19;
  }

  if (v8)
  {
    v21 = *(v7 + 64);
  }

  else
  {
    v21 = *(v7 + 64) + 1;
  }

  v22 = ((v16 + 16) & ~v16) + *(v5 + 64) + (v17 | 7);
  v23 = ((v17 + 16) & ~v17) + v21 + 7;
  v24 = ~(v18 & 0xF8) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v18 & 0xF8) + 15;
  if (v15)
  {
    v26 = *(v14 + 64);
  }

  else
  {
    v26 = *(v14 + 64) + 1;
  }

  v27 = ((v26 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v25 + ((v23 + (v22 & ~(v17 | 7))) & 0xFFFFFFFFFFFFFFF8)) & v24) + 24;
  if (v20 < a3)
  {
    if (((v26 + 7) & 0xFFFFFFF8) + ((v25 + ((v23 + (v22 & ~(v17 | 7))) & 0xFFFFFFF8)) & v24) == -24)
    {
      v28 = a3 - v20 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v13 = v29;
    }

    else
    {
      v13 = 0;
    }
  }

  if (a2 > v20)
  {
    if (((v26 + 7) & 0xFFFFFFF8) + ((v25 + ((v23 + (v22 & ~(v17 | 7))) & 0xFFFFFFF8)) & v24) == -24)
    {
      v30 = a2 - v20;
    }

    else
    {
      v30 = 1;
    }

    if (((v26 + 7) & 0xFFFFFFF8) + ((v25 + ((v23 + (v22 & ~(v17 | 7))) & 0xFFFFFFF8)) & v24) != -24)
    {
      v31 = ~v20 + a2;
      bzero(a1, v27);
      *a1 = v31;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v27) = v30;
      }

      else
      {
        *(a1 + v27) = v30;
      }
    }

    else if (v13)
    {
      *(a1 + v27) = v30;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v27) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_56;
    }

    *(a1 + v27) = 0;
  }

  else if (v13)
  {
    *(a1 + v27) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_56;
  }

  if (!a2)
  {
    return;
  }

LABEL_56:
  if (v6 == v20)
  {
    v32 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v50 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) == 0)
      {
LABEL_59:
        *v32 = a2 - 1;
        return;
      }

LABEL_63:
      *v32 = a2 & 0x7FFFFFFF;
      return;
    }

    v36 = *(v5 + 56);

    v36((v32 + v16 + 8) & ~v16, a2);
  }

  else
  {
    v33 = (a1 + v22) & ~(v17 | 7);
    if (v10 == v20)
    {
      v32 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v49 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_63;
      }

      v37 = v32 + v17 + 8;
      v38 = (v37 & ~v17);
      if (v49 >= a2)
      {
        v46 = *(v7 + 56);

        v46(v37 & ~v17, a2 + 1, v8, v48);
      }

      else
      {
        if (v21 <= 3)
        {
          v39 = ~(-1 << (8 * v21));
        }

        else
        {
          v39 = -1;
        }

        if (v21)
        {
          v40 = v39 & (~v49 + a2);
          if (v21 <= 3)
          {
            v41 = v21;
          }

          else
          {
            v41 = 4;
          }

          bzero(v38, v21);
          if (v41 > 2)
          {
            if (v41 == 3)
            {
              *v38 = v40;
              v38[2] = BYTE2(v40);
            }

            else
            {
              *v38 = v40;
            }
          }

          else if (v41 == 1)
          {
            *v38 = v40;
          }

          else
          {
            *v38 = v40;
          }
        }
      }
    }

    else
    {
      v34 = ((v23 + v33) & 0xFFFFFFFFFFFFFFF8);
      if ((v20 & 0x80000000) != 0)
      {
        v42 = ((v34 + v25) & v24);
        if (v19 >= a2)
        {
          v47 = *(v14 + 56);

          v47(v42, a2 + 1);
        }

        else
        {
          v43 = (v26 + 7) & 0xFFFFFFF8;
          if (v43 != -8)
          {
            v44 = ~v19 + a2;
            v45 = v42;
            bzero(v42, (v43 + 8));
            *v45 = v44;
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v35 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v35 = a2 - 1;
        }

        *v34 = v35;
      }
    }
  }
}

void sub_8AAEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_47A1C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_8AB50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for FullDayUsageView();
  type metadata accessor for DynamicUsageView();
  swift_getTupleTypeMetadata2();
  sub_116F20();
  swift_getWitnessTable();
  sub_116D50();

  return swift_getWitnessTable();
}

uint64_t sub_8AC18(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1173A0();
  sub_47A1C(&qword_184140, &qword_127D58);
  swift_getWitnessTable();
  sub_116E30();
  sub_7DCA0();
  swift_getWitnessTable();
  sub_115DD0();
  sub_47A1C(&qword_184160, &unk_127D70);
  swift_getWitnessTable();
  sub_7DDE8();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184178, &qword_1285D0);
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  swift_getOpaqueTypeMetadata2();
  sub_116480();
  sub_47A1C(&qword_184188, &qword_127D80);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_7DF20();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8AF6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1173A0();
  sub_47A1C(&qword_1841D0, &qword_127DB0);
  swift_getWitnessTable();
  sub_116E30();
  sub_47A1C(&qword_1841D8, &qword_127DB8);
  swift_getAssociatedTypeWitness();
  sub_47A1C(&qword_1841E0, &qword_127DC0);
  sub_47A1C(&qword_1841E8, &qword_127DC8);
  sub_47A1C(&qword_1841F0, &qword_127DD0);
  sub_115E70();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_4869C();
  swift_getOpaqueTypeMetadata2();
  sub_117620();
  sub_115A60();
  sub_88B20();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_115DD0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184160, &unk_127D70);
  swift_getOpaqueTypeConformance2();
  sub_7DDE8();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184178, &qword_1285D0);
  swift_getOpaqueTypeConformance2();
  sub_7DEA4();
  swift_getOpaqueTypeMetadata2();
  sub_116480();
  sub_47A1C(&qword_184218, &qword_127DF0);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_88CFC();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_1841B8, &qword_1285E0);
  swift_getOpaqueTypeConformance2();
  sub_7E000();
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184238, &qword_127E00);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_184240, &qword_184238, &qword_127E00);
  swift_getOpaqueTypeMetadata2();
  sub_47A1C(&qword_184248, &qword_127E08);
  swift_getOpaqueTypeConformance2();
  sub_48800(&qword_184250, &qword_184248, &qword_127E08);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_8B74C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_115A20();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = type metadata accessor for DynamicUsageView();
  v8 = *(*(v7 - 1) + 80);
  v27 = *(*(v7 - 1) + 64);
  v26 = *(v4 + 8);
  v26(v0 + v5, v3);
  v9 = (v0 + ((v6 + v8) & ~v8));
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = sub_116DC0();
  (*(*(v2 - 8) + 8))(&v9[*(v12 + 32)], v2);
  v13 = &v9[v7[9]];
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  if (!(*(v4 + 48))(&v13[v16], 1, v3))
  {
    v26(&v13[v16], v3);
  }

  v17 = *&v9[v7[10]];

  v18 = &v9[v7[11]];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  if (!(*(v20 + 48))(v18, 1, AssociatedTypeWitness))
  {
    (*(v20 + 8))(v18, AssociatedTypeWitness);
  }

  sub_117620();
  v21 = *&v18[*(sub_116CF0() + 28)];

  v22 = &v9[v7[12]];
  v23 = *v22;

  v24 = *(v22 + 1);

  return swift_deallocObject();
}

uint64_t sub_8BA44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_115A20() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for DynamicUsageView() - 8);
  v9 = v1 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_86AFC(v1 + v6, v9, v3, v4, a1);
}

uint64_t sub_8BB58()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_115A20();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = type metadata accessor for DynamicUsageView();
  v8 = *(*(v7 - 1) + 80);
  v27 = *(*(v7 - 1) + 64);
  v26 = *(v4 + 8);
  v26(v0 + v5, v3);
  v9 = (v0 + ((v6 + v8) & ~v8));
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = sub_116DC0();
  (*(*(v2 - 8) + 8))(&v9[*(v12 + 32)], v2);
  v13 = &v9[v7[9]];
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  if (!(*(v4 + 48))(&v13[v16], 1, v3))
  {
    v26(&v13[v16], v3);
  }

  v17 = *&v9[v7[10]];

  v18 = &v9[v7[11]];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  if (!(*(v20 + 48))(v18, 1, AssociatedTypeWitness))
  {
    (*(v20 + 8))(v18, AssociatedTypeWitness);
  }

  sub_117620();
  v21 = *&v18[*(sub_116CF0() + 28)];

  v22 = &v9[v7[12]];
  v23 = *v22;

  v24 = *(v22 + 1);

  return swift_deallocObject();
}

void sub_8BE50(double a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(sub_115A20() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for DynamicUsageView() - 8);
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_8712C(v1 + v6, a1, v9, v10, v11, v12, v13, v3, v4);
}

unint64_t sub_8BF50()
{
  result = qword_184288;
  if (!qword_184288)
  {
    sub_47A1C(&qword_184280, &unk_128080);
    sub_48800(&qword_184290, &qword_184298, &unk_129B80);
    sub_48800(&qword_1842A0, &qword_1842A8, &qword_128090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184288);
  }

  return result;
}

uint64_t sub_8C034()
{
  v1 = *(v0 + 16);
  v24 = *(v0 + 24);
  v2 = type metadata accessor for DynamicUsageView();
  v3 = *(*(v2 - 1) + 80);
  v25 = *(*(v2 - 1) + 64);
  v4 = sub_115A20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v26 = *(v5 + 64);
  v7 = (v0 + ((v3 + 32) & ~v3));
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = sub_116DC0();
  (*(*(v1 - 8) + 8))(&v7[*(v10 + 32)], v1);
  v11 = &v7[v2[9]];
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  if (!(*(v5 + 48))(&v11[v14], 1, v4))
  {
    (*(v5 + 8))(&v11[v14], v4);
  }

  v15 = *&v7[v2[10]];

  v16 = &v7[v2[11]];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  if (!(*(v18 + 48))(v16, 1, AssociatedTypeWitness))
  {
    (*(v18 + 8))(v16, AssociatedTypeWitness);
  }

  sub_117620();
  v19 = *&v16[*(sub_116CF0() + 28)];

  v20 = &v7[v2[12]];
  v21 = *v20;

  v22 = *(v20 + 1);

  (*(v5 + 8))(v0 + ((((v3 + 32) & ~v3) + v25 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_8C324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for DynamicUsageView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_115A20() - 8);
  v7 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_87430(v0 + v4, v7);
}

uint64_t sub_8C420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for DynamicUsageView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_84E90(a1, v8, v5, v6, a2);
}

unint64_t sub_8C4BC()
{
  result = qword_1842C8;
  if (!qword_1842C8)
  {
    sub_47A1C(&qword_1842C0, &qword_1280A0);
    sub_8C540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1842C8);
  }

  return result;
}

unint64_t sub_8C540()
{
  result = qword_1842D0;
  if (!qword_1842D0)
  {
    sub_47A1C(&qword_1842D8, &qword_1280A8);
    sub_48800(&qword_1842E0, &qword_1842E8, &qword_1280B0);
    sub_8C5F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1842D0);
  }

  return result;
}

unint64_t sub_8C5F8()
{
  result = qword_1842F0;
  if (!qword_1842F0)
  {
    sub_47A1C(&qword_1842F8, &qword_1280B8);
    sub_48800(&qword_1842E0, &qword_1842E8, &qword_1280B0);
    sub_48800(&qword_184300, &qword_184308, &qword_1280C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1842F0);
  }

  return result;
}

unint64_t sub_8C6E4()
{
  result = qword_184318;
  if (!qword_184318)
  {
    sub_47A1C(&qword_184310, &qword_1280C8);
    sub_8C768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184318);
  }

  return result;
}

unint64_t sub_8C768()
{
  result = qword_184320;
  if (!qword_184320)
  {
    sub_47A1C(&qword_184328, &qword_1280D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184320);
  }

  return result;
}

double sub_8C7F0@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = sub_1163E0();
  v14 = 1;
  sub_857E8(v5, v6, v3, v4, v13);
  v17 = *&v13[32];
  v18[0] = *&v13[48];
  *(v18 + 10) = *&v13[58];
  v15 = *v13;
  v16 = *&v13[16];
  v19[2] = *&v13[32];
  v20[0] = *&v13[48];
  *(v20 + 10) = *&v13[58];
  v19[0] = *v13;
  v19[1] = *&v13[16];
  sub_479B4(&v15, &v12, &qword_184350, &qword_1280F0);
  sub_488C8(v19, &qword_184350, &qword_1280F0);
  *&v13[7] = v15;
  *&v13[65] = *(v18 + 10);
  *&v13[55] = v18[0];
  *&v13[39] = v17;
  *&v13[23] = v16;
  v8 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v8;
  *(a1 + 81) = *&v13[64];
  result = *v13;
  v10 = *&v13[16];
  *(a1 + 17) = *v13;
  v11 = v14;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 97) = v13[80];
  *(a1 + 33) = v10;
  return result;
}

uint64_t sub_8C910(uint64_t a1, uint64_t a2, char a3)
{
  sub_488B8(a1, a2, a3 & 1);
}

uint64_t sub_8C94C(uint64_t a1, uint64_t a2, char a3)
{
  sub_48928(a1, a2, a3 & 1);
}

uint64_t sub_8C988(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_8C9D0()
{
  result = qword_184378;
  if (!qword_184378)
  {
    sub_47A1C(&qword_184380, &qword_128108);
    sub_48800(&qword_184388, &qword_184390, &qword_128110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184378);
  }

  return result;
}

uint64_t sub_8CAB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_8CACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_1843B8, &qword_12B290);
    v3 = sub_117870();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_64F08(v5, v6);
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

unint64_t sub_8CBD0()
{
  result = qword_1843C0;
  if (!qword_1843C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1843C0);
  }

  return result;
}

uint64_t sub_8CC48()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_8CC80(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_82918(a1, *(v1 + 32));
}

uint64_t sub_8CCA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for DynamicUsageView();
  v23 = *(*(v3 - 1) + 64);
  v4 = (v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80)));
  v5 = *v4;

  v6 = *(v4 + 1);

  v7 = sub_116DC0();
  (*(*(v1 - 8) + 8))(&v4[*(v7 + 32)], v1);
  v8 = &v4[v3[9]];
  v9 = *v8;

  v10 = *(v8 + 1);

  v11 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  v12 = sub_115A20();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(&v8[v11], 1, v12))
  {
    (*(v13 + 8))(&v8[v11], v12);
  }

  v14 = *&v4[v3[10]];

  v15 = &v4[v3[11]];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  if (!(*(v17 + 48))(v15, 1, AssociatedTypeWitness))
  {
    (*(v17 + 8))(v15, AssociatedTypeWitness);
  }

  sub_117620();
  v18 = *&v15[*(sub_116CF0() + 28)];

  v19 = &v4[v3[12]];
  v20 = *v19;

  v21 = *(v19 + 1);

  return swift_deallocObject();
}

uint64_t sub_8CF34@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for DynamicUsageView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_829B8(v6, v3, v4, a1);
}

uint64_t sub_8D014(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_47A1C(a2, a3);
    a4();
    sub_115A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8D0E4()
{
  result = qword_1843F8;
  if (!qword_1843F8)
  {
    sub_47A1C(&qword_184400, &qword_128188);
    sub_47A1C(&qword_184390, &qword_128110);
    sub_48800(&qword_184388, &qword_184390, &qword_128110);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1843F8);
  }

  return result;
}

uint64_t sub_8D1EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_184400, &qword_128188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8D25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_184400, &qword_128188);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8D2CC(uint64_t a1)
{
  v2 = sub_46F9C(&qword_184400, &qword_128188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8D334@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  sub_4869C();

  result = sub_116900();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_8D3A0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for FullDayUsageView() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80)));
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = sub_116DC0();
  (*(*(v2 - 8) + 8))(&v5[*(v8 + 32)], v2);
  v9 = &v5[v3[11]];
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(sub_46F9C(&qword_184130, &qword_127D48) + 32);
  v13 = sub_115A20();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v9[v12], 1, v13))
  {
    (*(v14 + 8))(&v9[v12], v13);
  }

  return swift_deallocObject();
}

uint64_t sub_8D570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(a3(0, v7, v8) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a4(a1, a2, v10, v7, v8);
}

id sub_8D6FC()
{
  v10 = sub_8D904();
  v9 = sub_8DB20();
  v8 = sub_8DD88();
  v7 = sub_8DF68();
  v6 = sub_8DF68();
  v0 = sub_8DF68();
  v1 = sub_8DF68();
  v2 = sub_8DF68();
  v3 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v3 setUnitsStyle:1];
  [v3 setIncludesApproximationPhrase:0];
  [v3 setIncludesTimeRemainingPhrase:0];
  [v3 setAllowedUnits:96];
  v4 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v4 setUnitsStyle:1];
  [v4 setIncludesApproximationPhrase:0];
  [v4 setIncludesTimeRemainingPhrase:0];
  result = [v4 setAllowedUnits:32];
  qword_191E50 = v10;
  *algn_191E58 = v9;
  qword_191E60 = v8;
  unk_191E68 = v7;
  qword_191E70 = v6;
  unk_191E78 = v0;
  qword_191E80 = v1;
  unk_191E88 = v2;
  qword_191E90 = v3;
  unk_191E98 = v4;
  return result;
}

uint64_t *sub_8D8B4()
{
  if (qword_18CB80 != -1)
  {
    swift_once();
  }

  return &qword_191E50;
}

id sub_8D904()
{
  v0 = sub_1158D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_115820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v6 + 8))(v9, v5);
  [v10 setLocale:isa];

  sub_115870();
  v12 = sub_115860().super.isa;
  (*(v1 + 8))(v4, v0);
  [v10 setCalendar:v12];

  [objc_opt_self() is24HourClock];
  v13 = sub_117170();
  [v10 setDateFormat:v13];

  return v10;
}

id sub_8DB20()
{
  v0 = sub_1158D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_115820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v6 + 8))(v9, v5);
  [v10 setLocale:isa];

  sub_115870();
  v12 = sub_115860().super.isa;
  (*(v1 + 8))(v4, v0);
  [v10 setCalendar:v12];

  v13 = sub_117170();
  [v10 setAMSymbol:v13];

  v14 = sub_117170();
  [v10 setPMSymbol:v14];

  [objc_opt_self() is24HourClock];
  v15 = sub_117170();
  [v10 setDateFormat:v15];

  return v10;
}

id sub_8DD88()
{
  v0 = sub_1158D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_115820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v6 + 8))(v9, v5);
  [v10 setLocale:isa];

  sub_115870();
  v12 = sub_115860().super.isa;
  (*(v1 + 8))(v4, v0);
  [v10 setCalendar:v12];

  [v10 setTimeStyle:1];
  return v10;
}

id sub_8DF68()
{
  v0 = sub_1158D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_115820();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  sub_1157E0();
  isa = sub_1157D0().super.isa;
  (*(v6 + 8))(v9, v5);
  [v10 setLocale:isa];

  sub_115870();
  v12 = sub_115860().super.isa;
  (*(v1 + 8))(v4, v0);
  [v10 setCalendar:v12];

  v13 = sub_117170();
  [v10 setLocalizedDateFormatFromTemplate:v13];

  return v10;
}

__n128 sub_8E16C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_8E188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_8E1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_8E234@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a7;
  v44 = a6;
  v37 = a3;
  v38 = a2;
  v40 = a1;
  v39 = *(a4 - 8);
  v11 = *(v39 + 64);
  v12 = __chkstk_darwin(a1);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v37 - v16;
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v15);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v37 - v24;
  v42 = sub_116480();
  v26 = *(v42 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v42);
  v29 = &v37 - v28;
  if (v40)
  {
    v38(v41);
    v30 = v19[2];
    v30(v25, v23, a5);
    v41 = a8;
    v31 = v19[1];
    v31(v23, a5);
    v30(v23, v25, a5);
    sub_8E5C4(v23, a5);
    v31(v23, a5);
    v31(v25, a5);
    a8 = v41;
  }

  else
  {
    v32 = v39;
    v33 = *(v39 + 16);
    v33(v17, v41, a4);
    v33(v14, v17, a4);
    sub_8E6BC(v14, a5, a4);
    v34 = *(v32 + 8);
    v34(v14, a4);
    v34(v17, a4);
  }

  v45 = v43;
  v46 = v44;
  v35 = v42;
  swift_getWitnessTable();
  (*(v26 + 16))(a8, v29, v35);
  return (*(v26 + 8))(v29, v35);
}

uint64_t sub_8E5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_116460();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_116470();
}

uint64_t sub_8E6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_116460();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_116470();
}

uint64_t sub_8E7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v33 = a4;
  v31 = a3;
  v32 = a2;
  v34 = a9;
  sub_116450();
  v18 = sub_116170();
  v19 = *(v18 - 8);
  v20 = v19[8];
  __chkstk_darwin(v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v30 - v24;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v39 = v31;
  v40 = v33;
  v41 = a1;
  v42 = v32;
  v43 = a10;
  v44 = a11;
  sub_116EB0();
  sub_1169D0();
  WitnessTable = swift_getWitnessTable();
  v45 = a7;
  v46 = WitnessTable;
  swift_getWitnessTable();
  v27 = v19[2];
  v27(v25, v22, v18);
  v28 = v19[1];
  v28(v22, v18);
  v27(v34, v25, v18);
  return (v28)(v25, v18);
}

uint64_t sub_8E9E0@<X0>(uint64_t a1@<X4>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v13(v11, v12);
  v14 = v4[2];
  v14(v10, v8, a1);
  v15 = v4[1];
  v15(v8, a1);
  v14(a2, v10, a1);
  return (v15)(v10, a1);
}

uint64_t sub_8EB2C@<X0>(char *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  return sub_8E9E0(v1[3], a1);
}

uint64_t sub_8EB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v24 = a4;
  sub_47A1C(&qword_183CF0, &qword_1273E0);
  v11 = sub_116170();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  v25 = a1;
  v26 = a2;
  v27 = a5;
  v28 = a6;
  sub_116EB0();
  sub_8EDAC();
  sub_1169D0();
  v19 = sub_48800(&qword_183CE8, &qword_183CF0, &qword_1273E0);
  v29 = a3;
  v30 = v19;
  swift_getWitnessTable();
  v20 = v12[2];
  v20(v18, v16, v11);
  v21 = v12[1];
  v21(v16, v11);
  v20(v24, v18, v11);
  return (v21)(v18, v11);
}

uint64_t sub_8ED68@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 32);
}

unint64_t sub_8EDAC()
{
  result = qword_184440;
  if (!qword_184440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184440);
  }

  return result;
}

__n128 sub_8EE00@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;

  sub_116EB0();
  sub_116190();
  *a3 = sub_8F12C;
  *(a3 + 8) = v10;
  *(a3 + 80) = v16;
  *(a3 + 96) = v17;
  *(a3 + 112) = v18;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  result = v15;
  *(a3 + 48) = v14;
  *(a3 + 64) = v15;
  return result;
}

uint64_t sub_8EEF4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_116090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_116B50();
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  (*(v11 + 32))(v16 + v15, v13, v10);
  v21[3] = v14;
  v21[4] = sub_8F498;
  v21[5] = v16;
  v21[6] = 0;
  v21[7] = 0;

  sub_116080();
  v21[1] = v17;
  v21[2] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;

  sub_46F9C(&qword_184468, &qword_128360);
  type metadata accessor for CGSize(0);
  sub_8F5FC();
  sub_8F680();
  sub_116AE0();
}

uint64_t sub_8F170(int8x16_t *a1)
{
  v3 = a1->i64[0];
  v2 = a1->i64[1];
  sub_116480();
  v5 = vextq_s8(a1[1], a1[1], 8uLL);
  return swift_getWitnessTable();
}

uint64_t sub_8F1D0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_116450();
  sub_116170();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_8F264(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_47A1C(&qword_183CF0, &qword_1273E0);
  sub_116170();
  sub_48800(&qword_183CE8, &qword_183CF0, &qword_1273E0);
  return swift_getWitnessTable();
}

unint64_t sub_8F314()
{
  result = qword_184448;
  if (!qword_184448)
  {
    sub_47A1C(&qword_184450, &qword_128350);
    sub_48800(&qword_184458, &qword_184460, &qword_128358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184448);
  }

  return result;
}

uint64_t sub_8F3CC()
{
  v1 = sub_116090();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_8F498()
{
  v1 = *(sub_116090() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);

  sub_116080();
  sub_46F9C(&qword_184480, &qword_128368);
  sub_116D70();
}

uint64_t sub_8F55C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_8F59C(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v4 = *a2;
  sub_46F9C(&qword_184480, &qword_128368);
  return sub_116D70();
}

unint64_t sub_8F5FC()
{
  result = qword_184470;
  if (!qword_184470)
  {
    sub_47A1C(&qword_184468, &qword_128360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184470);
  }

  return result;
}

unint64_t sub_8F680()
{
  result = qword_184478;
  if (!qword_184478)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184478);
  }

  return result;
}

uint64_t sub_8F6DC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  sub_115930();
  *(v5 + 16) = a1;
  return v5;
}

uint64_t sub_8F72C(void *a1)
{
  v3 = *(v1 + 16);
  if (!v3 || (v4 = a1[3], v5 = a1[4], sub_66DE0(a1, v4), result = (*(v5 + 24))(v4, v5), v45 = result, (v46 = v7) == 0))
  {
    type metadata accessor for AppDetailViewModel();
    sub_719FC(a1, v65);
    v42 = &_swiftEmptyArrayStorage;
    v43 = v65;
    return sub_F77AC(v42, 0, 1, v43);
  }

  v44 = a1;
  v48 = *(v3 + 16);
  if (!v48)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_20:

    type metadata accessor for AppDetailViewModel();
    sub_719FC(v44, &v55);
    v43 = &v55;
    v42 = v10;
    return sub_F77AC(v42, 0, 1, v43);
  }

  v8 = 0;
  v9 = v3 + 64;
  v10 = &_swiftEmptyArrayStorage;
  v47 = v3;
  while (v8 < *(v3 + 16))
  {
    v50 = *(v9 - 16);
    v49 = *(v9 - 8);
    v11 = *v9;
    v12 = *(v9 + 8);
    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    v15 = *(v9 + 48);
    v16 = *(v9 + 64);
    if (*(v13 + 16))
    {
      v17 = *(v9 + 64);

      v18 = v15;
      v19 = sub_64F08(v45, v46);
      if (v20)
      {
        v21 = (*(v13 + 56) + 152 * v19);
        v22 = v21[1];
        v51[0] = *v21;
        v51[1] = v22;
        v23 = v21[5];
        v25 = v21[2];
        v24 = v21[3];
        v51[4] = v21[4];
        v51[5] = v23;
        v51[2] = v25;
        v51[3] = v24;
        v26 = v21[6];
        v27 = v21[7];
        v28 = v21[8];
        v52 = *(v21 + 72);
        v51[7] = v27;
        v51[8] = v28;
        v51[6] = v26;
        memmove(__dst, v21, 0x92uLL);
        nullsub_4(__dst);
        sub_6B280(v51, &v55);
      }

      else
      {
        sub_68BEC(__dst);
      }

      v61 = __dst[6];
      v62 = __dst[7];
      v63 = __dst[8];
      v64 = v54;
      v57 = __dst[2];
      v58 = __dst[3];
      v59 = __dst[4];
      v60 = __dst[5];
      v55 = __dst[0];
      v56 = __dst[1];
    }

    else
    {
      sub_68BEC(&v55);

      v18 = v15;
    }

    v67[6] = v61;
    v67[7] = v62;
    v67[8] = v63;
    v68 = v64;
    v67[2] = v57;
    v67[3] = v58;
    v67[4] = v59;
    v67[5] = v60;
    v67[0] = v55;
    v67[1] = v56;
    sub_63060(v50, v49, v11, v12, v67, v65);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_71108(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v3 = v47;
    v30 = v10[2];
    v29 = v10[3];
    if (v30 >= v29 >> 1)
    {
      result = sub_71108((v29 > 1), v30 + 1, 1, v10);
      v10 = result;
    }

    ++v8;
    v10[2] = v30 + 1;
    v31 = &v10[27 * v30];
    v32 = v65[1];
    *(v31 + 2) = v65[0];
    *(v31 + 3) = v32;
    v33 = v65[2];
    v34 = v65[3];
    v35 = v65[5];
    *(v31 + 6) = v65[4];
    *(v31 + 7) = v35;
    *(v31 + 4) = v33;
    *(v31 + 5) = v34;
    v36 = v65[6];
    v37 = v65[7];
    v38 = v65[9];
    *(v31 + 10) = v65[8];
    *(v31 + 11) = v38;
    *(v31 + 8) = v36;
    *(v31 + 9) = v37;
    v39 = v65[10];
    v40 = v65[11];
    v41 = v65[12];
    *(v31 + 120) = v66;
    *(v31 + 13) = v40;
    *(v31 + 14) = v41;
    *(v31 + 12) = v39;
    v9 += 120;
    if (v48 == v8)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_8FB78()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC14BatteryUsageUI26OverviewBreakdownViewModel___observationRegistrar;
  v3 = sub_115940();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_8FC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_184580, &unk_129100);
    v3 = sub_117870();
    v4 = a1 + 32;

    while (1)
    {
      sub_8FF18(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_64F08(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_543D8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_8FD70()
{
  result = qword_184488;
  if (!qword_184488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184488);
  }

  return result;
}

unint64_t sub_8FDC4()
{
  result = qword_184490;
  if (!qword_184490)
  {
    type metadata accessor for OverviewBreakdownViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_184490);
  }

  return result;
}

uint64_t type metadata accessor for OverviewBreakdownViewModel()
{
  result = qword_18CCA0;
  if (!qword_18CCA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8FE70()
{
  result = sub_115940();
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

uint64_t sub_8FF18(uint64_t a1, uint64_t a2)
{
  v4 = sub_46F9C(&qword_184588, &unk_1283F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8FFA8(void *a1)
{
  v2 = type metadata accessor for UsageSummaryViewModel(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = a1;
  sub_94D40(v5);

  sub_116CB0();

  return v7;
}

uint64_t sub_9002C(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_94D40(a1);
  return v5;
}

uint64_t sub_9006C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v24 = a3;
  v23 = sub_46F9C(&qword_184590, &qword_128448);
  v5 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v7 = &v23 - v6;
  *v7 = sub_1163F0();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = &v7[*(sub_46F9C(&qword_184598, &qword_128450) + 44)];
  v25 = a1;
  sub_90348(a1, a2, v8);
  v30 = a1;
  v31 = a2;
  sub_46F9C(&qword_1845A0, &qword_128458);
  sub_116CE0();
  v9 = v26;
  v10 = v27;
  v11 = v28;
  swift_getKeyPath();
  v30 = v9;
  v31 = v10;
  v32 = v11;
  sub_46F9C(&qword_1845A8, &qword_128488);
  sub_116D80();

  v12 = v26;
  v13 = v27;
  v14 = v28;
  v15 = v29;

  v16 = sub_46F9C(&qword_1845B0, &qword_128490);
  v17 = sub_48800(&qword_1845B8, &qword_184590, &qword_128448);
  v18 = sub_A70D0(&qword_1845C0, &qword_1845B0, &qword_128490, sub_8EDAC);
  v19 = v24;
  sub_8E7B4(v12, v13, sub_92DA0, 0, v23, v16, v17, v18, v24, v14, v15);

  sub_488C8(v7, &qword_184590, &qword_128448);
  *&v19[*(sub_46F9C(&qword_1845C8, &qword_128498) + 36)] = 256;
  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  *(v20 + 24) = a2;
  v21 = &v19[*(sub_46F9C(&qword_1845D0, &qword_1284A0) + 36)];
  *v21 = sub_957EC;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
}

void sub_90348(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v182 = a3;
  v5 = sub_46F9C(&qword_184E80, &qword_129160);
  v179 = *(v5 - 8);
  v6 = *(v179 + 64);
  __chkstk_darwin(v5);
  v171 = &v144 - v7;
  v8 = sub_46F9C(&qword_184E88, &qword_129168);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v181 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v180 = &v144 - v12;
  v178 = sub_46F9C(&qword_184E90, &qword_129170);
  v13 = *(v178 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v178);
  v170 = &v144 - v15;
  v16 = sub_46F9C(&qword_184E98, &qword_129178);
  v168 = *(v16 - 8);
  v169 = v16;
  v17 = *(v168 + 64);
  __chkstk_darwin(v16);
  v162 = &v144 - v18;
  v172 = sub_46F9C(&qword_184EA0, &qword_129180);
  v19 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v172);
  v174 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v173 = &v144 - v22;
  v23 = sub_1163D0();
  v160 = *(v23 - 8);
  v161 = v23;
  v24 = *(v160 + 64);
  __chkstk_darwin(v23);
  v159 = &v144 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_46F9C(&qword_184EA8, &qword_129188);
  v152 = *(v26 - 8);
  v153 = v26;
  v27 = *(v152 + 64);
  __chkstk_darwin(v26);
  v151 = &v144 - v28;
  v150 = sub_46F9C(&qword_184EB0, &qword_129190);
  v29 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v155 = &v144 - v30;
  v154 = sub_46F9C(&qword_184EB8, &qword_129198);
  v31 = *(*(v154 - 8) + 64);
  __chkstk_darwin(v154);
  v156 = &v144 - v32;
  v157 = sub_46F9C(&qword_184EC0, &qword_1291A0);
  v33 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v158 = &v144 - v34;
  v35 = sub_46F9C(&qword_184EC8, &qword_1291A8);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v164 = &v144 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v163 = &v144 - v39;
  v40 = sub_46F9C(&qword_184ED0, &qword_1291B0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v167 = &v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v166 = &v144 - v44;
  v45 = sub_46F9C(&qword_184ED8, &qword_1291B8);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v165 = &v144 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v50 = &v144 - v49;
  v51 = sub_46F9C(&qword_184EE0, &qword_1291C0);
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51 - 8);
  v177 = &v144 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = &v144 - v55;
  v197 = a1;
  v198 = a2;
  v57 = sub_46F9C(&qword_1845A0, &qword_128458);
  v58 = sub_116CC0();
  (*(*v192 + 216))(&v192, v58);

  v59 = v193;
  v60 = 1;
  v175 = v56;
  v176 = v5;
  if (v193 != 1)
  {
    v146 = v13;
    v197 = v192;
    v198 = v193;
    v199 = v194;
    v200 = v195;
    v201 = v196;
    *v50 = sub_1163F0();
    *(v50 + 1) = 0;
    v50[16] = 1;
    v61 = *(sub_46F9C(&qword_184EF8, &qword_1291D8) + 44);
    v145 = v50;
    sub_91634(&v197, a1, a2, &v50[v61]);
    v148 = a1;
    v185 = a1;
    *&v186 = a2;
    v62 = sub_116CC0();
    v63 = (*(*v191[0] + 192))(v62);

    v149 = a2;
    v147 = v57;
    if (v63)
    {
      v64 = *(v63 + 16);
      if (v64)
      {
        if (v64 >= 3)
        {
          v65 = 3;
        }

        else
        {
          v65 = *(v63 + 16);
        }

        sub_1179F0();
        swift_unknownObjectRetain_n();

        v66 = swift_dynamicCastClass();
        if (!v66)
        {
          swift_unknownObjectRelease();
          v66 = _swiftEmptyArrayStorage;
        }

        v67 = v66[2];

        if (v67 == v65)
        {
          v68 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v68)
          {
LABEL_13:
            v69 = sub_5A754();
            swift_beginAccess();
            v70 = *v69;

            v71 = sub_117170();
            v72 = BatteryUILocalization(v71);

            if (!v72)
            {
              __break(1u);
              return;
            }

            v144 = v68;
            v202 = v59;
            sub_488C8(&v202, &qword_1845D8, &qword_1284A8);
            v203 = v201;
            sub_488C8(&v203, &qword_1845E0, &qword_1284B0);
            v204[0] = *(&v201 + 1);
            sub_488C8(v204, &qword_1845E8, &qword_1284B8);

            v73 = sub_1171B0();
            v75 = v74;

            v76 = v151;
            (*(*v70 + 528))(v73, v75);

            v77 = sub_116BC0();
            KeyPath = swift_getKeyPath();
            v79 = v155;
            (*(v152 + 32))(v155, v76, v153);
            v80 = (v79 + *(v150 + 36));
            *v80 = KeyPath;
            v80[1] = v77;
            sub_46F9C(&qword_182E10, &qword_1247F0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1248A0;
            LOBYTE(v76) = sub_116620();
            *(inited + 32) = v76;
            v82 = sub_116610();
            *(inited + 33) = v82;
            v83 = sub_116640();
            sub_116640();
            if (sub_116640() != v76)
            {
              v83 = sub_116640();
            }

            sub_116640();
            v84 = sub_116640();
            v85 = v148;
            if (v84 != v82)
            {
              v83 = sub_116640();
            }

            sub_115FD0();
            v87 = v86;
            v89 = v88;
            v91 = v90;
            v93 = v92;
            v94 = v156;
            sub_548D0(v79, v156, &qword_184EB0, &qword_129190);
            v95 = v94 + *(v154 + 36);
            *v95 = v83;
            *(v95 + 8) = v87;
            *(v95 + 16) = v89;
            *(v95 + 24) = v91;
            *(v95 + 32) = v93;
            *(v95 + 40) = 0;
            v96 = sub_116600();
            v97 = v158;
            sub_548D0(v94, v158, &qword_184EB8, &qword_129198);
            v98 = v97 + *(v157 + 36);
            *v98 = v96;
            *(v98 + 8) = 0u;
            *(v98 + 24) = 0u;
            *(v98 + 40) = 1;
            v99 = v159;
            sub_1163C0();
            sub_A70D0(&qword_184F08, &qword_184EC0, &qword_1291A0, sub_A7154);
            v100 = v163;
            sub_116A90();
            (*(v160 + 8))(v99, v161);
            sub_488C8(v97, &qword_184EC0, &qword_1291A0);
            v101 = v173;
            sub_116DD0();
            v102 = sub_116600();
            v103 = v101 + *(v172 + 36);
            *v103 = v102;
            *(v103 + 8) = 0u;
            *(v103 + 24) = 0u;
            *(v103 + 40) = 1;
            v183 = v85;
            *&v184 = v149;
            sub_116CE0();
            v183 = v185;
            v184 = v186;
            type metadata accessor for UsageSummaryViewModel(0);
            sub_6A95C();
            sub_EE22C(v144, &v183, &v185);
            LODWORD(v161) = v185;
            v159 = *(&v186 + 1);
            v160 = v186;
            v105 = v187;
            v104 = v188;
            v106 = v189;
            v107 = v190;
            v108 = v164;
            sub_479B4(v100, v164, &qword_184EC8, &qword_1291A8);
            v109 = v174;
            sub_479B4(v101, v174, &qword_184EA0, &qword_129180);
            v110 = v108;
            v111 = v162;
            sub_479B4(v110, v162, &qword_184EC8, &qword_1291A8);
            v112 = sub_46F9C(&qword_184F20, &qword_129218);
            sub_479B4(v109, v111 + *(v112 + 48), &qword_184EA0, &qword_129180);
            v113 = v111 + *(v112 + 64);
            *v113 = v161;
            v114 = v159;
            *(v113 + 8) = v160;
            *(v113 + 16) = v114;
            *(v113 + 24) = v105;
            *(v113 + 32) = v104;
            *(v113 + 40) = v106;
            *(v113 + 48) = v107;

            sub_488C8(v101, &qword_184EA0, &qword_129180);
            sub_488C8(v163, &qword_184EC8, &qword_1291A8);

            sub_488C8(v109, &qword_184EA0, &qword_129180);
            sub_488C8(v164, &qword_184EC8, &qword_1291A8);
            v115 = v166;
            sub_548D0(v111, v166, &qword_184E98, &qword_129178);
            v116 = 0;
            goto LABEL_22;
          }

          v68 = _swiftEmptyArrayStorage;
        }

        else
        {
          swift_unknownObjectRelease();
          sub_A1830(v63, v63 + 32, 0, (2 * v65) | 1);
          v68 = v143;
        }

        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      v204[0] = v59;
      sub_488C8(v204, &qword_1845D8, &qword_1284A8);
      v183 = v201;
      sub_488C8(&v183, &qword_1845E0, &qword_1284B0);
      v191[0] = *(&v201 + 1);
      sub_488C8(v191, &qword_1845E8, &qword_1284B8);
    }

    else
    {
      v204[0] = v59;
      sub_488C8(v204, &qword_1845D8, &qword_1284A8);
      v183 = v201;
      sub_488C8(&v183, &qword_1845E0, &qword_1284B0);
      v191[0] = *(&v201 + 1);
      sub_488C8(v191, &qword_1845E8, &qword_1284B8);
    }

    v116 = 1;
    v115 = v166;
LABEL_22:
    v117 = v145;
    (*(v168 + 56))(v115, v116, 1, v169);
    v118 = v165;
    sub_479B4(v117, v165, &qword_184ED8, &qword_1291B8);
    v119 = v167;
    sub_479B4(v115, v167, &qword_184ED0, &qword_1291B0);
    v120 = v170;
    sub_479B4(v118, v170, &qword_184ED8, &qword_1291B8);
    v121 = sub_46F9C(&qword_184F00, &qword_1291E0);
    sub_479B4(v119, v120 + *(v121 + 48), &qword_184ED0, &qword_1291B0);
    sub_488C8(v115, &qword_184ED0, &qword_1291B0);
    sub_488C8(v117, &qword_184ED8, &qword_1291B8);
    sub_488C8(v119, &qword_184ED0, &qword_1291B0);
    sub_488C8(v118, &qword_184ED8, &qword_1291B8);
    v56 = v175;
    sub_548D0(v120, v175, &qword_184E90, &qword_129170);
    v60 = 0;
    v5 = v176;
    a1 = v148;
    a2 = v149;
    v13 = v146;
  }

  v122 = *(v13 + 56);
  v123 = 1;
  v122(v56, v60, 1, v178);
  v185 = a1;
  *&v186 = a2;
  v124 = sub_116CC0();
  v125 = (*(*v191[3] + 144))(v124);

  v126 = v180;
  if (v125 != 1)
  {
    v127 = v173;
    sub_116DD0();
    v128 = sub_116600();
    v129 = v127 + *(v172 + 36);
    *v129 = v128;
    *(v129 + 8) = 0u;
    *(v129 + 24) = 0u;
    *(v129 + 40) = 1;
    sub_46FE4(v125, 0, &v185);
    v130 = v174;
    sub_479B4(v127, v174, &qword_184EA0, &qword_129180);
    v131 = v185;
    v132 = v186;
    v133 = BYTE8(v186);
    v134 = v187;
    v135 = v188;
    v136 = v171;
    sub_479B4(v130, v171, &qword_184EA0, &qword_129180);
    v137 = v136 + *(sub_46F9C(&qword_184EF0, &qword_1291D0) + 48);
    *v137 = v131;
    *(v137 + 8) = v132;
    *(v137 + 16) = v133 & 1;
    *(v137 + 24) = v134 & 1;
    *(v137 + 32) = v135;

    sub_488C8(v127, &qword_184EA0, &qword_129180);

    v5 = v176;

    v138 = v130;
    v56 = v175;
    sub_488C8(v138, &qword_184EA0, &qword_129180);
    sub_548D0(v136, v126, &qword_184E80, &qword_129160);
    v123 = 0;
  }

  (*(v179 + 56))(v126, v123, 1, v5);
  v139 = v177;
  sub_479B4(v56, v177, &qword_184EE0, &qword_1291C0);
  v140 = v181;
  sub_479B4(v126, v181, &qword_184E88, &qword_129168);
  v141 = v182;
  sub_479B4(v139, v182, &qword_184EE0, &qword_1291C0);
  v142 = sub_46F9C(&qword_184EE8, &qword_1291C8);
  sub_479B4(v140, v141 + *(v142 + 48), &qword_184E88, &qword_129168);
  sub_488C8(v126, &qword_184E88, &qword_129168);
  sub_488C8(v56, &qword_184EE0, &qword_1291C0);
  sub_488C8(v140, &qword_184E88, &qword_129168);
  sub_488C8(v139, &qword_184EE0, &qword_1291C0);
}

void sub_91634(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v89 = a2;
  v90 = a3;
  v88 = a4;
  v91 = sub_46F9C(&qword_184F28, &qword_129220);
  v87 = *(v91 - 8);
  v5 = *(v87 + 64);
  __chkstk_darwin(v91);
  v82 = &v81 - v6;
  v7 = sub_46F9C(&qword_184F30, &qword_129228);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v85 = &v81 - v9;
  v10 = type metadata accessor for SummaryChartViewModel(0);
  v83 = *(v10 - 8);
  v84 = v10;
  v11 = *(v83 + 64);
  __chkstk_darwin(v10);
  v81 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_46F9C(&qword_184F38, &unk_129230);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  v20 = sub_46F9C(&qword_184F40, &unk_12C690);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v86 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v81 - v24;
  v26 = *a1;
  if (v26 == 1)
  {
    v27 = v19;
    v28 = objc_opt_self();
    v29 = sub_117170();
    v30 = [v28 modelSpecificLocalizedStringKeyForKey:v29];

    v31 = BatteryUILocalization(v30);
    if (!v31)
    {
      __break(1u);
      return;
    }

    v32 = sub_1171B0();
    v94 = v33;
    v95 = v32;

    v19 = v27;
  }

  else
  {
    sub_A2458(*a1);
    v94 = v35;
    v95 = v34;
  }

  v93 = sub_116610();
  sub_115FD0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  LOBYTE(v101) = 0;
  v92 = sub_116600();
  sub_116DD0();
  v44 = sub_116620();
  sub_115FD0();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = &v25[*(sub_46F9C(&qword_184EA0, &qword_129180) + 36)];
  *v53 = v44;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  v54 = sub_116600();
  v55 = &v25[*(v20 + 36)];
  *v55 = v54;
  *(v55 + 8) = 0u;
  *(v55 + 24) = 0u;
  v55[40] = 1;
  v101 = v89;
  v102 = v90;
  sub_46F9C(&qword_1845A0, &qword_128458);
  v56 = sub_116CC0();
  v57 = (*(*v96 + 144))(v56);

  v58 = 1;
  if (v57 != 1)
  {
    v59 = *(a1 + 1);
    v60 = *(a1 + 7);
    v120 = *(a1 + 6);
    v121 = v59;
    v119 = v60;
    sub_479B4(&v121, &v101, &qword_1845D8, &qword_1284A8);
    sub_479B4(&v120, &v101, &qword_1845E0, &qword_1284B0);
    sub_479B4(&v119, &v101, &qword_1845E8, &qword_1284B8);
    v61 = v85;
    sub_91F08(a1, v57, v26, v85);
    if ((*(v83 + 48))(v61, 1, v84) == 1)
    {
      sub_488C8(v61, &qword_184F30, &qword_129228);
      v58 = 1;
    }

    else
    {
      v62 = v61;
      v63 = v81;
      sub_A2BF0(v62, v81, type metadata accessor for SummaryChartViewModel);
      v64 = v82;
      sub_A3714(v63, v82, type metadata accessor for SummaryChartViewModel);
      v101 = v89;
      v102 = v90;
      v65 = sub_116CC0();
      v66 = (*(*v96 + 248))(v65);

      v67 = type metadata accessor for SummaryChart(0);
      *(v64 + *(v67 + 20)) = v66;
      v68 = *(v67 + 24);
      v69 = sub_5A754();
      swift_beginAccess();
      *(v64 + v68) = *v69;

      LOBYTE(v69) = sub_116620();
      v70 = v64 + *(sub_46F9C(&qword_184F58, &qword_129250) + 36);
      *v70 = v69;
      *(v70 + 8) = 0u;
      *(v70 + 24) = 0u;
      *(v70 + 40) = 1;
      LOBYTE(v69) = sub_116600();
      sub_A68C8(v63, type metadata accessor for SummaryChartViewModel);
      v71 = v64 + *(v91 + 36);
      *v71 = v69;
      *(v71 + 8) = 0u;
      *(v71 + 24) = 0u;
      *(v71 + 40) = 1;
      sub_548D0(v64, v19, &qword_184F28, &qword_129220);
      v58 = 0;
    }
  }

  (*(v87 + 56))(v19, v58, 1, v91);
  v72 = v25;
  v73 = v25;
  v74 = v86;
  sub_479B4(v73, v86, &qword_184F40, &unk_12C690);
  sub_479B4(v19, v16, &qword_184F38, &unk_129230);
  *&v96 = v95;
  *(&v96 + 1) = v94;
  LOBYTE(v97) = v93;
  *(&v97 + 1) = *v118;
  DWORD1(v97) = *&v118[3];
  *(&v97 + 1) = v37;
  *&v98 = v39;
  *(&v98 + 1) = v41;
  *&v99 = v43;
  BYTE8(v99) = 0;
  *(&v99 + 9) = *v117;
  HIDWORD(v99) = *&v117[3];
  LOBYTE(v100[0]) = v92;
  DWORD1(v100[0]) = *&v116[3];
  *(v100 + 1) = *v116;
  *(v100 + 8) = 0u;
  *(&v100[1] + 8) = 0u;
  BYTE8(v100[2]) = 1;
  v75 = v97;
  v76 = v88;
  *v88 = v96;
  v76[1] = v75;
  v77 = v98;
  v78 = v99;
  *(v76 + 89) = *(&v100[1] + 9);
  v79 = v100[1];
  v76[4] = v100[0];
  v76[5] = v79;
  v76[2] = v77;
  v76[3] = v78;
  v80 = sub_46F9C(&qword_184F48, &qword_129240);
  sub_479B4(v74, v76 + *(v80 + 48), &qword_184F40, &unk_12C690);
  sub_479B4(v16, v76 + *(v80 + 64), &qword_184F38, &unk_129230);
  sub_479B4(&v96, &v101, &qword_184F50, &qword_129248);
  sub_488C8(v19, &qword_184F38, &unk_129230);
  sub_488C8(v72, &qword_184F40, &unk_12C690);
  sub_488C8(v16, &qword_184F38, &unk_129230);
  sub_488C8(v74, &qword_184F40, &unk_12C690);
  v101 = v95;
  v102 = v94;
  v103 = v93;
  *v104 = *v118;
  *&v104[3] = *&v118[3];
  v105 = v37;
  v106 = v39;
  v107 = v41;
  v108 = v43;
  v109 = 0;
  *v110 = *v117;
  *&v110[3] = *&v117[3];
  v111 = v92;
  *&v112[3] = *&v116[3];
  *v112 = *v116;
  v113 = 0u;
  v114 = 0u;
  v115 = 1;
  sub_488C8(&v101, &qword_184F50, &qword_129248);
}

uint64_t sub_91F08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v117 = type metadata accessor for SummaryChartBucket(0);
  v9 = *(v117 - 8);
  v10 = v9[8];
  __chkstk_darwin(v117);
  v114 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v118 = &v97 - v13;
  v14 = sub_115760();
  v119 = *(v14 - 8);
  v120 = v14;
  v15 = *(v119 + 64);
  __chkstk_darwin(v14);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v21 = &v97 - v20;
  if (!a2)
  {
    v123[0] = a1[1];
    sub_488C8(v123, &qword_1845D8, &qword_1284A8);
    v122 = a1[6];
    sub_488C8(&v122, &qword_1845E0, &qword_1284B0);
    v121 = a1[7];
    sub_488C8(&v121, &qword_1845E8, &qword_1284B8);
LABEL_62:
    v56 = type metadata accessor for SummaryChartViewModel(0);
    return (*(*(v56 - 8) + 56))(a4, 1, 1, v56);
  }

  v104 = v19;
  v105 = v18;
  v106 = a3;
  v22 = *(a2 + 16);
  v116 = a1;
  if (v22)
  {
    v23 = 0;
    v24 = (a2 + 88);
    v25 = _swiftEmptyArrayStorage;
    while (v23 < *(a2 + 16))
    {
      v26 = *v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_A0060(0, *(v25 + 2) + 1, 1, v25);
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v4 = (v28 + 1);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_A0060((v27 > 1), v28 + 1, 1, v25);
      }

      v23 = (v23 + 1);
      *(v25 + 2) = v4;
      *&v25[8 * v28 + 32] = v26;
      v24 += 15;
      if (v22 == v23)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_107;
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_13:
  v112 = v9;

  v29 = *(v25 + 2);
  v30 = v116;
  if (v29)
  {
    v31 = (v25 + 32);
    v32 = _swiftEmptyArrayStorage;
    do
    {
      v33 = *v31;
      v34 = trunc(*v31);
      if (*v31 > -9.22337204e18 && v33 < 9.22337204e18 && v33 == v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_A0164(0, *(v32 + 16) + 1, 1, v32);
        }

        v38 = *(v32 + 16);
        v37 = *(v32 + 24);
        if (v38 >= v37 >> 1)
        {
          v32 = sub_A0164((v37 > 1), v38 + 1, 1, v32);
        }

        *(v32 + 16) = v38 + 1;
        *(v32 + 8 * v38 + 32) = v33;
      }

      ++v31;
      --v29;
    }

    while (v29);
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  v39 = v30[6];
  if (!v39)
  {
    v123[0] = v30[1];
    sub_488C8(v123, &qword_1845D8, &qword_1284A8);
    v122 = v30[7];
    sub_488C8(&v122, &qword_1845E8, &qword_1284B8);
LABEL_61:

    goto LABEL_62;
  }

  v40 = *(v39 + 16);
  v115 = v32;
  if (!v40)
  {
    v43 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage[2];
    if (!v40)
    {
      goto LABEL_58;
    }

LABEL_50:
    v113 = a4;
    v41 = _swiftEmptyArrayStorage;
    goto LABEL_51;
  }

  v41 = 0;
  v42 = (v39 + 32);
  v43 = _swiftEmptyArrayStorage;
  do
  {
    if (v41 >= *(v39 + 16))
    {
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v44 = *v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_A0164(0, *(v43 + 2) + 1, 1, v43);
    }

    v32 = *(v43 + 2);
    v45 = *(v43 + 3);
    v25 = (v32 + 1);
    if (v32 >= v45 >> 1)
    {
      v43 = sub_A0164((v45 > 1), v32 + 1, 1, v43);
    }

    ++v41;
    *(v43 + 2) = v25;
    *&v43[8 * v32 + 32] = v44;
    v42 += 2;
  }

  while (v40 != v41);
  v25 = *(v39 + 16);
  if (v25)
  {
    v46 = 0;
    v32 = v39 + 40;
    v41 = _swiftEmptyArrayStorage;
    do
    {
      if (v46 >= *(v39 + 16))
      {
        goto LABEL_112;
      }

      v47 = *v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_A0060(0, *(v41 + 16) + 1, 1, v41);
      }

      v49 = *(v41 + 16);
      v48 = *(v41 + 24);
      v40 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        v41 = sub_A0060((v48 > 1), v49 + 1, 1, v41);
      }

      ++v46;
      *(v41 + 16) = v40;
      *(v41 + 8 * v49 + 32) = v47;
      v32 += 16;
    }

    while (v25 != v46);
    v113 = a4;
LABEL_51:
    v123[0] = _swiftEmptyArrayStorage;
    sub_A0984(0, v40, 0);
    v25 = v123[0];
    v50 = 32;
    do
    {
      v51 = *(v41 + v50);
      sub_115700();
      v123[0] = v25;
      v53 = *(v25 + 2);
      v52 = *(v25 + 3);
      if (v53 >= v52 >> 1)
      {
        sub_A0984(v52 > 1, v53 + 1, 1);
        v25 = v123[0];
      }

      *(v25 + 2) = v53 + 1;
      (*(v119 + 32))(&v25[((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v53], v21, v120);
      v50 += 8;
      --v40;
    }

    while (v40);

    a4 = v113;
    v32 = v115;
    v30 = v116;
    if (v116[3])
    {
      goto LABEL_56;
    }

    goto LABEL_59;
  }

  v32 = v115;
  v30 = v116;
  v40 = _swiftEmptyArrayStorage[2];
  if (v40)
  {
    goto LABEL_50;
  }

LABEL_58:
  v25 = _swiftEmptyArrayStorage;

  if (v30[3])
  {
LABEL_56:
    v123[0] = v30[1];
    sub_488C8(v123, &qword_1845D8, &qword_1284A8);

    v122 = v30[7];
    sub_488C8(&v122, &qword_1845E8, &qword_1284B8);
LABEL_60:

    goto LABEL_61;
  }

LABEL_59:
  v40 = v30[4];
  v54 = *(v30 + 40);
  v55 = v30[2];
  v123[0] = v30[1];
  sub_488C8(v123, &qword_1845D8, &qword_1284A8);

  v122 = v30[7];
  sub_488C8(&v122, &qword_1845E8, &qword_1284B8);
  if (v54)
  {
    goto LABEL_60;
  }

  v58 = *(v32 + 16);
  if (!v58)
  {
    goto LABEL_60;
  }

  v59 = *(v43 + 2);
  if (!v59)
  {
    goto LABEL_60;
  }

  v101 = v55;
  v100 = v40;
  if (v59 >= v58)
  {
    v21 = v58;
  }

  else
  {
    v21 = v59;
  }

  if (v21 >= 8)
  {
    v41 = 8;
  }

  else
  {
    v41 = v21;
  }

  if (v41 > *(v25 + 2))
  {
    goto LABEL_117;
  }

  v60 = v118;
  v61 = *(v119 + 16);
  v39 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v62 = v117;
  v63 = *(v117 + 24);
  v111 = *(v119 + 72);
  v99 = &v25[v39];
  v109 = v61;
  v110 = v119 + 16;
  (v61)(v118 + v63);
  *v60 = v101;
  *(v60 + 8) = 0;
  *(v60 + 16) = 1;
  *(v60 + *(v62 + 28)) = 0;
  v40 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_118;
  }

  while (1)
  {
    v65 = *(v40 + 2);
    v64 = *(v40 + 3);
    v116 = v40;
    v40 = (v65 + 1);
    if (v65 >= v64 >> 1)
    {
      v116 = sub_9FE84(v64 > 1, v65 + 1, 1, v116, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
    }

    v66 = v116;
    v116[2] = v40;
    v108 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v107 = v112[9];
    sub_A2BF0(v118, v66 + v108 + v107 * v65, type metadata accessor for SummaryChartBucket);
    v98 = v39;
    if (v21 == &dword_0 + 1)
    {
      break;
    }

    v103 = v32 + 32;
    v102 = -v41;
    v80 = v43 + 40;
    v41 = &v25[v111 + v39];
    v39 = -1;
    v81 = 1;
    v67 = v101;
    v32 = v116;
    v113 = a4;
    while (1)
    {
      v82 = *(v115 + 16);
      v83 = v82 + v39;
      if (__OFADD__(v82, v39))
      {
        break;
      }

      v84 = __OFSUB__(v83, 1);
      v85 = v83 - 1;
      if (v84)
      {
        goto LABEL_114;
      }

      if (v85 >= v82)
      {
        goto LABEL_115;
      }

      if (v81 >= *(v43 + 2))
      {
        goto LABEL_116;
      }

      v86 = *(v103 + 8 * v85);
      v112 = v80;
      v87 = *v80;
      if (*v80 <= v67)
      {
        v88 = v67;
      }

      else
      {
        v88 = *v80;
      }

      if (v88 <= v86)
      {
        v88 = v86;
      }

      v116 = v88;
      v21 = v32;
      v89 = v117;
      v90 = v118;
      v109(v118 + *(v117 + 24), v41, v120);
      *v90 = v87;
      *(v90 + 8) = v86;
      *(v90 + 16) = 0;
      v91 = *(v89 + 28);
      v32 = v21;
      *(v90 + v91) = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_9FE84(0, *(v21 + 2) + 1, 1, v21, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
      }

      a4 = v113;
      v93 = *(v32 + 16);
      v92 = *(v32 + 24);
      v40 = (v93 + 1);
      if (v93 >= v92 >> 1)
      {
        v32 = sub_9FE84(v92 > 1, v93 + 1, 1, v32, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
      }

      *(v32 + 16) = v40;
      sub_A2BF0(v118, v32 + v108 + v107 * v93, type metadata accessor for SummaryChartBucket);
      --v39;
      v80 = v112 + 1;
      v41 += v111;
      ++v81;
      v67 = v116;
      if (v102 == v39)
      {
        goto LABEL_77;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    v40 = sub_9FE84(0, *(v40 + 2) + 1, 1, v40, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
  }

  v67 = v101;
  v32 = v116;
LABEL_77:
  v22 = v67;

  v21 = v32;
  if (*(v32 + 16) <= 7uLL)
  {
    v68 = *(v25 + 2);
    v4 = v100;
    v9 = v101;
    if (!v68)
    {

LABEL_109:
      v94 = v106;
      goto LABEL_110;
    }

    v69 = v104;
    v70 = v120;
    v109(v104, &v99[(v68 - 1) * v111], v120);

    v25 = v105;
    (*(v119 + 32))(v105, v69, v70);
    v71 = sub_A2718(v25, 8 - *(v21 + 2), 1);
    v72 = v71[2];
    if (v72)
    {
      v73 = v71 + v98;
      v74 = v114;
      do
      {
        v75 = v117;
        v109(v74 + *(v117 + 24), v73, v120);
        *v74 = 0;
        *(v74 + 8) = 0;
        *(v74 + 16) = 1;
        *(v74 + *(v75 + 28)) = 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = sub_9FE84(0, *(v21 + 2) + 1, 1, v21, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
        }

        v79 = *(v77 + 2);
        v78 = *(v77 + 3);
        if (v79 >= v78 >> 1)
        {
          v77 = sub_9FE84(v78 > 1, v79 + 1, 1, v77, &qword_184E38, &unk_129110, type metadata accessor for SummaryChartBucket);
        }

        *(v77 + 2) = v79 + 1;
        v21 = v77;
        v74 = v114;
        sub_A2BF0(v114, &v77[v108 + v79 * v107], type metadata accessor for SummaryChartBucket);
        v73 += v111;
        --v72;
      }

      while (v72);

      v25 = v105;
      v4 = v100;
      v9 = v101;
      goto LABEL_108;
    }

LABEL_107:

LABEL_108:
    (*(v119 + 8))(v25, v120);
    goto LABEL_109;
  }

  v94 = v106;
  v4 = v100;
  v9 = v101;
LABEL_110:
  v95 = type metadata accessor for SummaryChartViewModel(0);
  v96 = a4 + *(v95 + 32);
  sub_115750();
  *a4 = v21;
  *(a4 + 8) = v9;
  *(a4 + 16) = v4;
  *(a4 + 24) = v94;
  *(a4 + *(v95 + 36)) = v22;
  return (*(*(v95 - 8) + 56))(a4, 0, 1, v95);
}

uint64_t sub_92DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = sub_116600();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 1;
}

unsigned __int8 *sub_92E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_116FA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v109 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_116FE0();
  v108 = *(v8 - 8);
  v9 = *(v108 + 64);
  __chkstk_darwin(v8);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_116FB0();
  v105 = *(v11 - 8);
  v106 = v11;
  v12 = *(v105 + 64);
  __chkstk_darwin(v11);
  v104 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v126[0] = a1;
  *(&v126[0] + 1) = a2;
  sub_46F9C(&qword_1845A0, &qword_128458);
  v14 = sub_116CC0();
  (*(*v111 + 216))(&v119, v14);

  if (v120 != 1)
  {
    v17 = v121;
    v16 = v122;
    v18 = v119;
    v123 = v120;
    sub_488C8(&v123, &qword_1845D8, &qword_1284A8);
    v124 = v17;
    sub_488C8(&v124, &qword_1845E0, &qword_1284B0);
    v125 = v16;
    result = sub_488C8(&v125, &qword_1845E8, &qword_1284B8);
    if (v18 >= 2)
    {
      v102 = v8;
      v103 = v5;
      sub_46F9C(&qword_184E48, &qword_129120);
      inited = swift_initStackObject();
      v110 = xmmword_124890;
      *(inited + 16) = xmmword_124890;
      *(inited + 32) = 0x6D75536567617355;
      v20 = inited + 32;
      *(inited + 40) = 0xEC0000007972616DLL;
      *(inited + 48) = v18 - 1;
      v21 = sub_A2E90(inited);
      swift_setDeallocating();
      sub_488C8(v20, &qword_184E50, &unk_129128);
      v118 = v21;
      if (v18 != 4)
      {
        goto LABEL_103;
      }

      *&v126[0] = a1;
      *(&v126[0] + 1) = a2;
      v22 = sub_116CC0();
      v23 = (*(*v111 + 192))(v22);

      if (!v23)
      {
        goto LABEL_103;
      }

      if (*(v23 + 16) >= 3uLL)
      {
        v24 = 3;
      }

      else
      {
        v24 = *(v23 + 16);
      }

      sub_1179F0();
      swift_unknownObjectRetain_n();
      v25 = swift_dynamicCastClass();
      if (!v25)
      {
        swift_unknownObjectRelease();
        v25 = _swiftEmptyArrayStorage;
      }

      v26 = v25[2];

      if (v26 == v24)
      {
        v27 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v27)
        {
          goto LABEL_14;
        }

        v27 = _swiftEmptyArrayStorage;
      }

      else
      {
        swift_unknownObjectRelease();
        sub_A1830(v23, v23 + 32, 0, (2 * v24) | 1);
        v27 = v98;
      }

      swift_unknownObjectRelease();
LABEL_14:
      v28 = v27[2];
      if (v28)
      {
        v29 = v4;
        v117 = _swiftEmptyArrayStorage;
        sub_A09C4(0, v28, 0);
        v30 = 4;
        v31 = v117;
        do
        {
          v32 = *&v27[v30 + 2];
          v126[0] = *&v27[v30];
          v126[1] = v32;
          v33 = *&v27[v30 + 4];
          v34 = *&v27[v30 + 6];
          v35 = *&v27[v30 + 10];
          v126[4] = *&v27[v30 + 8];
          v126[5] = v35;
          v126[2] = v33;
          v126[3] = v34;
          v36 = *&v27[v30 + 12];
          v37 = *&v27[v30 + 14];
          v38 = *&v27[v30 + 16];
          v127 = v27[v30 + 18];
          v126[7] = v37;
          v126[8] = v38;
          v126[6] = v36;
          sub_6B280(v126, &v111);
          v39 = sub_5FAE8();
          sub_6AAAC(v126);
          v117 = v31;
          v41 = v31[2];
          v40 = v31[3];
          if (v41 >= v40 >> 1)
          {
            sub_A09C4((v40 > 1), v41 + 1, 1);
            v31 = v117;
          }

          v31[2] = v41 + 1;
          *(v31 + v41 + 32) = v39;
          v30 += 19;
          --v28;
        }

        while (v28);

        v4 = v29;
      }

      else
      {

        v31 = _swiftEmptyArrayStorage;
      }

      v42 = v31[2];
      v111 = 0x7FFFFFFFFFFFFFFFLL;
      sub_1179B0();
      v43 = sub_117210();

      if (v42 >= v43 / 2)
      {

        v53 = -1;
        goto LABEL_102;
      }

      v101 = v31;
      if (v42)
      {
        v111 = _swiftEmptyArrayStorage;
        sub_7122C(0, v42, 0);
        v44 = v111;
        v45 = (v101 + 4);
        do
        {
          v47 = *v45++;
          v46 = v47;
          if (v47 == 26)
          {
            v48 = 0;
          }

          else
          {
            v48 = sub_5E934(v46);
          }

          v111 = v44;
          v50 = v44[2];
          v49 = v44[3];
          v51 = v50 + 1;
          if (v50 >= v49 >> 1)
          {
            v52 = v48;
            sub_7122C((v49 > 1), v50 + 1, 1);
            v48 = v52;
            v44 = v111;
          }

          v44[2] = v51;
          v44[v50 + 4] = v48;
          --v42;
        }

        while (v42);
        v100 = v4;
      }

      else
      {
        v51 = _swiftEmptyArrayStorage[2];
        if (!v51)
        {
          v55 = _swiftEmptyArrayStorage;

          goto LABEL_39;
        }

        v100 = v4;
        v44 = _swiftEmptyArrayStorage;
      }

      v111 = _swiftEmptyArrayStorage;
      sub_A09A4(0, v51, 0);
      v54 = 4;
      v55 = v111;
      do
      {
        v56 = v44[v54];
        sub_46F9C(&qword_182EF8, &unk_125990);
        v57 = swift_allocObject();
        *(v57 + 16) = v110;
        *(v57 + 56) = &type metadata for Int;
        *(v57 + 64) = &protocol witness table for Int;
        *(v57 + 32) = v56;
        v58 = sub_1171C0();
        v60 = v59;
        v111 = v55;
        v62 = v55[2];
        v61 = v55[3];
        if (v62 >= v61 >> 1)
        {
          sub_A09A4((v61 > 1), v62 + 1, 1);
          v55 = v111;
        }

        v55[2] = v62 + 1;
        v63 = &v55[2 * v62];
        v63[4] = v58;
        v63[5] = v60;
        ++v54;
        --v51;
      }

      while (v51);

      v4 = v100;
LABEL_39:
      v111 = v55;
      sub_46F9C(&qword_183878, &unk_126950);
      sub_48800(&qword_184E60, &qword_183878, &unk_126950);
      v64 = sub_117110();
      v66 = v65;

      v67 = HIBYTE(v66) & 0xF;
      v68 = v64 & 0xFFFFFFFFFFFFLL;
      if ((v66 & 0x2000000000000000) != 0)
      {
        v69 = HIBYTE(v66) & 0xF;
      }

      else
      {
        v69 = v64 & 0xFFFFFFFFFFFFLL;
      }

      if (!v69)
      {

        goto LABEL_103;
      }

      if ((v66 & 0x1000000000000000) != 0)
      {
        LOBYTE(v117) = 0;
        v53 = sub_A0DBC(v64, v66, 10);
        v88 = v99;
LABEL_101:

        if (v88)
        {
LABEL_103:
          sub_A6F9C();
          v90 = v104;
          v89 = v105;
          v91 = v106;
          (*(v105 + 104))(v104, enum case for DispatchQoS.QoSClass.background(_:), v106);
          v92 = sub_117570();
          (*(v89 + 8))(v90, v91);
          v93 = v118;
          v94 = swift_allocObject();
          *(v94 + 16) = v93;
          v115 = sub_A7020;
          v116 = v94;
          v111 = _NSConcreteStackBlock;
          v112 = 1107296256;
          v113 = sub_4E4A8;
          v114 = &unk_168128;
          v95 = _Block_copy(&v111);
          v96 = v107;
          sub_116FC0();
          v117 = _swiftEmptyArrayStorage;
          sub_A3C98(&qword_182ED0, &type metadata accessor for DispatchWorkItemFlags);
          sub_46F9C(&qword_182ED8, &unk_124BA0);
          sub_48800(&qword_182EE0, &qword_182ED8, &unk_124BA0);
          v97 = v109;
          sub_117680();
          sub_117550();
          _Block_release(v95);

          (*(v103 + 8))(v97, v4);
          (*(v108 + 8))(v96, v102);
        }

LABEL_102:
        sub_93E84(v53, 0, 0x656966696C617551, 0xEA00000000007372);
        goto LABEL_103;
      }

      if ((v66 & 0x2000000000000000) != 0)
      {
        v111 = v64;
        v112 = v66 & 0xFFFFFFFFFFFFFFLL;
        if (v64 == 43)
        {
          if (v67)
          {
            if (--v67)
            {
              v53 = 0;
              v80 = &v111 + 1;
              while (1)
              {
                v81 = *v80 - 48;
                if (v81 > 9)
                {
                  break;
                }

                v82 = 10 * v53;
                if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                {
                  break;
                }

                v53 = v82 + v81;
                if (__OFADD__(v82, v81))
                {
                  break;
                }

                ++v80;
                if (!--v67)
                {
                  goto LABEL_100;
                }
              }
            }

            goto LABEL_99;
          }

LABEL_113:
          __break(1u);
          return result;
        }

        if (v64 != 45)
        {
          if (v67)
          {
            v53 = 0;
            v85 = &v111;
            while (1)
            {
              v86 = *v85 - 48;
              if (v86 > 9)
              {
                break;
              }

              v87 = 10 * v53;
              if ((v53 * 10) >> 64 != (10 * v53) >> 63)
              {
                break;
              }

              v53 = v87 + v86;
              if (__OFADD__(v87, v86))
              {
                break;
              }

              v85 = (v85 + 1);
              if (!--v67)
              {
                goto LABEL_100;
              }
            }
          }

          goto LABEL_99;
        }

        if (v67)
        {
          if (--v67)
          {
            v53 = 0;
            v74 = &v111 + 1;
            while (1)
            {
              v75 = *v74 - 48;
              if (v75 > 9)
              {
                break;
              }

              v76 = 10 * v53;
              if ((v53 * 10) >> 64 != (10 * v53) >> 63)
              {
                break;
              }

              v53 = v76 - v75;
              if (__OFSUB__(v76, v75))
              {
                break;
              }

              ++v74;
              if (!--v67)
              {
                goto LABEL_100;
              }
            }
          }

          goto LABEL_99;
        }
      }

      else
      {
        if ((v64 & 0x1000000000000000) != 0)
        {
          result = ((v66 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_117740();
        }

        v70 = *result;
        if (v70 == 43)
        {
          if (v68 >= 1)
          {
            v67 = v68 - 1;
            if (v68 != 1)
            {
              v53 = 0;
              if (result)
              {
                v77 = result + 1;
                while (1)
                {
                  v78 = *v77 - 48;
                  if (v78 > 9)
                  {
                    goto LABEL_99;
                  }

                  v79 = 10 * v53;
                  if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                  {
                    goto LABEL_99;
                  }

                  v53 = v79 + v78;
                  if (__OFADD__(v79, v78))
                  {
                    goto LABEL_99;
                  }

                  ++v77;
                  if (!--v67)
                  {
                    goto LABEL_100;
                  }
                }
              }

              goto LABEL_91;
            }

            goto LABEL_99;
          }

          goto LABEL_112;
        }

        if (v70 != 45)
        {
          if (v68)
          {
            v53 = 0;
            if (result)
            {
              while (1)
              {
                v83 = *result - 48;
                if (v83 > 9)
                {
                  goto LABEL_99;
                }

                v84 = 10 * v53;
                if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                {
                  goto LABEL_99;
                }

                v53 = v84 + v83;
                if (__OFADD__(v84, v83))
                {
                  goto LABEL_99;
                }

                ++result;
                if (!--v68)
                {
                  goto LABEL_91;
                }
              }
            }

            goto LABEL_91;
          }

LABEL_99:
          v53 = 0;
          LOBYTE(v67) = 1;
          goto LABEL_100;
        }

        if (v68 >= 1)
        {
          v67 = v68 - 1;
          if (v68 != 1)
          {
            v53 = 0;
            if (result)
            {
              v71 = result + 1;
              while (1)
              {
                v72 = *v71 - 48;
                if (v72 > 9)
                {
                  goto LABEL_99;
                }

                v73 = 10 * v53;
                if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                {
                  goto LABEL_99;
                }

                v53 = v73 - v72;
                if (__OFSUB__(v73, v72))
                {
                  goto LABEL_99;
                }

                ++v71;
                if (!--v67)
                {
                  goto LABEL_100;
                }
              }
            }

LABEL_91:
            LOBYTE(v67) = 0;
LABEL_100:
            LOBYTE(v117) = v67;
            v88 = v67;
            goto LABEL_101;
          }

          goto LABEL_99;
        }

        __break(1u);
      }

      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }
  }

  return result;
}

uint64_t sub_93AD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65707954707041;
  v6 = 0x656966696C617571;
  v7 = 0xED00006570795472;
  if (a1 != 4)
  {
    v6 = 0xD000000000000011;
    v7 = 0x8000000000135160;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656C746974627553;
  if (a1 != 1)
  {
    v8 = 0x4449656C646E7542;
  }

  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x656C746954;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x65707954707041)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xED00006570795472;
      if (v9 != 0x656966696C617571)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x8000000000135160;
      if (v9 != 0xD000000000000011)
      {
LABEL_34:
        v12 = sub_1179E0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE800000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x656C746974627553)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x4449656C646E7542)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x656C746954)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_93CCC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x4C7972616D6D7553;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v2)
    {
      v3 = 0xEB00000000747369;
    }

    else
    {
      v3 = 0x8000000000128400;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000000001350F0;
    v4 = 0xD000000000000011;
  }

  else if (a1 == 3)
  {
    v3 = 0x8000000000135110;
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x437972616D6D7553;
    v3 = 0xEC00000074726168;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x4C7972616D6D7553;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (a2)
    {
      v5 = 0xEB00000000747369;
    }

    else
    {
      v5 = 0x8000000000128400;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000000001350F0;
    if (v4 != 0xD000000000000011)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000000135110;
    if (v4 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEC00000074726168;
    if (v4 != 0x437972616D6D7553)
    {
LABEL_31:
      v7 = sub_1179E0();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_93E84(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v4;
  if (a2)
  {
    v9 = sub_64F08(a3, a4);
    v11 = v10;

    if (v11)
    {
      v13 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_A081C();
        v15 = v19;
      }

      v16 = *(*(v15 + 48) + 16 * v9 + 8);

      result = sub_A0508(v9, v15);
      *v5 = v15;
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v5;
    sub_A06B8(a1, a3, a4, v18);

    *v5 = v20;
  }

  return result;
}

uint64_t sub_93F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v28 = a1;
  *(&v28 + 1) = a2;
  sub_4869C();

  v4 = sub_116900();
  v6 = v5;
  v8 = v7;
  sub_116670();
  v9 = sub_1168C0();
  v11 = v10;
  v13 = v12;

  sub_48928(v4, v6, v8 & 1);

  sub_1166C0();
  v14 = sub_116810();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_48928(v9, v11, v13 & 1);

  sub_116EC0();
  sub_116190();
  v21 = v18 & 1;
  v22 = sub_116620();
  result = sub_115FD0();
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v21;
  *(a3 + 24) = v20;
  *(a3 + 96) = v32;
  *(a3 + 112) = v33;
  *(a3 + 128) = v34;
  *(a3 + 32) = v28;
  *(a3 + 48) = v29;
  *(a3 + 64) = v30;
  *(a3 + 80) = v31;
  *(a3 + 144) = v22;
  *(a3 + 152) = v24;
  *(a3 + 160) = v25;
  *(a3 + 168) = v26;
  *(a3 + 176) = v27;
  *(a3 + 184) = 0;
  return result;
}

uint64_t sub_94190()
{
  swift_getKeyPath();
  (*(*v0 + 296))();

  swift_beginAccess();
  v1 = v0[3];
  sub_A2C78(v1);
  return v1;
}

uint64_t sub_9421C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_94268(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  sub_A2C78(*a1);
  return v3(v2);
}

uint64_t sub_942C4(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 304))();
  sub_A2E2C(a1);
}

void (*sub_9436C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 296))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21UsageSummaryViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_A3C98(&qword_1845F0, type metadata accessor for UsageSummaryViewModel);
  sub_115920();

  v4[7] = sub_94140();
  return sub_944BC;
}

uint64_t sub_94518()
{
  swift_getKeyPath();
  (*(*v0 + 296))();

  swift_beginAccess();
  v1 = v0[4];
}

uint64_t sub_9459C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_945E8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 200);

  return v3(v4);
}

uint64_t sub_9463C(uint64_t a1)
{
  swift_beginAccess();
  if (!v1[4])
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v10 = v1;
    v11 = a1;
    (*(*v1 + 304))(v8);
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = v1[4];

  v5 = sub_71350(v4, a1);

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = v1[4];
LABEL_7:
  v1[4] = a1;
}

uint64_t sub_94778(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
}

void (*sub_947D8(uint64_t *a1))(void *a1)
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
  (*(*v1 + 296))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21UsageSummaryViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_A3C98(&qword_1845F0, type metadata accessor for UsageSummaryViewModel);
  sub_115920();

  v4[7] = sub_944C8();
  return sub_94928;
}

uint64_t sub_94934@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = xmmword_128400;
  if (v3 && *(v3 + 16))
  {
    v5 = *(v3 + 32);
    v12 = *(v3 + 40);
    v6 = *(v3 + 64);
    v7 = *(v3 + 80);
    v8 = *(v3 + 88);
    v9 = *(v3 + 56);
    v10 = *(v3 + 72);

    v4 = v12;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = v10;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  return result;
}

double sub_94A58()
{
  swift_getKeyPath();
  (*(*v0 + 296))();

  swift_beginAccess();
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_94AD8(double a1, double a2)
{
  result = swift_beginAccess();
  if (v2[5] == a1 && v2[6] == a2)
  {
    v2[5] = a1;
    v2[6] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    (*(*v2 + 304))(v8);
  }

  return result;
}

void (*sub_94BE4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 296))(KeyPath);

  v4[5] = OBJC_IVAR____TtC14BatteryUsageUI21UsageSummaryViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_A3C98(&qword_1845F0, type metadata accessor for UsageSummaryViewModel);
  sub_115920();

  v4[7] = sub_94A08();
  return sub_94D34;
}

uint64_t sub_94D40(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SummaryItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[3] = (&dword_0 + 1);
  v2[4] = 0;
  v112 = v2 + 4;
  v2[5] = 0;
  v2[6] = 0;
  sub_115930();
  v114[0] = 0;
  v113 = a1;
  sub_117060();
  v9 = v114[0];
  if (!v114[0])
  {
    v9 = sub_8FC60(&_swiftEmptyArrayStorage);
  }

  v10 = sub_8FD70();
  sub_61EC0(v9, &type metadata for DailyCoalescedBreakdown, v10, &v117);
  v11 = v117;
  v114[0] = 0;
  sub_117060();
  v12 = v114[0];
  if (!v114[0])
  {
    v12 = sub_8FC60(&_swiftEmptyArrayStorage);
  }

  v13 = sub_A2E3C();
  sub_61EC0(v12, &type metadata for DailyUsageSummary, v13, &v117);
  v55 = v117;
  sub_A2E2C(v2[3]);
  v2[3] = v11;

  v2[2] = v55;
  v14 = (*(*v2 + 18))(v56);
  if (v14 == 1)
  {
    goto LABEL_46;
  }

  v15 = v14;

  sub_A2E2C(v16);
  if (!v15)
  {
    goto LABEL_46;
  }

  v17 = *(v15 + 16);
  if (!v17)
  {

LABEL_46:
    v89 = v112;
    swift_beginAccess();
    if (*v89 && (v90 = *v89, v91 = , v92 = sub_71350(v91, &_swiftEmptyArrayStorage), , (v92 & 1) != 0))
    {
      v93 = *v89;
      *v89 = &_swiftEmptyArrayStorage;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v95 = __chkstk_darwin(KeyPath);
      *(&v103 - 2) = v2;
      *(&v103 - 1) = &_swiftEmptyArrayStorage;
      (*(*v2 + 38))(v95, sub_A76E4);
    }

    goto LABEL_58;
  }

  v108 = 0;
  v106 = v55;
  v18 = v15 + 120 * v17;
  v20 = *(v18 - 24);
  v19 = *(v18 - 16);
  v21 = *(v18 - 8);
  v105 = *(v18 + 8);

  v111 = v19;

  v104 = v21;

  v127 = &_swiftEmptyArrayStorage;
  (*(*v2 + 27))(&v128, v22);
  v23 = v129;
  if (v129 == 1 || (v24 = v131, v132 = v129, v133 = v130, sub_488C8(&v133, &qword_1845E0, &qword_1284B0), v134[0] = v24, sub_488C8(v134, &qword_1845E8, &qword_1284B8), !v23))
  {
    v57 = v111;
    v58 = *(v111 + 16);

    if (!v58)
    {
      v62 = &_swiftEmptyArrayStorage;
      goto LABEL_52;
    }

    v60 = 0;
    v61 = v57 + 40;
    v62 = &_swiftEmptyArrayStorage;
    v109 = (v58 - 1);
    v110 = v57 + 40;
    while (1)
    {
      v63 = (v61 + 16 * v60);
      v64 = v60;
      while (1)
      {
        if (v64 >= *(v57 + 16))
        {
          __break(1u);
          return result;
        }

        if (*(v62 + 2) >= 3uLL)
        {
          goto LABEL_52;
        }

        if (*(v20 + 16))
        {
          v65 = *(v63 - 1);
          v66 = *v63;

          v67 = sub_64F08(v65, v66);
          v69 = v68;
          v57 = v111;

          if (v69)
          {
            v70 = *(v20 + 56) + 152 * v67;
            v71 = *(v70 + 16);
            v117 = *v70;
            v118 = v71;
            v72 = *(v70 + 80);
            v74 = *(v70 + 32);
            v73 = *(v70 + 48);
            v121 = *(v70 + 64);
            v122 = v72;
            v119 = v74;
            v120 = v73;
            v75 = *(v70 + 96);
            v76 = *(v70 + 112);
            v77 = *(v70 + 128);
            v126 = *(v70 + 144);
            v124 = v76;
            v125 = v77;
            v123 = v75;
            if (*(&v75 + 1) > 0.0)
            {
              break;
            }
          }
        }

LABEL_28:
        v64 = (v64 + 1);
        v63 += 2;
        if (v58 == v64)
        {
          goto LABEL_52;
        }
      }

      v78 = v117;
      if (v117 == 6)
      {
        goto LABEL_27;
      }

      v116 = v117;
      v115 = 0;
      sub_6B280(&v117, v114);
      sub_68F60();
      if ((sub_117160() & 1) == 0)
      {
        LOBYTE(v114[0]) = v78;
        v116 = 1;
        if ((sub_117160() & 1) == 0)
        {
          LOBYTE(v114[0]) = v78;
          v116 = 4;
          if ((sub_117160() & 1) == 0)
          {
            break;
          }
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_70EC8(0, *(v62 + 2) + 1, 1, v62);
        v62 = result;
      }

      v61 = v110;
      v80 = *(v62 + 2);
      v79 = *(v62 + 3);
      if (v80 >= v79 >> 1)
      {
        result = sub_70EC8((v79 > 1), v80 + 1, 1, v62);
        v62 = result;
      }

      v60 = (v64 + 1);
      *(v62 + 2) = v80 + 1;
      v81 = &v62[152 * v80];
      v82 = v118;
      *(v81 + 2) = v117;
      *(v81 + 3) = v82;
      v83 = v119;
      v84 = v120;
      v85 = v122;
      *(v81 + 6) = v121;
      *(v81 + 7) = v85;
      *(v81 + 4) = v83;
      *(v81 + 5) = v84;
      v86 = v123;
      v87 = v124;
      v88 = v125;
      *(v81 + 88) = v126;
      *(v81 + 9) = v87;
      *(v81 + 10) = v88;
      *(v81 + 8) = v86;
      v127 = v62;
      v57 = v111;
      if (v109 == v64)
      {
LABEL_52:

        goto LABEL_53;
      }
    }

    result = sub_6AAAC(&v117);
LABEL_27:
    v57 = v111;
    goto LABEL_28;
  }

  v25 = *(v23 + 16);
  v110 = v20;
  if (v25)
  {
    v26 = &v8[*(v4 + 40)];
    v27 = v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v28 = *(v5 + 72);
    v107 = &_swiftEmptyArrayStorage;
    v109 = v26;
    do
    {
      sub_A3714(v27, v8, type metadata accessor for SummaryItem);
      v29 = *v26;
      v30 = v26[1];

      sub_A68C8(v8, type metadata accessor for SummaryItem);
      if (v30)
      {
        v31 = v110;
        if (*(v110 + 16))
        {
          v32 = v8;
          v33 = sub_64F08(v29, v30);
          v35 = v34;

          if ((v35 & 1) == 0)
          {
            goto LABEL_12;
          }

          v36 = *(v31 + 56) + 152 * v33;
          v37 = *(v36 + 16);
          v117 = *v36;
          v118 = v37;
          v38 = *(v36 + 80);
          v40 = *(v36 + 32);
          v39 = *(v36 + 48);
          v121 = *(v36 + 64);
          v122 = v38;
          v119 = v40;
          v120 = v39;
          v41 = *(v36 + 96);
          v42 = *(v36 + 112);
          v43 = *(v36 + 128);
          v126 = *(v36 + 144);
          v124 = v42;
          v125 = v43;
          v123 = v41;
          if (*(&v41 + 1) > 0.0)
          {
            sub_6B280(&v117, v114);
            v8 = v32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v107 = sub_70EC8(0, *(v107 + 2) + 1, 1, v107);
            }

            v26 = v109;
            v45 = *(v107 + 2);
            v44 = *(v107 + 3);
            if (v45 >= v44 >> 1)
            {
              v107 = sub_70EC8((v44 > 1), v45 + 1, 1, v107);
            }

            v46 = v107;
            *(v107 + 2) = v45 + 1;
            v47 = &v46[152 * v45];
            v48 = v118;
            *(v47 + 2) = v117;
            *(v47 + 3) = v48;
            v49 = v119;
            v50 = v120;
            v51 = v122;
            *(v47 + 6) = v121;
            *(v47 + 7) = v51;
            *(v47 + 4) = v49;
            *(v47 + 5) = v50;
            v52 = v123;
            v53 = v124;
            v54 = v125;
            *(v47 + 88) = v126;
            *(v47 + 9) = v53;
            *(v47 + 10) = v54;
            *(v47 + 8) = v52;
            v127 = v46;
          }

          else
          {
LABEL_12:
            v8 = v32;
            v26 = v109;
          }
        }

        else
        {
        }
      }

      v27 += v28;
      --v25;
    }

    while (v25);
  }

  sub_488C8(&v132, &qword_1845D8, &qword_1284A8);
  v96 = v108;
  sub_957F4(&v127);
  v108 = v96;
  v62 = v127;
LABEL_53:
  v97 = v112;
  swift_beginAccess();
  if (*v97 && (v98 = , v99 = sub_71350(v98, v62), , (v99 & 1) != 0))
  {
    v100 = *v112;
    *v112 = v62;
  }

  else
  {
    v101 = swift_getKeyPath();
    v102 = __chkstk_darwin(v101);
    *(&v103 - 2) = v2;
    *(&v103 - 1) = v62;
    (*(*v2 + 38))(v102, sub_A76E4);
  }

  v55 = v106;
LABEL_58:
  sub_A2E2C(v55);
  return v2;
}

uint64_t sub_957AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

Swift::Int sub_957F4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_A2210(v2);
  }

  v3 = *(v2 + 2);
  v44[0] = (v2 + 32);
  v44[1] = v3;
  result = sub_1179A0(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 184;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 6) >= *(v12 + 13))
          {
            break;
          }

          v13 = v12 - 152;
          v14 = *(v12 + 1);
          v34 = *v12;
          v35 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v38 = *(v12 + 4);
          v39 = v17;
          v36 = v15;
          v37 = v16;
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v20 = *(v12 + 8);
          v43 = *(v12 + 72);
          v42 = v20;
          v40 = v18;
          v41 = v19;
          v21 = *(v12 - 72);
          *(v12 + 4) = *(v12 - 88);
          *(v12 + 5) = v21;
          v22 = *(v12 - 104);
          *(v12 + 2) = *(v12 - 120);
          *(v12 + 3) = v22;
          *(v12 + 18) = *(v12 - 1);
          v23 = *(v12 - 24);
          *(v12 + 7) = *(v12 - 40);
          *(v12 + 8) = v23;
          *(v12 + 6) = *(v12 - 56);
          v24 = *(v12 - 136);
          *v12 = *(v12 - 152);
          *(v12 + 1) = v24;
          v25 = v35;
          *v13 = v34;
          *(v13 + 1) = v25;
          v26 = v36;
          v27 = v37;
          v28 = v39;
          *(v13 + 4) = v38;
          *(v13 + 5) = v28;
          *(v13 + 2) = v26;
          *(v13 + 3) = v27;
          v29 = v40;
          v30 = v41;
          v31 = v42;
          *(v13 + 72) = v43;
          *(v13 + 7) = v30;
          *(v13 + 8) = v31;
          *(v13 + 6) = v29;
          v12 -= 152;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 152;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_117350();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    *&v34 = v7 + 4;
    *(&v34 + 1) = v6;
    sub_A1920(&v34, v33, v44, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_959C4(void *a1)
{
  v3 = (*(*v1 + 144))();
  if (v3 < 2)
  {
    goto LABEL_19;
  }

  v4 = v3;
  v5 = a1[3];
  v6 = a1[4];
  sub_66DE0(a1, v5);
  v46 = (*(v6 + 24))(v5, v6);
  v47 = v7;
  if (!v7)
  {
    sub_A2E2C(v4);
LABEL_19:
    type metadata accessor for AppDetailViewModel();
    sub_719FC(a1, v66);
    v43 = _swiftEmptyArrayStorage;
    v44 = v66;
    return sub_F77AC(v43, 0, 1, v44);
  }

  v45 = a1;
  result = v4;
  v49 = *(v4 + 16);
  if (!v49)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_21:
    sub_A2E2C(result);

    type metadata accessor for AppDetailViewModel();
    sub_719FC(v45, &v56);
    v44 = &v56;
    v43 = v11;
    return sub_F77AC(v43, 0, 1, v44);
  }

  v9 = 0;
  v10 = v4 + 64;
  v11 = _swiftEmptyArrayStorage;
  v48 = result;
  while (v9 < *(result + 16))
  {
    v51 = *(v10 - 16);
    v50 = *(v10 - 8);
    v12 = *v10;
    v13 = *(v10 + 8);
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    v16 = *(v10 + 48);
    v17 = *(v10 + 64);
    if (*(v14 + 16))
    {
      v18 = *(v10 + 64);

      v19 = v16;
      v20 = sub_64F08(v46, v47);
      if (v21)
      {
        v22 = (*(v14 + 56) + 152 * v20);
        v23 = v22[1];
        v52[0] = *v22;
        v52[1] = v23;
        v24 = v22[5];
        v26 = v22[2];
        v25 = v22[3];
        v52[4] = v22[4];
        v52[5] = v24;
        v52[2] = v26;
        v52[3] = v25;
        v27 = v22[6];
        v28 = v22[7];
        v29 = v22[8];
        v53 = *(v22 + 72);
        v52[7] = v28;
        v52[8] = v29;
        v52[6] = v27;
        memmove(__dst, v22, 0x92uLL);
        nullsub_4(__dst);
        sub_6B280(v52, &v56);
      }

      else
      {
        sub_68BEC(__dst);
      }

      v62 = __dst[6];
      v63 = __dst[7];
      v64 = __dst[8];
      v65 = v55;
      v58 = __dst[2];
      v59 = __dst[3];
      v60 = __dst[4];
      v61 = __dst[5];
      v56 = __dst[0];
      v57 = __dst[1];
    }

    else
    {
      sub_68BEC(&v56);

      v19 = v16;
    }

    v68[6] = v62;
    v68[7] = v63;
    v68[8] = v64;
    v69 = v65;
    v68[2] = v58;
    v68[3] = v59;
    v68[4] = v60;
    v68[5] = v61;
    v68[0] = v56;
    v68[1] = v57;
    sub_63060(v51, v50, v12, v13, v68, v66);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_71108(0, *(v11 + 2) + 1, 1, v11);
    }

    result = v48;
    v31 = *(v11 + 2);
    v30 = *(v11 + 3);
    if (v31 >= v30 >> 1)
    {
      v11 = sub_71108((v30 > 1), v31 + 1, 1, v11);
      result = v48;
    }

    ++v9;
    *(v11 + 2) = v31 + 1;
    v32 = &v11[216 * v31];
    v33 = v66[1];
    *(v32 + 2) = v66[0];
    *(v32 + 3) = v33;
    v34 = v66[2];
    v35 = v66[3];
    v36 = v66[5];
    *(v32 + 6) = v66[4];
    *(v32 + 7) = v36;
    *(v32 + 4) = v34;
    *(v32 + 5) = v35;
    v37 = v66[6];
    v38 = v66[7];
    v39 = v66[9];
    *(v32 + 10) = v66[8];
    *(v32 + 11) = v39;
    *(v32 + 8) = v37;
    *(v32 + 9) = v38;
    v40 = v66[10];
    v41 = v66[11];
    v42 = v66[12];
    *(v32 + 120) = v67;
    *(v32 + 13) = v41;
    *(v32 + 14) = v42;
    *(v32 + 12) = v40;
    v10 += 120;
    if (v49 == v9)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_95D70()
{
  v1 = *(*v0 + 216);
  v1(&v13);
  if (v14 == 1)
  {
    return sub_116BC0();
  }

  v2 = v15;
  v3 = v16;
  v4 = v17;
  v5 = v18;
  v25 = v14;
  sub_488C8(&v25, &qword_1845D8, &qword_1284A8);
  v26 = v4;
  sub_488C8(&v26, &qword_1845E0, &qword_1284B0);
  v27 = v5;
  v6 = sub_488C8(&v27, &qword_1845E8, &qword_1284B8);
  if (v3)
  {
    return sub_116BC0();
  }

  (v1)(&v19, v6);
  if (v20 == 1)
  {
    return sub_116BC0();
  }

  v7 = v21;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v28 = v20;
  sub_488C8(&v28, &qword_1845D8, &qword_1284A8);
  v29 = v9;
  sub_488C8(&v29, &qword_1845E0, &qword_1284B0);
  v30 = v10;
  sub_488C8(&v30, &qword_1845E8, &qword_1284B8);
  if ((v8 & 1) != 0 || v7 >= v2)
  {
    return sub_116BC0();
  }

  v11 = [objc_opt_self() systemOrangeColor];
  return sub_116BE0();
}

uint64_t sub_96038()
{
  v1 = *(v0 + 2);

  sub_A2E2C(*(v0 + 3));
  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC14BatteryUsageUI21UsageSummaryViewModel___observationRegistrar;
  v4 = sub_115940();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int sub_96138()
{
  sub_117A90();
  sub_117200();
  return sub_117AD0();
}

Swift::Int sub_96190()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_962C0()
{
  sub_117A90();
  sub_117200();
  return sub_117AD0();
}

Swift::Int sub_96314()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_96424@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_167900;
  v7._object = v3;
  v5 = sub_117890(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_964B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_167938;
  v8._object = a2;
  v6 = sub_117890(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_9650C(uint64_t a1)
{
  v2 = sub_A6F48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_96548(uint64_t a1)
{
  v2 = sub_A6F48();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_96584@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_A2F8C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_965D4()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_966CC()
{
  *v0;
  sub_117200();
}

Swift::Int sub_967B0()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_968A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_A313C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_968D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747369;
  v4 = 0x4C7972616D6D7553;
  v5 = 0x80000000001350F0;
  v6 = 0x8000000000135110;
  v7 = 0xD000000000000013;
  if (v2 != 3)
  {
    v7 = 0x437972616D6D7553;
    v6 = 0xEC00000074726168;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000000128400;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_96988()
{
  v1 = *v0;
  v2 = 0x4C7972616D6D7553;
  v3 = 0xD000000000000013;
  if (v1 != 3)
  {
    v3 = 0x437972616D6D7553;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_96A38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_A313C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_96A6C(uint64_t a1)
{
  v2 = sub_A6D70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_96AA8(uint64_t a1)
{
  v2 = sub_A6D70();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_96AE4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_A3188(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

Swift::Int sub_96B30()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(v1 - 1);
  return sub_117AD0();
}

Swift::Int sub_96BA8()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(v1 - 1);
  return sub_117AD0();
}

uint64_t sub_96BEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_A34B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_96C9C()
{
  *v0;
  *v0;
  *v0;
  sub_117200();
}

uint64_t sub_96DA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_A351C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_96DD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746954;
  v5 = 0xE700000000000000;
  v6 = 0x65707954707041;
  v7 = 0xED00006570795472;
  v8 = 0x656966696C617571;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000000135160;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C746974627553;
  if (v2 != 1)
  {
    v9 = 0x4449656C646E7542;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_96E9C()
{
  v1 = *v0;
  v2 = 0x656C746954;
  v3 = 0x65707954707041;
  v4 = 0x656966696C617571;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974627553;
  if (v1 != 1)
  {
    v5 = 0x4449656C646E7542;
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

uint64_t sub_96F64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_A351C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_96F8C(uint64_t a1)
{
  v2 = sub_A34C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_96FC8(uint64_t a1)
{
  v2 = sub_A34C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_97004@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_46F9C(&qword_184600, &qword_128510);
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v8 = &v33 - v7;
  v9 = type metadata accessor for SummaryItem(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v13 + 20);
  sub_115790();
  v14 = &v12[v9[11]];
  *v14 = 0;
  v14[1] = 0;
  v15 = a1[3];
  v16 = a1[4];
  v38 = a1;
  sub_66DE0(a1, v15);
  sub_A34C8();
  sub_117AF0();
  if (v2)
  {
    sub_6ACB4(v38);
    v19 = sub_1157A0();
    (*(*(v19 - 8) + 8))(&v12[v37], v19);
  }

  else
  {
    v34 = a2;
    v35 = v5;
    v46 = 0;
    v17 = v36;
    v18 = sub_1178F0();
    v20 = &v12[v9[6]];
    *v20 = v18;
    v20[1] = v21;
    v45 = 1;
    v22 = sub_1178A0();
    v23 = &v12[v9[7]];
    *v23 = v22;
    v23[1] = v24;
    v44 = 2;
    v25 = sub_1178A0();
    v26 = &v12[v9[10]];
    *v26 = v25;
    v26[1] = v27;
    v42 = 3;
    sub_6B160();
    sub_1178E0();
    *v12 = v43;
    v40 = 4;
    sub_6B22C();
    sub_1178E0();
    v12[v9[8]] = v41;
    v39 = 5;
    v28 = sub_1178C0();
    v30 = v29;
    v31 = &v12[v9[9]];
    (*(v35 + 8))(v8, v17);
    *v31 = v28;
    v31[8] = v30 & 1;
    sub_A3714(v12, v34, type metadata accessor for SummaryItem);
    sub_6ACB4(v38);
    return sub_A68C8(v12, type metadata accessor for SummaryItem);
  }
}

uint64_t sub_97464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1157A0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_974DC()
{
  sub_117710(19);
  v1._countAndFlagsBits = 0x203A6E69617264;
  v1._object = 0xE700000000000000;
  sub_117220(v1);
  v2._countAndFlagsBits = sub_1179B0();
  sub_117220(v2);

  v3._countAndFlagsBits = 0x203A65746164202CLL;
  v3._object = 0xE800000000000000;
  sub_117220(v3);
  sub_117430();
  return 0;
}

uint64_t sub_975B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1702125892;
  }

  else
  {
    v4 = 0x6E69617244;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1702125892;
  }

  else
  {
    v6 = 0x6E69617244;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1179E0();
  }

  return v9 & 1;
}

Swift::Int sub_97650()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_976C8()
{
  *v0;
  sub_117200();
}

Swift::Int sub_9772C()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_977A0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_167AB8;
  v8._object = v3;
  v5 = sub_117890(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_97800(uint64_t *a1@<X8>)
{
  v2 = 1702125892;
  if (!*v1)
  {
    v2 = 0x6E69617244;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_97834()
{
  if (*v0)
  {
    result = 1702125892;
  }

  else
  {
    result = 0x6E69617244;
  }

  *v0;
  return result;
}

uint64_t sub_97864@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_167AB8;
  v9._object = a2;
  v6 = sub_117890(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_978C8(uint64_t a1)
{
  v2 = sub_A6D1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_97904(uint64_t a1)
{
  v2 = sub_A6D1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_97940(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_A3568(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_97970()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_974DC();
}

Swift::Int sub_9797C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_117A90();
  sub_117AA0(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_117AC0(*&v3);
  return sub_117AD0();
}

void sub_979E8()
{
  v1 = *(v0 + 8);
  sub_117AA0(*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_117AC0(*&v2);
}

Swift::Int sub_97A34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_117A90();
  sub_117AA0(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_117AC0(*&v3);
  return sub_117AD0();
}

void sub_97AC8(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v68 = type metadata accessor for DynamicDaySummaryView(0);
  v4 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = &v61 - v7;
  v67 = type metadata accessor for FullDaySummaryView(0);
  v8 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v61 - v11;
  v12 = sub_46F9C(&qword_184DA8, &qword_129078);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v73 = (&v61 - v17);
  v18 = sub_116320();
  LOBYTE(v74) = 0;
  v66 = *(a1 + 16);
  v19 = *(a1 + 24);
  v65 = sub_116BC0();
  v20 = sub_117170();
  v21 = BatteryUILocalization(v20);

  if (v21)
  {
    v62 = v15;
    v63 = v18;
    v64 = a2;
    v22 = sub_1171B0();
    v24 = v23;

    v25 = *(a1 + 8);
    v26 = sub_A377C();

    v27 = sub_117170();
    v28 = BatteryUILocalization(v27);

    if (v28)
    {
      v29 = v19 == 1;
      v30 = sub_1171B0();
      v32 = v31;

      *&v83 = v66;
      BYTE8(v83) = v29;
      *&v84 = v65;
      *(&v84 + 1) = v22;
      *&v85 = v24;
      *(&v85 + 1) = v25;
      LOBYTE(v86) = 0;
      *(&v86 + 1) = v26;
      *&v87 = v30;
      *(&v87 + 1) = v32;
      v88 = v66;
      v89 = v29;
      v90 = v65;
      v91 = v22;
      v92 = v24;
      v93 = v25;
      v94 = 0;
      v95 = v26;
      v96 = v30;
      v97 = v32;
      sub_479B4(&v83, &v76, &qword_184DB0, &qword_129080);
      sub_488C8(&v88, &qword_184DB0, &qword_129080);
      *&v82[23] = v84;
      *&v82[39] = v85;
      *&v82[55] = v86;
      *&v82[71] = v87;
      *&v82[7] = v83;
      v33 = v74;
      v34 = *(*a1 + 16);
      v35 = *(a1 + *(type metadata accessor for SummaryChart(0) + 20));
      v36 = v35 * 0.6875 * v34 * 0.125;
      v37 = fmin(v36 / v34 + -12.0, 22.0);
      v38 = sub_116E90();
      v39 = v73;
      *v73 = v38;
      *(v39 + 8) = v40;
      v41 = v39 + *(sub_46F9C(&qword_184DB8, &qword_129088) + 44);
      v42 = v69;
      sub_A3714(a1, v69, type metadata accessor for SummaryChartViewModel);
      v43 = v67;
      *(v42 + *(v67 + 20)) = v34;
      *(v42 + *(v43 + 24)) = v36;
      *(v42 + *(v43 + 28)) = v37;
      v44 = v71;
      sub_A3714(a1, v71, type metadata accessor for SummaryChartViewModel);
      v45 = v68;
      *(v44 + *(v68 + 20)) = v35;
      *(v44 + v45[6]) = v34;
      *(v44 + v45[7]) = v36;
      *(v44 + v45[8]) = v37;
      v46 = v44 + v45[9];
      type metadata accessor for CGSize(0);
      v74 = 0uLL;
      sub_116CB0();
      v47 = *v77;
      *v46 = v76;
      *(v46 + 16) = v47;
      v48 = v70;
      sub_A3714(v42, v70, type metadata accessor for FullDaySummaryView);
      v49 = v72;
      sub_A3714(v44, v72, type metadata accessor for DynamicDaySummaryView);
      sub_A3714(v48, v41, type metadata accessor for FullDaySummaryView);
      v50 = sub_46F9C(&qword_184DC0, &qword_129090);
      sub_A3714(v49, v41 + *(v50 + 48), type metadata accessor for DynamicDaySummaryView);
      sub_A68C8(v44, type metadata accessor for DynamicDaySummaryView);
      sub_A68C8(v42, type metadata accessor for FullDaySummaryView);
      sub_A68C8(v49, type metadata accessor for DynamicDaySummaryView);
      sub_A68C8(v48, type metadata accessor for FullDaySummaryView);
      v51 = v62;
      sub_479B4(v39, v62, &qword_184DA8, &qword_129078);
      v52 = v63;
      *&v74 = v63;
      *(&v74 + 1) = 0x4044000000000000;
      v75[0] = v33;
      *&v75[1] = *v82;
      *&v75[17] = *&v82[16];
      *&v75[65] = *&v82[64];
      *&v75[49] = *&v82[48];
      *&v75[33] = *&v82[32];
      v53 = *&v82[79];
      *&v75[80] = *&v82[79];
      v54 = *v75;
      v55 = v64;
      *v64 = v74;
      v55[1] = v54;
      v56 = *&v75[16];
      v57 = *&v75[32];
      v58 = *&v75[48];
      v59 = *&v75[64];
      *(v55 + 12) = v53;
      v55[4] = v58;
      v55[5] = v59;
      v55[2] = v56;
      v55[3] = v57;
      v60 = sub_46F9C(&qword_184DC8, &qword_129098);
      sub_479B4(v51, v55 + *(v60 + 48), &qword_184DA8, &qword_129078);
      sub_479B4(&v74, &v76, &qword_184DD0, &qword_1290A0);
      sub_488C8(v39, &qword_184DA8, &qword_129078);
      sub_488C8(v51, &qword_184DA8, &qword_129078);
      v79 = *&v82[32];
      v80 = *&v82[48];
      *v81 = *&v82[64];
      *&v77[1] = *v82;
      *&v76 = v52;
      *(&v76 + 1) = 0x4044000000000000;
      v77[0] = v33;
      *&v81[15] = *&v82[79];
      v78 = *&v82[16];
      sub_488C8(&v76, &qword_184DD0, &qword_1290A0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_9817C(uint64_t a1@<X8>)
{
  *a1 = sub_1163F0();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v3 = sub_46F9C(&qword_184608, &qword_128518);
  sub_97AC8(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_981D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v67 = a1;
  v5 = sub_46F9C(&qword_184610, &qword_128520);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v54 - v7;
  v9 = sub_46F9C(&qword_184618, &qword_128528);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v54 - v11;
  v13 = sub_115CD0();
  v65 = *(v13 - 8);
  v66 = v13;
  v14 = *(v65 + 64);
  __chkstk_darwin(v13);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_115760();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_46F9C(&qword_184620, &qword_128530);
  v62 = *(v21 - 8);
  v63 = v21;
  v22 = *(v62 + 64);
  __chkstk_darwin(v21);
  v61 = &v54 - v23;
  v24 = sub_46F9C(&qword_184628, &unk_128538);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = &v54 - v26;
  if (a2)
  {
    v28 = sub_5A754();
    swift_beginAccess();
    v29 = *(*v28 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight);
    sub_116EB0();
    sub_116070();
    v30 = sub_46F9C(&qword_184630, &qword_128548);
    (*(*(v30 - 8) + 16))(v8, v67, v30);
    v31 = &v8[*(v5 + 36)];
    v32 = v69;
    *v31 = v68;
    *(v31 + 1) = v32;
    *(v31 + 2) = v70;
    sub_479B4(v8, v12, &qword_184610, &qword_128520);
    swift_storeEnumTagMultiPayload();
    sub_A3828();
    sub_A3990();
    sub_116470();
    return sub_488C8(v8, &qword_184610, &qword_128520);
  }

  else
  {
    v58 = v27;
    sub_46F9C(&qword_184258, &unk_127E10);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1248A0;
    *(v34 + 32) = 0x796144206C6C41;
    *(v34 + 40) = 0xE700000000000000;
    v35 = sub_5A754();
    swift_beginAccess();
    *(v34 + 48) = *(*v35 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);
    *&v68 = 0x796220796C696144;
    *(&v68 + 1) = 0xE900000000000020;

    v36 = sub_8D8B4()[2];
    v60 = v5;
    v37 = v36;
    sub_115750();
    v38.super.isa = sub_1156B0().super.isa;
    v59 = a3;
    isa = v38.super.isa;
    (*(v17 + 8))(v20, v16);
    v40 = [v37 stringFromDate:isa];

    v41 = sub_1171B0();
    v43 = v42;

    v71._countAndFlagsBits = v41;
    v71._object = v43;
    sub_117220(v71);

    v44 = *(&v68 + 1);
    *(v34 + 56) = v68;
    *(v34 + 64) = v44;
    swift_beginAccess();
    *(v34 + 72) = *(*v35 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);

    v45 = sub_46F9C(&qword_184630, &qword_128548);
    v46 = sub_48800(&qword_184638, &qword_184630, &qword_128548);
    v55 = v24;
    v57 = v9;
    v56 = v12;
    v47 = v61;
    sub_1169A0();

    v48 = v64;
    sub_115CC0();
    sub_116EC0();
    *&v68 = v45;
    *(&v68 + 1) = &type metadata for String;
    *&v69 = &type metadata for Color;
    *(&v69 + 1) = v46;
    *&v70 = &protocol witness table for String;
    *(&v70 + 1) = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    v49 = v58;
    v50 = v63;
    sub_116940();
    (*(v65 + 8))(v48, v66);
    (*(v62 + 8))(v47, v50);
    swift_beginAccess();
    v51 = *(*v35 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) + *(*v35 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight) + *(*v35 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight);
    sub_116EB0();
    sub_116070();
    v52 = (v49 + *(v55 + 36));
    v53 = v69;
    *v52 = v68;
    v52[1] = v53;
    v52[2] = v70;
    sub_479B4(v49, v56, &qword_184628, &unk_128538);
    swift_storeEnumTagMultiPayload();
    sub_A3828();
    sub_A3990();
    sub_116470();
    return sub_488C8(v49, &qword_184628, &unk_128538);
  }
}

uint64_t sub_989D8()
{
  v1 = v0;
  v2 = sub_116530();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1163F0();
  v21 = 0;
  sub_98C54(v1, &v30);
  v25 = v32;
  v26 = v33;
  v27[0] = v34[0];
  *(v27 + 9) = *(v34 + 9);
  v23 = v30;
  v24 = v31;
  *(v29 + 9) = *(v34 + 9);
  v28[2] = v32;
  v28[3] = v33;
  v29[0] = v34[0];
  v28[0] = v30;
  v28[1] = v31;
  sub_479B4(&v23, &v15, &qword_184650, &qword_128550);
  sub_488C8(v28, &qword_184650, &qword_128550);
  *(&v20[2] + 7) = v25;
  *(&v20[3] + 7) = v26;
  *(&v20[4] + 7) = v27[0];
  v20[5] = *(v27 + 9);
  *(v20 + 7) = v23;
  *(&v20[1] + 7) = v24;
  v8 = v21;
  LOBYTE(v1) = sub_116620();
  sub_115FD0();
  *(&v16[2] + 1) = v20[2];
  *(&v16[3] + 1) = v20[3];
  *(&v16[4] + 1) = v20[4];
  *(&v16[5] + 1) = v20[5];
  *(v16 + 1) = v20[0];
  v22 = 0;
  *&v15 = v7;
  *(&v15 + 1) = 0x4000000000000000;
  LOBYTE(v16[0]) = v8;
  *(&v16[1] + 1) = v20[1];
  BYTE8(v16[6]) = v1;
  *&v17 = v9;
  *(&v17 + 1) = v10;
  *&v18 = v11;
  *(&v18 + 1) = v12;
  v19 = 0;
  sub_116520();
  sub_46F9C(&qword_184658, &qword_128558);
  sub_A3A48();
  sub_116A80();
  (*(v3 + 8))(v6, v2);
  v34[4] = v17;
  v34[5] = v18;
  v35 = v19;
  v34[0] = v16[3];
  v34[1] = v16[4];
  v34[2] = v16[5];
  v34[3] = v16[6];
  v30 = v15;
  v31 = v16[0];
  v32 = v16[1];
  v33 = v16[2];
  return sub_488C8(&v30, &qword_184658, &qword_128558);
}

uint64_t sub_98C54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = sub_46F9C(&qword_182FF8, &qword_124E30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v41 - v5;
  v7 = sub_116740();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v12 = *(a1 + 32);
  *&v47 = *(a1 + 24);
  *(&v47 + 1) = v12;
  sub_4869C();

  v13 = sub_116900();
  v15 = v14;
  v17 = v16;
  (*(v8 + 104))(v11, enum case for Font.TextStyle.footnote(_:), v7);
  v18 = sub_116690();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_1166B0();
  sub_1166E0();
  sub_488C8(v6, &qword_182FF8, &qword_124E30);
  (*(v8 + 8))(v11, v7);
  v19 = sub_1168C0();
  v21 = v20;
  LOBYTE(v6) = v22;

  sub_48928(v13, v15, v17 & 1);

  v23 = v42;
  v24 = *(v42 + 16);
  v25 = sub_116880();
  v27 = v26;
  LOBYTE(v15) = v28;
  sub_48928(v19, v21, v6 & 1);

  sub_1166C0();
  v29 = sub_116810();
  v31 = v30;
  LOBYTE(a1) = v32;
  v34 = v33;
  sub_48928(v25, v27, v15 & 1);

  v35 = sub_116300();
  sub_99014(v23, &v47);
  v36 = v47;
  v37 = *v48;
  v46 = 1;
  v45 = v48[16];
  LOBYTE(a1) = a1 & 1;
  v44[64] = a1;
  v47 = v35;
  v48[0] = 1;
  *&v48[8] = v36;
  *&v48[24] = v37;
  v48[40] = v45;
  v38 = v43;
  *v43 = v29;
  v38[1] = v31;
  *(v38 + 16) = a1;
  v38[3] = v34;
  v39 = *v48;
  *(v38 + 2) = v47;
  *(v38 + 3) = v39;
  *(v38 + 4) = *&v48[16];
  *(v38 + 73) = *&v48[25];
  sub_488B8(v29, v31, a1);

  sub_479B4(&v47, v44, &qword_184DA0, &qword_129068);
  sub_8C94C(v36, *(&v36 + 1), v37);
  sub_48928(v29, v31, a1);
}

double sub_99014@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_115520();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_46F9C(&qword_182FF8, &qword_124E30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v51 - v10;
  v12 = sub_116740();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    sub_116370();
    v17 = sub_1168E0();
    v51[1] = v18;
    v52 = a1;
    v19 = v17;
    v21 = v20;
    v23 = v22;
    (*(v13 + 104))(v16, enum case for Font.TextStyle.title2(_:), v12);
    v24 = enum case for Font.Design.rounded(_:);
    v25 = sub_116690();
    v53 = a2;
    v26 = v25;
    v27 = *(v25 - 8);
    (*(v27 + 104))(v11, v24, v25);
    (*(v27 + 56))(v11, 0, 1, v26);
    sub_1166E0();
    sub_488C8(v11, &qword_182FF8, &qword_124E30);
    (*(v13 + 8))(v16, v12);
    v28 = sub_1168C0();
    v30 = v29;
    v32 = v31;

    sub_48928(v19, v21, v23 & 1);

    sub_1166C0();
    v33 = sub_116810();
    v35 = v34;
    LOBYTE(v19) = v36;
    sub_48928(v28, v30, v32 & 1);

    v37 = *(v52 + 16);
    v38 = sub_116880();
    v40 = v39;
    LOBYTE(v30) = v41;
    v43 = v42;
    v44 = v33;
    a2 = v53;
    sub_48928(v44, v35, v19 & 1);

    v54 = v38;
    v55 = v40;
    v56 = v30 & 1;
    v57 = v43;
    v58 = 0;
  }

  else
  {
    sub_993F8(v7);
    v54 = sub_1168F0();
    v55 = v46;
    v56 = v45 & 1;
    v57 = v47;
    v58 = 1;
  }

  sub_116470();
  result = *&v59;
  v49 = v60;
  v50 = v61;
  *a2 = v59;
  *(a2 + 16) = v49;
  *(a2 + 32) = v50;
  return result;
}

uint64_t sub_993F8@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_46F9C(&qword_182FE0, &unk_127BB0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v70 = &v56 - v4;
  v5 = sub_46F9C(&qword_182FE8, &unk_124E20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v71 = &v56 - v7;
  v72 = sub_46F9C(&qword_182FF0, &unk_127BC0);
  v69 = *(v72 - 8);
  v8 = *(v69 + 64);
  __chkstk_darwin(v72);
  v66 = &v56 - v9;
  v10 = sub_46F9C(&qword_182FF8, &qword_124E30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v56 - v12;
  v73 = sub_116740();
  v14 = *(v73 - 8);
  v15 = v14[8];
  __chkstk_darwin(v73);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_46F9C(&qword_184020, &unk_127BD0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v56 - v21;
  v23 = sub_46F9C(&qword_183560, &qword_129070);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v56 - v26;
  v75[0] = *v1;
  sub_ECF08();
  sub_1155C0();
  (*(v24 + 8))(v27, v23);
  sub_66C80();
  sub_48800(&qword_184028, &qword_184020, &unk_127BD0);
  sub_117040();
  (*(v19 + 8))(v22, v18);
  v28 = v73;
  v61 = v14[13];
  v61(v17, enum case for Font.TextStyle.title2(_:), v73);
  v29 = enum case for Font.Design.rounded(_:);
  v30 = sub_116690();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v60 = v29;
  v58 = v32;
  v59 = v31 + 104;
  v32(v13, v29, v30);
  v57 = *(v31 + 56);
  v57(v13, 0, 1, v30);
  sub_1166C0();
  v33 = sub_1166E0();
  v63 = v13;
  sub_488C8(v13, &qword_182FF8, &qword_124E30);
  v34 = v14[1];
  v64 = v17;
  v65 = v14 + 1;
  v56 = v34;
  v34(v17, v28);
  *&v75[0] = v33;
  v62 = sub_5481C();
  sub_115540();
  v35 = *(v67 + 16);
  v75[0] = v35;
  v36 = sub_547C8();
  swift_retain_n();
  sub_115540();
  v37 = [objc_allocWithZone(NSNumberFormatter) init];
  v38 = [v37 percentSymbol];

  if (v38)
  {
    v39 = sub_1171B0();
    v41 = v40;
  }

  else
  {
    v41 = -1.7573882e159;
    v39 = 37;
  }

  *&v75[0] = v39;
  v75[1] = v41;
  v42 = sub_115820();
  v43 = v70;
  (*(*(v42 - 8) + 56))(v70, 1, 1, v42);
  sub_115520();
  sub_A3C98(&unk_183010, &type metadata accessor for AttributedString);
  sub_4869C();
  v44 = v71;
  sub_1155B0();
  sub_488C8(v43, &qword_182FE0, &unk_127BB0);

  if ((*(v69 + 48))(v44, 1, v72) == 1)
  {

    v45 = &qword_182FE8;
    v46 = &unk_124E20;
    v47 = v44;
  }

  else
  {
    v48 = v66;
    sub_548D0(v44, v66, &qword_182FF0, &unk_127BC0);
    v71 = v36;
    v49 = v64;
    v50 = v73;
    v61(v64, enum case for Font.TextStyle.subheadline(_:), v73);
    v51 = v63;
    v58(v63, v60, v30);
    v57(v51, 0, 1, v30);
    sub_1166C0();
    v52 = sub_1166E0();
    sub_488C8(v51, &qword_182FF8, &qword_124E30);
    v56(v49, v50);
    sub_48800(&qword_183020, &qword_182FF0, &unk_127BC0);
    v53 = sub_115550();
    v74 = *&v52;
    sub_115580();
    v53(v75, 0);
    v54 = sub_115550();
    v74 = v35;
    sub_115580();
    v54(v75, 0);
    v47 = v48;
    v45 = &qword_182FF0;
    v46 = &unk_127BC0;
  }

  return sub_488C8(v47, v45, v46);
}
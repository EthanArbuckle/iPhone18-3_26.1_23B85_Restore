uint64_t sub_57EC4@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  sub_4869C();

  v4 = sub_116900();
  v6 = v5;
  v8 = v7;
  if (a1)
  {
    sub_116B80();
  }

  else
  {
    v9 = [objc_opt_self() secondaryLabelColor];
    sub_116BE0();
  }

  v10 = sub_116890();
  v12 = v11;
  v14 = v13;
  sub_48928(v4, v6, v8 & 1);

  sub_116720();
  v15 = sub_1168C0();
  v17 = v16;
  v19 = v18;

  sub_48928(v10, v12, v14 & 1);

  sub_1166C0();
  v20 = sub_116810();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;
  sub_48928(v15, v17, v19 & 1);

  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v25;
  return result;
}

uint64_t sub_58080@<X0>(uint64_t a1@<X8>)
{
  sub_4869C();

  v2 = sub_116900();
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() secondaryLabelColor];
  sub_116BE0();
  v8 = sub_116890();
  v10 = v9;
  v12 = v11;
  sub_48928(v2, v4, v6 & 1);

  sub_116720();
  v13 = sub_1168C0();
  v15 = v14;
  v17 = v16;

  sub_48928(v8, v10, v12 & 1);

  sub_1166C0();
  v18 = sub_116810();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;
  sub_48928(v13, v15, v17 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v23;
  return result;
}

unint64_t sub_5822C()
{
  result = qword_1831B8;
  if (!qword_1831B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1831B8);
  }

  return result;
}

double sub_58280()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_582C4(double a1)
{
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleHeight;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_58378()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent;
  v2 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for BUIChartViewConfig.CachedNumberFormatter()) init];
    v5 = v0;
    isa = sub_1157D0().super.isa;
    [v4 setLocale:isa];

    sub_54960(0, &qword_1831C0, NSNumber_ptr);
    v7 = sub_1175C0(1).super.super.isa;
    [v4 setMultiplier:v7];

    [v4 setNumberStyle:3];
    v8 = *(v5 + v1);
    *(v5 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_58494(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent);
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent) = a1;
  return _objc_release_x1();
}

void (*sub_584A8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_58378();
  return sub_584F0;
}

void sub_584F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent);
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent) = v2;
}

id sub_58508(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter__formatter] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id sub_585D8(uint64_t a1)
{
  sub_479B4(a1, v8, &qword_182FC8, &qword_124DD0);
  if (!v9)
  {
    sub_488C8(v8, &qword_182FC8, &qword_124DD0);
    return 0;
  }

  sub_54960(0, &qword_1831C0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  [v7 doubleValue];
  v3 = v2;

  result = [*(v1 + OBJC_IVAR____TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter__formatter) stringFromTimeInterval:v3];
  if (result)
  {
    v5 = result;
    v6 = sub_1171B0();

    return v6;
  }

  return result;
}

uint64_t sub_58894(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_588E4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_58998(uint64_t a1)
{
  v2 = v1;
  v4 = (*(&stru_20.maxprot + (swift_isaMask & *v1)))();
  if (*(v4 + 16) && (v5 = sub_5B618(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {

    isa = sub_1156B0().super.isa;
    v23.receiver = v2;
    v23.super_class = type metadata accessor for BUIChartViewConfig.CachedDateFormatter();
    v11 = objc_msgSendSuper2(&v23, "stringFromDate:", isa);

    v8 = sub_1171B0();
    v13 = v12;

    v14 = *&stru_68.sectname[swift_isaMask & *v2];

    v15 = v14(v22);
    v17 = v16;
    v18 = *v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v17;
    *v17 = 0x8000000000000000;
    sub_5BFA8(v8, v13, a1, isUniquelyReferenced_nonNull_native);
    *v17 = v21;
    v15(v22, 0);
  }

  return v8;
}

uint64_t sub_58CE4(void *a1)
{
  v2 = v1;
  v4 = (*(&stru_20.maxprot + (swift_isaMask & *v1)))();
  if (*(v4 + 16) && (v5 = sub_5B69C(a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {

    v24.receiver = v2;
    v24.super_class = type metadata accessor for BUIChartViewConfig.CachedNumberFormatter();
    v10 = objc_msgSendSuper2(&v24, "stringFromNumber:", a1);
    if (v10)
    {
      v11 = v10;
      v8 = sub_1171B0();
      v13 = v12;
    }

    else
    {
      v8 = 0;
      v13 = 0;
    }

    v14 = *&stru_68.sectname[swift_isaMask & *v2];

    v15 = a1;
    v16 = v14(v23);
    v18 = v17;
    v19 = *v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v18;
    *v18 = 0x8000000000000000;
    sub_5C184(v8, v13, v15, isUniquelyReferenced_nonNull_native);

    *v18 = v22;
    v16(v23, 0);
  }

  return v8;
}

id sub_58F4C(char *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void *), uint64_t (*a5)(void))
{
  v7 = *a3;
  *&a1[v7] = a4(&_swiftEmptyArrayStorage);
  v9.receiver = a1;
  v9.super_class = a5();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_58FE8(char *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t (*a5)(void *), uint64_t (*a6)(void))
{
  v9 = *a4;
  v10 = a3;
  *&a1[v9] = a5(&_swiftEmptyArrayStorage);
  v13.receiver = a1;
  v13.super_class = a6();
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", v10);

  if (v11)
  {
  }

  return v11;
}

id sub_5909C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_590E4()
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
  v10 = [objc_allocWithZone(type metadata accessor for BUIChartViewConfig.CachedDateFormatter()) init];
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

id sub_59308()
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
  v10 = [objc_allocWithZone(type metadata accessor for BUIChartViewConfig.CachedDateFormatter()) init];
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

uint64_t sub_59538(uint64_t a1)
{
  v2 = type metadata accessor for BUIChartViewData.ChargingIntervalElement(0);
  if (!*(a1 + *(v2 + 24)))
  {
    v6 = *(a1 + *(v2 + 28));
    v8 = sub_D34A8(v6);
LABEL_7:
    v7 = v8;
    goto LABEL_8;
  }

  if (*(a1 + *(v2 + 24)) != 1)
  {
    v6 = *(a1 + *(v2 + 28));
    v8 = sub_D3534(v6);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_5822C();
  v5 = sub_F59F0(&type metadata for PerfPowerServices, v4);
  v6 = *(a1 + *(v3 + 28));
  v7 = sub_D3534(v6);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_D34A8(v6);
    return v7;
  }

  sub_116B40();
  return v7;
}

uint64_t sub_59600()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_59638();
  return v3;
}

void sub_59638()
{
  v1 = v0;
  v2 = sub_46F9C(&qword_1831E0, &unk_1258C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v136 - v4;
  v6 = sub_46F9C(&qword_1831E8, &qword_12A080);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v145 = &v136 - v8;
  v9 = sub_116850();
  v146 = *(v9 - 8);
  v147 = v9;
  v10 = *(v146 + 64);
  __chkstk_darwin(v9);
  v143 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_116870();
  v142 = *(v144 - 8);
  v12 = *(v142 + 64);
  __chkstk_darwin(v144);
  v141 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1158D0();
  v139 = *(v14 - 8);
  v140 = v14;
  v15 = *(v139 + 64);
  __chkstk_darwin(v14);
  v138 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_46F9C(&qword_182FF8, &qword_124E30);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v136 - v19;
  sub_1157E0();
  sub_115870();
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridLineWidth) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor10Days) = 0x3FE3333333333333;
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barRadiusRatioFor10Days) = 0x3FC999999999999ALL;
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barWidthRatioFor24Hrs) = 0x3FE599999999999ALL;
  *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_barRadiusRatioFor24Hrs) = 0x3FC999999999999ALL;
  v21 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeColor;
  v22 = objc_opt_self();
  v23 = [v22 systemGreenColor];
  sub_116BE0();
  v24 = sub_116BA0();

  *(v0 + v21) = v24;
  v25 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_slowChargingColor;
  v26 = [v22 systemOrangeColor];
  *(v0 + v25) = sub_116BE0();
  v27 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_slowChargingIntervalBackgroundColor;
  v28 = [v22 systemOrangeColor];
  sub_116BE0();
  v29 = sub_116BA0();

  *(v0 + v27) = v29;
  v30 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelHighColor;
  v31 = [v22 systemGreenColor];
  *(v0 + v30) = sub_116BE0();
  v32 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_notChargingBarColor;
  sub_116B40();
  v33 = sub_116BA0();

  *(v0 + v32) = v33;
  v34 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleFont;
  *(v0 + v34) = sub_116720();
  v35 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelFont;
  v36 = sub_116690();
  (*(*(v36 - 8) + 56))(v20, 1, 1, v36);
  sub_1166D0();
  sub_488C8(v20, &qword_182FF8, &qword_124E30);
  sub_1166B0();
  v37 = sub_1166F0();

  *(v1 + v35) = v37;
  v38 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleColor;
  v39 = [v22 secondaryLabelColor];
  *(v1 + v38) = sub_116BE0();
  v40 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelColor;
  v41 = [v22 tertiaryLabelColor];
  *(v1 + v40) = sub_116BE0();
  v42 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalColor;
  v43 = [v22 systemGreenColor];
  *(v1 + v42) = sub_116BE0();
  v44 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor;
  v45 = [v22 tertiaryLabelColor];
  *(v1 + v44) = sub_116BE0();
  v46 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelMediumColor;
  v47 = [v22 systemYellowColor];
  *(v1 + v46) = sub_116BE0();
  v48 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelLowColor;
  v49 = [v22 systemRedColor];
  *(v1 + v48) = sub_116BE0();
  v50 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageColor;
  v51 = [v22 systemGreenColor];
  *(v1 + v50) = sub_116BE0();
  v52 = objc_opt_self();
  if (![v52 screenOffColor])
  {
    __break(1u);
    goto LABEL_15;
  }

  v137 = v35;
  v53 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffColor;
  *(v1 + v53) = sub_116BE0();
  if (![v52 screenOnColor])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v54 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnColor;
  *(v1 + v54) = sub_116BE0();
  v55 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnBUI25Color;
  [objc_allocWithZone(UIColor) initWithRed:0.352941176 green:0.349019608 blue:0.815686275 alpha:1.0];
  *(v1 + v55) = sub_116BE0();
  v56 = [v22 systemGreenColor];
  sub_116BE0();
  sub_54960(0, &qword_1831A8, UIColor_ptr);

  v57 = sub_1175B0();
  v58 = [v57 dynamicGrayScaleColor];

  if (!v58)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v59 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelGrayColor;
  v60 = sub_116BE0();

  *(v1 + v59) = v60;
  v61 = [v22 systemGreenColor];
  sub_116BE0();

  v62 = sub_1175B0();
  v63 = [v62 dynamicGrayScaleColor];

  if (!v63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v64 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalGrayColor;
  v65 = sub_116BE0();

  *(v1 + v64) = v65;
  v66 = [v22 systemGreenColor];
  sub_116BE0();
  sub_116BA0();

  v67 = sub_1175B0();
  v68 = [v67 dynamicGrayScaleColor];

  if (!v68)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v69 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeGrayColor;
  v70 = sub_116BE0();

  *(v1 + v69) = v70;
  v71 = [v22 systemGreenColor];
  sub_116BE0();

  v72 = sub_1175B0();
  v73 = [v72 dynamicGrayScaleColor];

  if (!v73)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v74 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageGrayColor;
  v75 = sub_116BE0();

  *(v1 + v74) = v75;
  if (![v52 screenOffColor])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_116BE0();

  v76 = sub_1175B0();
  v77 = [v76 dynamicGrayScaleColor];

  if (!v77)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v78 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor;
  v79 = sub_116BE0();

  *(v1 + v78) = v79;
  if (![v52 screenOnColor])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v136 = v5;
  sub_116BE0();

  v80 = sub_1175B0();
  v81 = [v80 dynamicGrayScaleColor];

  if (!v81)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v82 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnGrayColor;
  v83 = sub_116BE0();

  *(v1 + v82) = v83;
  v84 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor;
  v85 = [v22 systemGray2Color];
  *(v1 + v84) = sub_116BE0();
  v86 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_averageByTimeColor;
  [objc_allocWithZone(UIColor) initWithRed:0.292156863 green:0.292156863 blue:0.307843137 alpha:1.0];
  sub_116BE0();
  v87 = sub_116BA0();

  *(v1 + v86) = v87;
  v88 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor;
  sub_116BC0();
  v89 = sub_116BA0();

  *(v1 + v88) = v89;
  v90 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartAnomalousBarColor;
  v150 = sub_116B80();
  sub_57B74();
  *(v1 + v90) = sub_116BF0();
  v91 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartNoComparisonBarColor;
  v150 = sub_116B30();
  *(v1 + v91) = sub_116BF0();
  LOBYTE(v150) = 1;
  v92 = sub_5822C();
  v93 = sub_F59F0(&type metadata for PerfPowerServices, v92);
  v94 = 90.0;
  if (v93)
  {
    v94 = 100.0;
  }

  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_plotHeight) = v94;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titlePaddingBottom) = 0x4010000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartGap) = 0x4030000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalHeight) = 0x4010000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelSpacing) = 0x4018000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_xLabelAdditionalOffset) = 0x4000000000000000;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig____lazy_storage___formatterForPercent) = 0;
  v95 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForMinutes;
  v96 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v97 = v138;
  sub_115870();
  isa = sub_115860().super.isa;
  v99 = v140;
  v100 = *(v139 + 8);
  v100(v97, v140);
  [v96 setCalendar:isa];

  [v96 setAllowedUnits:64];
  [v96 setUnitsStyle:1];
  v101 = type metadata accessor for BUIChartViewConfig.DateNumberFormatter();
  v102 = objc_allocWithZone(v101);
  *&v102[OBJC_IVAR____TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter__formatter] = v96;
  v149.receiver = v102;
  v149.super_class = v101;
  *(v1 + v95) = objc_msgSendSuper2(&v149, "init");
  v103 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourMinutes;
  v104 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  sub_115870();
  v105 = sub_115860().super.isa;
  v100(v97, v99);
  [v104 setCalendar:v105];

  [v104 setAllowedUnits:96];
  [v104 setUnitsStyle:1];
  v106 = objc_allocWithZone(v101);
  *&v106[OBJC_IVAR____TtCC14BatteryUsageUI18BUIChartViewConfig19DateNumberFormatter__formatter] = v104;
  v148.receiver = v106;
  v148.super_class = v101;
  *(v1 + v103) = objc_msgSendSuper2(&v148, "init");
  v107 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHourShort;
  *(v1 + v107) = sub_590E4();
  v108 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForHour;
  *(v1 + v108) = sub_59308();
  v109 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDate;
  *(v1 + v109) = sub_59308();
  v110 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_formatterForDay;
  *(v1 + v110) = sub_59308();
  v111 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingInterval;
  v112 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v112 setAllowedUnits:96];
  [v112 setUnitsStyle:3];
  sub_115870();
  v113 = sub_115860().super.isa;
  v100(v97, v99);
  [v112 setCalendar:v113];

  *(v1 + v111) = v112;
  v114 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForChargingTime;
  *(v1 + v114) = sub_59308();
  v115 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForHour;
  *(v1 + v115) = sub_59308();
  v116 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axFormatterForDate;
  *(v1 + v116) = sub_59308();
  sub_116370();
  v117 = sub_1168E0();
  v119 = v118;
  v121 = v120;
  v122 = *(v1 + v137);

  v123 = sub_1168C0();
  v125 = v124;
  LOBYTE(v99) = v126;

  sub_48928(v117, v119, v121 & 1);

  v127 = v141;
  sub_116860();
  v128 = sub_116820();
  (*(*(v128 - 8) + 56))(v145, 1, 1, v128);
  v129 = sub_1168D0();
  (*(*(v129 - 8) + 56))(v136, 1, 1, v129);
  v130 = v143;
  sub_116840();
  sub_116830();
  v132 = v131;
  (*(v146 + 8))(v130, v147);
  (*(v142 + 8))(v127, v144);
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_naturalLabelHeight) = v132 + 6.0;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_boltOffset) = (v132 + 6.0) * 0.5 + 1.0;
  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_axisLabelPadding) = v132 + 6.0;
  v133 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
  [v133 lineHeight];
  v135 = v134;
  sub_48928(v123, v125, v99 & 1);

  *(v1 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleHeight) = v135;
}

uint64_t sub_5A65C(uint64_t a1)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:a1];
  [v2 lineHeight];
  v4 = v3;

  v5 = *(*v1 + 568);
  v6.n128_u64[0] = v4;

  return v5(v6);
}

void sub_5A714()
{
  v0 = type metadata accessor for BUIChartViewConfig();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_59638();
  qword_191C80 = v3;
}

uint64_t *sub_5A754()
{
  if (qword_188E40 != -1)
  {
    swift_once();
  }

  return &qword_191C80;
}

uint64_t sub_5A7A4()
{
  v1 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_locale;
  v2 = sub_115820();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_calendar;
  v4 = sub_1158D0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeColor);

  v6 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_slowChargingColor);

  v7 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_slowChargingIntervalBackgroundColor);

  v8 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelHighColor);

  v9 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_notChargingBarColor);

  v10 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleFont);

  v11 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelFont);

  v12 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_titleColor);

  v13 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_labelColor);

  v14 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalColor);

  v15 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_gridColor);

  v16 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelMediumColor);

  v17 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelLowColor);

  v18 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageColor);

  v19 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffColor);

  v20 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnColor);

  v21 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnBUI25Color);

  v22 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_batteryLevelGrayColor);

  v23 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalGrayColor);

  v24 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_intervalShadeGrayColor);

  v25 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_energyUsageGrayColor);

  v26 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOffGrayColor);

  v27 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_screenOnGrayColor);

  v28 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_usageByTimeColor);

  v29 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_averageByTimeColor);

  v30 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_fullDayUsageColor);

  v31 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartAnomalousBarColor);

  v32 = *(v0 + OBJC_IVAR____TtC14BatteryUsageUI18BUIChartViewConfig_chartNoComparisonBarColor);

  return v0;
}

uint64_t sub_5AAB4()
{
  sub_5A7A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

__n128 sub_5AB0C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_116B00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1248A0;
    *(v12 + 32) = a2;
    *(v12 + 40) = a1;
  }

  else
  {
    v13 = v9;
    sub_116B20();
    v14 = sub_116B10();

    if (v14)
    {
      goto LABEL_6;
    }

    sub_116B60();
    v15 = sub_116B10();

    if (v15 & 1) != 0 || (sub_116B90(), v19 = sub_116B10(), , (v19) || (sub_116B80(), v20 = sub_116B10(), , (v20))
    {
LABEL_6:
      sub_46F9C(&qword_1831F0, &unk_1258D0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1248A0;
      (*(v7 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v13);
      *(v16 + 32) = sub_116BD0();
      *(v16 + 40) = a2;

      goto LABEL_7;
    }

    sub_116B40();
    v21 = sub_116B10();

    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1248A0;
    if (v21)
    {
      v23 = objc_opt_self();
      v24 = [v23 systemGray4Color];
      *(v22 + 32) = sub_116BE0();
      v25 = [v23 systemGray2Color];
      *(v22 + 40) = sub_116BE0();
      goto LABEL_7;
    }

    *(v22 + 32) = sub_116BA0();
    *(v22 + 40) = a2;
  }

LABEL_7:
  sub_116E70();
  sub_116F80();
  sub_116F90();
  sub_1160E0();
  result = v27;
  v18 = v28;
  *a3 = v26[1];
  *(a3 + 8) = result;
  *(a3 + 24) = v18;
  return result;
}

__n128 sub_5AEF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1248A0;
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;
  }

  else
  {
    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1248A0;
    *(v7 + 32) = sub_116BA0();
    *(v7 + 40) = a2;
  }

  sub_116E70();
  sub_116F70();
  sub_116F60();
  sub_1160E0();
  result = v10;
  *a3 = v9;
  *(a3 + 8) = v10;
  *(a3 + 24) = v11;
  return result;
}

__n128 sub_5B018@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_116B00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_46F9C(&qword_1831F0, &unk_1258D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1248A0;
    *(v12 + 32) = a2;
    *(v12 + 40) = a1;
  }

  else
  {
    v13 = v9;
    sub_116B20();
    v14 = sub_116B10();

    if (v14)
    {
      goto LABEL_5;
    }

    v15 = objc_opt_self();
    v16 = [v15 systemRedColor];
    sub_116BE0();
    v17 = sub_116B10();

    if (v17)
    {
      goto LABEL_5;
    }

    sub_116B60();
    v21 = sub_116B10();

    if (v21)
    {
      goto LABEL_5;
    }

    v22 = [v15 systemGreenColor];
    sub_116BE0();
    v23 = sub_116B10();

    if (v23)
    {
      goto LABEL_5;
    }

    sub_116B90();
    v24 = sub_116B10();

    if (v24)
    {
      goto LABEL_5;
    }

    v25 = [v15 systemYellowColor];
    sub_116BE0();
    v26 = sub_116B10();

    if (v26 & 1) != 0 || (sub_116B80(), v27 = sub_116B10(), , (v27) || (v28 = [v15 systemOrangeColor], sub_116BE0(), v29 = sub_116B10(), , (v29))
    {
LABEL_5:
      sub_46F9C(&qword_1831F0, &unk_1258D0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1248A0;
      (*(v7 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v13);
    }

    else
    {
      sub_116B40();
      v30 = sub_116B10();

      if (v30 & 1) != 0 || (v31 = [v15 systemGray2Color], sub_116BE0(), v32 = sub_116B10(), , (v32))
      {
        sub_46F9C(&qword_1831F0, &unk_1258D0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1248A0;
        v34 = [v15 systemGray4Color];
        *(v33 + 32) = sub_116BE0();
        v35 = [v15 systemGray2Color];
        *(v33 + 40) = sub_116BE0();
        goto LABEL_7;
      }

      sub_116B30();
      v36 = sub_116B10();

      sub_46F9C(&qword_1831F0, &unk_1258D0);
      v37 = swift_allocObject();
      v18 = v37;
      *(v37 + 16) = xmmword_1248A0;
      if ((v36 & 1) == 0)
      {
        *(v37 + 32) = a2;
        *(v37 + 40) = a2;
        swift_retain_n();
        goto LABEL_7;
      }

      (*(v7 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v13);
    }

    *(v18 + 32) = sub_116BD0();
    *(v18 + 40) = a2;
  }

LABEL_7:
  sub_116E70();
  sub_116F50();
  sub_116F40();
  sub_1160E0();
  result = v39;
  v20 = v40;
  *a3 = v38[1];
  *(a3 + 8) = result;
  *(a3 + 24) = v20;
  return result;
}

unint64_t sub_5B618(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_115760();
  sub_5CD10(&qword_183548);
  v5 = sub_1170C0();

  return sub_5B6E0(a1, v5);
}

unint64_t sub_5B69C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1175D0(*(v2 + 40));

  return sub_5B88C(a1, v4);
}

unint64_t sub_5B6E0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_115760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_5CD10(&qword_183550);
      v16 = sub_117160();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_5B88C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_54960(0, &qword_1831C0, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1175E0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_5B960(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_115760();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_46F9C(&qword_183540, &qword_125978);
  v48 = a2;
  result = sub_117860();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_5CD10(&qword_183548);
      result = sub_1170C0();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_5BD34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_46F9C(&qword_183538, &qword_125970);
  result = sub_117860();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {

        v22 = v21;
      }

      result = sub_1175D0(*(v8 + 40));
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_5BFA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_115760();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_5B618(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_5C3C8();
      goto LABEL_9;
    }

    sub_5B960(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_5B618(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_117A40();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_5C308(v16, v13, v25, a2, v26);
  }
}

id sub_5C184(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_5B69C(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_5BD34(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_5B69C(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_54960(0, &qword_1831C0, NSNumber_ptr);
        result = sub_117A40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_5C654();
      v10 = v18;
    }
  }

  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * v10);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  v21[(v10 >> 6) + 8] |= 1 << v10;
  *(v21[6] + 8 * v10) = a3;
  v25 = (v21[7] + 16 * v10);
  *v25 = a1;
  v25[1] = a2;
  v26 = v21[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;

  return a3;
}

uint64_t sub_5C308(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_115760();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *sub_5C3C8()
{
  v1 = v0;
  v36 = sub_115760();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_46F9C(&qword_183540, &qword_125978);
  v4 = *v0;
  v5 = sub_117850();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_5C654()
{
  v1 = v0;
  sub_46F9C(&qword_183538, &qword_125970);
  v2 = *v0;
  v3 = sub_117850();
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;

        result = v18;
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

unint64_t sub_5C7BC(uint64_t a1)
{
  v2 = sub_46F9C(&qword_183558, &unk_125980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_46F9C(&qword_183540, &qword_125978);
    v8 = sub_117870();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_479B4(v10, v6, &qword_183558, &unk_125980);
      result = sub_5B618(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_115760();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_5C9D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_183538, &qword_125970);
    v3 = sub_117870();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v5;
      result = sub_5B69C(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
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

uint64_t type metadata accessor for BUIChartViewConfig()
{
  result = qword_188E50;
  if (!qword_188E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5CB20()
{
  result = sub_115820();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1158D0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_5CC8C()
{
  result = qword_183528;
  if (!qword_183528)
  {
    sub_47A1C(&qword_183530, &qword_12CCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183528);
  }

  return result;
}

uint64_t sub_5CD10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_115760();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5CD58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = "dNumberFormatter";
  }

  else
  {
    v5 = "PLBatteryUILevelKey";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (*a2)
  {
    v8 = "PLBatteryUILevelKey";
  }

  else
  {
    v8 = "dNumberFormatter";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1179E0();
  }

  return v10 & 1;
}

uint64_t sub_5CE04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x80000000001344F0;
  v5 = 0x8000000000134510;
  v6 = 0x776F646B61657242;
  if (a1 == 4)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v4 = v5;
  }

  v7 = 0xD000000000000014;
  if (a1 == 1)
  {
    v7 = 0x756F48664F646E65;
    v8 = 0xE900000000000072;
  }

  else
  {
    v8 = 0x80000000001344D0;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x796144664F646E65;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
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
      v11 = 0x80000000001344F0;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_37;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0x8000000000134510;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v11 = 0xE90000000000006ELL;
      if (v9 != 0x776F646B61657242)
      {
LABEL_37:
        v12 = sub_1179E0();
        goto LABEL_38;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE900000000000072;
      if (v9 != 0x756F48664F646E65)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v11 = 0x80000000001344D0;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x796144664F646E65)
    {
      goto LABEL_37;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_5CFF0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = "PLBatteryUISuggestionTypeKey";
  v4 = a1;
  v5 = 0xD00000000000001FLL;
  if (a1 == 4)
  {
    v6 = "PLBatteryUIQueryRangeDayTapKey";
  }

  else
  {
    v5 = 0xD000000000000029;
    v6 = "PLBatteryUIQueryRangeWeekTapKey";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "PLBatteryUIQueryRangeWeekKey";
  }

  v8 = 0xD00000000000001CLL;
  if (a1 == 1)
  {
    v8 = 0xD00000000000001BLL;
    v9 = "PLBatteryUIDataDurationKey";
  }

  else
  {
    v9 = "PLBatteryUIQueryRangeDayKey";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
    v10 = "PLBatteryUISuggestionTypeKey";
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000001ELL;
      v3 = "PLBatteryUIQueryRangeWeekKey";
    }

    else if (a2 == 4)
    {
      v2 = 0xD00000000000001FLL;
      v3 = "PLBatteryUIQueryRangeDayTapKey";
    }

    else
    {
      v2 = 0xD000000000000029;
      v3 = "PLBatteryUIQueryRangeWeekTapKey";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "PLBatteryUIDataDurationKey";
    }

    else
    {
      v2 = 0xD00000000000001CLL;
      v3 = "PLBatteryUIQueryRangeDayKey";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1179E0();
  }

  return v13 & 1;
}

Swift::Int sub_5D15C()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_5D1DC()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_5D2CC()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_5D3E0()
{
  *v0;
  sub_117200();
}

Swift::Int sub_5D44C()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_5D4C8()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

Swift::Int sub_5D5B4()
{
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

void sub_5D6D0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "PLBatteryUILevelKey";
  }

  else
  {
    v3 = "dNumberFormatter";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_5D710()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_5D764(uint64_t a1)
{
  v2 = sub_6B2B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5D7A0(uint64_t a1)
{
  v2 = sub_6B2B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_5D7DC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_66228(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t sub_5D834@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_663D4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_5D910()
{
  result = sub_663E4(&off_165C90);
  qword_191E40 = result;
  return result;
}

uint64_t *sub_5D938()
{
  if (qword_188E60 != -1)
  {
    swift_once();
  }

  return &qword_191E40;
}

uint64_t sub_5D9DC(char a1)
{
  v1 = 0;
  switch(a1)
  {
    case 1:
      v2 = sub_117170();
      v3 = BatteryUILocalization(v2);

      if (v3)
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_4;
    case 3:
      goto LABEL_16;
    case 4:
      goto LABEL_10;
    case 5:
      goto LABEL_26;
    case 7:
      goto LABEL_28;
    case 8:
      goto LABEL_12;
    case 9:
      goto LABEL_18;
    case 12:
      goto LABEL_20;
    case 13:
      goto LABEL_32;
    case 14:
      goto LABEL_30;
    case 16:
      goto LABEL_6;
    case 20:
      goto LABEL_14;
    case 21:
      goto LABEL_8;
    case 22:
LABEL_4:
      v4 = sub_117170();
      v3 = BatteryUILocalization(v4);

      if (v3)
      {
        goto LABEL_33;
      }

      __break(1u);
LABEL_6:
      v5 = sub_117170();
      v3 = BatteryUILocalization(v5);

      if (!v3)
      {
        __break(1u);
LABEL_8:
        v6 = sub_117170();
        v3 = BatteryUILocalization(v6);

        if (!v3)
        {
          __break(1u);
LABEL_10:
          v7 = sub_117170();
          v3 = BatteryUILocalization(v7);

          if (!v3)
          {
            __break(1u);
LABEL_12:
            v8 = sub_117170();
            v3 = BatteryUILocalization(v8);

            if (!v3)
            {
              __break(1u);
LABEL_14:
              v9 = sub_117170();
              v3 = BatteryUILocalization(v9);

              if (!v3)
              {
                __break(1u);
LABEL_16:
                v10 = sub_117170();
                v3 = BatteryUILocalization(v10);

                if (!v3)
                {
                  __break(1u);
LABEL_18:
                  v11 = sub_117170();
                  v3 = BatteryUILocalization(v11);

                  if (!v3)
                  {
                    __break(1u);
LABEL_20:
                    v12 = sub_117170();
                    v3 = BatteryUILocalization(v12);

                    if (!v3)
                    {
                      __break(1u);
LABEL_22:
                      v13 = sub_117170();
                      v3 = BatteryUILocalization(v13);

                      if (!v3)
                      {
                        __break(1u);
LABEL_24:
                        v14 = sub_117170();
                        v3 = BatteryUILocalization(v14);

                        if (!v3)
                        {
                          __break(1u);
LABEL_26:
                          v15 = sub_117170();
                          v3 = BatteryUILocalization(v15);

                          if (!v3)
                          {
                            __break(1u);
LABEL_28:
                            v16 = sub_117170();
                            v3 = BatteryUILocalization(v16);

                            if (!v3)
                            {
                              __break(1u);
LABEL_30:
                              v17 = sub_117170();
                              v3 = BatteryUILocalization(v17);

                              if (!v3)
                              {
                                __break(1u);
LABEL_32:
                                v18 = sub_117170();
                                v3 = BatteryUILocalization(v18);

                                if (!v3)
                                {
                                  __break(1u);
                                  JUMPOUT(0x5DE48);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_33:
      v1 = sub_1171B0();

      return v1;
    case 23:
      goto LABEL_22;
    case 24:
      goto LABEL_24;
    default:
      return v1;
  }
}

unint64_t sub_5DEA8(unsigned __int8 a1)
{
  v1 = a1 - 1;
  result = 0x72616C756C6C6563;
  switch(v1)
  {
    case 0:
    case 23:
      return result;
    case 1:
    case 21:
      result = 0x61622E7472616863;
      break;
    case 2:
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x2E79616C70726961;
      break;
    case 4:
      result = 0x706F7264726961;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
    case 22:
      result = 0x7269632E79616C70;
      break;
    case 8:
      result = 0x6461622E6C6C6562;
      break;
    case 9:
      result = 0x746177656C707061;
      break;
    case 10:
      result = 0x6F632E656C626163;
      break;
    case 11:
    case 15:
      result = 0x732E746567646977;
      break;
    case 12:
      result = 0x74696B656D6F68;
      break;
    case 13:
      result = 0x68702E656C707061;
      break;
    case 19:
      result = 0x6B636F6C63;
      break;
    case 20:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_5E120(uint64_t a1, uint64_t a2, char a3, char a4)
{
  result = 0;
  switch(a4)
  {
    case 1:
      v8 = "QUALIFIER_EXPLANATION_POOR_SIGNAL_CONDITION";
      goto LABEL_14;
    case 3:
      v8 = "QUALIFIER_EXPLANATION_LOCATION";
      goto LABEL_14;
    case 4:
      v8 = "QUALIFIER_EXPLANATION_AIRPLAY";
      goto LABEL_14;
    case 5:
      v8 = "QUALIFIER_EXPLANATION_AIRDROP";
      goto LABEL_14;
    case 7:
      v8 = "QUALIFIER_EXPLANATION_AUDIO";
      goto LABEL_14;
    case 8:
      v8 = "QUALIFIER_EXPLANATION_BACKGROUND_LOCATION";
      goto LABEL_14;
    case 9:
      v8 = "QUALIFIER_EXPLANATION_NOTIFICATIONS";
      goto LABEL_14;
    case 12:
      v8 = "QUALIFIER_EXPLANATION_WIDGET";
      goto LABEL_14;
    case 13:
      v16 = sub_117170();
      v17 = BatteryUILocalization(v16);

      if (!v17)
      {
        goto LABEL_28;
      }

      v18 = sub_1171B0();

      result = v18;
      break;
    case 14:
      v8 = "QUALIFIER_EXPLANATION_POSTER";
      goto LABEL_14;
    case 16:
      v8 = "QUALIFIER_EXPLANATION_REMOTE_WIDGET";
      goto LABEL_14;
    case 22:
      v8 = "QUALIFIER_EXPLANATION_NOT_TYPICALLY_USED";
      goto LABEL_14;
    case 24:
      v8 = "QUALIFIER_EXPLANATION_INCREASED_POOR_SIGNAL_CONDITION";
LABEL_14:
      v9 = v8 - 32;

      if ((v9 & 0x2F00000000000000) == 0x2000000000000000)
      {

        result = 0;
      }

      else
      {
        if (a3)
        {
          v10._countAndFlagsBits = 0x524548544F5FLL;
        }

        else
        {
          v10._countAndFlagsBits = 1347436895;
        }

        if (a3)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xE400000000000000;
        }

        v10._object = v11;
        sub_117220(v10);

        v12 = sub_117170();
        v13 = BatteryUILocalization(v12);

        if (!v13)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          JUMPOUT(0x5E478);
        }

        sub_1171B0();

        sub_46F9C(&qword_182EF8, &unk_125990);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_124890;
        *(v14 + 56) = &type metadata for String;
        *(v14 + 64) = sub_53EE8();
        *(v14 + 32) = a1;
        *(v14 + 40) = a2;

        v15 = sub_117180();

        result = v15;
      }

      break;
    default:
      return result;
  }

  return result;
}

void sub_5E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  switch(a6)
  {
    case 23:
      v11 = "QUALIFIER_EXPLANATION_INCREASED_AUDIO_TIME";
      break;
    case 21:
      v11 = "QUALIFIER_EXPLANATION_INCREASED_BACKGROUND";
      break;
    case 20:
      v11 = "QUALIFIER_EXPLANATION_INCREASED_FOREGROUND";
      break;
    default:
      return;
  }

  v12 = v11 - 32;

  if ((v12 & 0x2F00000000000000) == 0x2000000000000000)
  {
  }

  else
  {
    if (a5)
    {
      v13._countAndFlagsBits = 0x524548544F5FLL;
    }

    else
    {
      v13._countAndFlagsBits = 1347436895;
    }

    if (a5)
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v13._object = v14;
    sub_117220(v13);

    v15 = sub_117170();
    v16 = BatteryUILocalization(v15);

    if (v16)
    {
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1248A0;
      *(v17 + 56) = &type metadata for String;
      v18 = sub_53EE8();
      *(v17 + 32) = a1;
      *(v17 + 40) = a2;
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v18;
      *(v17 + 64) = v18;
      *(v17 + 72) = a3;
      *(v17 + 80) = a4;

      sub_117180();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_5E6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v13 = sub_E639C();
  if (v13 != 7)
  {
    switch(a7)
    {
      case 23:
        v14 = v13;
        v15 = "QUALIFIER_PAST_EXPLANATION_INCREASED_AUDIO_TIME";
        break;
      case 21:
        v14 = v13;
        v15 = "QUALIFIER_PAST_EXPLANATION_INCREASED_BACKGROUND";
        break;
      case 20:
        v14 = v13;
        v15 = "QUALIFIER_PAST_EXPLANATION_INCREASED_FOREGROUND";
        break;
      default:
        return;
    }

    v16 = v15 - 32;
    v25 = (v15 - 32) | 0x8000000000000000;

    if ((v16 & 0x2F00000000000000) == 0x2000000000000000)
    {
    }

    else
    {
      if (a6)
      {
        v17._countAndFlagsBits = 0x524548544F5FLL;
      }

      else
      {
        v17._countAndFlagsBits = 1347436895;
      }

      if (a6)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      v17._object = v18;
      sub_117220(v17);

      sub_E622C(0xD00000000000002FLL, v25, v14);
      v19 = sub_117170();

      v20 = BatteryUILocalization(v19);

      if (v20)
      {
        sub_1171B0();

        sub_46F9C(&qword_182EF8, &unk_125990);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1246D0;
        *(v21 + 56) = &type metadata for String;
        v22 = sub_53EE8();
        *(v21 + 32) = a1;
        *(v21 + 40) = a2;
        *(v21 + 96) = &type metadata for String;
        *(v21 + 104) = v22;
        *(v21 + 64) = v22;
        *(v21 + 72) = a3;
        *(v21 + 80) = a4;

        v23 = sub_E6648();
        *(v21 + 136) = &type metadata for String;
        *(v21 + 144) = v22;
        *(v21 + 112) = v23;
        *(v21 + 120) = v24;
        sub_117180();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_5E944@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_664C4(*a1);
  *a2 = result;
  return result;
}

uint64_t *sub_5EA34@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_5EAC4()
{
  v1 = sub_1157A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40))
  {
    v6 = *(v0 + 32);
  }

  else
  {
    sub_115790();
    v6 = sub_115770();
    (*(v2 + 8))(v5, v1);
  }

  return v6;
}

unint64_t sub_5EBC0(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
    case 6:
      result = 0xD000000000000022;
      break;
    case 5:
    case 7:
      result = 0xD00000000000002BLL;
      break;
    case 9:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_5ED98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_664D4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_5EDC8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_5EBC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5EE10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_664D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5EE44(uint64_t a1)
{
  v2 = sub_66E24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5EE80(uint64_t a1)
{
  v2 = sub_66E24();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_5EEBC()
{
  v1 = v0;
  v2 = sub_1154B0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1154A0();
  v5 = *(v0 + 112);
  v22[6] = *(v0 + 96);
  v22[7] = v5;
  v22[8] = *(v0 + 128);
  v23 = *(v0 + 144);
  v6 = *(v0 + 48);
  v22[2] = *(v0 + 32);
  v22[3] = v6;
  v7 = *(v0 + 80);
  v22[4] = *(v0 + 64);
  v22[5] = v7;
  v8 = *(v0 + 16);
  v22[0] = *v0;
  v22[1] = v8;
  sub_66D38();
  v11 = sub_115490();
  v13 = v12;

  v14 = objc_opt_self();
  isa = sub_115660().super.isa;
  *&v22[0] = 0;
  v16 = [v14 JSONObjectWithData:isa options:0 error:v22];

  if (!v16)
  {
    v20 = *&v22[0];
    sub_1155A0();

    swift_willThrow();
    sub_66D8C(v11, v13);

LABEL_2:
    v10 = *(v1 + 16);
    v9 = *(v1 + 24);

    return;
  }

  v17 = *&v22[0];
  sub_117660();
  swift_unknownObjectRelease();
  sub_46F9C(&qword_183580, &qword_1259A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_66D8C(v11, v13);
    goto LABEL_2;
  }

  sub_5F138(v21);
  v18 = sub_117050().super.isa;

  v19 = BatteryUIGetDisplayName(v18);

  if (v19)
  {

    sub_1171B0();

    sub_66D8C(v11, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5F138(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_46F9C(&qword_1838A0, &qword_126960);
    v2 = sub_117870();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_6AD00(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_543D8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_543D8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_543D8(v31, v32);
    result = sub_1176A0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_543D8(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_5F400()
{
  v1 = *(v0 + 48);
  v2 = sub_8D6A8();
  if (*v2 <= v1 && (v3 = [sub_8D8B4()[8] stringFromTimeInterval:v1]) != 0)
  {
    v4 = v3;
    v5 = sub_1171B0();
    v7 = v6;

    v8 = sub_117170();
    v9 = BatteryUILocalization(v8);

    if (!v9)
    {
      __break(1u);
      goto LABEL_19;
    }

    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_124890;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_53EE8();
    *(v10 + 32) = v5;
    *(v10 + 40) = v7;
    v11 = sub_117180();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *(v0 + 56);
  if (*v2 <= v14)
  {
    v15 = [sub_8D8B4()[8] stringFromTimeInterval:v14];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1171B0();
      v19 = v18;

      v20 = sub_117170();
      v21 = BatteryUILocalization(v20);

      if (v21)
      {
        sub_1171B0();

        sub_46F9C(&qword_182EF8, &unk_125990);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_124890;
        *(v22 + 56) = &type metadata for String;
        *(v22 + 64) = sub_53EE8();
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v23 = sub_117180();
        v25 = v24;

        if (v13 | v25)
        {
          goto LABEL_10;
        }

        return;
      }

LABEL_19:
      __break(1u);
      return;
    }
  }

  v23 = 0;
  v25 = 0;
  if (v13)
  {
LABEL_10:
    if (v13)
    {
      v26._countAndFlagsBits = v11;
      v26._object = v13;
      sub_117220(v26);
      if (v25)
      {

        v27._countAndFlagsBits = 10;
        v27._object = 0xE100000000000000;
        sub_117220(v27);
LABEL_16:
        v28._countAndFlagsBits = v23;
        v28._object = v25;
        sub_117220(v28);
      }
    }

    else if (v25)
    {
      goto LABEL_16;
    }
  }
}

void sub_5F6F8()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v8 = *v4++;
      v7 = v8;
      if ((v8 - 20) <= 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_65240(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v6 = *(&_swiftEmptyArrayStorage + 2);
        v5 = *(&_swiftEmptyArrayStorage + 3);
        if (v6 >= v5 >> 1)
        {
          sub_65240((v5 > 1), v6 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v6 + 1;
        *(&_swiftEmptyArrayStorage + v6 + 32) = v7;
      }

      --v3;
    }

    while (v3);
  }

  if (!*(&_swiftEmptyArrayStorage + 2))
  {

    return;
  }

  v9 = *(&_swiftEmptyArrayStorage + 32);

  if (v9 <= 21)
  {
    if (v9 == 20)
    {
      goto LABEL_31;
    }

    if (v9 != 21)
    {
      return;
    }

    if (*(v0 + 144))
    {
      return;
    }

    v10 = [sub_8D8B4()[8] stringFromTimeInterval:*(v0 + 136)];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v2 = sub_1171B0();
    v13 = v12;

    v14 = sub_117170();
    v15 = BatteryUILocalization(v14);

    if (v15)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_25:
    v16 = sub_117170();
    v17 = BatteryUILocalization(v16);

    if (v17)
    {
      sub_1171B0();
    }

    return;
  }

  if (v9 == 22)
  {
    goto LABEL_25;
  }

  if (v9 != 23)
  {
    if (v9 != 24)
    {
      return;
    }

    goto LABEL_25;
  }

  if (*(v0 + 144))
  {
    return;
  }

  v18 = [sub_8D8B4()[8] stringFromTimeInterval:*(v0 + 136)];
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v2 = sub_1171B0();
  v13 = v20;

  v21 = sub_117170();
  v15 = BatteryUILocalization(v21);

  if (v15)
  {
    goto LABEL_34;
  }

  __break(1u);
LABEL_31:
  if ((*(v2 + 144) & 1) == 0)
  {
    v22 = [sub_8D8B4()[8] stringFromTimeInterval:*(v2 + 136)];
    if (v22)
    {
      v23 = v22;
      v2 = sub_1171B0();
      v13 = v24;

      v25 = sub_117170();
      v15 = BatteryUILocalization(v25);

      if (!v15)
      {
        __break(1u);
        return;
      }

LABEL_34:
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_124890;
      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = sub_53EE8();
      *(v26 + 32) = v2;
      *(v26 + 40) = v13;
      sub_117180();
    }
  }
}

uint64_t sub_5FAE8()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    return 26;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if ((v7 - 20) <= 4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_65240(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_65240((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        *(&_swiftEmptyArrayStorage[4] + v5) = v6;
      }

      --v2;
    }

    while (v2);
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v8 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v8 = 26;
  }

  return v8;
}

uint64_t sub_5FBF8(void *a1)
{
  v3 = v1;
  v5 = sub_46F9C(&qword_183588, &qword_1259A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_66DE0(a1, a1[3]);
  sub_66E24();
  sub_117B00();
  LOBYTE(v29) = *v3;
  v30 = 0;
  sub_66E78();
  sub_117960();
  if (!v2)
  {
    v29 = *(v3 + 8);
    v30 = 1;
    sub_46F9C(&qword_183598, &unk_1259B0);
    sub_6B1B4(&qword_1835A0, sub_66ECC);
    sub_117960();
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    LOBYTE(v29) = 2;
    sub_117970();
    v13 = *(v3 + 32);
    v14 = *(v3 + 40);
    LOBYTE(v29) = 3;
    sub_117930();
    v15 = *(v3 + 48);
    LOBYTE(v29) = 4;
    sub_117990();
    v16 = *(v3 + 64);
    v17 = *(v3 + 72);
    LOBYTE(v29) = 5;
    sub_117940();
    v18 = *(v3 + 56);
    LOBYTE(v29) = 6;
    sub_117990();
    v19 = *(v3 + 80);
    v20 = *(v3 + 88);
    LOBYTE(v29) = 7;
    sub_117940();
    v21 = *(v3 + 96);
    LOBYTE(v29) = 8;
    sub_117990();
    v22 = *(v3 + 104);
    LOBYTE(v29) = 9;
    sub_117990();
    v23 = *(v3 + 112);
    v24 = *(v3 + 120);
    LOBYTE(v29) = 10;
    sub_117950();
    v29 = *(v3 + 128);
    v30 = 11;
    sub_46F9C(&qword_1835B0, &qword_127DA0);
    sub_6B08C(&qword_1835B8);
    sub_117960();
    v25 = *(v3 + 136);
    v26 = *(v3 + 144);
    LOBYTE(v29) = 12;
    sub_117940();
    v27 = *(v3 + 145);
    LOBYTE(v29) = 13;
    sub_117980();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_60010()
{
  v1 = *v0;
  if (v1 == 6)
  {
    sub_117AB0(0);
    v2 = *(v0 + 1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_117AB0(0);
    goto LABEL_9;
  }

  sub_117AB0(1u);
  sub_117AA0(v1);
  v2 = *(v0 + 1);
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_117AB0(1u);
  v3 = *(v2 + 16);
  sub_117AA0(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_117AA0(v5);
      --v3;
    }

    while (v3);
  }

LABEL_9:
  v6 = *(v0 + 2);
  v7 = *(v0 + 3);
  sub_117200();
  if (*(v0 + 5))
  {
    v8 = *(v0 + 4);
    sub_117AB0(1u);
    sub_117200();
  }

  else
  {
    sub_117AB0(0);
  }

  v9 = *(v0 + 6);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  sub_117AC0(*&v9);
  v10 = *(v0 + 7);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  sub_117AC0(*&v10);
  if (v0[72] == 1)
  {
    sub_117AB0(0);
  }

  else
  {
    v11 = *(v0 + 8);
    sub_117AB0(1u);
    if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    sub_117AC0(v12);
  }

  if (v0[88] == 1)
  {
    sub_117AB0(0);
  }

  else
  {
    v13 = *(v0 + 10);
    sub_117AB0(1u);
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    sub_117AC0(v14);
  }

  v15 = *(v0 + 12);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  sub_117AC0(*&v15);
  v16 = *(v0 + 13);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  sub_117AC0(*&v16);
  if (v0[120] == 1)
  {
    sub_117AB0(0);
    v17 = *(v0 + 16);
    if (v17)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v21 = *(v0 + 14);
    sub_117AB0(1u);
    sub_117AA0(v21);
    v17 = *(v0 + 16);
    if (v17)
    {
LABEL_34:
      sub_117AB0(1u);
      v18 = *(v17 + 16);
      sub_117AA0(v18);
      if (v18)
      {
        v19 = (v17 + 32);
        do
        {
          v20 = *v19++;
          sub_117AA0(v20);
          --v18;
        }

        while (v18);
      }

      if (v0[144])
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

  sub_117AB0(0);
  if (v0[144])
  {
LABEL_38:
    sub_117AB0(0);
    goto LABEL_45;
  }

LABEL_41:
  v22 = *(v0 + 17);
  sub_117AB0(1u);
  if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  sub_117AC0(v23);
LABEL_45:
  sub_117AB0(v0[145] & 1);
}

double sub_6024C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_66520(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

Swift::Int sub_602D8()
{
  sub_117A90();
  sub_60010();
  return sub_117AD0();
}

Swift::Int sub_6031C()
{
  sub_117A90();
  sub_60010();
  return sub_117AD0();
}

uint64_t sub_6035C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void sub_6038C()
{
  sub_5F6F8();
  if (!v0)
  {
    sub_5F400();
  }
}

uint64_t sub_603B4()
{
  v1 = sub_46F9C(&qword_183560, &qword_129070);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v7 - v4;
  v7[1] = *(v0 + 104);
  sub_ECF08();
  sub_66C80();
  sub_66CD4();
  sub_117040();
  (*(v2 + 8))(v5, v1);
  return v7[2];
}

uint64_t sub_604D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1157A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 40);
  if (v8)
  {
    v9 = *(v1 + 32);
    v10 = v8;
  }

  else
  {
    sub_115790();
    v9 = sub_115770();
    v10 = v11;
    (*(v4 + 8))(v7, v3);
  }

  *a1 = v9;
  a1[1] = v10;
}

BOOL sub_605D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6A95C();

  return sub_F27A8(a1, a2, a3, v6);
}

uint64_t sub_60624(uint64_t *a1)
{
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_117710(36);
  v13 = v4;
  v14._countAndFlagsBits = 0x776F646B61657262;
  v14._object = 0xEF2068746977206ELL;
  sub_117220(v14);
  v2 = *a1;
  sub_117430();
  v15._countAndFlagsBits = 0x612065676E617220;
  v15._object = 0xEB0000000020646ELL;
  sub_117220(v15);
  v9 = *(a1 + 9);
  v10 = *(a1 + 11);
  v11 = *(a1 + 13);
  v12 = *(a1 + 120);
  v5 = *(a1 + 1);
  v6 = *(a1 + 3);
  v7 = *(a1 + 5);
  v8 = *(a1 + 7);
  sub_46F9C(&qword_1835C8, &qword_1259C0);
  sub_1177E0();
  v16._countAndFlagsBits = 0x666675747320;
  v16._object = 0xE600000000000000;
  sub_117220(v16);
  sub_117220(v13);
}

unint64_t sub_60774(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0xD000000000000019;
    if (!a1)
    {
      v7 = 0xD00000000000001CLL;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    if (a1 == 9)
    {
      v1 = 0xD000000000000018;
    }

    else
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 8)
    {
      v2 = 0xD000000000000019;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD000000000000023;
    if (a1 == 6)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_608B4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1179E0();
  }

  return v12 & 1;
}

Swift::Int sub_60960(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_117A90();
  a3(v5);
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_609E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_117200();
}

Swift::Int sub_60A54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_117A90();
  a4(v6);
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_60ABC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_66F74(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_60AEC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_60774(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_60B34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_66F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_60B68(uint64_t a1)
{
  v2 = sub_6AE88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_60BA4(uint64_t a1)
{
  v2 = sub_6AE88();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_60BE0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_67598(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

unint64_t sub_60C48()
{
  v1 = *(v0 + 64);
  sub_117710(24);

  v3._countAndFlagsBits = sub_117090();
  sub_117220(v3);

  return 0xD000000000000016;
}

uint64_t sub_60CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (*(a1 + 24))
  {
    if (v2 & 1 | ((v3 & 1) == 0))
    {
      return v3 & v4;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 | v2))
    {
      return (v3 ^ 1) & v4;
    }
  }

  return (*(a1 + 32) == *(a2 + 32)) & ~v4;
}

uint64_t sub_60D40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0xD000000000000025;
  }

  if (v3)
  {
    v5 = "PLBatteryUIComparisonType";
  }

  else
  {
    v5 = "stionEnergyPercentKey";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001CLL;
  }

  else
  {
    v7 = 0xD000000000000025;
  }

  if (*a2)
  {
    v8 = "stionEnergyPercentKey";
  }

  else
  {
    v8 = "PLBatteryUIComparisonType";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1179E0();
  }

  return v10 & 1;
}

Swift::Int sub_60DEC()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_60E6C()
{
  *v0;
  sub_117200();
}

Swift::Int sub_60ED8()
{
  v1 = *v0;
  sub_117A90();
  sub_117200();

  return sub_117AD0();
}

uint64_t sub_60F60@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_117890(a2, v9);

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

void sub_60FBC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000025;
  }

  if (*v1)
  {
    v3 = "stionEnergyPercentKey";
  }

  else
  {
    v3 = "PLBatteryUIComparisonType";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_60FFC()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD000000000000025;
  }

  *v0;
  return result;
}

uint64_t sub_61044@<X0>(uint64_t a1@<X0>, void *a2@<X1>, Swift::OpaquePointer a3@<X4>, char *a4@<X8>)
{
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_117890(a3, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_610B0(uint64_t a1)
{
  v2 = sub_6ADE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_610EC(uint64_t a1)
{
  v2 = sub_6ADE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_61128@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_67B58(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 9) = HIBYTE(v5);
  }

  return result;
}

uint64_t sub_61184()
{
  sub_117710(36);
  v11._countAndFlagsBits = 0x776F646B61657262;
  v11._object = 0xEF2068746977206ELL;
  sub_117220(v11);
  v1 = *v0;
  sub_117430();
  v12._countAndFlagsBits = 0x612065676E617220;
  v12._object = 0xEB0000000020646ELL;
  sub_117220(v12);
  v7 = *(v0 + 9);
  v8 = *(v0 + 11);
  v9 = *(v0 + 13);
  v10 = *(v0 + 120);
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  v5 = *(v0 + 5);
  v6 = *(v0 + 7);
  sub_46F9C(&qword_1835C8, &qword_1259C0);
  sub_1177E0();
  v13._countAndFlagsBits = 0x666675747320;
  v13._object = 0xE600000000000000;
  sub_117220(v13);
  return 0;
}

uint64_t sub_612C8()
{
  *v0;
  *v0;
  *v0;
  sub_117200();
}

uint64_t sub_613A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_67D20(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_613D8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ALL;
  v3 = *v1;
  v4 = "PLBatteryUISuggestionTypeKey";
  v5 = "PLBatteryUIQueryRangeWeekKey";
  v6 = 0xD00000000000001ELL;
  v7 = "PLBatteryUIQueryRangeDayTapKey";
  v8 = 0xD00000000000001FLL;
  if (v3 != 4)
  {
    v8 = 0xD000000000000029;
    v7 = "PLBatteryUIQueryRangeWeekTapKey";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "PLBatteryUIDataDurationKey";
  v10 = 0xD00000000000001CLL;
  if (v3 == 1)
  {
    v10 = 0xD00000000000001BLL;
  }

  else
  {
    v9 = "PLBatteryUIQueryRangeDayKey";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_61484()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  v4 = 0xD00000000000001FLL;
  if (v2 != 4)
  {
    v4 = 0xD000000000000029;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_6152C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_67D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_61560(uint64_t a1)
{
  v2 = sub_6AD5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6159C(uint64_t a1)
{
  v2 = sub_6AD5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_615D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_67D6C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x110uLL);
  }

  return result;
}

void *sub_61640@<X0>(void *a1@<X8>)
{
  v3 = objc_opt_self();
  isa = sub_117050().super.isa;
  v5 = [v3 isValidJSONObject:isa];

  if (!v5)
  {

    sub_68340();
    swift_allocError();
    *v16 = 0xD000000000000011;
    v16[1] = 0x8000000000134C60;
LABEL_7:
    swift_willThrow();
    return swift_willThrow();
  }

  v6 = sub_117050().super.isa;

  __src[0] = 0;
  v7 = [v3 dataWithJSONObject:v6 options:0 error:__src];

  v8 = __src[0];
  if (!v7)
  {
    v17 = v8;
    sub_1155A0();

    goto LABEL_7;
  }

  v9 = sub_115670();
  v11 = v10;

  v12 = sub_115480();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_115470();
  sub_691C4();
  sub_115450();

  sub_66D8C(v9, v11);
  if (!v1)
  {
    return memcpy(a1, __src, 0x110uLL);
  }

  return swift_willThrow();
}

uint64_t sub_61870(uint64_t a1)
{
  v2 = v1;
  v4 = sub_46F9C(&qword_1835D0, &qword_1259C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_117800();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v55 = &v47 - v13;
  v14 = objc_opt_self();
  isa = sub_117050().super.isa;
  v16 = [v14 isValidJSONObject:isa];

  if (!v16)
  {

    sub_68340();
    swift_allocError();
    *v39 = 0xD000000000000011;
    v39[1] = 0x8000000000134C60;
LABEL_25:
    swift_willThrow();
    return swift_willThrow();
  }

  v17 = sub_117050().super.isa;
  *&v59 = 0;
  v18 = [v14 dataWithJSONObject:v17 options:0 error:&v59];

  v19 = v59;
  if (!v18)
  {
    v43 = v19;

    sub_1155A0();

    goto LABEL_25;
  }

  v20 = sub_115670();
  v52 = v21;
  v53 = v20;

  v22 = sub_115480();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_115470();
  if (!*(a1 + 16) || (v26 = sub_64F08(0xD000000000000022, 0x8000000000134490), (v27 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_6AD00(*(a1 + 56) + 32 * v26, &v59);

  sub_46F9C(&qword_1835E0, &qword_1259D0);
  if (!swift_dynamicCast())
  {
    goto LABEL_22;
  }

  v51 = v25;
  v28 = v57;
  if (v57 >> 62)
  {
    v29 = sub_117840();
    if (v29)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v29 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
    if (v29)
    {
LABEL_8:
      v48 = v9;
      v49 = v8;
      v50 = v1;
      v56 = &_swiftEmptyArrayStorage;
      sub_65260(0, v29 & ~(v29 >> 63), 0);
      if (v29 < 0)
      {
        __break(1u);
      }

      v30 = 0;
      v31 = v56;
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v32 = sub_117730();
        }

        else
        {
          v32 = *(v28 + 8 * v30 + 32);
        }

        v33 = v32;
        *&v59 = 0x6870617247;
        *(&v59 + 1) = 0xE500000000000000;
        v34 = [v32 __swift_objectForKeyedSubscript:sub_117A10()];
        swift_unknownObjectRelease();
        if (v34)
        {
          sub_117660();
          swift_unknownObjectRelease();
        }

        else
        {

          v57 = 0u;
          v58 = 0u;
        }

        v59 = v57;
        v60 = v58;
        v56 = v31;
        v36 = v31[2];
        v35 = v31[3];
        if (v36 >= v35 >> 1)
        {
          sub_65260((v35 > 1), v36 + 1, 1);
          v31 = v56;
        }

        ++v30;
        v31[2] = v36 + 1;
        v37 = &v31[4 * v36];
        v38 = v60;
        *(v37 + 2) = v59;
        *(v37 + 3) = v38;
      }

      while (v29 != v30);

      v8 = v49;
      v2 = v50;
      v9 = v48;
      goto LABEL_29;
    }
  }

  v31 = &_swiftEmptyArrayStorage;
LABEL_29:
  sub_1177F0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_488C8(v7, &qword_1835D0, &qword_1259C8);
  }

  else
  {
    v44 = v55;
    (*(v9 + 32))(v55, v7, v8);
    v45 = v54;
    (*(v9 + 16))(v54, v44, v8);
    *(&v60 + 1) = sub_46F9C(&qword_1835E8, &qword_1259D8);
    *&v59 = v31;
    v46 = sub_115460();
    sub_64D10(&v59, v45);
    v46(&v57, 0);
    (*(v9 + 8))(v44, v8);
  }

LABEL_22:
  sub_69240();
  v41 = v52;
  v40 = v53;
  sub_115450();

  sub_66D8C(v40, v41);
  if (!v2)
  {
    return v59;
  }

  return swift_willThrow();
}

uint64_t sub_61EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v62 = a2;
  v59 = a4;
  v5 = sub_46F9C(&qword_1835D0, &qword_1259C8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v52 - v7;
  v9 = sub_117800();
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v16 = objc_opt_self();
  isa = sub_117050().super.isa;
  v18 = [v16 isValidJSONObject:isa];

  if (!v18)
  {

    sub_68340();
    swift_allocError();
    *v44 = 0xD000000000000011;
    v44[1] = 0x8000000000134C60;
LABEL_26:
    swift_willThrow();
    return swift_willThrow();
  }

  v19 = sub_117050().super.isa;
  *&v66 = 0;
  v20 = [v16 dataWithJSONObject:v19 options:0 error:&v66];

  v21 = v66;
  if (!v20)
  {
    v49 = v21;

    sub_1155A0();

    goto LABEL_26;
  }

  v22 = sub_115670();
  v55 = v23;

  v24 = sub_115480();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v54 = sub_115470();
  if (!swift_dynamicCastMetatype() || !*(a1 + 16) || (v27 = sub_64F08(0xD000000000000022, 0x8000000000134490), (v28 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_6AD00(*(a1 + 56) + 32 * v27, &v66);

  sub_46F9C(&qword_1835E0, &qword_1259D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v53 = v22;
  v29 = v64;
  if (v64 >> 62)
  {
    v50 = v64;
    v30 = sub_117840();
    v29 = v50;
    v31 = v58;
    if (v30)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v30 = *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));
    v31 = v58;
    if (v30)
    {
LABEL_9:
      v52 = v9;
      v32 = v29;
      v63 = &_swiftEmptyArrayStorage;
      sub_65260(0, v30 & ~(v30 >> 63), 0);
      if (v30 < 0)
      {
        __break(1u);
      }

      v33 = 0;
      v34 = v63;
      v35 = v32;
      v56 = v32 & 0xC000000000000001;
      v57 = v32;
      v36 = v30;
      do
      {
        if (v56)
        {
          v37 = sub_117730();
        }

        else
        {
          v37 = *(v35 + 8 * v33 + 32);
        }

        v38 = v37;
        *&v66 = 0x6870617247;
        *(&v66 + 1) = 0xE500000000000000;
        v39 = [v37 __swift_objectForKeyedSubscript:sub_117A10()];
        swift_unknownObjectRelease();
        if (v39)
        {
          sub_117660();
          swift_unknownObjectRelease();
        }

        else
        {

          v64 = 0u;
          v65 = 0u;
        }

        v66 = v64;
        v67 = v65;
        v63 = v34;
        v41 = v34[2];
        v40 = v34[3];
        if (v41 >= v40 >> 1)
        {
          sub_65260((v40 > 1), v41 + 1, 1);
          v34 = v63;
        }

        ++v33;
        v34[2] = v41 + 1;
        v42 = &v34[4 * v41];
        v43 = v67;
        *(v42 + 2) = v66;
        *(v42 + 3) = v43;
        v35 = v57;
      }

      while (v36 != v33);

      v31 = v58;
      v9 = v52;
      goto LABEL_30;
    }
  }

  v34 = &_swiftEmptyArrayStorage;
LABEL_30:
  sub_1177F0();
  if ((*(v31 + 48))(v8, 1, v9) == 1)
  {

    sub_488C8(v8, &qword_1835D0, &qword_1259C8);
  }

  else
  {
    (*(v31 + 32))(v15, v8, v9);
    (*(v31 + 16))(v13, v15, v9);
    *(&v67 + 1) = sub_46F9C(&qword_1835E8, &qword_1259D8);
    *&v66 = v34;
    v51 = sub_115460();
    sub_64D10(&v66, v13);
    v51(&v64, 0);
    (*(v31 + 8))(v15, v9);
  }

  v22 = v53;
LABEL_23:
  v45 = *(v60 + 8);
  v46 = v55;
  v47 = v61;
  sub_115450();

  result = sub_66D8C(v22, v46);
  if (v47)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_62548(uint64_t a1)
{
  sub_117710(23);

  if (a1)
  {
    v2 = *(a1 + 16);
  }

  v4._countAndFlagsBits = sub_1179B0();
  sub_117220(v4);

  v5._countAndFlagsBits = 0x666675747320;
  v5._object = 0xE600000000000000;
  sub_117220(v5);
  return 0x776F646B61657262;
}

Swift::Int sub_62614()
{
  sub_117A90();
  sub_117200();
  return sub_117AD0();
}

Swift::Int sub_62688()
{
  sub_117A90();
  sub_117200();
  return sub_117AD0();
}

uint64_t sub_626DC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_166050;
  v7._object = v3;
  v5 = sub_117890(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_6276C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_166088;
  v8._object = a2;
  v6 = sub_117890(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_627D0(uint64_t a1)
{
  v2 = sub_6AB84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6280C(uint64_t a1)
{
  v2 = sub_6AB84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_62848@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_68394(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_6287C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_61870(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_628A8()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_117710(28);
  v3._countAndFlagsBits = 1029992293;
  v3._object = 0xE400000000000000;
  sub_117220(v3);
  __dst[0] = *v0;
  v4._countAndFlagsBits = sub_1179B0();
  sub_117220(v4);

  v5._countAndFlagsBits = 0x3D686F6520;
  v5._object = 0xE500000000000000;
  sub_117220(v5);
  __dst[0] = v0[1];
  v6._countAndFlagsBits = sub_1179B0();
  sub_117220(v6);

  v7._countAndFlagsBits = 0x6F646B6165726220;
  v7._object = 0xED0000203D206E77;
  sub_117220(v7);
  memcpy(__dst, v0 + 6, sizeof(__dst));
  sub_60624(__dst);
  return 0;
}

uint64_t sub_629EC()
{
  *v0;
  *v0;
  *v0;
  sub_117200();
}

uint64_t sub_62AF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_688B4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_62B20(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x796144664F646E65;
  v5 = 0xD000000000000018;
  v6 = 0x80000000001344F0;
  v7 = 0x8000000000134510;
  v8 = 0x776F646B61657242;
  if (v2 == 4)
  {
    v8 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE900000000000072;
  v10 = 0xD000000000000014;
  if (v2 == 1)
  {
    v10 = 0x756F48664F646E65;
  }

  else
  {
    v9 = 0x80000000001344D0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_62BEC()
{
  v1 = *v0;
  v2 = 0x796144664F646E65;
  v3 = 0xD000000000000018;
  v4 = 0x776F646B61657242;
  if (v1 == 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 == 1)
  {
    v5 = 0x756F48664F646E65;
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

uint64_t sub_62CB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_688B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_62CDC(uint64_t a1)
{
  v2 = sub_6AADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_62D18(uint64_t a1)
{
  v2 = sub_6AADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_62D54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_68900(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x140uLL);
  }

  return result;
}

uint64_t sub_62DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_117620();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v20 - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a2, v7);
  if ((*(v13 + 48))(v12, 1, a3) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v17 = 0;
  }

  else
  {
    (*(v13 + 32))(v16, v12, a3);
    v18 = *(a4 + 8);
    v17 = sub_117160();
    (*(v13 + 8))(v16, a3);
  }

  return v17 & 1;
}

uint64_t sub_62F94()
{
  v1 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = v1;
  v9 = *(v0 + 192);
  v10 = *(v0 + 208);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v6[3] = v2;
  v3 = *(v0 + 144);
  v6[4] = *(v0 + 128);
  v6[5] = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  if (sub_68BD4(v6) == 1)
  {
    return 0;
  }

  else
  {
    return *(&v7 + 1);
  }
}

uint64_t sub_62FFC()
{
  v1 = *(v0 + 176);
  v7[6] = *(v0 + 160);
  v7[7] = v1;
  v7[8] = *(v0 + 192);
  v8 = *(v0 + 208);
  v2 = *(v0 + 112);
  v7[2] = *(v0 + 96);
  v7[3] = v2;
  v3 = *(v0 + 144);
  v7[4] = *(v0 + 128);
  v7[5] = v3;
  v4 = *(v0 + 80);
  v7[0] = *(v0 + 64);
  v7[1] = v4;
  v5 = sub_68BD4(v7) != 1;
  return v5 & HIBYTE(v8);
}

double sub_63060@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v11 = sub_1157A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = 0;
  BYTE8(v45) = 1;
  sub_68BEC(v59);
  v55 = v59[6];
  v56 = v59[7];
  v57 = v59[8];
  v58 = v60;
  v51 = v59[2];
  v52 = v59[3];
  v53 = v59[4];
  v54 = v59[5];
  v49 = v59[0];
  v50 = v59[1];
  *&v47 = a1;
  BYTE8(v47) = a2 & 1;
  *&v48 = a3;
  BYTE8(v48) = a4 & 1;
  sub_68CFC(v26, &v49, &qword_1835F0, &unk_12B240);
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_115790();
  v16 = sub_115770();
  v18 = v17;
  (*(v12 + 8))(v15, v11);
  v61._countAndFlagsBits = v16;
  v61._object = v18;
  sub_117220(v61);

  sub_117430();
  sub_117430();
  v46 = v44;
  v38 = v55;
  v39 = v56;
  v40 = v57;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  v28 = v45;
  v29 = v44;
  v42[10] = v55;
  v42[11] = v56;
  v42[12] = v57;
  v42[6] = v51;
  v42[7] = v52;
  v42[8] = v53;
  v42[9] = v54;
  v42[2] = v47;
  v42[3] = v48;
  v42[4] = v49;
  v42[5] = v50;
  v41 = v58;
  v43 = v58;
  v42[0] = v45;
  v42[1] = v44;
  sub_68C0C(&v28, &v27);
  sub_68C44(v42);
  v19 = v39;
  *(a6 + 160) = v38;
  *(a6 + 176) = v19;
  *(a6 + 192) = v40;
  *(a6 + 208) = v41;
  v20 = v35;
  *(a6 + 96) = v34;
  *(a6 + 112) = v20;
  v21 = v37;
  *(a6 + 128) = v36;
  *(a6 + 144) = v21;
  v22 = v31;
  *(a6 + 32) = v30;
  *(a6 + 48) = v22;
  v23 = v33;
  *(a6 + 64) = v32;
  *(a6 + 80) = v23;
  result = *&v28;
  v25 = v29;
  *a6 = v28;
  *(a6 + 16) = v25;
  return result;
}

uint64_t sub_63378(uint64_t a1, char a2)
{
  v5 = *(v2 + 176);
  v11[6] = *(v2 + 160);
  v11[7] = v5;
  v11[8] = *(v2 + 192);
  v12 = *(v2 + 208);
  v6 = *(v2 + 112);
  v11[2] = *(v2 + 96);
  v11[3] = v6;
  v7 = *(v2 + 144);
  v11[4] = *(v2 + 128);
  v11[5] = v7;
  v8 = *(v2 + 80);
  v11[0] = *(v2 + 64);
  v11[1] = v8;
  result = sub_68BD4(v11);
  if (result != 1)
  {
    v10 = *&a1;
    if (a2)
    {
      v10 = 0.0;
    }

    *(v2 + 168) = v10;
  }

  return result;
}

uint64_t (*sub_63400(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x148uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 320) = v1;
  v5 = *(v1 + 80);
  *v3 = *(v1 + 64);
  *(v3 + 16) = v5;
  v6 = *(v1 + 96);
  v7 = *(v1 + 112);
  v8 = *(v1 + 144);
  *(v3 + 64) = *(v1 + 128);
  *(v3 + 80) = v8;
  *(v3 + 32) = v6;
  *(v3 + 48) = v7;
  v9 = *(v1 + 160);
  v10 = *(v1 + 176);
  v11 = *(v1 + 192);
  *(v3 + 144) = *(v1 + 208);
  *(v3 + 112) = v10;
  *(v3 + 128) = v11;
  *(v3 + 96) = v9;
  v12 = sub_68BD4(v3);
  v13 = *(v4 + 104);
  if (v12 == 1)
  {
    v13 = 0;
  }

  *(v4 + 304) = v13;
  *(v4 + 312) = v12 == 1;
  return sub_6BE68;
}

void sub_634BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 152;
  v3 = *(v1 + 320);
  v4 = *(v1 + 304);
  v5 = *(v1 + 312);
  v6 = *(v3 + 80);
  *(v1 + 152) = *(v3 + 64);
  *(v1 + 168) = v6;
  v7 = *(v3 + 128);
  v8 = *(v3 + 144);
  v9 = *(v3 + 112);
  *(v1 + 184) = *(v3 + 96);
  *(v1 + 232) = v8;
  *(v1 + 216) = v7;
  *(v1 + 200) = v9;
  v11 = *(v3 + 176);
  v10 = *(v3 + 192);
  v12 = *(v3 + 208);
  *(v1 + 248) = *(v3 + 160);
  *(v1 + 296) = v12;
  *(v2 + 112) = v11;
  *(v2 + 128) = v10;
  if (sub_68BD4(v2) != 1)
  {
    v13 = 0.0;
    if (!v5)
    {
      v13 = v4;
    }

    *(*(v1 + 320) + 168) = v13;
  }

  free(v1);
}

uint64_t sub_6356C()
{
  v1 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = v1;
  v12 = *(v0 + 192);
  v13 = *(v0 + 208);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v7 = v2;
  v3 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  if (sub_68BD4(v6) == 1)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_635D0()
{
  v1 = *(v0 + 176);
  v10 = *(v0 + 160);
  v11 = v1;
  v12 = *(v0 + 192);
  v13 = *(v0 + 208);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v7 = v2;
  v3 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  if (sub_68BD4(v6) == 1)
  {
    return 0;
  }

  else
  {
    return *(&v7 + 1);
  }
}

uint64_t sub_63634()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_63664()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_63670()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_6367C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

BOOL sub_63688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v15[12] = *(a1 + 192);
  v16 = *(a1 + 208);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v17[12] = *(a2 + 192);
  v18 = *(a2 + 208);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return sub_66FC0(v15, v17);
}

uint64_t sub_6373C()
{
  if (!*(v0 + 80))
  {
    return 0;
  }

  result = *(v0 + 48);
  v2 = *(v0 + 56) & 1;
  return result;
}

uint64_t sub_63764()
{
  if (*(v0 + 80))
  {
    return *(v0 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_63788()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 104) == 5;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 0;
  }

  else
  {
    sub_66F20();
    v2 = sub_117160();
  }

  return v2 & 1;
}

uint64_t sub_637F8()
{
  if (!*(v0 + 80))
  {
    return 0;
  }

  v1 = *(v0 + 112);
}

void sub_63828()
{
  v1 = v0;
  v2 = sub_115760();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[10] && (v1[5] & 1) == 0)
  {
    v8 = v5;
    v9 = v1[4];
    LODWORD(v1) = *(v1 + 104);
    sub_115700();
    v10 = sub_E639C();
    if (v10 == 7)
    {
      (*(v3 + 8))(v7, v8);
      return;
    }

    v11 = v10;
    if (v1 <= 2)
    {
      if (v1 < 2)
      {
        goto LABEL_14;
      }

      sub_E622C(0xD000000000000030, 0x8000000000134CF0, v10);
      v12 = sub_117170();

      v1 = BatteryUILocalization(v12);

      if (v1)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    if (v1 == 3)
    {
      sub_E622C(0xD00000000000002ELL, 0x8000000000134CC0, v11);
      v14 = sub_117170();

      v1 = BatteryUILocalization(v14);

      if (!v1)
      {
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    if (v1 == 4)
    {
      sub_E622C(0xD000000000000030, 0x8000000000134C80, v11);
      v13 = sub_117170();

      v1 = BatteryUILocalization(v13);

      if (!v1)
      {
        __break(1u);
        goto LABEL_14;
      }

LABEL_16:
      sub_1171B0();

      sub_46F9C(&qword_182EF8, &unk_125990);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_124890;
      v16 = sub_E6648();
      v18 = v17;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_53EE8();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      sub_117180();

      (*(v3 + 8))(v7, v8);
      return;
    }

LABEL_14:
    (*(v3 + 8))(v7, v8, v11);
  }
}

void sub_63B20()
{
  v1 = v0;
  v2 = sub_115760();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_8D8B4()[2];
  sub_115750();
  isa = sub_1156B0().super.isa;
  (*(v3 + 8))(v6, v2);
  v9 = [v7 stringFromDate:isa];

  v10 = sub_1171B0();
  v12 = v11;

  if (!*(v1 + 80))
  {
    goto LABEL_10;
  }

  v13 = *(v1 + 104);
  if (v13 <= 2)
  {
    if (v13 < 2)
    {
      goto LABEL_10;
    }

    v14 = sub_117170();
    v15 = BatteryUILocalization(v14);

    if (v15)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v16 = sub_117170();
      v15 = BatteryUILocalization(v16);

      if (!v15)
      {
        __break(1u);
        goto LABEL_10;
      }

      goto LABEL_12;
    }

LABEL_10:

    return;
  }

  v17 = sub_117170();
  v15 = BatteryUILocalization(v17);

  if (v15)
  {
LABEL_12:
    sub_1171B0();

    sub_46F9C(&qword_182EF8, &unk_125990);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_124890;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_53EE8();
    *(v18 + 32) = v10;
    *(v18 + 40) = v12;
    sub_117180();

    return;
  }

  __break(1u);
}

double sub_63DC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v43 = a2;
  v5 = sub_1157A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = 1;
  memset(v77, 0, 113);
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 24);
  v41 = *(a1 + 16);
  v42 = v10;
  v13 = *(a1 + 40);
  v39 = *(a1 + 32);
  v40 = v12;
  v14 = *(a1 + 56);
  v37 = *(a1 + 48);
  v38 = v13;
  v15 = *(a1 + 72);
  v35 = *(a1 + 64);
  v36 = v14;
  v16 = *(a1 + 88);
  v33 = *(a1 + 80);
  v34 = v15;
  v17 = *(a1 + 104);
  v31 = *(a1 + 96);
  v32 = v16;
  v30 = v17;
  HIDWORD(v29) = *(a1 + 112);
  sub_479B4(a1, &v54, &qword_1835C8, &qword_1259C0);
  sub_488C8(v77, &qword_1835C8, &qword_1259C0);
  *&v74 = 0;
  *(&v74 + 1) = 0xE000000000000000;
  sub_115790();
  v18 = sub_115770();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  v78._countAndFlagsBits = v18;
  v78._object = v20;
  sub_117220(v78);

  if (*(a1 + 64))
  {
    v21 = *(a1 + 16);
    *(a1 + 24);
  }

  sub_117430();
  if (*(a1 + 64))
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    sub_488C8(a1, &qword_1835C8, &qword_1259C0);
  }

  sub_117430();
  v45 = v74;
  *&v46 = v11;
  *(&v46 + 1) = v42;
  *&v47 = v41;
  *(&v47 + 1) = v40;
  *&v48 = v39;
  *(&v48 + 1) = v38;
  *&v49 = v37;
  *(&v49 + 1) = v36;
  *&v50 = v35;
  *(&v50 + 1) = v34;
  *&v51 = v33;
  *(&v51 + 1) = v32;
  *&v52 = v31;
  *(&v52 + 1) = v30;
  LOBYTE(v53[0]) = BYTE4(v29);
  *(v53 + 1) = *v76;
  DWORD1(v53[0]) = *&v76[3];
  *(&v53[0] + 1) = v43;
  *&v53[1] = 0;
  BYTE8(v53[1]) = v75;
  v54 = v74;
  v55 = v11;
  v56 = v42;
  v57 = v41;
  v58 = v40;
  v59 = v39;
  v60 = v38;
  v61 = v37;
  v62 = v36;
  v63 = v35;
  v64 = v34;
  v65 = v33;
  v66 = v32;
  v67 = v31;
  v68 = v30;
  v69 = BYTE4(v29);
  *v70 = *v76;
  *&v70[3] = *&v76[3];
  v71 = v43;
  v72 = 0;
  v73 = v75;
  sub_68C74(&v45, &v44);
  sub_68CAC(&v54);
  v24 = v52;
  a3[6] = v51;
  a3[7] = v24;
  a3[8] = v53[0];
  *(a3 + 137) = *(v53 + 9);
  v25 = v48;
  a3[2] = v47;
  a3[3] = v25;
  v26 = v50;
  a3[4] = v49;
  a3[5] = v26;
  result = *&v45;
  v28 = v46;
  *a3 = v45;
  a3[1] = v28;
  return result;
}

uint64_t sub_64150()
{
  if (*(v0 + 80))
  {
    return *(v0 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_64164(uint64_t result, char a2)
{
  if (*(v2 + 80))
  {
    v3 = *&result;
    if (a2)
    {
      v3 = 0.0;
    }

    *(v2 + 72) = v3;
  }

  return result;
}

uint64_t (*sub_64184(uint64_t a1))()
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 72);
  v3 = *(v1 + 80) == 0;
  if (!*(v1 + 80))
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  return sub_6BE6C;
}

uint64_t sub_641C0(uint64_t result)
{
  v1 = *(result + 16);
  if (*(v1 + 80))
  {
    v2 = *result;
    if (*(result + 8))
    {
      v2 = 0.0;
    }

    *(v1 + 72) = v2;
  }

  return result;
}

uint64_t sub_641E8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_64218()
{
  v1 = *(v0 + 40);
  if (*(v0 + 80))
  {
    return *(v0 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6423C()
{
  v1 = *(v0 + 56);
  if (*(v0 + 80))
  {
    return *(v0 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_64260@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL sub_6426C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v12[0] = a1[8];
  *(v12 + 9) = *(a1 + 137);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v13[7] = v6;
  v14[0] = a2[8];
  *(v14 + 9) = *(a2 + 137);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_64304(v11, v13);
}

BOOL sub_64304(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1179E0() & 1) == 0)
  {
    return 0;
  }

  if (!*(a1 + 80))
  {
    v6 = 0.0;
    if (*(a2 + 80))
    {
      if ((*(a2 + 40) & 1) == 0 || (*(a2 + 56) & 1) == 0)
      {
        return 0;
      }

      v8 = *(a2 + 72);
    }

    else
    {
      v8 = 0.0;
    }

    return v6 == v8;
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 40);
  if (!*(a2 + 80))
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      return 0;
    }

    v8 = 0.0;
    if ((*(a1 + 56) & 1) == 0)
    {
      return 0;
    }

    return v6 == v8;
  }

  v8 = *(a2 + 72);
  v9 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 40) & 1) != 0 || *(a1 + 32) != *(a2 + 32))
    {
      return result;
    }
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }

    return v6 == v8;
  }

  result = 0;
  if ((*(a2 + 56) & 1) == 0 && *(a1 + 48) == *(a2 + 48))
  {
    return v6 == v8;
  }

  return result;
}

uint64_t sub_64404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_117620();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a2, v7, v15);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v18 = 0;
  }

  else
  {
    (*(v12 + 32))(v17, v11, a3);
    v19 = *(*(a4 + 8) + 8);
    v18 = sub_117160();
    (*(v12 + 8))(v17, a3);
  }

  return v18 & 1;
}

uint64_t sub_645F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_46F9C(&qword_182EF0, &unk_124BB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = sub_115760();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v18 = *v1;
  if (v18 > 6)
  {
    if (v18 != 7)
    {
      if (v18 == 8 && (v1[8] & 1) == 0)
      {
        v24 = *(v1 + 1);
        *a1 = 8;
        *(a1 + 8) = v24;
        type metadata accessor for ChargingState.State(0);
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    v23 = type metadata accessor for ChargingState(0);
    sub_479B4(v1 + *(v23 + 28), v7, &qword_182EF0, &unk_124BB0);
    if ((*(v11 + 48))(v7, 1, v10) != 1)
    {
      v28 = *(v11 + 32);
      v28(v15, v7, v10);
      v29 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
      *a1 = 7;
      v28((a1 + v29), v15, v10);
      (*(v11 + 56))(a1 + v29, 0, 1, v10);
      goto LABEL_20;
    }

    sub_488C8(v7, &qword_182EF0, &unk_124BB0);
    v21 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
    v22 = 7;
    goto LABEL_13;
  }

  if (v18 == 2)
  {
    v20 = type metadata accessor for ChargingState(0);
    sub_479B4(v1 + *(v20 + 24), v9, &qword_182EF0, &unk_124BB0);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v26 = *(v11 + 32);
      v26(v17, v9, v10);
      v27 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
      *a1 = 2;
      v26((a1 + v27), v17, v10);
      (*(v11 + 56))(a1 + v27, 0, 1, v10);
      goto LABEL_20;
    }

    sub_488C8(v9, &qword_182EF0, &unk_124BB0);
    v21 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
    v22 = 2;
LABEL_13:
    *a1 = v22;
    (*(v11 + 56))(a1 + v21, 1, 1, v10);
LABEL_20:
    type metadata accessor for ChargingState.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v18 != 3)
  {
LABEL_8:
    *a1 = v18;
    type metadata accessor for ChargingState.State(0);
    goto LABEL_15;
  }

  v19 = *(sub_46F9C(&qword_182EE8, &qword_1259F0) + 48);
  *a1 = 3;
  (*(v11 + 56))(a1 + v19, 1, 1, v10);
  type metadata accessor for ChargingState.State(0);
LABEL_15:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_64A5C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for ChargingState(0);
  v12 = *(v11 + 24);
  v13 = sub_115760();
  v14 = *(*(v13 - 8) + 56);
  v14(a6 + v12, 1, 1, v13);
  v15 = *(v11 + 28);
  v14(a6 + v15, 1, 1, v13);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  sub_68CFC(a4, a6 + v12, &qword_182EF0, &unk_124BB0);
  return sub_68CFC(a5, a6 + v15, &qword_182EF0, &unk_124BB0);
}

Swift::Int sub_64B98()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(qword_127108[v1]);
  return sub_117AD0();
}

Swift::Int sub_64C20()
{
  v1 = *v0;
  sub_117A90();
  sub_117AA0(qword_127108[v1]);
  return sub_117AD0();
}

uint64_t sub_64C6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_68DBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_64D10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_543D8(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_65BD8(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_117800();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_488C8(a1, &qword_183828, &qword_126910);
    sub_654A8(a2, v10);
    v8 = sub_117800();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_488C8(v10, &qword_183828, &qword_126910);
  }

  return result;
}

unint64_t sub_64E3C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_117A90();
  sub_117AA0(a1);
  v4 = sub_117AD0();
  return sub_64F80(a1, v4);
}

unint64_t sub_64EA4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_117800();
  v5 = sub_1170C0();

  return sub_64FF0(a1, v5);
}

unint64_t sub_64F08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_117A90();
  sub_117200();
  v6 = sub_117AD0();

  return sub_65188(a1, a2, v6);
}

unint64_t sub_64F80(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_64FF0(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_117800();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_117160();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_65188(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1179E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_65240(char *a1, int64_t a2, char a3)
{
  result = sub_65280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_65260(void *a1, int64_t a2, char a3)
{
  result = sub_65374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_65280(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_183898, &qword_12B270);
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

void *sub_65374(void *result, int64_t a2, char a3, void *a4)
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
    sub_46F9C(&qword_183838, &unk_126920);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_46F9C(&qword_182FC8, &qword_124DD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_654A8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_64EA4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_65E70();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_117800();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_543D8((*(v11 + 56) + 32 * v8), a2);
    sub_65924(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_65584(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_117800();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_46F9C(&qword_183830, &qword_126918);
  v43 = a2;
  result = sub_117860();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_543D8((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_6AD00(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_1170C0();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_543D8(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_65924(int64_t a1, uint64_t a2)
{
  v4 = sub_117800();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_117690();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_1170C0();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_65BD8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_117800();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_64EA4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_65E70();
      goto LABEL_7;
    }

    sub_65584(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_64EA4(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_65DB0(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_117A40();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  sub_6ACB4(v22);

  return sub_543D8(a1, v22);
}

_OWORD *sub_65DB0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_117800();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_543D8(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_65E70()
{
  v1 = v0;
  v27 = sub_117800();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_46F9C(&qword_183830, &qword_126918);
  v4 = *v0;
  v5 = sub_117850();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_6AD00(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_543D8(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_66108(char *result, int64_t a2, char a3, char *a4)
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
    sub_46F9C(&qword_183820, &qword_126908);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_66228(uint64_t *a1)
{
  v2 = sub_46F9C(&qword_1838D0, &qword_126978);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  sub_66DE0(a1, a1[3]);
  sub_6B2B8();
  sub_117AF0();
  v13 = 0;
  sub_117910();
  v12 = 1;
  sub_117900();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  sub_6ACB4(a1);
  return v9;
}

unint64_t sub_663D4(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_663E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_46F9C(&qword_1838C8, &qword_126970);
    v3 = sub_117870();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_64E3C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t sub_664C4(unint64_t result)
{
  if (result >= 0x1A)
  {
    return 26;
  }

  return result;
}

uint64_t sub_664D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_165CB8;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_66520@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = sub_46F9C(&qword_1838A8, &qword_126968);
  v5 = *(v83 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v83);
  v8 = &v38 - v7;
  v9 = a1[4];
  sub_66DE0(a1, a1[3]);
  sub_66E24();
  sub_117AF0();
  if (v2)
  {
    sub_6ACB4(a1);
  }

  else
  {
    v49 = v5;
    LOBYTE(v50) = 0;
    sub_6B160();
    sub_1178E0();
    v10 = LOBYTE(v60[0]);
    sub_46F9C(&qword_183598, &unk_1259B0);
    LOBYTE(v50) = 1;
    sub_6B1B4(&qword_1838B8, sub_6B22C);
    sub_1178E0();
    v46 = v10;
    v12 = v60[0];
    LOBYTE(v60[0]) = 2;
    v45 = sub_1178F0();
    v48 = v13;
    LOBYTE(v60[0]) = 3;
    v44 = sub_1178A0();
    v47 = v14;
    LOBYTE(v60[0]) = 4;
    v15 = COERCE_DOUBLE(sub_1178C0());
    if (v16)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v15;
    }

    LOBYTE(v60[0]) = 6;
    v18 = COERCE_DOUBLE(sub_1178C0());
    if (v19)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v18;
    }

    LOBYTE(v60[0]) = 5;
    v43 = sub_1178C0();
    v81 = v21 & 1;
    LOBYTE(v60[0]) = 7;
    v42 = sub_1178C0();
    v79 = v22 & 1;
    LOBYTE(v60[0]) = 8;
    sub_117900();
    v24 = v23;
    LOBYTE(v60[0]) = 9;
    sub_117900();
    v26 = v25;
    LOBYTE(v60[0]) = 10;
    v27 = sub_1178D0();
    v77 = v28 & 1;
    sub_46F9C(&qword_1835B0, &qword_127DA0);
    LOBYTE(v50) = 11;
    sub_6B08C(&qword_183890);
    sub_1178E0();
    v29 = v60[0];
    LOBYTE(v60[0]) = 12;
    v41 = sub_1178C0();
    v75 = v30 & 1;
    LOBYTE(v60[0]) = 13;
    v31 = sub_1178B0();
    (*(v49 + 8))(v8, v83);
    LODWORD(v83) = v31 & 1;
    v32 = v46;
    LOBYTE(v50) = v46;
    v33 = v45;
    *(&v50 + 1) = v12;
    *&v51 = v45;
    *(&v51 + 1) = v48;
    *&v52 = v44;
    *(&v52 + 1) = v47;
    *&v53 = v17;
    *(&v53 + 1) = v20;
    *&v54 = v43;
    HIDWORD(v38) = v81;
    BYTE8(v54) = v81;
    *&v55 = v42;
    v39 = v79;
    BYTE8(v55) = v79;
    *&v56 = v24;
    *(&v56 + 1) = v26;
    *&v57 = v27;
    v40 = v77;
    BYTE8(v57) = v77;
    *&v58 = v29;
    *(&v58 + 1) = v41;
    LODWORD(v49) = v75;
    LOBYTE(v59) = v75;
    HIBYTE(v59) = v83;
    sub_6B280(&v50, v60);
    sub_6ACB4(a1);
    LOBYTE(v60[0]) = v32;
    *(v60 + 1) = v82[0];
    HIDWORD(v60[0]) = *(v82 + 3);
    v60[1] = v12;
    v60[2] = v33;
    v60[3] = v48;
    v60[4] = v44;
    v60[5] = v47;
    *&v60[6] = v17;
    *&v60[7] = v20;
    v60[8] = v43;
    v61 = BYTE4(v38);
    *v62 = *v80;
    *&v62[3] = *&v80[3];
    v63 = v42;
    v64 = v39;
    *v65 = *v78;
    *&v65[3] = *&v78[3];
    v66 = v24;
    v67 = v26;
    v68 = v27;
    v69 = v40;
    *v70 = *v76;
    *&v70[3] = *&v76[3];
    v71 = v29;
    v72 = v41;
    v73 = v49;
    v74 = v83;
    result = sub_6AAAC(v60);
    v34 = v57;
    *(a2 + 96) = v56;
    *(a2 + 112) = v34;
    *(a2 + 128) = v58;
    *(a2 + 144) = v59;
    v35 = v53;
    *(a2 + 32) = v52;
    *(a2 + 48) = v35;
    v36 = v55;
    *(a2 + 64) = v54;
    *(a2 + 80) = v36;
    v37 = v51;
    *a2 = v50;
    *(a2 + 16) = v37;
  }

  return result;
}

unint64_t sub_66C80()
{
  result = qword_183568;
  if (!qword_183568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183568);
  }

  return result;
}

unint64_t sub_66CD4()
{
  result = qword_183570;
  if (!qword_183570)
  {
    sub_47A1C(&qword_183560, &qword_129070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183570);
  }

  return result;
}

unint64_t sub_66D38()
{
  result = qword_183578;
  if (!qword_183578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183578);
  }

  return result;
}

uint64_t sub_66D8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_66DE0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_66E24()
{
  result = qword_188E70[0];
  if (!qword_188E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_188E70);
  }

  return result;
}

unint64_t sub_66E78()
{
  result = qword_183590;
  if (!qword_183590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183590);
  }

  return result;
}

unint64_t sub_66ECC()
{
  result = qword_1835A8;
  if (!qword_1835A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1835A8);
  }

  return result;
}

unint64_t sub_66F20()
{
  result = qword_1835C0;
  if (!qword_1835C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1835C0);
  }

  return result;
}

uint64_t sub_66F74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_165E28;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

BOOL sub_66FC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
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
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    v5 = a1;
    v6 = *(a1 + 16);
    v7 = sub_1179E0();
    a1 = v5;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  v9 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a1 + 176);
  v11 = *(a1 + 144);
  v114 = *(a1 + 160);
  v115 = v10;
  v12 = *(a1 + 176);
  v116 = *(a1 + 192);
  v13 = *(a1 + 112);
  v14 = *(a1 + 80);
  v110 = *(a1 + 96);
  v111 = v13;
  v15 = *(a1 + 112);
  v16 = *(a1 + 144);
  v112 = *(a1 + 128);
  v113 = v16;
  v17 = *(a1 + 80);
  v109[0] = *(a1 + 64);
  v109[1] = v17;
  v18 = *(a2 + 176);
  v19 = *(a2 + 144);
  v105 = *(a2 + 160);
  v106 = v18;
  v20 = *(a2 + 176);
  v107 = *(a2 + 192);
  v21 = *(a2 + 112);
  v22 = *(a2 + 80);
  v101 = *(a2 + 96);
  v102 = v21;
  v23 = *(a2 + 112);
  v24 = *(a2 + 144);
  v103 = *(a2 + 128);
  v104 = v24;
  v25 = *(a2 + 80);
  v100[0] = *(a2 + 64);
  v100[1] = v25;
  v26 = *(a1 + 176);
  __src[6] = *(a1 + 160);
  __src[7] = v26;
  __src[8] = *(a1 + 192);
  v27 = *(a1 + 112);
  __src[2] = *(a1 + 96);
  __src[3] = v27;
  v28 = *(a1 + 144);
  __src[4] = *(a1 + 128);
  __src[5] = v28;
  v29 = *(a1 + 80);
  __src[0] = *(a1 + 64);
  __src[1] = v29;
  v30 = *(a2 + 192);
  *(&__src[16] + 8) = v20;
  *(&__src[17] + 8) = v30;
  *(&__src[15] + 8) = v105;
  *(&__src[11] + 8) = v101;
  *(&__src[12] + 8) = v23;
  *(&__src[13] + 8) = v103;
  *(&__src[14] + 8) = v19;
  *(&__src[9] + 8) = v100[0];
  *(&__src[10] + 8) = v22;
  v98[6] = v114;
  v98[7] = v12;
  v98[8] = *(a1 + 192);
  v98[2] = v110;
  v98[3] = v15;
  v98[4] = v112;
  v98[5] = v11;
  v117 = *(a1 + 208);
  v108 = *(a2 + 208);
  LOWORD(__src[9]) = *(a1 + 208);
  WORD4(__src[18]) = *(a2 + 208);
  v31 = a1;
  v99 = *(a1 + 208);
  v98[0] = v109[0];
  v98[1] = v14;
  if (sub_68BD4(v98) != 1)
  {
    v40 = *(v31 + 176);
    v41 = *(v31 + 144);
    v93 = *(v31 + 160);
    v94 = v40;
    v42 = *(v31 + 176);
    v95 = *(v31 + 192);
    v43 = *(v31 + 112);
    v44 = *(v31 + 80);
    v89 = *(v31 + 96);
    v90 = v43;
    v45 = *(v31 + 112);
    v46 = *(v31 + 144);
    v91 = *(v31 + 128);
    v92 = v46;
    v47 = *(v31 + 80);
    v87 = *(v31 + 64);
    v88 = v47;
    v82 = v93;
    v83 = v42;
    v84 = *(v31 + 192);
    v78 = v89;
    v79 = v45;
    v80 = v91;
    v81 = v41;
    v96 = *(v31 + 208);
    v85 = *(v31 + 208);
    v76 = v87;
    v77 = v44;
    v48 = *(a2 + 176);
    __dst[6] = *(a2 + 160);
    __dst[7] = v48;
    __dst[8] = *(a2 + 192);
    LOWORD(__dst[9]) = *(a2 + 208);
    v49 = *(a2 + 112);
    __dst[2] = *(a2 + 96);
    __dst[3] = v49;
    v50 = *(a2 + 144);
    __dst[4] = *(a2 + 128);
    __dst[5] = v50;
    v51 = *(a2 + 80);
    __dst[0] = *(a2 + 64);
    __dst[1] = v51;
    if (sub_68BD4(__dst) == 1)
    {
      v72 = v82;
      v73 = v83;
      v74 = v84;
      v75 = v85;
      v68 = v78;
      v69 = v79;
      v70 = v80;
      v71 = v81;
      v66 = v76;
      v67 = v77;
      sub_479B4(v109, v64, &qword_1835F0, &unk_12B240);
      sub_479B4(v100, v64, &qword_1835F0, &unk_12B240);
      sub_479B4(&v87, v64, &qword_1835F0, &unk_12B240);
      sub_6AAAC(&v66);
LABEL_30:
      memcpy(__dst, __src, 0x12AuLL);
      sub_488C8(__dst, &qword_1837E0, &qword_1268E0);
      return 0;
    }

    v53 = *(a2 + 176);
    v72 = *(a2 + 160);
    v73 = v53;
    v74 = *(a2 + 192);
    v75 = *(a2 + 208);
    v54 = *(a2 + 112);
    v68 = *(a2 + 96);
    v69 = v54;
    v55 = *(a2 + 144);
    v70 = *(a2 + 128);
    v71 = v55;
    v56 = *(a2 + 80);
    v66 = *(a2 + 64);
    v67 = v56;
    sub_479B4(v109, v64, &qword_1835F0, &unk_12B240);
    sub_479B4(v100, v64, &qword_1835F0, &unk_12B240);
    sub_479B4(&v87, v64, &qword_1835F0, &unk_12B240);
    sub_690C0();
    v57 = sub_117160();
    v62[6] = v72;
    v62[7] = v73;
    v62[8] = v74;
    v63 = v75;
    v62[2] = v68;
    v62[3] = v69;
    v62[4] = v70;
    v62[5] = v71;
    v62[0] = v66;
    v62[1] = v67;
    sub_6AAAC(v62);
    v64[6] = v82;
    v64[7] = v83;
    v64[8] = v84;
    v65 = v85;
    v64[2] = v78;
    v64[3] = v79;
    v64[4] = v80;
    v64[5] = v81;
    v64[0] = v76;
    v64[1] = v77;
    sub_6AAAC(v64);
    v58 = *(v31 + 176);
    v72 = *(v31 + 160);
    v73 = v58;
    v74 = *(v31 + 192);
    v75 = *(v31 + 208);
    v59 = *(v31 + 112);
    v68 = *(v31 + 96);
    v69 = v59;
    v60 = *(v31 + 144);
    v70 = *(v31 + 128);
    v71 = v60;
    v61 = *(v31 + 80);
    v66 = *(v31 + 64);
    v67 = v61;
    sub_488C8(&v66, &qword_1835F0, &unk_12B240);
    return (v57 & 1) != 0;
  }

  v32 = *(a2 + 176);
  __dst[6] = *(a2 + 160);
  __dst[7] = v32;
  __dst[8] = *(a2 + 192);
  LOWORD(__dst[9]) = *(a2 + 208);
  v33 = *(a2 + 112);
  __dst[2] = *(a2 + 96);
  __dst[3] = v33;
  v34 = *(a2 + 144);
  __dst[4] = *(a2 + 128);
  __dst[5] = v34;
  v35 = *(a2 + 80);
  __dst[0] = *(a2 + 64);
  __dst[1] = v35;
  if (sub_68BD4(__dst) != 1)
  {
    sub_479B4(v109, &v87, &qword_1835F0, &unk_12B240);
    sub_479B4(v100, &v87, &qword_1835F0, &unk_12B240);
    goto LABEL_30;
  }

  v36 = *(v31 + 176);
  v93 = *(v31 + 160);
  v94 = v36;
  v95 = *(v31 + 192);
  v96 = *(v31 + 208);
  v37 = *(v31 + 112);
  v89 = *(v31 + 96);
  v90 = v37;
  v38 = *(v31 + 144);
  v91 = *(v31 + 128);
  v92 = v38;
  v39 = *(v31 + 80);
  v87 = *(v31 + 64);
  v88 = v39;
  sub_479B4(v109, &v76, &qword_1835F0, &unk_12B240);
  sub_479B4(v100, &v76, &qword_1835F0, &unk_12B240);
  sub_488C8(&v87, &qword_1835F0, &unk_12B240);
  return 1;
}

uint64_t sub_67598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = sub_46F9C(&qword_183858, &qword_126940);
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v40);
  v8 = &v30 - v7;
  v9 = a1[4];
  sub_66DE0(a1, a1[3]);
  sub_6AE88();
  sub_117AF0();
  if (v2)
  {
    return sub_6ACB4(a1);
  }

  v10 = v5;
  LOBYTE(v49[0]) = 0;
  sub_117900();
  v12 = v11;
  LOBYTE(v49[0]) = 1;
  v13 = sub_1178C0();
  v65 = v14 & 1;
  LOBYTE(v49[0]) = 2;
  v39 = sub_1178C0();
  v64 = v15 & 1;
  LOBYTE(v49[0]) = 3;
  v38 = sub_117910();
  LOBYTE(v49[0]) = 4;
  sub_117900();
  v17 = v16;
  LOBYTE(v49[0]) = 5;
  sub_117900();
  v19 = v18;
  sub_46F9C(&qword_183860, &qword_126948);
  LOBYTE(v41) = 6;
  sub_6AEDC();
  sub_117920();
  v20 = v49[0];
  sub_46F9C(&qword_183878, &unk_126950);
  LOBYTE(v41) = 7;
  sub_6AFBC();
  sub_117920();
  v37 = v49[0];
  LOBYTE(v41) = 8;
  sub_6B038();
  v36 = 0;
  sub_1178E0();
  v35 = LOBYTE(v49[0]);
  sub_46F9C(&qword_1835B0, &qword_127DA0);
  LOBYTE(v41) = 9;
  sub_6B08C(&qword_183890);
  sub_1178E0();
  v36 = v49[0];
  v62 = 10;
  v34 = sub_1178D0();
  v22 = v21;
  (*(v10 + 8))(v8, v40);
  v63 = v22 & 1;
  *&v41 = v12;
  *(&v41 + 1) = v17;
  v33 = v13;
  *&v42 = v13;
  LODWORD(v40) = v65;
  BYTE8(v42) = v65;
  *&v43 = v39;
  v31 = v22 & 1;
  v32 = v64;
  BYTE8(v43) = v64;
  v23 = v37;
  *&v44 = v38;
  *(&v44 + 1) = v19;
  *&v45 = v20;
  *(&v45 + 1) = v37;
  *&v46 = 0;
  LOBYTE(v10) = v35;
  BYTE8(v46) = v35;
  v24 = v36;
  v25 = v34;
  *&v47 = v36;
  *(&v47 + 1) = v34;
  v48 = v31;
  sub_6B0F8(&v41, v49);
  sub_6ACB4(a1);
  v49[0] = v12;
  v49[1] = v17;
  v49[2] = v33;
  v50 = v40;
  v51 = v39;
  v52 = v32;
  v53 = v38;
  v54 = v19;
  v55 = v20;
  v56 = v23;
  v57 = 0;
  v58 = v10;
  v59 = v24;
  v60 = v25;
  v61 = v31;
  result = sub_6B130(v49);
  v27 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v27;
  *(a2 + 96) = v47;
  *(a2 + 112) = v48;
  v28 = v42;
  *a2 = v41;
  *(a2 + 16) = v28;
  v29 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v29;
  return result;
}

uint64_t sub_67B58(uint64_t *a1)
{
  v3 = sub_46F9C(&qword_183848, &qword_126938);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_66DE0(a1, v8);
  sub_6ADE0();
  sub_117AF0();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_1178C0();
    v10[13] = 1;
    sub_6AE34();
    sub_1178E0();
    (*(v4 + 8))(v7, v3);
  }

  sub_6ACB4(a1);
  return v8;
}

uint64_t sub_67D20(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_165FA0;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void *sub_67D6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_46F9C(&qword_183840, &qword_126930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v22 = a1;
  sub_66DE0(a1, v10);
  sub_6AD5C();
  sub_117AF0();
  if (v2)
  {
    sub_6ACB4(v22);
  }

  else
  {
    v12 = v6;
    v21 = a2;
    LOBYTE(v24) = 0;
    v13 = v5;
    sub_117900();
    v15 = v14;
    v55 = 1;
    sub_6AC5C();
    sub_1178E0();
    v16 = v12;
    v76 = v60;
    v77 = v61;
    v78 = v62;
    v79 = v63;
    v72 = v56;
    v73 = v57;
    v74 = v58;
    v75 = v59;
    v46 = 2;
    sub_1178E0();
    v68 = v51;
    v69 = v52;
    v70 = v53;
    v71 = v54;
    v64 = v47;
    v65 = v48;
    v66 = v49;
    v67 = v50;
    sub_46F9C(&qword_183800, &qword_1268F8);
    LOBYTE(v23[0]) = 3;
    sub_6ABD8();
    sub_1178E0();
    v17 = v24;
    LOBYTE(v23[0]) = 4;
    sub_1178E0();
    v18 = v24;
    v44 = 5;
    sub_1178E0();
    (*(v16 + 8))(v9, v13);
    *&v23[9] = v76;
    *&v23[11] = v77;
    *&v23[13] = v78;
    *&v23[1] = v72;
    *&v23[3] = v73;
    *&v23[5] = v74;
    *&v23[7] = v75;
    *&v23[23] = v67;
    *&v23[21] = v66;
    *&v23[19] = v65;
    *&v23[17] = v64;
    *&v23[29] = v70;
    *&v23[27] = v69;
    v19 = v45;
    v23[0] = v15;
    LOBYTE(v23[15]) = v79;
    v23[16] = v17;
    LOBYTE(v23[31]) = v71;
    *&v23[25] = v68;
    v23[32] = v18;
    v23[33] = v45;
    sub_6887C(v23, &v24);
    sub_6ACB4(v22);
    v24 = v15;
    v29 = v76;
    v30 = v77;
    v31 = v78;
    v25 = v72;
    v26 = v73;
    v27 = v74;
    v28 = v75;
    v40 = v70;
    v39 = v69;
    v38 = v68;
    v37 = v67;
    v36 = v66;
    v35 = v65;
    v32 = v79;
    v33 = v17;
    v41 = v71;
    v34 = v64;
    v42 = v18;
    v43 = v19;
    sub_6ADB0(&v24);
    return memcpy(v21, v23, 0x110uLL);
  }
}

unint64_t sub_68340()
{
  result = qword_1835D8;
  if (!qword_1835D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1835D8);
  }

  return result;
}

uint64_t sub_68394(uint64_t *a1)
{
  v2 = sub_46F9C(&qword_1835D0, &qword_1259C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v41 - v4;
  v6 = sub_117800();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_46F9C(&qword_1837F8, &qword_1268F0);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v14 = a1[4];
  v15 = sub_66DE0(a1, a1[3]);
  sub_6AB84();
  v16 = v47;
  sub_117AF0();
  if (v16)
  {
    sub_6ACB4(a1);
    return v15;
  }

  v47 = v9;
  v17 = v45;
  sub_46F9C(&qword_183800, &qword_1268F8);
  sub_6ABD8();
  sub_1178E0();
  v18 = v10;
  v20 = v5;
  sub_1177F0();
  v21 = v17;
  v22 = v5;
  v23 = v6;
  if ((*(v17 + 48))(v22, 1, v6) == 1)
  {
    (*(v46 + 8))(v13, v18);
    sub_488C8(v20, &qword_1835D0, &qword_1259C8);
    v24 = a1;
LABEL_23:
    v15 = v50;
    sub_6ACB4(v24);
    return v15;
  }

  v43 = v13;
  v25 = v47;
  (*(v17 + 32))(v47, v20, v23);
  v24 = a1;
  v26 = a1[3];
  v27 = a1[4];
  sub_66DE0(v24, v26);
  v28 = sub_117AE0();
  if (!*(v28 + 16) || (v29 = sub_64EA4(v25), (v30 & 1) == 0))
  {

    (*(v21 + 8))(v25, v23);
    (*(v46 + 8))(v43, v18);
    goto LABEL_23;
  }

  sub_6AD00(*(v28 + 56) + 32 * v29, v49);

  sub_46F9C(&qword_183818, &qword_126900);
  v31 = swift_dynamicCast();
  v32 = v46;
  if ((v31 & 1) == 0)
  {
LABEL_20:
    (*(v21 + 8))(v25, v23);
    (*(v32 + 8))(v43, v18);
    goto LABEL_23;
  }

  v33 = v48;
  v34 = v50;
  if (!v50)
  {

    goto LABEL_20;
  }

  v44 = *(v48 + 16);
  if (!v44)
  {

LABEL_22:
    (*(v21 + 8))(v25, v23);
    (*(v32 + 8))(v43, v18);
    v50 = v34;
    goto LABEL_23;
  }

  v42 = v18;
  v35 = 0;
  v36 = 112;
  while (1)
  {
    v37 = v33;
    v38 = *(v33 + 8 * v35 + 32);
    v39 = v38;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_660F4(v34);
      v34 = result;
    }

    if (v35 >= *(v34 + 16))
    {
      break;
    }

    ++v35;
    v40 = *(v34 + v36);
    *(v34 + v36) = v38;

    v36 += 120;
    v33 = v37;
    if (v44 == v35)
    {

      v32 = v46;
      v25 = v47;
      v18 = v42;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_688B4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1660C0;
  v6._object = a2;
  v4 = sub_117890(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void *sub_68900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_46F9C(&qword_1837E8, &qword_1268E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v24 = a1;
  sub_66DE0(a1, v10);
  sub_6AADC();
  sub_117AF0();
  if (v2)
  {
    return sub_6ACB4(v24);
  }

  v12 = v6;
  LOBYTE(v26[0]) = 0;
  v13 = v5;
  v14 = sub_117910();
  LOBYTE(v26[0]) = 1;
  v23 = sub_117910();
  LOBYTE(v26[0]) = 2;
  sub_117900();
  v16 = v15;
  LOBYTE(v26[0]) = 3;
  v22 = sub_117910();
  v25[0] = 4;
  sub_6AB30();
  sub_117920();
  v17 = v26[0];
  v18 = v26[1];
  v27 = 5;
  sub_691C4();
  sub_117920();
  (*(v12 + 8))(v9, v13);
  memcpy(v25, v26, sizeof(v25));
  sub_6ACB4(v24);
  v19 = v22;
  v20 = v23;
  *a2 = v14;
  a2[1] = v20;
  a2[2] = v16;
  a2[3] = v19;
  a2[4] = v17;
  a2[5] = v18;
  return memcpy(a2 + 6, v25, 0x110uLL);
}

uint64_t sub_68BD4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_68BEC(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
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

uint64_t sub_68CFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_46F9C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_68D84(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_68DBC(uint64_t a1)
{
  if (a1 > 400)
  {
    if (a1 <= 502)
    {
      if (a1 <= 405)
      {
        if (a1 == 401)
        {
          return 11;
        }

        if (a1 == 402)
        {
          return 12;
        }
      }

      else
      {
        switch(a1)
        {
          case 406:
            return 13;
          case 501:
            return 14;
          case 502:
            return 15;
        }
      }
    }

    else if (a1 > 506)
    {
      switch(a1)
      {
        case 507:
          return 19;
        case 508:
          return 20;
        case 601:
          return 21;
      }
    }

    else
    {
      switch(a1)
      {
        case 503:
          return 16;
        case 505:
          return 17;
        case 506:
          return 18;
      }
    }

    return 22;
  }

  if (a1 > 203)
  {
    if (a1 > 300)
    {
      switch(a1)
      {
        case 301:
          return 8;
        case 302:
          return 9;
        case 306:
          return 10;
      }
    }

    else
    {
      switch(a1)
      {
        case 204:
          return 5;
        case 205:
          return 6;
        case 206:
          return 7;
      }
    }

    return 22;
  }

  if (a1 <= 200)
  {
    if (a1 == 100)
    {
      return 0;
    }

    if (a1 == 200)
    {
      return 1;
    }

    return 22;
  }

  if (a1 == 201)
  {
    return 2;
  }

  if (a1 == 202)
  {
    return 3;
  }

  return 4;
}

unint64_t sub_68F60()
{
  result = qword_183600;
  if (!qword_183600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183600);
  }

  return result;
}

unint64_t sub_68FB8()
{
  result = qword_183608;
  if (!qword_183608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183608);
  }

  return result;
}

unint64_t sub_69010()
{
  result = qword_183610;
  if (!qword_183610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183610);
  }

  return result;
}

unint64_t sub_69068()
{
  result = qword_183618;
  if (!qword_183618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183618);
  }

  return result;
}

unint64_t sub_690C0()
{
  result = qword_183620;
  if (!qword_183620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183620);
  }

  return result;
}

unint64_t sub_69114(uint64_t a1)
{
  result = sub_6913C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_6913C()
{
  result = qword_183628;
  if (!qword_183628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183628);
  }

  return result;
}

unint64_t sub_6919C(uint64_t a1)
{
  result = sub_691C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_691C4()
{
  result = qword_183630;
  if (!qword_183630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183630);
  }

  return result;
}

unint64_t sub_69218(uint64_t a1)
{
  result = sub_69240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_69240()
{
  result = qword_183638;
  if (!qword_183638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183638);
  }

  return result;
}

unint64_t sub_69294()
{
  result = qword_183640;
  if (!qword_183640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183640);
  }

  return result;
}

unint64_t sub_692E8(uint64_t a1)
{
  result = sub_69294();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_6933C()
{
  result = qword_183648;
  if (!qword_183648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183648);
  }

  return result;
}

unint64_t sub_69390()
{
  result = qword_183650;
  if (!qword_183650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183650);
  }

  return result;
}

unint64_t sub_693E4(uint64_t a1)
{
  result = sub_6940C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_6940C()
{
  result = qword_183658;
  if (!qword_183658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183658);
  }

  return result;
}

uint64_t sub_6948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_694C8()
{
  result = qword_183660;
  if (!qword_183660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183660);
  }

  return result;
}

unint64_t sub_6951C()
{
  result = qword_183668;
  if (!qword_183668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183668);
  }

  return result;
}

unint64_t sub_69574()
{
  result = qword_183670;
  if (!qword_183670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_183670);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppQualifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppQualifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SuggestionType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_698A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_698DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_69924(uint64_t result, int a2, int a3)
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
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_6999C(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_699C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_69A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Suggestion(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Suggestion(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 10))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 9);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for Suggestion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_69B3C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_69B5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_69BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_69C6C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_69CC8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_69D30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 320))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_69D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 320) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_69E44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_69E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}
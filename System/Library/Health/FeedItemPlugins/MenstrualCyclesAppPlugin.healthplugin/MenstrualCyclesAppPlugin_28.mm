id sub_29E179684()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedShadowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E179770()
{
  v1 = [v0 daySummary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 intermenstrualBleeding];

  return v3;
}

uint64_t sub_29E1797CC()
{
  sub_29E2C4A04();
  sub_29E2C34B4();

  return sub_29E2C4A54();
}

uint64_t sub_29E179904()
{
  sub_29E2C34B4();
}

uint64_t sub_29E179A18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E179B24();
  *a1 = result;
  return result;
}

void sub_29E179A48(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006465646E4574;
  v4 = 0x6F4E646F69726570;
  v5 = 0x800000029E2EB230;
  v6 = 0xD000000000000010;
  v7 = 0xE700000000000000;
  v8 = 0x7373696D736964;
  if (v2 != 4)
  {
    v8 = 0xD000000000000017;
    v7 = 0x800000029E2EB190;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000029E2EB200;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000017;
    v3 = 0x800000029E2EB1E0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_29E179B24()
{
  v0 = sub_29E2C47E4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_29E179B70(uint64_t a1, uint64_t a2)
{
  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_29E2C4914();

  if (v6)
  {
    goto LABEL_8;
  }

  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == a1 && v8 == a2)
  {

LABEL_16:

    return 4;
  }

  v10 = sub_29E2C4914();

  if (v10)
  {
    goto LABEL_16;
  }

  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == a1 && v11 == a2)
  {

LABEL_24:

    return 1;
  }

  v13 = sub_29E2C4914();

  if (v13)
  {
    goto LABEL_24;
  }

  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == a1 && v14 == a2)
  {

LABEL_29:

    return 2;
  }

  v15 = sub_29E2C4914();

  if (v15)
  {
    goto LABEL_29;
  }

  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == a1 && v16 == a2)
  {

LABEL_34:

    return 3;
  }

  v17 = sub_29E2C4914();

  if (v17)
  {
    goto LABEL_34;
  }

  if (_sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() == a1 && v18 == a2)
  {

LABEL_39:

    return 5;
  }

  v19 = sub_29E2C4914();

  if (v19)
  {
    goto LABEL_39;
  }

  return sub_29E179B24();
}

unint64_t sub_29E179E50()
{
  result = qword_2A181E1C8;
  if (!qword_2A181E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E1C8);
  }

  return result;
}

id sub_29E179EA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2C0514();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E17AE7C();
  *&v9 = MEMORY[0x2A1C7C4A8](v8 - 8).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 hasProjectionKind])
  {
    result = [a1 projectionKind];
    if (result)
    {
      v13 = sub_29E17ABE4(result);
      if (v13 == 2)
      {
        goto LABEL_4;
      }

      v19 = v13;
      if (![a1 hasProjection])
      {
        v21 = 0;
        goto LABEL_11;
      }

      result = [a1 projection];
      if (result)
      {
        v20 = result;
        sub_29DE9408C(0, &qword_2A1A62790);
        v21 = sub_29E17A408(v20);
LABEL_11:
        sub_29DE9408C(0, &qword_2A1A5E0D8);
        sub_29E17AF38();
        sub_29E2BF034();

        *a2 = v21;
        *(a2 + 8) = v19 & 1;
        v22 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
        sub_29E17AFA0(v11, a2 + *(v22 + 24));
        return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_4:
  sub_29E2C04B4();
  v14 = sub_29E2C0504();
  v15 = sub_29E2C3A14();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_29DFAA104(0xD000000000000031, 0x800000029E303E30, &v24);
    _os_log_impl(&dword_29DE74000, v14, v15, "[%{public}s] Unable to get valid projectionKind from HKCodableMenstrualCyclesProjectionHighlightTileViewModel", v16, 0xCu);
    sub_29DE93B3C(v17);
    MEMORY[0x29ED82140](v17, -1, -1);
    MEMORY[0x29ED82140](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v18 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

id sub_29E17A218(void **a1)
{
  sub_29E17AE7C();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v6 = result;
    v7 = *a1;
    if (*a1)
    {
      sub_29DE9408C(0, &qword_2A1A5E108);
      v8 = v7;
      v9 = sub_29E17AA38(v8);
      [v6 setProjection_];
    }

    result = [objc_allocWithZone(MEMORY[0x29EDC44F0]) init];
    if (result)
    {
      v10 = result;
      v11 = sub_29E2C33A4();

      [v10 setKind_];

      [v6 setProjectionKind_];
      v12 = type metadata accessor for SharedProjectionHighlightTileViewModelContextData();
      sub_29E17AED4(a1 + *(v12 + 24), v4);
      sub_29E17AF38();
      sub_29E2BF044();
      sub_29DF46420(a1);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_29E17A408(void *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 hasStartMean] || !objc_msgSend(a1, sel_hasStartStandardDeviation) || !objc_msgSend(a1, sel_hasEndMean) || !objc_msgSend(a1, sel_hasEndStandardDeviation) || !objc_msgSend(a1, sel_hasAllDays) || !objc_msgSend(a1, sel_hasIsPartiallyLogged) || !objc_msgSend(a1, sel_hasDaysOffsetFromCalendarMethod))
  {
    goto LABEL_14;
  }

  result = [a1 allDays];
  if (result)
  {
    v8 = result;
    if ([result hasDayIndex] && objc_msgSend(v8, sel_hasDuration))
    {
      v9 = [v8 dayIndex];
      v10 = [v8 duration];

      if ([a1 hasPredictionPrimarySource])
      {
        v11 = [a1 predictionPrimarySource];
      }

      else
      {
        v11 = 1;
      }

      v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      [a1 startMean];
      v21 = v20;
      [a1 startStandardDeviation];
      v23 = v22;
      [a1 endMean];
      v25 = v24;
      [a1 endStandardDeviation];
      v27 = [v19 initWithStartMean:v9 startStandardDeviation:v10 endMean:objc_msgSend(a1 endStandardDeviation:sel_isPartiallyLogged) allDays:objc_msgSend(a1 partiallyLogged:sel_daysOffsetFromCalendarMethod) daysOffsetFromCalendarMethod:v11 predictionPrimarySource:{v21, v23, v25, v26}];

      if (v27)
      {

        return v27;
      }

      return 0;
    }

LABEL_14:
    sub_29E2C04B4();
    v12 = sub_29E2C0504();
    v13 = sub_29E2C3A14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136446210;
      v16 = sub_29E2C4AE4();
      v18 = sub_29DFAA104(v16, v17, &v29);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_29DE74000, v12, v13, "[%{public}s] Unable to get valid HKMCProjection from HKCodableMenstrualCyclesProjection", v14, 0xCu);
      sub_29DE93B3C(v15);
      MEMORY[0x29ED82140](v15, -1, -1);
      MEMORY[0x29ED82140](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  __break(1u);
  return result;
}

id (*sub_29E17A810(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasLatestSupportedVersion];
  return sub_29E17A864;
}

id (*sub_29E17A8A0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 latestSupportedVersion];
  return sub_29E17A8F4;
}

id (*sub_29E17A940(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 hasMinimumSupportedVersion];
  return sub_29E17A994;
}

id (*sub_29E17A9D0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 minimumSupportedVersion];
  return sub_29E17AA24;
}

id sub_29E17AA38(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    [a1 startMean];
    [v3 setStartMean_];
    [a1 startStandardDeviation];
    [v3 setStartStandardDeviation_];
    [a1 endMean];
    [v3 setEndMean_];
    [a1 endStandardDeviation];
    [v3 setEndStandardDeviation_];
    sub_29DE9408C(0, &qword_2A1A5E128);
    v4 = [a1 allDays];
    [a1 allDays];
    v5 = MEMORY[0x29ED80620](v4);
    [v3 setAllDays_];

    [v3 setIsPartiallyLogged_];
    [v3 setDaysOffsetFromCalendarMethod_];
    [v3 setPredictionPrimarySource_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E17ABE4(void *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x2A1C7C4A8](v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 hasKind])
  {
    goto LABEL_4;
  }

  result = [a1 kind];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();

  v9 = sub_29E2C47E4();

  if (v9 < 2)
  {
    v14 = sub_29E2C47E4();

    if (v14 == 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14)
    {
      return v15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_4:
    sub_29E2C04B4();
    v10 = sub_29E2C0504();
    v11 = sub_29E2C3A14();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_29DFAA104(0x697463656A6F7250, 0xEE00646E694B6E6FLL, &v17);
      _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Unable to get valid ProjectionKind from HKCodableMenstrualCyclesProjectionKind", v12, 0xCu);
      sub_29DE93B3C(v13);
      MEMORY[0x29ED82140](v13, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 2;
  }
}

void sub_29E17AE7C()
{
  if (!qword_2A1A61668)
  {
    sub_29E2BD844();
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A61668);
    }
  }
}

uint64_t sub_29E17AED4(uint64_t a1, uint64_t a2)
{
  sub_29E17AE7C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E17AF38()
{
  result = qword_2A1A5E0E0;
  if (!qword_2A1A5E0E0)
  {
    sub_29DE9408C(255, &qword_2A1A5E0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A5E0E0);
  }

  return result;
}

uint64_t sub_29E17AFA0(uint64_t a1, uint64_t a2)
{
  sub_29E17AE7C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_29E17B004()
{
  v0 = sub_29E2BF204();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v4 = MEMORY[0x29ED80230](*MEMORY[0x29EDBA858]);
  sub_29E2BF214();

  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    v7[3] = &type metadata for InternalKaliLiveOnSettingsComponent;
    v7[4] = sub_29E17B508();
    v7[0] = 0xD000000000000023;
    v7[1] = 0x800000029E2E24C0;
    sub_29E2BF234();
    (*(v1 + 104))(v3, *MEMORY[0x29EDC2618], v0);
    sub_29E2BF354();
    sub_29E2BF7F4();

    (*(v1 + 8))(v3, v0);
    return sub_29DE93B3C(v7);
  }

  return result;
}

uint64_t sub_29E17B1EC(void *a1)
{
  sub_29E17D50C(v7);
  v6[4] = v7[0];
  v6[5] = v7[1];
  v6[6] = v7[2];
  v6[7] = v7[3];
  sub_29E17D6F4();
  v3 = objc_allocWithZone(v2);
  sub_29E17D7A4(v7, v6);
  v4 = sub_29E2C1C34();
  [a1 showViewController:v4 sender:0];

  return sub_29E17D7DC(v7);
}

uint64_t sub_29E17B29C()
{
  type metadata accessor for TextItemCell();
  sub_29E17DF78(&qword_2A181CBF8, 255, type metadata accessor for TextItemCell);
  return sub_29E2C3B74();
}

uint64_t sub_29E17B310()
{
  v0 = sub_29E2BEE54();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BEE04();
  v4 = sub_29E2BEE44();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E17B45C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C60910](a1, WitnessTable);
}

unint64_t sub_29E17B508()
{
  result = qword_2A181E1D8;
  if (!qword_2A181E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E1D8);
  }

  return result;
}

id sub_29E17B560()
{
  v1 = MEMORY[0x29EDBCB00];
  sub_29E17EEE8(0, &qword_2A181E2F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDBCB00]);
  sub_29E2C27D4();
  sub_29E2C27D4();
  sub_29E17EEE8(0, &qword_2A181E2F8, MEMORY[0x29EDC9AD8], v1);
  sub_29E2C27D4();
  result = [*v0 _rollingBaselineConfiguration];
  if (result)
  {
    v3 = result;
    v4 = [result options];

    return [objc_allocWithZone(MEMORY[0x29EDBAD58]) initWithMinimumSampleCount:*&v5 maximumSampleCount:*&v5 maximumWindowDuration:v4 options:v5];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E17B69C(void *a1)
{
  v3 = [a1 minimumSampleCount];
  v10 = *(v1 + 8);
  *&v9 = v3;
  v4 = MEMORY[0x29EDBCB00];
  sub_29E17EEE8(0, &qword_2A181E2F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDBCB00]);
  sub_29E2C27E4();
  v5 = [a1 maximumSampleCount];
  v10 = *(v1 + 24);
  *&v9 = v5;
  sub_29E2C27E4();
  [a1 maximumWindowDuration];
  v9 = *(v1 + 40);
  v10 = v9;
  v8[1] = v6;
  v11 = *(&v9 + 1);
  sub_29E17EE04(&v11, v8, sub_29E17EE6C);
  sub_29E17EEE8(0, &qword_2A181E2F8, MEMORY[0x29EDC9AD8], v4);
  sub_29E2C27E4();

  return sub_29E17EF38(&v10);
}

void sub_29E17B7E0()
{
  v1 = v0;
  v2 = 0;
  v14 = MEMORY[0x29EDCA190];
LABEL_2:
  if (v2 <= 0xB)
  {
    v3 = 11;
  }

  else
  {
    v3 = v2;
  }

  while (v2 != 11)
  {
    if (v3 == v2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v4 = qword_2A24AF6F8[v2 + 4];
    v5 = MEMORY[0x29EDBCB00];
    sub_29E17EEE8(0, &qword_2A181E2F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDBCB00]);
    sub_29E2C27D4();
    sub_29E2C27D4();
    sub_29E17EEE8(0, &qword_2A181E2F8, MEMORY[0x29EDC9AD8], v5);
    sub_29E2C27D4();
    v6 = [*v1 _rollingBaselineConfiguration];
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v6;
    ++v2;
    v8 = [v6 options];

    v9 = [objc_allocWithZone(MEMORY[0x29EDBAD58]) initWithMinimumSampleCount:*&v15 maximumSampleCount:*&v15 maximumWindowDuration:v8 options:v15];
    v10 = [v9 maximumSampleCount];

    if (v10 >= v4)
    {
      v11 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E181994(0, *(v14 + 16) + 1, 1);
        v11 = v14;
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_29E181994((v12 > 1), v13 + 1, 1);
        v11 = v14;
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11;
      *(v11 + 8 * v13 + 32) = v4;
      goto LABEL_2;
    }
  }
}

void sub_29E17BA10()
{
  v1 = v0;
  v2 = 0;
  v14 = MEMORY[0x29EDCA190];
LABEL_2:
  if (v2 <= 9)
  {
    v3 = 9;
  }

  else
  {
    v3 = v2;
  }

  while (v2 != 9)
  {
    if (v3 == v2)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v4 = qword_2A24AF770[v2 + 4];
    v5 = MEMORY[0x29EDBCB00];
    sub_29E17EEE8(0, &qword_2A181E2F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDBCB00]);
    sub_29E2C27D4();
    sub_29E2C27D4();
    sub_29E17EEE8(0, &qword_2A181E2F8, MEMORY[0x29EDC9AD8], v5);
    sub_29E2C27D4();
    v6 = [*v1 _rollingBaselineConfiguration];
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v6;
    ++v2;
    v8 = [v6 options];

    v9 = [objc_allocWithZone(MEMORY[0x29EDBAD58]) initWithMinimumSampleCount:*&v15 maximumSampleCount:*&v15 maximumWindowDuration:v8 options:v15];
    v10 = [v9 minimumSampleCount];

    if (v4 >= v10)
    {
      v11 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E181994(0, *(v14 + 16) + 1, 1);
        v11 = v14;
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_29E181994((v12 > 1), v13 + 1, 1);
        v11 = v14;
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11;
      *(v11 + 8 * v13 + 32) = v4;
      goto LABEL_2;
    }
  }
}

uint64_t sub_29E17BC40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  sub_29E17E928();
  v4 = v3;
  v37 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v32 - v8;
  sub_29E17E254();
  v11 = v10;
  v35 = *(v10 - 8);
  v12 = v35;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v17 = &v32 - v16;
  sub_29E2C1B34();
  v43 = sub_29E2C2274();
  v44 = v18;
  v45 = v19 & 1;
  v46 = v20;
  sub_29E2C1B34();
  v39 = sub_29E2C2274();
  v40 = v21;
  v41 = v22 & 1;
  v42 = v23;
  v38 = a1;
  sub_29E17DF14(0, &qword_2A181E240, sub_29E17E2E8, MEMORY[0x29EDBCC28]);
  sub_29E17EC24();
  v34 = v17;
  sub_29E2C29E4();
  sub_29E17E98C();
  sub_29E17DF78(&qword_2A181E308, 255, sub_29E17E98C);
  sub_29E2C29F4();
  v24 = *(v12 + 16);
  v33 = v14;
  v24(v14, v17, v11);
  v25 = *(v37 + 16);
  v26 = v6;
  v25(v6, v9, v4);
  v27 = v36;
  v24(v36, v14, v11);
  sub_29E17E1E4();
  v25(&v27[*(v28 + 48)], v26, v4);
  v29 = *(v37 + 8);
  v29(v9, v4);
  v30 = *(v35 + 8);
  v30(v34, v11);
  v29(v26, v4);
  return (v30)(v33, v11);
}

uint64_t sub_29E17C054@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  sub_29DED5598();
  v61 = v3;
  v60 = *(v3 - 1);
  MEMORY[0x2A1C7C4A8](v3);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E17E89C();
  v59 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v73 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v58 = &v55 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v71 = &v55 - v10;
  sub_29E17E500();
  v65 = v11;
  v64 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v72 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v67 = &v55 - v14;
  sub_29E17E370();
  v63 = v15;
  v62 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v74 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v70 = &v55 - v18;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v55 - v20;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v55 - v23;
  v69 = sub_29E2C1B34();
  v55 = v25;
  v79 = *(a1 + 8);
  v56 = MEMORY[0x29EDBCB00];
  sub_29E17EEE8(0, &qword_2A181E2F0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDBCB00]);
  sub_29E2C27F4();
  v77 = a1;
  sub_29E17E430();
  sub_29E17E7EC(&qword_2A181E268, sub_29E17E430);
  v68 = v24;
  sub_29E2C2894();
  sub_29E2C1B34();
  v79 = *(a1 + 24);
  sub_29E2C27F4();
  v76 = a1;
  v69 = v21;
  sub_29E2C2894();
  sub_29E2C1B34();
  v79 = *(a1 + 40);
  sub_29E17EEE8(0, &qword_2A181E2F8, MEMORY[0x29EDC9AD8], v56);
  sub_29E2C27F4();
  v75 = a1;
  sub_29E17E5C0();
  sub_29E17E7EC(&qword_2A181E298, sub_29E17E5C0);
  v26 = v57;
  v27 = v67;
  sub_29E2C2894();
  sub_29E2C1B34();
  v28 = swift_allocObject();
  v29 = *(a1 + 16);
  v28[1] = *a1;
  v28[2] = v29;
  v30 = *(a1 + 48);
  v28[3] = *(a1 + 32);
  v28[4] = v30;
  sub_29E17D7A4(a1, &v78);
  sub_29E2C2844();
  v31 = sub_29E17B560();
  v32 = [*a1 _rollingBaselineConfiguration];
  if (v32)
  {
    v33 = v32;
    sub_29DE9408C(0, &qword_2A181E2D8);
    v34 = sub_29E2C40D4();
  }

  else
  {
    v34 = 0;
  }

  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = v34 & 1;
  v37 = v58;
  (*(v60 + 32))(v58, v26, v61);
  v38 = (v37 + *(v59 + 36));
  *v38 = KeyPath;
  v38[1] = sub_29E12FF1C;
  v38[2] = v36;
  v39 = v71;
  sub_29E17ED44(v37, v71);
  v40 = v62;
  v41 = *(v62 + 16);
  v42 = v70;
  v43 = v63;
  v41(v70, v68, v63);
  v41(v74, v69, v43);
  v44 = v64;
  v61 = *(v64 + 16);
  v45 = v27;
  v46 = v65;
  v61(v72, v45, v65);
  sub_29E17EE04(v39, v73, sub_29E17E89C);
  v47 = v66;
  v41(v66, v42, v43);
  sub_29E17E2E8();
  v49 = v48;
  v41(&v47[*(v48 + 48)], v74, v43);
  v50 = v72;
  v61(&v47[*(v49 + 64)], v72, v46);
  v51 = v73;
  sub_29E17EE04(v73, &v47[*(v49 + 80)], sub_29E17E89C);
  sub_29E17EDA8(v71);
  v52 = *(v44 + 8);
  v52(v67, v46);
  v53 = *(v40 + 8);
  v53(v69, v43);
  v53(v68, v43);
  sub_29E17EDA8(v51);
  v52(v50, v46);
  v53(v74, v43);
  return (v53)(v70, v43);
}

uint64_t sub_29E17C9F0(uint64_t a1, void (*a2)(void))
{
  a2();
  swift_getKeyPath();
  sub_29E17EEE8(0, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
  sub_29E17E6E0(0, &qword_2A181E260);
  sub_29DF9D350();
  swift_getOpaqueTypeConformance2();
  return sub_29E2C29A4();
}

uint64_t sub_29E17CB18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E2C1B24();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = *a1;
  sub_29E2C1B14();
  sub_29E2C1B04();
  sub_29E2C1AE4();
  sub_29E2C1B04();
  sub_29E2C1B44();
  result = sub_29E2C2274();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = v5;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_29E17CC30(_OWORD *a1)
{
  v8[8] = sub_29E17EFB8();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v4 = a1[3];
  v2[3] = a1[2];
  v2[4] = v4;
  sub_29E17D7A4(a1, v8);
  sub_29E17DF14(0, &qword_2A181E280, MEMORY[0x29EDB9950], MEMORY[0x29EDC9A40]);
  v5 = MEMORY[0x29EDC9AD8];
  v6 = MEMORY[0x29EDC9AF8];
  sub_29E17E6E0(0, &qword_2A181E288);
  sub_29E17E764();
  sub_29E17DF78(&qword_2A1819120, 255, MEMORY[0x29EDB9950]);
  v8[0] = MEMORY[0x29EDBCA18];
  v8[1] = v5;
  v8[2] = MEMORY[0x29EDBCA10];
  v8[3] = v6;
  swift_getOpaqueTypeConformance2();
  return sub_29E2C29A4();
}

void sub_29E17CDE8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 56);
  v4 = sub_29E2BC524();
  v5 = [v3 stringFromDateComponents_];

  if (v5)
  {
    v6 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v8 = v7;

    v18 = v6;
    v19 = v8;
    sub_29DE9DE68();
    v9 = sub_29E2C2294();
    v11 = v10;
    LOBYTE(v8) = v12;
    v14 = v13;
    v15 = sub_29E2BC524();
    [v15 hk_approximateDuration];
    v17 = v16;

    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v8 & 1;
    *(a2 + 24) = v14;
    *(a2 + 32) = v17;
    *(a2 + 40) = 1;
  }

  else
  {
    __break(1u);
  }
}

id sub_29E17CEDC(id *a1)
{
  result = [*a1 _rollingBaselineConfiguration];
  if (result)
  {
    return sub_29E17B69C(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E17CF20()
{
  sub_29E17DF14(0, &qword_2A181E2B8, MEMORY[0x29EDC2900], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &v8 - v1;
  sub_29E2C1B34();
  v3 = *MEMORY[0x29EDBA760];
  v4 = objc_allocWithZone(MEMORY[0x29EDBABE8]);
  v5 = v3;
  [v4 init];
  sub_29E2BF614();
  v6 = sub_29E2BF624();
  (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
  sub_29E17EA3C();
  return sub_29E2C1604();
}

void sub_29E17D0D4()
{
  sub_29E17E150();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v16 = *v0;
  v17 = v6;
  v7 = v0[3];
  v18 = v0[2];
  v19 = v7;
  v13 = &v16;
  sub_29E17DF14(0, &qword_2A181E228, sub_29E17E1E4, MEMORY[0x29EDBCC28]);
  sub_29E17EB18();
  sub_29E2C2184();
  v8 = sub_29E17B560();
  v15 = v8;
  v9 = swift_allocObject();
  v10 = v17;
  v9[1] = v16;
  v9[2] = v10;
  v11 = v19;
  v9[3] = v18;
  v9[4] = v11;
  sub_29E17D7A4(&v16, v14);
  sub_29DE9408C(0, &qword_2A181E2D8);
  sub_29E17DF78(&qword_2A181E2E0, 255, sub_29E17E150);
  sub_29E17EBB4();
  sub_29E2C2594();

  (*(v3 + 8))(v5, v2);
}

void sub_29E17D30C(void *a1)
{
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = a1;
  v7 = sub_29E2C0504();
  v8 = sub_29E2C3A34();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29E100194();
    v11 = sub_29E2C3424();
    v13 = sub_29DFAA104(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_29DE74000, v7, v8, "[%{public}s] Showing the LiveOn dashboard", v9, 0xCu);
    sub_29DE93B3C(v10);
    MEMORY[0x29ED82140](v10, -1, -1);
    MEMORY[0x29ED82140](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v14 = objc_allocWithZone(type metadata accessor for InternalLiveOnSettingsViewController());
  v15 = sub_29E013578(0);
  [v6 showViewController:v15 sender:0];
}

__n128 sub_29E17D50C@<Q0>(uint64_t a1@<X8>)
{
  sub_29DE9408C(0, &qword_2A1A5E1F0);
  v2 = *MEMORY[0x29EDBA858];
  v3 = MEMORY[0x29ED80230]();
  v4 = v2;
  v5 = MEMORY[0x29ED80230]();
  v6 = HKRollingBaselineConfigurationForQuantityType();

  [v6 minimumSampleCount];
  sub_29E2C27C4();
  v7 = MEMORY[0x29ED80230](v4);
  v8 = HKRollingBaselineConfigurationForQuantityType();

  [v8 maximumSampleCount];
  sub_29E2C27C4();
  v9 = MEMORY[0x29ED80230](v4);
  v10 = HKRollingBaselineConfigurationForQuantityType();

  [v10 maximumWindowDuration];
  sub_29E2C27C4();
  v11 = [objc_allocWithZone(MEMORY[0x29EDB9F70]) init];
  [v11 setUnitsStyle_];
  *a1 = v3;
  result = v13;
  *(a1 + 24) = v13;
  *(a1 + 8) = v13;
  *(a1 + 40) = v13;
  *(a1 + 56) = v11;
  return result;
}

void sub_29E17D6F4()
{
  if (!qword_2A181E1E0)
  {
    sub_29E17D750();
    v0 = sub_29E2C1C44();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E1E0);
    }
  }
}

unint64_t sub_29E17D750()
{
  result = qword_2A181E1E8;
  if (!qword_2A181E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E1E8);
  }

  return result;
}

uint64_t sub_29E17D80C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29E17D854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E17D8FC()
{
  v0 = sub_29E2C08B4();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v21 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29E2BCC24();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9E90];
  sub_29E17DF14(0, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E2BEBB4();
  v7 = swift_allocObject();
  v20 = xmmword_29E2CAB20;
  *(v7 + 16) = xmmword_29E2CAB20;
  sub_29E17DF14(0, &unk_2A181B3C0, sub_29DEA7E2C, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v20;
  v9 = type metadata accessor for InternalKaliLiveOnSettingsComponent.Item();
  v10 = swift_allocObject();
  type metadata accessor for TextItemCell();
  sub_29E17DF78(&qword_2A181CBF8, 255, type metadata accessor for TextItemCell);
  v10[6] = sub_29E2BE2B4();
  v10[7] = v11;
  v10[2] = 0x100000000000001ALL;
  v10[3] = 0x800000029E303F80;
  v10[4] = 0;
  v10[5] = 0xE000000000000000;
  *(v8 + 56) = v9;
  *(v8 + 64) = sub_29E17DF78(&qword_2A181E1D0, v11, type metadata accessor for InternalKaliLiveOnSettingsComponent.Item);
  *(v8 + 32) = v10;
  sub_29E2BCC14();
  sub_29E2BCBD4();
  v12 = *(v3 + 8);
  v12(v5, v2);
  sub_29E2BEBA4();
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_29E2C4584();

  strcpy(v22, "MutableArray<");
  HIWORD(v22[1]) = -4864;
  sub_29E2BCC14();
  v13 = sub_29E2BCBD4();
  v15 = v14;
  v12(v5, v2);
  MEMORY[0x29ED7FCC0](v13, v15);

  MEMORY[0x29ED7FCC0](62, 0xE100000000000000);
  sub_29E2BED34();
  swift_allocObject();
  sub_29E2BEC54();
  sub_29E2BE724();

  v16 = sub_29E2BE0B4();
  sub_29E2C0844();
  v17 = sub_29E2BE0A4();
  v22[3] = v16;
  v22[4] = sub_29E17DF78(&unk_2A181CC00, 255, MEMORY[0x29EDC1C30]);
  v22[0] = v17;
  sub_29E17DFC0();
  sub_29E17DF78(&qword_2A181E1F8, 255, sub_29E17DFC0);
  sub_29E2BE734();

  sub_29DE93B3C(v22);
  sub_29E17E020();
  sub_29E17DF78(&qword_2A181E208, 255, sub_29E17E020);
  sub_29E2BE754();

  sub_29E17E0B8();
  sub_29E17DF78(&qword_2A181E218, 255, sub_29E17E0B8);
  sub_29E2BE4C4();

  v18 = sub_29E2BE494();

  return v18;
}

void sub_29E17DF14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E17DF78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_29E17DFC0()
{
  if (!qword_2A181E1F0)
  {
    sub_29E2BED34();
    v0 = sub_29E2BE384();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E1F0);
    }
  }
}

void sub_29E17E020()
{
  if (!qword_2A181E200)
  {
    sub_29E17DFC0();
    sub_29E17DF78(&qword_2A181E1F8, 255, sub_29E17DFC0);
    v0 = sub_29E2BE344();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E200);
    }
  }
}

void sub_29E17E0B8()
{
  if (!qword_2A181E210)
  {
    sub_29E17E020();
    sub_29E17DF78(&qword_2A181E208, 255, sub_29E17E020);
    v0 = sub_29E2BE984();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E210);
    }
  }
}

void sub_29E17E150()
{
  if (!qword_2A181E220)
  {
    sub_29E17DF14(255, &qword_2A181E228, sub_29E17E1E4, MEMORY[0x29EDBCC28]);
    sub_29E17EB18();
    v0 = sub_29E2C2194();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E220);
    }
  }
}

void sub_29E17E1E4()
{
  if (!qword_2A181E230)
  {
    sub_29E17E254();
    sub_29E17E928();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E230);
    }
  }
}

void sub_29E17E254()
{
  if (!qword_2A181E238)
  {
    sub_29E17DF14(255, &qword_2A181E240, sub_29E17E2E8, MEMORY[0x29EDBCC28]);
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E238);
    }
  }
}

void sub_29E17E2E8()
{
  if (!qword_2A181E248)
  {
    sub_29E17E370();
    sub_29E17E500();
    sub_29E17E89C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A181E248);
    }
  }
}

void sub_29E17E370()
{
  if (!qword_2A181E250)
  {
    sub_29E17E430();
    sub_29E17E7EC(&qword_2A181E268, sub_29E17E430);
    v0 = sub_29E2C28B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E250);
    }
  }
}

void sub_29E17E430()
{
  if (!qword_2A181E258)
  {
    sub_29E17EEE8(255, &qword_2A181B790, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29E17E6E0(255, &qword_2A181E260);
    sub_29DF9D350();
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E258);
    }
  }
}

void sub_29E17E500()
{
  if (!qword_2A181E270)
  {
    sub_29E17E5C0();
    sub_29E17E7EC(&qword_2A181E298, sub_29E17E5C0);
    v0 = sub_29E2C28B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E270);
    }
  }
}

void sub_29E17E5C0()
{
  if (!qword_2A181E278)
  {
    sub_29E17DF14(255, &qword_2A181E280, MEMORY[0x29EDB9950], MEMORY[0x29EDC9A40]);
    sub_29E2BC5F4();
    sub_29E17E6E0(255, &qword_2A181E288);
    sub_29E17E764();
    sub_29E17DF78(&qword_2A1819120, 255, MEMORY[0x29EDB9950]);
    v0 = sub_29E2C29C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E278);
    }
  }
}

void sub_29E17E6E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_29E17E764()
{
  result = qword_2A181E290;
  if (!qword_2A181E290)
  {
    sub_29E17DF14(255, &qword_2A181E280, MEMORY[0x29EDB9950], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E290);
  }

  return result;
}

uint64_t sub_29E17E7EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E17E89C()
{
  if (!qword_2A181E2A0)
  {
    sub_29DED5598();
    sub_29E17EEE8(255, &qword_2A181D6B0, MEMORY[0x29EDC9A98], MEMORY[0x29EDBC958]);
    v0 = sub_29E2C1744();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E2A0);
    }
  }
}

void sub_29E17E928()
{
  if (!qword_2A181E2A8)
  {
    sub_29E17E98C();
    v0 = sub_29E2C2A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E2A8);
    }
  }
}

void sub_29E17E98C()
{
  if (!qword_2A181E2B0)
  {
    sub_29E17DF14(255, &qword_2A181E2B8, MEMORY[0x29EDC2900], MEMORY[0x29EDC9C68]);
    sub_29E17EA3C();
    v0 = sub_29E2C1614();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E2B0);
    }
  }
}

unint64_t sub_29E17EA3C()
{
  result = qword_2A181E2C0;
  if (!qword_2A181E2C0)
  {
    sub_29E17DF14(255, &qword_2A181E2B8, MEMORY[0x29EDC2900], MEMORY[0x29EDC9C68]);
    sub_29E17DF78(&qword_2A181E2C8, 255, MEMORY[0x29EDC2900]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E2C0);
  }

  return result;
}

unint64_t sub_29E17EB18()
{
  result = qword_2A181E2D0;
  if (!qword_2A181E2D0)
  {
    sub_29E17DF14(255, &qword_2A181E228, sub_29E17E1E4, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E2D0);
  }

  return result;
}

unint64_t sub_29E17EBB4()
{
  result = qword_2A181E2E8;
  if (!qword_2A181E2E8)
  {
    sub_29DE9408C(255, &qword_2A181E2D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E2E8);
  }

  return result;
}

unint64_t sub_29E17EC24()
{
  result = qword_2A181E300;
  if (!qword_2A181E300)
  {
    sub_29E17DF14(255, &qword_2A181E240, sub_29E17E2E8, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E300);
  }

  return result;
}

uint64_t sub_29E17ED44(uint64_t a1, uint64_t a2)
{
  sub_29E17E89C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E17EDA8(uint64_t a1)
{
  sub_29E17E89C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E17EE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E17EE6C()
{
  if (!qword_2A181E310)
  {
    sub_29E17EEE8(255, &qword_2A181E318, MEMORY[0x29EDC9AD8], MEMORY[0x29EDBC358]);
    v0 = sub_29E2C4304();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E310);
    }
  }
}

void sub_29E17EEE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E17EF38(uint64_t a1)
{
  sub_29E17EEE8(0, &qword_2A181E2F8, MEMORY[0x29EDC9AD8], MEMORY[0x29EDBCB00]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E17EFB8()
{
  v0 = MEMORY[0x29EDC9C68];
  sub_29E17DF14(0, &unk_2A1A62830, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v27 - v2;
  sub_29E17DF14(0, &unk_2A1A62840, MEMORY[0x29EDB9D18], v0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = v27 - v5;
  sub_29E17DF14(0, &unk_2A181DC50, MEMORY[0x29EDB9950], MEMORY[0x29EDC9E90]);
  v7 = *(sub_29E2BC5F4() - 8);
  v33 = *(v7 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v29 = v9;
  *(v9 + 16) = xmmword_29E2CEBE0;
  v10 = v9 + v8;
  v11 = sub_29E2BCEA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v6, 1, 1, v11);
  v31 = v13;
  v32 = v14;
  v15 = v13;
  v16 = sub_29E2BCF04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v28 = v16;
  v18(v3, 1, 1, v16);
  sub_29E2BC5D4();
  v30 = v11;
  v15(v6, 1, 1, v11);
  v18(v3, 1, 1, v16);
  v27[2] = v19;
  v20 = v18;
  v21 = v33;
  v27[3] = v10;
  sub_29E2BC5D4();
  v22 = v31;
  v31(v6, 1, 1, v11);
  v23 = v28;
  v20(v3, 1, 1, v28);
  sub_29E2BC5D4();
  v27[1] = 2 * v21 + v33;
  v24 = v30;
  v22(v6, 1, 1, v30);
  v20(v3, 1, 1, v23);
  sub_29E2BC5D4();
  v25 = v31;
  v31(v6, 1, 1, v24);
  v20(v3, 1, 1, v23);
  sub_29E2BC5D4();
  v25(v6, 1, 1, v30);
  v20(v3, 1, 1, v23);
  sub_29E2BC5D4();
  return v29;
}

uint64_t sub_29E17F6E4()
{

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

unint64_t CycleChartsCollectionView.ax_cycles()()
{
  v51 = type metadata accessor for CycleChartCycle(0);
  v0 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v2 = (&v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E1855C0(0, &unk_2A1820F90, type metadata accessor for CycleChartsModel, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = (&v48 - v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v6 = type metadata accessor for CycleChartsModel();
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result == 1)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v8 = *v5;
  sub_29E2BF404();
  sub_29E185624(v5, type metadata accessor for CycleChartsModel);
  v9 = *(v8 + 16);
  if (v9)
  {
    v59 = MEMORY[0x29EDCA190];
    sub_29E181AB4(0, v9, 0);
    v10 = v59;
    v11 = *(v0 + 80);
    v48 = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    sub_29E187194(0, &qword_2A18181C8, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9E70]);
    v49 = *(v0 + 72);
    v50 = v13;
    while (1)
    {
      sub_29E186EA8(v12, v2, type metadata accessor for CycleChartCycle);
      v55[0] = 0x7865646E69;
      v55[1] = 0xE500000000000000;
      v14 = v2[1];
      v15 = MEMORY[0x29EDC9BA8];
      v55[2] = *v2;
      v55[5] = MEMORY[0x29EDC9BA8];
      v56[0] = 0x656C637963;
      v56[1] = 0xE500000000000000;
      v16 = sub_29DE9408C(0, &qword_2A1A5E0A0);
      v56[2] = v14;
      v56[5] = v16;
      v57[0] = 0x7961447473616CLL;
      v57[1] = 0xE700000000000000;
      v17 = v14;
      v57[2] = sub_29E2C3164();
      v57[5] = v15;
      v58[0] = 0x7961646F74;
      v58[1] = 0xE500000000000000;
      v18 = sub_29E2C3164();
      v58[5] = v15;
      v58[2] = v18;
      v19 = sub_29E2C47B4();

      sub_29E185540(v55, &v52, &qword_2A18181D0, MEMORY[0x29EDC99B0], sub_29E130F58);
      v20 = v52;
      v21 = v53;
      result = sub_29DECF000(v52, v53);
      if (v22)
      {
        break;
      }

      v23 = v19 + 8;
      *(v19 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v19[6] + 16 * result);
      *v24 = v20;
      v24[1] = v21;
      result = sub_29DEA049C(v54, (v19[7] + 32 * result));
      v25 = v19[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_19;
      }

      v19[2] = v27;
      sub_29E185540(v56, &v52, &qword_2A18181D0, MEMORY[0x29EDC99B0], sub_29E130F58);
      v28 = v52;
      v29 = v53;
      result = sub_29DECF000(v52, v53);
      if (v30)
      {
        break;
      }

      *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v31 = (v19[6] + 16 * result);
      *v31 = v28;
      v31[1] = v29;
      result = sub_29DEA049C(v54, (v19[7] + 32 * result));
      v32 = v19[2];
      v26 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v26)
      {
        goto LABEL_19;
      }

      v19[2] = v33;
      sub_29E185540(v57, &v52, &qword_2A18181D0, MEMORY[0x29EDC99B0], sub_29E130F58);
      v34 = v52;
      v35 = v53;
      result = sub_29DECF000(v52, v53);
      if (v36)
      {
        break;
      }

      *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (v19[6] + 16 * result);
      *v37 = v34;
      v37[1] = v35;
      result = sub_29DEA049C(v54, (v19[7] + 32 * result));
      v38 = v19[2];
      v26 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v26)
      {
        goto LABEL_19;
      }

      v19[2] = v39;
      sub_29E185540(v58, &v52, &qword_2A18181D0, MEMORY[0x29EDC99B0], sub_29E130F58);
      v40 = v52;
      v41 = v53;
      result = sub_29DECF000(v52, v53);
      if (v42)
      {
        break;
      }

      *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v43 = (v19[6] + 16 * result);
      *v43 = v40;
      v43[1] = v41;
      result = sub_29DEA049C(v54, (v19[7] + 32 * result));
      v44 = v19[2];
      v26 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v26)
      {
        goto LABEL_19;
      }

      v19[2] = v45;

      sub_29E130F58(0, &qword_2A18181D0);
      swift_arrayDestroy();
      sub_29E185624(v2, type metadata accessor for CycleChartCycle);
      v59 = v10;
      v47 = *(v10 + 16);
      v46 = *(v10 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_29E181AB4((v46 > 1), v47 + 1, 1);
        v10 = v59;
      }

      *(v10 + 16) = v47 + 1;
      *(v10 + 8 * v47 + 32) = v19;
      v12 += v49;
      if (!--v9)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return MEMORY[0x29EDCA190];
}

unint64_t sub_29E17FDD8()
{
  sub_29DEEDD8C();
  inited = swift_initStackObject();
  *(inited + 32) = 0x7865646E69;
  *(inited + 16) = xmmword_29E2CFE80;
  *(inited + 40) = 0xE500000000000000;
  v2 = MEMORY[0x29EDC9BA8];
  *(inited + 48) = *v0;
  *(inited + 72) = v2;
  *(inited + 80) = 0x656C637963;
  *(inited + 88) = 0xE500000000000000;
  v3 = v0[1];
  v4 = sub_29DE9408C(0, &qword_2A1A5E0A0);
  *(inited + 96) = v3;
  *(inited + 120) = v4;
  *(inited + 128) = 0x7961447473616CLL;
  *(inited + 136) = 0xE700000000000000;
  type metadata accessor for CycleChartCycle(0);
  v5 = v3;
  *(inited + 144) = sub_29E2C3164();
  *(inited + 168) = v2;
  *(inited + 176) = 0x7961646F74;
  *(inited + 184) = 0xE500000000000000;
  v6 = sub_29E2C3164();
  *(inited + 216) = v2;
  *(inited + 192) = v6;
  v7 = sub_29E1853E0(inited);
  swift_setDeallocating();
  sub_29E130F58(0, &qword_2A18181D0);
  swift_arrayDestroy();
  return v7;
}

unint64_t CycleChartsCollectionView.ax_predominantCycle()()
{
  sub_29E1855C0(0, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v6 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v3 = type metadata accessor for CycleChartCycle(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_29E187874(v2, &qword_2A18189E8, type metadata accessor for CycleChartCycle, MEMORY[0x29EDC9C68], sub_29E1855C0);
    return sub_29E1853E0(MEMORY[0x29EDCA190]);
  }

  else
  {
    v5 = sub_29E17FDD8();
    sub_29E185624(v2, type metadata accessor for CycleChartCycle);
    return v5;
  }
}

id CycleChartsCollectionView.ax_cycleChartDay(forIndexPath:)()
{
  v1 = type metadata accessor for CycleChartDay();
  MEMORY[0x2A1C7C4A8](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C31A4();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x2A1C7C4A8](v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 dataSource];
  if (result)
  {
    type metadata accessor for CycleChartsCollectionViewDataSource();
    if (swift_dynamicCastClass())
    {
      sub_29E0EBFA8();
      swift_unknownObjectRelease();
      v10 = *&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsCollectionView_modelProvider];
      v11 = *(*(v10 + 24) + 16);
      (*(v5 + 16))(v3, v8, v4);

      v12 = [v11 dayViewModelAtIndex_];
      *&v3[*(type metadata accessor for CycleDay() + 20)] = v12;
      sub_29E2C2CB4();

      v13 = *(v10 + 64);
      v14 = sub_29E1805F8(v13);

      sub_29E185624(v3, type metadata accessor for CycleChartDay);
      (*(v5 + 8))(v8, v4);
      return v14;
    }

    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

unint64_t sub_29E1805F8(void *a1)
{
  v25 = a1;
  sub_29E0CE990();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DEEDD8C();
  inited = swift_initStackObject();
  v23 = xmmword_29E2CD7A0;
  *(inited + 16) = xmmword_29E2CD7A0;
  *(inited + 32) = 0x796144656C637963;
  v24 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  v8 = swift_initStackObject();
  *(v8 + 16) = v23;
  *(v8 + 32) = 0x7865646E49796164;
  *(v8 + 40) = 0xE800000000000000;
  v9 = sub_29E2C3164();
  v10 = MEMORY[0x29EDC9BA8];
  *(v8 + 48) = v9;
  *(v8 + 72) = v10;
  *(v8 + 80) = 0x65646F4D77656976;
  *(v8 + 88) = 0xE90000000000006CLL;
  v11 = *(v1 + *(type metadata accessor for CycleDay() + 20));
  *(v8 + 120) = sub_29DE9408C(0, &qword_2A1A5E1D8);
  *(v8 + 96) = v11;
  v12 = v11;
  v13 = sub_29E1853E0(v8);
  swift_setDeallocating();
  v14 = MEMORY[0x29EDCA178];
  sub_29E130F58(0, &qword_2A18181D0);
  swift_arrayDestroy();
  sub_29E187194(0, &qword_2A181E078, v14 + 8, MEMORY[0x29EDC98E0]);
  v16 = v15;
  *(inited + 48) = v13;
  *(inited + 72) = v15;
  *(inited + 80) = 0xD00000000000001DLL;
  *(inited + 88) = 0x800000029E304090;
  v17 = type metadata accessor for CycleChartDay();
  (*(v4 + 16))(v6, v1 + *(v17 + 20), v3);
  v18 = (*(v4 + 88))(v6, v3);
  if (v18 == *MEMORY[0x29EDC4328])
  {
    (*(v4 + 96))(v6, v3);
    v19 = *v6;
  }

  else
  {
    v19 = 2;
    if (v18 != *MEMORY[0x29EDC4330] && v18 != *MEMORY[0x29EDC4338] && v18 != *MEMORY[0x29EDC4320])
    {
      (*(v4 + 8))(v6, v3);
      v19 = 2;
    }
  }

  v20 = sub_29E180A8C(v25, v19);
  sub_29DEC72BC(v19);
  *(inited + 120) = v16;
  *(inited + 96) = v20;
  v21 = sub_29E1853E0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v21;
}

unint64_t sub_29E180A8C(void *a1, void *a2)
{
  if (!a2)
  {
    sub_29DEEDD8C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CAB20;
    *(inited + 32) = 1702060387;
    v3 = inited + 32;
    v4 = MEMORY[0x29EDC99B0];
    v5 = 0x800000029E3040D0;
    *(inited + 72) = MEMORY[0x29EDC99B0];
    v6 = 0xD000000000000014;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    sub_29DEEDD8C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E2CAB20;
    *(inited + 32) = 1702060387;
    v3 = inited + 32;
    v5 = 0x800000029E3040B0;
    v4 = MEMORY[0x29EDC99B0];
    *(inited + 72) = MEMORY[0x29EDC99B0];
    v6 = 0xD000000000000018;
LABEL_7:
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v6;
    *(inited + 56) = v5;
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    sub_29DEEDD8C();
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_29E2CE0D0;
    *(v10 + 32) = 1702060387;
    v11 = MEMORY[0x29EDC99B0];
    *(v10 + 40) = 0xE400000000000000;
    *(v10 + 48) = 0x6E696D7265746564;
    *(v10 + 56) = 0xEB00000000657461;
    *(v10 + 72) = v11;
    *(v10 + 80) = 0x6156656C62756F64;
    *(v10 + 88) = 0xEB0000000065756CLL;
    [a2 doubleValueForUnit_];
    v12 = MEMORY[0x29EDC9AD8];
    *(v10 + 96) = v13;
    *(v10 + 120) = v12;
    *(v10 + 128) = 1953066613;
    *(v10 + 136) = 0xE400000000000000;
    *(v10 + 168) = sub_29DE9408C(0, &qword_2A18188B8);
    *(v10 + 144) = a1;
    v14 = a1;
    v7 = sub_29E1853E0(v10);
    swift_setDeallocating();
    sub_29E130F58(0, &qword_2A18181D0);
    swift_arrayDestroy();
    return v7;
  }

  sub_29DEEDD8C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E2CAB20;
  *(inited + 32) = 1702060387;
  v3 = inited + 32;
  v4 = MEMORY[0x29EDC99B0];
  *(inited + 72) = MEMORY[0x29EDC99B0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1701736302;
  *(inited + 56) = 0xE400000000000000;
LABEL_8:
  v7 = sub_29E1853E0(inited);
  swift_setDeallocating();
  sub_29E187874(v3, &qword_2A18181D0, v4, MEMORY[0x29EDCA178] + 8, sub_29E130F58);
  return v7;
}

uint64_t sub_29E180D98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();
}

uint64_t sub_29E180E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v9 = MEMORY[0x29EDC9C68];
  sub_29E1855C0(0, a5, a6, MEMORY[0x29EDC9C68]);
  v11 = MEMORY[0x2A1C7C4A8](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v17 - v14;
  sub_29E1877F4(a1, &v17 - v14, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E1877F4(v15, v13, a5, a6);

  sub_29E2C1224();
  return sub_29E187874(v15, a5, a6, v9, sub_29E1855C0);
}

void *sub_29E180FA4(void *a1, int64_t a2, char a3)
{
  result = sub_29E183538(a1, a2, a3, *v3, &qword_2A181DBE8, sub_29DFCF448, sub_29DFCF448);
  *v3 = result;
  return result;
}

size_t sub_29E180FF4(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181E3B8, type metadata accessor for PDFLegend, type metadata accessor for PDFLegend);
  *v3 = result;
  return result;
}

size_t sub_29E181044(size_t a1, int64_t a2, char a3)
{
  result = sub_29E181BB4(a1, a2, a3, *v3, &qword_2A181E328, &qword_2A1818A00, MEMORY[0x29EDBA2F8]);
  *v3 = result;
  return result;
}

size_t sub_29E181090(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &unk_2A1A61CD0, MEMORY[0x29EDC3840], MEMORY[0x29EDC3840]);
  *v3 = result;
  return result;
}

size_t sub_29E1810E0(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A1A5E040, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BC8]);
  *v3 = result;
  return result;
}

char *sub_29E181130(char *a1, int64_t a2, char a3)
{
  result = sub_29E182278(a1, a2, a3, *v3, &qword_2A181E420, &type metadata for CycleTimelineStep);
  *v3 = result;
  return result;
}

char *sub_29E181160(char *a1, int64_t a2, char a3)
{
  result = sub_29E181DBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E181180(char *a1, int64_t a2, char a3)
{
  result = sub_29E181ED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E1811A0(char *a1, int64_t a2, char a3)
{
  result = sub_29E18237C(a1, a2, a3, *v3, &qword_2A181E398, sub_29DEC7264);
  *v3 = result;
  return result;
}

void *sub_29E1811DC(void *a1, int64_t a2, char a3)
{
  result = sub_29E181FF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E1811FC(char *a1, int64_t a2, char a3)
{
  result = sub_29E182140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E18121C(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181E3D0, type metadata accessor for CycleChartCycle, type metadata accessor for CycleChartCycle);
  *v3 = result;
  return result;
}

void *sub_29E18126C(void *a1, int64_t a2, char a3)
{
  result = sub_29E183AC0(a1, a2, a3, *v3, &qword_2A181DA80, &qword_2A18188C0);
  *v3 = result;
  return result;
}

char *sub_29E1812A4(char *a1, int64_t a2, char a3)
{
  result = sub_29E18237C(a1, a2, a3, *v3, &qword_2A181DAF0, sub_29E1509C4);
  *v3 = result;
  return result;
}

size_t sub_29E1812E0(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181C060, type metadata accessor for CycleChartDay, type metadata accessor for CycleChartDay);
  *v3 = result;
  return result;
}

void *sub_29E181330(void *a1, int64_t a2, char a3)
{
  result = sub_29E18248C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E181350(size_t a1, int64_t a2, char a3)
{
  result = sub_29E1825D8(a1, a2, a3, *v3, &qword_2A181E3C0, &qword_2A1A61A30, MEMORY[0x29EDC9C30]);
  *v3 = result;
  return result;
}

size_t sub_29E181394(size_t a1, int64_t a2, char a3)
{
  result = sub_29E1825D8(a1, a2, a3, *v3, &qword_2A181E3C8, &qword_2A1819F90, MEMORY[0x29EDC9930]);
  *v3 = result;
  return result;
}

size_t sub_29E1813D8(size_t a1, int64_t a2, char a3)
{
  result = sub_29E1827E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E1813F8(char *a1, int64_t a2, char a3)
{
  result = sub_29E182DB8(a1, a2, a3, *v3, &qword_2A1A5DFE0, type metadata accessor for HKMCCycleFactor);
  *v3 = result;
  return result;
}

char *sub_29E181434(char *a1, int64_t a2, char a3)
{
  result = sub_29E182A08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E181454(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181E490, type metadata accessor for CycleChartCycle.RelativeDayIndex, type metadata accessor for CycleChartCycle.RelativeDayIndex);
  *v3 = result;
  return result;
}

void *sub_29E1814A4(void *a1, int64_t a2, char a3)
{
  result = sub_29E182B2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E1814C4(char *a1, int64_t a2, char a3)
{
  result = sub_29E182ECC(a1, a2, a3, *v3, sub_29E186FCC);
  *v3 = result;
  return result;
}

void *sub_29E1814F8(void *a1, int64_t a2, char a3)
{
  result = sub_29E182C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E181518(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &unk_2A1819BC0, MEMORY[0x29EDC2240], MEMORY[0x29EDC2240]);
  *v3 = result;
  return result;
}

size_t sub_29E181568(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181E378, type metadata accessor for CycleChartDaysPDFChunk, type metadata accessor for CycleChartDaysPDFChunk);
  *v3 = result;
  return result;
}

char *sub_29E1815B8(char *a1, int64_t a2, char a3)
{
  result = sub_29E182DB8(a1, a2, a3, *v3, &qword_2A181E370, type metadata accessor for HKMCDayViewModelFertileWindowLevel);
  *v3 = result;
  return result;
}

void *sub_29E1815F4(void *a1, int64_t a2, char a3)
{
  result = sub_29E183AC0(a1, a2, a3, *v3, &qword_2A181E360, &qword_2A181E368);
  *v3 = result;
  return result;
}

size_t sub_29E18162C(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &unk_2A181DA50, MEMORY[0x29EDB9920], MEMORY[0x29EDB9920]);
  *v3 = result;
  return result;
}

size_t sub_29E18167C(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181E320, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C08]);
  *v3 = result;
  return result;
}

size_t sub_29E1816CC(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181BC70, type metadata accessor for Section, type metadata accessor for Section);
  *v3 = result;
  return result;
}

char *sub_29E18171C(char *a1, int64_t a2, char a3)
{
  result = sub_29E182ECC(a1, a2, a3, *v3, sub_29E1502F0);
  *v3 = result;
  return result;
}

size_t sub_29E181750(size_t a1, int64_t a2, char a3)
{
  result = sub_29E182FC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E181770(char *a1, int64_t a2, char a3)
{
  result = sub_29E1831F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E181790(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181E438, type metadata accessor for CycleFactorsSectionViewModel, type metadata accessor for CycleFactorsSectionViewModel);
  *v3 = result;
  return result;
}

char *sub_29E1817E0(char *a1, int64_t a2, char a3)
{
  result = sub_29E1832E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E181800(char *a1, int64_t a2, char a3)
{
  result = sub_29E183410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E181820(void *a1, int64_t a2, char a3)
{
  result = sub_29E183AC0(a1, a2, a3, *v3, &unk_2A181B3C0, &qword_2A1819BD0);
  *v3 = result;
  return result;
}

size_t sub_29E181858(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181E358, sub_29E05D0A4, sub_29E05D0A4);
  *v3 = result;
  return result;
}

void *sub_29E1818A8(void *a1, int64_t a2, char a3)
{
  result = sub_29E183538(a1, a2, a3, *v3, &qword_2A181DC18, sub_29DFCF4C0, sub_29DFCF4C0);
  *v3 = result;
  return result;
}

size_t sub_29E1818F8(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &unk_2A181BB20, type metadata accessor for InternalLiveOnRequirement, type metadata accessor for InternalLiveOnRequirement);
  *v3 = result;
  return result;
}

size_t sub_29E181948(size_t a1, int64_t a2, char a3)
{
  result = sub_29E181BB4(a1, a2, a3, *v3, &qword_2A181E410, &qword_2A181DDF8, MEMORY[0x29EDC2240]);
  *v3 = result;
  return result;
}

char *sub_29E181994(char *a1, int64_t a2, char a3)
{
  result = sub_29E1836B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E1819B4(void *a1, int64_t a2, char a3)
{
  result = sub_29E18396C(a1, a2, a3, *v3, &qword_2A181E480, &unk_2A181DCE0, "section samples ");
  *v3 = result;
  return result;
}

void *sub_29E1819EC(void *a1, int64_t a2, char a3)
{
  result = sub_29E183804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E181A0C(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181E3A8, MEMORY[0x29EDC3050], MEMORY[0x29EDC3050]);
  *v3 = result;
  return result;
}

void *sub_29E181A5C(void *a1, int64_t a2, char a3)
{
  result = sub_29E183AC0(a1, a2, a3, *v3, &qword_2A181CC78, &qword_2A181CC80);
  *v3 = result;
  return result;
}

char *sub_29E181A94(char *a1, int64_t a2, char a3)
{
  result = sub_29E183C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_29E181AB4(void *a1, int64_t a2, char a3)
{
  result = sub_29E183D28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E181AD4(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181DA98, MEMORY[0x29EDBA2F8], MEMORY[0x29EDBA2F8]);
  *v3 = result;
  return result;
}

size_t sub_29E181B24(size_t a1, int64_t a2, char a3)
{
  result = sub_29E183E6C(a1, a2, a3, *v3, &qword_2A181DB88, type metadata accessor for CompactCalendarDayViewModel, type metadata accessor for CompactCalendarDayViewModel);
  *v3 = result;
  return result;
}

void *sub_29E181B74(void *a1, int64_t a2, char a3)
{
  result = sub_29E184060(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29E181B94(char *a1, int64_t a2, char a3)
{
  result = sub_29E1841C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_29E181BB4(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, void (*a7)(uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E1870C8(0, a5, a6, a7);
  sub_29E187124(0, a6, a7);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = j__malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_29E187124(0, a6, a7);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

char *sub_29E181DBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E187A1C(0, &qword_2A181C068, MEMORY[0x29EDC9AD8], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E181ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E187A1C(0, &qword_2A1818140, MEMORY[0x29EDCA210], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29E181FF4(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E1855C0(0, &qword_2A1818128, sub_29DEC64B8, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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
    sub_29DEC64B8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E182140(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E187A1C(0, &qword_2A1A62780, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E182278(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_29E187A1C(0, a5, a6, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_29E18237C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_29E1855C0(0, a5, a6, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

void *sub_29E18248C(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E02061C(0, &qword_2A1818B80, &qword_2A181DB40);
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
    v10 = MEMORY[0x29EDCA190];
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
    sub_29DF942BC(0, &qword_2A181DB40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_29E1825D8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E186CC8(0, a5, a6, a7, sub_29E186D24);
  sub_29E186D24(0, a6, a7);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = j__malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_29E186D24(0, a6, a7);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

size_t sub_29E1827E4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E1436BC();
  sub_29E186DC0(0, &qword_2A181A090, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDBA210]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_29E186DC0(0, &qword_2A181A090, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDBA210]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_29E182A08(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E187A1C(0, &qword_2A181E330, &type metadata for LoggingCardRowViewModel, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29E182B2C(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E187268();
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
    v10 = MEMORY[0x29EDCA190];
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
    sub_29E187384(0, &qword_2A181E448, type metadata accessor for HKMCDisplayTypeIdentifier);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E182C6C(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E1855C0(0, &qword_2A181B620, type metadata accessor for HKMCDisplayTypeIdentifier, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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
    type metadata accessor for HKMCDisplayTypeIdentifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E182DB8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_29E1855C0(0, a5, a6, MEMORY[0x29EDC9E90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_29E182ECC(char *result, int64_t a2, char a3, char *a4, void (*a5)(void))
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
    a5(0);
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
    v11 = MEMORY[0x29EDCA190];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

size_t sub_29E182FC4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E1875D8();
  sub_29E187660(0, &qword_2A181DCD0, MEMORY[0x29EDBA2F8], type metadata accessor for HKMCDaySummaryBleedingFlow);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_29E187660(0, &qword_2A181DCD0, MEMORY[0x29EDBA2F8], type metadata accessor for HKMCDaySummaryBleedingFlow);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_29E1831F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E18756C();
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E1832E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1855C0(0, &qword_2A181E408, type metadata accessor for HKMCDaySummarySymptoms, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29E183410(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E1855C0(0, &qword_2A181E3E8, type metadata accessor for CGSize, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29E183538(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
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
    sub_29E1855C0(0, a5, a6, MEMORY[0x29EDC9E90]);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_29E1836B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E187A1C(0, &unk_2A181B780, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29E183804(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E1855C0(0, &qword_2A181E488, sub_29E151314, MEMORY[0x29EDC9E90]);
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
    v10 = MEMORY[0x29EDCA190];
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
    sub_29E151314();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E18396C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
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
    sub_29E186CC8(0, a5, a6, a7, sub_29E1876DC);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x29EDCA190];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E1876DC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_29E183AC0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_29E02061C(0, a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x29EDCA190];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29DF942BC(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_29E183C1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E187A1C(0, &qword_2A181E418, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29E183D28(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E187774();
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
    v10 = MEMORY[0x29EDCA190];
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
    sub_29E187194(0, &qword_2A181E078, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC98E0]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_29E183E6C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E1855C0(0, a5, a6, MEMORY[0x29EDC9E90]);
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

void *sub_29E184060(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E1855C0(0, &qword_2A181E400, sub_29E187048, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E187048();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29E1841C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E187A1C(0, &qword_2A181E380, MEMORY[0x29EDCA180] + 8, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

unint64_t sub_29E1842D0(uint64_t a1)
{
  v2 = sub_29E2C44F4();

  return sub_29E1849BC(a1, v2);
}

unint64_t sub_29E184314(uint64_t a1)
{
  sub_29E2C31A4();
  v2 = MEMORY[0x29EDBA2F8];
  sub_29E185684(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
  v3 = sub_29E2C3244();
  return sub_29E184DA0(a1, v3, MEMORY[0x29EDBA2F8], &qword_2A18199C0, v2, MEMORY[0x29EDBA310]);
}

unint64_t sub_29E1843E8(uint64_t a1)
{
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C4A04();
  sub_29E2C34B4();
  v2 = sub_29E2C4A54();

  return sub_29E184C9C(a1, v2);
}

unint64_t sub_29E18447C(uint64_t a1)
{
  sub_29E2BCFB4();
  v2 = MEMORY[0x29EDB9D70];
  sub_29E185684(&unk_2A1818E70, MEMORY[0x29EDB9D70]);
  v3 = sub_29E2C3244();
  return sub_29E184DA0(a1, v3, MEMORY[0x29EDB9D70], &unk_2A181DBB0, v2, MEMORY[0x29EDB9D88]);
}

unint64_t sub_29E184550(uint64_t a1)
{
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](a1);
  v2 = sub_29E2C4A54();
  return sub_29E184A84(a1, v2);
}

unint64_t sub_29E184608(uint64_t a1)
{
  v2 = sub_29E2C49F4();

  return sub_29E184A84(a1, v2);
}

unint64_t sub_29E18464C(uint64_t a1)
{
  sub_29E2BC5F4();
  v2 = MEMORY[0x29EDB9950];
  sub_29E185684(&qword_2A1819120, MEMORY[0x29EDB9950]);
  v3 = sub_29E2C3244();
  return sub_29E184DA0(a1, v3, MEMORY[0x29EDB9950], &qword_2A181E428, v2, MEMORY[0x29EDB9968]);
}

unint64_t sub_29E184720(unsigned __int8 a1)
{
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](a1);
  v2 = sub_29E2C4A54();

  return sub_29E184AF0(a1, v2);
}

unint64_t sub_29E18487C(char a1)
{
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](a1 & 1);
  v2 = sub_29E2C4A54();

  return sub_29E184C2C(a1 & 1, v2);
}

unint64_t sub_29E1848E8(uint64_t a1)
{
  sub_29E2BD8F4();
  v2 = MEMORY[0x29EDC3A88];
  sub_29E185684(&qword_2A181E388, MEMORY[0x29EDC3A88]);
  v3 = sub_29E2C3244();
  return sub_29E184DA0(a1, v3, MEMORY[0x29EDC3A88], &qword_2A181E390, v2, MEMORY[0x29EDC3A98]);
}

unint64_t sub_29E1849BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29E185A6C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED80CD0](v9, a1);
      sub_29DF014AC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29E184A84(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_29E184AF0(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_29E184B60(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_29DE9408C(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_29E2C40D4();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29E184C2C(int a1, uint64_t a2)
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

unint64_t sub_29E184C9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v8 = v7;
      if (v6 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v8 == v9)
      {
        break;
      }

      v11 = sub_29E2C4914();

      if ((v11 & 1) == 0)
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

unint64_t sub_29E184DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_29E185684(v23, v24);
      v19 = sub_29E2C3304();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_29E184F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E187194(0, &qword_2A181A5B8, MEMORY[0x29EDC9A98], MEMORY[0x29EDC9E70]);
    v3 = sub_29E2C47B4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_29E2BF404();
      result = sub_29DECF000(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E185088(uint64_t a1)
{
  sub_29E187660(0, &qword_2A181E3B0, MEMORY[0x29EDBA2F8], type metadata accessor for CycleDay);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29E186C1C();
    v8 = sub_29E2C47B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29E186BAC(v10, v6, &qword_2A181E3B0, MEMORY[0x29EDBA2F8], type metadata accessor for CycleDay);
      result = sub_29E184314(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_29E2C31A4();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for CycleDay();
      result = sub_29E00C0F0(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E1852C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E18576C();
    v3 = sub_29E2C47B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_29E1843E8(v6);
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E1853E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E187194(0, &qword_2A18181C8, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9E70]);
    v3 = sub_29E2C47B4();
    v4 = a1 + 32;

    v5 = MEMORY[0x29EDC99B0];
    while (1)
    {
      sub_29E185540(v4, &v14, &qword_2A18181D0, v5, sub_29E130F58);
      v6 = v14;
      v7 = v15;
      result = sub_29DECF000(v14, v15);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_29DEA049C(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29E185540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4, MEMORY[0x29EDCA178] + 8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_29E1855C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E185624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E185684(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E1856CC()
{
  if (!qword_2A181E338)
  {
    type metadata accessor for AttributeName(255);
    sub_29E185684(&qword_2A18177E0, type metadata accessor for AttributeName);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E338);
    }
  }
}

void sub_29E18576C()
{
  if (!qword_2A181E340)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_29E185684(&qword_2A18177D0, type metadata accessor for TraitKey);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E340);
    }
  }
}

unint64_t sub_29E185818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E1859D0();
    v3 = sub_29E2C47B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_29E1843E8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E1858FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E00C378();
    v3 = sub_29E2C47B4();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_29E184550(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E1859D0()
{
  if (!qword_2A181A878)
  {
    type metadata accessor for HKMCDisplayTypeIdentifier(255);
    sub_29E185684(&qword_2A181DA40, type metadata accessor for HKMCDisplayTypeIdentifier);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A878);
    }
  }
}

unint64_t sub_29E185AC8(uint64_t a1)
{
  sub_29E186E28();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29E00C200();
    v8 = sub_29E2C47B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29E186EA8(v10, v6, sub_29E186E28);
      result = sub_29E18447C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_29E2BCFB4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E185C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x29EDCA198];
  }

  sub_29E1878D4();
  v3 = sub_29E2C47B4();
  v4 = *(a1 + 32);
  v16 = *(a1 + 40);
  v5 = *(a1 + 56);
  result = sub_29E184550(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v9 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 24 * result;
    *v10 = v7;
    *(v10 + 16) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 3);
    v17 = *(v9 - 1);
    v5 = *v9;
    swift_unknownObjectRetain();
    result = sub_29E184550(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_29E185DC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E0DA7F8();
    v3 = sub_29E2C47B4();
    v4 = a1 + 32;

    v5 = MEMORY[0x29EDC9D48];
    while (1)
    {
      sub_29E185540(v4, v14, &qword_2A1818EB0, v5, sub_29E130F58);
      result = sub_29E1842D0(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v3[6] + 40 * result;
      v9 = v14[0];
      v10 = v14[1];
      *(v8 + 32) = v15;
      *v8 = v9;
      *(v8 + 16) = v10;
      result = sub_29DEA049C(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E185F08(uint64_t a1)
{
  sub_29E1873F0(0, &qword_2A181E468, &qword_2A181D9F0, &qword_2A1A61D50, 0x29EDBAA60);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29E187494(0, &qword_2A181A8E8, &qword_2A181D9F0, &qword_2A1A61D50, 0x29EDBAA60);
    v8 = sub_29E2C47B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29E1871F4(v10, v6, &qword_2A181E468, &qword_2A181D9F0, &qword_2A1A61D50, 0x29EDBAA60);
      result = sub_29E18464C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_29E2BC5F4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void *sub_29E186188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x29EDCA198];
  }

  sub_29E00C5D8();
  v3 = sub_29E2C47B4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_29E184720(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_29E2BF404();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;
    sub_29E2BF404();
    v8 = sub_29E184720(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_29E1862C0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_29E2C47B4();
    v9 = a1 + 32;

    while (1)
    {
      sub_29E185540(v9, &v16, a3, a4, sub_29E187384);
      v10 = v16;
      result = sub_29E1843E8(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_29DEA049C(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E1863EC()
{
  if (!qword_2A181E348)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_29E185684(&qword_2A18177A8, type metadata accessor for OpenExternalURLOptionsKey);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E348);
    }
  }
}

unint64_t sub_29E18648C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E187980();
    v3 = sub_29E2C47B4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_29E184550(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E18655C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E186F10();
    v3 = sub_29E2C47B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_29E1843E8(v6);
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E186648(uint64_t a1)
{
  sub_29E1873F0(0, &qword_2A181E430, &qword_2A181DC60, &qword_2A1A5E0A0, 0x29EDC3370);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29E187494(0, &qword_2A181A8C8, &qword_2A181DC60, &qword_2A1A5E0A0, 0x29EDC3370);
    v8 = sub_29E2C47B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29E1871F4(v10, v6, &qword_2A181E430, &qword_2A181DC60, &qword_2A1A5E0A0, 0x29EDC3370);
      result = sub_29E18464C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_29E2BC5F4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E186894(uint64_t a1, void (*a2)(void), uint64_t (*a3)(id))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = sub_29E2C47B4();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9 = *(i - 1);
      v10 = v8;
      result = a3(v9);
      if (v12)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v9;
      *(v6[7] + 8 * result) = v10;
      v13 = v6[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v6[2] = v15;
      if (!--v3)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E18698C(uint64_t a1)
{
  sub_29E187660(0, &qword_2A181E3A0, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, MEMORY[0x29EDB9BC8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29E00C154();
    v8 = sub_29E2C47B4();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29E186BAC(v10, v6, &qword_2A181E3A0, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier, MEMORY[0x29EDB9BC8]);
      v12 = *v6;
      result = sub_29E1843E8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_29E2BCBB4();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29E186BAC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_29E187660(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_29E186C1C()
{
  if (!qword_2A181A890)
  {
    sub_29E2C31A4();
    type metadata accessor for CycleDay();
    sub_29E185684(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181A890);
    }
  }
}

void sub_29E186CC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29E2C48E4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E186D24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E2C31A4();
    v7 = sub_29E185684(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E186DC0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DE9408C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E186E28()
{
  if (!qword_2A181E3D8)
  {
    sub_29E2BCFB4();
    sub_29DE9408C(255, &qword_2A181DCB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181E3D8);
    }
  }
}

uint64_t sub_29E186EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E186F10()
{
  if (!qword_2A181E3E0)
  {
    type metadata accessor for Key(255);
    sub_29DE9408C(255, &qword_2A1A619F0);
    sub_29E185684(&qword_2A18177F0, type metadata accessor for Key);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E3E0);
    }
  }
}

void sub_29E186FCC()
{
  if (!qword_2A181E3F0)
  {
    sub_29E187384(255, &qword_2A181E3F8, type metadata accessor for HKMCDeviationType);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E3F0);
    }
  }
}

void sub_29E187048()
{
  if (!qword_2A181FDC0)
  {
    type metadata accessor for LoggingCardViewController();
    type metadata accessor for HKMCDisplayTypeIdentifier(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181FDC0);
    }
  }
}

void sub_29E1870C8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29E187124(255, a3, a4);
    v5 = sub_29E2C48E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E187124(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E187194(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x29EDC99B0], a3, MEMORY[0x29EDC99C0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E1871F4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  sub_29E1873F0(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_29E187268()
{
  if (!qword_2A181E440)
  {
    sub_29E187384(255, &qword_2A181E448, type metadata accessor for HKMCDisplayTypeIdentifier);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E440);
    }
  }
}

void sub_29E1872E4()
{
  if (!qword_2A181E458)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_29E185684(&qword_2A1817768, type metadata accessor for OpenURLOptionsKey);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E458);
    }
  }
}

void sub_29E187384(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E1873F0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29E2BC5F4();
    sub_29E186DC0(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v10)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E187494(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_29E2BC5F4();
    sub_29E186DC0(255, a3, a4, a5, MEMORY[0x29EDC9A40]);
    sub_29E185684(&qword_2A1819120, MEMORY[0x29EDB9950]);
    v9 = sub_29E2C47C4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E18756C()
{
  if (!qword_2A181E470)
  {
    sub_29E130F58(255, &qword_2A181E478);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E470);
    }
  }
}

void sub_29E1875D8()
{
  if (!qword_2A181DCC8)
  {
    sub_29E187660(255, &qword_2A181DCD0, MEMORY[0x29EDBA2F8], type metadata accessor for HKMCDaySummaryBleedingFlow);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DCC8);
    }
  }
}

void sub_29E187660(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E1876DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29E186DC0(255, &qword_2A181D9F0, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E187774()
{
  if (!qword_2A181E498)
  {
    sub_29E187194(255, &qword_2A181E078, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC98E0]);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E498);
    }
  }
}

uint64_t sub_29E1877F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E1855C0(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E187874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29E1878D4()
{
  if (!qword_2A181E4A0)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29DF050E4();
    sub_29E185684(&qword_2A181E4A8, type metadata accessor for UIUserInterfaceSizeClass);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E4A0);
    }
  }
}

void sub_29E187980()
{
  if (!qword_2A181E4B0)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_29E185684(&qword_2A181E4A8, type metadata accessor for UIUserInterfaceSizeClass);
    v0 = sub_29E2C47C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E4B0);
    }
  }
}

void sub_29E187A1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29E187A70()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E187B5C(uint64_t a1, char a2)
{
  v4 = sub_29E2C2B84();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  sub_29DE9408C(0, &qword_2A1A626C0);
  *v7 = sub_29E2C3CF4();
  (*(v5 + 104))(v7, *MEMORY[0x29EDCA278], v4);
  v9 = sub_29E2C2BA4();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    *(v8 + 48) = a2 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_29E187CC0()
{
  v0 = sub_29E2C0AB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2C0B44();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC7848], v0, v6);
  sub_29E2C0AE4();
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_29E2C0B14();
  sub_29DE9408C(0, &qword_2A1819BB0);
  v10 = sub_29E2C3F34();
  [v10 contentInsets];
  [v10 setContentInsets_];
  [v10 contentInsets];
  [v10 setContentInsets_];
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_29E187EC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CycleLogSpacerDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E187F20@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s24MenstrualCyclesAppPlugin17CycleTimelineStepO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id sub_29E187F5C()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController____lazy_storage___cycleTimelineViewController;
  v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController____lazy_storage___cycleTimelineViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController____lazy_storage___cycleTimelineViewController);
  }

  else
  {
    sub_29E187FC0(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_29E187FC0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_cycleTimelineDataProvider);
  sub_29E18A440();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E2CAB20;
  v3 = *MEMORY[0x29EDC3248];
  *(v2 + 32) = *MEMORY[0x29EDC3248];
  v4 = objc_allocWithZone(type metadata accessor for InteractiveTimelineViewController());

  v5 = v3;
  v6 = sub_29DF61F04(v1, v2, v4);
  v7 = sub_29E20BE8C();
  v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin32InteractiveTimelineDateIndicator_alwaysFormatForCurrentYear] = 1;

  v8 = v6;
  v9 = [v8 view];
  if (v9)
  {
    v10 = v9;
    [v9 setUserInteractionEnabled_];

    v11 = [v8 view];
    if (v11)
    {
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_29E1880EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v4 = sub_29E2C3384();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = MEMORY[0x2A1C7C4A8](v8).n128_u64[0];
  v11 = &v46[-v10];
  v47.receiver = v1;
  v47.super_class = ObjectType;
  objc_msgSendSuper2(&v47, sel_viewDidLoad, v9);
  sub_29E2C3314();
  (*(v5 + 16))(v7, v11, v4);
  if (qword_2A1A62788 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A67F80;
  sub_29E2BCC74();
  sub_29E2C3414();
  (*(v5 + 8))(v11, v4);
  v13 = sub_29E2C33A4();

  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  *&v46[8] = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000013, 0x800000029E301860);
  MEMORY[0x29ED7FCC0](46, 0xE100000000000000);
  MEMORY[0x29ED7FCC0](0x427972616D697250, 0xED00006E6F747475);
  v14 = sub_29E2C33A4();

  v15 = [v1 hxui:v13 addPrimaryFooterButtonWithTitle:v14 accessibilityIdentifier:?];

  v16 = sub_29E187F5C();
  [v1 addChildViewController_];

  v17 = [v1 contentView];
  v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController____lazy_storage___cycleTimelineViewController;
  v19 = [*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController____lazy_storage___cycleTimelineViewController] view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  [v17 addSubview_];

  sub_29DF5C17C(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29E2CDBD0;
  v22 = [*&v1[v18] view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v1 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v21 + 32) = v27;
  v28 = [*&v1[v18] view];
  if (!v28)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v29 = v28;
  v30 = [v28 leadingAnchor];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v21 + 40) = v34;
  v35 = [*&v1[v18] view];
  if (!v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = v35;
  v37 = [v35 trailingAnchor];

  v38 = [v1 view];
  if (v38)
  {
    v39 = v38;
    v40 = objc_opt_self();
    v41 = [v39 trailingAnchor];

    v42 = [v37 constraintEqualToAnchor_];
    *(v21 + 48) = v42;
    sub_29DEB8834();
    v43 = sub_29E2C3604();

    [v40 activateConstraints_];

    sub_29E18872C();
    [*&v1[v18] didMoveToParentViewController_];
    v44 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_footerButton];
    *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_footerButton] = v15;
    v45 = v15;

    sub_29E188B88();
    return;
  }

LABEL_17:
  __break(1u);
}

void sub_29E18872C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViews;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
LABEL_24:
    v4 = sub_29E2C4484();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViewBottomConstraints;
  sub_29E2BF404();
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29ED80D70](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v7 = *(v3 + 8 * v6 + 32);
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

      v10 = *&v7[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31OnboardingCycleTimelineInfoView_pillView];
      v11 = [v1 view];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      [v11 frame];
      v36 = v13;

      v14.f64[0] = 320.0;
      v15 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v14, v36)).i64[0], 0);
      v16 = vbslq_s8(v15, xmmword_29E2E28A0, xmmword_29E2CD390);
      v17 = vbslq_s8(v15, xmmword_29E2E28B0, xmmword_29E2CD380);
      v18 = (v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration);
      v20 = *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration + 32);
      v19 = *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration + 40);
      v21 = *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration);
      v22 = *(v10 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14StaticPillView_configuration + 16);
      *v18 = v17;
      v18[1] = v16;
      v18[2] = xmmword_29E2CD3A0;
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v17, v21), vceqq_f64(v16, v22))))) & 1) != 0 || (v20 == 7.0 ? (v23 = v19 == 15.0) : (v23 = 0), !v23))
      {
        sub_29DE994F4();
      }

      v24 = v8;
      [v24 setTranslatesAutoresizingMaskIntoConstraints_];
      v25 = [v1 contentView];
      [v25 addSubview_];

      sub_29E189760(v24);
      [v24 setAlpha_];
      v26 = [v1 contentView];
      v27 = [v26 bottomAnchor];

      v28 = [v24 bottomAnchor];
      v29 = [v27 constraintEqualToAnchor_];

      swift_beginAccess();
      v30 = v29;
      MEMORY[0x29ED7FDC0]();
      if (*((*&v1[v5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      sub_29E2C3674();
      swift_endAccess();

      ++v6;
      if (v9 == v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    v32 = objc_allocWithZone(MEMORY[0x29EDC7DB0]);
    aBlock[4] = sub_29E18A4B8;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29DF49BB8;
    aBlock[3] = &unk_2A24BD2E8;
    v33 = _Block_copy(aBlock);
    v34 = v1;

    v35 = [v32 initWithDuration:0 curve:v33 animations:0.25];
    _Block_release(v33);
    [v35 startAnimation];
  }
}

void sub_29E188B88()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStepCount;
  v7 = *&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStepCount];
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViews;
  swift_beginAccess();
  v9 = *&v1[v8];
  if (v9 >> 62)
  {
    if (sub_29E2C4484() < v7)
    {
      goto LABEL_3;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_3:
    sub_29E2C04B4();
    v10 = sub_29E2C0504();
    v11 = sub_29E2C3A14();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136446210;
      v14 = sub_29E2C4AE4();
      v16 = sub_29DFAA104(v14, v15, v25);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_29DE74000, v10, v11, "[%{public}s] Current step is larger than total number of steps possible in onboarding.", v12, 0xCu);
      sub_29DE93B3C(v13);
      MEMORY[0x29ED82140](v13, -1, -1);
      MEMORY[0x29ED82140](v12, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return;
  }

  v17 = [v1 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = *&v1[v6];
  swift_beginAccess();
  v20 = *&v1[v8];
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x29ED80D70](v19);
    goto LABEL_12;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = *(v20 + 8 * v19 + 32);
LABEL_12:
  v22 = v21;
  swift_endAccess();
  v23 = [v22 description];
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
    v24 = sub_29E2C33A4();
  }

  [v18 setAccessibilityIdentifier_];
}

id sub_29E188ECC(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1 & 1);
  if (!*(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStep))
  {
    *(v1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_animatingStep) = 1;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = v1;
    sub_29E25CC24(4, sub_29E18A498, v4);
  }

  return result;
}

void sub_29E188FE8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2C3384();
  v60 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v53 - v10;
  v12 = sub_29E2C0514();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_animatingStep] & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStepCount;
    v18 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_timelineSteps;
    if (*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStepCount] < *(*&v1[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_timelineSteps] + 16))
    {
      v56 = v6;
      v58 = v11;
      v59 = v14;
      sub_29E2C04B4();
      v19 = v1;
      v20 = sub_29E2C0504();
      v57 = sub_29E2C3A34();
      if (os_log_type_enabled(v20, v57))
      {
        v54 = v20;
        v55 = v5;
        v21 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v61 = v53;
        *v21 = 136315650;
        aBlock[0] = ObjectType;
        swift_getMetatypeMetadata();
        v22 = sub_29E2C3464();
        v24 = sub_29DFAA104(v22, v23, &v61);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2048;
        v25 = *&v1[v17];

        if (__OFADD__(v25, 1))
        {
          goto LABEL_24;
        }

        *(v21 + 14) = v25 + 1;

        *(v21 + 22) = 2048;
        v26 = *(*&v1[v18] + 16);

        *(v21 + 24) = v26;
        v27 = v54;
        _os_log_impl(&dword_29DE74000, v54, v57, "[%s] Attempting to advance from step %ld of %ld", v21, 0x20u);
        v28 = v53;
        sub_29DE93B3C(v53);
        MEMORY[0x29ED82140](v28, -1, -1);
        MEMORY[0x29ED82140](v21, -1, -1);

        (*(v13 + 8))(v16, v59);
      }

      else
      {

        (*(v13 + 8))(v16, v59);
      }

      v29 = *&v1[v17];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      v32 = v58;
      if (!v30)
      {
        *&v1[v17] = v31;
        v33 = *&v1[v18];
        v34 = *(v33 + 16);
        if (v31 == v34)
        {
          sub_29DE9DC34(&v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_tutorialProvider], aBlock);
          v35 = v63;
          v36 = v64;
          sub_29DE966D4(aBlock, v63);
          (*(v36 + 1))(v35, v36);
          sub_29DE93B3C(aBlock);
          goto LABEL_17;
        }

        if (v31 < v34)
        {
          v37 = v33 + 32;
          v38 = *(v37 + v31);
          v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStep] = v38;
          v39 = v60;
          if (v38 == *(v37 + v34 - 1))
          {
            v40 = *&v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_footerButton];
            if (v40)
            {
              v41 = v40;
              sub_29E2C3314();
              v42 = v56;
              (*(v39 + 16))(v8, v32, v56);
              if (qword_2A1A62788 != -1)
              {
                swift_once();
              }

              v43 = qword_2A1A67F80;
              sub_29E2BCC74();
              sub_29E2C3414();
              (*(v39 + 8))(v32, v42);
              v44 = sub_29E2C33A4();

              [v41 setTitle:v44 forState:0];
            }
          }

          sub_29E189A2C();
          sub_29E188B88();
          v45 = swift_allocObject();
          *(v45 + 16) = v19;
          v46 = objc_allocWithZone(MEMORY[0x29EDC7DB0]);
          v64 = sub_29E18A408;
          v65 = v45;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_29DF49BB8;
          v63 = &unk_2A24BD1F8;
          v47 = _Block_copy(aBlock);
          v48 = v19;

          v49 = [v46 initWithDuration:0 curve:v47 animations:0.25];
          _Block_release(v47);
          [v49 startAnimation];

LABEL_17:
          v50 = v19[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStep] - 3;
          v16 = [v19 buttonTray];
          if (v50 > 1)
          {
            v52 = sub_29E2C33A4();
            goto LABEL_21;
          }

          sub_29E2C3394();
          if (qword_2A1A62788 == -1)
          {
LABEL_19:
            v51 = qword_2A1A67F80;
            sub_29E2BCC74();
            sub_29E2C3414();
            v52 = sub_29E2C33A4();

LABEL_21:
            [v16 setCaptionText_];

            return;
          }

LABEL_26:
          swift_once();
          goto LABEL_19;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }
}

void sub_29E189760(void *a1)
{
  sub_29DF5C17C(0, &qword_2A1A619B0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E2CDBD0;
  v4 = [a1 topAnchor];
  v5 = sub_29E187F5C();
  v6 = [v5 view];

  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = [v6 bottomAnchor];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 frame];
  v11 = v10;

  if (v11 > 320.0)
  {
    v12 = 44.0;
  }

  else
  {
    v12 = 24.0;
  }

  v13 = objc_opt_self();
  v14 = [v4 constraintEqualToAnchor:v7 constant:v12];

  *(v3 + 32) = v14;
  v15 = [a1 leadingAnchor];
  v16 = [v1 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v3 + 40) = v18;
  v19 = [a1 trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v3 + 48) = v22;
  sub_29DEB8834();
  v23 = sub_29E2C3604();

  [v13 activateConstraints_];
}

void sub_29E189A2C()
{
  LODWORD(v1) = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStep);
  if (v1 > 3)
  {
    if (v1 != 4)
    {
      goto LABEL_19;
    }

    v6 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_cycleTimelineDataProvider);
    v7 = *(v6 + 40);
    v8 = *(v6 + 80);
    v9 = __OFADD__(v7, v8);
    v1 = v7 + v8;
    if (v9)
    {
      __break(1u);
      return;
    }

    if (!__OFADD__(v1, 5))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStep) <= 1u)
  {
    if (*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStep))
    {
      v2 = *(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_cycleTimelineDataProvider);
      *(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_showSupplementaryData) = 1;
      v3 = *(*(v2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34OnboardingCycleLoggingDataProvider_observers) + 16);
      v4 = swift_allocObject();
      *(v4 + 16) = sub_29E18A428;
      *(v4 + 24) = v2;
      v10[4] = sub_29E18A430;
      v10[5] = v4;
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 1107296256;
      v10[2] = sub_29DF4FA14;
      v10[3] = &unk_2A24BD248;
      v5 = _Block_copy(v10);
      swift_retain_n();

      [v3 notifyObservers_];
      _Block_release(v5);
    }

    return;
  }

  if (v1 == 2)
  {
    if (__OFADD__(*(*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_cycleTimelineDataProvider) + 32), *(*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_cycleTimelineDataProvider) + 80)))
    {
      __break(1u);
    }
  }

  else if (__OFADD__(*(*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_cycleTimelineDataProvider) + 40), *(*(v0 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_cycleTimelineDataProvider) + 80)))
  {
    __break(1u);
  }

LABEL_19:

  sub_29E189C34();
}

uint64_t sub_29E189C34()
{
  v18 = sub_29E2BCFB4();
  v1 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E2BCEA4();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E2C31A4();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x2A1C7C4A8](v6).n128_u64[0];
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*&v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_calendarCache] currentCalendar];
  sub_29E2BCDC4();

  sub_29E2BCBA4();
  sub_29E2C30C4();
  v0[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_animatingStep] = 1;
  v12 = sub_29E187F5C();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  v14 = v0;
  v15 = sub_29E20BFA4();
  v16 = v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state];
  v15[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_state] = 3;
  sub_29DF811E4(v16);
  sub_29DF57AB8();
  sub_29E2C4344();
  MEMORY[0x29ED79740](v19 & ~(v19 >> 63), 0);
  sub_29DF8370C(v3, 1, sub_29E18A438, v13);

  (*(v1 + 8))(v3, v18);
  return (*(v7 + 8))(v10, v6);
}

void sub_29E189F40(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStepCount;
  v3 = *(a1 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_currentStepCount);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    goto LABEL_9;
  }

  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViews;
  swift_beginAccess();
  v6 = *(a1 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (v3 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  for (i = *(v6 + 8 * v4 + 32); ; i = MEMORY[0x29ED80D70](v4))
  {
    v8 = i;
    swift_endAccess();
    [v8 setAlpha_];

    v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViewBottomConstraints;
    swift_beginAccess();
    v10 = *(a1 + v9);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x29ED80D70](v4);
    }

    else
    {
      if (v3 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v11 = *(v10 + 8 * v4 + 32);
    }

    v12 = v11;
    swift_endAccess();
    [v12 setActive_];

    v3 = *(a1 + v2);
LABEL_9:
    v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViews;
    swift_beginAccess();
    v13 = *(a1 + v4);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x29ED80D70](v3);
      goto LABEL_13;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v3 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v14 = *(v13 + 8 * v3 + 32);
LABEL_13:
    v15 = v14;
    swift_endAccess();
    [v15 setAlpha_];

    v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_infoViewBottomConstraints;
    swift_beginAccess();
    v16 = *(a1 + v4);
    if ((v16 & 0xC000000000000001) != 0)
    {
      goto LABEL_20;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    if (v3 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v16 + 8 * v3 + 32);
      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_20:
  v17 = MEMORY[0x29ED80D70](v3);
LABEL_17:
  v18 = v17;
  swift_endAccess();
  [v18 setActive_];
}

void sub_29E18A180(char a1, uint64_t a2)
{
  if (a1)
  {
    *(a2 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin40OnboardingTimelineTutorialViewController_animatingStep) = 0;
    v2 = *MEMORY[0x29EDC7F10];
    v3 = sub_29E187F5C();
    UIAccessibilityPostNotification(v2, v3);
  }
}

unint64_t sub_29E18A300()
{
  result = qword_2A181E4C8;
  if (!qword_2A181E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E4C8);
  }

  return result;
}

unint64_t sub_29E18A358()
{
  result = qword_2A181E4D0;
  if (!qword_2A181E4D0)
  {
    sub_29DF5C17C(255, &qword_2A181E4D8, &type metadata for CycleTimelineStep, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181E4D0);
  }

  return result;
}

uint64_t sub_29E18A410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E18A440()
{
  if (!qword_2A181B620)
  {
    type metadata accessor for HKMCDisplayTypeIdentifier(255);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181B620);
    }
  }
}

uint64_t sub_29E18A4C0(uint64_t a1)
{
  sub_29DEC6594();
  v4 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v33 = &v31 - v8;
  v9 = sub_29E2C31A4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v15 = &v31 - v14;
  sub_29E18E664(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
  if ((sub_29E2C32B4() & 1) == 0 || (sub_29DEC65FC(), result = sub_29E2C3294(), (result & 1) == 0))
  {
    if (sub_29E2C3284())
    {
      v32 = v4;
      sub_29DEC65FC();
      v18 = v10[2];
      v31 = *(v17 + 36);
      v18(v15, v1 + v31, v9);
      sub_29E18E604(v1, sub_29DEC65FC);
      result = sub_29E2C32B4();
      if (result)
      {
        v19 = v33;
        v18(v33, a1, v9);
        v20 = v32;
        v21 = v10[4];
        v21(v19 + *(v32 + 48), v15, v9);
        sub_29E190428(v19, v6, sub_29DEC6594);
        v22 = *(v20 + 48);
        v21(v1, v6, v9);
        v23 = v10[1];
        v23(&v6[v22], v9);
        sub_29E091CC4(v19, v6, sub_29DEC6594);
        v21(v1 + v31, &v6[*(v20 + 48)], v9);
        return (v23)(v6, v9);
      }

      __break(1u);
      goto LABEL_11;
    }

    (v10[2])(v15, v1, v9);
    sub_29E18E604(v1, sub_29DEC65FC);
    v34 = 1;
    sub_29E18E664(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
    sub_29E2C4334();
    result = sub_29E2C32B4();
    if ((result & 1) == 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v24 = v10[4];
    v25 = v33;
    v24(v33, v15, v9);
    v24((v25 + *(v4 + 48)), v12, v9);
    sub_29E190428(v25, v6, sub_29DEC6594);
    v26 = v4;
    v27 = *(v4 + 48);
    v24(v1, v6, v9);
    v28 = v10[1];
    v28(&v6[v27], v9);
    sub_29E091CC4(v25, v6, sub_29DEC6594);
    v29 = *(v26 + 48);
    sub_29DEC65FC();
    v24((v1 + *(v30 + 36)), &v6[v29], v9);
    return (v28)(v6, v9);
  }

  return result;
}

id sub_29E18A99C(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (MEMORY[0x29EDCA190] >> 62)
  {
    v16 = ObjectType;
    if (sub_29E2C4484())
    {
      v7 = sub_29DE92AF0(MEMORY[0x29EDCA190]);
    }

    else
    {
      v7 = MEMORY[0x29EDCA1A0];
    }

    ObjectType = v16;
  }

  else
  {
    v7 = MEMORY[0x29EDCA1A0];
  }

  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsCollectionView_subscriptions] = v7;
  *&v3[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartsCollectionView_modelProvider] = a2;
  v17.receiver = v3;
  v17.super_class = ObjectType;

  v8 = objc_msgSendSuper2(&v17, sel_initWithFrame_collectionViewLayout_, a1, 0.0, 0.0, 0.0, 0.0);
  v9 = *MEMORY[0x29EDC8210];
  v10 = v8;
  [v10 setDecelerationRate_];
  [v10 setAlwaysBounceHorizontal_];
  [v10 setAlwaysBounceVertical_];
  v11 = v10;
  [v11 setDirectionalLockEnabled_];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemBackgroundColor];
  [v13 setBackgroundColor_];

  [v13 setAllowsSelection_];
  [v13 setShowsHorizontalScrollIndicator_];
  [v13 setShowsVerticalScrollIndicator_];

  return v13;
}

void sub_29E18AC38()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2C04B4();
  v6 = sub_29E2C0504();
  v7 = sub_29E2C3A04();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_29E2C4AE4();
    v12 = sub_29DFAA104(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29DE74000, v6, v7, "[%{public}s] Reconfiguring all visible items", v8, 0xCu);
    sub_29DE93B3C(v9);
    MEMORY[0x29ED82140](v9, -1, -1);
    MEMORY[0x29ED82140](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = [v1 indexPathsForVisibleItems];
  if (!v13)
  {
    sub_29E2BCFB4();
    sub_29E2C3614();
    v13 = sub_29E2C3604();
  }

  [v1 reconfigureItemsAtIndexPaths_];
}

id CycleChartsCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id CycleChartsCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E18AFCC@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  sub_29DEC6594();
  v97 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v96 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v95 = &v88 - v5;
  sub_29DEC65FC();
  v92 = v6;
  v89 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v111 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v110 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CycleChartCycle(0);
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v107 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCFB4();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v113 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E2C31A4();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v93 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v94 = &v88 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v88 - v21;
  MEMORY[0x2A1C7C4A8](v23);
  v25 = &v88 - v24;
  *&v27 = MEMORY[0x2A1C7C4A8](v26).n128_u64[0];
  v29 = &v88 - v28;
  v112 = v1;
  v30 = [v1 indexPathsForVisibleItems];
  v31 = sub_29E2C3614();

  v32 = *(v31 + 16);
  v114 = v22;
  v115 = v16;
  v91 = v29;
  if (v32)
  {
    v116 = MEMORY[0x29EDCA190];
    sub_29E181AD4(0, v32, 0);
    v33 = v16;
    v34 = 0;
    v35 = v116;
    v106 = v31 + ((v13[80] + 32) & ~v13[80]);
    v104 = v13;
    v105 = (v13 + 16);
    v100 = (v33 + 8);
    v101 = (v33 + 16);
    v98 = v33 + 32;
    v99 = (v13 + 8);
    v36 = v113;
    v102 = v32;
    v103 = v31;
    while (v34 < *(v31 + 16))
    {
      (*(v13 + 2))(v36, v106 + *(v13 + 9) * v34, v12);
      result = [v112 dataSource];
      if (!result)
      {
        goto LABEL_32;
      }

      v38 = v35;
      type metadata accessor for CycleChartsCollectionViewDataSource();
      v39 = swift_dynamicCastClass();
      if (!v39)
      {
        goto LABEL_31;
      }

      v40 = v39;
      v41 = sub_29E2BCFA4();
      if ((v41 & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      v42 = *(v40 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource_cycles);
      if (v41 >= *(v42 + 16))
      {
        goto LABEL_28;
      }

      v43 = v107;
      sub_29E190428(v42 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v41, v107, type metadata accessor for CycleChartCycle);
      sub_29E2BCF94();
      v44 = v12;
      v45 = v110;
      sub_29E02CAF8((v43 + *(v109 + 24)), v110);
      v46 = v114;
      (*v101)(v114, v45, v15);
      v47 = v45;
      v12 = v44;
      v36 = v113;
      sub_29E18E604(v47, sub_29DEFCC2C);
      sub_29E2C3104();
      swift_unknownObjectRelease();
      (*v100)(v46, v15);
      (*v99)(v36, v12);
      sub_29E18E604(v43, type metadata accessor for CycleChartCycle);
      v35 = v38;
      v116 = v38;
      v49 = *(v38 + 16);
      v48 = *(v38 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_29E181AD4(v48 > 1, v49 + 1, 1);
        v35 = v116;
      }

      ++v34;
      *(v35 + 16) = v49 + 1;
      (*(v115 + 32))(v35 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v49, v25, v15);
      v31 = v103;
      v13 = v104;
      if (v102 == v34)
      {

        v22 = v114;
        v16 = v115;
        v29 = v91;
        v50 = *(v35 + 16);
        if (v50)
        {
          goto LABEL_12;
        }

LABEL_24:

        v87 = 1;
        v86 = v90;
        return (*(v89 + 56))(v86, v87, 1, v92);
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = swift_unknownObjectRelease();
LABEL_32:
    __break(1u);
    return result;
  }

  v35 = MEMORY[0x29EDCA190];
  v50 = *(MEMORY[0x29EDCA190] + 16);
  if (!v50)
  {
    goto LABEL_24;
  }

LABEL_12:
  v52 = *(v16 + 16);
  v51 = (v16 + 16);
  v53 = (v51[64] + 32) & ~v51[64];
  v103 = v35;
  v54 = v35 + v53;
  v112 = v51;
  v113 = v52;
  (v52)(v29, v35 + v53, v15);
  sub_29E2C3174();
  v106 = sub_29E18E664(&qword_2A1A61A40, MEMORY[0x29EDBA2F8]);
  if ((sub_29E2C32B4() & 1) == 0)
  {
    goto LABEL_30;
  }

  v55 = v95;
  (v113)(v95, v29, v15);
  v56 = v97;
  v57 = v22;
  v58 = (v115 + 32);
  v59 = *(v115 + 32);
  v59(v55 + *(v97 + 48), v57, v15);
  v60 = v96;
  sub_29E190428(v55, v96, sub_29DEC6594);
  v61 = *(v56 + 48);
  v59(v111, v60, v15);
  v62 = *(v115 + 8);
  v115 += 8;
  v63 = v60 + v61;
  v64 = v111;
  v62(v63, v15);
  v65 = v55;
  v66 = v115;
  sub_29E091CC4(v65, v60, sub_29DEC6594);
  v67 = *(v56 + 48);
  v68 = v94;
  v108 = *(v92 + 36);
  v104 = v59;
  v105 = v58;
  v59(v64 + v108, (v60 + v67), v15);
  v62(v60, v15);
  v107 = *(v66 + 64);
  while (1)
  {
    (v113)(v68, v54, v15);
    if (sub_29E2C32B4())
    {
      v84 = sub_29E2C3294();
      v83 = v68;
      if (v84)
      {
        goto LABEL_16;
      }
    }

    v109 = v54;
    v110 = v50;
    if ((sub_29E2C3284() & 1) == 0)
    {
      v69 = v114;
      (v113)(v114, v64, v15);
      sub_29E18E604(v64, sub_29DEC65FC);
      v116 = 1;
      sub_29E18E664(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
      v70 = v93;
      sub_29E2C4334();
      v71 = sub_29E2C32B4();
      v72 = v68;
      v73 = v71;
      v62(v72, v15);
      v74 = v69;
      v75 = v70;
      v76 = v108;
      if ((v73 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v76 = v108;
    v75 = v114;
    (v113)(v114, v64 + v108, v15);
    sub_29E18E604(v64, sub_29DEC65FC);
    v85 = sub_29E2C32B4();
    v74 = v68;
    if ((v85 & 1) == 0)
    {
      break;
    }

LABEL_15:
    v77 = v95;
    v78 = v104;
    (v104)(v95, v74, v15);
    v79 = v97;
    (v78)(v77 + *(v97 + 48), v75, v15);
    v80 = v96;
    sub_29E190428(v77, v96, sub_29DEC6594);
    v81 = *(v79 + 48);
    (v78)(v111, v80, v15);
    v62(v80 + v81, v15);
    v82 = v77;
    v64 = v111;
    sub_29E091CC4(v82, v80, sub_29DEC6594);
    (v78)(v64 + v76, v80 + *(v79 + 48), v15);
    v83 = v80;
    v68 = v94;
    v54 = v109;
    v50 = v110;
LABEL_16:
    v62(v83, v15);
    v54 += v107;
    if (!--v50)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:

  v62(v91, v15);
  v86 = v90;
  sub_29E091CC4(v64, v90, sub_29DEC65FC);
  v87 = 0;
  return (*(v89 + 56))(v86, v87, 1, v92);
}

unint64_t sub_29E18BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v44 = a1;
  v5 = sub_29E2C31A4();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CycleChartCycle(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v43 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v10);
  v45 = &v42 - v11;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v42 - v13;
  sub_29DF0F138(0);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v18);
  v20 = (&v42 - v19);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v21 = type metadata accessor for CycleChartsModel();
  v22 = *(*(v21 - 8) + 48);
  result = v22(v20, 1, v21);
  if (result == 1)
  {
    goto LABEL_14;
  }

  v24 = *v20;
  sub_29E2BF404();
  sub_29E18E604(v20, type metadata accessor for CycleChartsModel);
  result = sub_29E2BCFA4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v24 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29E190428(v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v14, type metadata accessor for CycleChartCycle);

  v25 = *(a4 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  result = v22(v17, 1, v21);
  if (result != 1)
  {
    v26 = *&v17[*(v21 + 32)];
    sub_29E2BF404();
    sub_29E18E604(v17, type metadata accessor for CycleChartsModel);
    v27 = *(v44 + qword_2A1820DA8);
    if (v27)
    {
      v28 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows;
      v29 = *&v27[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows];
      v30 = v27;
      sub_29E2BF404();
      v31 = sub_29E0AE550(v26, v29);

      if (v31)
      {
        v32 = *&v27[v28];
        sub_29E2BF404();
        v33 = sub_29E0AE7A0(v26, v32);

        if (v33)
        {

          v34 = v45;
          sub_29E190428(v14, v45, type metadata accessor for CycleChartCycle);
          v35 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17CycleChartDayView_cycle;
          swift_beginAccess();
          v36 = v43;
          sub_29E190428(&v30[v35], v43, type metadata accessor for CycleChartCycle);
          swift_beginAccess();
          sub_29E190490(v34, &v30[v35], type metadata accessor for CycleChartCycle);
          swift_endAccess();
          sub_29E2B6554(v36);
          sub_29E18E604(v36, type metadata accessor for CycleChartCycle);
          sub_29E18E604(v34, type metadata accessor for CycleChartCycle);
          v37 = v49;
          (*(v46 + 16))(v49, v48, v47);
          sub_29E2B69DC(v37);

          return sub_29E18E604(v14, type metadata accessor for CycleChartCycle);
        }
      }
    }

    v38 = v45;
    sub_29E190428(v14, v45, type metadata accessor for CycleChartCycle);
    v39 = v49;
    (*(v46 + 16))(v49, v48, v47);
    v40 = objc_allocWithZone(type metadata accessor for CycleChartDayView());

    v41 = sub_29E2B7960(v38, v39, v25, v26);

    sub_29E18E4C0(v41);
    return sub_29E18E604(v14, type metadata accessor for CycleChartCycle);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29E18C168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DF13BD8(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E2C31A4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_29E190048(0, &qword_2A181E5A0, type metadata accessor for CycleChartDayView);
  v9 = sub_29E2C3BC4();
  sub_29E18E604(v6, sub_29DF13BD8);
  return v9;
}

unint64_t sub_29E18C2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C31A4();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v72 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v73 = &v62 - v12;
  sub_29DF0F138(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = (&v62 - v17);
  v19 = type metadata accessor for CycleChartCycle(0);
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v62 = (&v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v22);
  v66 = &v62 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v62 - v25;
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = a5;
  sub_29E2C1214();

  v27 = type metadata accessor for CycleChartsModel();
  v68 = *(*(v27 - 8) + 48);
  result = v68(v18, 1, v27);
  if (result == 1)
  {
    goto LABEL_14;
  }

  v29 = *v18;
  sub_29E2BF404();
  sub_29E18E604(v18, type metadata accessor for CycleChartsModel);
  result = sub_29E2BCFA4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v29 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29E190428(v29 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * result, v26, type metadata accessor for CycleChartCycle);

  sub_29E2BCF94();
  v30 = *(v19 + 24);
  v65 = v26;
  sub_29E02CAF8(&v26[v30], v8);
  v32 = v70;
  v31 = v71;
  v33 = v72;
  v64 = *(v70 + 16);
  v64(v72, v8, v71);
  sub_29E18E604(v8, sub_29DEFCC2C);
  sub_29E2C3104();
  v36 = *(v32 + 8);
  v35 = v32 + 8;
  v34 = v36;
  v36(v33, v31);
  v63 = *(v69 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  result = v68(v15, 1, v27);
  if (result != 1)
  {
    v37 = *&v15[*(v27 + 32)];
    sub_29E2BF404();
    sub_29E18E604(v15, type metadata accessor for CycleChartsModel);
    v38 = *(v67 + qword_2A1820DA8);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows;
      v40 = *&v38[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows];
      v41 = v38;
      sub_29E2BF404();
      v42 = sub_29E0AE550(v37, v40);

      if (v42)
      {
        v43 = *&v38[v39];
        sub_29E2BF404();
        v44 = sub_29E0AE7A0(v37, v43);

        if (v44)
        {

          v46 = v65;
          v45 = v66;
          sub_29E190428(v65, v66, type metadata accessor for CycleChartCycle);
          v47 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_cycle;
          swift_beginAccess();
          v48 = v34;
          v49 = v62;
          sub_29E190428(&v41[v47], v62, type metadata accessor for CycleChartCycle);
          swift_beginAccess();
          sub_29E190490(v45, &v41[v47], type metadata accessor for CycleChartCycle);
          swift_endAccess();
          sub_29E28A714(v49);
          v50 = v49;
          v51 = v48;
          sub_29E18E604(v50, type metadata accessor for CycleChartCycle);
          sub_29E18E604(v45, type metadata accessor for CycleChartCycle);
          v52 = v72;
          v53 = v73;
          v31 = v71;
          v64(v72, v73, v71);
          v54 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_dayIndex;
          swift_beginAccess();
          (*(v70 + 24))(&v41[v54], v52, v31);
          swift_endAccess();
          [v41 setNeedsDisplay];

          v51(v52, v31);
LABEL_11:
          v51(v53, v31);
          return sub_29E18E604(v46, type metadata accessor for CycleChartCycle);
        }
      }

      v31 = v71;
    }

    v46 = v65;
    v71 = v35;
    v55 = v34;
    v56 = v66;
    sub_29E190428(v65, v66, type metadata accessor for CycleChartCycle);
    v57 = v72;
    v53 = v73;
    v64(v72, v73, v31);
    v58 = objc_allocWithZone(type metadata accessor for CycleChartDayBackgroundView());
    v59 = v63;

    v60 = v56;
    v51 = v55;
    v61 = sub_29E28A9B8(v60, v57, v59, v37);
    sub_29E18E4C0(v61);
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_29E18CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a4;
  v61 = a1;
  sub_29DEFCC2C();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2C31A4();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v67 = &v56 - v12;
  sub_29DF0F138(0);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v18 = (&v56 - v17);
  v19 = type metadata accessor for CycleChartCycle(0);
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v56 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v22);
  v60 = &v56 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v26 = &v56 - v25;
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = a5;
  sub_29E2C1214();

  v27 = type metadata accessor for CycleChartsModel();
  v28 = *(*(v27 - 8) + 48);
  result = v28(v18, 1, v27);
  if (result == 1)
  {
    goto LABEL_14;
  }

  v30 = *v18;
  sub_29E2BF404();
  sub_29E18E604(v18, type metadata accessor for CycleChartsModel);
  result = sub_29E2BCFA4();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v30 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_29E190428(v30 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * result, v26, type metadata accessor for CycleChartCycle);

  v31 = *(v19 + 24);
  v63 = v26;
  sub_29E02CAF8(&v26[v31], v8);
  v32 = v64;
  v33 = v65;
  v34 = v66;
  v58 = *(v64 + 16);
  v58(v66, v8, v65);
  sub_29E18E604(v8, sub_29DEFCC2C);
  sub_29E2C3104();
  v59 = *(v32 + 8);
  v59(v34, v33);
  v57 = *(v62 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  result = v28(v15, 1, v27);
  if (result != 1)
  {
    v35 = *&v15[*(v27 + 32)];
    sub_29E2BF404();
    sub_29E18E604(v15, type metadata accessor for CycleChartsModel);
    v36 = *(v61 + qword_2A1820DA8);
    if (v36)
    {
      v37 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows;
      v38 = *&v36[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows];
      v39 = v36;
      sub_29E2BF404();
      v40 = sub_29E0AE550(v35, v38);

      if (v40)
      {
        v41 = *&v36[v37];
        sub_29E2BF404();
        v42 = sub_29E0AE7A0(v35, v41);

        if (v42)
        {

          v43 = v63;
          v44 = v60;
          sub_29E190428(v63, v60, type metadata accessor for CycleChartCycle);
          v45 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_cycle;
          swift_beginAccess();
          v46 = v56;
          sub_29E190428(&v39[v45], v56, type metadata accessor for CycleChartCycle);
          swift_beginAccess();
          sub_29E190490(v44, &v39[v45], type metadata accessor for CycleChartCycle);
          swift_endAccess();
          sub_29E28A714(v46);
          sub_29E18E604(v46, type metadata accessor for CycleChartCycle);
          sub_29E18E604(v44, type metadata accessor for CycleChartCycle);
          v47 = v66;
          v48 = v67;
          v33 = v65;
          v58(v66, v67, v65);
          v49 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin27CycleChartDayBackgroundView_dayIndex;
          swift_beginAccess();
          (*(v64 + 24))(&v39[v49], v47, v33);
          swift_endAccess();
          [v39 setNeedsDisplay];

          v50 = v59;
          v59(v47, v33);
LABEL_11:
          v50(v48, v33);
          return sub_29E18E604(v43, type metadata accessor for CycleChartCycle);
        }
      }

      v33 = v65;
    }

    v43 = v63;
    v51 = v60;
    sub_29E190428(v63, v60, type metadata accessor for CycleChartCycle);
    v52 = v66;
    v48 = v67;
    v58(v66, v67, v33);
    v53 = objc_allocWithZone(type metadata accessor for CycleChartDayBackgroundView());
    v54 = v57;

    v55 = sub_29E28A9B8(v51, v52, v54, v35);
    sub_29E18E4C0(v55);
    v50 = v59;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_29E18D17C(uint64_t a1)
{
  sub_29DF0F138(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v20 - v6;
  v8 = *(a1 + qword_2A181E120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v9 = type metadata accessor for CycleChartsModel();
  v10 = *(*(v9 - 8) + 48);
  result = v10(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = &v7[*(v9 + 24)];
    v13 = *v12;
    v20 = *(v12 + 1);
    v21 = v13;
    sub_29E18E604(v7, type metadata accessor for CycleChartsModel);
    v14 = &v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_header];
    v15 = v20;
    *v14 = v21;
    *(v14 + 1) = v15;
    v14[32] = 0;
    [v8 setNeedsDisplay];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29E2C1214();

    result = v10(v4, 1, v9);
    if (result != 1)
    {
      v16 = &v4[*(v9 + 28)];
      v17 = *v16;
      v18 = *(v16 + 1);
      sub_29E18E604(v4, type metadata accessor for CycleChartsModel);
      v19 = &v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleChartLeadingAxisHeaderFooterView_footer];
      *v19 = v17;
      *(v19 + 1) = v18;
      v19[16] = 0;
      return [v8 setNeedsDisplay];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E18D3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  sub_29DF0F138(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + qword_2A181E120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v9 = type metadata accessor for CycleChartsModel();
  result = (*(*(v9 - 8) + 48))(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v11 = *&v7[*(v9 + 32)];
  sub_29E2BF404();
  sub_29E18E604(v7, type metadata accessor for CycleChartsModel);
  v12 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows;
  *&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] = v11;

  [v8 setNeedsDisplay];
  v13 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_overhang;
  v14 = *&v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_overhang];
  *&v14[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin10CycleChart_rows] = *&v8[v12];
  sub_29E2BF404();

  [v14 setNeedsDisplay];
  v15 = v19;
  if (a2 == 0x41676E696461656CLL && v19 == 0xEB00000000736978 || (sub_29E2C4914() & 1) != 0)
  {
    v16 = 0;
LABEL_6:
    v8[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin25CycleChartLeadingAxisView_role] = v16;
    v17 = *&v8[v13];
    v17[OBJC_IVAR____TtC24MenstrualCyclesAppPluginP33_F8F01C631BBF3C2F43B88E7CE0C17F3933CycleChartLeadingAxisOverhangView_role] = v16;
    [v17 setNeedsDisplay];
    return [v8 setNeedsDisplay];
  }

  if (a2 == 0xD000000000000015 && 0x800000029E2F4350 == v15 || (sub_29E2C4914() & 1) != 0)
  {
    v16 = 1;
    goto LABEL_6;
  }

  if (a2 == 0xD000000000000015 && 0x800000029E2F4370 == v15 || (result = sub_29E2C4914(), (result & 1) != 0))
  {
    v16 = 2;
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_29E18D6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a3;
  v49 = a4;
  v47 = a2;
  sub_29DF0F0A0(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v50 = &v45 - v10;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v45 - v12;
  sub_29DF0F138(0);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v17);
  v19 = &v45 - v18;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v45 - v21;
  v23 = *(a1 + qword_2A181E120);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  v24 = type metadata accessor for CycleChartsModel();
  v25 = *(*(v24 - 8) + 48);
  result = v25(v22, 1, v24);
  if (result == 1)
  {
    goto LABEL_26;
  }

  v27 = &v22[*(v24 + 24)];
  v28 = *v27;
  v51 = *(v27 + 1);
  v52 = v28;
  sub_29E18E604(v22, type metadata accessor for CycleChartsModel);
  v29 = &v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_header];
  v30 = v51;
  *v29 = v52;
  *(v29 + 1) = v30;
  v29[32] = 0;
  [v23 setNeedsDisplay];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  result = v25(v19, 1, v24);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v31 = &v19[*(v24 + 28)];
  v32 = *v31;
  v33 = *(v31 + 1);
  sub_29E18E604(v19, type metadata accessor for CycleChartsModel);
  v34 = &v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_footer];
  swift_beginAccess();
  *v34 = v32;
  *(v34 + 1) = v33;
  v34[16] = 0;
  [v23 setNeedsDisplay];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E2C1214();

  result = v25(v16, 1, v24);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v35 = *v16;
  sub_29E2BF404();
  sub_29E18E604(v16, type metadata accessor for CycleChartsModel);
  result = sub_29E2BCFA4();
  v36 = v50;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v37 = result;
  if (result >= *(v35 + 16))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v38 = type metadata accessor for CycleChartCycle(0);
  v39 = *(v38 - 8);
  sub_29E190428(v35 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v37, v13, type metadata accessor for CycleChartCycle);

  v40 = *(v39 + 56);
  v40(v13, 0, 1, v38);
  v41 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_cycle;
  swift_beginAccess();
  sub_29E190428(&v23[v41], v36, sub_29DF0F0A0);
  swift_beginAccess();
  sub_29E190490(v13, &v23[v41], sub_29DF0F0A0);
  swift_endAccess();
  sub_29DEFA428(v36);
  sub_29E18E604(v36, sub_29DF0F0A0);
  sub_29E18E604(v13, sub_29DF0F0A0);
  v43 = v47;
  v42 = v48;
  if (v47 == 0xD000000000000013 && 0x800000029E2F4390 == v48 || (sub_29E2C4914() & 1) != 0)
  {
    v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_role] = 0;
    return [v23 setNeedsDisplay];
  }

  if (v43 == 0xD000000000000024 && 0x800000029E2F43F0 == v42 || (sub_29E2C4914() & 1) != 0)
  {
    v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_role] = 0;
    [v23 setNeedsDisplay];
    v40(v36, 1, 1, v38);
    v44 = v46;
    sub_29E190428(&v23[v41], v46, sub_29DF0F0A0);
    swift_beginAccess();
    sub_29E190490(v36, &v23[v41], sub_29DF0F0A0);
    swift_endAccess();
    sub_29DEFA428(v44);
    sub_29E18E604(v44, sub_29DF0F0A0);
    return sub_29E18E604(v36, sub_29DF0F0A0);
  }

  if (v43 == 0xD000000000000011 && 0x800000029E2F43B0 == v42 || (sub_29E2C4914() & 1) != 0)
  {
    v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_role] = 2;
    return [v23 setNeedsDisplay];
  }

  if (v43 == 0x4F6E6F6974636573 && v42 == 0xEE0079616C726576 || (result = sub_29E2C4914(), (result & 1) != 0))
  {
    v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_role] = 1;
    [v23 setNeedsDisplay];
    *&v23[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21CycleChartSectionView_dayProvider] = *(a5 + 24);
  }

  return result;
}

id sub_29E18DE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 == 0xD000000000000017 && 0x800000029E2F4330 == a3;
  if (v4 || (sub_29E2C4914() & 1) != 0)
  {
    sub_29E18FF0C(0);
    return sub_29E2C3BD4();
  }

  if (a2 == 0x41676E696461656CLL && a3 == 0xEB00000000736978 || (sub_29E2C4914() & 1) != 0 || a2 == 0xD000000000000015 && 0x800000029E2F4350 == a3 || (sub_29E2C4914() & 1) != 0 || a2 == 0xD000000000000015 && 0x800000029E2F4370 == a3 || (sub_29E2C4914() & 1) != 0)
  {
    sub_29E18FED8(0);
    return sub_29E2C3BD4();
  }

  if (a2 == 0xD000000000000013 && 0x800000029E2F4390 == a3 || (sub_29E2C4914() & 1) != 0 || a2 == 0x4F6E6F6974636573 && a3 == 0xEE0079616C726576 || (sub_29E2C4914() & 1) != 0 || a2 == 0xD000000000000011 && 0x800000029E2F43B0 == a3 || (sub_29E2C4914() & 1) != 0)
  {
    goto LABEL_43;
  }

  if (a2 == 0x6B6361426D657469 && a3 == 0xEE00646E756F7267 || (sub_29E2C4914() & 1) != 0 || a2 == 0xD00000000000001FLL && 0x800000029E2F43D0 == a3 || (sub_29E2C4914() & 1) != 0)
  {
    sub_29E190048(0, &qword_2A181E590, type metadata accessor for CycleChartDayBackgroundView);
    return sub_29E2C3BD4();
  }

  if (a2 == 0xD000000000000024 && 0x800000029E2F43F0 == a3 || (sub_29E2C4914() & 1) != 0)
  {
LABEL_43:
    sub_29E18FEA4(0);
    return sub_29E2C3BD4();
  }

  v7 = objc_allocWithZone(MEMORY[0x29EDC79A0]);

  return [v7 initWithFrame_];
}

void sub_29E18E2CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for CycleChartsModel();
    v9 = (a1 + v8[6]);
    v10 = *v9;
    v11 = v9[1];
    v12 = sub_29E19B240(*v9, v11);
    v13 = *(a1 + v8[9]);
    v14 = sub_29DF5A018();
    v15 = *(a1 + v8[11]);
    v16 = __OFSUB__(0, v15);
    v17 = -v15;
    if (v16)
    {
      __break(1u);
      return;
    }

    [v7 setContentInset_];
    v18 = sub_29E19B240(v10, v11);
    [v7 setScrollIndicatorInsets_];
  }

  sub_29DF76200(a1);
  *(a4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource_cycles) = *a1;
  sub_29E2BF404();

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    [v19 reloadData];
  }
}

void sub_29E18E46C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29E18AC38();
  }
}

void sub_29E18E4C0(void *a1)
{
  v2 = qword_2A1820DA8;
  v3 = *&v1[qword_2A1820DA8];
  *&v1[qword_2A1820DA8] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v17 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame_];
    v16 = [v1 contentView];
    [v16 addSubview_];
  }

LABEL_4:
}

uint64_t sub_29E18E604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E18E664(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E18E6AC(uint64_t a1)
{
  v2 = v1;
  v157 = type metadata accessor for CycleChartCycle(0);
  v156 = *(v157 - 8);
  MEMORY[0x2A1C7C4A8](v157);
  v136 = (&v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DF0F0A0(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v155 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E18FD60(0);
  v148 = v7;
  v149 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v146 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E18FDF8();
  v150 = v9;
  v151 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v147 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDC7888];
  sub_29E18FD94(0, &qword_2A181E558, sub_29E18FEA4, MEMORY[0x29EDC7888]);
  v165 = v12;
  v164 = *(v12 - 8);
  v142 = v164[8];
  MEMORY[0x2A1C7C4A8](v12);
  v170 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v169 = &v136 - v15;
  MEMORY[0x2A1C7C4A8](v16);
  v168 = &v136 - v17;
  MEMORY[0x2A1C7C4A8](v18);
  v167 = &v136 - v19;
  MEMORY[0x2A1C7C4A8](v20);
  v178 = &v136 - v21;
  MEMORY[0x2A1C7C4A8](v22);
  v177 = &v136 - v23;
  MEMORY[0x2A1C7C4A8](v24);
  v187 = &v136 - v25;
  MEMORY[0x2A1C7C4A8](v26);
  v176 = &v136 - v27;
  sub_29E18FD94(0, &qword_2A181E568, sub_29E18FED8, v11);
  v185 = *(v28 - 8);
  v186 = v28;
  v141 = v185[8];
  MEMORY[0x2A1C7C4A8](v28);
  v166 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30);
  v162 = &v136 - v31;
  MEMORY[0x2A1C7C4A8](v32);
  v163 = &v136 - v33;
  MEMORY[0x2A1C7C4A8](v34);
  v184 = &v136 - v35;
  MEMORY[0x2A1C7C4A8](v36);
  v183 = &v136 - v37;
  MEMORY[0x2A1C7C4A8](v38);
  v182 = &v136 - v39;
  sub_29E18FD94(0, &qword_2A181E578, sub_29E18FF0C, v11);
  v181 = v40;
  v175 = *(v40 - 8);
  v139 = *(v175 + 64);
  MEMORY[0x2A1C7C4A8](v40);
  v159 = &v136 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v42);
  v174 = &v136 - v43;
  sub_29E18FF40();
  v179 = *(v44 - 8);
  v180 = v44;
  v138 = v179[8];
  MEMORY[0x2A1C7C4A8](v44);
  v161 = &v136 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v46);
  v160 = &v136 - v47;
  MEMORY[0x2A1C7C4A8](v48);
  v173 = &v136 - v49;
  MEMORY[0x2A1C7C4A8](v50);
  v172 = &v136 - v51;
  sub_29E18FFBC();
  v53 = v52;
  v54 = *(v52 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x2A1C7C4A8](v52);
  v56 = &v136 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v57);
  v59 = &v136 - v58;
  v60 = [objc_allocWithZone(type metadata accessor for CycleChartsCollectionViewLayout()) init];
  v61 = objc_allocWithZone(v2);
  v62 = v60;
  v143 = v62;

  v140 = sub_29E18A99C(v62, a1);
  [v140 setSemanticContentAttribute_];
  sub_29E190048(0, &qword_2A181E5A0, type metadata accessor for CycleChartDayView);
  sub_29E2C31A4();

  sub_29E2C3B84();
  v63 = *(v54 + 16);
  v152 = v59;
  v63(v56, v59, v53);
  v64 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v171 = swift_allocObject();
  v153 = v54;
  v65 = *(v54 + 32);
  v154 = v53;
  v65(v171 + v64, v56, v53);
  sub_29E190048(0, &qword_2A181E590, type metadata accessor for CycleChartDayBackgroundView);

  sub_29E2C3BA4();

  sub_29E2C3BA4();
  sub_29E18FF0C(0);

  v66 = v174;
  sub_29E2C3BA4();
  v67 = swift_allocObject();
  v68 = v158;
  *(v67 + 16) = a1;
  *(v67 + 24) = v68;
  sub_29E18FED8(0);

  sub_29E2C3BA4();

  sub_29E2C3BA4();

  v145 = v67;
  sub_29E2C3BA4();
  v69 = swift_allocObject();
  v137 = a1;
  *(v69 + 16) = a1;
  *(v69 + 24) = v68;
  sub_29E18FEA4(0);

  v70 = v176;
  sub_29E2C3BA4();

  sub_29E2C3BA4();

  v71 = v177;
  sub_29E2C3BA4();

  v72 = v178;
  v144 = v69;
  sub_29E2C3BA4();
  v73 = v175;
  (*(v175 + 16))(v159, v66, v181);
  v75 = v185;
  v74 = v186;
  v76 = v185[2];
  v76(v163, v182, v186);
  v76(v162, v183, v74);
  v76(v166, v184, v74);
  v77 = v164;
  v78 = v164[2];
  v79 = v165;
  v78(v167, v70, v165);
  v78(v168, v71, v79);
  v78(v169, v72, v79);
  v81 = v179;
  v80 = v180;
  v82 = v179[2];
  v82(v160, v172, v180);
  v82(v161, v173, v80);
  v78(v170, v187, v79);
  v83 = v73;
  v84 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v85 = *(v75 + 80);
  v86 = (v139 + v85 + v84) & ~v85;
  v87 = (v141 + v85 + v86) & ~v85;
  v88 = (v141 + v85 + v87) & ~v85;
  v89 = *(v77 + 80);
  v90 = (v141 + v89 + v88) & ~v89;
  v91 = (v142 + v89 + v90) & ~v89;
  v92 = (v142 + v89 + v91) & ~v89;
  v93 = *(v81 + 80);
  v94 = (v142 + v93 + v92) & ~v93;
  v139 = (v138 + v93 + v94) & ~v93;
  v141 = (v138 + v89 + v139) & ~v89;
  v142 = (v142 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  (*(v83 + 32))(v95 + v84, v159, v181);
  v96 = v185[4];
  v97 = v95 + v86;
  v98 = v186;
  v96(v97, v163, v186);
  v96(v95 + v87, v162, v98);
  v99 = v95 + v88;
  v100 = v165;
  v96(v99, v166, v98);
  v101 = v164;
  v102 = v164[4];
  v102(v95 + v90, v167, v100);
  v102(v95 + v91, v168, v100);
  v102(v95 + v92, v169, v100);
  v103 = v179[4];
  v104 = v95 + v94;
  v105 = v180;
  v103(v104, v160, v180);
  v103(v95 + v139, v161, v105);
  v102(v95 + v141, v170, v100);
  *(v95 + v142) = v158;
  v106 = type metadata accessor for CycleChartsCollectionViewDataSource();
  v107 = objc_allocWithZone(v106);
  *&v107[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource_cycles] = MEMORY[0x29EDCA190];
  v108 = &v107[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource_cellProvider];
  v109 = v171;
  *v108 = sub_29E1900B4;
  v108[1] = v109;
  v110 = &v107[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin35CycleChartsCollectionViewDataSource_supplementaryViewProvider];
  *v110 = sub_29E190164;
  v110[1] = v95;
  v189.receiver = v107;
  v189.super_class = v106;
  v111 = v140;

  v170 = v95;

  v112 = objc_msgSendSuper2(&v189, sel_init);
  [v111 setDataSource_];

  v113 = v137;
  swift_beginAccess();
  sub_29E18FD94(0, &qword_2A1818D88, sub_29DF0F138, MEMORY[0x29EDB8B00]);
  v114 = v146;
  sub_29E2C11E4();
  swift_endAccess();
  type metadata accessor for CycleChartsModel();
  sub_29E18E664(&qword_2A1820FA0, sub_29E18FD60);
  v115 = v147;
  v116 = v148;
  sub_29E2C1284();
  (*(v149 + 8))(v114, v116);
  v117 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v118 = swift_allocObject();
  v119 = v143;
  v118[2] = v117;
  v118[3] = v119;
  v118[4] = v112;
  sub_29E18E664(&qword_2A1820FC0, sub_29E18FDF8);
  v168 = v119;
  v169 = v112;
  v120 = v150;
  sub_29E2C1384();

  (*(v151 + 8))(v115, v120);
  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  v188 = *(*(v113 + 24) + 32);
  v121 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v122 = swift_allocObject();
  *(v122 + 16) = sub_29E190420;
  *(v122 + 24) = v121;
  sub_29DEDD728();
  sub_29E18E664(&qword_2A1818588, sub_29DEDD728);
  sub_29E2C1384();

  swift_beginAccess();
  sub_29E2C1034();
  swift_endAccess();

  swift_getKeyPath();
  swift_getKeyPath();
  v123 = v155;
  sub_29E2C1214();
  v124 = v123;

  if ((*(v156 + 48))(v123, 1, v157))
  {
    sub_29E18E604(v123, sub_29DF0F0A0);
    v125 = 0;
  }

  else
  {
    v126 = v123;
    v127 = v136;
    sub_29E190428(v126, v136, type metadata accessor for CycleChartCycle);
    sub_29E18E604(v124, sub_29DF0F0A0);
    v125 = *v127;
    sub_29E18E604(v127, type metadata accessor for CycleChartCycle);
  }

  v128 = v168;
  v129 = &v168[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin31CycleChartsCollectionViewLayout_pendingScrollToSectionIndex];
  *v129 = v125;
  v129[8] = 0;
  [v128 invalidateLayout];

  v130 = v101[1];
  v130(v178, v100);
  v130(v177, v100);
  v130(v187, v100);
  v130(v176, v100);
  v131 = v185[1];
  v132 = v186;
  v131(v184, v186);
  v131(v183, v132);
  v131(v182, v132);
  (*(v175 + 8))(v174, v181);
  v133 = v180;
  v134 = v179[1];
  v134(v173, v180);
  v134(v172, v133);
  (*(v153 + 8))(v152, v154);
  return v111;
}

void sub_29E18FD94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E18FDF8()
{
  if (!qword_2A181E550)
  {
    sub_29E18FD60(255);
    type metadata accessor for CycleChartsModel();
    sub_29E18E664(&qword_2A1820FA0, sub_29E18FD60);
    v0 = sub_29E2C0ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E550);
    }
  }
}

void sub_29E18FF40()
{
  if (!qword_2A181E588)
  {
    sub_29E190048(255, &qword_2A181E590, type metadata accessor for CycleChartDayBackgroundView);
    v0 = sub_29E2C3BB4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E588);
    }
  }
}

void sub_29E18FFBC()
{
  if (!qword_2A181E598)
  {
    sub_29E190048(255, &qword_2A181E5A0, type metadata accessor for CycleChartDayView);
    sub_29E2C31A4();
    v0 = sub_29E2C3B94();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181E598);
    }
  }
}

void sub_29E190048(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for CycleChartDayCell();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E1900B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E18FFBC();

  return sub_29E18C168(a1, a2, a3);
}

id sub_29E190164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x29EDC7888];
  sub_29E18FD94(0, &qword_2A181E578, sub_29E18FF0C, MEMORY[0x29EDC7888]);
  sub_29E18FD94(0, &qword_2A181E568, sub_29E18FED8, v3);
  sub_29E18FD94(0, &qword_2A181E558, sub_29E18FEA4, v3);
  sub_29E18FF40();
  return sub_29E18DE44(a1, a2, a3);
}

uint64_t sub_29E190428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E190490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_29E1904F8()
{
  v1 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3518(v0 + v1, v6);
  if (v7)
  {
    sub_29DEB1BC4(0, &qword_2A181CC80);
    type metadata accessor for CycleStatisticsItem();
    if (swift_dynamicCast())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        swift_unknownObjectRelease();
        if (v3 == v0)
        {
          *(v5 + 56) = 0;
          swift_unknownObjectWeakAssign();
        }
      }

      v4 = [objc_opt_self() tertiarySystemBackgroundColor];
      [v0 setBackgroundColor_];
    }
  }

  else
  {
    sub_29DF61E50(v6);
  }
}

void sub_29E190614()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  swift_beginAccess();
  sub_29DEC3518(v1 + v2, &v21);
  if (!v22)
  {
    sub_29DF61E50(&v21);
    goto LABEL_6;
  }

  sub_29DEB1BC4(0, &qword_2A181CC80);
  type metadata accessor for CycleStatisticsItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v8 = sub_29E190AE4();
    [v8 setText_];

    v9 = sub_29E190AF8();
    [v9 setText_];

    v10 = sub_29E190B0C();
    [v10 setText_];
    goto LABEL_14;
  }

  v3 = v18;
  v4 = sub_29E190AE4();
  sub_29E2BF404();
  v5 = sub_29E2C33A4();

  [v4 setText_];

  v6 = sub_29E190AF8();
  if (v18[11])
  {
    sub_29E2BF404();
    v7 = sub_29E2C33A4();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText_];

  v11 = sub_29E190B0C();
  if (v18[13])
  {
    sub_29E2BF404();
    v12 = sub_29E2C33A4();
  }

  else
  {
    v12 = 0;
  }

  [v11 setText_];

  v18[7] = &off_2A24BD428;
  swift_unknownObjectWeakAssign();
  if (qword_2A1A60ED8 != -1)
  {
    swift_once();
  }

  v21 = xmmword_2A1A67E58;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](0xD000000000000012, 0x800000029E3015C0);
  v13 = v21;
  *&v21 = 46;
  *(&v21 + 1) = 0xE100000000000000;
  v19 = v18[8];
  v20 = v3[9];
  v17 = sub_29DE9DE68();
  v16 = MEMORY[0x29EDC99B0];
  v14 = sub_29E2C4374();
  MEMORY[0x29ED7FCC0](v14);

  v15 = v21;
  v21 = v13;
  sub_29E2BF404();
  MEMORY[0x29ED7FCC0](v15, *(&v15 + 1));

  v10 = sub_29E2C33A4();

  [v1 setAccessibilityIdentifier_];

LABEL_14:
}

void (*sub_29E19097C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  *(v3 + 128) = v1;
  *(v3 + 136) = v5;
  swift_beginAccess();
  sub_29DEC3518(v1 + v5, v4);
  return sub_29E190A14;
}

void sub_29E190A14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  v4 = *(*a1 + 136);
  if (a2)
  {
    sub_29DEC3518(*a1, v2 + 40);
    sub_29E1904F8();
    swift_beginAccess();
    sub_29DEC3690(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_29E190614();
    sub_29DF61E50(v2 + 40);
  }

  else
  {
    sub_29E1904F8();
    swift_beginAccess();
    sub_29DEC3690(v2, v3 + v4);
    swift_endAccess();
    sub_29E190614();
  }

  sub_29DF61E50(v2);

  free(v2);
}

id sub_29E190B20(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
    v8 = [objc_opt_self() *a2];
    [v7 setTextColor_];

    [v7 setNumberOfLines_];
    v9 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

char *sub_29E190BEC(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___valueLabel] = 0;
  *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___captionLabel] = 0;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for CycleStatisticsCell();
  v10 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 contentView];
  v12 = sub_29E190AE4();
  [v11 addSubview_];

  v13 = [v10 contentView];
  v14 = sub_29E190AF8();
  [v13 addSubview_];

  v15 = [v10 contentView];
  v16 = sub_29E190B0C();
  [v15 addSubview_];

  v17 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___titleLabel];
  sub_29DE9408C(0, &unk_2A1A61A00);
  v18 = v17;
  v19 = sub_29E2C3FD4();
  [v18 setFont_];

  v20 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___valueLabel];
  v21 = sub_29E2C3FD4();
  [v20 setFont_];

  v22 = *&v10[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___captionLabel];
  v23 = sub_29E2C3FD4();
  [v22 setFont_];

  v24 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v10 setBackgroundColor_];

  sub_29DEAC750();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_29E2CAB20;
  v26 = sub_29E2C0B54();
  v27 = MEMORY[0x29EDC7870];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  sub_29E2C4034();

  swift_unknownObjectRelease();

  return v10;
}
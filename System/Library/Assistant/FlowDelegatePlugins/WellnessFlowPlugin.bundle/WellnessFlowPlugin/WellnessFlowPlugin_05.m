void sub_75CD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_16E3EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_75D7C()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_3A10(319, &qword_1C5720);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_75ED8()
{
  sub_76D8C();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) != v0)
  {
    return sub_76A24(*(v1 + 28));
  }

  v4 = sub_76D9C();

  return sub_369C(v4, v5, v6);
}

void sub_75F80()
{
  sub_76BF4();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_76BE0();

    sub_214C(v4, v5, v6, v7);
  }

  else
  {
    sub_77464(*(v0 + 28));
  }
}

uint64_t sub_7603C()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_3A10(319, &qword_1C5720);
    if (v6 > 0x3F)
    {
      return v5;
    }

    sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_761D0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7621C()
{
  sub_76D8C();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) != v0)
  {
    return sub_76A24(*(v1 + 24));
  }

  v4 = sub_76D9C();

  return sub_369C(v4, v5, v6);
}

void sub_762C4()
{
  sub_76BF4();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_76BE0();

    sub_214C(v4, v5, v6, v7);
  }

  else
  {
    sub_77464(*(v0 + 24));
  }
}

uint64_t sub_76358()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_3A10(319, &qword_1C5720);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_76480()
{
  sub_76D8C();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) != v0)
  {
    return sub_76A24(*(v1 + 20));
  }

  v4 = sub_76D9C();

  return sub_369C(v4, v5, v6);
}

void sub_76528()
{
  sub_76BF4();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C(v2);
  if (*(v3 + 84) == v1)
  {
    v4 = sub_76BE0();

    sub_214C(v4, v5, v6, v7);
  }

  else
  {
    sub_77464(*(v0 + 20));
  }
}

uint64_t sub_765BC()
{
  sub_75CD8(319, &qword_1C64B8, &type metadata accessor for SpeakableString);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_75CD8(319, &unk_1C7E30, &type metadata accessor for DialogDuration);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_75CD8(319, &qword_1C70B8, &type metadata accessor for DialogCalendarRange);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_75CD8(319, &unk_1C70C0, type metadata accessor for WellnessTime);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_767D0(uint64_t a1)
{
  sub_214C(v1, 1, 1, a1);
  v4 = v1 + v2[5];
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_214C(v1 + v2[6], 1, 1, a1);
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  v5 = v1 + v2[9];
  *v5 = 0;
  *(v5 + 8) = 1;
  sub_214C(v1 + v2[10], 1, 1, a1);
  return v1;
}

uint64_t sub_76860()
{
  result = sub_214C(v0 + v2[6], 1, 1, v1);
  *(v0 + v2[7]) = 0;
  *(v0 + v2[8]) = 0;
  v4 = v2[9];
  return result;
}

uint64_t sub_7689C(uint64_t a1)
{
  sub_214C(v1, 1, 1, a1);
  v4 = v1 + v2[5];
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_214C(v1 + v2[6], 1, 1, a1);
  *(v1 + v2[7]) = 0;
  v5 = v1 + v2[8];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v1 + v2[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + v2[10]) = 0;
  result = sub_214C(v1 + v2[11], 1, 1, a1);
  v8 = v1 + v2[12];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_76948(uint64_t a1)
{
  result = sub_214C(v1, 1, 1, a1);
  v4 = *(v2 + 20);
  return result;
}

uint64_t sub_76978()
{
  result = sub_214C(v0, 1, 1, v1);
  v4 = *(v2 + 20);
  return result;
}

uint64_t sub_769B4(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t sub_769C8()
{
  *(v0 + 80) = 0x6570795461746164;
  *(v0 + 88) = 0xE800000000000000;
  return 0;
}

uint64_t sub_76A24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  v3 = v2 - 1;
  if (v3 < 0)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_76A48(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

uint64_t sub_76A9C@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_76ACC(uint64_t a1)
{
  *(v1 + 40) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_76ADC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  v3 = *(v0 + 72);
  return result;
}

uint64_t sub_76AFC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

__n128 *sub_76B40@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[2].n128_u64[0] = v3 | 2;
  result[2].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

void sub_76B68(uint64_t a1, unint64_t *a2)
{

  sub_75CD8(319, a2, type metadata accessor for WellnessTime);
}

void sub_76B90(uint64_t a1, unint64_t *a2)
{

  sub_75CD8(319, a2, &type metadata accessor for DialogCalendarRange);
}

void sub_76BB8(uint64_t a1, unint64_t *a2)
{

  sub_75CD8(319, a2, &type metadata accessor for SpeakableString);
}

void sub_76C08(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 240) = a2;
  *(v2 + 264) = a1;
  *(v2 + 272) = 0x65756C61566E696DLL;
  *(v2 + 280) = 0xE800000000000000;
}

uint64_t sub_76C2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[24] = a2;
  v2[27] = result;
  v2[28] = 0x65756C615678616DLL;
  v2[29] = 0xE800000000000000;
  return result;
}

uint64_t sub_76C78@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[42] = a2;
  v2[45] = result;
  v2[46] = 1953066613;
  v2[47] = 0xE400000000000000;
  return result;
}

void sub_76C94(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 288) = a2;
  *(v2 + 312) = a1;
  *(v2 + 320) = 1701669236;
  *(v2 + 328) = 0xE400000000000000;
}

uint64_t sub_76CB0(char a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 16) = a4;
  *(v6 + 90) = a3;
  *(v6 + 89) = a2;
  *(v6 + 88) = a1;
  return 0;
}

uint64_t sub_76CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_214C(a1, a2, a3, v4);
  *(v3 + *(v5 + 24)) = 0;
  v7 = *(v5 + 28);
  return result;
}

uint64_t sub_76D4C()
{
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[2];
  v4 = v0[3];

  return sub_16D5CC();
}

double sub_76DAC()
{
  *(v0 + 296) = 0;
  *(v0 + 304) = 0;
  return 0.0;
}

double sub_76DBC()
{
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  return 0.0;
}

uint64_t sub_76DE4()
{
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  v7 = v0[12];

  return sub_746F8(v7, type metadata accessor for WellnessQueryingSleep_SimpleResultParameters);
}

double sub_76E34()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  return result;
}

void sub_76E4C(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 288) = a2;
  *(v2 + 312) = a1;
  strcpy((v2 + 320), "isFirstWindow");
  *(v2 + 334) = -4864;
}

uint64_t sub_76E88()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBodyTemperatureParameters);
}

uint64_t sub_76EB4()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBloodOxygenParameters);
}

uint64_t sub_76EE0()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBasalBodyTemperatureParameters);
}

uint64_t sub_76F0C()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingCyclingDistanceParameters);
}

uint64_t sub_76F38()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingPushesParameters);
}

uint64_t sub_76F64()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingSleep_DetailedResultParameters);
}

uint64_t sub_76F90()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingWalkingHeartRateAverageParameters);
}

uint64_t sub_76FBC()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingRestingEnergyParameters);
}

uint64_t sub_76FE8()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingStepsParameters);
}

uint64_t sub_77014()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingHeartRateParameters);
}

uint64_t sub_77040()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingWeightParameters);
}

uint64_t sub_7706C()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingFlightsClimbedParameters);
}

uint64_t sub_77098()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBloodPressure_SimpleResultParameters);
}

uint64_t sub_770C4()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBloodGlucoseParameters);
}

uint64_t sub_770F0()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingExerciseMinutesParameters);
}

uint64_t sub_7711C()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingCardioFitnessParameters);
}

uint64_t sub_77148()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingMenstruationStartParameters);
}

uint64_t sub_77174()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingRespiratoryRateParameters);
}

uint64_t sub_771A0()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingStandMinutesParameters);
}

uint64_t sub_771CC()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingActiveEnergyParameters);
}

uint64_t sub_771F8()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingHeightParameters);
}

uint64_t sub_77224()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingBloodPressure_DetailedResultParameters);
}

uint64_t sub_77250()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingDistanceWheelchairParameters);
}

uint64_t sub_7727C()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingDistanceWalkingAndRunningParameters);
}

uint64_t sub_772A8()
{
  v2 = *(v0 + 48);

  return sub_746F8(v2, type metadata accessor for WellnessQueryingMenstruationEndParameters);
}

void sub_772D4(char a1@<W8>)
{
  *(v2 + 336) = a1;
  *(v2 + 360) = v1;
  strcpy((v2 + 368), "isLastWindow");
  *(v2 + 381) = 0;
  *(v2 + 382) = -5120;
}

uint64_t sub_77320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v2;
  *(a1 + 40) = a2;
  return v3;
}

void sub_77370()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
}

double sub_7737C()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

double sub_773AC()
{
  result = 0.0;
  *v0 = 0u;
  return result;
}

void sub_773B8()
{
  *(v0 + 128) = 1702125924;
  *(v0 + 136) = 0xE400000000000000;
  v3 = *(v1 + *(v2 + 24));
}

double sub_773E4()
{
  *(v0 + 440) = 0;
  *(v0 + 448) = 0;
  return 0.0;
}

uint64_t *sub_773F4()
{
  *(v0 + 72) = v1;

  return sub_9910((v0 + 48));
}

uint64_t sub_7741C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_74678(v3 + a3, v4, a1, a2);
}

uint64_t sub_77434()
{

  return sub_2440(v0, v1);
}

void sub_7744C(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;
  *(v1 + *(v2 + 40)) = 0;
  *(v1 + *(v2 + 44)) = 0;
}

uint64_t sub_77470(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 89) = a2;
  *(v5 + 88) = a1;
  return 0;
}

uint64_t sub_774C0()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 89);
  v7 = *(v0 + 88);

  return sub_16D5CC();
}

uint64_t sub_774E4()
{

  return sub_2440(v0, v1);
}

uint64_t *sub_77524()
{
  *(v0 + 120) = v1;

  return sub_9910((v0 + 96));
}

uint64_t sub_7753C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_74678(v3 + a3, v4, a1, a2);
}

void sub_7757C(uint64_t a1@<X8>)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = 0xE800000000000000;
  v4 = *(v3 + 24);
}

uint64_t sub_7759C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[15] = result;
  v2[16] = v5;
  v2[17] = a2;
  v6 = *(v3 + *(v4 + 24));
  return result;
}

uint64_t sub_775BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[21] = result;
  v2[22] = a2;
  v2[23] = 0xE800000000000000;
  v4 = *(v3 + 28);
  return result;
}

uint64_t sub_775FC()
{
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];

  return sub_16D5CC();
}

uint64_t sub_7761C()
{

  return swift_allocObject();
}

uint64_t sub_77634@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_74678(v3 + a3, v4, a1, a2);
}

uint64_t sub_77654(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_77694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_77724()
{
  sub_78880();

  return sub_16C33C();
}

uint64_t sub_77778()
{
  sub_8A88();
  v1[27] = v2;
  v1[28] = v0;
  v3 = type metadata accessor for GenericButtonModel();
  v1[29] = v3;
  v4 = *(*(v3 - 8) + 64);
  v1[30] = sub_8BC0();
  v5 = *(*(sub_2440(&qword_1C57F8, &unk_172510) - 8) + 64);
  v1[31] = sub_8BC0();
  v6 = sub_16BE9C();
  v1[32] = v6;
  sub_888C(v6);
  v1[33] = v7;
  v9 = *(v8 + 64);
  v1[34] = sub_8BC0();
  v10 = sub_16C46C();
  v1[35] = v10;
  sub_888C(v10);
  v1[36] = v11;
  v13 = *(v12 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v14 = sub_16C7BC();
  v1[39] = v14;
  sub_888C(v14);
  v1[40] = v15;
  v17 = *(v16 + 64);
  v1[41] = sub_8BC0();
  v18 = sub_17960();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_77920()
{
  sub_8A88();
  v1 = *(*(v0 + 224) + 240);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *v2 = v0;
  v2[1] = sub_779B0;

  return sub_1671CC();
}

uint64_t sub_779B0()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  v4 = *(v2 + 336);
  v8 = *v1;
  *(v3 + 344) = v5;

  if (v0)
  {

    v6 = sub_78340;
  }

  else
  {
    v6 = sub_77AC4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_77AC4()
{
  v1 = v0[43];
  v2 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  v7 = v0[28];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v8 = [v1 catId];
  sub_16E1BC();

  sub_16C76C();
  v9 = v7[3];
  v10 = v7[4];
  sub_2D20(v7, v9);
  (*(v10 + 8))(v9, v10);
  v11 = v0[6];
  sub_2D20(v0 + 2, v0[5]);
  if (sub_16C40C())
  {
    sub_2D64(v0 + 2);
LABEL_4:
    v17 = v0[31];
    v16 = v0[32];
    v18 = *(v0[28] + 248);
    v19 = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
    v21 = v20;
    sub_16BE8C();
    v22 = sub_369C(v17, 1, v16);
    if (v22 == 1)
    {
      __break(1u);
    }

    else
    {
      v28 = v0[43];
      v30 = v0[33];
      v29 = v0[34];
      v31 = v0[32];
      v33 = v0[29];
      v32 = v0[30];
      v34 = v0[28];
      (*(v30 + 32))(v29, v0[31], v31);
      (*(v30 + 16))(v32 + *(v33 + 20), v29, v31);
      *v32 = v19;
      v32[1] = v21;
      v35 = v34[28];
      v36 = v34[29];
      sub_2D20(v34 + 25, v35);
      v0[25] = type metadata accessor for WellnessSnippets();
      v0[26] = sub_17548();
      v37 = sub_9910(v0 + 22);
      sub_175A0(v32, v37);
      swift_storeEnumTagMultiPayload();
      sub_2440(&qword_1C5ED8, &unk_173090);
      v38 = swift_allocObject();
      v0[44] = v38;
      *(v38 + 16) = xmmword_170F70;
      *(v38 + 32) = v28;
      v39 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
      v40 = v28;
      swift_task_alloc();
      sub_179E8();
      v0[45] = v41;
      *v41 = v42;
      v41[1] = sub_77F74;
      v25 = v0[41];
      v22 = (v0 + 17);
      v23 = v0 + 22;
      v24 = v38;
      v26 = v35;
      v27 = v36;
    }

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v22, v23, v24, v25, v26, v27);
  }

  v13 = v7[3];
  v12 = v7[4];
  sub_2D20(v0[28], v13);
  (*(v12 + 8))(v13, v12);
  v14 = v0[11];
  sub_2D20(v0 + 7, v0[10]);
  v15 = sub_16C3FC();
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 2);
  if (v15)
  {
    goto LABEL_4;
  }

  v43 = v0[43];
  v44 = v0[28];
  v45 = v44[28];
  v46 = v44[29];
  sub_2D20(v44 + 25, v45);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v47 = swift_allocObject();
  v0[46] = v47;
  *(v47 + 16) = xmmword_170F70;
  *(v47 + 32) = v43;
  v48 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v49 = v43;
  swift_task_alloc();
  sub_179E8();
  v0[47] = v50;
  *v50 = v51;
  v50[1] = sub_78178;
  v52 = v0[41];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v0 + 12, v47, v52, v45, v46);
}

uint64_t sub_77F74()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 360);
  v4 = *(v1 + 352);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_2D64((v2 + 176));
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_7807C()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 216);

  sub_17604(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_17464((v0 + 136), v8);
  sub_788D4();

  sub_C9BC();

  return v9();
}

uint64_t sub_78178()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 376);
  v3 = *(v1 + 368);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_78278()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 216);

  (*(v2 + 8))(v1, v3);
  sub_17464((v0 + 96), v4);
  sub_788D4();

  sub_C9BC();

  return v5();
}

uint64_t sub_78340()
{
  v1 = *(v0 + 216);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  sub_788D4();

  sub_C9BC();

  return v2();
}

uint64_t sub_783E0()
{
  sub_8A88();
  v1[38] = v2;
  v1[39] = v0;
  swift_task_alloc();
  sub_179E8();
  v1[40] = v3;
  *v3 = v4;
  v3[1] = sub_78470;

  return sub_77778();
}

uint64_t sub_78470()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 320);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_78554()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 304);
    sub_17464((v0 + 216), v0 + 176);
    sub_8388(v0 + 176, v0 + 256);
    v2 = swift_allocObject();
    sub_17464((v0 + 256), v2 + 16);
    sub_16C73C();
    v3 = sub_16C1DC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    *(v0 + 296) = sub_16C1CC();
    sub_16C4EC();
    sub_2D64((v0 + 176));
  }

  else
  {
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    sub_7874C(v0 + 216);
    sub_8284(v6 + 40, v0 + 16);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 16);
  }

  sub_C9BC();

  return v8();
}

uint64_t sub_786B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_783E0();
}

uint64_t sub_7874C(uint64_t a1)
{
  v2 = sub_2440(&qword_1C5ED0, &qword_171090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_787B4()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_787EC()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

unint64_t sub_78880()
{
  result = qword_1C8298;
  if (!qword_1C8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8298);
  }

  return result;
}

uint64_t sub_788D4()
{
  v2 = v0[41];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
}

uint64_t sub_788FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7893C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_789CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_16C58C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_16C57C();
  a1[3] = v2;
  a1[4] = &protocol witness table for ResponseFactory;
  *a1 = result;
  return result;
}

uint64_t sub_78A7C(void (*a1)(void), uint64_t (*a2)(char *, void))
{
  v4 = sub_16D63C();
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0);
  sub_16D62C();
  return a2(v9, 0);
}

uint64_t sub_78B18()
{
  sub_84F0();

  return sub_16C33C();
}

uint64_t sub_78B6C()
{
  sub_8A88();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for GenericButtonModel();
  v1[9] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[10] = sub_8BC0();
  v6 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v6);
  v8 = *(v7 + 64);
  v1[11] = sub_8BC0();
  v9 = sub_16BE9C();
  v1[12] = v9;
  sub_888C(v9);
  v1[13] = v10;
  v12 = *(v11 + 64);
  v1[14] = sub_8BC0();
  v13 = sub_16C46C();
  v1[15] = v13;
  sub_888C(v13);
  v1[16] = v14;
  v16 = *(v15 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v17 = sub_16C7BC();
  v1[19] = v17;
  sub_888C(v17);
  v1[20] = v18;
  v20 = *(v19 + 64);
  v1[21] = sub_8BC0();
  v21 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v1[22] = sub_8BC0();
  v24 = sub_17960();

  return _swift_task_switch(v24, v25, v26);
}

uint64_t sub_78D38()
{
  v1 = v0[22];
  v2 = v0[8];
  v3 = *(v2 + 248);
  sub_208C0(*v2);
  sub_16E23C();

  v4 = sub_16D5CC();
  sub_214C(v1, 0, 1, v4);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_78E18;
  v6 = v0[22];

  return sub_3E2F8();
}

uint64_t sub_78E18()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *(v8 + 192) = v7;
  *(v8 + 200) = v0;

  sub_C878(v4, &qword_1C5800, &unk_16F510);
  if (v0)
  {
    v9 = sub_796C4;
  }

  else
  {
    v9 = sub_78F4C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_78F4C()
{
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[11];
  v7 = v0[12];
  sub_16C43C();
  (*(v6 + 16))(v4, v3, v5);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v9 = [v1 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_121FA0(v8);
  if (sub_369C(v8, 1, v7) == 1)
  {
    v10 = v0[24];
    v11 = v0[8];
    sub_C878(v0[11], &qword_1C57F8, &unk_172510);
    v12 = v11[30];
    sub_2D20(v11 + 26, v11[29]);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v13 = swift_allocObject();
    v0[28] = v13;
    *(v13 + 16) = xmmword_170F70;
    *(v13 + 32) = v10;
    v14 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
    v15 = v10;
    swift_task_alloc();
    sub_179E8();
    v0[29] = v16;
    *v16 = v17;
    v16[1] = sub_79500;
    v18 = v0[21];
    v19 = v0[7];
    sub_8CC0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v20, v21, v22, v23, v24);
  }

  else
  {
    v26 = v0[24];
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[12];
    v31 = v0[9];
    v30 = v0[10];
    v32 = v0[8];
    (*(v28 + 32))(v27, v0[11], v29);
    v33 = v32[32];
    v34 = sub_9A820(0xD000000000000014, 0x800000000017E5C0, 0xD000000000000012, 0x800000000017E5E0);
    v36 = v35;
    (*(v28 + 16))(v30 + *(v31 + 20), v27, v29);
    *v30 = v34;
    v30[1] = v36;
    v37 = v32[30];
    sub_2D20(v32 + 26, v32[29]);
    v0[5] = type metadata accessor for WellnessSnippets();
    v0[6] = sub_17548();
    v38 = sub_9910(v0 + 2);
    sub_175A0(v30, v38);
    swift_storeEnumTagMultiPayload();
    sub_2440(&qword_1C5ED8, &unk_173090);
    v39 = swift_allocObject();
    v0[26] = v39;
    *(v39 + 16) = xmmword_170F70;
    *(v39 + 32) = v26;
    v40 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
    v41 = v26;
    swift_task_alloc();
    sub_179E8();
    v0[27] = v42;
    *v42 = v43;
    v42[1] = sub_79300;
    v44 = v0[21];
    v45 = v0[7];
    sub_8CC0();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v46, v47, v48, v49, v50, v51);
  }
}

uint64_t sub_79300()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_2D64((v2 + 16));
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_79408()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);

  sub_17604(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_79E24();

  sub_C9BC();

  return v8();
}

uint64_t sub_79500()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 232);
  v3 = *(v1 + 224);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_79600()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);
  sub_79E24();

  sub_C9BC();

  return v4();
}

uint64_t sub_796C4()
{
  sub_79E24();

  sub_C9BC();
  v2 = *(v0 + 200);

  return v1();
}

uint64_t sub_79760()
{
  sub_8A88();
  v0[16] = v1;
  v2 = sub_16C38C();
  v0[17] = v2;
  sub_888C(v2);
  v0[18] = v3;
  v5 = *(v4 + 64);
  v0[19] = sub_8BC0();
  v6 = sub_16DBEC();
  v0[20] = v6;
  sub_888C(v6);
  v0[21] = v7;
  v9 = *(v8 + 64);
  v0[22] = sub_8BC0();
  swift_task_alloc();
  sub_179E8();
  v0[23] = v10;
  *v10 = v11;
  v10[1] = sub_79888;

  return sub_78B6C();
}

uint64_t sub_79888()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 184);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 192) = v0;

  if (v0)
  {
    v7 = sub_79AA8;
  }

  else
  {
    v7 = sub_7998C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_7998C()
{
  v1 = *(v0 + 128);
  sub_8388(v0 + 16, v0 + 56);
  v2 = swift_allocObject();
  sub_17464((v0 + 56), v2 + 16);
  sub_16C73C();
  v3 = sub_16C1DC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 120) = sub_16C1CC();
  sub_16C4EC();
  sub_2D64((v0 + 16));

  v6 = *(v0 + 176);
  v7 = *(v0 + 152);

  sub_C9BC();

  return v8();
}

void sub_79AA8()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = sub_16DBBC();
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E37C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&def_259DC, v6, v7, "Caught unexpected exception %@, attempting server fallback", v9, 0xCu);
    sub_C878(v10, &qword_1C57B8, &qword_1715A0);
  }

  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[17];
  v18 = v0[18];
  v19 = v0[16];

  (*(v14 + 8))(v13, v15);
  (*(v18 + 104))(v16, enum case for FlowUnhandledReason.needsServerExecution(_:), v17);
  sub_16C52C();

  (*(v18 + 8))(v16, v17);
  v20 = v0[22];
  v21 = v0[19];

  sub_C9BC();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_79CC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_79760();
}

uint64_t sub_79D58()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_79D90()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_79E24()
{
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
}

unint64_t sub_79EA4(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
    case 7:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_79FFC()
{
  v1 = sub_2440(&qword_1C5800, &unk_16F510);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v33 - v3;
  sub_2440(&qword_1C6078, &unk_172520);
  v5 = swift_allocObject();
  sub_7B5F4(v5, xmmword_173B00);
  if (v6)
  {
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    v8 = 0.0;
  }

  else
  {
    v8 = *v0;
    v7 = &type metadata for Double;
  }

  sub_7B624(v7, v8);
  sub_7B68C(v9);
  *(v5 + 120) = &type metadata for Bool;
  *(v5 + 128) = v10;
  sub_7B5C4();
  *(v5 + 168) = &type metadata for Bool;
  *(v5 + 176) = v11;
  sub_7B670();
  sub_38B4C();
  *(v5 + 216) = &type metadata for Bool;
  *(v5 + 224) = 0xD000000000000016;
  sub_7B654(v12);
  *(v5 + 264) = &type metadata for Bool;
  *(v5 + 272) = v13;
  *(v5 + 280) = 0xE500000000000000;
  v14 = *(v0 + 16);
  sub_2440(&qword_1C82F8, &unk_173BF0);
  *(v5 + 288) = v14;
  sub_38B4C();
  *(v5 + 312) = v15;
  *(v5 + 320) = 0xD000000000000013;
  *(v5 + 328) = v16;
  if (*(v0 + 32))
  {
    v17 = 0;
    *(v5 + 344) = 0;
    *(v5 + 352) = 0;
    v18 = 0;
  }

  else
  {
    v18 = *(v0 + 24);
    v17 = &type metadata for Double;
  }

  *(v5 + 336) = v18;
  *(v5 + 360) = v17;
  *(v5 + 368) = 0x64654D664F6D756ELL;
  *(v5 + 376) = 0xE800000000000000;
  if (*(v0 + 48))
  {
    v19 = 0;
    *(v5 + 392) = 0;
    *(v5 + 400) = 0;
    v20 = 0;
  }

  else
  {
    v20 = *(v0 + 40);
    v19 = &type metadata for Double;
  }

  *(v5 + 384) = v20;
  *(v5 + 408) = v19;
  *(v5 + 416) = 0xD000000000000010;
  *(v5 + 424) = 0x800000000017AE00;
  v21 = type metadata accessor for WellnessDisambiguateMedNameParameters(0);
  sub_7B09C(v0 + v21[12], v4, &qword_1C5800, &unk_16F510);
  v22 = sub_16D5CC();
  if (sub_369C(v4, 1, v22) == 1)
  {

    sub_5CFC8(v4, &qword_1C5800, &unk_16F510);
    *(v5 + 432) = 0u;
    *(v5 + 448) = 0u;
  }

  else
  {
    *(v5 + 456) = v22;
    sub_9910((v5 + 432));
    sub_5DE54(v22);
    (*(v23 + 32))();
  }

  *(v5 + 464) = 0xD000000000000016;
  *(v5 + 472) = 0x800000000017AE20;
  *(v5 + 480) = *(v0 + v21[13]);
  sub_7B6A4();
  *(v5 + 504) = &type metadata for Bool;
  *(v5 + 512) = v25;
  *(v5 + 520) = v24 + 3571;
  v26 = (v0 + v21[14]);
  if (v26[1])
  {
    v27 = 0;
    *(v5 + 536) = 0u;
    v28 = 0;
  }

  else
  {
    v28 = *v26;
    v27 = &type metadata for Double;
  }

  *(v5 + 528) = v28;
  *(v5 + 552) = v27;
  *(v5 + 560) = 0x6953776F646E6977;
  *(v5 + 568) = v24;
  v29 = (v0 + v21[15]);
  if (v29[1])
  {
    v30 = 0;
    *(v5 + 584) = 0u;
    v31 = 0;
  }

  else
  {
    v31 = *v29;
    v30 = &type metadata for Double;
  }

  *(v5 + 576) = v31;
  *(v5 + 600) = v30;
  return v5;
}

uint64_t sub_7A35C()
{
  v1 = sub_2440(&qword_1C5800, &unk_16F510);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v37 - v3;
  sub_2440(&qword_1C6078, &unk_172520);
  v5 = swift_allocObject();
  sub_7B5F4(v5, xmmword_173B10);
  if (v6)
  {
    v7 = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    v8 = 0.0;
  }

  else
  {
    v8 = *v0;
    v7 = &type metadata for Double;
  }

  sub_7B624(v7, v8);
  sub_7B68C(v9);
  *(v5 + 120) = v11;
  *(v5 + 128) = v10;
  sub_7B5C4();
  *(v5 + 168) = v13;
  *(v5 + 176) = v12;
  sub_7B670();
  sub_38B4C();
  *(v5 + 216) = v14;
  *(v5 + 224) = 0xD000000000000016;
  sub_7B654(v15);
  *(v5 + 264) = v17;
  *(v5 + 272) = v16;
  *(v5 + 280) = 0xE500000000000000;
  v18 = *(v0 + 16);
  sub_2440(&qword_1C82F0, &unk_173BE0);
  *(v5 + 288) = v18;
  sub_38B4C();
  *(v5 + 312) = v19;
  *(v5 + 320) = 0xD000000000000013;
  *(v5 + 328) = v20;
  if (*(v0 + 32))
  {
    v21 = 0;
    *(v5 + 344) = 0;
    *(v5 + 352) = 0;
    v22 = 0;
  }

  else
  {
    v22 = *(v0 + 24);
    v21 = &type metadata for Double;
  }

  *(v5 + 336) = v22;
  *(v5 + 360) = v21;
  strcpy((v5 + 368), "numOfSchedule");
  *(v5 + 382) = -4864;
  if (*(v0 + 48))
  {
    v23 = 0;
    *(v5 + 392) = 0;
    *(v5 + 400) = 0;
    v24 = 0;
  }

  else
  {
    v24 = *(v0 + 40);
    v23 = &type metadata for Double;
  }

  *(v5 + 384) = v24;
  *(v5 + 408) = v23;
  *(v5 + 416) = 0xD000000000000014;
  *(v5 + 424) = 0x800000000017E660;
  v25 = type metadata accessor for WellnessDisambiguateMedScheduleParameters(0);
  sub_7B09C(v0 + v25[12], v4, &qword_1C5800, &unk_16F510);
  v26 = sub_16D5CC();
  if (sub_369C(v4, 1, v26) == 1)
  {

    sub_5CFC8(v4, &qword_1C5800, &unk_16F510);
    *(v5 + 432) = 0u;
    *(v5 + 448) = 0u;
  }

  else
  {
    *(v5 + 456) = v26;
    sub_9910((v5 + 432));
    sub_5DE54(v26);
    (*(v27 + 32))();
  }

  sub_7B6A4();
  *(v5 + 464) = v29;
  *(v5 + 472) = v28 + 3571;
  v30 = (v0 + v25[13]);
  if (v30[1])
  {
    v31 = 0;
    *(v5 + 488) = 0;
    *(v5 + 496) = 0;
    v32 = 0;
  }

  else
  {
    v32 = *v30;
    v31 = &type metadata for Double;
  }

  *(v5 + 480) = v32;
  *(v5 + 504) = v31;
  *(v5 + 512) = 0x6953776F646E6977;
  *(v5 + 520) = v28;
  v33 = (v0 + v25[14]);
  if (v33[1])
  {
    v34 = 0;
    *(v5 + 536) = 0u;
    v35 = 0;
  }

  else
  {
    v35 = *v33;
    v34 = &type metadata for Double;
  }

  *(v5 + 528) = v35;
  *(v5 + 552) = v34;
  return v5;
}

uint64_t sub_7A690(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return _swift_task_switch(sub_7A6B4, 0, 0);
}

uint64_t sub_7A6B4()
{
  sub_386A8();
  v1 = *(v0 + 48);
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_16F530;
  sub_38B4C();
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = v4;
  *(v3 + 72) = &type metadata for Bool;
  *(v3 + 48) = v1;
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v9 = v5;
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_7A7D4;
  v7 = *(v0 + 16);

  return v9(0xD000000000000016, 0x800000000017E720, v2);
}

uint64_t sub_7A7D4()
{
  sub_386A8();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_7A928, 0, 0);
  }

  else
  {
    v7 = *(v4 + 24);

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

uint64_t sub_7A928()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_7A98C()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(25);

  return v4(v3);
}

uint64_t sub_7AA38()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7AAE4;
  sub_40160();
  v3 = sub_40198(21);

  return v4(v3);
}

uint64_t sub_7AAE4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_7ABE4()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(28);

  return v4(v3);
}

uint64_t sub_7AC90()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(31);

  return v4(v3);
}

uint64_t sub_7AD3C()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(28);

  return v4(v3);
}

uint64_t sub_7ADE8()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v0 = swift_task_alloc();
  v1 = sub_401BC(v0);
  *v1 = v2;
  v1[1] = sub_7B5C0;
  sub_40160();
  v3 = sub_40198(26);

  return v4(v3);
}

uint64_t sub_7AE94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_7AEE8(a1, a2);
}

uint64_t sub_7AEE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_16D63C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2440(&qword_1C57F8, &unk_172510);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_7B09C(a1, &v14 - v11, &qword_1C57F8, &unk_172510);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16D56C();
  (*(v5 + 8))(a2, v4);
  sub_5CFC8(a1, &qword_1C57F8, &unk_172510);
  return v12;
}

uint64_t sub_7B09C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2440(a3, a4);
  sub_5DE54(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_7B150()
{
  sub_7B288();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_7B554(319, &unk_1C8368, type metadata accessor for WellnessMedicationDialogObject, &type metadata accessor for Array);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_7B554(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_7B288()
{
  if (!qword_1C5720)
  {
    v0 = sub_16E3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C5720);
    }
  }
}

uint64_t sub_7B2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2440(&qword_1C5800, &unk_16F510);
    v9 = a1 + *(a3 + 48);

    return sub_369C(v9, a2, v8);
  }
}

uint64_t sub_7B394(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2440(&qword_1C5800, &unk_16F510);
    v8 = v5 + *(a4 + 48);

    return sub_214C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_7B420()
{
  sub_7B288();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_7B554(319, &unk_1C8428, type metadata accessor for WellnessDialogStringQuartet, &type metadata accessor for Array);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_7B554(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_7B554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 *sub_7B5F4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6E69577473726966;
  result[2].n128_u64[1] = 0xEF657A6953776F64;
  v3 = *(v2 + 8);
  return result;
}

void sub_7B624(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 48) = a2;
  *(v2 + 72) = a1;
  strcpy((v2 + 80), "isConclusion");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  v4 = *(v3 + 9);
}

uint64_t sub_7B6B8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v50 = sub_16BF5C();
  sub_7BB14();
  v48 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v4);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_16C0BC();
  v47 = v6;
  sub_7BB14();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v44 - v19;
  v21 = sub_2440(&qword_1C8480, &unk_1742D0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v44 - v23;
  v25 = sub_2440(&qword_1C8488, &unk_173C60);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v44 - v27;
  v45 = sub_16BE2C();
  sub_7BB14();
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v33);
  v35 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214C(v28, 1, 1, v6);
  v36 = sub_16C0EC();
  sub_214C(v24, 1, 1, v36);
  v37 = v48;
  sub_16BE1C();
  sub_16BDBC();
  sub_16BE0C();
  sub_16C08C();
  sub_16C08C();
  v38 = v49;
  sub_16C02C();
  v39 = *(v8 + 8);
  v40 = v14;
  v41 = v47;
  v39(v40, v47);
  sub_16C05C();
  v42 = v50;
  (*(v37 + 8))(v38, v50);
  v39(v16, v41);
  result = sub_369C(v20, 1, v42);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v30 + 8))(v35, v45);
    return (*(v37 + 32))(v46, v20, v42);
  }

  return result;
}

unint64_t sub_7BB24(char a1)
{
  result = 0x656C756465686373;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x697461636964656DLL;
      break;
    case 3:
    case 4:
      result = 0x6874676E65727473;
      break;
    default:
      result = 0xD000000000000031;
      break;
  }

  return result;
}

uint64_t sub_7BBDC(void *a1)
{
  v2 = v1;
  sub_7BE88();
  v4 = sub_7BECC();
  sub_2440(&qword_1C5858, &qword_173C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_172980;
  strcpy(&v20, "medicationID");
  BYTE13(v20) = 0;
  HIWORD(v20) = -5120;
  sub_7C10C();
  v20 = v2[1];
  v6 = sub_2440(&qword_1C69C8, &qword_174150);
  *(inited + 96) = v6;
  *(inited + 72) = v2[1];
  *&v19 = 0x6874676E65727473;
  *(&v19 + 1) = 0xE800000000000000;
  sub_7BF40(&v20, &v18);
  sub_7C10C();
  *(inited + 168) = sub_2440(&qword_1C57A0, &qword_16F3C0);
  *(inited + 144) = *(v2 + 4);
  *(inited + 152) = *(v2 + 40);
  strcpy(&v19, "strengthUnit");
  BYTE13(v19) = 0;
  HIWORD(v19) = -5120;
  sub_7C10C();
  v19 = v2[3];
  v7 = v19;
  *(inited + 240) = v6;
  *(inited + 216) = v7;
  *&v18 = 0x656C756465686373;
  *(&v18 + 1) = 0xEA00000000004449;
  sub_7BF40(&v19, v17);
  sub_7C10C();
  v18 = *v2;
  v8 = v18;
  *(inited + 312) = v6;
  *(inited + 288) = v8;
  sub_7BF40(&v18, v17);
  v9 = sub_16E14C();
  sub_7BFB0(v9, v4);
  v10 = objc_opt_self();
  v11 = a1[4];
  sub_2D20(a1, a1[3]);
  v12 = sub_16C42C();
  v13 = [v10 runSiriKitExecutorCommandWithContext:v12 payload:v4];

  v14 = [v10 wrapCommandInStartLocalRequest:v13];
  v15 = sub_16E3CC();

  return v15;
}

unint64_t sub_7BE88()
{
  result = qword_1C8490;
  if (!qword_1C8490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C8490);
  }

  return result;
}

id sub_7BECC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_16E1AC();

  v2 = [v0 initWithIdentifier:v1];

  return v2;
}

uint64_t sub_7BF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C69C8, &qword_174150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_7BFB0(uint64_t a1, void *a2)
{
  isa = sub_16E13C().super.isa;

  [a2 setUserData:isa];
}

__n128 sub_7C030(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_7C044(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_7C098(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_7C10C()
{

  return sub_16E41C();
}

uint64_t sub_7C124()
{
  v1 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_name;
  v2 = sub_16D5CC();
  sub_214C(v0 + v1, 1, 1, v2);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleString);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleID);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_medicationID);
  v3 = v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strength;
  *v3 = 0;
  *(v3 + 8) = 1;
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strengthUnit);
  sub_7DED0(OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_onSelectCommand);
  return v0;
}

uint64_t sub_7C1C8()
{
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_name);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleString);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleID);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_medicationID);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strengthUnit);
  sub_6261C(v0 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_onSelectCommand);
  return v0;
}

uint64_t sub_7C274(uint64_t a1)
{
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11[-v5];
  *(v1 + 16) = 0;
  sub_8B48();
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_name);
  sub_8B48();
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleString);
  sub_8B48();
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleID);
  sub_8B48();
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_medicationID);
  v7 = *(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strength + 8);
  v8 = v1 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength;
  *v8 = *(a1 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strength);
  *(v8 + 8) = v7;
  sub_8B48();
  sub_7DFB0(OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strengthUnit);
  v9 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_onSelectCommand;
  sub_8B48();
  sub_7DA9C(a1 + v9, v6);

  sub_7DB0C(v6, v1 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_onSelectCommand);
  return v1;
}

uint64_t sub_7C3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for WellnessMedicationDialogObject.Builder(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  sub_7C124();
  v20 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_name;
  sub_7DF34();
  sub_7DA2C(a1, v19 + v20);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleString;
  sub_7DF34();
  sub_7DA2C(a2, v19 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_scheduleID;
  sub_7DF34();
  sub_7DA2C(a3, v19 + v22);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_medicationID;
  sub_7DF34();
  sub_7DA2C(a4, v19 + v23);
  swift_endAccess();
  v24 = v19 + OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strength;
  *v24 = a5;
  *(v24 + 8) = a6 & 1;
  v25 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_strengthUnit;
  sub_7DFDC();
  sub_7DA2C(a7, v19 + v25);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCC18WellnessFlowPlugin30WellnessMedicationDialogObject7Builder_onSelectCommand;
  sub_7DFDC();
  sub_7DA2C(a8, v19 + v26);
  swift_endAccess();
  v27 = type metadata accessor for WellnessMedicationDialogObject(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  sub_7C274(v19);
  sub_6261C(a8);
  sub_6261C(a7);
  sub_6261C(a4);
  sub_6261C(a3);
  sub_6261C(a2);
  sub_6261C(a1);
  return v30;
}

double sub_7C5AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v37 - v17;
  __chkstk_darwin(v16);
  sub_7DFC8();
  __chkstk_darwin(v19);
  sub_8C94();
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  v23 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v23 || (sub_7DF18() & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_name, v22);
    sub_16D5CC();
    sub_7DEB0(v22);
    if (!v23)
    {
      goto LABEL_56;
    }

    v24 = v22;
    goto LABEL_9;
  }

  v27 = a1 == 0x656C756465686373 && a2 == 0xEE00676E69727453;
  if (v27 || (sub_7DF18() & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleString, v5);
    sub_16D5CC();
    sub_7DEB0(v5);
    if (!v23)
    {
      goto LABEL_56;
    }

    v24 = v5;
    goto LABEL_9;
  }

  v28 = a1 == 0x656C756465686373 && a2 == 0xEA00000000004449;
  if (v28 || (sub_7DF18() & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleID, v4);
    sub_16D5CC();
    sub_7DEB0(v4);
    if (!v23)
    {
      goto LABEL_56;
    }

    v24 = v4;
    goto LABEL_9;
  }

  v30 = a1 == sub_7DF90() && a2 == v29;
  if (v30 || (sub_7DF18() & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_medicationID, v18);
    sub_16D5CC();
    sub_7DEB0(v18);
    if (!v23)
    {
      goto LABEL_56;
    }

    v24 = v18;
    goto LABEL_9;
  }

  v31 = a1 == 0x6874676E65727473 && a2 == 0xE800000000000000;
  if (v31 || (sub_7DF18() & 1) != 0)
  {
    if ((*(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength + 8) & 1) == 0)
    {
      result = *(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength);
      v32 = v38;
      *(v38 + 24) = &type metadata for Double;
      *v32 = result;
      return result;
    }

LABEL_10:
    result = 0.0;
    v26 = v38;
    *v38 = 0u;
    *(v26 + 16) = 0u;
    return result;
  }

  v33 = a1 == 0x6874676E65727473 && a2 == 0xEC00000074696E55;
  if (v33 || (sub_7DF18() & 1) != 0)
  {
    sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strengthUnit, v15);
    sub_16D5CC();
    sub_7DEB0(v15);
    if (!v23)
    {
      goto LABEL_56;
    }

    v24 = v15;
    goto LABEL_9;
  }

  v35 = a1 == sub_7DF54() && a2 == v34;
  if (!v35 && (sub_7DF18() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_7DA9C(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_onSelectCommand, v12);
  sub_16D5CC();
  sub_7DEB0(v12);
  if (v23)
  {
    v24 = v12;
LABEL_9:
    sub_6261C(v24);
    goto LABEL_10;
  }

LABEL_56:
  sub_7DF78();
  sub_7DE8C();
  (*(v36 + 32))();
  return result;
}

uint64_t sub_7CA28(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1B8490;
  v6._object = a2;
  v4 = sub_16E55C(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_7CA80(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x656C756465686373;
      break;
    case 3:
      result = sub_7DF90();
      break;
    case 4:
    case 5:
      result = 0x6874676E65727473;
      break;
    case 6:
      result = sub_7DF54();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_7CB7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7CA28(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_7CBAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7CA80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_7CBE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_7CA74();
  *a1 = result;
  return result;
}

uint64_t sub_7CC14(uint64_t a1)
{
  v2 = sub_7DB7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7CC50(uint64_t a1)
{
  v2 = sub_7DB7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7CC8C()
{
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_name);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleString);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleID);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_medicationID);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strengthUnit);
  sub_6261C(v0 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_onSelectCommand);
  return v0;
}

uint64_t sub_7CD24(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return _swift_deallocClassInstance(v1, v2, v3);
}

void sub_7CDA8()
{
  sub_7D0F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_7CE58(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C87E0, &qword_173E50);
  v6 = sub_42F0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_7DB7C();
  sub_16E77C();
  v19[15] = 0;
  sub_16D5CC();
  sub_7DF00();
  sub_7D9E4(v14, v15);
  sub_7DE68();
  if (!v2)
  {
    v19[14] = 1;
    sub_7DE68();
    v19[13] = 2;
    sub_7DE68();
    v19[12] = 3;
    sub_7DE68();
    v16 = *(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength);
    v17 = *(v3 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength + 8);
    v19[11] = 4;
    sub_16E62C();
    v19[10] = 5;
    sub_7DE68();
    v19[9] = 6;
    sub_7DE68();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_7D0A4(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_7D218(a1);
  return v5;
}

void sub_7D0F4()
{
  if (!qword_1C64B8)
  {
    sub_16D5CC();
    v0 = sub_16E3EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C64B8);
    }
  }
}

void sub_7D174()
{
  sub_7D0F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_7D218(uint64_t *a1)
{
  v5 = sub_2440(&qword_1C5800, &unk_16F510);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  sub_7DFC8();
  v10 = __chkstk_darwin(v9);
  v12 = &v41 - v11;
  __chkstk_darwin(v10);
  sub_8C94();
  v14 = __chkstk_darwin(v13);
  v16 = &v41 - v15;
  __chkstk_darwin(v14);
  v46 = &v41 - v17;
  v47 = sub_2440(&qword_1C87D0, &qword_173E48);
  v18 = sub_42F0(v47);
  v45 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  v23 = &v41 - v22;
  v49 = v1;
  v50 = a1;
  *(v1 + 16) = 0;
  v24 = a1[4];
  sub_2D20(a1, a1[3]);
  sub_7DB7C();
  v25 = v48;
  sub_16E76C();
  if (v25)
  {
    v33 = v49;

    type metadata accessor for WellnessMedicationDialogObject(0);
    v30 = *(*v33 + 48);
    v31 = *(*v33 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v48 = v3;
    v42 = v2;
    v43 = v12;
    v26 = v45;
    sub_16D5CC();
    v57 = 0;
    sub_7DF00();
    sub_7D9E4(v27, v28);
    v29 = v46;
    sub_7DE9C();
    sub_16E5AC();
    v33 = v49;
    sub_7DB0C(v29, v49 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_name);
    v56 = 1;
    sub_7DE9C();
    sub_16E5AC();
    sub_7DB0C(v16, v33 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleString);
    v55 = 2;
    v34 = v48;
    sub_7DE9C();
    v46 = 0;
    sub_16E5AC();
    sub_7DB0C(v34, v33 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_scheduleID);
    v54 = 3;
    v35 = v43;
    sub_7DE9C();
    sub_16E5AC();
    sub_7DB0C(v35, v33 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_medicationID);
    v53 = 4;
    v36 = sub_16E59C();
    v37 = v33 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strength;
    *v37 = v36;
    *(v37 + 8) = v38 & 1;
    v52 = 5;
    v39 = v42;
    sub_16E5AC();
    sub_7DB0C(v39, v33 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_strengthUnit);
    v51 = 6;
    v40 = v44;
    sub_16E5AC();
    (*(v26 + 8))(v23, v47);
    sub_7DB0C(v40, v33 + OBJC_IVAR____TtC18WellnessFlowPlugin30WellnessMedicationDialogObject_onSelectCommand);
  }

  sub_2D64(v50);
  return v33;
}

void *sub_7D7F4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_7D83C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_7D888())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_7D904@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_7D0A4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_7D9E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_7DA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_7DA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7DB0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_7DB7C()
{
  result = qword_1C87D8;
  if (!qword_1C87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WellnessMedicationDialogObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessMedicationDialogObject.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x7DD24);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_7DD60()
{
  result = qword_1C87E8;
  if (!qword_1C87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87E8);
  }

  return result;
}

unint64_t sub_7DDB8()
{
  result = qword_1C87F0;
  if (!qword_1C87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87F0);
  }

  return result;
}

unint64_t sub_7DE10()
{
  result = qword_1C87F8;
  if (!qword_1C87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C87F8);
  }

  return result;
}

uint64_t sub_7DE68()
{

  return sub_16E63C();
}

uint64_t sub_7DED0@<X0>(uint64_t a1@<X8>)
{

  return sub_214C(v2 + a1, 1, 1, v1);
}

uint64_t sub_7DF18()
{

  return sub_16E6BC();
}

uint64_t sub_7DF34()
{

  return swift_beginAccess();
}

uint64_t *sub_7DF78()
{
  v3 = *(v1 - 88);
  v3[3] = v0;

  return sub_9910(v3);
}

uint64_t sub_7DFB0@<X0>(uint64_t a1@<X8>)
{

  return sub_7DA9C(v1 + v3, v2 + a1);
}

uint64_t sub_7DFDC()
{

  return swift_beginAccess();
}

uint64_t LogBloodPressureFlow.execute(completion:)()
{
  type metadata accessor for LogBloodPressureFlow();
  sub_83E88(&qword_1C8800, v0, type metadata accessor for LogBloodPressureFlow);
  sub_8427C();
  return sub_16C33C();
}

uint64_t LogBloodPressureFlow.execute()()
{
  sub_8A88();
  v1[151] = v0;
  v1[150] = v2;
  v3 = sub_16C0BC();
  v1[152] = v3;
  sub_888C(v3);
  v1[153] = v4;
  v6 = *(v5 + 64);
  v1[154] = sub_8BC0();
  v7 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v7);
  v9 = *(v8 + 64);
  v1[155] = sub_8C38();
  v1[156] = swift_task_alloc();
  v10 = sub_16BF5C();
  v1[157] = v10;
  sub_888C(v10);
  v1[158] = v11;
  v13 = *(v12 + 64);
  v1[159] = sub_8C38();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v14 = sub_16D63C();
  sub_4348(v14);
  v16 = *(v15 + 64);
  v1[163] = sub_8BC0();
  v17 = sub_17960();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_7E218()
{
  v1 = v0[151];
  switch(*(v1 + 272))
  {
    case 1:
      v12 = v0[150];
      sub_8284(v1 + 96, (v0 + 129));
      v13 = sub_16C58C();
      sub_8D14(v13);
      v14 = sub_16C57C();
      type metadata accessor for LogBloodPressurePromptStartegy();
      v15 = swift_allocObject();
      sub_83AB0(v0 + 129, v14, v15);

      sub_16C73C();
      v16 = sub_2440(&qword_1C8808, qword_173FC8);
      sub_38964(v16);
      sub_83E88(&qword_1C8810, 255, type metadata accessor for LogBloodPressurePromptStartegy);
      v17 = sub_16C21C();
      *(v1 + 272) = 2;
      v0[149] = v17;
      sub_98C8(&qword_1C8818, &qword_1C8808, qword_173FC8);

      sub_16C4CC();

      goto LABEL_11;
    case 2:
      v6 = v0[150];
      sub_16C4BC();
      goto LABEL_11;
    case 3:
      swift_task_alloc();
      sub_179E8();
      v0[168] = v7;
      *v7 = v8;
      v7[1] = sub_7F138;
      v9 = v0[151];
      v10 = v0[150];
      sub_842F0();

      return sub_7F918();
    case 4:
      v5 = v0[150];
      sub_8284(v1 + 96, (v0 + 109));
      sub_82E0();
      sub_16C4EC();
      sub_8334((v0 + 109));
LABEL_11:
      sub_841B0();

      sub_C9BC();
      sub_842F0();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v0[164] = sub_16D94C();
      v2 = async function pointer to BloodPressurePersistor.isLoggingAuthorized()[1];
      v3 = swift_task_alloc();
      v0[165] = v3;
      *v3 = v0;
      v3[1] = sub_7E588;
      sub_842F0();

      return BloodPressurePersistor.isLoggingAuthorized()();
  }
}

uint64_t sub_7E588()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 1320);
  v5 = *(v3 + 1312);
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  *(v9 + 1352) = v8;

  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_7E688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_8430C();
  if (*(v14 + 1352))
  {
    v16 = *(v14 + 1248);
    v17 = *(v14 + 1208);
    v18 = v17[5];
    v19 = v17[6];
    v20 = sub_2D20(v17 + 2, v18);
    sub_7BB14();
    v22 = v21;
    v24 = *(v23 + 64);
    v25 = sub_8BC0();
    (*(v22 + 16))(v25, v20, v18);
    (*(v19 + 32))(v18, v19);
    v26 = *(v22 + 8);
    v27 = sub_8427C();
    v28(v27);
    v29 = sub_16BD9C();
    if (sub_369C(v16, 1, v29) == 1)
    {
      v30 = *(v14 + 1248);

      sub_8748(v30, &qword_1C5690, &dword_16F320);
    }

    else
    {
      v39 = *(v14 + 1296);
      v40 = *(v14 + 1288);
      v41 = *(v14 + 1264);
      v42 = *(v14 + 1256);
      v43 = *(v14 + 1248);
      sub_84264();
      sub_16BD7C();
      v44 = *(*(v29 - 8) + 8);
      v45 = sub_C9C8();
      v46(v45);

      v47 = sub_842DC();
      v48(v47);
      sub_16C08C();
      sub_16C03C();
      v49 = sub_842C8();
      v50(v49);
      if ((v15 & 1) == 0)
      {
        v93 = *(v14 + 1304);
        v94 = *(v14 + 1296);
        v95 = sub_8421C();
        sub_8388(v95, v14 + 312);
        sub_8388(v15 + 56, v14 + 352);
        sub_8284(v15 + 96, v14 + 392);
        v96 = sub_16C58C();
        sub_8D14(v96);
        v97 = sub_16C57C();
        *(v14 + 576) = v96;
        *(v14 + 584) = &protocol witness table for ResponseFactory;
        *(v14 + 552) = v97;
        type metadata accessor for WellnessLoggingCATsSimple();
        sub_84358();
        sub_842BC();
        v98 = sub_16D5FC();
        type metadata accessor for WellnessCATs();
        sub_84358();
        sub_842BC();
        v99 = sub_16D58C();
        *(v14 + 592) = v98;
        *(v14 + 600) = v99;
        sub_17858();
        sub_16C4EC();
        (*(v15 + 8))(v94, v25);
        v100 = v14 + 312;
LABEL_20:
        sub_83B2C(v100);
        goto LABEL_21;
      }

      (*(*(v14 + 1264) + 8))(*(v14 + 1296), *(v14 + 1256));
    }

    v51 = *(v14 + 1240);
    v52 = v17[5];
    v53 = v17[6];
    v54 = sub_2D20(v17 + 2, v52);
    sub_7BB14();
    v56 = v55;
    v58 = *(v57 + 64);
    v59 = sub_8BC0();
    (*(v56 + 16))(v59, v54, v52);
    (*(v53 + 32))(v52, v53);
    v61 = *(v56 + 8);
    v60 = v56 + 8;
    v61(v59, v52);
    if (sub_369C(v51, 1, v29) == 1)
    {
      v62 = *(v14 + 1240);

      sub_8748(v62, &qword_1C5690, &dword_16F320);
      goto LABEL_11;
    }

    v63 = *(v14 + 1280);
    v64 = *(v14 + 1272);
    v65 = *(v14 + 1264);
    v66 = *(v14 + 1256);
    v67 = *(v14 + 1240);
    sub_84264();
    sub_16BD4C();
    v68 = *(*(v29 - 8) + 8);
    v69 = sub_C9C8();
    v70(v69);

    v71 = sub_842DC();
    v72(v71);
    sub_16C08C();
    sub_16C03C();
    v73 = sub_842C8();
    v74(v73);
    if (v60)
    {
      (*(*(v14 + 1264) + 8))(*(v14 + 1280), *(v14 + 1256));
LABEL_11:
      v75 = *(v14 + 1208);
      sub_80290();
      [*(v75 + 264) systolic];
      if (v76 == 0.0 && ([*(v75 + 264) diastolic], v77 == 0.0))
      {
        *(*(v14 + 1208) + 272) = 1;
        swift_task_alloc();
        sub_179E8();
        *(v14 + 1336) = v78;
        *v78 = v79;
        v80 = sub_7EF78;
      }

      else
      {
        *(*(v14 + 1208) + 272) = 3;
        swift_task_alloc();
        sub_179E8();
        *(v14 + 1328) = v78;
        *v78 = v81;
        v80 = sub_7EDB8;
      }

      v78[1] = v80;
      v82 = *(v14 + 1208);
      v83 = *(v14 + 1200);
      sub_841E0();

      return LogBloodPressureFlow.execute()(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14);
    }

    v101 = *(v14 + 1304);
    v102 = *(v14 + 1280);
    v103 = sub_8421C();
    sub_8388(v103, v14 + 16);
    sub_8388(v60 + 56, v14 + 56);
    sub_8284(v60 + 96, v14 + 96);
    v104 = sub_16C58C();
    sub_8D14(v104);
    v105 = sub_16C57C();
    *(v14 + 280) = v104;
    *(v14 + 288) = &protocol witness table for ResponseFactory;
    *(v14 + 256) = v105;
    type metadata accessor for WellnessLoggingCATsSimple();
    sub_84358();
    sub_842BC();
    v106 = sub_16D5FC();
    type metadata accessor for WellnessCATs();
    sub_84358();
    sub_842BC();
    v107 = sub_16D58C();
    *(v14 + 296) = v106;
    *(v14 + 304) = v107;
    sub_17858();
    sub_16C4EC();
    (*(v60 + 8))(v102, v59);
    v100 = v14 + 16;
    goto LABEL_20;
  }

  v31 = *(v14 + 1304);
  v32 = *(v14 + 1208);
  v33 = *(v14 + 1200);
  v34 = *(v32 + 288);
  sub_8388(v32 + 56, v14 + 616);
  sub_8284(v32 + 96, v14 + 656);
  v35 = sub_16C58C();
  sub_8D14(v35);
  v36 = sub_16C57C();
  *(v14 + 840) = v35;
  *(v14 + 848) = &protocol witness table for ResponseFactory;
  *(v14 + 816) = v36;
  type metadata accessor for WellnessCATsSimple();
  sub_16D62C();
  v37 = sub_16D5FC();
  type metadata accessor for WellnessCATs();
  sub_16D62C();
  v38 = sub_16D58C();
  *(v14 + 608) = v34;
  *(v14 + 856) = v37;
  *(v14 + 864) = v38;
  sub_84F0();
  sub_16C4EC();
  sub_8544(v14 + 608);
LABEL_21:
  sub_841B0();

  sub_C9BC();
  sub_841E0();

  return v109(v108, v109, v110, v111, v112, v113, v114, v115, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_7EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_84340();
  sub_76D68();
  sub_38A2C();
  v12 = v10[166];
  v13 = *v11;
  sub_C990();
  *v14 = v13;

  sub_38A38();
  v16 = *(v15 + 1304);
  v17 = v10[162];
  v18 = v10[161];
  v19 = v10[160];
  v20 = v10[159];
  v21 = v10[156];
  v22 = v10[155];
  v23 = v10[154];

  sub_841FC();
  sub_84328();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_7EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_84340();
  sub_76D68();
  sub_38A2C();
  v12 = v10[167];
  v13 = *v11;
  sub_C990();
  *v14 = v13;

  sub_38A38();
  v16 = *(v15 + 1304);
  v17 = v10[162];
  v18 = v10[161];
  v19 = v10[160];
  v20 = v10[159];
  v21 = v10[156];
  v22 = v10[155];
  v23 = v10[154];

  sub_841FC();
  sub_84328();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_7F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_84340();
  sub_76D68();
  sub_38A2C();
  v12 = v10[168];
  v13 = *v11;
  sub_C990();
  *v14 = v13;

  sub_38A38();
  v16 = *(v15 + 1304);
  v17 = v10[162];
  v18 = v10[161];
  v19 = v10[160];
  v20 = v10[159];
  v21 = v10[156];
  v22 = v10[155];
  v23 = v10[154];

  sub_841FC();
  sub_84328();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

id sub_7F2F8(uint64_t a1)
{
  v2 = sub_2440(&qword_1C89C8, &qword_174158);
  sub_7BB14();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_38634();
  v89 = v8;
  sub_89B4();
  __chkstk_darwin(v9);
  v87 = (&v79 - v10);
  sub_89B4();
  __chkstk_darwin(v11);
  v13 = &v79 - v12;
  v14 = sub_16DBEC();
  sub_7BB14();
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v19);
  sub_38634();
  v81 = v20;
  sub_89B4();
  __chkstk_darwin(v21);
  v90 = &v79 - v22;
  sub_89B4();
  __chkstk_darwin(v23);
  v25 = &v79 - v24;
  v26 = sub_16DBBC();
  sub_8B48();
  v27 = *(v16 + 2);
  v85 = v16 + 16;
  v86 = v26;
  v84 = v27;
  v27(v25, v26, v14);
  v92 = v4;
  v28 = *(v4 + 16);
  v88 = a1;
  v82 = v28;
  v28(v13, a1, v2);
  v29 = sub_16DBDC();
  v30 = sub_16E36C();
  if (os_log_type_enabled(v29, v30))
  {
    sub_8BD8();
    v80 = v14;
    v79 = sub_84288();
    v94 = v79;
    *v14 = 136315138;
    sub_38940(&qword_1C89D0, &qword_1C89C8, &qword_174158);
    v31 = sub_16E68C();
    v32 = v16;
    v34 = v33;
    v35 = sub_8424C();
    v36(v35);
    v37 = sub_3AB7C(v31, v34, &v94);
    v16 = v32;

    *(v14 + 4) = v37;
    _os_log_impl(&def_259DC, v29, v30, "Received response from PromptForValueFlowAsync: %s", v14, 0xCu);
    sub_2D64(v79);
    sub_8A2C();
    v14 = v80;
    sub_8A2C();

    v38 = v32;
  }

  else
  {

    v39 = sub_8424C();
    v40(v39);
    v38 = v16;
  }

  v41 = *(v38 + 1);
  v41(v25, v14);
  v43 = v87;
  v42 = v88;
  v44 = v82;
  v82(v87, v88, v2);
  v45 = *(v92 + 88);
  v46 = sub_842B0();
  v48 = v47(v46);
  v50 = v89;
  v49 = v90;
  if (v48 == enum case for PromptResult.answered<A>(_:))
  {
    v81 = v16;
    v51 = *(v92 + 96);
    v52 = sub_842B0();
    v53(v52);
    v55 = *v43;
    v54 = v43[1];
    v56 = v86;
    sub_8B48();
    v84(v49, v56, v14);
    v44(v50, v42, v2);
    v57 = sub_16DBDC();
    v58 = sub_16E36C();
    if (sub_84370(v58))
    {
      sub_8BD8();
      v59 = sub_84288();
      v93 = v59;
      *v14 = 136315138;
      sub_38940(&qword_1C89D0, &qword_1C89C8, &qword_174158);
      v60 = sub_16E68C();
      v62 = v61;
      v63 = sub_84234();
      v64(v63);
      v65 = sub_3AB7C(v60, v62, &v93);

      *(v14 + 4) = v65;
      _os_log_impl(&def_259DC, v57, v58, "PromptForValueFlowAsync returned: %s", v14, 0xCu);
      sub_2D64(v59);
      sub_8A2C();
      sub_1BA00();

      v66 = v90;
      v67 = v14;
    }

    else
    {

      v76 = sub_84234();
      v77(v76);
      v66 = sub_38B40();
    }

    v41(v66, v67);
    v78 = v91;
    [*(v91 + 264) setSystolic:v55];
    result = [*(v78 + 264) setDiastolic:v54];
    v75 = 3;
  }

  else
  {
    v68 = sub_842B0();
    v83(v68);
    v69 = v86;
    sub_8B48();
    v70 = v81;
    v84(v81, v69, v14);
    v71 = sub_16DBDC();
    v72 = sub_16E37C();
    if (sub_84370(v72))
    {
      v73 = sub_1BA38();
      *v73 = 0;
      _os_log_impl(&def_259DC, v71, v72, "PromptForValueFlowAsync did not return the needed values, erroring out", v73, 2u);
      sub_8A2C();
    }

    result = (v41)(v70, v14);
    v75 = 4;
  }

  *(v91 + 272) = v75;
  return result;
}

uint64_t sub_7F918()
{
  sub_8A88();
  v1[92] = v0;
  v1[91] = v2;
  v3 = sub_16D63C();
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[93] = sub_8BC0();
  v6 = sub_16DBEC();
  v1[94] = v6;
  sub_888C(v6);
  v1[95] = v7;
  v9 = *(v8 + 64);
  v1[96] = sub_8C38();
  v1[97] = swift_task_alloc();
  v10 = sub_17960();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_7F9EC()
{
  sub_84340();
  sub_76D68();
  v1 = v0[97];
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[92];
  v5 = sub_16DBBC();
  v0[98] = v5;
  sub_8B48();
  v6 = *(v2 + 16);
  v0[99] = v6;
  v0[100] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);

  v7 = sub_16DBDC();
  LOBYTE(v3) = sub_16E36C();

  if (os_log_type_enabled(v7, v3))
  {
    v8 = v0[92];
    v9 = sub_8BD8();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *(v8 + 264);
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    sub_8420C();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_8748(v10, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_1BA00();
  }

  v18 = v0[97];
  v19 = v0[95];
  v20 = v0[94];
  v21 = v0[92];

  v22 = *(v19 + 8);
  v0[101] = v22;
  v0[102] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v18, v20);
  v23 = *(v21 + 256);
  v0[103] = v23;
  v24 = *(v21 + 264);
  v0[104] = v24;
  v0[2] = v0;
  v0[7] = v0 + 90;
  v0[3] = sub_7FC54;
  v25 = swift_continuation_init();
  v0[83] = sub_2440(&qword_1C89D8, &unk_174160);
  v0[80] = v25;
  v0[76] = _NSConcreteStackBlock;
  v0[77] = 1107296256;
  v0[78] = sub_53C4;
  v0[79] = &unk_1BA7F0;
  swift_unknownObjectRetain();
  [v23 handleLogBloodPressure:v24 completion:v0 + 76];
  sub_84328();

  return _swift_continuation_await(v26);
}

uint64_t sub_7FC54()
{
  sub_8A88();
  v4 = *v0;
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  return _swift_task_switch(sub_7FD28, 0, 0);
}

uint64_t sub_7FD28()
{
  sub_76D68();
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  v6 = *(v0 + 768);
  v7 = *(v0 + 752);
  v8 = *(v0 + 720);
  *(v0 + 840) = v8;
  swift_unknownObjectRelease();

  sub_8B48();
  v4(v6, v5, v7);
  v9 = v8;
  v10 = sub_16DBDC();
  v11 = sub_16E36C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_8BD8();
    v3 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v3 = v9;
    v13 = v9;
    _os_log_impl(&def_259DC, v10, v11, "Received intent response: %@", v12, 0xCu);
    sub_8748(v3, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_8A2C();
  }

  v14 = *(v0 + 816);
  v15 = (*(v0 + 808))(*(v0 + 768), *(v0 + 752));
  v16 = (*(&stru_20.maxprot + (swift_isaMask & *v9)))(v15);
  if (v16 == 4)
  {
    v33 = swift_task_alloc();
    *(v0 + 848) = v33;
    *v33 = v0;
    v33[1] = sub_80114;
    v34 = *(v0 + 736);

    return sub_806F0();
  }

  else
  {
    if (v16 == 102)
    {
      v25 = *(v0 + 744);
      v26 = *(v0 + 736);
      v27 = *(v0 + 728);
      v28 = *(v26 + 288);
      sub_8388(v26 + 56, v0 + 512);
      v29 = sub_16C58C();
      sub_38964(v29);
      v30 = sub_16C57C();
      *(v0 + 576) = v3;
      *(v0 + 584) = &protocol witness table for ResponseFactory;
      *(v0 + 552) = v30;
      type metadata accessor for WellnessLoggingCATsSimple();
      sub_8D2C();
      sub_8CB4();
      v31 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_8D2C();
      sub_8CB4();
      v32 = sub_16D58C();
      *(v0 + 504) = v28;
      *(v0 + 592) = v31;
      *(v0 + 600) = v32;
      sub_83FC8();
      sub_16C4EC();

      sub_8401C(v0 + 504);
    }

    else if (v16 == 101)
    {
      v17 = *(v0 + 744);
      v18 = *(v0 + 736);
      v19 = *(v0 + 728);
      v20 = *(v18 + 288);
      sub_8388(v18 + 56, v0 + 88);
      sub_8284(v18 + 96, v0 + 128);
      v21 = sub_16C58C();
      sub_38964(v21);
      v22 = sub_16C57C();
      *(v0 + 312) = v3;
      *(v0 + 320) = &protocol witness table for ResponseFactory;
      *(v0 + 288) = v22;
      type metadata accessor for WellnessCATsSimple();
      sub_8D2C();
      sub_8CB4();
      v23 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_8D2C();
      sub_8CB4();
      v24 = sub_16D58C();
      *(v0 + 80) = v20;
      *(v0 + 328) = v23;
      *(v0 + 336) = v24;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v0 + 80);
    }

    else
    {
      v36 = *(v0 + 728);
      sub_8284(*(v0 + 736) + 96, v0 + 344);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v0 + 344);
    }

    v37 = *(v0 + 776);
    v38 = *(v0 + 768);
    v39 = *(v0 + 744);

    sub_C9BC();

    return v40();
  }
}

uint64_t sub_80114()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 848);
  *v2 = *v0;
  *(v1 + 856) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_80200()
{
  sub_8A88();
  v1 = v0[107];
  v2 = v0[105];
  v3 = v0[91];
  sub_16C4FC();

  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[93];

  sub_C9BC();

  return v7();
}

void sub_80290()
{
  v1 = v0;
  v2 = sub_16DBEC();
  sub_7BB14();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  sub_4304();
  v10 = v9 - v8;
  v12 = v0[5];
  v11 = v0[6];
  sub_2D20(v0 + 2, v12);
  sub_7BB14();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  sub_4304();
  v20 = v19 - v18;
  (*(v14 + 16))(v19 - v18);
  v21 = (*(v11 + 56))(v12, v11);
  (*(v14 + 8))(v20, v12);
  if (sub_3B35C(v21) < 2)
  {
    goto LABEL_6;
  }

  v22 = v21 & 0xC000000000000001;
  sub_3B360(0, (v21 & 0xC000000000000001) == 0, v21);
  if ((v21 & 0xC000000000000001) != 0)
  {
    sub_16E48C();
  }

  else
  {
    v23 = *(v21 + 32);
  }

  v24 = sub_16CDFC();

  if (!v24 || (v25 = sub_16CA9C(), v27 = v26, , (v27 & 1) != 0))
  {
LABEL_6:

LABEL_7:
    v28 = sub_16DBBC();
    sub_8B48();
    (*(v4 + 16))(v10, v28, v2);
    v29 = sub_16DBDC();
    v30 = sub_16E37C();
    if (sub_4B3A8(v30))
    {
      v31 = sub_1BA38();
      *v31 = 0;
      _os_log_impl(&def_259DC, v29, v30, "Failed to populate LogBloodPressureIntent: missing systolic/diastolic values", v31, 2u);
      sub_8A2C();
    }

    v32 = *(v4 + 8);
    v33 = sub_8427C();
    v34(v33);
    return;
  }

  sub_3B360(1, v22 == 0, v21);
  if (v22)
  {
    sub_16E48C();
  }

  else
  {
    v35 = *(v21 + 40);
  }

  v36 = sub_16CDFC();

  if (!v36)
  {
    goto LABEL_7;
  }

  v37 = sub_16CA9C();
  v39 = v38;

  if (v39)
  {
    goto LABEL_7;
  }

  [v1[33] setSystolic:*&v25];
  [v1[33] setDiastolic:*&v37];
  v40 = v1[33];
  v41 = v1[5];
  v42 = v1[6];
  sub_2D20(v1 + 2, v41);
  sub_7BB14();
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v47);
  sub_4304();
  v50 = v49 - v48;
  (*(v44 + 16))(v49 - v48);
  v51 = *(v42 + 48);
  v52 = v40;
  v53 = sub_C9E0();
  v54 = v51(v53);
  (*(v44 + 8))(v50, v41);
  if (v54 == 61)
  {
    v55 = 0;
  }

  else
  {
    sub_39008(v54);
    v55 = sub_16E1AC();
  }

  [v52 setUnit:v55];
}

uint64_t sub_806F0()
{
  sub_8A88();
  v1[114] = v0;
  v1[113] = v2;
  v3 = sub_16C46C();
  v1[115] = v3;
  sub_888C(v3);
  v1[116] = v4;
  v6 = *(v5 + 64);
  v1[117] = sub_8C38();
  v1[118] = swift_task_alloc();
  v7 = sub_16C7BC();
  v1[119] = v7;
  sub_888C(v7);
  v1[120] = v8;
  v10 = *(v9 + 64);
  v1[121] = sub_8BC0();
  v11 = sub_2440(&qword_1C63F0, &unk_1717F0);
  sub_4348(v11);
  v13 = *(v12 + 64);
  v1[122] = sub_8BC0();
  v14 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v14);
  v16 = *(v15 + 64);
  v1[123] = sub_8C38();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v17 = sub_2440(&qword_1C57E0, &unk_171C60);
  sub_4348(v17);
  v19 = *(v18 + 64);
  v1[126] = sub_8C38();
  v1[127] = swift_task_alloc();
  v20 = type metadata accessor for BloodPressureLogModel();
  v1[128] = v20;
  sub_4348(v20);
  v22 = *(v21 + 64);
  v1[129] = sub_8C38();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v23 = sub_16D5CC();
  v1[133] = v23;
  sub_888C(v23);
  v1[134] = v24;
  v26 = *(v25 + 64);
  v1[135] = sub_8BC0();
  v27 = sub_16DBEC();
  v1[136] = v27;
  sub_888C(v27);
  v1[137] = v28;
  v30 = *(v29 + 64);
  v1[138] = sub_8C38();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v31 = type metadata accessor for SnippetHeaderModel();
  v1[143] = v31;
  sub_4348(v31);
  v33 = *(v32 + 64);
  v1[144] = sub_8C38();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v34 = sub_16BE9C();
  v1[148] = v34;
  sub_888C(v34);
  v1[149] = v35;
  v37 = *(v36 + 64);
  v1[150] = sub_8C38();
  v1[151] = swift_task_alloc();
  v38 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v38);
  v40 = *(v39 + 64);
  v1[152] = sub_8C38();
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v41 = sub_16BF5C();
  v1[155] = v41;
  sub_888C(v41);
  v1[156] = v42;
  v44 = *(v43 + 64);
  v1[157] = sub_8C38();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v45 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v45);
  v47 = *(v46 + 64);
  v1[162] = sub_8C38();
  v1[163] = swift_task_alloc();
  v48 = sub_17960();

  return _swift_task_switch(v48, v49, v50);
}

uint64_t sub_80B40()
{
  sub_8430C();
  v1 = *(v0 + 1304);
  v2 = *(v0 + 904);
  v3 = sub_16BD9C();
  sub_214C(v1, 1, 1, v3);
  v4 = [v2 sampleStart];
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 1288);
    v7 = *(v0 + 904);
    sub_16BF3C();

    v8 = [v7 sampleEnd];
    if (v8)
    {
      v9 = v8;
      v39 = *(v0 + 1304);
      v10 = *(v0 + 1296);
      v11 = *(v0 + 1288);
      v12 = *(v0 + 1280);
      v13 = *(v0 + 1272);
      v14 = *(v0 + 1264);
      v15 = *(v0 + 1248);
      v16 = *(v0 + 1240);
      sub_16BF3C();

      v38 = v3;
      v17 = *(v15 + 16);
      v17(v13, v11, v16);
      v17(v14, v12, v16);
      sub_16BD5C();
      v18 = *(v15 + 8);
      v18(v12, v16);
      v18(v11, v16);
      sub_8748(v39, &qword_1C5690, &dword_16F320);
      sub_388E4();
      sub_214C(v19, v20, v21, v38);
      sub_86FC(v10, v39, &qword_1C5690, &dword_16F320);
    }

    else
    {
      (*(*(v0 + 1248) + 8))(*(v0 + 1288), *(v0 + 1240));
    }
  }

  v22 = *(v0 + 1304);
  v23 = *(v0 + 1232);
  v24 = *(*(v0 + 912) + 288);
  *(v0 + 1480) = v24;
  sub_12093C(v24, v22, v23);
  *(v0 + 520) = &type metadata for WellnessFeatureFlagsKey;
  *(v0 + 528) = sub_3736C();
  *(v0 + 496) = 4;
  v25 = sub_16C86C();
  sub_2D64((v0 + 496));
  if (v25)
  {
    sub_208C0(v24);
    *(v0 + 1312) = v26;
    v27 = swift_task_alloc();
    *(v0 + 1320) = v27;
    *v27 = v0;
    v27[1] = sub_80E88;
    sub_C9C8();
    sub_841E0();

    return sub_66E84();
  }

  else
  {
    v30 = *(v0 + 1232);
    v31 = *(v0 + 912);
    v32 = *(v0 + 904);
    sub_8388(v31 + 176, v0 + 536);
    v33 = sub_2D20((v0 + 536), *(v0 + 560));
    v34 = swift_task_alloc();
    *(v0 + 1456) = v34;
    v34[2] = v32;
    v34[3] = v31;
    v34[4] = v30;
    v35 = *v33;
    v36 = swift_task_alloc();
    *(v0 + 1464) = v36;
    *v36 = v0;
    v36[1] = sub_82BD0;
    sub_841E0();

    return sub_1098D8();
  }
}

uint64_t sub_80E88()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 1320);
  v5 = *(v3 + 1312);
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  *(v9 + 1328) = v8;
  *(v9 + 1336) = v10;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_80F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  sub_38E68();
  a47 = v49;
  a48 = v50;
  sub_842A4();
  a46 = v48;
  v51 = *(v48 + 1224);
  v52 = *(v48 + 1184);
  sub_372FC(*(v48 + 1232), v51);
  v53 = sub_369C(v51, 1, v52);
  v54 = *(v48 + 1336);
  v55 = *(v48 + 1224);
  if (v53 == 1)
  {
    v56 = *(v48 + 1336);

    sub_8748(v55, &qword_1C57F8, &unk_172510);
LABEL_12:
    v98 = *(v48 + 1104);
    v99 = *(v48 + 1096);
    v100 = *(v48 + 1088);
    sub_16DBBC();
    sub_8B48();
    v101 = *(v99 + 16);
    v102 = sub_38B40();
    v103(v102);
    v104 = sub_16DBDC();
    v105 = sub_16E37C();
    if (sub_4B3A8(v105))
    {
      *sub_1BA38() = 0;
      sub_8420C();
      _os_log_impl(v106, v107, v108, v109, v110, 2u);
      sub_1BA00();
    }

    v111 = *(v48 + 1304);
    v112 = *(v48 + 1104);
    v113 = *(v48 + 1096);
    v114 = *(v48 + 1088);
    v115 = *(v48 + 912);

    v116 = *(v113 + 8);
    v117 = sub_C9E0();
    v118(v117);
    sub_8284(v115 + 96, v48 + 176);
    sub_82E0();
    v170 = sub_16C32C();
    sub_8334(v48 + 176);
    sub_8748(v111, &qword_1C5690, &dword_16F320);
    sub_84070();
    v139 = v120;
    v140 = v119;
    v141 = *(v48 + 1200);
    v142 = *(v48 + 1176);
    v143 = *(v48 + 1168);
    v144 = *(v48 + 1160);
    v145 = *(v48 + 1152);
    v146 = *(v48 + 1136);
    v147 = *(v48 + 1128);
    v148 = *(v48 + 1120);
    v149 = *(v48 + 1112);
    v150 = *(v48 + 1104);
    v151 = *(v48 + 1080);
    v152 = *(v48 + 1056);
    v153 = *(v48 + 1048);
    v154 = *(v48 + 1040);
    v155 = *(v48 + 1032);
    v156 = *(v48 + 1016);
    v157 = *(v48 + 1008);
    v158 = *(v48 + 1000);
    v159 = *(v48 + 992);
    v160 = *(v48 + 984);
    v162 = *(v48 + 976);
    v165 = *(v48 + 968);
    v168 = *(v48 + 944);
    v169 = *(v48 + 936);
    sub_8748(v111, &qword_1C57F8, &unk_172510);

    sub_5D948();
    sub_38AD0();

    return v123(v121, v122, v123, v124, v125, v126, v127, v128, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v162, v165, v168, v169, v170, a36, a37, a38, a39, a40);
  }

  (*(*(v48 + 1192) + 32))(*(v48 + 1208), *(v48 + 1224), *(v48 + 1184));
  if (!v54)
  {
    v92 = sub_8419C();
    v93(v92);
    goto LABEL_12;
  }

  v57 = *(v48 + 1336);
  sub_83A4C(*(v48 + 904));
  if (!v58)
  {
    v94 = sub_8419C();
    v95(v94);
LABEL_11:

    goto LABEL_12;
  }

  v59 = [*(v48 + 904) sampleStart];
  if (!v59)
  {
    v96 = sub_8419C();
    v97(v96);

    goto LABEL_11;
  }

  v60 = v59;
  v61 = *(v48 + 1328);
  v62 = *(v48 + 1256);
  v63 = *(v48 + 1176);
  v64 = *(v48 + 1144);
  v161 = *(v48 + 1136);
  v65 = *(v48 + 1096);
  v163 = *(v48 + 1088);
  v166 = *(v48 + 1168);
  v66 = *(v48 + 1480);
  sub_16BF3C();

  v67 = sub_16D4CC();
  *(v48 + 1344) = v67;
  sub_8D14(v67);
  sub_16D4BC();
  sub_16BF2C();
  sub_16D4AC();

  *(v48 + 1352) = sub_16D49C();

  sub_C9E0();
  sub_16E23C();

  v68 = sub_25948(v66);
  v70 = v69;
  v71 = sub_208C0(v66);
  v72 = (v63 + *(v64 + 20));
  *v72 = v68;
  v72[1] = v70;
  v73 = (v63 + *(v64 + 24));
  *v73 = v71;
  v73[1] = v74;
  *(v48 + 1360) = sub_16DBBC();
  sub_8B48();
  *(v48 + 1368) = *(v65 + 16);
  *(v48 + 1376) = (v65 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v75 = sub_8B9C();
  v76(v75);
  sub_8416C();
  sub_83DD4(v63, v166, v77);
  v78 = sub_16DBDC();
  v79 = sub_16E36C();
  v80 = sub_4B3A8(v79);
  v81 = *(v48 + 1168);
  if (v80)
  {
    v82 = *(v48 + 1160);
    v83 = *(v48 + 1144);
    v84 = *(v48 + 1096);
    v164 = *(v48 + 1088);
    v167 = *(v48 + 1136);
    v85 = sub_8BD8();
    v86 = swift_slowAlloc();
    a36 = v86;
    *v85 = 136315138;
    sub_83DD4(v81, v82, type metadata accessor for SnippetHeaderModel);
    sub_842B0();
    v87 = sub_16E1EC();
    v89 = v88;
    sub_83E30(v81, type metadata accessor for SnippetHeaderModel);
    v90 = sub_3AB7C(v87, v89, &a36);

    *(v85 + 4) = v90;
    _os_log_impl(&def_259DC, v78, v79, "#LogBloodPressureFlow: Snippet header model %s", v85, 0xCu);
    sub_2D64(v86);
    sub_8A2C();
    sub_8A2C();

    v91 = *(v84 + 8);
    v91(v167, v164);
  }

  else
  {
    v130 = *(v48 + 1136);
    v131 = *(v48 + 1096);
    v132 = *(v48 + 1088);

    sub_840A0();
    sub_83E30(v81, v133);
    v91 = *(v131 + 8);
    v91(v130, v132);
  }

  *(v48 + 1384) = v91;
  v134 = *(v48 + 1080);
  sub_16E23C();

  v135 = swift_task_alloc();
  *(v48 + 1392) = v135;
  *v135 = v48;
  v135[1] = sub_81694;
  sub_38AD0();

  return sub_66A84(v136, v137);
}

uint64_t sub_81694()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 1392);
  *v2 = *v0;
  *(v1 + 1400) = v5;
  *(v1 + 1408) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_81784()
{
  v141 = v0;
  v1 = v0[168];
  v2 = v0[113];
  v135 = *(v0[149] + 16);
  v135(v0[150], v0[151], v0[148]);
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  sub_16D4BC();
  v5 = [v2 sampleEnd];
  if (v5)
  {
    v6 = v5;
    v7 = v0[126];
    sub_16BF3C();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v0[155];
  v10 = v0[127];
  v11 = v0[126];
  sub_214C(v11, v8, 1, v9);
  sub_86FC(v11, v10, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v10, 1, v9))
  {
    sub_8748(v0[127], &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v12 = v0[159];
    v13 = v0[156];
    v14 = v0[155];
    v15 = v0[127];
    (*(v13 + 16))(v12, v15, v14);
    sub_8748(v15, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v13 + 8))(v12, v14);
  }

  v16 = v0[176];
  v17 = v0[175];
  v18 = v0[147];
  v19 = v0[144];
  v138 = v0[143];
  v133 = v0[135];
  v121 = v0[133];
  v20 = v0[131];
  v128 = v0[128];
  v21 = v0[125];
  v22 = v0[113];
  sub_16D4AC();

  sub_16D49C();

  [v22 systolic];
  v24 = v23;
  [v22 diastolic];
  v26 = v25;
  v27 = 0x646567676F4CLL;
  if (v16)
  {
    v27 = v17;
  }

  v124 = v27;
  v126 = v16;
  sub_8416C();
  sub_83DD4(v18, v19, v28);
  v29 = sub_16D5BC();
  v131 = v30;
  v132 = v29;
  v134 = sub_16C11C();
  sub_214C(v20, 1, 1, v134);
  v31 = *(v128 + 32);
  v129 = v20;
  sub_214C(v20 + v31, 1, 1, v138);
  sub_16D45C();
  if (sub_369C(v21, 1, v121) == 1)
  {
    sub_8748(v0[125], &qword_1C5800, &unk_16F510);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v34 = v0[134];
    v35 = v0[133];
    v36 = v0[125];
    v37 = sub_16D5BC();
    v39 = v38;
    v40 = *(v34 + 8);
    v41 = sub_C9C8();
    v42(v41);
    v0[109] = v37;
    v0[110] = v39;
    sub_9854();
    v32 = sub_16E3FC();
    v33 = v43;
  }

  v44 = v0[176];
  v45 = v0[144];
  v119 = v0[143];
  v122 = v0[133];
  v46 = v0[131];
  v47 = v0[128];
  v48 = v0[124];
  v49 = (v46 + v47[5]);
  v50 = (v46 + v47[6]);
  v51 = (v46 + v47[7]);
  *v49 = v32;
  v49[1] = v33;
  *v50 = sub_12CF7C(v24, 0, v26, 0);
  v50[1] = v52;
  v53 = 0xE600000000000000;
  if (v126)
  {
    v53 = v44;
  }

  *v51 = v124;
  v51[1] = v53;
  sub_8748(v129 + v31, &dword_1C63F8, &qword_171800);
  sub_8416C();
  sub_83DD4(v45, v129 + v31, v54);
  sub_388E4();
  sub_214C(v55, v56, v57, v119);
  sub_16D46C();
  if (sub_369C(v48, 1, v122) == 1)
  {
    sub_8748(v0[124], &qword_1C5800, &unk_16F510);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v60 = v0[134];
    v61 = v0[133];
    v62 = v0[124];
    v58 = sub_16D5BC();
    v59 = v63;
    v64 = *(v60 + 8);
    v65 = sub_C9C8();
    v66(v65);
  }

  v127 = v0[171];
  v130 = v0[172];
  v67 = v0[152];
  v68 = v0[150];
  v69 = v0[149];
  v70 = v0[148];
  v71 = v0[144];
  v118 = v0[170];
  v120 = v0[141];
  v117 = v0[132];
  v72 = v0[131];
  v123 = v0[136];
  v125 = v0[130];
  v73 = v0[128];
  v74 = v0[122];
  v75 = (v72 + *(v73 + 36));
  v76 = (v72 + *(v73 + 40));
  *v75 = v58;
  v75[1] = v59;
  *v76 = v132;
  v76[1] = v131;
  v135(v67, v68, v70);
  sub_388E4();
  sub_214C(v77, v78, v79, v70);
  sub_12D058(v67);

  sub_8748(v67, &qword_1C57F8, &unk_172510);
  sub_840A0();
  sub_83E30(v71, v80);
  v0[177] = *(v69 + 8);
  v0[178] = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = sub_8427C();
  v82(v81);
  sub_388E4();
  sub_214C(v83, v84, v85, v134);
  sub_1E634(v74, v72, &qword_1C63F0, &unk_1717F0);
  sub_83D70(v72, v117);
  sub_8B48();
  v86 = sub_C9C8();
  v127(v86);
  sub_84184();
  sub_83DD4(v117, v125, v87);
  v88 = sub_16DBDC();
  v89 = sub_16E36C();
  v90 = sub_84370(v89);
  v91 = v0[173];
  v92 = v0[141];
  v93 = v0[137];
  v94 = v0[136];
  v95 = v0[130];
  if (v90)
  {
    v96 = v0[129];
    v97 = v0[128];
    v139 = v0[141];
    v98 = sub_8BD8();
    v137 = v94;
    v99 = swift_slowAlloc();
    v140 = v99;
    *v98 = 136315138;
    v136 = v91;
    sub_83DD4(v95, v96, type metadata accessor for BloodPressureLogModel);
    v100 = sub_16E1EC();
    v102 = v101;
    sub_83E30(v95, type metadata accessor for BloodPressureLogModel);
    v103 = sub_3AB7C(v100, v102, &v140);

    *(v98 + 4) = v103;
    _os_log_impl(&def_259DC, v88, v89, "#LogBloodPressureFlow: Snippet model %s", v98, 0xCu);
    sub_2D64(v99);
    sub_8A2C();
    sub_8A2C();

    v136(v139, v137);
  }

  else
  {

    sub_84154();
    sub_83E30(v95, v104);
    v91(v92, v94);
  }

  v105 = v0[135];
  v106 = v0[134];
  v107 = v0[133];
  v108 = v0[123];
  v109 = v0[113];
  v110 = *(v0[114] + 280);
  [v109 systolic];
  [v109 diastolic];
  (*(v106 + 16))(v108, v105, v107);
  sub_388E4();
  sub_214C(v111, v112, v113, v107);
  v114 = swift_task_alloc();
  v0[179] = v114;
  *v114 = v0;
  v114[1] = sub_81F80;
  v115 = v0[123];

  return sub_163CA0();
}

uint64_t sub_81F80()
{
  sub_38A2C();
  sub_8A60();
  *v4 = v3;
  v5 = *(v0 + 1432);
  v6 = *v2;
  sub_8A60();
  *v7 = v6;
  *(v9 + 1440) = v8;

  sub_38A38();
  v11 = *(v10 + 984);
  if (v1)
  {

    sub_8748(v11, &qword_1C5800, &unk_16F510);
    v12 = sub_828A8;
  }

  else
  {
    sub_8748(*(v10 + 984), &qword_1C5800, &unk_16F510);
    v12 = sub_820E0;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_820E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  sub_8430C();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[180];
  v26 = v22[172];
  v27 = v22[171];
  v28 = v22[170];
  v29 = v22[140];
  v30 = v22[136];
  sub_8B48();
  v31 = sub_8B9C();
  v27(v31);
  v32 = v25;
  v33 = sub_16DBDC();
  v34 = sub_16E36C();
  if (sub_84370(v34))
  {
    v35 = v22[180];
    sub_8BD8();
    v66 = sub_84288();
    a11 = v66;
    *v30 = 136315138;
    v36 = [v35 dialog];
    sub_6805C();
    v37 = sub_16E2CC();

    if (sub_3B35C(v37))
    {
      sub_3B360(0, (v37 & 0xC000000000000001) == 0, v37);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = sub_16E48C();
      }

      else
      {
        v38 = *(v37 + 32);
      }

      v39 = v38;

      v40 = [v39 fullPrint];

      v41 = sub_16E1BC();
      v43 = v42;
    }

    else
    {

      v41 = 0;
      v43 = 0;
    }

    v65 = v22[173];
    v49 = v22[140];
    v50 = v22[137];
    v51 = v22[136];
    v22[107] = v41;
    v22[108] = v43;
    sub_2440(&qword_1C69C8, &qword_174150);
    v52 = sub_16E3DC();
    v54 = v53;

    v55 = sub_3AB7C(v52, v54, &a11);

    *(v30 + 4) = v55;
    _os_log_impl(&def_259DC, v33, v34, "#GenerateLoggingResponseOutput: Snippet dialog is %s", v30, 0xCu);
    sub_2D64(v66);
    sub_8A2C();
    sub_1BA00();

    v65(v49, v51);
  }

  else
  {
    v44 = v22[173];
    v45 = v22[140];
    v46 = v22[137];
    v47 = v22[136];

    v48 = sub_38B40();
    v44(v48);
  }

  v56 = v22[132];
  v22[85] = type metadata accessor for WellnessSnippets();
  v22[86] = sub_83E88(&qword_1C5EE0, 255, type metadata accessor for WellnessSnippets);
  sub_9910(v22 + 82);
  sub_84184();
  v57 = sub_38B40();
  sub_83DD4(v57, v58, v59);
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v22[181] = v60;
  *v60 = v61;
  v60[1] = sub_82418;
  v62 = v22[180];
  sub_841E0();

  return sub_672C0();
}

uint64_t sub_82418()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 1448);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 656));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_82500()
{
  v1 = *(v0 + 1440);
  v40 = *(v0 + 1416);
  v42 = *(v0 + 1424);
  v2 = *(v0 + 1352);
  v44 = *(v0 + 1304);
  v3 = *(v0 + 1248);
  v32 = *(v0 + 1240);
  v34 = *(v0 + 1256);
  v36 = *(v0 + 1184);
  v38 = *(v0 + 1208);
  v28 = *(v0 + 1080);
  v30 = *(v0 + 1176);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v6 = *(v0 + 1056);
  sub_8388(v0 + 616, v0 + 696);
  v7 = swift_allocObject();
  sub_17464((v0 + 696), v7 + 16);
  sub_16C73C();
  v8 = sub_16C1DC();
  sub_38964(v8);
  *(v0 + 896) = sub_16C1CC();
  v46 = sub_16C32C();

  sub_2D64((v0 + 616));
  sub_84154();
  sub_83E30(v6, v9);
  (*(v4 + 8))(v28, v5);
  sub_840A0();
  sub_83E30(v30, v10);
  (*(v3 + 8))(v34, v32);
  v40(v38, v36);
  sub_8748(v44, &qword_1C5690, &dword_16F320);

  sub_84070();
  v13 = *(v0 + 1200);
  v14 = *(v0 + 1176);
  v15 = *(v0 + 1168);
  v16 = *(v0 + 1160);
  v17 = *(v0 + 1152);
  v18 = *(v0 + 1136);
  v19 = *(v0 + 1128);
  v20 = *(v0 + 1120);
  v21 = *(v0 + 1112);
  v22 = *(v0 + 1104);
  v23 = *(v0 + 1080);
  v24 = *(v0 + 1056);
  v25 = *(v0 + 1048);
  v26 = *(v0 + 1040);
  v27 = *(v0 + 1032);
  v29 = *(v0 + 1016);
  v31 = *(v0 + 1008);
  v33 = *(v0 + 1000);
  v35 = *(v0 + 992);
  v37 = *(v0 + 984);
  v39 = *(v0 + 976);
  v41 = *(v0 + 968);
  v43 = *(v0 + 944);
  v45 = *(v0 + 936);
  sub_8748(v6, &qword_1C57F8, &unk_172510);

  sub_5D948();

  return v11(v46);
}

uint64_t sub_828A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_38E68();
  sub_842A4();
  v41 = v40[172];
  v42 = v40[171];
  v43 = v40[170];
  v44 = v40[139];
  v45 = v40[136];
  sub_8B48();
  v46 = sub_8B9C();
  v42(v46);
  v47 = sub_16DBDC();
  v48 = sub_16E37C();
  if (sub_4B3A8(v48))
  {
    *sub_1BA38() = 0;
    sub_8420C();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    sub_1BA00();
  }

  v81 = v40[177];
  v82 = v40[178];
  v54 = v40[173];
  v73 = v40[169];
  v83 = v40[163];
  v55 = v40[156];
  v77 = v40[155];
  v78 = v40[157];
  v79 = v40[148];
  v80 = v40[151];
  v56 = v40[139];
  v57 = v40[137];
  v58 = v40[136];
  v75 = v40[135];
  v76 = v40[147];
  v59 = v40[134];
  v74 = v40[133];
  v60 = v40[132];
  v61 = v40[114];

  v54(v56, v58);
  sub_8284(v61 + 96, (v40 + 42));
  sub_82E0();
  v84 = sub_16C32C();

  sub_8334((v40 + 42));
  sub_84154();
  sub_83E30(v60, v62);
  (*(v59 + 8))(v75, v74);
  sub_840A0();
  sub_83E30(v76, v63);
  (*(v55 + 8))(v78, v77);
  v81(v80, v79);
  sub_8748(v83, &qword_1C5690, &dword_16F320);
  sub_84070();
  sub_840B8();
  sub_8748(v58, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_38AD0();

  return v66(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, a37, a38, a39, a40);
}

uint64_t sub_82BD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 1464);
  *v6 = *v2;

  v8 = *(v4 + 1456);
  if (v1)
  {

    v9 = sub_83020;
  }

  else
  {
    *(v5 + 1472) = a1;

    v9 = sub_82D1C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_82D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_38E68();
  sub_842A4();
  v41 = v40[184];
  v65 = v40[163];
  v42 = v40[121];
  v43 = v40[120];
  v44 = v40[119];
  v45 = v40[118];
  v46 = v40[117];
  v47 = v40[116];
  v48 = v40[115];
  v49 = v40[114];
  sub_2D64(v40 + 67);
  sub_16C43C();
  (*(v47 + 16))(v46, v45, v48);
  sub_16C75C();
  (*(v47 + 8))(v45, v48);
  v50 = [v41 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v49 + 96, (v40 + 72));
  v51 = v40[76];
  sub_2D20(v40 + 72, v40[75]);
  v52 = sub_16C2FC();
  sub_2D64(v40 + 72);
  v40[111] = v52;
  sub_16C28C();
  v66 = sub_16C32C();

  v53 = *(v43 + 8);
  v54 = sub_C9E0();
  v55(v54);
  sub_8748(v65, &qword_1C5690, &dword_16F320);

  sub_84070();
  sub_840B8();
  sub_8748(v47 + 8, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_38AD0();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, v65, v66, a37, a38, a39, a40);
}

uint64_t sub_83020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_38E68();
  sub_842A4();
  v41 = v40[163];
  v42 = v40[114];
  sub_2D64(v40 + 67);
  sub_8284(v42 + 96, (v40 + 2));
  sub_82E0();
  v52 = sub_16C32C();
  sub_8334((v40 + 2));
  sub_8748(v41, &qword_1C5690, &dword_16F320);
  sub_84070();
  sub_840B8();
  sub_8748(v41, &qword_1C57F8, &unk_172510);

  sub_5D948();
  sub_38AD0();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, v52, a37, a38, a39, a40);
}

uint64_t sub_8320C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v7 = sub_2440(&qword_1C57F8, &unk_172510);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v58 - v9;
  v11 = sub_16BF5C();
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  __chkstk_darwin(v11);
  v58 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2440(&qword_1C57E0, &unk_171C60);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v21 = sub_2440(&qword_1C5800, &unk_16F510);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v60 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v58 - v25;
  [a2 systolic];
  v28 = v27;
  v29 = sub_83A4C(a2);
  LOBYTE(a3) = *(a3 + 288);
  v31 = sub_99F0C(v29, v30, a3, v28);

  v32 = type metadata accessor for WellnessLoggingBloodPressureParameters(0);
  v33 = a1 + v32[9];
  *v33 = v31;
  *(v33 + 8) = 0;
  [a2 diastolic];
  v35 = v34;
  v36 = sub_83A4C(a2);
  v38 = sub_99F0C(v36, v37, a3, v35);

  v39 = a1 + v32[7];
  *v39 = v38;
  *(v39 + 8) = 0;
  sub_83A4C(a2);
  if (v40)
  {
    sub_16E23C();

    v41 = sub_16D5CC();
    v42 = 0;
  }

  else
  {
    v41 = sub_16D5CC();
    v42 = 1;
  }

  v43 = 1;
  sub_214C(v26, v42, 1, v41);
  sub_1E634(v26, a1 + v32[10], &qword_1C5800, &unk_16F510);
  v44 = sub_16D4CC();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_16D4BC();
  v47 = [a2 sampleEnd];
  if (v47)
  {
    v48 = v47;
    sub_16BF3C();

    v43 = 0;
  }

  sub_214C(v18, v43, 1, v11);
  sub_86FC(v18, v20, &qword_1C57E0, &unk_171C60);
  if (sub_369C(v20, 1, v11))
  {
    sub_8748(v20, &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v49 = v58;
    v50 = v59;
    (*(v59 + 16))(v58, v20, v11);
    sub_8748(v20, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    (*(v50 + 8))(v49, v11);
  }

  v51 = v60;
  sub_16D4AC();

  v52 = sub_16D49C();

  v53 = v32[8];
  v54 = *(a1 + v53);

  *(a1 + v53) = v52;
  sub_372FC(v61, v10);
  v55 = sub_16BE9C();
  if (sub_369C(v10, 1, v55) == 1)
  {
    sub_8748(v10, &qword_1C57F8, &unk_172510);
    v56 = sub_16D5CC();
    sub_214C(v51, 1, 1, v56);
  }

  else
  {
    sub_61120(v51);
    (*(*(v55 - 8) + 8))(v10, v55);
  }

  return sub_1E634(v51, a1, &qword_1C5800, &unk_16F510);
}

uint64_t LogBloodPressureFlow.deinit()
{
  sub_2D64((v0 + 16));
  sub_2D64((v0 + 56));
  sub_C938(v0 + 96);
  v1 = *(v0 + 256);
  swift_unknownObjectRelease();

  v2 = *(v0 + 280);

  return v0;
}

uint64_t LogBloodPressureFlow.__deallocating_deinit()
{
  LogBloodPressureFlow.deinit();

  return _swift_deallocClassInstance(v0, 289, 7);
}

uint64_t sub_837BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_8386C;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_8386C()
{
  sub_8A88();
  v2 = v1;
  sub_C9D4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_5D948();

  return v7(v2);
}

uint64_t sub_83978()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_C6F0;

  return LogBloodPressureFlow.execute()();
}

uint64_t sub_83A14()
{
  type metadata accessor for LogBloodPressureFlow();

  return sub_16C37C();
}

uint64_t sub_83A4C(void *a1)
{
  v1 = [a1 unit];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_83AB0(const void *a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_16C58C();
  v9 = &protocol witness table for ResponseFactory;
  *&v7 = a2;
  *(a3 + 16) = 82;
  memcpy((a3 + 24), a1, 0xA0uLL);
  sub_17464(&v7, a3 + 184);
  return a3;
}

uint64_t getEnumTagSinglePayload for LogBloodPressureFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LogBloodPressureFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x83CD4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_83D10()
{
  result = qword_1C89C0;
  if (!qword_1C89C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89C0);
  }

  return result;
}

uint64_t sub_83D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloodPressureLogModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_83DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_8B38(v4);
  v6 = *(v5 + 16);
  v7 = sub_8B9C();
  v8(v7);
  return a2;
}

uint64_t sub_83E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_83E88(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_83ED0()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_83F08()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

unint64_t sub_83FC8()
{
  result = qword_1C89E0;
  if (!qword_1C89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89E0);
  }

  return result;
}

void sub_84070()
{
  v1 = v0[163];
  v2 = v0[162];
  v3 = v0[161];
  v4 = v0[160];
  v5 = v0[159];
  v6 = v0[158];
  v7 = v0[157];
  v8 = v0[154];
  v9 = v0[153];
  v10 = v0[152];
  v11 = v0[151];
}

void sub_840B8()
{
  v5 = v0[150];
  v6 = v0[147];
  v7 = v0[146];
  v8 = v0[145];
  v9 = v0[144];
  v10 = v0[142];
  v11 = v0[141];
  v12 = v0[140];
  v13 = v0[139];
  v14 = v0[138];
  v15 = v0[135];
  v16 = v0[132];
  v17 = v0[131];
  v18 = v0[130];
  v19 = v0[129];
  v20 = v0[127];
  v21 = v0[126];
  v2 = v0[124];
  *(v1 - 144) = v0[125];
  *(v1 - 136) = v2;
  v3 = v0[122];
  *(v1 - 128) = v0[123];
  *(v1 - 120) = v3;
  v4 = v0[118];
  *(v1 - 112) = v0[121];
  *(v1 - 104) = v4;
  *(v1 - 96) = v0[117];
}

uint64_t sub_8419C()
{
  result = v0[151];
  v2 = v0[148];
  v3 = *(v0[149] + 8);
  return result;
}

uint64_t sub_841B0()
{
  v2 = v0[163];
  v3 = v0[162];
  v4 = v0[161];
  v5 = v0[160];
  v6 = v0[159];
  v7 = v0[156];
  v8 = v0[155];
  v9 = v0[154];
}

uint64_t sub_841FC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_8421C()
{
  v2 = v0[158];
  v3 = v0[157];
  v4 = v0[151];
  v5 = v0[150];
  return v1 + 16;
}

uint64_t sub_84234()
{
  v2 = *(v1 - 168) + 8;
  result = v0;
  v4 = *(v1 - 240);
  return result;
}

uint64_t sub_8424C()
{
  result = v0;
  *(v1 - 240) = *(*(v1 - 168) + 8);
  return result;
}

void sub_84264()
{
  v1 = v0[154];
  v2 = v0[153];
  v3 = v0[152];
}

uint64_t sub_84288()
{

  return swift_slowAlloc();
}

uint64_t sub_84358()
{

  return sub_16D62C();
}

BOOL sub_84370(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_84388()
{
  sub_87F90();

  return sub_16C33C();
}

uint64_t sub_843DC()
{
  sub_8A88();
  v1[43] = v2;
  v1[44] = v0;
  v3 = sub_2440(&qword_1C69C0, &unk_174290);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[45] = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_84460()
{
  v1 = **(v0 + 352);
  getLocalizedMedName(from:)();
  if (v2)
  {
  }

  v3 = *(v0 + 360);
  sub_880D8(*(v0 + 352));
  v4 = sub_88100();
  v5(v4);
  getMedScheduleWithDefinedValues(from:deviceState:)();
  sub_2D64((v0 + 176));
  v6 = sub_2440(&qword_1C6988, &unk_176730);
  sub_369C(v3, 1, v6);
  sub_8748(v3, &qword_1C69C0, &unk_174290);
  swift_task_alloc();
  sub_179E8();
  *(v0 + 368) = v7;
  *v7 = v8;
  v7[1] = sub_845AC;
  v9 = *(v0 + 352);

  return sub_84800();
}

uint64_t sub_845AC()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 368);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_84690()
{
  sub_76D68();
  if (*(v0 + 280))
  {
    v1 = *(v0 + 344);
    sub_17464((v0 + 256), v0 + 216);
    sub_8388(v0 + 216, v0 + 296);
    v2 = swift_allocObject();
    sub_17464((v0 + 296), v2 + 16);
    sub_16C73C();
    v3 = sub_16C1DC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    *(v0 + 336) = sub_16C1CC();
    sub_16C4EC();
    sub_2D64((v0 + 216));
  }

  else
  {
    v7 = *(v0 + 344);
    v6 = *(v0 + 352);
    sub_8748(v0 + 256, &qword_1C5ED0, &qword_171090);
    sub_8284(v6 + 8, v0 + 16);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 16);
  }

  v8 = *(v0 + 360);

  sub_C9BC();

  return v9();
}

uint64_t sub_84800()
{
  sub_8A88();
  *(v1 + 609) = v2;
  *(v1 + 608) = v3;
  *(v1 + 320) = v4;
  *(v1 + 328) = v0;
  v5 = sub_16DBEC();
  *(v1 + 336) = v5;
  sub_888C(v5);
  *(v1 + 344) = v6;
  v8 = *(v7 + 64);
  *(v1 + 352) = sub_8BC0();
  v9 = type metadata accessor for GenericButtonModel();
  *(v1 + 360) = v9;
  sub_4348(v9);
  v11 = *(v10 + 64);
  *(v1 + 368) = sub_8BC0();
  v12 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v12);
  v14 = *(v13 + 64) + 15;
  *(v1 + 376) = swift_task_alloc();
  *(v1 + 384) = swift_task_alloc();
  *(v1 + 392) = swift_task_alloc();
  *(v1 + 400) = swift_task_alloc();
  v15 = sub_16BE9C();
  *(v1 + 408) = v15;
  sub_888C(v15);
  *(v1 + 416) = v16;
  v18 = *(v17 + 64) + 15;
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  v19 = sub_16C46C();
  *(v1 + 440) = v19;
  sub_888C(v19);
  *(v1 + 448) = v20;
  v22 = *(v21 + 64) + 15;
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 464) = swift_task_alloc();
  v23 = sub_16C7BC();
  *(v1 + 472) = v23;
  sub_888C(v23);
  *(v1 + 480) = v24;
  v26 = *(v25 + 64);
  *(v1 + 488) = sub_8BC0();
  v27 = sub_17960();

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_84A34()
{
  sub_8A88();
  v1 = *(v0 + 328);
  v2 = *(v1 + 256);
  v3 = *(v1 + 208);
  *(v0 + 610) = v3;
  v4 = swift_task_alloc();
  *(v0 + 496) = v4;
  *v4 = v0;
  v4[1] = sub_84AD0;

  return sub_164024(v3);
}

uint64_t sub_84AD0()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 496);
  *v3 = *v1;
  *(v2 + 504) = v6;

  if (v0)
  {

    v7 = sub_85B64;
  }

  else
  {
    v7 = sub_84BE0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_84BE0()
{
  sub_76D68();
  v1 = *(v0 + 504);
  v2 = *(v0 + 488);
  v4 = *(v0 + 456);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v6 = *(v0 + 448);
  v7 = *(v0 + 328);
  sub_16C45C();
  v8 = sub_88158(v6);
  v9(v8);
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  v10 = [v1 catId];
  sub_16E1BC();

  sub_16C76C();
  v11 = v7[24];
  v12 = v7[25];
  sub_3820C(v7 + 21);
  v13 = sub_17970();
  v14(v13);
  v15 = *(v0 + 48);
  sub_2D20((v0 + 16), *(v0 + 40));
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64((v0 + 16));
LABEL_4:
    v22 = *(v0 + 328);
    v23 = v22[33];
    *(v0 + 512) = sub_9A820(0x616548206E65704FLL, 0xEB0000000068746CLL, 0x6C6165486E65706FLL, 0xED00007070416874);
    *(v0 + 520) = v24;
    v25 = *v22;
    hasTimeEdit(from:)();
    swift_task_alloc();
    sub_179E8();
    *(v0 + 528) = v26;
    *v26 = v27;
    v26[1] = sub_84FA8;
    v28 = *(v0 + 400);
LABEL_5:
    v29 = *(v0 + 328);
    v30 = *(v0 + 609);
    v31 = *(v0 + 608);
    sub_3E254();

    return sub_85C9C(v32, v33, v34, v35);
  }

  v16 = v7[24];
  v17 = v7[25];
  sub_3820C(v7 + 21);
  v18 = sub_17970();
  v19(v18);
  v20 = *(v0 + 88);
  sub_2D20((v0 + 56), *(v0 + 80));
  sub_17970();
  v21 = sub_16C3FC();
  sub_2D64((v0 + 56));
  sub_2D64((v0 + 16));
  if (v21)
  {
    goto LABEL_4;
  }

  if (*(v0 + 610) != 1)
  {
    v54 = *(v0 + 328);
    v55 = v54[33];
    *(v0 + 568) = sub_9A820(0xD000000000000010, 0x800000000017E960, 0xD000000000000012, 0x800000000017E980);
    *(v0 + 576) = v56;
    v57 = *v54;
    hasTimeEdit(from:)();
    swift_task_alloc();
    sub_179E8();
    *(v0 + 584) = v58;
    *v58 = v59;
    v58[1] = sub_85674;
    v60 = *(v0 + 384);
    goto LABEL_5;
  }

  v38 = *(v0 + 504);
  v39 = *(v0 + 328);
  v40 = v39[30];
  v41 = v39[31];
  sub_88058(v39 + 27);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v42 = swift_allocObject();
  *(v0 + 552) = v42;
  *(v42 + 16) = xmmword_170F70;
  *(v42 + 32) = v38;
  v43 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v44 = v38;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 560) = v45;
  *v45 = v46;
  v45[1] = sub_85494;
  v47 = *(v0 + 488);
  sub_3E254();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v48, v49, v50, v51, v52);
}

uint64_t sub_84FA8()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 528);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_8508C()
{
  sub_76D68();
  v3 = v0[50];
  v4 = v0[51];
  sub_87FE4();
  if (v5)
  {
    v6 = v0[49];
    sub_16BE8C();
    v7 = sub_87FE4();
    if (v5)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12);
    }

    v13 = v0[50];
    (*(v0[52] + 32))(v0[54], v0[49], v0[51]);
    sub_87FE4();
    if (!v5)
    {
      sub_8748(v0[50], &qword_1C57F8, &unk_172510);
    }
  }

  else
  {
    (*(v0[52] + 32))(v0[54], v3, v4);
  }

  v14 = v0[65];
  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[54];
  v18 = v0[51];
  v19 = sub_88110(v0[52]);
  v20(v19);
  *v1 = v15;
  v1[1] = v14;
  v21 = v2[30];
  v22 = v2[31];
  sub_88058(v2 + 27);
  v0[35] = type metadata accessor for WellnessSnippets();
  v0[36] = sub_17548();
  v23 = sub_9910(v0 + 32);
  sub_175A0(v1, v23);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v24 = swift_allocObject();
  v0[67] = v24;
  *(v24 + 16) = xmmword_170F70;
  *(v24 + 32) = v16;
  v25 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v26 = v16;
  swift_task_alloc();
  sub_179E8();
  v0[68] = v27;
  *v27 = v28;
  v27[1] = sub_85284;
  v29 = v0[61];
  sub_8816C();
  sub_3E254();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_85284()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *(v4 + 536);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  sub_2D64((v2 + 256));
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_85388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = *(v12 + 480);
  v13 = *(v12 + 488);
  v15 = *(v12 + 472);
  v16 = *(v12 + 432);
  v17 = *(v12 + 408);
  v18 = *(v12 + 416);
  v19 = *(v12 + 368);
  v20 = *(v12 + 320);

  sub_17604(v19);
  (*(v18 + 8))(v16, v17);
  v21 = *(v14 + 8);
  v22 = sub_C9C8();
  v23(v22);
  sub_17464((v12 + 216), v20);
  sub_88008();

  sub_C9BC();
  sub_8CC0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_85494()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 560);
  v3 = *(v1 + 552);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_85594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = *(v12 + 480);
  v13 = *(v12 + 488);
  v15 = *(v12 + 472);
  v16 = *(v12 + 320);

  v17 = *(v14 + 8);
  v18 = sub_C9C8();
  v19(v18);
  sub_17464((v12 + 176), v16);
  sub_88008();

  sub_C9BC();
  sub_8CC0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_85674()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 584);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_85758()
{
  sub_76D68();
  v3 = v0[51];
  v4 = v0[48];
  sub_87FE4();
  if (v5)
  {
    v6 = v0[47];
    sub_16BE8C();
    v7 = sub_87FE4();
    if (v5)
    {
      __break(1u);
      return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12);
    }

    v13 = v0[48];
    (*(v0[52] + 32))(v0[53], v0[47], v0[51]);
    sub_87FE4();
    if (!v5)
    {
      sub_8748(v0[48], &qword_1C57F8, &unk_172510);
    }
  }

  else
  {
    (*(v0[52] + 32))(v0[53], v4, v3);
  }

  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[63];
  v17 = v0[53];
  v18 = v0[51];
  v19 = sub_88110(v0[52]);
  v20(v19);
  *v1 = v15;
  v1[1] = v14;
  v21 = v2[30];
  v22 = v2[31];
  sub_88058(v2 + 27);
  v0[20] = type metadata accessor for WellnessSnippets();
  v0[21] = sub_17548();
  v23 = sub_9910(v0 + 17);
  sub_175A0(v1, v23);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v24 = swift_allocObject();
  v0[74] = v24;
  *(v24 + 16) = xmmword_170F70;
  *(v24 + 32) = v16;
  v25 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v26 = v16;
  swift_task_alloc();
  sub_179E8();
  v0[75] = v27;
  *v27 = v28;
  v27[1] = sub_85954;
  v29 = v0[61];
  sub_8816C();
  sub_3E254();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_85954()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_8A60();
  *v3 = v2;
  v5 = *(v4 + 600);
  v6 = *(v4 + 592);
  v7 = *v0;
  sub_C990();
  *v8 = v7;

  sub_2D64((v2 + 136));
  v9 = sub_17960();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_85A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = *(v12 + 480);
  v13 = *(v12 + 488);
  v15 = *(v12 + 472);
  v17 = *(v12 + 416);
  v16 = *(v12 + 424);
  v18 = *(v12 + 408);
  v19 = *(v12 + 368);
  v20 = *(v12 + 320);

  sub_17604(v19);
  (*(v17 + 8))(v16, v18);
  v21 = *(v14 + 8);
  v22 = sub_C9C8();
  v23(v22);
  sub_17464((v12 + 96), v20);
  sub_88008();

  sub_C9BC();
  sub_8CC0();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_85B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v14 = v12[43];
  v13 = v12[44];
  v15 = v12[42];
  sub_16DBBC();
  sub_8B48();
  v16 = sub_3BD68();
  v17(v16);
  v18 = sub_16DBDC();
  v19 = sub_16E36C();
  if (sub_1BA1C(v19))
  {
    v20 = sub_1BA38();
    sub_1BA50(v20);
    sub_1B9D0(&def_259DC, v21, v22, "Complex Medication Logging Request Error pattern failed, returning nil.");
    sub_1BA00();
  }

  v24 = v12[43];
  v23 = v12[44];
  v25 = v12[42];
  v26 = v12[40];

  v27 = *(v24 + 8);
  v28 = sub_C9F8();
  v29(v28);
  *(v26 + 32) = 0;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  sub_88008();

  sub_C9BC();
  sub_8CC0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_85C9C(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 602) = a4;
  *(v5 + 601) = a3;
  *(v5 + 600) = a2;
  *(v5 + 288) = a1;
  *(v5 + 296) = v4;
  v6 = sub_16BD9C();
  *(v5 + 304) = v6;
  v7 = *(v6 - 8);
  *(v5 + 312) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 320) = swift_task_alloc();
  v9 = sub_16C0BC();
  *(v5 + 328) = v9;
  v10 = *(v9 - 8);
  *(v5 + 336) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  v12 = *(*(sub_2440(&qword_1C57E0, &unk_171C60) - 8) + 64) + 15;
  *(v5 + 352) = swift_task_alloc();
  v13 = sub_16BF5C();
  *(v5 + 360) = v13;
  v14 = *(v13 - 8);
  *(v5 + 368) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 376) = swift_task_alloc();
  *(v5 + 384) = swift_task_alloc();
  v16 = *(*(sub_2440(&qword_1C8480, &unk_1742D0) - 8) + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  v17 = *(*(sub_2440(&qword_1C8488, &unk_173C60) - 8) + 64) + 15;
  *(v5 + 400) = swift_task_alloc();
  v18 = sub_16BE2C();
  *(v5 + 408) = v18;
  v19 = *(v18 - 8);
  *(v5 + 416) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 424) = swift_task_alloc();
  v21 = *(*(sub_2440(&qword_1C89E8, &unk_1742E0) - 8) + 64) + 15;
  *(v5 + 432) = swift_task_alloc();
  v22 = sub_2440(&qword_1C6990, &qword_1725A0);
  *(v5 + 440) = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  v24 = *(*(sub_2440(&qword_1C69C0, &unk_174290) - 8) + 64) + 15;
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  v25 = sub_16DBEC();
  *(v5 + 480) = v25;
  v26 = *(v25 - 8);
  *(v5 + 488) = v26;
  v27 = *(v26 + 64) + 15;
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_86068, 0, 0);
}

uint64_t sub_86068()
{
  if (*(v0 + 602) == 1)
  {
    v1 = *(v0 + 512);
    v2 = *(v0 + 480);
    v3 = *(v0 + 488);
    sub_16DBBC();
    sub_8B48();
    v4 = sub_3BD68();
    v5(v4);
    v6 = sub_16DBDC();
    v7 = sub_16E36C();
    if (sub_1BA1C(v7))
    {
      v8 = sub_1BA38();
      sub_1BA50(v8);
      sub_1B9D0(&def_259DC, v9, v10, "getPunchoutURL had isPrefilled=true, returning getPrefilledPunchoutURL");
      sub_1BA00();
    }

    v11 = *(v0 + 512);
    v12 = *(v0 + 480);
    v13 = *(v0 + 488);

    v14 = *(v13 + 8);
    v15 = sub_C9F8();
    v16(v15);
    swift_task_alloc();
    sub_179E8();
    *(v0 + 520) = v17;
    *v17 = v18;
    v17[1] = sub_8698C;
    v19 = *(v0 + 288);
    v20 = *(v0 + 296);
    sub_38AD0();

    return sub_872DC(v21);
  }

  if (*(v0 + 600) == 1)
  {
    v24 = *(v0 + 296);
    v25 = v24[24];
    v26 = v24[25];
    sub_3820C(v24 + 21);
    v27 = sub_17970();
    v28(v27);
    v29 = *(v0 + 168);
    sub_2D20((v0 + 136), *(v0 + 160));
    sub_17970();
    if (sub_16C40C())
    {
      v30 = 1;
    }

    else
    {
      v49 = v24[24];
      v50 = v24[25];
      sub_3820C(v24 + 21);
      v51 = sub_17970();
      v52(v51);
      v53 = *(v0 + 208);
      sub_2D20((v0 + 176), *(v0 + 200));
      sub_17970();
      v30 = sub_16C3FC();
      sub_2D64((v0 + 176));
    }

    *(v0 + 603) = v30 & 1;
    v54 = *(v0 + 296);
    sub_2D64((v0 + 136));
    v55 = *v54;
    v56 = getUSOMedNames(from:)();
    if (v56)
    {
      if (v56[2])
      {
        v57 = *(v0 + 296);
        v58 = v56[4];
        *(v0 + 528) = v56[5];

        sub_8818C();
        v148 = v59 + *v59;
        v60 = v59[1];
        v61 = swift_task_alloc();
        *(v0 + 536) = v61;
        *v61 = v0;
        sub_880B8(v61);
        sub_38AD0();

        __asm { BRAA            X4, X16 }
      }
    }

    v105 = *(v0 + 288);
    sub_16BE8C();
LABEL_30:
    sub_88038();
    v146 = *(v0 + 352);
    v147 = *(v0 + 344);
    v149 = *(v0 + 320);

    sub_C9BC();
    sub_38AD0();

    __asm { BRAA            X1, X16 }
  }

  if (*(v0 + 601) != 1)
  {
    v65 = *(v0 + 488);
    v64 = *(v0 + 496);
    v66 = *(v0 + 480);
    sub_16DBBC();
    sub_8B48();
    v67 = sub_3BD68();
    v68(v67);
    v69 = sub_16DBDC();
    v70 = sub_16E36C();
    if (sub_1BA1C(v70))
    {
      v71 = sub_1BA38();
      sub_1BA50(v71);
      sub_1B9D0(&def_259DC, v72, v73, "ComplexMedLoggingErrorFlow: both isLogByName and isLogBySchedule were false, but at least one needs to be true, so returning nil, and this will generally punchout to Meds Room.");
      sub_1BA00();
    }

    v75 = *(v0 + 488);
    v74 = *(v0 + 496);
    v76 = *(v0 + 480);
    v77 = *(v0 + 288);

    v78 = *(v75 + 8);
    v79 = sub_C9F8();
    v80(v79);
    sub_16BE9C();
    goto LABEL_27;
  }

  v32 = *(v0 + 464);
  v31 = *(v0 + 472);
  v33 = *(v0 + 296);
  v34 = *v33;
  sub_880D8(v33);
  v35 = sub_88100();
  v36(v35);
  getMedScheduleWithDefinedValues(from:deviceState:)();
  sub_2D64((v0 + 16));
  v37 = sub_C9F8();
  sub_4B010(v37, v38, v39, v40);
  v41 = sub_2440(&qword_1C6988, &unk_176730);
  v42 = sub_369C(v32, 1, v41);
  v43 = *(v0 + 464);
  v44 = *(v0 + 432);
  v45 = *(v0 + 440);
  if (v42 == 1)
  {
    sub_8748(*(v0 + 464), &qword_1C69C0, &unk_174290);
    sub_8AB4();
    sub_214C(v46, v47, v48, v45);
LABEL_24:
    v83 = *(v0 + 504);
    v84 = *(v0 + 480);
    v85 = *(v0 + 488);
    sub_8748(*(v0 + 432), &qword_1C89E8, &unk_1742E0);
    sub_16DBBC();
    sub_8B48();
    v86 = sub_3BD68();
    v87(v86);
    v88 = sub_16DBDC();
    v89 = sub_16E36C();
    if (sub_1BA1C(v89))
    {
      v90 = sub_1BA38();
      sub_1BA50(v90);
      sub_1B9D0(&def_259DC, v91, v92, "ComplexMedLoggingErrorFlow: isLogBySchedule is true, but schedule?.dateInterval is nil. Returning nil");
      sub_1BA00();
    }

    v93 = *(v0 + 504);
    v94 = *(v0 + 480);
    v95 = *(v0 + 488);
    v96 = *(v0 + 472);
    v97 = *(v0 + 288);

    v98 = *(v95 + 8);
    v99 = sub_C9F8();
    v100(v99);
    sub_8748(v96, &qword_1C69C0, &unk_174290);
    sub_16BE9C();
LABEL_27:
    sub_8AB4();
    sub_214C(v101, v102, v103, v104);
    goto LABEL_30;
  }

  v81 = *(v43 + *(v41 + 48) + 8);

  sub_87F40(v43, v44, &qword_1C89E8, &unk_1742E0);
  sub_87FE4();
  if (v82)
  {
    goto LABEL_24;
  }

  v108 = *(v0 + 424);
  v110 = *(v0 + 392);
  v109 = *(v0 + 400);
  v111 = *(v0 + 352);
  v150 = *(v0 + 360);
  v113 = *(v0 + 336);
  v112 = *(v0 + 344);
  v114 = *(v0 + 328);
  sub_87F40(*(v0 + 432), *(v0 + 456), &qword_1C6990, &qword_1725A0);
  sub_8AB4();
  sub_214C(v115, v116, v117, v114);
  sub_16C0EC();
  sub_8AB4();
  sub_214C(v118, v119, v120, v121);
  sub_16BE1C();
  sub_16BE0C();
  sub_16C08C();
  sub_16C05C();
  (*(v113 + 8))(v112, v114);
  result = sub_369C(v111, 1, v150);
  if (result != 1)
  {
    v122 = *(v0 + 448);
    v123 = *(v0 + 456);
    v124 = *(v0 + 440);
    v125 = *(v0 + 376);
    v126 = *(v0 + 360);
    v127 = *(v0 + 368);
    v128 = *(v0 + 320);
    v129 = *(v0 + 296);
    (*(v127 + 32))(*(v0 + 384), *(v0 + 352), v126);
    v130 = sub_88158(v127);
    v131(v130);
    v132 = sub_C9C8();
    sub_4B010(v132, v133, v134, v135);
    v136 = v122 + *(v124 + 48);
    sub_16BD5C();
    v137 = *(v127 + 8);
    *(v0 + 560) = v137;
    *(v0 + 568) = (v127 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v137(v122, v126);
    v138 = v129[37];
    v139 = v129[38];
    sub_88058(v129 + 34);
    v140 = *(v139 + 16);
    v151 = v140 + *v140;
    v141 = v140[1];
    v142 = swift_task_alloc();
    *(v0 + 576) = v142;
    *v142 = v0;
    v142[1] = sub_86EF4;
    v143 = *(v0 + 320);
    sub_38AD0();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_8698C()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  sub_38A38();
  v6 = *(v5 + 512);
  v7 = v1[63];
  v8 = v1[62];
  v9 = v1[59];
  v10 = v1[58];
  v11 = v1[57];
  v12 = v1[56];
  v13 = v1[54];
  v24 = v1[53];
  sub_38A38();
  v25 = *(v14 + 400);
  sub_38A38();
  v26 = *(v15 + 392);
  sub_38A38();
  v27 = *(v16 + 384);
  sub_38A38();
  v28 = *(v17 + 376);
  sub_38A38();
  v29 = *(v18 + 352);
  sub_38A38();
  v30 = *(v19 + 344);
  sub_38A38();
  v21 = *(v20 + 320);

  v22 = *(v3 + 8);

  return v22();
}

uint64_t sub_86C54()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 536);
  v5 = *(v3 + 528);
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  *(v9 + 544) = v8;
  *(v9 + 552) = v10;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_86D5C()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 288);
  if (*(v0 + 603) == 1)
  {
    sub_880A8();
    sub_16E47C(105);
    sub_8814C();
    sub_88180();
  }

  else
  {
    sub_880A8();
    sub_16E47C(63);
    sub_8814C();
    sub_88180();
    v4._countAndFlagsBits = 0xD00000000000003DLL;
  }

  sub_16E26C(v4);
  v8._countAndFlagsBits = v2;
  v8._object = v1;
  sub_16E26C(v8);
  sub_16BE8C();

  sub_88038();
  sub_88128();

  sub_C9BC();

  return v5();
}

uint64_t sub_86EF4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 576);
  *v2 = *v0;
  *(v1 + 584) = v5;
  *(v1 + 592) = v6;

  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_86FE4()
{
  v3 = v0[37];
  v4 = v3[24];
  v5 = v3[25];
  sub_3820C(v3 + 21);
  v6 = sub_17970();
  v7(v6);
  v8 = v0[11];
  sub_2D20(v0 + 7, v0[10]);
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64(v0 + 7);
LABEL_4:
    v16 = v0[74];
    v17 = v0[73];
    sub_88074();
    v19 = v0[39];
    v18 = v0[40];
    v20 = v0[38];
    v21 = v0[36];
    sub_880A8();
    sub_16E47C(113);
    sub_8814C();
    sub_88180();
    sub_16E26C(v35);
    v36._countAndFlagsBits = v17;
    v36._object = v16;
    sub_16E26C(v36);
    sub_16BE8C();

    (*(v19 + 8))(v18, v20);
    goto LABEL_6;
  }

  v9 = v0[37];
  v10 = v9[24];
  v11 = v9[25];
  sub_3820C(v9 + 21);
  v12 = sub_17970();
  v13(v12);
  v14 = v0[16];
  sub_2D20(v0 + 12, v0[15]);
  sub_17970();
  v15 = sub_16C3FC();
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 7);
  if (v15)
  {
    goto LABEL_4;
  }

  v22 = v0[74];
  v23 = v0[73];
  sub_88074();
  v24 = v0[39];
  v25 = v0[40];
  v26 = v0[38];
  v27 = v0[36];
  sub_880A8();
  sub_16E47C(71);
  sub_8814C();
  sub_88180();
  v37._countAndFlagsBits = 0xD000000000000045;
  sub_16E26C(v37);
  v38._countAndFlagsBits = v23;
  v38._object = v22;
  sub_16E26C(v38);
  sub_16BE8C();

  (*(v24 + 8))(v25, v26);
LABEL_6:
  v31(v30, v2);
  (*(v1 + 8))();
  sub_8748(v32, &qword_1C6990, &qword_1725A0);
  sub_8748(v33, &qword_1C69C0, &unk_174290);
  sub_88038();
  sub_88128();

  sub_C9BC();

  return v28();
}

uint64_t sub_872DC(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_16DBEC();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = *(*(sub_2440(&qword_1C57E0, &unk_171C60) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v7 = sub_16BF5C();
  v2[29] = v7;
  v8 = *(v7 - 8);
  v2[30] = v8;
  v9 = *(v8 + 64) + 15;
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_87430, 0, 0);
}

uint64_t sub_87430()
{
  sub_76D68();
  v1 = v0[24];
  v2 = v1[24];
  v3 = v1[25];
  sub_3820C(v1 + 21);
  v4 = sub_17970();
  v5(v4);
  v6 = v0[6];
  sub_2D20(v0 + 2, v0[5]);
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64(v0 + 2);
    v7 = "s.app/logDose?medicationName=";
    v8 = 0xD000000000000067;
  }

  else
  {
    v9 = v1[24];
    v10 = v1[25];
    sub_3820C(v1 + 21);
    v11 = sub_17970();
    v12(v11);
    v13 = v0[11];
    sub_2D20(v0 + 7, v0[10]);
    sub_17970();
    v14 = sub_16C3FC();
    sub_2D64(v0 + 7);
    sub_2D64(v0 + 2);
    v8 = 0xD000000000000044;
    v7 = "s.app/logDose?medicationName=";
    if (v14)
    {
      v8 = 0xD000000000000067;
    }

    else
    {
      v7 = "ation=1&medicationName=";
    }
  }

  v15 = v0[24];
  v0[20] = v8;
  v0[21] = v7 | 0x8000000000000000;
  v0[32] = *v15;
  v16 = getUSOMedNames(from:)();
  if (v16)
  {
    if (v16[2])
    {
      v17 = v0[24];
      v18 = v16[4];
      v0[33] = v16[5];

      sub_8818C();
      v29 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      v0[34] = v21;
      *v21 = v0;
      v22 = sub_880B8(v21);

      return v29(v22);
    }
  }

  v24 = v0[23];

  sub_16BE8C();
  v25 = v0[31];
  v26 = v0[27];
  v27 = v0[28];

  sub_C9BC();

  return v28();
}

uint64_t sub_876D4()
{
  sub_8A88();
  sub_C9D4();
  sub_8A60();
  *v2 = v1;
  v4 = *(v3 + 272);
  v5 = *(v3 + 264);
  v6 = *v0;
  sub_C990();
  *v7 = v6;
  *(v10 + 280) = v8;
  *(v10 + 288) = v9;

  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_877D8()
{
  v42 = v0;
  v1 = *(v0 + 256);
  sub_16E26C(*(v0 + 280));

  *&result = COERCE_DOUBLE(getMedDosageValue(from:)());
  if ((v3 & 1) == 0)
  {
    if ((~result & 0x7FF0000000000000) != 0)
    {
      if (*&result > -9.22337204e18)
      {
        if (*&result < 9.22337204e18)
        {
          v4 = *&result;
          sub_16E47C(17);

          v41._countAndFlagsBits = 0x6C6C696665727026;
          v41._object = 0xEF3D656761736F44;
          *(v0 + 176) = v4;
          v44._countAndFlagsBits = sub_16E68C();
          sub_16E26C(v44);

          sub_16E26C(v41);

          goto LABEL_6;
        }

LABEL_17:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  v5 = *(v0 + 256);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  sub_880D8(*(v0 + 192));
  v8 = sub_88100();
  v9(v8);
  getMedEventDate(from:deviceState:)();
  sub_2D64((v0 + 96));
  if (sub_369C(v7, 1, v6) == 1)
  {
    sub_8748(*(v0 + 224), &qword_1C57E0, &unk_171C60);
  }

  else
  {
    v10 = *(v0 + 240);
    (*(v10 + 32))(*(v0 + 248), *(v0 + 224), *(v0 + 232));
    v11 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    isa = sub_16BEEC().super.isa;
    v13 = [v11 stringFromDate:isa];

    v14 = sub_16E1BC();
    v16 = v15;

    strcpy(&v41, "&prefillDate=");
    HIWORD(v41._object) = -4864;
    v45._countAndFlagsBits = v14;
    v45._object = v16;
    sub_16E26C(v45);

    sub_16E26C(v41);

    v17 = *(v10 + 8);
    v18 = sub_C9F8();
    v19(v18);
  }

  v21 = *(v0 + 208);
  v20 = *(v0 + 216);
  v22 = *(v0 + 200);
  sub_16DBBC();
  sub_8B48();
  v23 = sub_3BD68();
  v24(v23);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);

  v27 = sub_16DBDC();
  v28 = sub_16E36C();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 208);
  v31 = *(v0 + 216);
  v32 = *(v0 + 200);
  if (v29)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41._countAndFlagsBits = v34;
    *v33 = 136315138;

    v35 = sub_3AB7C(v26, v25, &v41._countAndFlagsBits);

    *(v33 + 4) = v35;
    _os_log_impl(&def_259DC, v27, v28, "Got prefilled url that looks like %s", v33, 0xCu);
    sub_2D64(v34);
  }

  else
  {
  }

  (*(v30 + 8))(v31, v32);
  v36 = *(v0 + 184);
  sub_16BE8C();

  v37 = *(v0 + 248);
  v38 = *(v0 + 216);
  v39 = *(v0 + 224);

  sub_C9BC();

  *&result = COERCE_DOUBLE(v40());
  return result;
}

uint64_t sub_87C58(void (*a1)(void), uint64_t (*a2)(char *, void))
{
  v4 = sub_16D63C();
  v5 = sub_4348(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0);
  sub_16D62C();
  return a2(v9, 0);
}

uint64_t sub_87CF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_87D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_87DDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_843DC();
}

uint64_t sub_87E74()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_87EAC()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

uint64_t sub_87F40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_43AC(a1, a2, a3, a4);
  sub_8B38(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

unint64_t sub_87F90()
{
  result = qword_1C89F0;
  if (!qword_1C89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89F0);
  }

  return result;
}

uint64_t sub_88008()
{
  v2 = v0[61];
  v3 = v0[57];
  v4 = v0[58];
  v6 = v0[53];
  v5 = v0[54];
  v8 = v0[49];
  v7 = v0[50];
  v10 = v0[47];
  v9 = v0[48];
  v11 = v0[46];
  v13 = v0[44];
}

uint64_t sub_88038()
{
  v2 = v0[63];
  result = v0[64];
  v3 = v0[62];
  v5 = v0[58];
  v4 = v0[59];
  v7 = v0[56];
  v6 = v0[57];
  v8 = v0[53];
  v9 = v0[54];
  v10 = v0[49];
  v11 = v0[50];
  v13 = v0[47];
  v12 = v0[48];
  return result;
}

void sub_88074()
{
  v6 = v0[70];
  v7 = v0[71];
  v8 = v0[57];
  v9 = v0[59];
  v1 = v0[52];
  v4 = v0[51];
  v5 = v0[53];
  v3 = v0[48];
  v2 = v0[45];
}

void *sub_880D8@<X0>(void *a1@<X8>)
{
  v1 = a1[25];
  result = sub_2D20(a1 + 21, a1[24]);
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_88110@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[41];
  v3 = *(a1 + 16);
  return v1[46] + *(v1[45] + 20);
}

uint64_t sub_88128()
{
  v3 = v0[44];
  v4 = v0[43];
  v5 = v0[40];
}

uint64_t sub_8818C()
{
  v1 = v0[38];
  sub_2D20(v0 + 34, v0[37]);
  result = v1 + 8;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_881C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_88200(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_88268()
{
  sub_89600();

  return sub_16C33C();
}

uint64_t sub_882BC()
{
  sub_8A88();
  v1[28] = v2;
  v1[29] = v0;
  v3 = type metadata accessor for GenericButtonModel();
  v1[30] = v3;
  v4 = *(*(v3 - 8) + 64);
  v1[31] = sub_8BC0();
  v5 = *(*(sub_2440(&qword_1C57F8, &unk_172510) - 8) + 64);
  v1[32] = sub_8BC0();
  v6 = sub_16BE9C();
  v1[33] = v6;
  sub_888C(v6);
  v1[34] = v7;
  v9 = *(v8 + 64);
  v1[35] = sub_8BC0();
  v10 = sub_16C46C();
  v1[36] = v10;
  sub_888C(v10);
  v1[37] = v11;
  v13 = *(v12 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v14 = sub_16C7BC();
  v1[40] = v14;
  sub_888C(v14);
  v1[41] = v15;
  v17 = *(v16 + 64);
  v1[42] = sub_8BC0();
  v18 = sub_17960();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_88464()
{
  sub_8A88();
  v1 = *(*(v0 + 232) + 80);
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_884F4;

  return sub_3E7D8();
}

uint64_t sub_884F4(uint64_t a1)
{
  sub_C9D4();
  v5 = v4;
  v6 = *(v4 + 344);
  v7 = *v2;
  sub_C990();
  *v8 = v7;

  if (v1)
  {

    v9 = sub_88EBC;
  }

  else
  {
    *(v5 + 352) = a1;
    v9 = sub_88614;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_88614()
{
  v1 = v0[44];
  v0[45] = v1;
  v2 = v0[42];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_C9A0();
  sub_16C75C();
  (*(v6 + 8))(v3, v5);
  sub_16C7AC();
  if (v1)
  {
    v7 = [v1 catId];
    sub_16E1BC();
  }

  v8 = v0[42];
  v9 = v0[29];
  sub_16C76C();
  v10 = v9[3];
  v11 = v9[4];
  sub_2D20(v9, v10);
  (*(v11 + 8))(v10, v11);
  v12 = v0[6];
  sub_2D20(v0 + 2, v0[5]);
  if (sub_16C40C())
  {
    sub_2D64(v0 + 2);
LABEL_6:
    v18 = v0[32];
    v17 = v0[33];
    sub_16E47C(33);

    v0[27] = 1242545199;
    v54._countAndFlagsBits = sub_16E68C();
    sub_16E26C(v54);

    sub_16BE8C();

    v19 = sub_369C(v18, 1, v17);
    if (v19 == 1)
    {
      __break(1u);
    }

    else
    {
      v26 = v0[34];
      v25 = v0[35];
      v27 = v0[33];
      v29 = v0[30];
      v28 = v0[31];
      v30 = v0[29];
      (*(v26 + 32))(v25, v0[32], v27);
      v31 = *(v30 + 88);
      v32 = sub_89654();
      v34 = v33;
      (*(v26 + 16))(v28 + *(v29 + 20), v25, v27);
      *v28 = v32;
      v28[1] = v34;
      sub_8388(v30 + 40, (v0 + 17));
      v35 = v0[20];
      v36 = v0[21];
      sub_2D20(v0 + 17, v35);
      v0[25] = type metadata accessor for WellnessSnippets();
      v0[26] = sub_17548();
      v37 = sub_9910(v0 + 22);
      sub_175A0(v28, v37);
      swift_storeEnumTagMultiPayload();
      sub_2440(&qword_1C5ED8, &unk_173090);
      v19 = sub_38DA0();
      v0[46] = v19;
      *(v19 + 16) = xmmword_170F70;
      if (v1)
      {
        v38 = v19;
        *(v19 + 32) = v1;
        v39 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
        v40 = v1;
        swift_task_alloc();
        sub_179E8();
        v0[47] = v41;
        *v41 = v42;
        v41[1] = sub_88B00;
        v22 = v0[42];
        v19 = v0[28];
        v20 = v0 + 22;
        v21 = v38;
        v23 = v35;
        v24 = v36;

        return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v19, v20, v21, v22, v23, v24);
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v19, v20, v21, v22, v23, v24);
  }

  v14 = v9[3];
  v13 = v9[4];
  sub_2D20(v0[29], v14);
  (*(v13 + 8))(v14, v13);
  v15 = v0[11];
  sub_2D20(v0 + 7, v0[10]);
  v16 = sub_16C3FC();
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 2);
  if (v16)
  {
    goto LABEL_6;
  }

  sub_8388(v0[29] + 40, (v0 + 12));
  v43 = v0[15];
  v44 = v0[16];
  sub_2D20(v0 + 12, v43);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v19 = sub_38DA0();
  v0[48] = v19;
  *(v19 + 16) = xmmword_170F70;
  if (!v1)
  {
    goto LABEL_17;
  }

  v45 = v19;
  *(v19 + 32) = v1;
  v46 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v47 = v1;
  swift_task_alloc();
  sub_179E8();
  v0[49] = v48;
  *v48 = v49;
  v48[1] = sub_88CFC;
  v50 = v0[42];
  v51 = v0[28];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v51, v45, v50, v43, v44);
}

uint64_t sub_88B00()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  v5 = *v0;
  sub_C990();
  *v6 = v5;

  sub_2D64((v2 + 176));
  v7 = sub_17960();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_88C08()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 264);
  v7 = *(v0 + 248);

  sub_17604(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 136));
  sub_896A0();

  sub_C9BC();

  return v8();
}

uint64_t sub_88CFC()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 392);
  v3 = *(v1 + 384);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_88DFC()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 96));
  sub_896A0();

  sub_C9BC();

  return v4();
}

double sub_88EBC()
{
  v0[45] = 0;
  v1 = v0[42];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v5 = v0[37];
  sub_16C45C();
  (*(v5 + 16))(v3, v2, v4);
  sub_C9A0();
  sub_16C75C();
  (*(v5 + 8))(v2, v4);
  sub_16C7AC();
  v6 = v0[42];
  v7 = v0[29];
  sub_16C76C();
  v8 = v7[3];
  v9 = v7[4];
  sub_2D20(v7, v8);
  (*(v9 + 8))(v8, v9);
  v10 = v0[6];
  sub_2D20(v0 + 2, v0[5]);
  if (sub_16C40C())
  {
    sub_2D64(v0 + 2);
  }

  else
  {
    v12 = v7[3];
    v11 = v7[4];
    sub_2D20(v0[29], v12);
    (*(v11 + 8))(v12, v11);
    v13 = v0[11];
    sub_2D20(v0 + 7, v0[10]);
    v14 = sub_16C3FC();
    sub_2D64(v0 + 7);
    sub_2D64(v0 + 2);
    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v16 = v0[32];
  v15 = v0[33];
  sub_16E47C(33);

  v0[27] = 1242545199;
  v31._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v31);

  sub_16BE8C();

  if (sub_369C(v16, 1, v15) == 1)
  {
    __break(1u);
  }

  v18 = v0[34];
  v17 = v0[35];
  v19 = v0[33];
  v21 = v0[30];
  v20 = v0[31];
  v22 = v0[29];
  (*(v18 + 32))(v17, v0[32], v19);
  v23 = *(v22 + 88);
  v24 = sub_89654();
  v26 = v25;
  (*(v18 + 16))(v20 + *(v21 + 20), v17, v19);
  *v20 = v24;
  v20[1] = v26;
  sub_8388(v22 + 40, (v0 + 17));
  sub_2D20(v0 + 17, v0[20]);
  v0[25] = type metadata accessor for WellnessSnippets();
  v0[26] = sub_17548();
  v27 = sub_9910(v0 + 22);
  sub_175A0(v20, v27);
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v28 = sub_38DA0();
  v0[46] = v28;
  *(v28 + 16) = xmmword_170F70;
  __break(1u);
LABEL_7:
  sub_8388(v0[29] + 40, (v0 + 12));
  sub_2D20(v0 + 12, v0[15]);
  sub_2440(&qword_1C5ED8, &unk_173090);
  v29 = sub_38DA0();
  v0[48] = v29;
  *&result = 1;
  *(v29 + 16) = xmmword_170F70;
  __break(1u);
  return result;
}

uint64_t sub_8921C()
{
  sub_8A88();
  *(v0 + 104) = v1;
  swift_task_alloc();
  sub_179E8();
  *(v0 + 112) = v2;
  *v2 = v3;
  v2[1] = sub_892AC;

  return sub_882BC();
}

uint64_t sub_892AC()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 112);
  v3 = *v0;
  sub_C990();
  *v4 = v3;

  v5 = sub_17960();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_89390()
{
  v1 = *(v0 + 104);
  sub_8388(v0 + 16, v0 + 56);
  v2 = swift_allocObject();
  sub_17464((v0 + 56), v2 + 16);
  sub_16C73C();
  v3 = sub_16C1DC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 96) = sub_16C1CC();
  sub_16C4EC();
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v6();
}

uint64_t sub_8949C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_8921C();
}

uint64_t sub_89534()
{
  sub_2D64((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_8956C()
{
  sub_8A88();
  v3 = v2;
  swift_task_alloc();
  sub_179E8();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_C6F0;

  return sub_16AC0(v3, v0 + 16);
}

unint64_t sub_89600()
{
  result = qword_1C89F8;
  if (!qword_1C89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C89F8);
  }

  return result;
}

uint64_t sub_89654()
{

  return sub_9A820(0x707041206E65704FLL, 0xEE0065726F745320, 0x537070416E65706FLL, 0xEC00000065726F74);
}

uint64_t sub_896A0()
{
  v2 = v0[42];
  v3 = v0[38];
  v4 = v0[39];
  v5 = v0[35];
  v7 = v0[31];
  v6 = v0[32];
}

uint64_t sub_896C0()
{
  v0 = sub_16C8FC();
  v1 = sub_42F0(v0);
  v38[4] = v2;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v1);
  v38[3] = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = sub_16DBEC();
  v8 = sub_42F0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v8);
  v14 = __chkstk_darwin(v13);
  v16 = v38 - v15;
  __chkstk_darwin(v14);
  v18 = v38 - v17;
  v19 = sub_16C97C();
  if (sub_3B35C(v19))
  {
    sub_3B360(0, (v19 & 0xC000000000000001) == 0, v19);
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = sub_16E48C();
    }

    else
    {
      v20 = *(v19 + 32);
    }

    v21 = sub_16DBBC();
    sub_89C68();
    v22 = v18;
    (*(v10 + 16))(v18, v21, v7);

    v23 = sub_16DBDC();
    v24 = v7;
    v25 = sub_16E36C();

    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136315394;
      v27 = sub_16CF6C();
      v29 = sub_3AB7C(v27, v28, v39);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      v30 = sub_16CF4C();
      v32 = sub_3AB7C(v30, v31, v39);

      *(v26 + 14) = v32;
      _os_log_impl(&def_259DC, v23, v25, "NLv4 Wellness Parse: Input is entity=%s verb=%s", v26, 0x16u);
      swift_arrayDestroy();
      sub_8A2C();
      sub_8A2C();
    }

    (*(v10 + 8))(v22, v24);
  }

  else
  {

    v33 = sub_16DBBC();
    sub_89C68();
    (*(v10 + 16))(v16, v33, v7);
    v34 = sub_16DBDC();
    v35 = sub_16E37C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&def_259DC, v34, v35, "NLv4 Wellness Parse: No tasks in input", v36, 2u);
      sub_8A2C();
    }

    (*(v10 + 8))(v16, v7);
    return 0;
  }

  return v20;
}

uint64_t sub_89C68()
{

  return swift_beginAccess();
}

uint64_t sub_89C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2440(&qword_1C8AB0, &qword_174488);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_74678(a3, v26 - v11, &qword_1C8AB0, &qword_174488);
  v13 = sub_16E33C();
  v14 = sub_369C(v12, 1, v13);

  if (v14 == 1)
  {
    sub_8748(v12, &qword_1C8AB0, &qword_174488);
  }

  else
  {
    sub_16E32C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_16E31C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_16E22C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_8748(a3, &qword_1C8AB0, &qword_174488);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8748(a3, &qword_1C8AB0, &qword_174488);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_89F68()
{
  type metadata accessor for MainFlow();
  sub_92CD0(&qword_1C8B50, type metadata accessor for MainFlow);

  return sub_16C33C();
}

uint64_t sub_89FF4()
{
  sub_8A88();
  v1[92] = v0;
  v1[91] = v2;
  v3 = sub_2440(&qword_1C8AA8, &qword_174480);
  sub_4348(v3);
  v5 = *(v4 + 64);
  v1[93] = sub_8BC0();
  v6 = sub_16BFFC();
  v1[94] = v6;
  sub_888C(v6);
  v1[95] = v7;
  v9 = *(v8 + 64);
  v1[96] = sub_8BC0();
  v10 = sub_16C89C();
  v1[97] = v10;
  sub_888C(v10);
  v1[98] = v11;
  v13 = *(v12 + 64);
  v1[99] = sub_8BC0();
  v14 = sub_16C80C();
  v1[100] = v14;
  sub_888C(v14);
  v1[101] = v15;
  v17 = *(v16 + 64) + 15;
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v18 = sub_16C83C();
  v1[104] = v18;
  sub_888C(v18);
  v1[105] = v19;
  v21 = *(v20 + 64);
  v1[106] = sub_8BC0();
  v22 = sub_16D26C();
  v1[107] = v22;
  sub_888C(v22);
  v1[108] = v23;
  v25 = *(v24 + 64) + 15;
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  v26 = sub_2440(&qword_1C8AB0, &qword_174488);
  sub_4348(v26);
  v28 = *(v27 + 64);
  v1[114] = sub_8BC0();
  v29 = sub_16DBEC();
  v1[115] = v29;
  sub_888C(v29);
  v1[116] = v30;
  v32 = *(v31 + 64) + 15;
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();

  return _swift_task_switch(sub_8A308, 0, 0);
}

uint64_t sub_8A308()
{
  v184 = v0;
  v1 = *(v0 + 976);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = sub_16DBBC();
  sub_8B48();
  v5 = *(v2 + 16);
  v6 = sub_93094();
  v5(v6);
  v7 = sub_16DBDC();
  v8 = sub_16E36C();
  if (sub_38670(v8))
  {
    *sub_1BA38() = 0;
    sub_4B3D0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_8A2C();
  }

  v14 = *(v0 + 976);
  v15 = *(v0 + 968);
  v16 = *(v0 + 928);
  v17 = *(v0 + 920);

  v18 = *(v16 + 8);
  v18(v14, v17);
  sub_92FF4();
  (v5)(v15, v4, v17);
  v19 = sub_16DBDC();
  v20 = sub_16E36C();
  v21 = sub_4B3A8(v20);
  v22 = *(v0 + 968);
  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v178 = v18;
  v180 = v4;
  if (v21)
  {
    v25 = sub_8BD8();
    v26 = v5;
    v27 = sub_CA30();
    v183[0] = v27;
    *v25 = 136315138;
    *(v25 + 4) = sub_3AB7C(0x776F6C466E69614DLL, 0xE800000000000000, v183);
    _os_log_impl(&def_259DC, v19, v20, "🏳️‍🌈=====Executing %s from WellnessFlowPlugin=====🏳️‍🌈", v25, 0xCu);
    sub_2D64(v27);
    v5 = v26;
    v18 = v178;
    sub_8A2C();
    v4 = v180;
    sub_8A2C();
  }

  v28 = sub_C9E0();
  (v18)(v28);
  v29 = *(v0 + 960);
  v30 = *(v0 + 920);
  sub_92FF4();
  v31 = sub_93094();
  v5(v31);
  v32 = sub_16DBDC();
  v33 = sub_16E36C();
  if (sub_38670(v33))
  {
    *sub_1BA38() = 0;
    sub_4B3D0();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    sub_8A2C();
  }

  v39 = *(v0 + 960);
  v40 = *(v0 + 928);
  v41 = *(v0 + 920);
  v42 = *(v0 + 912);

  v43 = sub_C9E0();
  (v18)(v43);
  v44 = mach_absolute_time();
  v45 = sub_16E33C();
  sub_214C(v42, 1, 1, v45);
  v46 = swift_allocObject();
  v46[2] = 0;
  v46[3] = 0;
  v46[4] = v44;
  sub_89C84(0, 0, v42, &unk_174498, v46);

  sub_16D21C();
  v47 = sub_16D20C();
  v48 = *(v0 + 920);
  if (v47)
  {
    v49 = *(v0 + 904);
    v50 = *(v0 + 896);
    v162 = *(v0 + 952);
    v165 = *(v0 + 888);
    v168 = *(v0 + 880);
    v175 = *(v0 + 920);
    v51 = *(v0 + 864);
    v52 = *(v0 + 856);
    *(v0 + 984) = sub_16D1FC();

    sub_ACC0C();
    sub_2440(&qword_1C8AB8, &qword_1744A0);
    v53 = *(v51 + 72);
    v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v55 = swift_allocObject();
    *(v0 + 992) = v55;
    *(v55 + 16) = xmmword_1712E0;
    sub_16D24C();
    sub_16D23C();
    sub_16D82C();
    sub_16D81C();
    sub_92FF4();
    v172 = v5;
    (v5)(v162, v180, v175);
    v56 = *(v51 + 16);
    v56(v165, v49, v52);
    v56(v168, v50, v52);
    v57 = sub_16DBDC();
    v58 = sub_16E36C();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 952);
    v61 = *(v0 + 928);
    v62 = *(v0 + 920);
    v63 = *(v0 + 888);
    v169 = *(v0 + 880);
    v64 = *(v0 + 864);
    v65 = *(v0 + 856);
    if (v59)
    {
      v66 = swift_slowAlloc();
      v183[0] = swift_slowAlloc();
      *v66 = 136315394;
      sub_92CD0(&qword_1C8AC0, &type metadata accessor for ExecutionLocation);
      v163 = v62;
      log = v57;
      v160 = v60;
      v67 = sub_16E68C();
      v69 = v68;
      v70 = *(v64 + 8);
      v158 = v58;
      v71 = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v70(v63, v65);
      v72 = sub_3AB7C(v67, v69, v183);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2080;
      v73 = sub_16E68C();
      v75 = v74;
      v70(v169, v65);
      v76 = sub_3AB7C(v73, v75, v183);

      *(v66 + 14) = v76;
      _os_log_impl(&def_259DC, log, v158, "ASR Location: %s, NL Location: %s", v66, 0x16u);
      swift_arrayDestroy();
      sub_8A2C();
      sub_8A2C();

      v77 = v163;
      v78 = v160;
    }

    else
    {

      v70 = *(v64 + 8);
      v71 = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v70(v169, v65);
      v70(v63, v65);
      v78 = sub_C9E0();
    }

    v178(v78, v77);
    *(v0 + 1000) = v70;
    v94 = *(v0 + 904);
    v95 = *(v0 + 872);
    v96 = *(v0 + 856);
    sub_16D25C();
    sub_38B40();
    LOBYTE(v94) = sub_16D22C();
    *(v0 + 1008) = v71;
    v97 = sub_C9E0();
    (v70)(v97);
    if (v94)
    {
      v98 = *(v0 + 896);
      v99 = *(v0 + 872);
      v100 = *(v0 + 856);
      sub_16D24C();
      sub_38B40();
      v101 = sub_16D22C();
      v102 = sub_C9E0();
      (v70)(v102);
    }

    else
    {
      v101 = 0;
    }

    v103 = v101 & 1;
    *(v0 + 377) = v101 & 1;
    v104 = *(v0 + 944);
    v105 = *(v0 + 920);
    sub_92FF4();
    v106 = sub_93094();
    v172(v106);
    v107 = sub_16DBDC();
    v108 = sub_16E36C();
    if (sub_4B3A8(v108))
    {
      v109 = sub_93228();
      *v109 = 67109120;
      v109[1] = v103;
      sub_8420C();
      _os_log_impl(v110, v111, v112, v113, v114, 8u);
      sub_1BA00();
    }

    v115 = *(v0 + 944);
    v116 = *(v0 + 928);
    v117 = *(v0 + 920);
    v118 = *(v0 + 824);
    v119 = *(v0 + 808);
    v120 = *(v0 + 800);
    v121 = *(v0 + 736);

    v178(v115, v117);
    v122 = *(v119 + 16);
    *(v0 + 1016) = v122;
    *(v0 + 1024) = (v119 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v122(v118, v121, v120);
    v124 = *(v119 + 88);
    v123 = v119 + 88;
    if (v124(v118, v120) == enum case for Parse.uso(_:))
    {
      v125 = *(v0 + 848);
      v126 = *(v0 + 840);
      v115 = *(v0 + 832);
      v118 = *(v0 + 792);
      v127 = *(v0 + 784);
      v128 = *(v0 + 776);
      (*(*(v0 + 808) + 96))(*(v0 + 824), *(v0 + 800));
      v129 = *(v126 + 32);
      v130 = sub_38B40();
      v131(v130);
      sub_16C82C();
      v132 = sub_10E3DC();
      *(v0 + 1032) = v132;
      v133 = *(v127 + 8);
      v116 = v127 + 8;
      v133(v118, v128);
      if (v132)
      {

        v134 = swift_task_alloc();
        *(v0 + 1040) = v134;
        *v134 = v0;
        v134[1] = sub_8AFC0;

        return sub_15ADE4(v132);
      }

      v136 = (v0 + 848);
      v137 = v0 + 840;
      v138 = (v0 + 832);
    }

    else
    {
      v136 = (v0 + 824);
      v137 = v0 + 808;
      v138 = (v0 + 800);
    }

    (*(*v137 + 8))(*v136, *v138);
    v139 = *(v0 + 992);
    v140 = *(v0 + 904);
    v141 = swift_task_alloc();
    LOBYTE(v139) = sub_92F00(v141);

    if (v139)
    {
      v142 = sub_93208();
      v140 = sub_92F44(v142);
    }

    else
    {
      v143 = *(v0 + 992);

      v144 = *(v0 + 377);
    }

    sub_93184();
    v176 = v145;
    v181 = *(v0 + 904);
    v173 = *(v0 + 896);
    v166 = *(v0 + 984);
    v170 = *(v0 + 856);
    sub_9306C();
    v161 = v146;
    v147 = *(v0 + 744);
    v148 = *(v0 + 736);
    v164 = *(v0 + 728);
    v149(v116, v148, v123);
    v150 = (v148 + *(type metadata accessor for MainFlow() + 20));
    v151 = v150[4];
    sub_2D20(v150, v150[3]);
    v152 = *(v151 + 8);
    v153 = sub_88100();
    v154(v153);
    v155 = *(v0 + 416);
    sub_2D20((v0 + 384), *(v0 + 408));
    sub_88100();
    sub_16C3EC();
    sub_2D64((v0 + 384));
    sub_16BFEC();
    sub_16BFDC();
    (*(v118 + 8))(v115, v161);
    *(v0 + 448) = &type metadata for WellnessFeatureFlags;
    *(v0 + 456) = &off_1BD3B0;
    sub_930DC((v0 + 336));

    sub_8748(v147, &qword_1C8AA8, &qword_174480);
    (*(v140 + 8))(v116, v123);
    sub_2D64((v0 + 424));
    sub_8DC90((v0 + 504));
    sub_8DD40((v0 + 176));
    *(v0 + 568) = &type metadata for WellnessCATProvider;
    *(v0 + 576) = &off_1BD5D8;
    v156 = swift_allocObject();
    sub_9303C(v156);
    sub_C938(v0 + 176);
    sub_931CC();
    sub_16C4EC();

    sub_8E58C(v0 + 336);
    v176(v173, v170);
    v176(v181, v170);
    sub_2D64((v0 + 464));
  }

  else
  {
    v79 = *(v0 + 936);
    sub_92FF4();
    (v5)(v79, v4, v48);
    v80 = sub_16DBDC();
    v81 = sub_16E37C();
    if (sub_4B3A8(v81))
    {
      v82 = sub_1BA38();
      sub_1BA50(v82);
      sub_8420C();
      _os_log_impl(v83, v84, v85, v86, v87, 2u);
      sub_1BA00();
    }

    v88 = *(v0 + 936);
    v89 = *(v0 + 928);
    v90 = *(v0 + 920);
    v91 = *(v0 + 736);
    v92 = *(v0 + 728);

    v18(v88, v90);
    v93 = type metadata accessor for MainFlow();
    sub_8284(v91 + *(v93 + 28), v0 + 16);
    sub_82E0();
    sub_16C4EC();
    sub_8334(v0 + 16);
  }

  sub_92F78();
  v167 = *(v0 + 848);
  v171 = *(v0 + 824);
  v174 = *(v0 + 816);
  v177 = *(v0 + 792);
  v179 = *(v0 + 768);
  v182 = *(v0 + 744);

  sub_C9BC();

  return v157();
}

uint64_t sub_8AFC0()
{
  sub_8A88();
  sub_C9D4();
  v2 = *(v1 + 1040);
  v3 = *(v1 + 1032);
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  return _swift_task_switch(sub_8B0C8, 0, 0);
}

uint64_t sub_8B0C8()
{
  v4 = *(v0 + 1032);
  v5 = *(v0 + 848);
  v6 = *(v0 + 840);
  v7 = *(v0 + 832);

  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 992);
  v9 = *(v0 + 904);
  v10 = swift_task_alloc();
  LOBYTE(v8) = sub_92F00(v10);

  if (v8)
  {
    v11 = sub_93208();
    v9 = sub_92F44(v11);
  }

  else
  {
    v12 = *(v0 + 992);

    v13 = *(v0 + 377);
  }

  sub_93184();
  v36 = v14;
  v39 = *(v0 + 904);
  v34 = *(v0 + 896);
  v30 = *(v0 + 984);
  v32 = *(v0 + 856);
  sub_9306C();
  v28 = v15;
  v16 = *(v0 + 744);
  v17 = *(v0 + 736);
  v29 = *(v0 + 728);
  v18(v2, v17, v3);
  v19 = (v17 + *(type metadata accessor for MainFlow() + 20));
  v20 = v19[4];
  sub_2D20(v19, v19[3]);
  v21 = *(v20 + 8);
  v22 = sub_88100();
  v23(v22);
  v24 = *(v0 + 416);
  sub_2D20((v0 + 384), *(v0 + 408));
  sub_88100();
  sub_16C3EC();
  sub_2D64((v0 + 384));
  sub_16BFEC();
  sub_16BFDC();
  (*(v1 + 8))(v7, v28);
  *(v0 + 448) = &type metadata for WellnessFeatureFlags;
  *(v0 + 456) = &off_1BD3B0;
  sub_930DC((v0 + 336));

  sub_8748(v16, &qword_1C8AA8, &qword_174480);
  (*(v9 + 8))(v2, v3);
  sub_2D64((v0 + 424));
  sub_8DC90((v0 + 504));
  sub_8DD40((v0 + 176));
  *(v0 + 568) = &type metadata for WellnessCATProvider;
  *(v0 + 576) = &off_1BD5D8;
  v25 = swift_allocObject();
  sub_9303C(v25);
  sub_C938(v0 + 176);
  sub_931CC();
  sub_16C4EC();

  sub_8E58C(v0 + 336);
  v36(v34, v32);
  v36(v39, v32);
  sub_2D64((v0 + 464));
  sub_92F78();
  v31 = *(v0 + 848);
  v33 = *(v0 + 824);
  v35 = *(v0 + 816);
  v37 = *(v0 + 792);
  v38 = *(v0 + 768);
  v40 = *(v0 + 744);

  sub_C9BC();

  return v26();
}

uint64_t sub_8B448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_16DBEC();
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v7 = *(v6 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_8B520, 0, 0);
}

uint64_t sub_8B520()
{
  v1 = v0[27];
  v2 = [objc_opt_self() sharedAnalytics];
  v0[33] = v2;
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_8B674;
  v3 = swift_continuation_init();
  v0[17] = sub_2440(&qword_1C8B48, &unk_1744F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_8BAC0;
  v0[13] = &unk_1BAB48;
  v0[14] = v3;
  [v2 sensitiveCondition:4 startedAt:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_8B674()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 272) = v4;
  if (v4)
  {
    v5 = sub_8B914;
  }

  else
  {
    v5 = sub_8B77C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8B77C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 280);

  sub_16DBBC();
  v3 = *(v0 + 224);
  if (v2 == 1)
  {
    v4 = (v0 + 256);
    v5 = *(v0 + 256);
    sub_8B48();
    v6 = sub_931B8();
    v7(v6);
    v8 = sub_16DBDC();
    v9 = sub_16E36C();
    if (!sub_38670(v9))
    {
      goto LABEL_7;
    }

    v10 = sub_1BA38();
    *v10 = 0;
    v11 = "✅ Successfully enabled redaction of SELF messages for the Siri session";
  }

  else
  {
    v4 = (v0 + 248);
    v5 = *(v0 + 248);
    sub_8B48();
    v12 = sub_931B8();
    v13(v12);
    v8 = sub_16DBDC();
    v14 = sub_16E36C();
    if (!sub_38670(v14))
    {
      goto LABEL_7;
    }

    v10 = sub_1BA38();
    *v10 = 0;
    v11 = "🚨 Could not enable redaction of SELF messages for siri session, returning Generic Error 🚨";
  }

  _os_log_impl(&def_259DC, v8, v5, v11, v10, 2u);
  sub_8A2C();
LABEL_7:

  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  v17 = *(v0 + 240);
  (*(*(v0 + 232) + 8))(*v4, *(v0 + 224));

  sub_C9BC();

  return v18();
}

uint64_t sub_8B914()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  swift_willThrow();

  sub_16DBBC();
  sub_8B48();
  v6 = *(v4 + 16);
  v7 = sub_38B40();
  v8(v7);
  swift_errorRetain();
  v9 = sub_16DBDC();
  v10 = sub_16E37C();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[34];
  if (v11)
  {
    v13 = sub_8BD8();
    v14 = sub_93228();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    sub_4B3D0();
    _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
    sub_8748(v14, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_8A2C();
  }

  else
  {
    v21 = v0[34];
  }

  v23 = v0[31];
  v22 = v0[32];
  (*(v0[29] + 8))(v0[30], v0[28]);

  sub_C9BC();

  return v24();
}

uint64_t sub_8BAC0(uint64_t a1, char a2, void *a3)
{
  v5 = sub_2D20((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_C1FC0(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_C202C(v9, a2);
  }
}

void sub_8BB44(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v261 = a5;
  v286 = a4;
  v277 = a3;
  v266 = a2;
  v285 = a1;
  v284 = a6;
  v263 = sub_16BFCC();
  v7 = sub_42F0(v263);
  v258 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_4304();
  v256 = v12 - v11;
  v260 = sub_2440(&qword_1C8B38, &qword_1744D0);
  v13 = sub_8B38(v260);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v262 = &v255 - v16;
  v17 = sub_2440(&qword_1C8AA8, &qword_174480);
  v18 = sub_4348(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v21);
  sub_45590(&v255 - v22);
  v274 = sub_16C89C();
  v23 = sub_42F0(v274);
  v273 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_4304();
  sub_45590(v28 - v27);
  v279 = sub_16C83C();
  v29 = sub_42F0(v279);
  v280 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v33);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v34);
  sub_45590(&v255 - v35);
  v283 = sub_16C80C();
  v36 = sub_42F0(v283);
  v287 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v40);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v41);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v42);
  sub_45590(&v255 - v43);
  v44 = sub_16DBEC();
  v45 = sub_42F0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v45);
  sub_38634();
  sub_13058();
  __chkstk_darwin(v50);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v51);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v52);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v53);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v54);
  sub_8AC0();
  sub_13058();
  __chkstk_darwin(v55);
  sub_8AC0();
  sub_13058();
  v57 = __chkstk_darwin(v56);
  v59 = &v255 - v58;
  __chkstk_darwin(v57);
  sub_76B1C();
  __chkstk_darwin(v60);
  v62 = &v255 - v61;
  v63 = sub_16DBBC();
  sub_8B48();
  v64 = *(v47 + 16);
  v288 = v63;
  v289 = v44;
  v292 = v47 + 16;
  v291 = v64;
  v64(v62, v63, v44);
  v65 = sub_16DBDC();
  v66 = sub_16E36C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = sub_93228();
    *v67 = 67109120;
    v296 = &type metadata for WellnessFeatureFlagsKey;
    v297 = sub_3736C();
    v63 = v47;
    v68 = sub_93100(2);
    sub_2D64(&v295);
    v69 = v68 & 1;
    v47 = v63;
    *(v67 + 4) = v69;
    _os_log_impl(&def_259DC, v65, v66, "Server Fallback is Enabled: %{BOOL}d", v67, 8u);
    sub_8A2C();
  }

  v70 = *(v47 + 8);
  sub_93088();
  v70();
  sub_8B48();
  sub_92E48();
  v71();
  v72 = v286;

  v73 = sub_16DBDC();
  v74 = sub_16E36C();

  v75 = os_log_type_enabled(v73, v74);
  v290 = v47 + 8;
  if (v75)
  {
    v76 = sub_8BD8();
    v77 = sub_CA30();
    v295 = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_3AB7C(v277, v72, &v295);
    _os_log_impl(&def_259DC, v73, v74, "localeIdentifier received in plugin is: %s", v76, 0xCu);
    sub_2D64(v77);
    sub_92EBC();
    sub_8A2C();
  }

  (v70)(v6, v63);
  v78 = v70;
  v79 = v288;
  sub_8B48();
  sub_92E30();
  v80();
  v81 = sub_16DBDC();
  v82 = sub_16E36C();
  v83 = sub_4B3A8(v82);
  v84 = v285;
  v85 = v281;
  if (v83)
  {
    v86 = sub_93228();
    *v86 = 67109120;
    v296 = &type metadata for WellnessFeatureFlagsKey;
    v297 = sub_3736C();
    v87 = sub_93100(3);
    sub_2D64(&v295);
    v88 = v87 & 1;
    v63 = v289;
    v86[1] = v88;
    sub_8420C();
    _os_log_impl(v89, v90, v91, v92, v93, 8u);
    sub_92EBC();
  }

  v282 = v78;
  (v78)(v59, v63);
  v296 = &type metadata for WellnessFeatureFlagsKey;
  v94 = sub_3736C();
  v297 = v94;
  v95 = sub_93100(3);
  sub_2D64(&v295);
  v296 = &type metadata for WellnessFeatureFlagsKey;
  v297 = v94;
  v96 = sub_93100(2);
  sub_2D64(&v295);
  v97 = v283;
  if (v96 & 1) != 0 && (sub_16D7DC())
  {
    sub_92EE0();
    sub_92E30();
    v98();
    v99 = v287;
    v100 = v287[2];
    v101 = v269;
    v100(v269, v84, v97);
    v102 = sub_16DBDC();
    v103 = sub_16E36C();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = v99;
      v105 = sub_8BD8();
      v106 = sub_CA30();
      v294 = v106;
      *v105 = 136315138;
      v100(v275, v101, v97);
      v107 = sub_16E1EC();
      v109 = v108;
      v110 = v104[1];
      v111 = sub_93010();
      v112(v111);
      v113 = sub_3AB7C(v107, v109, &v294);

      *(v105 + 4) = v113;
      sub_92F38();
      _os_log_impl(v114, v115, v116, v117, v105, 0xCu);
      sub_2D64(v106);
      sub_8A2C();
      sub_92FCC();
    }

    else
    {

      v170 = v99[1];
      v171 = sub_93010();
      v172(v171);
    }

    sub_93170();
    v173();
    v169 = v284;
    *v284 = 2;
    *(v169 + 1) = 0u;
    *(v169 + 3) = 0u;
LABEL_23:
    *(v169 + 40) = 5;
    return;
  }

  v118 = v287;
  v119 = v287[2];
  v119(v85, v84, v97);
  v120 = v118[11];
  v121 = sub_93010();
  if (v122(v121) != enum case for Parse.uso(_:))
  {
    v153 = v118[1];
    v154 = sub_93010();
    v155(v154);
LABEL_17:
    sub_92EE0();
    sub_92E30();
    v156();
    v157 = v276;
    v119(v276, v84, v97);
    v158 = sub_16DBDC();
    v159 = sub_16E37C();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = sub_8BD8();
      v161 = sub_CA30();
      v294 = v161;
      *v160 = 136315138;
      v119(v275, v157, v97);
      v162 = sub_16E1EC();
      v164 = v163;
      sub_13094(&v299);
      v165(v157, v97);
      v166 = sub_3AB7C(v162, v164, &v294);

      *(v160 + 4) = v166;
      _os_log_impl(&def_259DC, v158, v159, "Scribe received unsupported parse: %s", v160, 0xCu);
      sub_2D64(v161);
      sub_8A2C();
      sub_8A2C();
    }

    else
    {

      sub_13094(&v299);
      v167(v157, v97);
    }

    sub_93170();
    v168();
    v169 = v284;
    v284[4] = 0;
    *v169 = 0u;
    *(v169 + 1) = 0u;
    goto LABEL_23;
  }

  v271 = v95;
  v123 = v79;
  v269 = v94;
  v124 = v118[12];
  v125 = sub_93010();
  v126(v125);
  sub_93124();
  v127 = v278;
  v128 = v85;
  v129 = v97;
  v130 = v279;
  (*(v95 + 32))(v278, v128, v279);
  v131 = v272;
  sub_16C82C();
  v132 = sub_10E3DC();
  sub_13094(v298);
  v133(v131, v274);
  v281 = v132;
  if (!v132)
  {
    (*(v95 + 8))(v127, v130);
    v97 = v129;
    sub_93088();
    goto LABEL_17;
  }

  sub_8B48();
  v134 = v270;
  sub_93088();
  sub_92E48();
  v135();
  v136 = *(v95 + 16);
  v137 = v267;
  v136(v267, v127, v130);
  v138 = sub_16DBDC();
  v139 = sub_16E36C();
  if (sub_387B0(v139))
  {
    v140 = sub_8BD8();
    v123 = sub_CA30();
    v295 = v123;
    *v140 = 136315138;
    v136(v265, v137, v130);
    v141 = sub_16E1EC();
    v143 = v142;
    v144 = *(v280 + 8);
    v145 = sub_93010();
    v287 = v146;
    v146(v145);
    v147 = sub_3AB7C(v141, v143, &v295);

    *(v140 + 4) = v147;
    sub_92F38();
    _os_log_impl(v148, v149, v150, v151, v140, 0xCu);
    sub_2D64(v123);
    sub_93088();
    sub_8A2C();
    sub_92FCC();

    v152 = v270;
  }

  else
  {

    v174 = *(v95 + 8);
    v175 = sub_93010();
    v287 = v176;
    v176(v175);
    v152 = v134;
  }

  v177 = v282;
  (v282)(v152, v123);
  v178 = v281;
  sub_8B48();
  v179 = v268;
  sub_92E30();
  v180();
  swift_retain_n();
  v181 = sub_16DBDC();
  v182 = sub_16E36C();

  if (os_log_type_enabled(v181, v182))
  {
    v183 = sub_8BD8();
    v184 = sub_CA30();
    v295 = v184;
    *v183 = 136315138;

    sub_B41D0();
    v186 = v185;
    v188 = v187;

    v123 = sub_3AB7C(v186, v188, &v295);

    *(v183 + 4) = v123;
    sub_93088();
    sub_92F38();
    _os_log_impl(v189, v190, v191, v192, v183, 0xCu);
    sub_2D64(v184);
    sub_92EBC();
    sub_92FCC();
  }

  (v177)(v179, v123);
  v193 = v284;
  sub_93124();
  if (((AFDeviceSupportsSiriUOD() | v271) & 1) == 0)
  {
    sub_92EE0();
    sub_92E30();
    v205();
    v206 = sub_16DBDC();
    v207 = sub_16E37C();
    if (sub_387B0(v207))
    {
      v208 = sub_1BA38();
      sub_1BA50(v208);
      sub_4593C(&def_259DC, v209, v210, "⚠️ This device does not support Siri X, we are going to provide the legacy experience ⚠️");
      sub_92EBC();
    }

    v211 = &v295;
    goto LABEL_47;
  }

  if (((v266 | v271) & 1) == 0)
  {
    v215 = sub_92E5C();
    v216(v215);

    v193[4] = 0;
    *v193 = 0u;
    *(v193 + 1) = 0u;
LABEL_50:
    v214 = 5;
    goto LABEL_51;
  }

  v194 = v277 == 0x53552D6E65 && v286 == 0xE500000000000000;
  if (v194)
  {
    v204 = v193;
    LODWORD(v286) = 1;
    v203 = v264;
  }

  else
  {
    sub_16E6BC();
    sub_9315C();
    v199 = v197 == 0x4E432D687ALL && v196 == 0xE500000000000000;
    v200 = 1;
    if ((v195 & 1) == 0 && !v199)
    {
      sub_16E6BC();
      sub_9315C();
      v200 = v201;
    }

    LODWORD(v286) = v200;
    v202 = sub_16E6BC();
    v203 = v264;
    if ((v202 & 1) == 0)
    {
LABEL_63:
      sub_93124();
      if (v286)
      {
        v221 = 0;
        v222 = 1;
        goto LABEL_67;
      }

      goto LABEL_72;
    }

    v204 = v193;
  }

  sub_16BFBC();
  v217 = v263;
  sub_214C(v203, 0, 1, v263);
  v218 = *(v260 + 48);
  v219 = v203;
  v220 = v262;
  sub_74678(v261, v262, &qword_1C8AA8, &qword_174480);
  sub_74678(v219, v220 + v218, &qword_1C8AA8, &qword_174480);
  sub_7DEB0(v220);
  if (v194)
  {
    sub_8748(v219, &qword_1C8AA8, &qword_174480);
    sub_7DEB0(v220 + v218);
    v178 = v281;
    v193 = v204;
    if (v194)
    {
      sub_8748(v220, &qword_1C8AA8, &qword_174480);
      v221 = 1;
      sub_93124();
      v222 = v286;
      goto LABEL_67;
    }

    goto LABEL_62;
  }

  v223 = v257;
  sub_74678(v220, v257, &qword_1C8AA8, &qword_174480);
  sub_7DEB0(v220 + v218);
  v193 = v204;
  if (v224)
  {
    sub_8748(v264, &qword_1C8AA8, &qword_174480);
    sub_13094(&v287);
    v225(v223, v217);
    v178 = v281;
LABEL_62:
    sub_8748(v220, &qword_1C8B38, &qword_1744D0);
    goto LABEL_63;
  }

  v226 = v258;
  v227 = v220 + v218;
  v228 = v223;
  v229 = v256;
  (*(v258 + 32))(v256, v227, v217);
  sub_92CD0(&qword_1C8B40, &type metadata accessor for Locale.Region);
  v230 = v220;
  v231 = v217;
  v232 = sub_16E19C();
  v123 = *(v226 + 8);
  (v123)(v229, v231);
  sub_8748(v264, &qword_1C8AA8, &qword_174480);
  (v123)(v228, v231);
  sub_93088();
  sub_8748(v230, &qword_1C8AA8, &qword_174480);
  v222 = v286;
  v178 = v281;
  if (((v286 | v232) & 1) == 0)
  {
LABEL_72:
    sub_92EE0();
    sub_92E30();
    v237();
    v238 = sub_16DBDC();
    v239 = sub_16E37C();
    if (sub_387B0(v239))
    {
      v240 = sub_1BA38();
      sub_1BA50(v240);
      sub_4593C(&def_259DC, v241, v242, "⚠️ Locale not supported for Scribe or Meds, going to legacy experience ⚠️");
      sub_92EBC();
    }

    v211 = &v293;
LABEL_47:
    (v177)(*(v211 - 32), v123);
LABEL_48:
    v193[3] = &type metadata for WellnessTask;
    v193[4] = sub_4B0B0();

    *v193 = v178;
    v212 = sub_92E5C();
    v213(v212);
    v214 = 4;
    goto LABEL_51;
  }

  v221 = v286 ^ 1 | v232;
LABEL_67:
  v296 = &type metadata for WellnessFeatureFlagsKey;
  v297 = v269;
  LOBYTE(v295) = 0;
  v233 = sub_16C86C();
  sub_2D64(&v295);
  if ((v233 & 1) == 0)
  {
    sub_92EE0();
    sub_92E30();
    v243();
    v244 = sub_16DBDC();
    v245 = sub_16E37C();
    if (sub_387B0(v245))
    {
      v246 = sub_1BA38();
      sub_1BA50(v246);
      sub_4593C(&def_259DC, v247, v248, "⚠️ Scribe feature flag is disabled, going to legacy experience ⚠️");
      sub_1BA00();
    }

    (v177)(v259, v123);
    goto LABEL_48;
  }

  if (isMedicationRequest(from:)())
  {
    v296 = &type metadata for WellnessFeatureFlagsKey;
    v297 = v269;
    v234 = sub_93100(1);

    v235 = sub_92E5C();
    v236(v235);
    sub_2D64(&v295);
    if ((v234 & 1) == 0)
    {
      sub_931A4(3);
      *(v193 + 40) = 5;

      return;
    }

    if (v221)
    {
      *v193 = v178;
      v214 = 1;
      goto LABEL_51;
    }

    sub_931A4(1);
    goto LABEL_50;
  }

  if ((v222 & 1) == 0)
  {
    v193[3] = &type metadata for WellnessTask;
    v193[4] = sub_4B0B0();

    *v193 = v178;
    v250 = sub_92E5C();
    v251(v250);
    *(v193 + 40) = 0;
    return;
  }

  sub_B34E4();
  sub_B2EA4();
  if (v249 != 270)
  {
    sub_140650(v249);
  }

  sub_16D73C();

  v252 = sub_16D80C();
  v193[3] = &type metadata for WellnessTask;
  v193[4] = sub_4B0B0();

  *v193 = v178;
  v253 = sub_92E5C();
  v254(v253);
  if (v252)
  {
    v214 = 2;
  }

  else
  {
    v214 = 3;
  }

LABEL_51:
  *(v193 + 40) = v214;
}